@interface NPKPeerPaymentQuickTypeParserCurrencyData
- (NPKPeerPaymentQuickTypeParserCurrencyData)initWithCurrencyAmount:(id)amount senderHandle:(id)handle;
@end

@implementation NPKPeerPaymentQuickTypeParserCurrencyData

- (NPKPeerPaymentQuickTypeParserCurrencyData)initWithCurrencyAmount:(id)amount senderHandle:(id)handle
{
  amountCopy = amount;
  handleCopy = handle;
  v12.receiver = self;
  v12.super_class = NPKPeerPaymentQuickTypeParserCurrencyData;
  v9 = [(NPKPeerPaymentQuickTypeParserCurrencyData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currencyAmount, amount);
    objc_storeStrong(&v10->_senderHandle, handle);
  }

  return v10;
}

@end