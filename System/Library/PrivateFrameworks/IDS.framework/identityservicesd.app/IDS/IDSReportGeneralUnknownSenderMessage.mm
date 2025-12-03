@interface IDSReportGeneralUnknownSenderMessage
- (IDSReportGeneralUnknownSenderMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSReportGeneralUnknownSenderMessage

- (IDSReportGeneralUnknownSenderMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSReportGeneralUnknownSenderMessage;
  v2 = [(IDSReportGeneralUnknownSenderMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSReportGeneralUnknownSenderMessage *)v2 setTimeout:120.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IDSReportGeneralUnknownSenderMessage;
  v4 = [(IDSReportGeneralUnknownSenderMessage *)&v8 copyWithZone:zone];
  unknownSenderInfo = [(IDSReportGeneralUnknownSenderMessage *)self unknownSenderInfo];
  [v4 setUnknownSenderInfo:unknownSenderInfo];

  responseMessage = [(IDSReportGeneralUnknownSenderMessage *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"unknown-sender-info"];

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  unknownSenderInfo = [(IDSReportGeneralUnknownSenderMessage *)self unknownSenderInfo];
  if (unknownSenderInfo)
  {
    CFDictionarySetValue(v3, @"unknown-sender-info", unknownSenderInfo);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BAD0();
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
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "General unknown sender response: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = dictionaryCopy;
    _IDSLogV();
  }

  v8.receiver = self;
  v8.super_class = IDSReportGeneralUnknownSenderMessage;
  [(IDSReportGeneralUnknownSenderMessage *)&v8 handleResponseDictionary:dictionaryCopy, v7];
  v6 = [dictionaryCopy objectForKey:@"message"];
  [(IDSReportGeneralUnknownSenderMessage *)self setResponseMessage:v6];
}

@end