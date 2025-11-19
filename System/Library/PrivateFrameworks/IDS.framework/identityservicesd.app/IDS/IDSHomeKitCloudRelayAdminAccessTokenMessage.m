@interface IDSHomeKitCloudRelayAdminAccessTokenMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSHomeKitCloudRelayAdminAccessTokenMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = IDSHomeKitCloudRelayAdminAccessTokenMessage;
  v4 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)&v13 copyWithZone:a3];
  v5 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self subService];
  [v4 setSubService:v5];

  v6 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self serviceUserID];
  [v4 setServiceUserID:v6];

  v7 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self accessoryID];
  [v4 setAccessoryID:v7];

  v8 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self pairingToken];
  [v4 setPairingToken:v8];

  v9 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self responseAccessoryID];
  [v4 setAccessoryID:v9];

  v10 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self responseAdminAcccessToken];
  [v4 setResponseAdminAcccessToken:v10];

  v11 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self responseExpiry];
  [v4 setResponseExpiry:v11];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSHomeKitCloudRelayAdminAccessTokenMessage;
  v3 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)&v8 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self subService];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BEB0();
  }

  v6 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self serviceUserID];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-service-user-id", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BF38();
  }

  return Mutable;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self accessoryID];
  if (v4)
  {
    CFDictionarySetValue(v3, @"accessory-id", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BFC0();
  }

  v5 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self pairingToken];
  if (v5)
  {
    CFDictionarySetValue(v3, @"pairing-token", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C048();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v7 = a3;
  v4 = [v7 _stringForKey:@"accessory-id"];
  if (v4)
  {
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self setResponseAccessoryID:v4];
  }

  v5 = [v7 _dataForKey:@"access-token"];
  if (v5)
  {
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self setResponseAdminAcccessToken:v5];
  }

  v6 = [v7 _numberForKey:@"expiry"];
  if (v6)
  {
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self setResponseExpiry:v6];
  }
}

@end