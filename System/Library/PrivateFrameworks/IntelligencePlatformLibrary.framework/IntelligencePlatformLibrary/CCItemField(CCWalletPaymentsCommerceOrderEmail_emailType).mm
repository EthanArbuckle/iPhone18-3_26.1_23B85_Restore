@interface CCItemField(CCWalletPaymentsCommerceOrderEmail_emailType)
- (uint64_t)walletPaymentsCommerceOrderEmailEmailType;
@end

@implementation CCItemField(CCWalletPaymentsCommerceOrderEmail_emailType)

- (uint64_t)walletPaymentsCommerceOrderEmailEmailType
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