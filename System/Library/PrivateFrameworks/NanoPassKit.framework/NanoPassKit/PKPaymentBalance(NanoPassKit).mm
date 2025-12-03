@interface PKPaymentBalance(NanoPassKit)
+ (id)NPK_paymentBalanceWithAppletBalance:()NanoPassKit;
@end

@implementation PKPaymentBalance(NanoPassKit)

+ (id)NPK_paymentBalanceWithAppletBalance:()NanoPassKit
{
  v3 = a3;
  balance = [v3 balance];
  currency = [v3 currency];
  [v3 exponent];
  v6 = PKCurrencyAmountCreate(balance, currency);

  v7 = objc_alloc(MEMORY[0x277D38008]);
  identifier = [v3 identifier];

  v9 = [v7 initWithIdentifier:identifier forCurrencyAmount:v6];

  return v9;
}

@end