@interface MTRPluginProtobufMessage
+ (id)messageWithProtobufData:(id)a3;
+ (id)messageWithProtobufData:(id)a3 responseHandler:(id)a4;
- (BOOL)isRequest;
- (MTRPluginProtobufMessage)initWithProtobufData:(id)a3 responseHandler:(id)a4;
- (NSNumber)messageType;
- (NSUUID)homeIdentifier;
- (NSUUID)sessionIdentifier;
- (NSUUID)uniqueIdentifier;
- (id)description;
@end

@implementation MTRPluginProtobufMessage

- (MTRPluginProtobufMessage)initWithProtobufData:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = MTRPluginProtobufMessage;
  v8 = [(MTRPluginProtobufMessage *)&v16 init];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = [[MTRPluginPBMHeaderMessage alloc] initWithData:v6];
  if ([(MTRPluginPBMHeaderMessage *)v9 hasHeader])
  {
    v10 = [(MTRPluginPBMHeaderMessage *)v9 header];
    v11 = [v10 isValid];

    if (v11)
    {
      [(MTRPluginProtobufMessage *)v8 setMessageData:v6];
      v12 = [(MTRPluginPBMHeaderMessage *)v9 header];
      [(MTRPluginProtobufMessage *)v8 setMessageHeader:v12];

      [(MTRPluginProtobufMessage *)v8 setResponseHandler:v7];
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

+ (id)messageWithProtobufData:(id)a3
{
  v3 = a3;
  v4 = [[MTRPluginProtobufMessage alloc] initWithProtobufData:v3 responseHandler:0];

  return v4;
}

+ (id)messageWithProtobufData:(id)a3 responseHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MTRPluginProtobufMessage alloc] initWithProtobufData:v6 responseHandler:v5];

  return v7;
}

- (NSNumber)messageType
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(MTRPluginProtobufMessage *)self messageHeader];
  v4 = [v2 numberWithUnsignedInt:{objc_msgSend(v3, "messageType")}];

  return v4;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(MTRPluginProtobufMessage *)self messageHeader];
  v3 = [v2 messageID];
  v4 = [v3 uuid];

  return v4;
}

- (NSUUID)sessionIdentifier
{
  v2 = [(MTRPluginProtobufMessage *)self messageHeader];
  v3 = [v2 sessionID];
  v4 = [v3 uuid];

  return v4;
}

- (NSUUID)homeIdentifier
{
  v2 = [(MTRPluginProtobufMessage *)self messageHeader];
  v3 = [v2 homeID];
  v4 = [v3 uuid];

  return v4;
}

- (BOOL)isRequest
{
  v2 = [(MTRPluginProtobufMessage *)self messageHeader];
  v3 = [v2 messageDirection] == 2;

  return v3;
}

- (id)description
{
  context = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MTRPluginProtobufMessage *)self uniqueIdentifier];
  v5 = [(MTRPluginProtobufMessage *)self messageHeader];
  v6 = [v5 messageType];
  v7 = [(MTRPluginProtobufMessage *)self messageHeader];
  v8 = +[MTRPluginPBMHeader messageTypeAsString:](MTRPluginPBMHeader, "messageTypeAsString:", [v7 messageType]);
  v9 = [(MTRPluginProtobufMessage *)self sessionIdentifier];
  v10 = [(MTRPluginProtobufMessage *)self homeIdentifier];
  v11 = [(MTRPluginProtobufMessage *)self messageHeader];
  v12 = [v11 messageDirection];
  if ((v12 - 1) >= 3)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v12];
  }

  else
  {
    v13 = off_279894350[(v12 - 1)];
  }

  v14 = [v3 stringWithFormat:@"<MTRPluginProtobufMessage: mid: %@, type: %u (%@), sid: %@, hid: %@, direction: %@>", v4, v6, v8, v9, v10, v13];

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