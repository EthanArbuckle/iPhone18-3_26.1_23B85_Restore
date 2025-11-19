@interface IDSIncomingMessage
- (IDSIncomingMessage)initWithCoder:(id)a3;
- (IDSIncomingMessage)initWithDecryptedData:(id)a3 messageContext:(id)a4 service:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSIncomingMessage

- (IDSIncomingMessage)initWithDecryptedData:(id)a3 messageContext:(id)a4 service:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSIncomingMessage;
  v12 = [(IDSIncomingMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageContext, a4);
    objc_storeStrong(&v13->_decryptedData, a3);
    objc_storeStrong(&v13->_service, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  messageContext = self->_messageContext;
  v5 = a3;
  [v5 encodeObject:messageContext forKey:@"IDSIncomingMessageContextKey"];
  [v5 encodeObject:self->_decryptedData forKey:@"IDSIncomingMessageDecryptedDataKey"];
  [v5 encodeObject:self->_service forKey:@"IDSIncomingMessageServiceKey"];
}

- (IDSIncomingMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingMessageDecryptedDataKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingMessageContextKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingMessageServiceKey"];

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