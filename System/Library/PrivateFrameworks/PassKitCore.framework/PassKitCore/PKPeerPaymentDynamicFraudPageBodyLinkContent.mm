@interface PKPeerPaymentDynamicFraudPageBodyLinkContent
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyLinkContent)initWithCoder:(id)a3;
- (PKPeerPaymentDynamicFraudPageBodyLinkContent)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentDynamicFraudPageBodyLinkContent

- (PKPeerPaymentDynamicFraudPageBodyLinkContent)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v12 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKDictionaryForKey:@"text"];
    v7 = [PKPeerPaymentDynamicFraudPageBodyContent bodyContentWithDictionary:v6];
    if ([v7 type] == 1)
    {
      objc_storeStrong(&v5->_textContent, v7);
    }

    v8 = [v4 PKURLForKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    if (!v5->_textContent && !v5->_url)
    {

      v10 = 0;
      goto LABEL_8;
    }
  }

  v10 = v5;
LABEL_8:

  return v10;
}

- (PKPeerPaymentDynamicFraudPageBodyLinkContent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textContent"];
    textContent = v5->_textContent;
    v5->_textContent = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  v4 = a3;
  [(PKPeerPaymentDynamicFraudPageBodyContent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_textContent forKey:{@"textContent", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_url forKey:@"url"];
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
  [v3 appendFormat:@"textContent: '%@'; ", self->_textContent];
  [v3 appendFormat:@"url: '%@'; ", self->_url];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v13.receiver = self;
  v13.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  if (![(PKPeerPaymentDynamicFraudPageBodyContent *)&v13 isEqual:v4])
  {
    goto LABEL_9;
  }

  textContent = self->_textContent;
  v6 = v4[2];
  if (textContent)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([(PKPeerPaymentDynamicFraudPageBodyTextContent *)textContent isEqual:?])
    {
      goto LABEL_12;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (textContent != v6)
  {
    goto LABEL_9;
  }

LABEL_12:
  url = self->_url;
  v11 = v4[3];
  if (url)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v8 = url == v11;
  }

  else
  {
    v8 = [(NSURL *)url isEqual:?];
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_textContent];
  [v3 safelyAddObject:self->_url];
  v4 = PKCombinedHash(17, v3);
  v7.receiver = self;
  v7.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v7 hash]+ 32 * v4 - v4;

  return v5;
}

@end