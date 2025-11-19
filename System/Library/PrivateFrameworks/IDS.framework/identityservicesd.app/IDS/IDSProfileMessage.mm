@interface IDSProfileMessage
- (BOOL)hasRequiredKeys:(id *)a3;
- (IDSProfileMessage)init;
- (id)additionalMessageHeaders;
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)handleResponseDictionary:(id)a3;
- (void)setPushPrivateKey:(__SecKey *)a3;
- (void)setPushPublicKey:(__SecKey *)a3;
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
    v4 = [v3 lastObject];
    [(IDSProfileMessage *)v2 setTopic:v4];

    [(IDSProfileMessage *)v2 setTimeout:60.0];
    [(IDSProfileMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = IDSProfileMessage;
  v4 = [(IDSProfileMessage *)&v10 copyWithZone:a3];
  v5 = [(IDSProfileMessage *)self authToken];
  [v4 setAuthToken:v5];

  v6 = [(IDSProfileMessage *)self profileID];
  [v4 setProfileID:v6];

  v7 = [(IDSProfileMessage *)self pushCertificate];
  [v4 setPushCertificate:v7];

  [v4 setPushPrivateKey:{-[IDSProfileMessage pushPrivateKey](self, "pushPrivateKey")}];
  [v4 setPushPublicKey:{-[IDSProfileMessage pushPublicKey](self, "pushPublicKey")}];
  v8 = [(IDSProfileMessage *)self pushToken];
  [v4 setPushToken:v8];

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

- (void)setPushPublicKey:(__SecKey *)a3
{
  pushPublicKey = self->_pushPublicKey;
  if (pushPublicKey != a3)
  {
    if (pushPublicKey)
    {
      CFRelease(pushPublicKey);
      self->_pushPublicKey = 0;
    }

    if (a3)
    {
      self->_pushPublicKey = a3;

      CFRetain(a3);
    }
  }
}

- (void)setPushPrivateKey:(__SecKey *)a3
{
  pushKey = self->_pushKey;
  if (pushKey != a3)
  {
    if (pushKey)
    {
      CFRelease(pushKey);
      self->_pushKey = 0;
    }

    if (a3)
    {
      self->_pushKey = a3;

      CFRetain(a3);
    }
  }
}

- (BOOL)hasRequiredKeys:(id *)a3
{
  v5 = [(IDSProfileMessage *)self authToken];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(IDSProfileMessage *)self profileID];
    v8 = [v7 length];

    if (v8)
    {
      v13.receiver = self;
      v13.super_class = IDSProfileMessage;
      return [(IDSProfileMessage *)&v13 hasRequiredKeys:a3];
    }

    if (a3)
    {
      v10 = @"profile-id";
      goto LABEL_8;
    }
  }

  else if (a3)
  {
    v10 = @"auth token";
LABEL_8:
    v11 = [NSArray arrayWithObject:v10];
    v12 = v11;
    result = 0;
    *a3 = v11;
    return result;
  }

  return 0;
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v13.receiver = self;
  v13.super_class = IDSProfileMessage;
  v3 = [(IDSProfileMessage *)&v13 additionalMessageHeaders];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  v5 = [(IDSProfileMessage *)self profileID];
  if (v5)
  {
    CFDictionarySetValue(v4, @"vp", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BD08();
  }

  v6 = [(IDSProfileMessage *)self authToken];
  v7 = [v6 _FTDataFromHexString];

  if (v7)
  {
    CFDictionarySetValue(v4, @"va", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BD90();
  }

  v8 = [(IDSProfileMessage *)self authToken];
  v9 = [v8 _FTDataFromHexString];

  if (v9)
  {
    CFDictionarySetValue(v4, @"xp", v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BE18();
  }

  v10 = [(IDSProfileMessage *)self dsAuthID];
  if (v10)
  {
    CFDictionarySetValue(v4, @"x-ds-client-id", v10);
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
  v3 = [(IDSProfileMessage *)&v11 additionalMessageHeaders];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  v5 = [(IDSProfileMessage *)self profileID];
  if (v5)
  {
    CFDictionarySetValue(v4, @"x-vc-profile-id", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BF28();
  }

  v6 = [(IDSProfileMessage *)self authToken];
  if (v6)
  {
    CFDictionarySetValue(v4, @"x-vc-auth-token", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BFB0();
  }

  v7 = [(IDSProfileMessage *)self dsAuthID];
  if (v7)
  {
    CFDictionarySetValue(v4, @"x-ds-client-id", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091BEA0();
  }

  v8 = _IDSIDProtocolVersionNumber();
  v9 = [v8 stringValue];

  if (v9)
  {
    CFDictionarySetValue(v4, @"x-protocol-version", v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091C038();
  }

  return v4;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"alert"];
  [(IDSProfileMessage *)self setResponseAlertInfo:v4];
}

@end