@interface CCItemField(CCWalletExtractedOrderContentExtractedEmailOrderDetails_orderContentType)
- (uint64_t)walletExtractedOrderContentExtractedEmailOrderDetailsOrderContentType;
@end

@implementation CCItemField(CCWalletExtractedOrderContentExtractedEmailOrderDetails_orderContentType)

- (uint64_t)walletExtractedOrderContentExtractedEmailOrderDetailsOrderContentType
{
  LODWORD(result) = [self uint32Value];
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