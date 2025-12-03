@interface FTShareChannelMessage
- (FTShareChannelMessage)initWithProtoData:(id)data messageType:(int)type;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (int64_t)command;
- (int64_t)responseCommand;
- (void)handleResponseDictionary:(id)dictionary;
- (void)handleResponseHeaders:(id)headers;
@end

@implementation FTShareChannelMessage

- (FTShareChannelMessage)initWithProtoData:(id)data messageType:(int)type
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = FTShareChannelMessage;
  v8 = [(FTIDSMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_protoData, data);
    v9->_messageType = type;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = FTShareChannelMessage;
  v4 = [(FTIDSMessage *)&v8 copyWithZone:zone];
  messageID = [(FTShareChannelMessage *)self messageID];
  [v4 setMessageID:messageID];

  [v4 setVersion:{-[FTShareChannelMessage version](self, "version")}];
  protoData = [(FTShareChannelMessage *)self protoData];
  [v4 setProtoData:protoData];

  return v4;
}

- (int64_t)command
{
  messageType = [(FTShareChannelMessage *)self messageType];
  v3 = 224;
  if (messageType == 2)
  {
    v3 = 225;
  }

  if (messageType == 3)
  {
    return 226;
  }

  else
  {
    return v3;
  }
}

- (int64_t)responseCommand
{
  messageType = [(FTShareChannelMessage *)self messageType];
  v3 = 224;
  if (messageType == 2)
  {
    v3 = 225;
  }

  if (messageType == 3)
  {
    return 226;
  }

  else
  {
    return v3;
  }
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v5.receiver = self;
  v5.super_class = FTShareChannelMessage;
  additionalMessageHeaders = [(FTIDSMessage *)&v5 additionalMessageHeaders];
  v3 = [additionalMessageHeaders mutableCopy];

  return v3;
}

- (id)messageBody
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = FTShareChannelMessage;
  messageBody = [(IDSBaseMessage *)&v19 messageBody];
  v4 = [messageBody mutableCopy];

  messageID = [(FTShareChannelMessage *)self messageID];
  if (messageID)
  {
    [(FTShareChannelMessage *)self messageID];
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
  version = [(FTShareChannelMessage *)self version];
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

  messageType = [(FTShareChannelMessage *)self messageType];
  protoData = [(FTShareChannelMessage *)self protoData];
  v15 = protoData;
  if (messageType == 3)
  {
    if (protoData)
    {
      v16 = @"scPrReq";
LABEL_20:
      CFDictionarySetValue(v4, v16, protoData);
      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_19596412C();
    }
  }

  else
  {
    if (protoData)
    {
      v16 = @"scReq";
      goto LABEL_20;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1959640A4();
    }
  }

LABEL_25:

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(FTShareChannelMessage *)self messageType]== 3)
  {
    v4 = @"scPrRes";
  }

  else
  {
    v4 = @"scRes";
  }

  v5 = [dictionaryCopy _dataForKey:v4];
  [(FTShareChannelMessage *)self setProtoResponse:v5];

  v6 = [dictionaryCopy _stringForKey:@"U"];
  [(FTShareChannelMessage *)self setMessageID:v6];

  v7 = [dictionaryCopy _numberForKey:@"s"];
  -[FTShareChannelMessage setResponseValue:](self, "setResponseValue:", [v7 intValue]);
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