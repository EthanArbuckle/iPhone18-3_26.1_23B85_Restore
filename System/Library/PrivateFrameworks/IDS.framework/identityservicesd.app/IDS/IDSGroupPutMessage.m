@interface IDSGroupPutMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSGroupPutMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v25.receiver = self;
  v25.super_class = IDSGroupPutMessage;
  v4 = [(IDSGroupPutMessage *)&v25 copyWithZone:a3];
  v5 = [(IDSGroupPutMessage *)self route];
  [v4 setRoute:v5];

  v6 = [(IDSGroupPutMessage *)self retryCount];
  [v4 setRetryCount:v6];

  v7 = [(IDSGroupPutMessage *)self hardwareVersion];
  [v4 setHardwareVersion:v7];

  v8 = [(IDSGroupPutMessage *)self osVersion];
  [v4 setOsVersion:v8];

  v9 = [(IDSGroupPutMessage *)self softwareVersion];
  [v4 setSoftwareVersion:v9];

  v10 = [(IDSGroupPutMessage *)self deviceName];
  [v4 setDeviceName:v10];

  v11 = [(IDSGroupPutMessage *)self engramID];
  [v4 setEngramID:v11];

  v12 = [(IDSGroupPutMessage *)self version];
  [v4 setVersion:v12];

  v13 = [(IDSGroupPutMessage *)self key];
  [v4 setKey:v13];

  v14 = [(IDSGroupPutMessage *)self data];
  [v4 setData:v14];

  v15 = [(IDSGroupPutMessage *)self signature];
  [v4 setSignature:v15];

  v16 = [(IDSGroupPutMessage *)self sigAlgorithm];
  [v4 setSigAlgorithm:v16];

  v17 = [(IDSGroupPutMessage *)self forwardingSig];
  [v4 setForwardingSig:v17];

  v18 = [(IDSGroupPutMessage *)self forwardingSigAlgorithm];
  [v4 setForwardingSigAlgorithm:v18];

  v19 = [(IDSGroupPutMessage *)self responseEngramID];
  [v4 setResponseEngramID:v19];

  v20 = [(IDSGroupPutMessage *)self responseVersion];
  [v4 setResponseVersion:v20];

  v21 = [(IDSGroupPutMessage *)self responseEntries];
  [v4 setResponseEntries:v21];

  v22 = [(IDSGroupPutMessage *)self responseStatus];
  [v4 setResponseStatus:v22];

  v23 = [(IDSGroupPutMessage *)self responseMessage];
  [v4 setResponseMessage:v23];

  return v4;
}

- (id)additionalMessageHeaders
{
  v9.receiver = self;
  v9.super_class = IDSGroupPutMessage;
  v3 = [(IDSGroupPutMessage *)&v9 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSGroupPutMessage *)self pushCertificate];
  v6 = [v5 _FTStringFromBaseData];

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009150CC();
  }

  v7 = [(IDSGroupPutMessage *)self route];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"route", v7);
  }

  return Mutable;
}

- (id)messageBody
{
  v21.receiver = self;
  v21.super_class = IDSGroupPutMessage;
  v3 = [(IDSGroupPutMessage *)&v21 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSGroupPutMessage *)self route];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"route", v5);
  }

  v6 = [(IDSGroupPutMessage *)self retryCount];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"retry-count", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920D9C();
  }

  v7 = [(IDSGroupPutMessage *)self hardwareVersion];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  v8 = [(IDSGroupPutMessage *)self osVersion];
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"os-version", v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  v9 = [(IDSGroupPutMessage *)self softwareVersion];
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"software-version", v9);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920E24();
  }

  v10 = [(IDSGroupPutMessage *)self deviceName];
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"device-name", v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920EAC();
  }

  v11 = [(IDSGroupPutMessage *)self engramID];
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"engram-id", v11);
  }

  v12 = [(IDSGroupPutMessage *)self version];
  if (v12)
  {
    CFDictionarySetValue(Mutable, @"version", v12);
  }

  v13 = [(IDSGroupPutMessage *)self requiredUpdate];
  if (v13)
  {
    CFDictionarySetValue(Mutable, @"required-update", v13);
  }

  v14 = [(IDSGroupPutMessage *)self key];
  if (v14)
  {
    CFDictionarySetValue(Mutable, @"key", v14);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920F34();
  }

  v15 = [(IDSGroupPutMessage *)self data];
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"data", v15);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920FBC();
  }

  v16 = [(IDSGroupPutMessage *)self signature];
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"signature", v16);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100921044();
  }

  v17 = [(IDSGroupPutMessage *)self sigAlgorithm];
  if (v17)
  {
    CFDictionarySetValue(Mutable, @"sig-algorithm", v17);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009210CC();
  }

  v18 = [(IDSGroupPutMessage *)self forwardingSig];
  if (v18)
  {
    CFDictionarySetValue(Mutable, @"forwarding-sig", v18);
  }

  v19 = [(IDSGroupPutMessage *)self forwardingSigAlgorithm];
  if (v19)
  {
    CFDictionarySetValue(Mutable, @"forwarding-sig-algorithm", v19);
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
  v5 = [v4 _dataForKey:@"engram-id"];
  [(IDSGroupPutMessage *)self setResponseEngramID:v5];

  v6 = [v4 _numberForKey:@"version"];
  [(IDSGroupPutMessage *)self setResponseVersion:v6];

  v7 = [v4 _arrayForKey:@"entries"];
  [(IDSGroupPutMessage *)self setResponseEntries:v7];

  v8 = [v4 _numberForKey:@"status"];
  [(IDSGroupPutMessage *)self setResponseStatus:v8];

  v9 = [v4 _stringForKey:@"message"];

  [(IDSGroupPutMessage *)self setResponseMessage:v9];
}

@end