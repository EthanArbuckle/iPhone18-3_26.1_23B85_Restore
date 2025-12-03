@interface IDSActivityScribeMessage
- (id)additionalMessageHeadersForOutgoingPush;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (void)handleResponseDictionary:(id)dictionary;
- (void)handleResponseHeaders:(id)headers;
@end

@implementation IDSActivityScribeMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = IDSActivityScribeMessage;
  v4 = [(IDSActivityScribeMessage *)&v11 copyWithZone:zone];
  tokens = [(IDSActivityScribeMessage *)self tokens];
  [v4 setTokens:tokens];

  activityTopic = [(IDSActivityScribeMessage *)self activityTopic];
  [v4 setActivityTopic:activityTopic];

  subActivity = [(IDSActivityScribeMessage *)self subActivity];
  [v4 setSubActivity:subActivity];

  metadataBlob = [(IDSActivityScribeMessage *)self metadataBlob];
  [v4 setMetadataBlob:metadataBlob];

  [v4 setTtl:{-[IDSActivityScribeMessage ttl](self, "ttl")}];
  [v4 setPushPriority:{-[IDSActivityScribeMessage pushPriority](self, "pushPriority")}];
  [v4 setActivityPolicy:{-[IDSActivityScribeMessage activityPolicy](self, "activityPolicy")}];
  [v4 setVersion:{-[IDSActivityScribeMessage version](self, "version")}];
  messageID = [(IDSActivityScribeMessage *)self messageID];
  [v4 setMessageID:messageID];

  return v4;
}

- (id)additionalMessageHeadersForOutgoingPush
{
  v5.receiver = self;
  v5.super_class = IDSActivityScribeMessage;
  additionalMessageHeaders = [(IDSActivityScribeMessage *)&v5 additionalMessageHeaders];
  v3 = [additionalMessageHeaders mutableCopy];

  return v3;
}

- (id)messageBody
{
  v20.receiver = self;
  v20.super_class = IDSActivityScribeMessage;
  messageBody = [(IDSActivityScribeMessage *)&v20 messageBody];
  v4 = [messageBody mutableCopy];

  messageID = [(IDSActivityScribeMessage *)self messageID];
  if (messageID)
  {
    v6 = messageID;
    messageID2 = [(IDSActivityScribeMessage *)self messageID];
    uTF8String = [messageID2 UTF8String];

    if (uTF8String)
    {
      memset(uu, 170, sizeof(uu));
      uuid_parse(uTF8String, uu);
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

  activityTopic = [(IDSActivityScribeMessage *)self activityTopic];
  if (activityTopic)
  {
    CFDictionarySetValue(v4, @"pAt", activityTopic);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091CE9C();
  }

  subActivity = [(IDSActivityScribeMessage *)self subActivity];
  if (subActivity)
  {
    CFDictionarySetValue(v4, @"pSa", subActivity);
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

  tokens = [(IDSActivityScribeMessage *)self tokens];
  if (tokens)
  {
    CFDictionarySetValue(v4, @"pSt", tokens);
  }

  metadataBlob = [(IDSActivityScribeMessage *)self metadataBlob];
  if (metadataBlob)
  {
    CFDictionarySetValue(v4, @"pAM", metadataBlob);
  }

  return v4;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy _stringForKey:@"pAT"];
  [(IDSActivityScribeMessage *)self setResponsePresenceTopic:v5];

  v6 = [dictionaryCopy _numberForKey:@"s"];

  -[IDSActivityScribeMessage setResponseStatus:](self, "setResponseStatus:", [v6 intValue]);
}

- (void)handleResponseHeaders:(id)headers
{
  headersCopy = headers;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = headersCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Web Tunnel Message Completed With Respone Headers %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }
}

@end