@interface PKAppleBalanceAccountFeatureDescriptor
- (BOOL)isEqual:(id)a3;
- (PKAppleBalanceAccountFeatureDescriptor)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation PKAppleBalanceAccountFeatureDescriptor

- (PKAppleBalanceAccountFeatureDescriptor)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKAppleBalanceAccountFeatureDescriptor;
  v5 = [(PKAppleBalanceAccountFeatureDescriptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKAccountFeatureDescriptor *)v5 setIdentifier:v4];
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKAccountFeatureDescriptor *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountFeatureDescriptor *)self isEqualToAccountFeatureDescriptor:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = PKAppleBalanceAccountFeatureDescriptor;
  return [(PKAccountFeatureDescriptor *)&v4 copyWithZone:a3];
}

@end