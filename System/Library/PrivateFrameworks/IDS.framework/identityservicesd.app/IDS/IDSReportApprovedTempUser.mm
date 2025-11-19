@interface IDSReportApprovedTempUser
- (IDSReportApprovedTempUser)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = IDSReportApprovedTempUser;
  v4 = [(IDSReportApprovedTempUser *)&v8 copyWithZone:a3];
  v5 = [(IDSReportApprovedTempUser *)self tempUserID];
  [v4 setTempUserID:v5];

  [v4 setReportAction:{-[IDSReportApprovedTempUser reportAction](self, "reportAction")}];
  v6 = [(IDSReportApprovedTempUser *)self responseMessage];
  [v4 setResponseMessage:v6];

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

  v5 = [(IDSReportApprovedTempUser *)self tempUserID];
  if (v5)
  {
    CFDictionarySetValue(v3, @"web-uri", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100914ACC();
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
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Report Unknown Sender response: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v7 = v4;
    _IDSLogV();
  }

  v8.receiver = self;
  v8.super_class = IDSReportApprovedTempUser;
  [(IDSReportApprovedTempUser *)&v8 handleResponseDictionary:v4, v7];
  v6 = [v4 objectForKey:@"message"];
  [(IDSReportApprovedTempUser *)self setResponseMessage:v6];
}

@end