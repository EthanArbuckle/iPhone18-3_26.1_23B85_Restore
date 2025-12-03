@interface IDSHomeKitCloudRelayUserAccessTokensMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSHomeKitCloudRelayUserAccessTokensMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = IDSHomeKitCloudRelayUserAccessTokensMessage;
  v4 = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)&v12 copyWithZone:zone];
  subService = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self subService];
  [v4 setSubService:subService];

  serviceUserID = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self serviceUserID];
  [v4 setServiceUserID:serviceUserID];

  userID = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self userID];
  [v4 setUserID:userID];

  userHandle = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self userHandle];
  [v4 setUserHandle:userHandle];

  accessoryRequests = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self accessoryRequests];
  [v4 setAccessoryRequests:accessoryRequests];

  responseAccessTokens = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self responseAccessTokens];
  [v4 setResponseAccessTokens:responseAccessTokens];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSHomeKitCloudRelayUserAccessTokensMessage;
  additionalMessageHeaders = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)&v8 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  subService = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self subService];
  if (subService)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", subService);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917538();
  }

  serviceUserID = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self serviceUserID];
  if (serviceUserID)
  {
    CFDictionarySetValue(Mutable, @"x-service-user-id", serviceUserID);
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
  userID = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self userID];
  if (userID)
  {
    CFDictionarySetValue(v3, @"user-id", userID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917648();
  }

  userHandle = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self userHandle];
  if (userHandle)
  {
    CFDictionarySetValue(v3, @"user-handle", userHandle);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009176D0();
  }

  accessoryRequests = [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self accessoryRequests];
  if (accessoryRequests)
  {
    CFDictionarySetValue(v3, @"tokens", accessoryRequests);
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v4 = [dictionary _arrayForKey:@"access-tokens"];
  if (v4)
  {
    [(IDSHomeKitCloudRelayUserAccessTokensMessage *)self setResponseAccessTokens:v4];
  }

  _objc_release_x1();
}

@end