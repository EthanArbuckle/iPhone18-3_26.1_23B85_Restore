@interface PKPassVerificationCardTapMethod
- (PKPassVerificationCardTapMethod)initWithCoder:(id)a3;
- (PKPassVerificationCardTapMethod)initWithDictionary:(id)a3;
- (void)_appendDescription:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassVerificationCardTapMethod

- (PKPassVerificationCardTapMethod)initWithDictionary:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPassVerificationCardTapMethod;
  return [(PKPassVerificationMethod *)&v4 _initWithType:6 dictionary:a3];
}

- (PKPassVerificationCardTapMethod)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPassVerificationCardTapMethod;
  return [(PKPassVerificationMethod *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = PKPassVerificationCardTapMethod;
  [(PKPassVerificationMethod *)&v3 encodeWithCoder:a3];
}

- (void)_appendDescription:(id)a3
{
  v3.receiver = self;
  v3.super_class = PKPassVerificationCardTapMethod;
  [(PKPassVerificationMethod *)&v3 _appendDescription:a3];
}

@end