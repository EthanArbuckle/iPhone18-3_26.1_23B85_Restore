@interface IDSWebTunnelRequestMessage
- (IDSWebTunnelRequestMessage)initWithMessage:(id)a3;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (void)handleResponseDictionary:(id)a3;
- (void)handleResponseHeaders:(id)a3;
@end

@implementation IDSWebTunnelRequestMessage

- (IDSWebTunnelRequestMessage)initWithMessage:(id)a3
{
  v8.receiver = self;
  v8.super_class = IDSWebTunnelRequestMessage;
  v3 = [(FTIDSMessage *)&v8 init];
  v4 = v3;
  if (v3)
  {
    [(IDSBaseMessage *)v3 setWantsResponse:1];
    [(IDSBaseMessage *)v4 setWantsIntegerUniqueIDs:1];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    [(IDSWebTunnelRequestMessage *)v4 setMessageRequestUUID:v6];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17.receiver = self;
  v17.super_class = IDSWebTunnelRequestMessage;
  v4 = [(FTIDSMessage *)&v17 copyWithZone:a3];
  v5 = [(IDSWebTunnelRequestMessage *)self messageRequestUUID];
  [v4 setMessageRequestUUID:v5];

  v6 = [(IDSWebTunnelRequestMessage *)self messageURL];
  [v4 setMessageURL:v6];

  v7 = [(IDSWebTunnelRequestMessage *)self messageRequestBodyData];
  [v4 setMessageRequestBodyData:v7];

  v8 = [(IDSWebTunnelRequestMessage *)self messageRequestBodyDictionary];
  [v4 setMessageRequestBodyDictionary:v8];

  v9 = [(IDSWebTunnelRequestMessage *)self messageHeaders];
  [v4 setMessageHeaders:v9];

  v10 = [(IDSWebTunnelRequestMessage *)self responseBodyDictionary];
  [v4 setResponseBodyDictionary:v10];

  v11 = [(IDSWebTunnelRequestMessage *)self responseBodyData];
  [v4 setResponseBodyData:v11];

  v12 = [(IDSWebTunnelRequestMessage *)self responseHeaders];
  [v4 setResponseHeaders:v12];

  v13 = [(IDSWebTunnelRequestMessage *)self responseCode];
  [v4 setResponseCode:v13];

  v14 = [(IDSWebTunnelRequestMessage *)self responseStatus];
  [v4 setResponseStatus:v14];

  [v4 setDisableIDSTranslation:{-[IDSWebTunnelRequestMessage disableIDSTranslation](self, "disableIDSTranslation")}];
  v15 = [(IDSWebTunnelRequestMessage *)self userAgentOverride];
  [v4 setUserAgentOverride:v15];

  return v4;
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v9.receiver = self;
  v9.super_class = IDSWebTunnelRequestMessage;
  v3 = [(FTIDSMessage *)&v9 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v5 = [(IDSWebTunnelRequestMessage *)self messageHeaders];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:v5];

  [(__CFDictionary *)Mutable removeObjectForKey:@"x-apple-apns-dual-mode-delivery-type"];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v7 = [v6 stringValue];
  [(__CFDictionary *)Mutable setValue:v7 forKey:@"x-apple-apns-dual-mode-delivery-type"];

  return Mutable;
}

- (id)messageBody
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = IDSWebTunnelRequestMessage;
  v3 = [(IDSBaseMessage *)&v21 messageBody];
  v4 = [v3 mutableCopy];

  v5 = [(IDSWebTunnelRequestMessage *)self messageRequestUUID];
  if (v5)
  {
    v6 = v5;
    v7 = [(IDSWebTunnelRequestMessage *)self messageRequestUUID];
    v8 = [v7 UTF8String];

    if (v8)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(v8, uu);
      jw_uuid_to_data();
      v9 = 0;
      if (v9)
      {
        CFDictionarySetValue(v4, @"U", v9);
      }
    }
  }

  v10 = _IDSWebTunnelServiceVersionNumber();
  if (v10)
  {
    CFDictionarySetValue(v4, @"v", v10);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1959634D8();
  }

  v11 = [MEMORY[0x1E69A60B8] sharedInstance];
  v12 = [v11 userAgentString];

  if (v12)
  {
    CFDictionarySetValue(v4, @"ua", v12);
  }

  if (![(IDSWebTunnelRequestMessage *)self isIDSMessage])
  {
    v13 = [(IDSWebTunnelRequestMessage *)self userAgentOverride];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [(IDSWebTunnelRequestMessage *)self userAgentOverride];
      if (v15)
      {
        CFDictionarySetValue(v4, @"ua", v15);
      }
    }

    CFDictionarySetValue(v4, @"nH", &unk_1F09D0758);
  }

  CFDictionarySetValue(v4, @"cT", @"application/x-apple-plist");
  messageURL = self->_messageURL;
  if (messageURL)
  {
    CFDictionarySetValue(v4, @"u", messageURL);
  }

  messageRequestBodyData = self->_messageRequestBodyData;
  if (messageRequestBodyData)
  {
    CFDictionarySetValue(v4, @"b", messageRequestBodyData);
  }

  v18 = MEMORY[0x19A8B8420](@"com.apple.ids", @"x-test-opts");
  if ([v18 length] && v18)
  {
    CFDictionarySetValue(v4, @"x-test-opts", v18);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)handleResponseDictionary:(id)a3
{
  v10 = a3;
  v4 = [v10 _numberForKey:@"hs"];
  [(IDSWebTunnelRequestMessage *)self setResponseCode:v4];

  v5 = [v10 _numberForKey:@"s"];
  [(IDSWebTunnelRequestMessage *)self setResponseStatus:v5];

  v6 = [v10 _dictionaryForKey:@"h"];
  [(IDSWebTunnelRequestMessage *)self setResponseHeaders:v6];

  v7 = [v10 objectForKey:@"b"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v10 _dataForKey:@"b"];
    [(IDSWebTunnelRequestMessage *)self setResponseBodyData:v8];

    v9 = [v10 _dataForKey:@"b"];
    -[IDSBaseMessage setReceivedByteCount:](self, "setReceivedByteCount:", [v9 length]);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [v10 _dictionaryForKey:@"b"];
    [(IDSWebTunnelRequestMessage *)self setResponseBodyDictionary:v9];
  }

LABEL_6:
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