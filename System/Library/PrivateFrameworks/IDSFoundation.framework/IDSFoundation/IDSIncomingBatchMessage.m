@interface IDSIncomingBatchMessage
- (IDSIncomingBatchMessage)initWithCoder:(id)a3;
- (IDSIncomingBatchMessage)initWithMessages:(id)a3 service:(id)a4 context:(id)a5;
- (id)description;
- (unint64_t)messagesCount;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSIncomingBatchMessage

- (IDSIncomingBatchMessage)initWithMessages:(id)a3 service:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSIncomingBatchMessage;
  v12 = [(IDSIncomingBatchMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messages, a3);
    objc_storeStrong(&v13->_service, a4);
    objc_storeStrong(&v13->_context, a5);
  }

  return v13;
}

- (unint64_t)messagesCount
{
  v2 = [(IDSIncomingBatchMessage *)self messages];
  v3 = [v2 count];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  messages = self->_messages;
  v5 = a3;
  [v5 encodeObject:messages forKey:@"IDSIncomingBatchMessageMessagesKey"];
  [v5 encodeObject:self->_service forKey:@"IDSIncomingBatchMessageServiceKey"];
  [v5 encodeObject:self->_context forKey:@"IDSIncomingBatchMessageContextKey"];
}

- (IDSIncomingBatchMessage)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"IDSIncomingBatchMessageMessagesKey"];
  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageServiceKey"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextKey"];

  v11 = [(IDSIncomingBatchMessage *)self initWithMessages:v8 service:v9 context:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSIncomingBatchMessage *)self messagesCount];
  v6 = [(IDSIncomingBatchMessage *)self service];
  v7 = [(IDSIncomingBatchMessage *)self context];
  v8 = [v3 stringWithFormat:@"<%@: %p messagesCount: %ld service: %@ context: %@>", v4, self, v5, v6, v7];

  return v8;
}

@end