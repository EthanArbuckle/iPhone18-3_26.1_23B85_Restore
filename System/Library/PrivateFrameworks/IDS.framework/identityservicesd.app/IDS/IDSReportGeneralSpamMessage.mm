@interface IDSReportGeneralSpamMessage
- (IDSReportGeneralSpamMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSReportGeneralSpamMessage

- (IDSReportGeneralSpamMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSReportGeneralSpamMessage;
  v2 = [(IDSReportGeneralSpamMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSReportGeneralSpamMessage *)v2 setTimeout:120.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IDSReportGeneralSpamMessage;
  v4 = [(IDSReportGeneralSpamMessage *)&v9 copyWithZone:zone];
  spamMessage = [(IDSReportGeneralSpamMessage *)self spamMessage];
  [v4 setSpamMessage:spamMessage];

  responseMessage = [(IDSReportGeneralSpamMessage *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

  responseSpamMessage = [(IDSReportGeneralSpamMessage *)self responseSpamMessage];
  [v4 setResponseSpamMessage:responseSpamMessage];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"spam-message"];

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  spamMessage = [(IDSReportGeneralSpamMessage *)self spamMessage];
  if (spamMessage)
  {
    CFDictionarySetValue(v3, @"spam-message", spamMessage);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917758();
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "General Report Spam response: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = dictionaryCopy;
    _IDSLogV();
  }

  v9.receiver = self;
  v9.super_class = IDSReportGeneralSpamMessage;
  [(IDSReportGeneralSpamMessage *)&v9 handleResponseDictionary:dictionaryCopy, v8];
  v6 = [dictionaryCopy objectForKey:@"message"];
  [(IDSReportGeneralSpamMessage *)self setResponseMessage:v6];

  v7 = [dictionaryCopy objectForKey:@"spam-messages"];
  [(IDSReportGeneralSpamMessage *)self setResponseSpamMessage:v7];
}

@end