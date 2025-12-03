@interface IDSRegistrationMessage
- (BOOL)hasRequiredKeys:(id *)keys;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSRegistrationMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v21.receiver = self;
  v21.super_class = IDSRegistrationMessage;
  v4 = [(IDSRegistrationMessage *)&v21 copyWithZone:zone];
  deviceName = [(IDSRegistrationMessage *)self deviceName];
  [v4 setDeviceName:deviceName];

  language = [(IDSRegistrationMessage *)self language];
  [v4 setLanguage:language];

  services = [(IDSRegistrationMessage *)self services];
  [v4 setServices:services];

  osVersion = [(IDSRegistrationMessage *)self osVersion];
  [v4 setOsVersion:osVersion];

  softwareVersion = [(IDSRegistrationMessage *)self softwareVersion];
  [v4 setSoftwareVersion:softwareVersion];

  hardwareVersion = [(IDSRegistrationMessage *)self hardwareVersion];
  [v4 setHardwareVersion:hardwareVersion];

  privateDeviceData = [(IDSRegistrationMessage *)self privateDeviceData];
  [v4 setPrivateDeviceData:privateDeviceData];

  hostDeviceName = [(IDSRegistrationMessage *)self hostDeviceName];
  [v4 setHostDeviceName:hostDeviceName];

  hostLanguage = [(IDSRegistrationMessage *)self hostLanguage];
  [v4 setHostLanguage:hostLanguage];

  hostOsVersion = [(IDSRegistrationMessage *)self hostOsVersion];
  [v4 setHostOsVersion:hostOsVersion];

  hostSoftwareVersion = [(IDSRegistrationMessage *)self hostSoftwareVersion];
  [v4 setHostSoftwareVersion:hostSoftwareVersion];

  hostHardwareVersion = [(IDSRegistrationMessage *)self hostHardwareVersion];
  [v4 setHostHardwareVersion:hostHardwareVersion];

  validationData = [(IDSRegistrationMessage *)self validationData];
  [v4 setValidationData:validationData];

  responseServices = [(IDSRegistrationMessage *)self responseServices];
  [v4 setResponseServices:responseServices];

  responseHBI = [(IDSRegistrationMessage *)self responseHBI];
  [v4 setResponseHBI:responseHBI];

  return v4;
}

- (BOOL)hasRequiredKeys:(id *)keys
{
  v4.receiver = self;
  v4.super_class = IDSRegistrationMessage;
  return [(IDSRegistrationMessage *)&v4 hasRequiredKeys:keys];
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
  additionalMessageHeaders = [(IDSRegistrationMessage *)&v7 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  requestReasonString = [(IDSRegistrationMessage *)self requestReasonString];
  if (requestReasonString)
  {
    CFDictionarySetValue(Mutable, @"x-apple-req-reason", requestReasonString);
  }

  return Mutable;
}

- (id)messageBody
{
  v19.receiver = self;
  v19.super_class = IDSRegistrationMessage;
  messageBody = [(IDSRegistrationMessage *)&v19 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  hardwareVersion = [(IDSRegistrationMessage *)self hardwareVersion];
  if (hardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", hardwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  osVersion = [(IDSRegistrationMessage *)self osVersion];
  if (osVersion)
  {
    CFDictionarySetValue(Mutable, @"os-version", osVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  privateDeviceData = [(IDSRegistrationMessage *)self privateDeviceData];
  if (privateDeviceData)
  {
    CFDictionarySetValue(Mutable, @"private-device-data", privateDeviceData);
  }

  softwareVersion = [(IDSRegistrationMessage *)self softwareVersion];
  if (softwareVersion)
  {
    CFDictionarySetValue(Mutable, @"software-version", softwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920E24();
  }

  validationData = [(IDSRegistrationMessage *)self validationData];
  if (validationData)
  {
    CFDictionarySetValue(Mutable, @"validation-data", validationData);
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

  services = [(IDSRegistrationMessage *)self services];
  if (services)
  {
    CFDictionarySetValue(Mutable, @"services", services);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092866C();
  }

  deviceName = [(IDSRegistrationMessage *)self deviceName];
  if (deviceName)
  {
    CFDictionarySetValue(Mutable, @"device-name", deviceName);
  }

  hostHardwareVersion = [(IDSRegistrationMessage *)self hostHardwareVersion];
  if (hostHardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"host-hardware-version", hostHardwareVersion);
  }

  hostOsVersion = [(IDSRegistrationMessage *)self hostOsVersion];
  if (hostOsVersion)
  {
    CFDictionarySetValue(Mutable, @"host-os-version", hostOsVersion);
  }

  hostDeviceName = [(IDSRegistrationMessage *)self hostDeviceName];
  if (hostDeviceName)
  {
    CFDictionarySetValue(Mutable, @"host-device-name", hostDeviceName);
  }

  hostSoftwareVersion = [(IDSRegistrationMessage *)self hostSoftwareVersion];
  if (hostSoftwareVersion)
  {
    CFDictionarySetValue(Mutable, @"host-software-version", hostSoftwareVersion);
  }

  hostLanguage = [(IDSRegistrationMessage *)self hostLanguage];
  if (hostLanguage)
  {
    CFDictionarySetValue(Mutable, @"host-language", hostLanguage);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"services"];
  [(IDSRegistrationMessage *)self setResponseServices:v5];

  v6 = [dictionaryCopy objectForKey:@"next-hbi"];
  [(IDSRegistrationMessage *)self setResponseHBI:v6];

  v7 = [dictionaryCopy objectForKey:@"alert"];

  [(IDSRegistrationMessage *)self setResponseAlertInfo:v7];
}

@end