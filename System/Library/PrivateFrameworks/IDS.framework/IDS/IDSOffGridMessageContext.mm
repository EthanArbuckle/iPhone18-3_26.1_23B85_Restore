@interface IDSOffGridMessageContext
- (IDSOffGridMessageContext)init;
- (IDSOffGridMessageContext)initWithCoder:(id)a3;
- (IDSOffGridMessageContext)initWithIDSMessageContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSOffGridMessageContext

- (IDSOffGridMessageContext)initWithIDSMessageContext:(id)a3
{
  v4 = a3;
  v5 = [(IDSOffGridMessageContext *)self init];
  if (v5)
  {
    v6 = [v4 senderCorrelationIdentifier];
    senderMergeID = v5->_senderMergeID;
    v5->_senderMergeID = v6;

    v8 = [v4 originalGUID];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 originalCommand];
    v5->_underlyingCommand = [v10 integerValue];
  }

  return v5;
}

- (IDSOffGridMessageContext)init
{
  v3.receiver = self;
  v3.super_class = IDSOffGridMessageContext;
  return [(IDSOffGridMessageContext *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  senderMergeID = self->_senderMergeID;
  v5 = *MEMORY[0x1E69A4E60];
  v6 = a3;
  [v6 encodeObject:senderMergeID forKey:v5];
  [v6 encodeObject:self->_identifier forKey:@"message-id"];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transportType];
  [v6 encodeObject:v7 forKey:@"transport-type"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_serviceType];
  [v6 encodeObject:v8 forKey:@"service-type"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_underlyingCommand];
  [v6 encodeObject:v9 forKey:@"command"];
}

- (IDSOffGridMessageContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IDSOffGridMessageContext);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A4E60]];
  [(IDSOffGridMessageContext *)v5 setSenderMergeID:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message-id"];
  [(IDSOffGridMessageContext *)v5 setIdentifier:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transport-type"];
  -[IDSOffGridMessageContext setTransportType:](v5, "setTransportType:", [v8 intValue]);

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service-type"];
  -[IDSOffGridMessageContext setServiceType:](v5, "setServiceType:", [v9 intValue]);

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"command"];

  -[IDSOffGridMessageContext setUnderlyingCommand:](v5, "setUnderlyingCommand:", [v10 intValue]);
  return v5;
}

@end