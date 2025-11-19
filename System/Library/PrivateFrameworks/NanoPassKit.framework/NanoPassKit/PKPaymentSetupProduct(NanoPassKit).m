@interface PKPaymentSetupProduct(NanoPassKit)
- (BOOL)isAppleBalanceProduct;
@end

@implementation PKPaymentSetupProduct(NanoPassKit)

- (BOOL)isAppleBalanceProduct
{
  v1 = [a1 configuration];
  v2 = [v1 featureIdentifier] == 4;

  return v2;
}

@end