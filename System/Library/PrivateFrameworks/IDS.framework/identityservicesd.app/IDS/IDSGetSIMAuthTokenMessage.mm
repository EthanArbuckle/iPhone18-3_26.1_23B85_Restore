@interface IDSGetSIMAuthTokenMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSGetSIMAuthTokenMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = IDSGetSIMAuthTokenMessage;
  v4 = [(IDSGetSIMAuthTokenMessage *)&v18 copyWithZone:zone];
  protocolVersion = [(IDSGetSIMAuthTokenMessage *)self protocolVersion];
  [v4 setProtocolVersion:protocolVersion];

  hardwareVersion = [(IDSGetSIMAuthTokenMessage *)self hardwareVersion];
  [v4 setHardwareVersion:hardwareVersion];

  osVersion = [(IDSGetSIMAuthTokenMessage *)self osVersion];
  [v4 setOsVersion:osVersion];

  softwareVersion = [(IDSGetSIMAuthTokenMessage *)self softwareVersion];
  [v4 setSoftwareVersion:softwareVersion];

  hostHardwareVersion = [(IDSGetSIMAuthTokenMessage *)self hostHardwareVersion];
  [v4 setHostHardwareVersion:hostHardwareVersion];

  hostOsVersion = [(IDSGetSIMAuthTokenMessage *)self hostOsVersion];
  [v4 setHostOsVersion:hostOsVersion];

  hostSoftwareVersion = [(IDSGetSIMAuthTokenMessage *)self hostSoftwareVersion];
  [v4 setHostSoftwareVersion:hostSoftwareVersion];

  carrierNonce = [(IDSGetSIMAuthTokenMessage *)self carrierNonce];
  [v4 setCarrierNonce:carrierNonce];

  iMEI = [(IDSGetSIMAuthTokenMessage *)self IMEI];
  [v4 setIMEI:iMEI];

  responseStatus = [(IDSGetSIMAuthTokenMessage *)self responseStatus];
  [v4 setResponseStatus:responseStatus];

  responseCarrierToken = [(IDSGetSIMAuthTokenMessage *)self responseCarrierToken];
  [v4 setResponseCarrierToken:responseCarrierToken];

  responseMessage = [(IDSGetSIMAuthTokenMessage *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSGetSIMAuthTokenMessage;
  additionalMessageHeaders = [(IDSGetSIMAuthTokenMessage *)&v8 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  pushCertificate = [(IDSGetSIMAuthTokenMessage *)self pushCertificate];
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
  v14.receiver = self;
  v14.super_class = IDSGetSIMAuthTokenMessage;
  messageBody = [(IDSGetSIMAuthTokenMessage *)&v14 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  hardwareVersion = [(IDSGetSIMAuthTokenMessage *)self hardwareVersion];
  if (hardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", hardwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  osVersion = [(IDSGetSIMAuthTokenMessage *)self osVersion];
  if (osVersion)
  {
    CFDictionarySetValue(Mutable, @"os-version", osVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  softwareVersion = [(IDSGetSIMAuthTokenMessage *)self softwareVersion];
  if (softwareVersion)
  {
    CFDictionarySetValue(Mutable, @"software-version", softwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920E24();
  }

  hostHardwareVersion = [(IDSGetSIMAuthTokenMessage *)self hostHardwareVersion];
  if (hostHardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"host-hardware-version", hostHardwareVersion);
  }

  hostOsVersion = [(IDSGetSIMAuthTokenMessage *)self hostOsVersion];
  if (hostOsVersion)
  {
    CFDictionarySetValue(Mutable, @"host-os-version", hostOsVersion);
  }

  hostSoftwareVersion = [(IDSGetSIMAuthTokenMessage *)self hostSoftwareVersion];
  if (hostSoftwareVersion)
  {
    CFDictionarySetValue(Mutable, @"host-software-version", hostSoftwareVersion);
  }

  carrierNonce = [(IDSGetSIMAuthTokenMessage *)self carrierNonce];
  if (carrierNonce)
  {
    CFDictionarySetValue(Mutable, @"carrier-nonce", carrierNonce);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10093344C();
  }

  iMEI = [(IDSGetSIMAuthTokenMessage *)self IMEI];
  if (iMEI)
  {
    CFDictionarySetValue(Mutable, @"imei", iMEI);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009334D4();
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
  [(IDSGetSIMAuthTokenMessage *)self setResponseStatus:v5];

  v6 = [dictionaryCopy _stringForKey:@"esim-auth-token"];
  [(IDSGetSIMAuthTokenMessage *)self setResponseCarrierToken:v6];

  v7 = [dictionaryCopy _stringForKey:@"message"];

  [(IDSGetSIMAuthTokenMessage *)self setResponseMessage:v7];
}

@end