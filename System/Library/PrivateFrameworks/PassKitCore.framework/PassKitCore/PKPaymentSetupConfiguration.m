@interface PKPaymentSetupConfiguration
- (PKPaymentSetupConfiguration)init;
- (PKPaymentSetupConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentSetupConfiguration

- (PKPaymentSetupConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupConfiguration;
  result = [(PKPaymentSetupConfiguration *)&v3 init];
  if (result)
  {
    result->_usePaymentSetupFeaturesFromCDN = 1;
  }

  return result;
}

- (PKPaymentSetupConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKPaymentSetupConfiguration;
  v5 = [(PKPaymentSetupConfiguration *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerIdentifier"];
    referrerIdentifier = v5->_referrerIdentifier;
    v5->_referrerIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingURL"];
    originatingURL = v5->_originatingURL;
    v5->_originatingURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"signedFields"];
    signedFields = v5->_signedFields;
    v5->_signedFields = v17;

    v5->_usePaymentSetupFeaturesFromCDN = [v4 decodeBoolForKey:@"usePaymentSetupFeaturesFromCDN"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  referrerIdentifier = self->_referrerIdentifier;
  v5 = a3;
  [v5 encodeObject:referrerIdentifier forKey:@"referrerIdentifier"];
  [v5 encodeObject:self->_merchantIdentifier forKey:@"merchantIdentifier"];
  [v5 encodeObject:self->_originatingURL forKey:@"originatingURL"];
  [v5 encodeObject:self->_signature forKey:@"signature"];
  [v5 encodeObject:self->_signedFields forKey:@"signedFields"];
  [v5 encodeBool:self->_usePaymentSetupFeaturesFromCDN forKey:@"usePaymentSetupFeaturesFromCDN"];
}

@end