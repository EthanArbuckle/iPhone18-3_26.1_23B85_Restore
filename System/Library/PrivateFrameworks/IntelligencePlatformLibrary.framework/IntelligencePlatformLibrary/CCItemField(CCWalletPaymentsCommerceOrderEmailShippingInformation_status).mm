@interface CCItemField(CCWalletPaymentsCommerceOrderEmailShippingInformation_status)
- (uint64_t)walletPaymentsCommerceOrderEmailShippingInformationStatus;
@end

@implementation CCItemField(CCWalletPaymentsCommerceOrderEmailShippingInformation_status)

- (uint64_t)walletPaymentsCommerceOrderEmailShippingInformationStatus
{
  LODWORD(result) = [self uint32Value];
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