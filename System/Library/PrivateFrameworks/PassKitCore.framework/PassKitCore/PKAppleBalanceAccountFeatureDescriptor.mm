@interface PKAppleBalanceAccountFeatureDescriptor
- (BOOL)isEqual:(id)equal;
- (PKAppleBalanceAccountFeatureDescriptor)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PKAppleBalanceAccountFeatureDescriptor

- (PKAppleBalanceAccountFeatureDescriptor)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = PKAppleBalanceAccountFeatureDescriptor;
  v5 = [(PKAppleBalanceAccountFeatureDescriptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKAccountFeatureDescriptor *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  identifier = [(PKAccountFeatureDescriptor *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", identifier];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountFeatureDescriptor *)self isEqualToAccountFeatureDescriptor:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = PKAppleBalanceAccountFeatureDescriptor;
  return [(PKAccountFeatureDescriptor *)&v4 copyWithZone:zone];
}

@end