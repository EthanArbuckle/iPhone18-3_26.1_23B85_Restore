@interface IDSIncomingBatchMessage
- (IDSIncomingBatchMessage)initWithCoder:(id)coder;
- (IDSIncomingBatchMessage)initWithMessages:(id)messages service:(id)service context:(id)context;
- (id)description;
- (unint64_t)messagesCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSIncomingBatchMessage

- (IDSIncomingBatchMessage)initWithMessages:(id)messages service:(id)service context:(id)context
{
  messagesCopy = messages;
  serviceCopy = service;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = IDSIncomingBatchMessage;
  v12 = [(IDSIncomingBatchMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messages, messages);
    objc_storeStrong(&v13->_service, service);
    objc_storeStrong(&v13->_context, context);
  }

  return v13;
}

- (unint64_t)messagesCount
{
  messages = [(IDSIncomingBatchMessage *)self messages];
  v3 = [messages count];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  messages = self->_messages;
  coderCopy = coder;
  [coderCopy encodeObject:messages forKey:@"IDSIncomingBatchMessageMessagesKey"];
  [coderCopy encodeObject:self->_service forKey:@"IDSIncomingBatchMessageServiceKey"];
  [coderCopy encodeObject:self->_context forKey:@"IDSIncomingBatchMessageContextKey"];
}

- (IDSIncomingBatchMessage)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"IDSIncomingBatchMessageMessagesKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageServiceKey"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIncomingBatchMessageContextKey"];

  v11 = [(IDSIncomingBatchMessage *)self initWithMessages:v8 service:v9 context:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  messagesCount = [(IDSIncomingBatchMessage *)self messagesCount];
  service = [(IDSIncomingBatchMessage *)self service];
  context = [(IDSIncomingBatchMessage *)self context];
  v8 = [v3 stringWithFormat:@"<%@: %p messagesCount: %ld service: %@ context: %@>", v4, self, messagesCount, service, context];

  return v8;
}

@end