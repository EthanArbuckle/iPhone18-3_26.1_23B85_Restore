@interface IDSReportSpamMessage
- (IDSReportSpamMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSReportSpamMessage

- (IDSReportSpamMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSReportSpamMessage;
  v2 = [(IDSReportSpamMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSReportSpamMessage *)v2 setTimeout:120.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IDSReportSpamMessage;
  v4 = [(IDSReportSpamMessage *)&v9 copyWithZone:zone];
  spamMessages = [(IDSReportSpamMessage *)self spamMessages];
  [v4 setSpamMessages:spamMessages];

  responseMessage = [(IDSReportSpamMessage *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

  responseSpamMessages = [(IDSReportSpamMessage *)self responseSpamMessages];
  [v4 setResponseSpamMessages:responseSpamMessages];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"spam-messages"];

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  spamMessages = [(IDSReportSpamMessage *)self spamMessages];
  if (spamMessages)
  {
    CFDictionarySetValue(v3, @"spam-messages", spamMessages);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BCB0();
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
    v11 = dictionaryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Report Spam response: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = dictionaryCopy;
    _IDSLogV();
  }

  v9.receiver = self;
  v9.super_class = IDSReportSpamMessage;
  [(IDSReportSpamMessage *)&v9 handleResponseDictionary:dictionaryCopy, v8];
  v6 = [dictionaryCopy objectForKey:@"message"];
  [(IDSReportSpamMessage *)self setResponseMessage:v6];

  v7 = [dictionaryCopy objectForKey:@"spam-messages"];
  [(IDSReportSpamMessage *)self setResponseSpamMessages:v7];
}

@end