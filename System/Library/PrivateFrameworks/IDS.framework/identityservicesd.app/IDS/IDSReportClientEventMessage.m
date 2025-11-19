@interface IDSReportClientEventMessage
- (IDSReportClientEventMessage)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseBody:(id)a3;
@end

@implementation IDSReportClientEventMessage

- (IDSReportClientEventMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSReportClientEventMessage;
  v2 = [(IDSReportClientEventMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSReportClientEventMessage *)v2 setTimeout:120.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = IDSReportClientEventMessage;
  v4 = [(IDSReportClientEventMessage *)&v9 copyWithZone:a3];
  v5 = [(IDSReportClientEventMessage *)self report];
  [v4 setReport:v5];

  v6 = [(IDSReportClientEventMessage *)self reportType];
  [v4 setReportType:v6];

  v7 = [(IDSReportClientEventMessage *)self responseMessage];
  [v4 setResponseMessage:v7];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"report-type"];
  [v2 addObject:@"report"];

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSReportClientEventMessage *)self reportType];
  if (v4)
  {
    CFDictionarySetValue(v3, @"report-type", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B2E4();
  }

  v5 = [(IDSReportClientEventMessage *)self report];
  if (v5)
  {
    CFDictionarySetValue(v3, @"report", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091B36C();
  }

  v6 = [(IDSReportClientEventMessage *)self hardwareVersion];
  if (v6)
  {
    CFDictionarySetValue(v3, @"hardware-version", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  v7 = [(IDSReportClientEventMessage *)self osVersion];
  if (v7)
  {
    CFDictionarySetValue(v3, @"os-version", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  return v3;
}

- (void)handleResponseBody:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling client event response body", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v11 = 0;
  v6 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v11];
  v7 = v11;
  if (v7)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error parsing JSON response: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  else
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Converted client event response: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v10 = v6;
      _IDSLogV();
    }

    [(IDSReportClientEventMessage *)self setResponseMessage:v6, v10];
  }
}

@end