@interface PKPeerPaymentDynamicFraudPageBodyLinkContent
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentDynamicFraudPageBodyLinkContent)initWithCoder:(id)coder;
- (PKPeerPaymentDynamicFraudPageBodyLinkContent)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentDynamicFraudPageBodyLinkContent

- (PKPeerPaymentDynamicFraudPageBodyLinkContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v12 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKDictionaryForKey:@"text"];
    v7 = [PKPeerPaymentDynamicFraudPageBodyContent bodyContentWithDictionary:v6];
    if ([v7 type] == 1)
    {
      objc_storeStrong(&v5->_textContent, v7);
    }

    v8 = [dictionaryCopy PKURLForKey:@"url"];
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

- (PKPeerPaymentDynamicFraudPageBodyLinkContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textContent"];
    textContent = v5->_textContent;
    v5->_textContent = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  coderCopy = coder;
  [(PKPeerPaymentDynamicFraudPageBodyContent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_textContent forKey:{@"textContent", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_url forKey:@"url"];
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
  [v3 appendFormat:@"textContent: '%@'; ", self->_textContent];
  [v3 appendFormat:@"url: '%@'; ", self->_url];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v13.receiver = self;
  v13.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  if (![(PKPeerPaymentDynamicFraudPageBodyContent *)&v13 isEqual:equalCopy])
  {
    goto LABEL_9;
  }

  textContent = self->_textContent;
  v6 = equalCopy[2];
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
  v11 = equalCopy[3];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_textContent];
  [array safelyAddObject:self->_url];
  v4 = PKCombinedHash(17, array);
  v7.receiver = self;
  v7.super_class = PKPeerPaymentDynamicFraudPageBodyLinkContent;
  v5 = [(PKPeerPaymentDynamicFraudPageBodyContent *)&v7 hash]+ 32 * v4 - v4;

  return v5;
}

@end