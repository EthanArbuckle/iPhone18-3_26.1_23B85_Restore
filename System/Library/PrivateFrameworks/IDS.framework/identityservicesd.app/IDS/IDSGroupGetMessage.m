@interface IDSGroupGetMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSGroupGetMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = IDSGroupGetMessage;
  v4 = [(IDSGroupGetMessage *)&v15 copyWithZone:a3];
  v5 = [(IDSGroupGetMessage *)self hardwareVersion];
  [v4 setHardwareVersion:v5];

  v6 = [(IDSGroupGetMessage *)self osVersion];
  [v4 setOsVersion:v6];

  v7 = [(IDSGroupGetMessage *)self softwareVersion];
  [v4 setSoftwareVersion:v7];

  v8 = [(IDSGroupGetMessage *)self deviceName];
  [v4 setDeviceName:v8];

  v9 = [(IDSGroupGetMessage *)self engramID];
  [v4 setEngramID:v9];

  v10 = [(IDSGroupGetMessage *)self version];
  [v4 setVersion:v10];

  v11 = [(IDSGroupGetMessage *)self responseEntries];
  [v4 setResponseEntries:v11];

  v12 = [(IDSGroupGetMessage *)self responseStatus];
  [v4 setResponseStatus:v12];

  v13 = [(IDSGroupGetMessage *)self responseMessage];
  [v4 setResponseMessage:v13];

  return v4;
}

- (id)additionalMessageHeaders
{
  v12.receiver = self;
  v12.super_class = IDSGroupGetMessage;
  v3 = [(IDSGroupGetMessage *)&v12 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSGroupGetMessage *)self engramID];

  if (v5)
  {
    v6 = [(IDSGroupGetMessage *)self engramID];
    v7 = [v6 __imHexString];
    v5 = [NSString stringWithFormat:@"HASH:%@", v7];
  }

  v8 = [(IDSGroupGetMessage *)self pushCertificate];
  v9 = [v8 _FTStringFromBaseData];

  if (v9)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009150CC();
  }

  v10 = v5;
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"route", v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931860();
  }

  return Mutable;
}

- (id)messageBody
{
  v12.receiver = self;
  v12.super_class = IDSGroupGetMessage;
  v3 = [(IDSGroupGetMessage *)&v12 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSGroupGetMessage *)self hardwareVersion];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  v6 = [(IDSGroupGetMessage *)self osVersion];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"os-version", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  v7 = [(IDSGroupGetMessage *)self softwareVersion];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"software-version", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920E24();
  }

  v8 = [(IDSGroupGetMessage *)self deviceName];
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"device-name", v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009318E8();
  }

  v9 = [(IDSGroupGetMessage *)self engramID];
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"engram-id", v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931970();
  }

  v10 = [(IDSGroupGetMessage *)self version];
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"version", v10);
  }

  return Mutable;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 _arrayForKey:@"entries"];
  [(IDSGroupGetMessage *)self setResponseEntries:v5];

  v6 = [v4 _numberForKey:@"status"];
  [(IDSGroupGetMessage *)self setResponseStatus:v6];

  v7 = [v4 _stringForKey:@"message"];

  [(IDSGroupGetMessage *)self setResponseMessage:v7];
}

@end