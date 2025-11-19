@interface CCItemField(CCWalletExtractedOrderContentExtractedEmailOrderDetails_orderContentType)
- (uint64_t)walletExtractedOrderContentExtractedEmailOrderDetailsOrderContentType;
@end

@implementation CCItemField(CCWalletExtractedOrderContentExtractedEmailOrderDetails_orderContentType)

- (uint64_t)walletExtractedOrderContentExtractedEmailOrderDetailsOrderContentType
{
  LODWORD(result) = [a1 uint32Value];
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end