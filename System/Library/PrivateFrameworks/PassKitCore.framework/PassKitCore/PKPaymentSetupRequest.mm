@interface PKPaymentSetupRequest
- (PKPaymentSetupRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentSetupRequest

- (PKPaymentSetupRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPaymentSetupRequest;
  v5 = [(PKPaymentSetupRequest *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"paymentSetupFeatures"];
    paymentSetupFeatures = v5->_paymentSetupFeatures;
    v5->_paymentSetupFeatures = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  configuration = self->_configuration;
  v5 = a3;
  [v5 encodeObject:configuration forKey:@"configuration"];
  [v5 encodeObject:self->_paymentSetupFeatures forKey:@"paymentSetupFeatures"];
}

@end