@interface PKIDSServiceListenerRegistrationKey
- (BOOL)isEqual:(id)a3;
- (PKIDSServiceListenerRegistrationKey)initWithMessageType:(unsigned __int16)a3 isRequest:(BOOL)a4;
@end

@implementation PKIDSServiceListenerRegistrationKey

- (PKIDSServiceListenerRegistrationKey)initWithMessageType:(unsigned __int16)a3 isRequest:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PKIDSServiceListenerRegistrationKey;
  result = [(PKIDSServiceListenerRegistrationKey *)&v7 init];
  if (result)
  {
    result->_messageType = a3;
    result->_isRequest = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_messageType == v4[4] && self->_isRequest == *(v4 + 10);

  return v5;
}

@end