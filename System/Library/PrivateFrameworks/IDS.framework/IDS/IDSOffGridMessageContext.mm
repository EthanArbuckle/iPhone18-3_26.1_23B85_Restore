@interface IDSOffGridMessageContext
- (IDSOffGridMessageContext)init;
- (IDSOffGridMessageContext)initWithCoder:(id)coder;
- (IDSOffGridMessageContext)initWithIDSMessageContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridMessageContext

- (IDSOffGridMessageContext)initWithIDSMessageContext:(id)context
{
  contextCopy = context;
  v5 = [(IDSOffGridMessageContext *)self init];
  if (v5)
  {
    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    senderMergeID = v5->_senderMergeID;
    v5->_senderMergeID = senderCorrelationIdentifier;

    originalGUID = [contextCopy originalGUID];
    identifier = v5->_identifier;
    v5->_identifier = originalGUID;

    originalCommand = [contextCopy originalCommand];
    v5->_underlyingCommand = [originalCommand integerValue];
  }

  return v5;
}

- (IDSOffGridMessageContext)init
{
  v3.receiver = self;
  v3.super_class = IDSOffGridMessageContext;
  return [(IDSOffGridMessageContext *)&v3 init];
}

- (void)encodeWithCoder:(id)coder
{
  senderMergeID = self->_senderMergeID;
  v5 = *MEMORY[0x1E69A4E60];
  coderCopy = coder;
  [coderCopy encodeObject:senderMergeID forKey:v5];
  [coderCopy encodeObject:self->_identifier forKey:@"message-id"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transportType];
  [coderCopy encodeObject:v7 forKey:@"transport-type"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_serviceType];
  [coderCopy encodeObject:v8 forKey:@"service-type"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_underlyingCommand];
  [coderCopy encodeObject:v9 forKey:@"command"];
}

- (IDSOffGridMessageContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(IDSOffGridMessageContext);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A4E60]];
  [(IDSOffGridMessageContext *)v5 setSenderMergeID:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message-id"];
  [(IDSOffGridMessageContext *)v5 setIdentifier:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transport-type"];
  -[IDSOffGridMessageContext setTransportType:](v5, "setTransportType:", [v8 intValue]);

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service-type"];
  -[IDSOffGridMessageContext setServiceType:](v5, "setServiceType:", [v9 intValue]);

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"command"];

  -[IDSOffGridMessageContext setUnderlyingCommand:](v5, "setUnderlyingCommand:", [v10 intValue]);
  return v5;
}

@end