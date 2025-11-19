@interface FTShareChannelMessage
- (FTShareChannelMessage)initWithProtoData:(id)a3 messageType:(int)a4;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (int64_t)command;
- (int64_t)responseCommand;
- (void)handleResponseDictionary:(id)a3;
- (void)handleResponseHeaders:(id)a3;
@end

@implementation FTShareChannelMessage

- (FTShareChannelMessage)initWithProtoData:(id)a3 messageType:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FTShareChannelMessage;
  v8 = [(FTIDSMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_protoData, a3);
    v9->_messageType = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = FTShareChannelMessage;
  v4 = [(FTIDSMessage *)&v8 copyWithZone:a3];
  v5 = [(FTShareChannelMessage *)self messageID];
  [v4 setMessageID:v5];

  [v4 setVersion:{-[FTShareChannelMessage version](self, "version")}];
  v6 = [(FTShareChannelMessage *)self protoData];
  [v4 setProtoData:v6];

  return v4;
}

- (int64_t)command
{
  v2 = [(FTShareChannelMessage *)self messageType];
  v3 = 224;
  if (v2 == 2)
  {
    v3 = 225;
  }

  if (v2 == 3)
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
  v2 = [(FTShareChannelMessage *)self messageType];
  v3 = 224;
  if (v2 == 2)
  {
    v3 = 225;
  }

  if (v2 == 3)
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
  v2 = [(FTIDSMessage *)&v5 additionalMessageHeaders];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)messageBody
{
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = FTShareChannelMessage;
  v3 = [(IDSBaseMessage *)&v19 messageBody];
  v4 = [v3 mutableCopy];

  v5 = [(FTShareChannelMessage *)self messageID];
  if (v5)
  {
    [(FTShareChannelMessage *)self messageID];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringGUID];
  }
  v6 = ;
  v7 = [v6 UTF8String];

  memset(uu, 170, sizeof(uu));
  uuid_parse(v7, uu);
  jw_uuid_to_data();
  v8 = 0;
  v9 = [(FTShareChannelMessage *)self version];
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
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

  v13 = [(FTShareChannelMessage *)self messageType];
  v14 = [(FTShareChannelMessage *)self protoData];
  v15 = v14;
  if (v13 == 3)
  {
    if (v14)
    {
      v16 = @"scPrReq";
LABEL_20:
      CFDictionarySetValue(v4, v16, v14);
      goto LABEL_25;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_19596412C();
    }
  }

  else
  {
    if (v14)
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

- (void)handleResponseDictionary:(id)a3
{
  v8 = a3;
  if ([(FTShareChannelMessage *)self messageType]== 3)
  {
    v4 = @"scPrRes";
  }

  else
  {
    v4 = @"scRes";
  }

  v5 = [v8 _dataForKey:v4];
  [(FTShareChannelMessage *)self setProtoResponse:v5];

  v6 = [v8 _stringForKey:@"U"];
  [(FTShareChannelMessage *)self setMessageID:v6];

  v7 = [v8 _numberForKey:@"s"];
  -[FTShareChannelMessage setResponseValue:](self, "setResponseValue:", [v7 intValue]);
}

- (void)handleResponseHeaders:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Web Tunnel Message Completed With Respone Headers %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end