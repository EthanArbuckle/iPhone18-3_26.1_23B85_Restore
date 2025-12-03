@interface IDSHomeKitCloudRelayAdminAccessTokenMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSHomeKitCloudRelayAdminAccessTokenMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = IDSHomeKitCloudRelayAdminAccessTokenMessage;
  v4 = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)&v13 copyWithZone:zone];
  subService = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self subService];
  [v4 setSubService:subService];

  serviceUserID = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self serviceUserID];
  [v4 setServiceUserID:serviceUserID];

  accessoryID = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self accessoryID];
  [v4 setAccessoryID:accessoryID];

  pairingToken = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self pairingToken];
  [v4 setPairingToken:pairingToken];

  responseAccessoryID = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self responseAccessoryID];
  [v4 setAccessoryID:responseAccessoryID];

  responseAdminAcccessToken = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self responseAdminAcccessToken];
  [v4 setResponseAdminAcccessToken:responseAdminAcccessToken];

  responseExpiry = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self responseExpiry];
  [v4 setResponseExpiry:responseExpiry];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSHomeKitCloudRelayAdminAccessTokenMessage;
  additionalMessageHeaders = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)&v8 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  subService = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self subService];
  if (subService)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", subService);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BEB0();
  }

  serviceUserID = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self serviceUserID];
  if (serviceUserID)
  {
    CFDictionarySetValue(Mutable, @"x-service-user-id", serviceUserID);
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
  accessoryID = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self accessoryID];
  if (accessoryID)
  {
    CFDictionarySetValue(v3, @"accessory-id", accessoryID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BFC0();
  }

  pairingToken = [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self pairingToken];
  if (pairingToken)
  {
    CFDictionarySetValue(v3, @"pairing-token", pairingToken);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C048();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy _stringForKey:@"accessory-id"];
  if (v4)
  {
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self setResponseAccessoryID:v4];
  }

  v5 = [dictionaryCopy _dataForKey:@"access-token"];
  if (v5)
  {
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self setResponseAdminAcccessToken:v5];
  }

  v6 = [dictionaryCopy _numberForKey:@"expiry"];
  if (v6)
  {
    [(IDSHomeKitCloudRelayAdminAccessTokenMessage *)self setResponseExpiry:v6];
  }
}

@end