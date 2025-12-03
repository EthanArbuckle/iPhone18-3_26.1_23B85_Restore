@interface PKPaymentContactlessProductCredential
- (PKPaymentContactlessProductCredential)initWithPaymentSetupProduct:(id)product;
- (PKPaymentContactlessProductCredential)initWithPaymentSetupProduct:(id)product cardSessionToken:(id)token;
- (int64_t)_cardTypeFromSetupProductType:(unint64_t)type;
@end

@implementation PKPaymentContactlessProductCredential

- (PKPaymentContactlessProductCredential)initWithPaymentSetupProduct:(id)product
{
  productCopy = product;
  v17.receiver = self;
  v17.super_class = PKPaymentContactlessProductCredential;
  v6 = [(PKPaymentCredential *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v6->_product, product);
  configuration = [productCopy configuration];
  productIdentifier = [configuration productIdentifier];
  [(PKPaymentContactlessProductCredential *)v7 setProductIdentifier:productIdentifier];

  if ([productCopy supportsSetupProductMethodForType:1])
  {
    readerModeMetadata3 = [productCopy provisioningMethodMetadataForType:@"readerMode"];
    readerModeMetadata = [readerModeMetadata3 readerModeMetadata];
    [(PKPaymentContactlessProductCredential *)v7 setReaderModeMetadata:readerModeMetadata];
  }

  else
  {
    readerModeMetadata2 = [productCopy readerModeMetadata];

    if (!readerModeMetadata2)
    {
      goto LABEL_7;
    }

    readerModeMetadata3 = [productCopy readerModeMetadata];
    [(PKPaymentContactlessProductCredential *)v7 setReaderModeMetadata:readerModeMetadata3];
  }

LABEL_7:
  configuration2 = [productCopy configuration];
  -[PKPaymentCredential setCardType:](v7, "setCardType:", -[PKPaymentContactlessProductCredential _cardTypeFromSetupProductType:](v7, "_cardTypeFromSetupProductType:", [configuration2 type]));

  configuration3 = [productCopy configuration];
  featureIdentifier = [configuration3 featureIdentifier];

  if (featureIdentifier)
  {
    [(PKPaymentCredential *)v7 setCredentialType:PKAccountCredentialType(featureIdentifier, 0)];
  }

LABEL_9:

  return v7;
}

- (PKPaymentContactlessProductCredential)initWithPaymentSetupProduct:(id)product cardSessionToken:(id)token
{
  tokenCopy = token;
  v8 = [(PKPaymentContactlessProductCredential *)self initWithPaymentSetupProduct:product];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cardSessionToken, token);
  }

  return v9;
}

- (int64_t)_cardTypeFromSetupProductType:(unint64_t)type
{
  if (type - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1ADB9A658[type - 1];
  }
}

@end