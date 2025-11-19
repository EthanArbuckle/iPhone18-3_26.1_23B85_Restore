@interface IDSGetSIMAuthTokenMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSGetSIMAuthTokenMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = IDSGetSIMAuthTokenMessage;
  v4 = [(IDSGetSIMAuthTokenMessage *)&v18 copyWithZone:a3];
  v5 = [(IDSGetSIMAuthTokenMessage *)self protocolVersion];
  [v4 setProtocolVersion:v5];

  v6 = [(IDSGetSIMAuthTokenMessage *)self hardwareVersion];
  [v4 setHardwareVersion:v6];

  v7 = [(IDSGetSIMAuthTokenMessage *)self osVersion];
  [v4 setOsVersion:v7];

  v8 = [(IDSGetSIMAuthTokenMessage *)self softwareVersion];
  [v4 setSoftwareVersion:v8];

  v9 = [(IDSGetSIMAuthTokenMessage *)self hostHardwareVersion];
  [v4 setHostHardwareVersion:v9];

  v10 = [(IDSGetSIMAuthTokenMessage *)self hostOsVersion];
  [v4 setHostOsVersion:v10];

  v11 = [(IDSGetSIMAuthTokenMessage *)self hostSoftwareVersion];
  [v4 setHostSoftwareVersion:v11];

  v12 = [(IDSGetSIMAuthTokenMessage *)self carrierNonce];
  [v4 setCarrierNonce:v12];

  v13 = [(IDSGetSIMAuthTokenMessage *)self IMEI];
  [v4 setIMEI:v13];

  v14 = [(IDSGetSIMAuthTokenMessage *)self responseStatus];
  [v4 setResponseStatus:v14];

  v15 = [(IDSGetSIMAuthTokenMessage *)self responseCarrierToken];
  [v4 setResponseCarrierToken:v15];

  v16 = [(IDSGetSIMAuthTokenMessage *)self responseMessage];
  [v4 setResponseMessage:v16];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSGetSIMAuthTokenMessage;
  v3 = [(IDSGetSIMAuthTokenMessage *)&v8 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSGetSIMAuthTokenMessage *)self pushCertificate];
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
  v14.receiver = self;
  v14.super_class = IDSGetSIMAuthTokenMessage;
  v3 = [(IDSGetSIMAuthTokenMessage *)&v14 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSGetSIMAuthTokenMessage *)self hardwareVersion];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  v6 = [(IDSGetSIMAuthTokenMessage *)self osVersion];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"os-version", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  v7 = [(IDSGetSIMAuthTokenMessage *)self softwareVersion];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"software-version", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100920E24();
  }

  v8 = [(IDSGetSIMAuthTokenMessage *)self hostHardwareVersion];
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"host-hardware-version", v8);
  }

  v9 = [(IDSGetSIMAuthTokenMessage *)self hostOsVersion];
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"host-os-version", v9);
  }

  v10 = [(IDSGetSIMAuthTokenMessage *)self hostSoftwareVersion];
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"host-software-version", v10);
  }

  v11 = [(IDSGetSIMAuthTokenMessage *)self carrierNonce];
  if (v11)
  {
    CFDictionarySetValue(Mutable, @"carrier-nonce", v11);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10093344C();
  }

  v12 = [(IDSGetSIMAuthTokenMessage *)self IMEI];
  if (v12)
  {
    CFDictionarySetValue(Mutable, @"imei", v12);
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

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 _numberForKey:@"status"];
  [(IDSGetSIMAuthTokenMessage *)self setResponseStatus:v5];

  v6 = [v4 _stringForKey:@"esim-auth-token"];
  [(IDSGetSIMAuthTokenMessage *)self setResponseCarrierToken:v6];

  v7 = [v4 _stringForKey:@"message"];

  [(IDSGetSIMAuthTokenMessage *)self setResponseMessage:v7];
}

@end