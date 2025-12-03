@interface PKIDSServiceListenerRegistrationKey
- (BOOL)isEqual:(id)equal;
- (PKIDSServiceListenerRegistrationKey)initWithMessageType:(unsigned __int16)type isRequest:(BOOL)request;
@end

@implementation PKIDSServiceListenerRegistrationKey

- (PKIDSServiceListenerRegistrationKey)initWithMessageType:(unsigned __int16)type isRequest:(BOOL)request
{
  v7.receiver = self;
  v7.super_class = PKIDSServiceListenerRegistrationKey;
  result = [(PKIDSServiceListenerRegistrationKey *)&v7 init];
  if (result)
  {
    result->_messageType = type;
    result->_isRequest = request;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_messageType == equalCopy[4] && self->_isRequest == *(equalCopy + 10);

  return v5;
}

@end