@interface IDSKTOptInStatusMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSKTOptInStatusMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = IDSKTOptInStatusMessage;
  v4 = [(IDSKTOptInStatusMessage *)&v12 copyWithZone:a3];
  v5 = [(IDSKTOptInStatusMessage *)self hardwareVersion];
  [v4 setHardwareVersion:v5];

  v6 = [(IDSKTOptInStatusMessage *)self osVersion];
  [v4 setOsVersion:v6];

  v7 = [(IDSKTOptInStatusMessage *)self isOptIn];
  [v4 setIsOptIn:v7];

  v8 = [(IDSKTOptInStatusMessage *)self services];
  [v4 setServices:v8];

  v9 = [(IDSKTOptInStatusMessage *)self responseStatus];
  [v4 setResponseStatus:v9];

  v10 = [(IDSKTOptInStatusMessage *)self responseMessage];
  [v4 setResponseMessage:v10];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"hardware-version"];
  [v2 addObject:@"os-version"];
  [v2 addObject:@"services"];

  return v2;
}

- (id)messageBody
{
  v9.receiver = self;
  v9.super_class = IDSKTOptInStatusMessage;
  v3 = [(IDSKTOptInStatusMessage *)&v9 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSKTOptInStatusMessage *)self hardwareVersion];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  v6 = [(IDSKTOptInStatusMessage *)self osVersion];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"os-version", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  v7 = [(IDSKTOptInStatusMessage *)self services];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"services", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092866C();
  }

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v7.receiver = self;
  v7.super_class = IDSKTOptInStatusMessage;
  v2 = [(IDSKTOptInStatusMessage *)&v7 additionalMessageHeaders];
  Mutable = [v2 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v4 = _IDSKeyTransparencyOptInOutVersionNumber();
  v5 = [v4 stringValue];

  if (v5)
  {
    CFDictionarySetValue(Mutable, @"x-kt-opt-version", v5);
  }

  return Mutable;
}

@end