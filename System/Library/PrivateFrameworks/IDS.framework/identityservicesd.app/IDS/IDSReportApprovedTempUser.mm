@interface IDSReportApprovedTempUser
- (IDSReportApprovedTempUser)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSReportApprovedTempUser

- (IDSReportApprovedTempUser)init
{
  v5.receiver = self;
  v5.super_class = IDSReportApprovedTempUser;
  v2 = [(IDSReportApprovedTempUser *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSReportApprovedTempUser *)v2 setTimeout:120.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IDSReportApprovedTempUser;
  v4 = [(IDSReportApprovedTempUser *)&v8 copyWithZone:zone];
  tempUserID = [(IDSReportApprovedTempUser *)self tempUserID];
  [v4 setTempUserID:tempUserID];

  [v4 setReportAction:{-[IDSReportApprovedTempUser reportAction](self, "reportAction")}];
  responseMessage = [(IDSReportApprovedTempUser *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"web-uri"];
  [v2 addObject:@"is-approved"];

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithInt:[(IDSReportApprovedTempUser *)self reportAction]== 1];
  if (v4)
  {
    CFDictionarySetValue(v3, @"is-approved", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100914A30();
  }

  tempUserID = [(IDSReportApprovedTempUser *)self tempUserID];
  if (tempUserID)
  {
    CFDictionarySetValue(v3, @"web-uri", tempUserID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100914ACC();
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
  v8.super_class = IDSReportApprovedTempUser;
  [(IDSReportApprovedTempUser *)&v8 handleResponseDictionary:dictionaryCopy, v7];
  v6 = [dictionaryCopy objectForKey:@"message"];
  [(IDSReportApprovedTempUser *)self setResponseMessage:v6];
}

@end