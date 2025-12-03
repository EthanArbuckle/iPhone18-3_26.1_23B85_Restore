@interface CCItemField(CCWalletExtractedOrderContent_orderStatus)
- (uint64_t)walletExtractedOrderContentOrderStatus;
@end

@implementation CCItemField(CCWalletExtractedOrderContent_orderStatus)

- (uint64_t)walletExtractedOrderContentOrderStatus
{
  LODWORD(result) = [self uint32Value];
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end