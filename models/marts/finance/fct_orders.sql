with stripe_payments as (
    select * from {{ ref("stg_stripe_payments") }}
)

select
    payment_id,
    order_id,
    amount
from stripe_payments