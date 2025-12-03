@interface IDSProfileMessage
- (BOOL)hasRequiredKeys:(id *)keys;
- (IDSProfileMessage)init;
- (id)additionalMessageHeaders;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
- (void)setPushPrivateKey:(__SecKey *)key;
- (void)setPushPublicKey:(__SecKey *)key;
@end

@implementation IDSProfileMessage

- (IDSProfileMessage)init
{
  v6.receiver = self;
  v6.super_class = IDSProfileMessage;
  v2 = [(IDSProfileMessage *)&v6 init];
  if (v2)
  {
    IMGetConferenceSettings();
    v3 = 0;
    lastObject = [v3 lastObject];
    [(IDSProfileMessage *)v2 setTopic:lastObject];

    [(IDSProfileMessage *)v2 setTimeout:60.0];
    [(IDSProfileMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = IDSProfileMessage;
  v4 = [(IDSProfileMessage *)&v10 copyWithZone:zone];
  authToken = [(IDSProfileMessage *)self authToken];
  [v4 setAuthToken:authToken];

  profileID = [(IDSProfileMessage *)self profileID];
  [v4 setProfileID:profileID];

  pushCertificate = [(IDSProfileMessage *)self pushCertificate];
  [v4 setPushCertificate:pushCertificate];

  [v4 setPushPrivateKey:{-[IDSProfileMessage pushPrivateKey](self, "pushPrivateKey")}];
  [v4 setPushPublicKey:{-[IDSProfileMessage pushPublicKey](self, "pushPublicKey")}];
  pushToken = [(IDSProfileMessage *)self pushToken];
  [v4 setPushToken:pushToken];

  return v4;
}

- (void)dealloc
{
  [(IDSProfileMessage *)self setPushCertificate:0];
  [(IDSProfileMessage *)self setPushPrivateKey:0];
  [(IDSProfileMessage *)self setPushPublicKey:0];
  v3.receiver = self;
  v3.super_class = IDSProfileMessage;
  [(IDSProfileMessage *)&v3 dealloc];
}

- (void)setPushPublicKey:(__SecKey *)key
{
  pushPublicKey = self->_pushPublicKey;
  if (pushPublicKey != key)
  {
    if (pushPublicKey)
    {
      CFRelease(pushPublicKey);
      self->_pushPublicKey = 0;
    }

    if (key)
    {
      self->_pushPublicKey = key;

      CFRetain(key);
    }
  }
}

- (void)setPushPrivateKey:(__SecKey *)key
{
  pushKey = self->_pushKey;
  if (pushKey != key)
  {
    if (pushKey)
    {
      CFRelease(pushKey);
      self->_pushKey = 0;
    }

    if (key)
    {
      self->_pushKey = key;

      CFRetain(key);
    }
  }
}

- (BOOL)hasRequiredKeys:(id *)keys
{
  authToken = [(IDSProfileMessage *)self authToken];
  v6 = [authToken length];

  if (v6)
  {
    profileID = [(IDSProfileMessage *)self profileID];
    v8 = [profileID length];

    if (v8)
    {
      v13.receiver = self;
      v13.super_class = IDSProfileMessage;
      return [(IDSProfileMessage *)&v13 hasRequiredKeys:keys];
    }

    if (keys)
    {
      v10 = @"profile-id";
      goto LABEL_8;
    }
  }

  else if (keys)
  {
    v10 = @"auth token";
LABEL_8:
    v11 = [NSArray arrayWithObject:v10];
    v12 = v11;
    result = 0;
    *keys = v11;
    return result;
  }

  return 0;
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v13.receiver = self;
  v13.super_class = IDSProfileMessage;
  additionalMessageHeaders = [(IDSProfileMessage *)&v13 additionalMessageHeaders];
  v4 = [additionalMessageHeaders mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  profileID = [(IDSProfileMessage *)self profileID];
  if (profileID)
  {
    CFDictionarySetValue(v4, @"vp", profileID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BD08();
  }

  authToken = [(IDSProfileMessage *)self authToken];
  _FTDataFromHexString = [authToken _FTDataFromHexString];

  if (_FTDataFromHexString)
  {
    CFDictionarySetValue(v4, @"va", _FTDataFromHexString);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BD90();
  }

  authToken2 = [(IDSProfileMessage *)self authToken];
  _FTDataFromHexString2 = [authToken2 _FTDataFromHexString];

  if (_FTDataFromHexString2)
  {
    CFDictionarySetValue(v4, @"xp", _FTDataFromHexString2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BE18();
  }

  dsAuthID = [(IDSProfileMessage *)self dsAuthID];
  if (dsAuthID)
  {
    CFDictionarySetValue(v4, @"x-ds-client-id", dsAuthID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BEA0();
  }

  v11 = _IDSIDProtocolVersionNumber();
  if (v11)
  {
    CFDictionarySetValue(v4, @"xp", v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BE18();
  }

  return v4;
}

- (id)additionalMessageHeaders
{
  v11.receiver = self;
  v11.super_class = IDSProfileMessage;
  additionalMessageHeaders = [(IDSProfileMessage *)&v11 additionalMessageHeaders];
  v4 = [additionalMessageHeaders mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  profileID = [(IDSProfileMessage *)self profileID];
  if (profileID)
  {
    CFDictionarySetValue(v4, @"x-vc-profile-id", profileID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BF28();
  }

  authToken = [(IDSProfileMessage *)self authToken];
  if (authToken)
  {
    CFDictionarySetValue(v4, @"x-vc-auth-token", authToken);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BFB0();
  }

  dsAuthID = [(IDSProfileMessage *)self dsAuthID];
  if (dsAuthID)
  {
    CFDictionarySetValue(v4, @"x-ds-client-id", dsAuthID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BEA0();
  }

  v8 = _IDSIDProtocolVersionNumber();
  stringValue = [v8 stringValue];

  if (stringValue)
  {
    CFDictionarySetValue(v4, @"x-protocol-version", stringValue);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091C038();
  }

  return v4;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"alert"];
  [(IDSProfileMessage *)self setResponseAlertInfo:v4];
}

@end