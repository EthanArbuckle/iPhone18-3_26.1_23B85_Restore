@interface IDSGroupGetMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSGroupGetMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = IDSGroupGetMessage;
  v4 = [(IDSGroupGetMessage *)&v15 copyWithZone:zone];
  hardwareVersion = [(IDSGroupGetMessage *)self hardwareVersion];
  [v4 setHardwareVersion:hardwareVersion];

  osVersion = [(IDSGroupGetMessage *)self osVersion];
  [v4 setOsVersion:osVersion];

  softwareVersion = [(IDSGroupGetMessage *)self softwareVersion];
  [v4 setSoftwareVersion:softwareVersion];

  deviceName = [(IDSGroupGetMessage *)self deviceName];
  [v4 setDeviceName:deviceName];

  engramID = [(IDSGroupGetMessage *)self engramID];
  [v4 setEngramID:engramID];

  version = [(IDSGroupGetMessage *)self version];
  [v4 setVersion:version];

  responseEntries = [(IDSGroupGetMessage *)self responseEntries];
  [v4 setResponseEntries:responseEntries];

  responseStatus = [(IDSGroupGetMessage *)self responseStatus];
  [v4 setResponseStatus:responseStatus];

  responseMessage = [(IDSGroupGetMessage *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

  return v4;
}

- (id)additionalMessageHeaders
{
  v12.receiver = self;
  v12.super_class = IDSGroupGetMessage;
  additionalMessageHeaders = [(IDSGroupGetMessage *)&v12 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  engramID = [(IDSGroupGetMessage *)self engramID];

  if (engramID)
  {
    engramID2 = [(IDSGroupGetMessage *)self engramID];
    __imHexString = [engramID2 __imHexString];
    engramID = [NSString stringWithFormat:@"HASH:%@", __imHexString];
  }

  pushCertificate = [(IDSGroupGetMessage *)self pushCertificate];
  _FTStringFromBaseData = [pushCertificate _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", _FTStringFromBaseData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009150CC();
  }

  v10 = engramID;
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
  messageBody = [(IDSGroupGetMessage *)&v12 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  hardwareVersion = [(IDSGroupGetMessage *)self hardwareVersion];
  if (hardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", hardwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  osVersion = [(IDSGroupGetMessage *)self osVersion];
  if (osVersion)
  {
    CFDictionarySetValue(Mutable, @"os-version", osVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  softwareVersion = [(IDSGroupGetMessage *)self softwareVersion];
  if (softwareVersion)
  {
    CFDictionarySetValue(Mutable, @"software-version", softwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920E24();
  }

  deviceName = [(IDSGroupGetMessage *)self deviceName];
  if (deviceName)
  {
    CFDictionarySetValue(Mutable, @"device-name", deviceName);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009318E8();
  }

  engramID = [(IDSGroupGetMessage *)self engramID];
  if (engramID)
  {
    CFDictionarySetValue(Mutable, @"engram-id", engramID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931970();
  }

  version = [(IDSGroupGetMessage *)self version];
  if (version)
  {
    CFDictionarySetValue(Mutable, @"version", version);
  }

  return Mutable;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy _arrayForKey:@"entries"];
  [(IDSGroupGetMessage *)self setResponseEntries:v5];

  v6 = [dictionaryCopy _numberForKey:@"status"];
  [(IDSGroupGetMessage *)self setResponseStatus:v6];

  v7 = [dictionaryCopy _stringForKey:@"message"];

  [(IDSGroupGetMessage *)self setResponseMessage:v7];
}

@end