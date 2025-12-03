@interface IDSInitializeValidationMessage
- (IDSInitializeValidationMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
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
    lastObject = [v3 lastObject];
    [(IDSInitializeValidationMessage *)v2 setTopic:lastObject];

    [(IDSInitializeValidationMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = IDSInitializeValidationMessage;
  v4 = [(IDSInitializeValidationMessage *)&v14 copyWithZone:zone];
  pushToken = [(IDSInitializeValidationMessage *)self pushToken];
  [v4 setPushToken:pushToken];

  sessionInfoRequest = [(IDSInitializeValidationMessage *)self sessionInfoRequest];
  [v4 setSessionInfoRequest:sessionInfoRequest];

  responseSessionInfo = [(IDSInitializeValidationMessage *)self responseSessionInfo];
  [v4 setResponseSessionInfo:responseSessionInfo];

  responseTTL = [(IDSInitializeValidationMessage *)self responseTTL];
  [v4 setResponseTTL:responseTTL];

  absintheUDID = [(IDSInitializeValidationMessage *)self absintheUDID];
  [v4 setAbsintheUDID:absintheUDID];

  absintheHello = [(IDSInitializeValidationMessage *)self absintheHello];
  [v4 setAbsintheHello:absintheHello];

  responseAbsintheServKey = [(IDSInitializeValidationMessage *)self responseAbsintheServKey];
  [v4 setResponseAbsintheServKey:responseAbsintheServKey];

  responseAbsintheResponse = [(IDSInitializeValidationMessage *)self responseAbsintheResponse];
  [v4 setResponseAbsintheResponse:responseAbsintheResponse];

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
  messageBody = [(IDSInitializeValidationMessage *)&v9 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  sessionInfoRequest = [(IDSInitializeValidationMessage *)self sessionInfoRequest];
  if (sessionInfoRequest)
  {
    CFDictionarySetValue(Mutable, @"session-info-request", sessionInfoRequest);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931C34();
  }

  absintheUDID = [(IDSInitializeValidationMessage *)self absintheUDID];
  if (absintheUDID)
  {
    CFDictionarySetValue(Mutable, @"absinthe-udid", absintheUDID);
  }

  absintheHello = [(IDSInitializeValidationMessage *)self absintheHello];
  if (absintheHello)
  {
    CFDictionarySetValue(Mutable, @"absinthe-hello", absintheHello);
  }

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v10.receiver = self;
  v10.super_class = IDSInitializeValidationMessage;
  additionalMessageHeaders = [(IDSInitializeValidationMessage *)&v10 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  pushToken = [(IDSInitializeValidationMessage *)self pushToken];
  _FTStringFromBaseData = [pushToken _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", _FTStringFromBaseData);
  }

  v7 = _IDSIDProtocolVersionNumber();
  stringValue = [v7 stringValue];

  if (stringValue)
  {
    CFDictionarySetValue(Mutable, @"x-protocol-version", stringValue);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"session-info"];
  [(IDSInitializeValidationMessage *)self setResponseSessionInfo:v5];

  v6 = [dictionaryCopy objectForKey:@"ttl"];
  [(IDSInitializeValidationMessage *)self setResponseTTL:v6];

  v7 = [dictionaryCopy objectForKey:@"absinthe-serv-key"];
  [(IDSInitializeValidationMessage *)self setResponseAbsintheServKey:v7];

  v8 = [dictionaryCopy objectForKey:@"absinthe-response"];

  [(IDSInitializeValidationMessage *)self setResponseAbsintheResponse:v8];
}

@end