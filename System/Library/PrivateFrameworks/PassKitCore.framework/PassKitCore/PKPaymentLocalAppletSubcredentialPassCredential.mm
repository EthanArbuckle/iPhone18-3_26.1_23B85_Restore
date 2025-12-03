@interface PKPaymentLocalAppletSubcredentialPassCredential
- (PKAddCarKeyPassConfiguration)configuration;
- (PKPaymentLocalAppletSubcredentialPassCredential)initWithPaymentPass:(id)pass credentialToShare:(id)share;
@end

@implementation PKPaymentLocalAppletSubcredentialPassCredential

- (PKPaymentLocalAppletSubcredentialPassCredential)initWithPaymentPass:(id)pass credentialToShare:(id)share
{
  passCopy = pass;
  shareCopy = share;
  v9 = [(PKPaymentCredential *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paymentPass, pass);
    objc_storeStrong(&v10->_credentialToShare, share);
    localizedDescription = [passCopy localizedDescription];
    [(PKPaymentCredential *)v10 setLongDescription:localizedDescription];
  }

  return v10;
}

- (PKAddCarKeyPassConfiguration)configuration
{
  v3 = objc_alloc_init(PKAddCarKeyPassConfiguration);
  [(PKAddCarKeyPassConfiguration *)v3 setSupportedRadioTechnologies:[(PKAppletSubcredential *)self->_credentialToShare supportedRadioTechnologies]];
  manufacturerIdentifier = [(PKAppletSubcredential *)self->_credentialToShare manufacturerIdentifier];
  brandIdentifier = [(PKAppletSubcredential *)self->_credentialToShare brandIdentifier];
  v6 = brandIdentifier;
  if (brandIdentifier)
  {
    v7 = brandIdentifier;
  }

  else
  {
    v7 = manufacturerIdentifier;
  }

  [(PKAddSecureElementPassConfiguration *)v3 setIssuerIdentifier:v7];

  [(PKAddCarKeyPassConfiguration *)v3 setManufacturerIdentifier:manufacturerIdentifier];
  pairedReaderIdentifier = [(PKAppletSubcredential *)self->_credentialToShare pairedReaderIdentifier];
  [(PKAddCarKeyPassConfiguration *)v3 setPairedReaderIdentifier:pairedReaderIdentifier];

  return v3;
}

@end