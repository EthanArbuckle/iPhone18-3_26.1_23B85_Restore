@interface IDSHomeKitCloudRelayUserAccessTokensMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSHomeKitCloudRelayUserAccessTokensMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = IDSHomeKitCloudRelayUserAccessTokensMessage;
  v4 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)&v12 copyWithZone:a3];
  v5 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self subService];
  [v4 setSubService:v5];

  v6 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self serviceUserID];
  [v4 setServiceUserID:v6];

  v7 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self userID];
  [v4 setUserID:v7];

  v8 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self userHandle];
  [v4 setUserHandle:v8];

  v9 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self accessoryRequests];
  [v4 setAccessoryRequests:v9];

  v10 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self responseAccessTokens];
  [v4 setResponseAccessTokens:v10];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSHomeKitCloudRelayUserAccessTokensMessage;
  v3 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)&v8 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self subService];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917538();
  }

  v6 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self serviceUserID];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-service-user-id", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009175C0();
  }

  return Mutable;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self userID];
  if (v4)
  {
    CFDictionarySetValue(v3, @"user-id", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917648();
  }

  v5 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self userHandle];
  if (v5)
  {
    CFDictionarySetValue(v3, @"user-handle", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009176D0();
  }

  v6 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self accessoryRequests];
  if (v6)
  {
    CFDictionarySetValue(v3, @"tokens", v6);
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = [a3 _arrayForKey:@"access-tokens"];
  if (v4)
  {
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self setResponseAccessTokens:v4];
  }

  _objc_release_x1();
}

@end