@interface PKPaymentSetupRequest
- (PKPaymentSetupRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentSetupRequest

- (PKPaymentSetupRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPaymentSetupRequest;
  v5 = [(PKPaymentSetupRequest *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"paymentSetupFeatures"];
    paymentSetupFeatures = v5->_paymentSetupFeatures;
    v5->_paymentSetupFeatures = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  configuration = self->_configuration;
  coderCopy = coder;
  [coderCopy encodeObject:configuration forKey:@"configuration"];
  [coderCopy encodeObject:self->_paymentSetupFeatures forKey:@"paymentSetupFeatures"];
}

@end