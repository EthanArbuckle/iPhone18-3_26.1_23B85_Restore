@interface IDSWebTunnelRequestMessage
- (IDSWebTunnelRequestMessage)initWithMessage:(id)message;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (void)handleResponseDictionary:(id)dictionary;
- (void)handleResponseHeaders:(id)headers;
@end

@implementation IDSWebTunnelRequestMessage

- (IDSWebTunnelRequestMessage)initWithMessage:(id)message
{
  v8.receiver = self;
  v8.super_class = IDSWebTunnelRequestMessage;
  v3 = [(FTIDSMessage *)&v8 init];
  v4 = v3;
  if (v3)
  {
    [(IDSBaseMessage *)v3 setWantsResponse:1];
    [(IDSBaseMessage *)v4 setWantsIntegerUniqueIDs:1];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(IDSWebTunnelRequestMessage *)v4 setMessageRequestUUID:uUIDString];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17.receiver = self;
  v17.super_class = IDSWebTunnelRequestMessage;
  v4 = [(FTIDSMessage *)&v17 copyWithZone:zone];
  messageRequestUUID = [(IDSWebTunnelRequestMessage *)self messageRequestUUID];
  [v4 setMessageRequestUUID:messageRequestUUID];

  messageURL = [(IDSWebTunnelRequestMessage *)self messageURL];
  [v4 setMessageURL:messageURL];

  messageRequestBodyData = [(IDSWebTunnelRequestMessage *)self messageRequestBodyData];
  [v4 setMessageRequestBodyData:messageRequestBodyData];

  messageRequestBodyDictionary = [(IDSWebTunnelRequestMessage *)self messageRequestBodyDictionary];
  [v4 setMessageRequestBodyDictionary:messageRequestBodyDictionary];

  messageHeaders = [(IDSWebTunnelRequestMessage *)self messageHeaders];
  [v4 setMessageHeaders:messageHeaders];

  responseBodyDictionary = [(IDSWebTunnelRequestMessage *)self responseBodyDictionary];
  [v4 setResponseBodyDictionary:responseBodyDictionary];

  responseBodyData = [(IDSWebTunnelRequestMessage *)self responseBodyData];
  [v4 setResponseBodyData:responseBodyData];

  responseHeaders = [(IDSWebTunnelRequestMessage *)self responseHeaders];
  [v4 setResponseHeaders:responseHeaders];

  responseCode = [(IDSWebTunnelRequestMessage *)self responseCode];
  [v4 setResponseCode:responseCode];

  responseStatus = [(IDSWebTunnelRequestMessage *)self responseStatus];
  [v4 setResponseStatus:responseStatus];

  [v4 setDisableIDSTranslation:{-[IDSWebTunnelRequestMessage disableIDSTranslation](self, "disableIDSTranslation")}];
  userAgentOverride = [(IDSWebTunnelRequestMessage *)self userAgentOverride];
  [v4 setUserAgentOverride:userAgentOverride];

  return v4;
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v9.receiver = self;
  v9.super_class = IDSWebTunnelRequestMessage;
  additionalMessageHeaders = [(FTIDSMessage *)&v9 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  messageHeaders = [(IDSWebTunnelRequestMessage *)self messageHeaders];
  [(__CFDictionary *)Mutable addEntriesFromDictionary:messageHeaders];

  [(__CFDictionary *)Mutable removeObjectForKey:@"x-apple-apns-dual-mode-delivery-type"];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  stringValue = [v6 stringValue];
  [(__CFDictionary *)Mutable setValue:stringValue forKey:@"x-apple-apns-dual-mode-delivery-type"];

  return Mutable;
}

- (id)messageBody
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = IDSWebTunnelRequestMessage;
  messageBody = [(IDSBaseMessage *)&v21 messageBody];
  v4 = [messageBody mutableCopy];

  messageRequestUUID = [(IDSWebTunnelRequestMessage *)self messageRequestUUID];
  if (messageRequestUUID)
  {
    v6 = messageRequestUUID;
    messageRequestUUID2 = [(IDSWebTunnelRequestMessage *)self messageRequestUUID];
    uTF8String = [messageRequestUUID2 UTF8String];

    if (uTF8String)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(uTF8String, uu);
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

  mEMORY[0x1E69A60B8] = [MEMORY[0x1E69A60B8] sharedInstance];
  userAgentString = [mEMORY[0x1E69A60B8] userAgentString];

  if (userAgentString)
  {
    CFDictionarySetValue(v4, @"ua", userAgentString);
  }

  if (![(IDSWebTunnelRequestMessage *)self isIDSMessage])
  {
    userAgentOverride = [(IDSWebTunnelRequestMessage *)self userAgentOverride];
    v14 = [userAgentOverride length];

    if (v14)
    {
      userAgentOverride2 = [(IDSWebTunnelRequestMessage *)self userAgentOverride];
      if (userAgentOverride2)
      {
        CFDictionarySetValue(v4, @"ua", userAgentOverride2);
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

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy _numberForKey:@"hs"];
  [(IDSWebTunnelRequestMessage *)self setResponseCode:v4];

  v5 = [dictionaryCopy _numberForKey:@"s"];
  [(IDSWebTunnelRequestMessage *)self setResponseStatus:v5];

  v6 = [dictionaryCopy _dictionaryForKey:@"h"];
  [(IDSWebTunnelRequestMessage *)self setResponseHeaders:v6];

  v7 = [dictionaryCopy objectForKey:@"b"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [dictionaryCopy _dataForKey:@"b"];
    [(IDSWebTunnelRequestMessage *)self setResponseBodyData:v8];

    v9 = [dictionaryCopy _dataForKey:@"b"];
    -[IDSBaseMessage setReceivedByteCount:](self, "setReceivedByteCount:", [v9 length]);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [dictionaryCopy _dictionaryForKey:@"b"];
    [(IDSWebTunnelRequestMessage *)self setResponseBodyDictionary:v9];
  }

LABEL_6:
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