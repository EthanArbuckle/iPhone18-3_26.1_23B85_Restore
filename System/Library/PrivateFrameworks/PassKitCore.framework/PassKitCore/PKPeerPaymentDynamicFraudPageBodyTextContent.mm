@interface PKPeerPaymentDynamicFraudPageBodyTextContent
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyTextContent)initWithCoder:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyTextContent)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentDynamicFraudPageBodyTextContent

- (PKPeerPaymentDynamicFraudPageBodyTextContent)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v11 initWithDictionary:v4];
  if (v5 && ([v4 PKStringForKey:@"text"], v6 = objc_claimAutoreleasedReturnValue(), text = v5->_text, v5->_text = v6, text, objc_msgSend(v4, "PKStringForKey:", @"formatType"), v8 = objc_claimAutoreleasedReturnValue(), v5->_formatType = PKPeerPaymentDynamicFraudPageBodyTextContentFormatTypeFromString(v8), v8, !v5->_text))
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (PKPeerPaymentDynamicFraudPageBodyTextContent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v5->_formatType = [v4 decodeIntegerForKey:@"formatType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  v4 = a3;
  [(PKPeerPaymentDynamicFraudPageBodyContent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_text forKey:{@"text", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_formatType forKey:@"formatType"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKPeerPaymentDynamicFraudPageBodyContent *)self type];
  if (v4 - 1 > 2)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CDA10[v4 - 1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v13.receiver = self;
  v13.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  if (![(PKPeerPaymentDynamicFraudPageBodyContent *)&v13 isEqual:v4])
  {
    goto LABEL_13;
  }

  v5 = v4[2];
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
  v11 = self->_formatType == v4[3];
LABEL_14:

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_text];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_formatType - v4 + 32 * v4;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentDynamicFraudPageBodyTextContent;
  v6 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v8 hash]+ 32 * v5 - v5;

  return v6;
}

@end