@interface IDSInitializeValidationMessage
- (IDSInitializeValidationMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSInitializeValidationMessage

- (IDSInitializeValidationMessage)init
{
  v6.receiver = self;
  v6.super_class = IDSInitializeValidationMessage;
  v2 = [(IDSInitializeValidationMessage *)&v6 init];
  if (v2)
  {
    IMGetConferenceSettings();
    v3 = 0;
    v4 = [v3 lastObject];
    [(IDSInitializeValidationMessage *)v2 setTopic:v4];

    [(IDSInitializeValidationMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = IDSInitializeValidationMessage;
  v4 = [(IDSInitializeValidationMessage *)&v14 copyWithZone:a3];
  v5 = [(IDSInitializeValidationMessage *)self pushToken];
  [v4 setPushToken:v5];

  v6 = [(IDSInitializeValidationMessage *)self sessionInfoRequest];
  [v4 setSessionInfoRequest:v6];

  v7 = [(IDSInitializeValidationMessage *)self responseSessionInfo];
  [v4 setResponseSessionInfo:v7];

  v8 = [(IDSInitializeValidationMessage *)self responseTTL];
  [v4 setResponseTTL:v8];

  v9 = [(IDSInitializeValidationMessage *)self absintheUDID];
  [v4 setAbsintheUDID:v9];

  v10 = [(IDSInitializeValidationMessage *)self absintheHello];
  [v4 setAbsintheHello:v10];

  v11 = [(IDSInitializeValidationMessage *)self responseAbsintheServKey];
  [v4 setResponseAbsintheServKey:v11];

  v12 = [(IDSInitializeValidationMessage *)self responseAbsintheResponse];
  [v4 setResponseAbsintheResponse:v12];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"session-info-request"];

  return v2;
}

- (id)messageBody
{
  v9.receiver = self;
  v9.super_class = IDSInitializeValidationMessage;
  v3 = [(IDSInitializeValidationMessage *)&v9 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSInitializeValidationMessage *)self sessionInfoRequest];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"session-info-request", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931C34();
  }

  v6 = [(IDSInitializeValidationMessage *)self absintheUDID];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"absinthe-udid", v6);
  }

  v7 = [(IDSInitializeValidationMessage *)self absintheHello];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"absinthe-hello", v7);
  }

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v10.receiver = self;
  v10.super_class = IDSInitializeValidationMessage;
  v3 = [(IDSInitializeValidationMessage *)&v10 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSInitializeValidationMessage *)self pushToken];
  v6 = [v5 _FTStringFromBaseData];

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", v6);
  }

  v7 = _IDSIDProtocolVersionNumber();
  v8 = [v7 stringValue];

  if (v8)
  {
    CFDictionarySetValue(Mutable, @"x-protocol-version", v8);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"session-info"];
  [(IDSInitializeValidationMessage *)self setResponseSessionInfo:v5];

  v6 = [v4 objectForKey:@"ttl"];
  [(IDSInitializeValidationMessage *)self setResponseTTL:v6];

  v7 = [v4 objectForKey:@"absinthe-serv-key"];
  [(IDSInitializeValidationMessage *)self setResponseAbsintheServKey:v7];

  v8 = [v4 objectForKey:@"absinthe-response"];

  [(IDSInitializeValidationMessage *)self setResponseAbsintheResponse:v8];
}

@end