@interface IDSHomeKitCloudRelayServiceUserIDsMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSHomeKitCloudRelayServiceUserIDsMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IDSHomeKitCloudRelayServiceUserIDsMessage;
  v4 = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)&v9 copyWithZone:zone];
  subService = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self subService];
  [v4 setSubService:subService];

  responseServiceUserIDs = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self responseServiceUserIDs];
  [v4 setResponseServiceUserIDs:responseServiceUserIDs];

  userID = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self userID];
  [v4 setUserID:userID];

  return v4;
}

- (id)additionalMessageHeaders
{
  v7.receiver = self;
  v7.super_class = IDSHomeKitCloudRelayServiceUserIDsMessage;
  additionalMessageHeaders = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)&v7 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  subService = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self subService];
  if (subService)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", subService);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092E834();
  }

  return Mutable;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  userID = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self userID];
  if (userID)
  {
    CFDictionarySetValue(v3, @"user-id", userID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092E8D0();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = IDSHomeKitCloudRelayServiceUserIDsMessage;
  dictionaryCopy = dictionary;
  [(IDSHomeKitCloudRelayServiceUserIDsMessage *)&v9 handleResponseDictionary:dictionaryCopy];
  v5 = [dictionaryCopy _stringForKey:{@"service-user-id", v9.receiver, v9.super_class}];
  v6 = [dictionaryCopy _numberForKey:@"expiry"];

  if (v5)
  {
    Mutable = objc_alloc_init(NSMutableDictionary);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    CFDictionarySetValue(Mutable, @"service-user-id", v5);
    if (v6)
    {
      CFDictionarySetValue(Mutable, @"expiry", v6);
    }

    v8 = [NSArray arrayWithObject:Mutable];
    [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self setResponseServiceUserIDs:v8];
  }
}

@end