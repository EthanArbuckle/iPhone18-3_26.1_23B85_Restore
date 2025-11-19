@interface IDSHomeKitCloudRelayConsentTokensMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSHomeKitCloudRelayConsentTokensMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = IDSHomeKitCloudRelayConsentTokensMessage;
  v4 = [(IDSHomeKitCloudRelayConsentTokensMessage *)&v12 copyWithZone:a3];
  v5 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self subService];
  [v4 setSubService:v5];

  v6 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self serviceUserID];
  [v4 setServiceUserID:v6];

  v7 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self accessoryIDs];
  [v4 setAccessoryIDs:v7];

  v8 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self adminID];
  [v4 setAdminID:v8];

  v9 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self expiry];
  [v4 setExpiry:v9];

  v10 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self responseConsentTokens];
  [v4 setResponseConsentTokens:v10];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSHomeKitCloudRelayConsentTokensMessage;
  v3 = [(IDSHomeKitCloudRelayConsentTokensMessage *)&v8 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self subService];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"x-id-sub-service", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BEB0();
  }

  v6 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self serviceUserID];
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
  v4 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self accessoryIDs];
  if (v4)
  {
    CFDictionarySetValue(v3, @"accessory-ids", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092C9F0();
  }

  v5 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self adminID];
  if (v5)
  {
    CFDictionarySetValue(v3, @"admin-id", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092CA78();
  }

  v6 = [(IDSHomeKitCloudRelayConsentTokensMessage *)self expiry];
  if (v6)
  {
    CFDictionarySetValue(v3, @"expiry", v6);
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = [a3 _arrayForKey:@"consent-tokens"];
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