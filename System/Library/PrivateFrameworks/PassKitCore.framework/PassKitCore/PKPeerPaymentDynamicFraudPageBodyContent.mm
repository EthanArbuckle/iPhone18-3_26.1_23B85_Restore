@interface PKPeerPaymentDynamicFraudPageBodyContent
+ (id)bodyContentWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentDynamicFraudPageBodyContent)initWithCoder:(id)coder;
- (PKPeerPaymentDynamicFraudPageBodyContent)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation PKPeerPaymentDynamicFraudPageBodyContent

+ (id)bodyContentWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy PKStringForKey:@"type"];
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

  v5 = [objc_alloc(*v6) initWithDictionary:dictionaryCopy];
LABEL_8:

  return v5;
}

- (PKPeerPaymentDynamicFraudPageBodyContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentDynamicFraudPageBodyContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v9 init];
  if (v5 && ([dictionaryCopy PKStringForKey:@"type"], v6 = objc_claimAutoreleasedReturnValue(), v5->_type = PKPeerPaymentDynamicFraudPageBodyContentTypeFromString(v6), v6, !v5->_type))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (PKPeerPaymentDynamicFraudPageBodyContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentDynamicFraudPageBodyContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy[1];

  return v5;
}

@end