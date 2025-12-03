@interface PKPassBalance
- (PKPassBalance)initWithCoder:(id)coder;
- (PKPassBalance)initWithDictionary:(id)dictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassBalance

- (PKPassBalance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKPassBalance;
  v5 = [(PKPassBalance *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKDictionaryForKey:@"paymentMethodMetadata"];
    if (v8)
    {
      v9 = [[PKAutoReloadPaymentMethod alloc] initWithDictionary:v8];
      paymentMethod = v5->_paymentMethod;
      v5->_paymentMethod = v9;
    }
  }

  return v5;
}

- (PKPassBalance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPassBalance;
  v5 = [(PKPassBalance *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethod"];
    paymentMethod = v5->_paymentMethod;
    v5->_paymentMethod = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_paymentMethod forKey:@"paymentMethod"];
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