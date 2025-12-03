@interface IDSMessageSendResponseMetric
- (IDSMessageSendResponseMetric)initWithResponseCode:(int64_t)code service:(id)service command:(id)command hasDataToEncrypt:(BOOL)encrypt messageType:(int64_t)type;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSMessageSendResponseMetric

- (IDSMessageSendResponseMetric)initWithResponseCode:(int64_t)code service:(id)service command:(id)command hasDataToEncrypt:(BOOL)encrypt messageType:(int64_t)type
{
  serviceCopy = service;
  commandCopy = command;
  v19.receiver = self;
  v19.super_class = IDSMessageSendResponseMetric;
  v14 = [(IDSMessageSendResponseMetric *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_responseCode = code;
    v16 = [serviceCopy copy];
    service = v15->_service;
    v15->_service = v16;

    objc_storeStrong(&v15->_command, command);
    v15->_hasDataToEncrypt = encrypt;
    v15->_messageType = type;
  }

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  service = [(IDSMessageSendResponseMetric *)self service];

  if (service)
  {
    service2 = [(IDSMessageSendResponseMetric *)self service];
    [dictionary setObject:service2 forKeyedSubscript:@"service"];
  }

  command = [(IDSMessageSendResponseMetric *)self command];

  if (command)
  {
    command2 = [(IDSMessageSendResponseMetric *)self command];
    [dictionary setObject:command2 forKeyedSubscript:@"command"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendResponseMetric responseCode](self, "responseCode")}];
  [dictionary setObject:v8 forKeyedSubscript:@"responseCode"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSMessageSendResponseMetric messageType](self, "messageType")}];
  [dictionary setObject:v9 forKeyedSubscript:@"messageType"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSMessageSendResponseMetric hasDataToEncrypt](self, "hasDataToEncrypt")}];
  [dictionary setObject:v10 forKeyedSubscript:@"hasDataToEncrypt"];

  v11 = [dictionary copy];

  return v11;
}

@end