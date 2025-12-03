@interface PKPeerPaymentDynamicFraudTitleMessageContent
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentDynamicFraudTitleMessageContent)initWithCoder:(id)coder;
- (PKPeerPaymentDynamicFraudTitleMessageContent)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentDynamicFraudTitleMessageContent

- (PKPeerPaymentDynamicFraudTitleMessageContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentDynamicFraudTitleMessageContent;
  v5 = [(PKPeerPaymentDynamicFraudTitleMessageContent *)&v12 init];
  if (!v5 || ([dictionaryCopy PKStringForKey:@"title"], v6 = objc_claimAutoreleasedReturnValue(), title = v5->_title, v5->_title = v6, title, objc_msgSend(dictionaryCopy, "PKStringForKey:", @"message"), v8 = objc_claimAutoreleasedReturnValue(), message = v5->_message, v5->_message = v8, message, v5->_title) && v5->_message)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PKPeerPaymentDynamicFraudTitleMessageContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentDynamicFraudTitleMessageContent;
  v5 = [(PKPeerPaymentDynamicFraudTitleMessageContent *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"message: '%@'; ", self->_message];
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

  title = self->_title;
  v6 = equalCopy[1];
  if (!title || !v6)
  {
    if (title == v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (([(NSString *)title isEqual:?]& 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  message = self->_message;
  v8 = equalCopy[2];
  if (message && v8)
  {
    v9 = [(NSString *)message isEqual:?];
  }

  else
  {
    v9 = message == v8;
  }

LABEL_10:

  return v9;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_title];
  [array safelyAddObject:self->_message];
  v4 = PKCombinedHash(17, array);

  return v4;
}

@end