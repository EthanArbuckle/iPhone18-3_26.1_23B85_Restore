@interface IDSReportSpamMessage
- (IDSReportSpamMessage)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = IDSReportSpamMessage;
  v4 = [(IDSReportSpamMessage *)&v9 copyWithZone:a3];
  v5 = [(IDSReportSpamMessage *)self spamMessages];
  [v4 setSpamMessages:v5];

  v6 = [(IDSReportSpamMessage *)self responseMessage];
  [v4 setResponseMessage:v6];

  v7 = [(IDSReportSpamMessage *)self responseSpamMessages];
  [v4 setResponseSpamMessages:v7];

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
  v4 = [(IDSReportSpamMessage *)self spamMessages];
  if (v4)
  {
    CFDictionarySetValue(v3, @"spam-messages", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BCB0();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Report Spam response: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v8 = v4;
    _IDSLogV();
  }

  v9.receiver = self;
  v9.super_class = IDSReportSpamMessage;
  [(IDSReportSpamMessage *)&v9 handleResponseDictionary:v4, v8];
  v6 = [v4 objectForKey:@"message"];
  [(IDSReportSpamMessage *)self setResponseMessage:v6];

  v7 = [v4 objectForKey:@"spam-messages"];
  [(IDSReportSpamMessage *)self setResponseSpamMessages:v7];
}

@end