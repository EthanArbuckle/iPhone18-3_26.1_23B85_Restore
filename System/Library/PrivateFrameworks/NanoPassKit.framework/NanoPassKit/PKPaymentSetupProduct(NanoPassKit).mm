@interface PKPaymentSetupProduct(NanoPassKit)
- (BOOL)isAppleBalanceProduct;
@end

@implementation PKPaymentSetupProduct(NanoPassKit)

- (BOOL)isAppleBalanceProduct
{
  configuration = [self configuration];
  v2 = [configuration featureIdentifier] == 4;

  return v2;
}

@end