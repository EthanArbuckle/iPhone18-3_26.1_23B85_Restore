@interface IDSGroupPutMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSGroupPutMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v25.receiver = self;
  v25.super_class = IDSGroupPutMessage;
  v4 = [(IDSGroupPutMessage *)&v25 copyWithZone:zone];
  route = [(IDSGroupPutMessage *)self route];
  [v4 setRoute:route];

  retryCount = [(IDSGroupPutMessage *)self retryCount];
  [v4 setRetryCount:retryCount];

  hardwareVersion = [(IDSGroupPutMessage *)self hardwareVersion];
  [v4 setHardwareVersion:hardwareVersion];

  osVersion = [(IDSGroupPutMessage *)self osVersion];
  [v4 setOsVersion:osVersion];

  softwareVersion = [(IDSGroupPutMessage *)self softwareVersion];
  [v4 setSoftwareVersion:softwareVersion];

  deviceName = [(IDSGroupPutMessage *)self deviceName];
  [v4 setDeviceName:deviceName];

  engramID = [(IDSGroupPutMessage *)self engramID];
  [v4 setEngramID:engramID];

  version = [(IDSGroupPutMessage *)self version];
  [v4 setVersion:version];

  v13 = [(IDSGroupPutMessage *)self key];
  [v4 setKey:v13];

  data = [(IDSGroupPutMessage *)self data];
  [v4 setData:data];

  signature = [(IDSGroupPutMessage *)self signature];
  [v4 setSignature:signature];

  sigAlgorithm = [(IDSGroupPutMessage *)self sigAlgorithm];
  [v4 setSigAlgorithm:sigAlgorithm];

  forwardingSig = [(IDSGroupPutMessage *)self forwardingSig];
  [v4 setForwardingSig:forwardingSig];

  forwardingSigAlgorithm = [(IDSGroupPutMessage *)self forwardingSigAlgorithm];
  [v4 setForwardingSigAlgorithm:forwardingSigAlgorithm];

  responseEngramID = [(IDSGroupPutMessage *)self responseEngramID];
  [v4 setResponseEngramID:responseEngramID];

  responseVersion = [(IDSGroupPutMessage *)self responseVersion];
  [v4 setResponseVersion:responseVersion];

  responseEntries = [(IDSGroupPutMessage *)self responseEntries];
  [v4 setResponseEntries:responseEntries];

  responseStatus = [(IDSGroupPutMessage *)self responseStatus];
  [v4 setResponseStatus:responseStatus];

  responseMessage = [(IDSGroupPutMessage *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

  return v4;
}

- (id)additionalMessageHeaders
{
  v9.receiver = self;
  v9.super_class = IDSGroupPutMessage;
  additionalMessageHeaders = [(IDSGroupPutMessage *)&v9 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  pushCertificate = [(IDSGroupPutMessage *)self pushCertificate];
  _FTStringFromBaseData = [pushCertificate _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", _FTStringFromBaseData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009150CC();
  }

  route = [(IDSGroupPutMessage *)self route];
  if (route)
  {
    CFDictionarySetValue(Mutable, @"route", route);
  }

  return Mutable;
}

- (id)messageBody
{
  v21.receiver = self;
  v21.super_class = IDSGroupPutMessage;
  messageBody = [(IDSGroupPutMessage *)&v21 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  route = [(IDSGroupPutMessage *)self route];
  if (route)
  {
    CFDictionarySetValue(Mutable, @"route", route);
  }

  retryCount = [(IDSGroupPutMessage *)self retryCount];
  if (retryCount)
  {
    CFDictionarySetValue(Mutable, @"retry-count", retryCount);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920D9C();
  }

  hardwareVersion = [(IDSGroupPutMessage *)self hardwareVersion];
  if (hardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", hardwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  osVersion = [(IDSGroupPutMessage *)self osVersion];
  if (osVersion)
  {
    CFDictionarySetValue(Mutable, @"os-version", osVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  softwareVersion = [(IDSGroupPutMessage *)self softwareVersion];
  if (softwareVersion)
  {
    CFDictionarySetValue(Mutable, @"software-version", softwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920E24();
  }

  deviceName = [(IDSGroupPutMessage *)self deviceName];
  if (deviceName)
  {
    CFDictionarySetValue(Mutable, @"device-name", deviceName);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920EAC();
  }

  engramID = [(IDSGroupPutMessage *)self engramID];
  if (engramID)
  {
    CFDictionarySetValue(Mutable, @"engram-id", engramID);
  }

  version = [(IDSGroupPutMessage *)self version];
  if (version)
  {
    CFDictionarySetValue(Mutable, @"version", version);
  }

  requiredUpdate = [(IDSGroupPutMessage *)self requiredUpdate];
  if (requiredUpdate)
  {
    CFDictionarySetValue(Mutable, @"required-update", requiredUpdate);
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

  data = [(IDSGroupPutMessage *)self data];
  if (data)
  {
    CFDictionarySetValue(Mutable, @"data", data);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920FBC();
  }

  signature = [(IDSGroupPutMessage *)self signature];
  if (signature)
  {
    CFDictionarySetValue(Mutable, @"signature", signature);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100921044();
  }

  sigAlgorithm = [(IDSGroupPutMessage *)self sigAlgorithm];
  if (sigAlgorithm)
  {
    CFDictionarySetValue(Mutable, @"sig-algorithm", sigAlgorithm);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009210CC();
  }

  forwardingSig = [(IDSGroupPutMessage *)self forwardingSig];
  if (forwardingSig)
  {
    CFDictionarySetValue(Mutable, @"forwarding-sig", forwardingSig);
  }

  forwardingSigAlgorithm = [(IDSGroupPutMessage *)self forwardingSigAlgorithm];
  if (forwardingSigAlgorithm)
  {
    CFDictionarySetValue(Mutable, @"forwarding-sig-algorithm", forwardingSigAlgorithm);
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
  v5 = [dictionaryCopy _dataForKey:@"engram-id"];
  [(IDSGroupPutMessage *)self setResponseEngramID:v5];

  v6 = [dictionaryCopy _numberForKey:@"version"];
  [(IDSGroupPutMessage *)self setResponseVersion:v6];

  v7 = [dictionaryCopy _arrayForKey:@"entries"];
  [(IDSGroupPutMessage *)self setResponseEntries:v7];

  v8 = [dictionaryCopy _numberForKey:@"status"];
  [(IDSGroupPutMessage *)self setResponseStatus:v8];

  v9 = [dictionaryCopy _stringForKey:@"message"];

  [(IDSGroupPutMessage *)self setResponseMessage:v9];
}

@end