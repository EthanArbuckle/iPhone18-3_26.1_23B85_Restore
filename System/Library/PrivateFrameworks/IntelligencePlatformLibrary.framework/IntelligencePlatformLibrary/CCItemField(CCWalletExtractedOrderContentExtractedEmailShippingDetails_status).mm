@interface CCItemField(CCWalletExtractedOrderContentExtractedEmailShippingDetails_status)
- (uint64_t)walletExtractedOrderContentExtractedEmailShippingDetailsStatus;
@end

@implementation CCItemField(CCWalletExtractedOrderContentExtractedEmailShippingDetails_status)

- (uint64_t)walletExtractedOrderContentExtractedEmailShippingDetailsStatus
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