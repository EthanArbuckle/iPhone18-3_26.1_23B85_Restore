@interface NPKPeerPaymentQuickTypeParserCurrencyData
- (NPKPeerPaymentQuickTypeParserCurrencyData)initWithCurrencyAmount:(id)a3 senderHandle:(id)a4;
@end

@implementation NPKPeerPaymentQuickTypeParserCurrencyData

- (NPKPeerPaymentQuickTypeParserCurrencyData)initWithCurrencyAmount:(id)a3 senderHandle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NPKPeerPaymentQuickTypeParserCurrencyData;
  v9 = [(NPKPeerPaymentQuickTypeParserCurrencyData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currencyAmount, a3);
    objc_storeStrong(&v10->_senderHandle, a4);
  }

  return v10;
}

@end