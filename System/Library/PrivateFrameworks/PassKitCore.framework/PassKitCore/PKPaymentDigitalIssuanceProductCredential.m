@interface PKPaymentDigitalIssuanceProductCredential
- (PKPaymentDigitalIssuanceProductCredential)initWithPaymentSetupProduct:(id)a3 purchase:(id)a4 balance:(id)a5 serviceProviderProduct:(id)a6 item:(id)a7 currency:(id)a8;
- (id)metadata;
@end

@implementation PKPaymentDigitalIssuanceProductCredential

- (PKPaymentDigitalIssuanceProductCredential)initWithPaymentSetupProduct:(id)a3 purchase:(id)a4 balance:(id)a5 serviceProviderProduct:(id)a6 item:(id)a7 currency:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(PKPaymentCredential *)self init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_product, a3);
    v23 = [v15 configuration];
    v24 = [v23 productIdentifier];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setProductIdentifier:v24];

    [(PKPaymentDigitalIssuanceProductCredential *)v22 setPurchase:v16];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setBalance:v17];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setServiceProviderProduct:v18];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setServiceProviderItem:v19];
    [(PKPaymentDigitalIssuanceProductCredential *)v22 setCurrency:v20];
    if (v19)
    {
      v25 = [PKCurrencyAmount alloc];
      v26 = [v19 amount];
      v27 = [(PKCurrencyAmount *)v25 initWithAmount:v26 currency:v20 exponent:0];

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
    v4 = [(PKCurrencyAmount *)balance currency];
    v5 = [(PKCurrencyAmount *)self->_balance amount];
    v6 = [v5 stringValue];

    v7 = PKLocalizedPaymentString(&cfstr_SetupPurchaseB.isa, 0);
  }

  else
  {
    v4 = self->_currency;
    v8 = [(PKCurrencyAmount *)self->_price amount];
    v6 = [v8 stringValue];

    v9 = MEMORY[0x1E696AEC0];
    v10 = [(PKDigitalIssuanceServiceProviderItem *)self->_serviceProviderItem localizedDisplayName];
    v7 = [v9 stringWithFormat:@"%@", v10];
  }

  if (v6)
  {
    v11 = v4 == 0;
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
    v19[1] = v6;
    v18[2] = @"currencyCode";
    v18[3] = @"localizedDisplayName";
    v19[2] = v4;
    v19[3] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
    v14 = [PKPaymentCredentialMetadata paymentCredentialMetadataWithConfiguration:v13];
    v17 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  }

  return v15;
}

@end