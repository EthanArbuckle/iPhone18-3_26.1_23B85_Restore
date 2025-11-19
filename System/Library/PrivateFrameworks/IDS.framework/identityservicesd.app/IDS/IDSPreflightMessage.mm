@interface IDSPreflightMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSPreflightMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v23.receiver = self;
  v23.super_class = IDSPreflightMessage;
  v4 = [(IDSPreflightMessage *)&v23 copyWithZone:a3];
  v5 = [(IDSPreflightMessage *)self protocolVersion];
  [v4 setProtocolVersion:v5];

  v6 = [(IDSPreflightMessage *)self hardwareVersion];
  [v4 setHardwareVersion:v6];

  v7 = [(IDSPreflightMessage *)self osVersion];
  [v4 setOsVersion:v7];

  v8 = [(IDSPreflightMessage *)self softwareVersion];
  [v4 setSoftwareVersion:v8];

  v9 = [(IDSPreflightMessage *)self deviceName];
  [v4 setDeviceName:v9];

  v10 = [(IDSPreflightMessage *)self hostHardwareVersion];
  [v4 setHostHardwareVersion:v10];

  v11 = [(IDSPreflightMessage *)self hostOsVersion];
  [v4 setHostOsVersion:v11];

  v12 = [(IDSPreflightMessage *)self hostSoftwareVersion];
  [v4 setHostSoftwareVersion:v12];

  v13 = [(IDSPreflightMessage *)self hostDeviceName];
  [v4 setHostDeviceName:v13];

  v14 = [(IDSPreflightMessage *)self IMSI];
  [v4 setIMSI:v14];

  v15 = [(IDSPreflightMessage *)self PLMN];
  [v4 setPLMN:v15];

  v16 = [(IDSPreflightMessage *)self testData];
  [v4 setTestData:v16];

  v17 = [(IDSPreflightMessage *)self pnrReason];
  [v4 setPnrReason:v17];

  v18 = [(IDSPreflightMessage *)self simHardwareType];
  [v4 setSimHardwareType:v18];

  v19 = [(IDSPreflightMessage *)self responseSessionID];
  [v4 setResponseSessionID:v19];

  v20 = [(IDSPreflightMessage *)self responseStatus];
  [v4 setResponseStatus:v20];

  v21 = [(IDSPreflightMessage *)self responseMechanisms];
  [v4 setResponseMechanisms:v21];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSPreflightMessage;
  v3 = [(IDSPreflightMessage *)&v8 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSPreflightMessage *)self pushCertificate];
  v6 = [v5 _FTStringFromBaseData];

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", v6);
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
  v3 = [(IDSPreflightMessage *)&v20 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSPreflightMessage *)self phoneNumberValidationRetryCount];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"pnv-retry-count", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915154();
  }

  v6 = [(IDSPreflightMessage *)self hardwareVersion];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  v7 = [(IDSPreflightMessage *)self osVersion];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"os-version", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  v8 = [(IDSPreflightMessage *)self softwareVersion];
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"software-version", v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009152EC();
  }

  v9 = [(IDSPreflightMessage *)self deviceName];
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"device-name", v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915374();
  }

  v10 = [(IDSPreflightMessage *)self hostHardwareVersion];
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"host-hardware-version", v10);
  }

  v11 = [(IDSPreflightMessage *)self hostOsVersion];
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"host-os-version", v11);
  }

  v12 = [(IDSPreflightMessage *)self hostSoftwareVersion];
  if (v12)
  {
    CFDictionarySetValue(Mutable, @"host-software-version", v12);
  }

  v13 = [(IDSPreflightMessage *)self hostDeviceName];
  if (v13)
  {
    CFDictionarySetValue(Mutable, @"host-device-name", v13);
  }

  v14 = [(IDSPreflightMessage *)self IMSI];
  if (v14)
  {
    CFDictionarySetValue(Mutable, @"IMSI", v14);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009153FC();
  }

  v15 = [(IDSPreflightMessage *)self PLMN];
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"PLMN", v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915484();
  }

  v16 = [(IDSPreflightMessage *)self pnrReason];
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"pnr-reason", v16);
  }

  v17 = [(IDSPreflightMessage *)self simHardwareType];
  if (v17)
  {
    CFDictionarySetValue(Mutable, @"sim-hardware-type", v17);
  }

  v18 = [(IDSPreflightMessage *)self testData];
  if (v18)
  {
    CFDictionarySetValue(Mutable, @"test-data", v18);
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
  v5 = [v4 _numberForKey:@"status"];
  [(IDSPreflightMessage *)self setResponseStatus:v5];

  v6 = [v4 _stringForKey:@"session-id"];
  v17 = self;
  [(IDSPreflightMessage *)self setResponseSessionID:v6];

  v7 = objc_alloc_init(NSMutableArray);
  v18 = v4;
  [v4 objectForKey:@"mechanisms"];
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

  [(IDSPreflightMessage *)v17 setResponseMechanisms:v7];
}

@end