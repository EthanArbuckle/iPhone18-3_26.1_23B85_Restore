@interface IDSPreflightMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSPreflightMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v23.receiver = self;
  v23.super_class = IDSPreflightMessage;
  v4 = [(IDSPreflightMessage *)&v23 copyWithZone:zone];
  protocolVersion = [(IDSPreflightMessage *)self protocolVersion];
  [v4 setProtocolVersion:protocolVersion];

  hardwareVersion = [(IDSPreflightMessage *)self hardwareVersion];
  [v4 setHardwareVersion:hardwareVersion];

  osVersion = [(IDSPreflightMessage *)self osVersion];
  [v4 setOsVersion:osVersion];

  softwareVersion = [(IDSPreflightMessage *)self softwareVersion];
  [v4 setSoftwareVersion:softwareVersion];

  deviceName = [(IDSPreflightMessage *)self deviceName];
  [v4 setDeviceName:deviceName];

  hostHardwareVersion = [(IDSPreflightMessage *)self hostHardwareVersion];
  [v4 setHostHardwareVersion:hostHardwareVersion];

  hostOsVersion = [(IDSPreflightMessage *)self hostOsVersion];
  [v4 setHostOsVersion:hostOsVersion];

  hostSoftwareVersion = [(IDSPreflightMessage *)self hostSoftwareVersion];
  [v4 setHostSoftwareVersion:hostSoftwareVersion];

  hostDeviceName = [(IDSPreflightMessage *)self hostDeviceName];
  [v4 setHostDeviceName:hostDeviceName];

  iMSI = [(IDSPreflightMessage *)self IMSI];
  [v4 setIMSI:iMSI];

  pLMN = [(IDSPreflightMessage *)self PLMN];
  [v4 setPLMN:pLMN];

  testData = [(IDSPreflightMessage *)self testData];
  [v4 setTestData:testData];

  pnrReason = [(IDSPreflightMessage *)self pnrReason];
  [v4 setPnrReason:pnrReason];

  simHardwareType = [(IDSPreflightMessage *)self simHardwareType];
  [v4 setSimHardwareType:simHardwareType];

  responseSessionID = [(IDSPreflightMessage *)self responseSessionID];
  [v4 setResponseSessionID:responseSessionID];

  responseStatus = [(IDSPreflightMessage *)self responseStatus];
  [v4 setResponseStatus:responseStatus];

  responseMechanisms = [(IDSPreflightMessage *)self responseMechanisms];
  [v4 setResponseMechanisms:responseMechanisms];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSPreflightMessage;
  additionalMessageHeaders = [(IDSPreflightMessage *)&v8 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  pushCertificate = [(IDSPreflightMessage *)self pushCertificate];
  _FTStringFromBaseData = [pushCertificate _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", _FTStringFromBaseData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009150CC();
  }

  return Mutable;
}

- (id)messageBody
{
  v20.receiver = self;
  v20.super_class = IDSPreflightMessage;
  messageBody = [(IDSPreflightMessage *)&v20 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  phoneNumberValidationRetryCount = [(IDSPreflightMessage *)self phoneNumberValidationRetryCount];
  if (phoneNumberValidationRetryCount)
  {
    CFDictionarySetValue(Mutable, @"pnv-retry-count", phoneNumberValidationRetryCount);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915154();
  }

  hardwareVersion = [(IDSPreflightMessage *)self hardwareVersion];
  if (hardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", hardwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  osVersion = [(IDSPreflightMessage *)self osVersion];
  if (osVersion)
  {
    CFDictionarySetValue(Mutable, @"os-version", osVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  softwareVersion = [(IDSPreflightMessage *)self softwareVersion];
  if (softwareVersion)
  {
    CFDictionarySetValue(Mutable, @"software-version", softwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009152EC();
  }

  deviceName = [(IDSPreflightMessage *)self deviceName];
  if (deviceName)
  {
    CFDictionarySetValue(Mutable, @"device-name", deviceName);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915374();
  }

  hostHardwareVersion = [(IDSPreflightMessage *)self hostHardwareVersion];
  if (hostHardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"host-hardware-version", hostHardwareVersion);
  }

  hostOsVersion = [(IDSPreflightMessage *)self hostOsVersion];
  if (hostOsVersion)
  {
    CFDictionarySetValue(Mutable, @"host-os-version", hostOsVersion);
  }

  hostSoftwareVersion = [(IDSPreflightMessage *)self hostSoftwareVersion];
  if (hostSoftwareVersion)
  {
    CFDictionarySetValue(Mutable, @"host-software-version", hostSoftwareVersion);
  }

  hostDeviceName = [(IDSPreflightMessage *)self hostDeviceName];
  if (hostDeviceName)
  {
    CFDictionarySetValue(Mutable, @"host-device-name", hostDeviceName);
  }

  iMSI = [(IDSPreflightMessage *)self IMSI];
  if (iMSI)
  {
    CFDictionarySetValue(Mutable, @"IMSI", iMSI);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009153FC();
  }

  pLMN = [(IDSPreflightMessage *)self PLMN];
  if (pLMN)
  {
    CFDictionarySetValue(Mutable, @"PLMN", pLMN);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915484();
  }

  pnrReason = [(IDSPreflightMessage *)self pnrReason];
  if (pnrReason)
  {
    CFDictionarySetValue(Mutable, @"pnr-reason", pnrReason);
  }

  simHardwareType = [(IDSPreflightMessage *)self simHardwareType];
  if (simHardwareType)
  {
    CFDictionarySetValue(Mutable, @"sim-hardware-type", simHardwareType);
  }

  testData = [(IDSPreflightMessage *)self testData];
  if (testData)
  {
    CFDictionarySetValue(Mutable, @"test-data", testData);
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
  v5 = [dictionaryCopy _numberForKey:@"status"];
  [(IDSPreflightMessage *)self setResponseStatus:v5];

  v6 = [dictionaryCopy _stringForKey:@"session-id"];
  selfCopy = self;
  [(IDSPreflightMessage *)self setResponseSessionID:v6];

  v7 = objc_alloc_init(NSMutableArray);
  v18 = dictionaryCopy;
  [dictionaryCopy objectForKey:@"mechanisms"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectForKey:@"mechanism"];
        v14 = [v12 objectForKey:@"mechanism-data"];
        if ([v13 isEqualToString:@"SMS"])
        {
          v15 = 1;
        }

        else if ([v13 isEqualToString:@"SMSLess"])
        {
          v15 = 2;
        }

        else if ([v13 isEqualToString:@"RCS_PNA"])
        {
          v15 = 3;
        }

        else
        {
          v15 = 0;
        }

        v16 = [[IDSCTPNRValidationMechanism alloc] initWithType:v15 context:v14];
        [v7 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [(IDSPreflightMessage *)selfCopy setResponseMechanisms:v7];
}

@end