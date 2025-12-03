@interface CCItemField(CCWalletExtractedOrderContentExtractedEmail_emailType)
- (uint64_t)walletExtractedOrderContentExtractedEmailEmailType;
@end

@implementation CCItemField(CCWalletExtractedOrderContentExtractedEmail_emailType)

- (uint64_t)walletExtractedOrderContentExtractedEmailEmailType
{
  LODWORD(result) = [self uint32Value];
  if (result >= 9)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end