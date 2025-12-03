@interface PKPaymentSetupConfiguration
- (PKPaymentSetupConfiguration)init;
- (PKPaymentSetupConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (PKPaymentSetupConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKPaymentSetupConfiguration;
  v5 = [(PKPaymentSetupConfiguration *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrerIdentifier"];
    referrerIdentifier = v5->_referrerIdentifier;
    v5->_referrerIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    merchantIdentifier = v5->_merchantIdentifier;
    v5->_merchantIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingURL"];
    originatingURL = v5->_originatingURL;
    v5->_originatingURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"signedFields"];
    signedFields = v5->_signedFields;
    v5->_signedFields = v17;

    v5->_usePaymentSetupFeaturesFromCDN = [coderCopy decodeBoolForKey:@"usePaymentSetupFeaturesFromCDN"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  referrerIdentifier = self->_referrerIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:referrerIdentifier forKey:@"referrerIdentifier"];
  [coderCopy encodeObject:self->_merchantIdentifier forKey:@"merchantIdentifier"];
  [coderCopy encodeObject:self->_originatingURL forKey:@"originatingURL"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_signedFields forKey:@"signedFields"];
  [coderCopy encodeBool:self->_usePaymentSetupFeaturesFromCDN forKey:@"usePaymentSetupFeaturesFromCDN"];
}

@end