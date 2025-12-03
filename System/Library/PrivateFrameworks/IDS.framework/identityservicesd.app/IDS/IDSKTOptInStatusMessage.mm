@interface IDSKTOptInStatusMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSKTOptInStatusMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = IDSKTOptInStatusMessage;
  v4 = [(IDSKTOptInStatusMessage *)&v12 copyWithZone:zone];
  hardwareVersion = [(IDSKTOptInStatusMessage *)self hardwareVersion];
  [v4 setHardwareVersion:hardwareVersion];

  osVersion = [(IDSKTOptInStatusMessage *)self osVersion];
  [v4 setOsVersion:osVersion];

  isOptIn = [(IDSKTOptInStatusMessage *)self isOptIn];
  [v4 setIsOptIn:isOptIn];

  services = [(IDSKTOptInStatusMessage *)self services];
  [v4 setServices:services];

  responseStatus = [(IDSKTOptInStatusMessage *)self responseStatus];
  [v4 setResponseStatus:responseStatus];

  responseMessage = [(IDSKTOptInStatusMessage *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

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
  messageBody = [(IDSKTOptInStatusMessage *)&v9 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  hardwareVersion = [(IDSKTOptInStatusMessage *)self hardwareVersion];
  if (hardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"hardware-version", hardwareVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009151DC();
  }

  osVersion = [(IDSKTOptInStatusMessage *)self osVersion];
  if (osVersion)
  {
    CFDictionarySetValue(Mutable, @"os-version", osVersion);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100915264();
  }

  services = [(IDSKTOptInStatusMessage *)self services];
  if (services)
  {
    CFDictionarySetValue(Mutable, @"services", services);
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
  additionalMessageHeaders = [(IDSKTOptInStatusMessage *)&v7 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v4 = _IDSKeyTransparencyOptInOutVersionNumber();
  stringValue = [v4 stringValue];

  if (stringValue)
  {
    CFDictionarySetValue(Mutable, @"x-kt-opt-version", stringValue);
  }

  return Mutable;
}

@end