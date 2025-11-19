@interface IDSRegistrationMessage
- (BOOL)hasRequiredKeys:(id *)a3;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSRegistrationMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v21.receiver = self;
  v21.super_class = IDSRegistrationMessage;
  v4 = [(IDSRegistrationMessage *)&v21 copyWithZone:a3];
  v5 = [(IDSRegistrationMessage *)self deviceName];
  [v4 setDeviceName:v5];

  v6 = [(IDSRegistrationMessage *)self language];
  [v4 setLanguage:v6];

  v7 = [(IDSRegistrationMessage *)self services];
  [v4 setServices:v7];

  v8 = [(IDSRegistrationMessage *)self osVersion];
  [v4 setOsVersion:v8];

  v9 = [(IDSRegistrationMessage *)self softwareVersion];
  [v4 setSoftwareVersion:v9];

  v10 = [(IDSRegistrationMessage *)self hardwareVersion];
  [v4 setHardwareVersion:v10];

  v11 = [(IDSRegistrationMessage *)self privateDeviceData];
  [v4 setPrivateDeviceData:v11];

  v12 = [(IDSRegistrationMessage *)self hostDeviceName];
  [v4 setHostDeviceName:v12];

  v13 = [(IDSRegistrationMessage *)self hostLanguage];
  [v4 setHostLanguage:v13];

  v14 = [(IDSRegistrationMessage *)self hostOsVersion];
  [v4 setHostOsVersion:v14];

  v15 = [(IDSRegistrationMessage *)self hostSoftwareVersion];
  [v4 setHostSoftwareVersion:v15];

  v16 = [(IDSRegistrationMessage *)self hostHardwareVersion];
  [v4 setHostHardwareVersion:v16];

  v17 = [(IDSRegistrationMessage *)self validationData];
  [v4 setValidationData:v17];

  v18 = [(IDSRegistrationMessage *)self responseServices];
  [v4 setResponseServices:v18];

  v19 = [(IDSRegistrationMessage *)self responseHBI];
  [v4 setResponseHBI:v19];

  return v4;
}

- (BOOL)hasRequiredKeys:(id *)a3
{
  v4.receiver = self;
  v4.super_class = IDSRegistrationMessage;
  return [(IDSRegistrationMessage *)&v4 hasRequiredKeys:a3];
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"services"];
  [v2 addObject:@"hardware-version"];
  [v2 addObject:@"os-version"];
  [v2 addObject:@"software-version"];
  [v2 addObject:@"validation-data"];

  return v2;
}

- (id)additionalMessageHeaders
{
  v7.receiver = self;
  v7.super_class = IDSRegistrationMessage;
  v3 = [(IDSRegistrationMessage *)&v7 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSRegistrationMessage *)self requestReasonString];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"x-apple-req-reason", v5);
  }

  return Mutable;
}

- (id)messageBody
{
  v19.receiver = self;
  v19.super_class = IDSRegistrationMessage;
  v3 = [(IDSRegistrationMessage *)&v19 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSRegistrationMessage *)self hardwareVersion];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  v6 = [(IDSRegistrationMessage *)self osVersion];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"os-version", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  v7 = [(IDSRegistrationMessage *)self privateDeviceData];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"private-device-data", v7);
  }

  v8 = [(IDSRegistrationMessage *)self softwareVersion];
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"software-version", v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920E24();
  }

  v9 = [(IDSRegistrationMessage *)self validationData];
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"validation-data", v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092855C();
  }

  v10 = IMCurrentPreferredLanguage();
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"language", v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009285E4();
  }

  v11 = [(IDSRegistrationMessage *)self services];
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"services", v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092866C();
  }

  v12 = [(IDSRegistrationMessage *)self deviceName];
  if (v12)
  {
    CFDictionarySetValue(Mutable, @"device-name", v12);
  }

  v13 = [(IDSRegistrationMessage *)self hostHardwareVersion];
  if (v13)
  {
    CFDictionarySetValue(Mutable, @"host-hardware-version", v13);
  }

  v14 = [(IDSRegistrationMessage *)self hostOsVersion];
  if (v14)
  {
    CFDictionarySetValue(Mutable, @"host-os-version", v14);
  }

  v15 = [(IDSRegistrationMessage *)self hostDeviceName];
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"host-device-name", v15);
  }

  v16 = [(IDSRegistrationMessage *)self hostSoftwareVersion];
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"host-software-version", v16);
  }

  v17 = [(IDSRegistrationMessage *)self hostLanguage];
  if (v17)
  {
    CFDictionarySetValue(Mutable, @"host-language", v17);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"services"];
  [(IDSRegistrationMessage *)self setResponseServices:v5];

  v6 = [v4 objectForKey:@"next-hbi"];
  [(IDSRegistrationMessage *)self setResponseHBI:v6];

  v7 = [v4 objectForKey:@"alert"];

  [(IDSRegistrationMessage *)self setResponseAlertInfo:v7];
}

@end