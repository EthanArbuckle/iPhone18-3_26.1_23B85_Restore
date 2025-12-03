@interface PKPassVerificationCardTapMethod
- (PKPassVerificationCardTapMethod)initWithCoder:(id)coder;
- (PKPassVerificationCardTapMethod)initWithDictionary:(id)dictionary;
- (void)_appendDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassVerificationCardTapMethod

- (PKPassVerificationCardTapMethod)initWithDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = PKPassVerificationCardTapMethod;
  return [(PKPassVerificationMethod *)&v4 _initWithType:6 dictionary:dictionary];
}

- (PKPassVerificationCardTapMethod)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PKPassVerificationCardTapMethod;
  return [(PKPassVerificationMethod *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PKPassVerificationCardTapMethod;
  [(PKPassVerificationMethod *)&v3 encodeWithCoder:coder];
}

- (void)_appendDescription:(id)description
{
  v3.receiver = self;
  v3.super_class = PKPassVerificationCardTapMethod;
  [(PKPassVerificationMethod *)&v3 _appendDescription:description];
}

@end