@interface HFAnalyticsWalletKeyExpressModeEvent
- (HFAnalyticsWalletKeyExpressModeEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsWalletKeyExpressModeEvent

- (HFAnalyticsWalletKeyExpressModeEvent)initWithData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  v5 = [dataCopy objectForKeyedSubscript:@"walletKeyExpressModeSelection"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_ErrorHfanalyti_15.isa);
  }

  objc_opt_class();
  v8 = [dataCopy objectForKeyedSubscript:@"walletKeyExpressModeLocation"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    NSLog(&cfstr_ErrorHfanalyti_16.isa);
  }

  v14.receiver = self;
  v14.super_class = HFAnalyticsWalletKeyExpressModeEvent;
  v11 = [(HFAnalyticsEvent *)&v14 initWithEventType:27];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_expressModeSelectionNumber, v6);
    objc_storeStrong(&v12->_expressModeLocationNumber, v9);
  }

  return v12;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsWalletKeyExpressModeEvent;
  payload = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [payload mutableCopy];

  expressModeSelectionNumber = [(HFAnalyticsWalletKeyExpressModeEvent *)self expressModeSelectionNumber];
  [v4 na_safeSetObject:expressModeSelectionNumber forKey:@"expressModeSelection"];

  expressModeLocationNumber = [(HFAnalyticsWalletKeyExpressModeEvent *)self expressModeLocationNumber];
  [v4 na_safeSetObject:expressModeLocationNumber forKey:@"expressModeLocation"];

  return v4;
}

@end