@interface PKPeerPaymentDynamicFraudPageBodyTextContent
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentDynamicFraudPageBodyTextContent)initWithCoder:(id)coder;
- (PKPeerPaymentDynamicFraudPageBodyTextContent)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentDynamicFraudPageBodyTextContent

- (PKPeerPaymentDynamicFraudPageBodyTextContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v11 initWithDictionary:dictionaryCopy];
  if (v5 && ([dictionaryCopy PKStringForKey:@"text"], v6 = objc_claimAutoreleasedReturnValue(), text = v5->_text, v5->_text = v6, text, objc_msgSend(dictionaryCopy, "PKStringForKey:", @"formatType"), v8 = objc_claimAutoreleasedReturnValue(), v5->_formatType = PKPeerPaymentDynamicFraudPageBodyTextContentFormatTypeFromString(v8), v8, !v5->_text))
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (PKPeerPaymentDynamicFraudPageBodyTextContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v5->_formatType = [coderCopy decodeIntegerForKey:@"formatType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  coderCopy = coder;
  [(PKPeerPaymentDynamicFraudPageBodyContent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_text forKey:{@"text", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_formatType forKey:@"formatType"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  type = [(PKPeerPaymentDynamicFraudPageBodyContent *)self type];
  if (type - 1 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CDA10[type - 1];
  }

  [v3 appendFormat:@"type: '%@'; ", v5];
  [v3 appendFormat:@"text: '%@'; ", self->_text];
  v6 = self->_formatType - 1;
  if (v6 > 2)
  {
    v7 = @"plain";
  }

  else
  {
    v7 = off_1E79CD9F8[v6];
  }

  [v3 appendFormat:@"formatType: '%@'; ", v7];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  if (![(PKPeerPaymentDynamicFraudPageBodyContent *)&v13 isEqual:equalCopy])
  {
    goto LABEL_13;
  }

  v5 = equalCopy[2];
  v6 = self->_text;
  v7 = v5;
  v8 = v7;
  if (v6 != v7)
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
    }

    else
    {
      v10 = [(NSString *)v6 isEqualToString:v7];

      if (v10)
      {
        goto LABEL_12;
      }
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v11 = self->_formatType == equalCopy[3];
LABEL_14:

  return v11;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_text];
  v4 = PKCombinedHash(17, array);
  v5 = self->_formatType - v4 + 32 * v4;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  v6 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v8 hash]+ 32 * v5 - v5;

  return v6;
}

@end