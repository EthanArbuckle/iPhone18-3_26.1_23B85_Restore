@interface NPKPeerPaymentQuickTypeParserData
- (NPKPeerPaymentQuickTypeParserData)initWithCurrenciesData:(id)a3 directlyInitiate:(id)a4;
@end

@implementation NPKPeerPaymentQuickTypeParserData

- (NPKPeerPaymentQuickTypeParserData)initWithCurrenciesData:(id)a3 directlyInitiate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = NPKPeerPaymentQuickTypeParserData;
  v9 = [(NPKPeerPaymentQuickTypeParserData *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currenciesData, a3);
    if ([v8 isEqualToString:@"payment"])
    {
      v11 = 1;
    }

    else
    {
      if (![v8 isEqualToString:@"request"])
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