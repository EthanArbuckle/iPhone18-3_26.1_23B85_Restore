@interface IDSHomeKitCloudRelayServiceUserIDsMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSHomeKitCloudRelayServiceUserIDsMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = IDSHomeKitCloudRelayServiceUserIDsMessage;
  v4 = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)&v9 copyWithZone:a3];
  v5 = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self subService];
  [v4 setSubService:v5];

  v6 = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self responseServiceUserIDs];
  [v4 setResponseServiceUserIDs:v6];

  v7 = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self userID];
  [v4 setUserID:v7];

  return v4;
}

- (id)additionalMessageHeaders
{
  v7.receiver = self;
  v7.super_class = IDSHomeKitCloudRelayServiceUserIDsMessage;
  v3 = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)&v7 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self subService];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", v5);
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
  v4 = [(IDSHomeKitCloudRelayServiceUserIDsMessage *)self userID];
  if (v4)
  {
    CFDictionarySetValue(v3, @"user-id", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092E8D0();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v9.receiver = self;
  v9.super_class = IDSHomeKitCloudRelayServiceUserIDsMessage;
  v4 = a3;
  [(IDSHomeKitCloudRelayServiceUserIDsMessage *)&v9 handleResponseDictionary:v4];
  v5 = [v4 _stringForKey:{@"service-user-id", v9.receiver, v9.super_class}];
  v6 = [v4 _numberForKey:@"expiry"];

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