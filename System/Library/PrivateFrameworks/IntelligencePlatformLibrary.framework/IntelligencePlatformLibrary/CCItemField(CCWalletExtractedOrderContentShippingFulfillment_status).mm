@interface CCItemField(CCWalletExtractedOrderContentShippingFulfillment_status)
- (uint64_t)walletExtractedOrderContentShippingFulfillmentStatus;
@end

@implementation CCItemField(CCWalletExtractedOrderContentShippingFulfillment_status)

- (uint64_t)walletExtractedOrderContentShippingFulfillmentStatus
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