@interface NPKPeerPaymentQuickTypeParserData
- (NPKPeerPaymentQuickTypeParserData)initWithCurrenciesData:(id)data directlyInitiate:(id)initiate;
@end

@implementation NPKPeerPaymentQuickTypeParserData

- (NPKPeerPaymentQuickTypeParserData)initWithCurrenciesData:(id)data directlyInitiate:(id)initiate
{
  dataCopy = data;
  initiateCopy = initiate;
  v13.receiver = self;
  v13.super_class = NPKPeerPaymentQuickTypeParserData;
  v9 = [(NPKPeerPaymentQuickTypeParserData *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currenciesData, data);
    if ([initiateCopy isEqualToString:@"payment"])
    {
      v11 = 1;
    }

    else
    {
      if (![initiateCopy isEqualToString:@"request"])
      {
        v10->_smartReplyType = 0;
        goto LABEL_8;
      }

      v11 = 2;
    }

    v10->_smartReplyType = v11;
  }

LABEL_8:

  return v10;
}

@end