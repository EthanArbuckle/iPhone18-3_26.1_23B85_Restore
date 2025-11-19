@interface PKPeerPaymentDynamicFraudPageBodyContent
+ (id)bodyContentWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyContent)initWithCoder:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyContent)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation PKPeerPaymentDynamicFraudPageBodyContent

+ (id)bodyContentWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 PKStringForKey:@"type"];
  v5 = PKPeerPaymentDynamicFraudPageBodyContentTypeFromString(v4);

  if (v5 > 1)
  {
    if (v5 == 3)
    {
      v6 = off_1E79C10B8;
    }

    else
    {
      v6 = off_1E79C10D0;
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = off_1E79C10D8;
  }

  v5 = [objc_alloc(*v6) initWithDictionary:v3];
LABEL_8:

  return v5;
}

- (PKPeerPaymentDynamicFraudPageBodyContent)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentDynamicFraudPageBodyContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v9 init];
  if (v5 && ([v4 PKStringForKey:@"type"], v6 = objc_claimAutoreleasedReturnValue(), v5->_type = PKPeerPaymentDynamicFraudPageBodyContentTypeFromString(v6), v6, !v5->_type))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (PKPeerPaymentDynamicFraudPageBodyContent)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentDynamicFraudPageBodyContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v7 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  v5 = self->_type - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79CDA10[v5];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == v4[1];

  return v5;
}

@end