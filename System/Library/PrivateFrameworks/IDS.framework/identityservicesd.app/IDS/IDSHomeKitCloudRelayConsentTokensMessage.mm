@interface IDSHomeKitCloudRelayConsentTokensMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSHomeKitCloudRelayConsentTokensMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = IDSHomeKitCloudRelayConsentTokensMessage;
  v4 = [(IDSHomeKitCloudRelayConsentTokensMessage *)&v12 copyWithZone:zone];
  subService = [(IDSHomeKitCloudRelayConsentTokensMessage *)self subService];
  [v4 setSubService:subService];

  serviceUserID = [(IDSHomeKitCloudRelayConsentTokensMessage *)self serviceUserID];
  [v4 setServiceUserID:serviceUserID];

  accessoryIDs = [(IDSHomeKitCloudRelayConsentTokensMessage *)self accessoryIDs];
  [v4 setAccessoryIDs:accessoryIDs];

  adminID = [(IDSHomeKitCloudRelayConsentTokensMessage *)self adminID];
  [v4 setAdminID:adminID];

  expiry = [(IDSHomeKitCloudRelayConsentTokensMessage *)self expiry];
  [v4 setExpiry:expiry];

  responseConsentTokens = [(IDSHomeKitCloudRelayConsentTokensMessage *)self responseConsentTokens];
  [v4 setResponseConsentTokens:responseConsentTokens];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSHomeKitCloudRelayConsentTokensMessage;
  additionalMessageHeaders = [(IDSHomeKitCloudRelayConsentTokensMessage *)&v8 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  subService = [(IDSHomeKitCloudRelayConsentTokensMessage *)self subService];
  if (subService)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", subService);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BEB0();
  }

  serviceUserID = [(IDSHomeKitCloudRelayConsentTokensMessage *)self serviceUserID];
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
  accessoryIDs = [(IDSHomeKitCloudRelayConsentTokensMessage *)self accessoryIDs];
  if (accessoryIDs)
  {
    CFDictionarySetValue(v3, @"accessory-ids", accessoryIDs);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C9F0();
  }

  adminID = [(IDSHomeKitCloudRelayConsentTokensMessage *)self adminID];
  if (adminID)
  {
    CFDictionarySetValue(v3, @"admin-id", adminID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092CA78();
  }

  expiry = [(IDSHomeKitCloudRelayConsentTokensMessage *)self expiry];
  if (expiry)
  {
    CFDictionarySetValue(v3, @"expiry", expiry);
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v4 = [dictionary _arrayForKey:@"consent-tokens"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self setResponseConsentTokens:v4];
    v5 = v6;
  }

  _objc_release_x1(v4, v5);
}

@end