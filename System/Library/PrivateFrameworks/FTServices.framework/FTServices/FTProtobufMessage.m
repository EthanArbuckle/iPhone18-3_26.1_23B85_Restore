@interface FTProtobufMessage
- (FTProtobufMessage)initWithPushTopic:(id)a3 protoData:(id)a4;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (void)handleResponseDictionary:(id)a3;
- (void)handleResponseHeaders:(id)a3;
@end

@implementation FTProtobufMessage

- (FTProtobufMessage)initWithPushTopic:(id)a3 protoData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FTProtobufMessage;
  v9 = [(FTIDSMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pushTopic, a3);
    objc_storeStrong(&v10->_protoData, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = FTProtobufMessage;
  v4 = [(FTIDSMessage *)&v9 copyWithZone:a3];
  v5 = [(FTProtobufMessage *)self messageID];
  [v4 setMessageID:v5];

  [v4 setVersion:{-[FTProtobufMessage version](self, "version")}];
  v6 = [(FTProtobufMessage *)self protoData];
  [v4 setProtoData:v6];

  v7 = [(FTProtobufMessage *)self pushTopic];
  [v4 setPushTopic:v7];

  return v4;
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v5.receiver = self;
  v5.super_class = FTProtobufMessage;
  v2 = [(FTIDSMessage *)&v5 additionalMessageHeaders];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)messageBody
{
  v18 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = FTProtobufMessage;
  v3 = [(IDSBaseMessage *)&v16 messageBody];
  v4 = [v3 mutableCopy];

  v5 = [(FTProtobufMessage *)self messageID];
  if (v5)
  {
    [(FTProtobufMessage *)self messageID];
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
  v9 = [(FTProtobufMessage *)self version];
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

  v13 = [(FTProtobufMessage *)self protoData];
  if (v13)
  {
    CFDictionarySetValue(v4, @"req", v13);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195962ED4();
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 _dataForKey:@"res"];
  [(FTProtobufMessage *)self setProtoResponse:v5];

  v6 = [v4 _stringForKey:@"U"];
  [(FTProtobufMessage *)self setMessageID:v6];

  v7 = [v4 _numberForKey:@"s"];

  -[FTProtobufMessage setResponseValue:](self, "setResponseValue:", [v7 intValue]);
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