@interface IDSReportUnknownSenderMessage
- (IDSReportUnknownSenderMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSReportUnknownSenderMessage

- (IDSReportUnknownSenderMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSReportUnknownSenderMessage;
  v2 = [(IDSReportUnknownSenderMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSReportUnknownSenderMessage *)v2 setTimeout:120.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IDSReportUnknownSenderMessage;
  v4 = [(IDSReportUnknownSenderMessage *)&v9 copyWithZone:zone];
  unknownSenderURI = [(IDSReportUnknownSenderMessage *)self unknownSenderURI];
  [v4 setUnknownSenderURI:unknownSenderURI];

  messageID = [(IDSReportUnknownSenderMessage *)self messageID];
  [v4 setMessageID:messageID];

  [v4 setIsBlackholed:{-[IDSReportUnknownSenderMessage isBlackholed](self, "isBlackholed")}];
  [v4 setIsJunked:{-[IDSReportUnknownSenderMessage isJunked](self, "isJunked")}];
  [v4 setMessageServerTimestamp:{-[IDSReportUnknownSenderMessage messageServerTimestamp](self, "messageServerTimestamp")}];
  responseMessage = [(IDSReportUnknownSenderMessage *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"message-id"];
  [v2 addObject:@"sender-uri"];
  [v2 addObject:@"time-of-message"];

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  messageID = [(IDSReportUnknownSenderMessage *)self messageID];
  if (messageID)
  {
    CFDictionarySetValue(v3, @"message-id", messageID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931A74();
  }

  v5 = [NSNumber numberWithBool:[(IDSReportUnknownSenderMessage *)self isBlackholed]];
  if (v5)
  {
    CFDictionarySetValue(v3, @"message-is-blackholed", v5);
  }

  v6 = [NSNumber numberWithBool:[(IDSReportUnknownSenderMessage *)self isJunked]];
  if (v6)
  {
    CFDictionarySetValue(v3, @"message-is-junked", v6);
  }

  unknownSenderURI = [(IDSReportUnknownSenderMessage *)self unknownSenderURI];
  if (unknownSenderURI)
  {
    CFDictionarySetValue(v3, @"sender-uri", unknownSenderURI);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931AFC();
  }

  v8 = [NSNumber numberWithInt:[(IDSReportUnknownSenderMessage *)self messageServerTimestamp]];
  if (v8)
  {
    CFDictionarySetValue(v3, @"time-of-message", v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931B84();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = dictionaryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Report Unknown Sender response: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = dictionaryCopy;
    _IDSLogV();
  }

  v8.receiver = self;
  v8.super_class = IDSReportUnknownSenderMessage;
  [(IDSReportUnknownSenderMessage *)&v8 handleResponseDictionary:dictionaryCopy, v7];
  v6 = [dictionaryCopy objectForKey:@"message"];
  [(IDSReportUnknownSenderMessage *)self setResponseMessage:v6];
}

@end