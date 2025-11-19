@interface IDSActivityScribeMessage
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (void)handleResponseDictionary:(id)a3;
- (void)handleResponseHeaders:(id)a3;
@end

@implementation IDSActivityScribeMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = IDSActivityScribeMessage;
  v4 = [(IDSActivityScribeMessage *)&v11 copyWithZone:a3];
  v5 = [(IDSActivityScribeMessage *)self tokens];
  [v4 setTokens:v5];

  v6 = [(IDSActivityScribeMessage *)self activityTopic];
  [v4 setActivityTopic:v6];

  v7 = [(IDSActivityScribeMessage *)self subActivity];
  [v4 setSubActivity:v7];

  v8 = [(IDSActivityScribeMessage *)self metadataBlob];
  [v4 setMetadataBlob:v8];

  [v4 setTtl:{-[IDSActivityScribeMessage ttl](self, "ttl")}];
  [v4 setPushPriority:{-[IDSActivityScribeMessage pushPriority](self, "pushPriority")}];
  [v4 setActivityPolicy:{-[IDSActivityScribeMessage activityPolicy](self, "activityPolicy")}];
  [v4 setVersion:{-[IDSActivityScribeMessage version](self, "version")}];
  v9 = [(IDSActivityScribeMessage *)self messageID];
  [v4 setMessageID:v9];

  return v4;
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v5.receiver = self;
  v5.super_class = IDSActivityScribeMessage;
  v2 = [(IDSActivityScribeMessage *)&v5 additionalMessageHeaders];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)messageBody
{
  v20.receiver = self;
  v20.super_class = IDSActivityScribeMessage;
  v3 = [(IDSActivityScribeMessage *)&v20 messageBody];
  v4 = [v3 mutableCopy];

  v5 = [(IDSActivityScribeMessage *)self messageID];
  if (v5)
  {
    v6 = v5;
    v7 = [(IDSActivityScribeMessage *)self messageID];
    v8 = [v7 UTF8String];

    if (v8)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(v8, uu);
      v19 = 0;
      jw_uuid_to_data();
      v9 = 0;
      if (v9)
      {
        CFDictionarySetValue(v4, @"U", v9);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10091CC7C();
      }
    }
  }

  v10 = [NSNumber numberWithInt:[(IDSActivityScribeMessage *)self version]];
  if (v10)
  {
    CFDictionarySetValue(v4, @"v", v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091CD04();
  }

  v11 = [NSNumber numberWithUnsignedChar:[(IDSActivityScribeMessage *)self pushPriority]];
  if (v11)
  {
    CFDictionarySetValue(v4, @"pMpr", v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091CD8C();
  }

  v12 = [NSNumber numberWithUnsignedChar:[(IDSActivityScribeMessage *)self activityPolicy]];
  if (v12)
  {
    CFDictionarySetValue(v4, @"pMpo", v12);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091CE14();
  }

  v13 = [(IDSActivityScribeMessage *)self activityTopic];
  if (v13)
  {
    CFDictionarySetValue(v4, @"pAt", v13);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091CE9C();
  }

  v14 = [(IDSActivityScribeMessage *)self subActivity];
  if (v14)
  {
    CFDictionarySetValue(v4, @"pSa", v14);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091CF24();
  }

  v15 = [NSNumber numberWithInteger:[(IDSActivityScribeMessage *)self ttl]];
  if (v15)
  {
    CFDictionarySetValue(v4, @"pTtl", v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091CFAC();
  }

  v16 = [(IDSActivityScribeMessage *)self tokens];
  if (v16)
  {
    CFDictionarySetValue(v4, @"pSt", v16);
  }

  v17 = [(IDSActivityScribeMessage *)self metadataBlob];
  if (v17)
  {
    CFDictionarySetValue(v4, @"pAM", v17);
  }

  return v4;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 _stringForKey:@"pAT"];
  [(IDSActivityScribeMessage *)self setResponsePresenceTopic:v5];

  v6 = [v4 _numberForKey:@"s"];

  -[IDSActivityScribeMessage setResponseStatus:](self, "setResponseStatus:", [v6 intValue]);
}

- (void)handleResponseHeaders:(id)a3
{
  v3 = a3;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Web Tunnel Message Completed With Respone Headers %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

@end