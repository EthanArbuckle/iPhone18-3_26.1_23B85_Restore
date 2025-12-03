@interface PKPaymentDigitalIssuanceProductCredential
- (PKPaymentDigitalIssuanceProductCredential)initWithPaymentSetupProduct:(id)product purchase:(id)purchase balance:(id)balance serviceProviderProduct:(id)providerProduct item:(id)item currency:(id)currency;
- (id)metadata;
@end

@implementation PKPaymentDigitalIssuanceProductCredential

- (PKPaymentDigitalIssuanceProductCredential)initWithPaymentSetupProduct:(id)product purchase:(id)purchase balance:(id)balance serviceProviderProduct:(id)providerProduct item:(id)item currency:(id)currency
{
  productCopy = product;
  purchaseCopy = purchase;
  balanceCopy = balance;
  providerProductCopy = providerProduct;
  itemCopy = item;
  currencyCopy = currency;
  v21 = [(PKPaymentCredential *)self init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_product, product);
    configuration = [productCopy configuration];
    productIdentifier = [configuration productIdentifier];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setProductIdentifier:productIdentifier];

    [(PKPaymentDigitalIssuanceProductCredential *)v22 setPurchase:purchaseCopy];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setBalance:balanceCopy];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setServiceProviderProduct:providerProductCopy];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setServiceProviderItem:itemCopy];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setCurrency:currencyCopy];
    if (itemCopy)
    {
      v25 = [PKCurrencyAmount alloc];
      amount = [itemCopy amount];
      v27 = [(PKCurrencyAmount *)v25 initWithAmount:amount currency:currencyCopy exponent:0];

      [(PKPaymentDigitalIssuanceProductCredential *)v22 setPrice:v27];
    }
  }

  return v22;
}

- (id)metadata
{
  v19[4] = *MEMORY[0x1E69E9840];
  balance = self->_balance;
  if (balance)
  {
    currency = [(PKCurrencyAmount *)balance currency];
    amount = [(PKCurrencyAmount *)self->_balance amount];
    stringValue = [amount stringValue];

    v7 = PKLocalizedPaymentString(&cfstr_SetupPurchaseB.isa, 0);
  }

  else
  {
    currency = self->_currency;
    amount2 = [(PKCurrencyAmount *)self->_price amount];
    stringValue = [amount2 stringValue];

    v9 = MEMORY[0x1E696AEC0];
    localizedDisplayName = [(PKDigitalIssuanceServiceProviderItem *)self->_serviceProviderItem localizedDisplayName];
    v7 = [v9 stringWithFormat:@"%@", localizedDisplayName];
  }

  if (stringValue)
  {
    v11 = currency == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || v7 == 0)
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v18[0] = @"valueType";
    v18[1] = @"value";
    v19[0] = @"currency";
    v19[1] = stringValue;
    v18[2] = @"currencyCode";
    v18[3] = @"localizedDisplayName";
    v19[2] = currency;
    v19[3] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
    v14 = [PKPaymentCredentialMetadata paymentCredentialMetadataWithConfiguration:v13];
    v17 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  }

  return v15;
}

@end