@interface FTProtobufMessage
- (FTProtobufMessage)initWithPushTopic:(id)topic protoData:(id)data;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (void)handleResponseDictionary:(id)dictionary;
- (void)handleResponseHeaders:(id)headers;
@end

@implementation FTProtobufMessage

- (FTProtobufMessage)initWithPushTopic:(id)topic protoData:(id)data
{
  topicCopy = topic;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = FTProtobufMessage;
  v9 = [(FTIDSMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pushTopic, topic);
    objc_storeStrong(&v10->_protoData, data);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = FTProtobufMessage;
  v4 = [(FTIDSMessage *)&v9 copyWithZone:zone];
  messageID = [(FTProtobufMessage *)self messageID];
  [v4 setMessageID:messageID];

  [v4 setVersion:{-[FTProtobufMessage version](self, "version")}];
  protoData = [(FTProtobufMessage *)self protoData];
  [v4 setProtoData:protoData];

  pushTopic = [(FTProtobufMessage *)self pushTopic];
  [v4 setPushTopic:pushTopic];

  return v4;
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v5.receiver = self;
  v5.super_class = FTProtobufMessage;
  additionalMessageHeaders = [(FTIDSMessage *)&v5 additionalMessageHeaders];
  v3 = [additionalMessageHeaders mutableCopy];

  return v3;
}

- (id)messageBody
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = FTProtobufMessage;
  messageBody = [(IDSBaseMessage *)&v16 messageBody];
  v4 = [messageBody mutableCopy];

  messageID = [(FTProtobufMessage *)self messageID];
  if (messageID)
  {
    [(FTProtobufMessage *)self messageID];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringGUID];
  }
  v6 = ;
  uTF8String = [v6 UTF8String];

  memset(uu, 170, sizeof(uu));
  uuid_parse(uTF8String, uu);
  jw_uuid_to_data();
  v8 = 0;
  version = [(FTProtobufMessage *)self version];
  if (version <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = version;
  }

  v11 = v8;
  if (v11)
  {
    CFDictionarySetValue(v4, @"U", v11);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195962DC4();
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  if (v12)
  {
    CFDictionarySetValue(v4, @"v", v12);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195962E4C();
  }

  protoData = [(FTProtobufMessage *)self protoData];
  if (protoData)
  {
    CFDictionarySetValue(v4, @"req", protoData);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195962ED4();
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy _dataForKey:@"res"];
  [(FTProtobufMessage *)self setProtoResponse:v5];

  v6 = [dictionaryCopy _stringForKey:@"U"];
  [(FTProtobufMessage *)self setMessageID:v6];

  v7 = [dictionaryCopy _numberForKey:@"s"];

  -[FTProtobufMessage setResponseValue:](self, "setResponseValue:", [v7 intValue]);
}

- (void)handleResponseHeaders:(id)headers
{
  v8 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = headersCopy;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Web Tunnel Message Completed With Respone Headers %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end