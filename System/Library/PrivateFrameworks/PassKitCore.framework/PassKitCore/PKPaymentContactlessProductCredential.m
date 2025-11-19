@interface PKPaymentContactlessProductCredential
- (PKPaymentContactlessProductCredential)initWithPaymentSetupProduct:(id)a3;
- (PKPaymentContactlessProductCredential)initWithPaymentSetupProduct:(id)a3 cardSessionToken:(id)a4;
- (int64_t)_cardTypeFromSetupProductType:(unint64_t)a3;
@end

@implementation PKPaymentContactlessProductCredential

- (PKPaymentContactlessProductCredential)initWithPaymentSetupProduct:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PKPaymentContactlessProductCredential;
  v6 = [(PKPaymentCredential *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v6->_product, a3);
  v8 = [v5 configuration];
  v9 = [v8 productIdentifier];
  [(PKPaymentContactlessProductCredential *)v7 setProductIdentifier:v9];

  if ([v5 supportsSetupProductMethodForType:1])
  {
    v10 = [v5 provisioningMethodMetadataForType:@"readerMode"];
    v11 = [v10 readerModeMetadata];
    [(PKPaymentContactlessProductCredential *)v7 setReaderModeMetadata:v11];
  }

  else
  {
    v12 = [v5 readerModeMetadata];

    if (!v12)
    {
      goto LABEL_7;
    }

    v10 = [v5 readerModeMetadata];
    [(PKPaymentContactlessProductCredential *)v7 setReaderModeMetadata:v10];
  }

LABEL_7:
  v13 = [v5 configuration];
  -[PKPaymentCredential setCardType:](v7, "setCardType:", -[PKPaymentContactlessProductCredential _cardTypeFromSetupProductType:](v7, "_cardTypeFromSetupProductType:", [v13 type]));

  v14 = [v5 configuration];
  v15 = [v14 featureIdentifier];

  if (v15)
  {
    [(PKPaymentCredential *)v7 setCredentialType:PKAccountCredentialType(v15, 0)];
  }

LABEL_9:

  return v7;
}

- (PKPaymentContactlessProductCredential)initWithPaymentSetupProduct:(id)a3 cardSessionToken:(id)a4
{
  v7 = a4;
  v8 = [(PKPaymentContactlessProductCredential *)self initWithPaymentSetupProduct:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cardSessionToken, a4);
  }

  return v9;
}

- (int64_t)_cardTypeFromSetupProductType:(unint64_t)a3
{
  if (a3 - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1ADB9A658[a3 - 1];
  }
}

@end