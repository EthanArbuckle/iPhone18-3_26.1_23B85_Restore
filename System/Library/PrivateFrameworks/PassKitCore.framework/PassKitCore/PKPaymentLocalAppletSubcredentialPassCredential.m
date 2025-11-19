@interface PKPaymentLocalAppletSubcredentialPassCredential
- (PKAddCarKeyPassConfiguration)configuration;
- (PKPaymentLocalAppletSubcredentialPassCredential)initWithPaymentPass:(id)a3 credentialToShare:(id)a4;
@end

@implementation PKPaymentLocalAppletSubcredentialPassCredential

- (PKPaymentLocalAppletSubcredentialPassCredential)initWithPaymentPass:(id)a3 credentialToShare:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PKPaymentCredential *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paymentPass, a3);
    objc_storeStrong(&v10->_credentialToShare, a4);
    v11 = [v7 localizedDescription];
    [(PKPaymentCredential *)v10 setLongDescription:v11];
  }

  return v10;
}

- (PKAddCarKeyPassConfiguration)configuration
{
  v3 = objc_alloc_init(PKAddCarKeyPassConfiguration);
  [(PKAddCarKeyPassConfiguration *)v3 setSupportedRadioTechnologies:[(PKAppletSubcredential *)self->_credentialToShare supportedRadioTechnologies]];
  v4 = [(PKAppletSubcredential *)self->_credentialToShare manufacturerIdentifier];
  v5 = [(PKAppletSubcredential *)self->_credentialToShare brandIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  [(PKAddSecureElementPassConfiguration *)v3 setIssuerIdentifier:v7];

  [(PKAddCarKeyPassConfiguration *)v3 setManufacturerIdentifier:v4];
  v8 = [(PKAppletSubcredential *)self->_credentialToShare pairedReaderIdentifier];
  [(PKAddCarKeyPassConfiguration *)v3 setPairedReaderIdentifier:v8];

  return v3;
}

@end