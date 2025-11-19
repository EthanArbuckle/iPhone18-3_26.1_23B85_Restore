@interface PKPaymentBalance(NanoPassKit)
+ (id)NPK_paymentBalanceWithAppletBalance:()NanoPassKit;
@end

@implementation PKPaymentBalance(NanoPassKit)

+ (id)NPK_paymentBalanceWithAppletBalance:()NanoPassKit
{
  v3 = a3;
  v4 = [v3 balance];
  v5 = [v3 currency];
  [v3 exponent];
  v6 = PKCurrencyAmountCreate(v4, v5);

  v7 = objc_alloc(MEMORY[0x277D38008]);
  v8 = [v3 identifier];

  v9 = [v7 initWithIdentifier:v8 forCurrencyAmount:v6];

  return v9;
}

@end