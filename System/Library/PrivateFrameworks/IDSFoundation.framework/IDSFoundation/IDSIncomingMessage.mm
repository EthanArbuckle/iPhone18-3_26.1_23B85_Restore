@interface IDSIncomingMessage
- (IDSIncomingMessage)initWithCoder:(id)coder;
- (IDSIncomingMessage)initWithDecryptedData:(id)data messageContext:(id)context service:(id)service;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSIncomingMessage

- (IDSIncomingMessage)initWithDecryptedData:(id)data messageContext:(id)context service:(id)service
{
  dataCopy = data;
  contextCopy = context;
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = IDSIncomingMessage;
  v12 = [(IDSIncomingMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageContext, context);
    objc_storeStrong(&v13->_decryptedData, data);
    objc_storeStrong(&v13->_service, service);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  messageContext = self->_messageContext;
  coderCopy = coder;
  [coderCopy encodeObject:messageContext forKey:@"IDSIncomingMessageContextKey"];
  [coderCopy encodeObject:self->_decryptedData forKey:@"IDSIncomingMessageDecryptedDataKey"];
  [coderCopy encodeObject:self->_service forKey:@"IDSIncomingMessageServiceKey"];
}

- (IDSIncomingMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingMessageDecryptedDataKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingMessageContextKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingMessageServiceKey"];

  v8 = [(IDSIncomingMessage *)self initWithDecryptedData:v5 messageContext:v6 service:v7];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"YES";
  if (!self->_decryptedData)
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p messageContext: %@, decryptedData: %@, service: %@>", v4, self, self->_messageContext, v5, self->_service];
}

@end