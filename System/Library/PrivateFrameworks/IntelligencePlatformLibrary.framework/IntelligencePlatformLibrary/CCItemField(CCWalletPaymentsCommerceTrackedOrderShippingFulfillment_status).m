@interface CCItemField(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment_status)
- (uint64_t)walletPaymentsCommerceTrackedOrderShippingFulfillmentStatus;
@end

@implementation CCItemField(CCWalletPaymentsCommerceTrackedOrderShippingFulfillment_status)

- (uint64_t)walletPaymentsCommerceTrackedOrderShippingFulfillmentStatus
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 0xA)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end