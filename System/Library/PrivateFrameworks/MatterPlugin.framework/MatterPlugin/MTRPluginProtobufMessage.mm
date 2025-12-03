@interface MTRPluginProtobufMessage
+ (id)messageWithProtobufData:(id)data;
+ (id)messageWithProtobufData:(id)data responseHandler:(id)handler;
- (BOOL)isRequest;
- (MTRPluginProtobufMessage)initWithProtobufData:(id)data responseHandler:(id)handler;
- (NSNumber)messageType;
- (NSUUID)homeIdentifier;
- (NSUUID)sessionIdentifier;
- (NSUUID)uniqueIdentifier;
- (id)description;
@end

@implementation MTRPluginProtobufMessage

- (MTRPluginProtobufMessage)initWithProtobufData:(id)data responseHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = MTRPluginProtobufMessage;
  v8 = [(MTRPluginProtobufMessage *)&v16 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [[MTRPluginPBMHeaderMessage alloc] initWithData:dataCopy];
  if ([(MTRPluginPBMHeaderMessage *)v9 hasHeader])
  {
    header = [(MTRPluginPBMHeaderMessage *)v9 header];
    isValid = [header isValid];

    if (isValid)
    {
      [(MTRPluginProtobufMessage *)v8 setMessageData:dataCopy];
      header2 = [(MTRPluginPBMHeaderMessage *)v9 header];
      [(MTRPluginProtobufMessage *)v8 setMessageHeader:header2];

      [(MTRPluginProtobufMessage *)v8 setResponseHandler:handlerCopy];
      [(MTRPluginProtobufMessage *)v8 setResponseTimeout:0.0];

LABEL_5:
      v13 = v8;
      goto LABEL_9;
    }
  }

  v14 = matterPluginLog_default;
  if (os_log_type_enabled(matterPluginLog_default, OS_LOG_TYPE_ERROR))
  {
    [MTRPluginProtobufMessage initWithProtobufData:v9 responseHandler:v14];
  }

  v13 = 0;
LABEL_9:

  return v13;
}

+ (id)messageWithProtobufData:(id)data
{
  dataCopy = data;
  v4 = [[MTRPluginProtobufMessage alloc] initWithProtobufData:dataCopy responseHandler:0];

  return v4;
}

+ (id)messageWithProtobufData:(id)data responseHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  v7 = [[MTRPluginProtobufMessage alloc] initWithProtobufData:dataCopy responseHandler:handlerCopy];

  return v7;
}

- (NSNumber)messageType
{
  v2 = MEMORY[0x277CCABB0];
  messageHeader = [(MTRPluginProtobufMessage *)self messageHeader];
  v4 = [v2 numberWithUnsignedInt:{objc_msgSend(messageHeader, "messageType")}];

  return v4;
}

- (NSUUID)uniqueIdentifier
{
  messageHeader = [(MTRPluginProtobufMessage *)self messageHeader];
  messageID = [messageHeader messageID];
  uuid = [messageID uuid];

  return uuid;
}

- (NSUUID)sessionIdentifier
{
  messageHeader = [(MTRPluginProtobufMessage *)self messageHeader];
  sessionID = [messageHeader sessionID];
  uuid = [sessionID uuid];

  return uuid;
}

- (NSUUID)homeIdentifier
{
  messageHeader = [(MTRPluginProtobufMessage *)self messageHeader];
  homeID = [messageHeader homeID];
  uuid = [homeID uuid];

  return uuid;
}

- (BOOL)isRequest
{
  messageHeader = [(MTRPluginProtobufMessage *)self messageHeader];
  v3 = [messageHeader messageDirection] == 2;

  return v3;
}

- (id)description
{
  context = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [(MTRPluginProtobufMessage *)self uniqueIdentifier];
  messageHeader = [(MTRPluginProtobufMessage *)self messageHeader];
  messageType = [messageHeader messageType];
  messageHeader2 = [(MTRPluginProtobufMessage *)self messageHeader];
  v8 = +[MTRPluginPBMHeader messageTypeAsString:](MTRPluginPBMHeader, "messageTypeAsString:", [messageHeader2 messageType]);
  sessionIdentifier = [(MTRPluginProtobufMessage *)self sessionIdentifier];
  homeIdentifier = [(MTRPluginProtobufMessage *)self homeIdentifier];
  messageHeader3 = [(MTRPluginProtobufMessage *)self messageHeader];
  messageDirection = [messageHeader3 messageDirection];
  if ((messageDirection - 1) >= 3)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", messageDirection];
  }

  else
  {
    v13 = off_279894350[(messageDirection - 1)];
  }

  v14 = [v3 stringWithFormat:@"<MTRPluginProtobufMessage: mid: %@, type: %u (%@), sid: %@, hid: %@, direction: %@>", uniqueIdentifier, messageType, v8, sessionIdentifier, homeIdentifier, v13];

  objc_autoreleasePoolPop(context);

  return v14;
}

- (void)initWithProtobufData:(uint64_t)a1 responseHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25830F000, a2, OS_LOG_TYPE_ERROR, "Failed to create message header %@ from protobuf data", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end