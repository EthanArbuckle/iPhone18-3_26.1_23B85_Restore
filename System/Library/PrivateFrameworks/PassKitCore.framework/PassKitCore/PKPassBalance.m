@interface PKPassBalance
- (PKPassBalance)initWithCoder:(id)a3;
- (PKPassBalance)initWithDictionary:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassBalance

- (PKPassBalance)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPassBalance;
  v5 = [(PKPassBalance *)&v12 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKDictionaryForKey:@"paymentMethodMetadata"];
    if (v8)
    {
      v9 = [[PKAutoReloadPaymentMethod alloc] initWithDictionary:v8];
      paymentMethod = v5->_paymentMethod;
      v5->_paymentMethod = v9;
    }
  }

  return v5;
}

- (PKPassBalance)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPassBalance;
  v5 = [(PKPassBalance *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethod"];
    paymentMethod = v5->_paymentMethod;
    v5->_paymentMethod = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_paymentMethod forKey:@"paymentMethod"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: %@; ", self->_identifier];
  [v3 appendFormat:@"paymentMethod: %@; ", self->_paymentMethod];
  [v3 appendFormat:@">"];

  return v3;
}

@end