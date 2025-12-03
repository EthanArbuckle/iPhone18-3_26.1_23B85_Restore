@interface IDSCheckUnknownSenderMessage
- (id)additionalMessageHeaders;
- (id)additionalQueryStringParameters;
- (id)copyWithZone:(_NSZone *)zone;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSCheckUnknownSenderMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = IDSCheckUnknownSenderMessage;
  v4 = [(IDSCheckUnknownSenderMessage *)&v12 copyWithZone:zone];
  hardwareVersion = [(IDSCheckUnknownSenderMessage *)self hardwareVersion];
  [v4 setHardwareVersion:hardwareVersion];

  oSVersion = [(IDSCheckUnknownSenderMessage *)self OSVersion];
  [v4 setOSVersion:oSVersion];

  softwareVersion = [(IDSCheckUnknownSenderMessage *)self softwareVersion];
  [v4 setSoftwareVersion:softwareVersion];

  sender = [(IDSCheckUnknownSenderMessage *)self sender];
  [v4 setSender:sender];

  attemptCount = [(IDSCheckUnknownSenderMessage *)self attemptCount];
  [v4 setAttemptCount:attemptCount];

  v10 = [(IDSCheckUnknownSenderMessage *)self geo];
  [v4 setGeo:v10];

  [v4 setStatus:{-[IDSCheckUnknownSenderMessage status](self, "status")}];
  [v4 setAbusive:{-[IDSCheckUnknownSenderMessage abusive](self, "abusive")}];
  [(IDSCheckUnknownSenderMessage *)self delay];
  [v4 setDelay:?];
  return v4;
}

- (id)additionalMessageHeaders
{
  v11.receiver = self;
  v11.super_class = IDSCheckUnknownSenderMessage;
  additionalMessageHeaders = [(IDSCheckUnknownSenderMessage *)&v11 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  pushToken = [(IDSCheckUnknownSenderMessage *)self pushToken];
  _FTStringFromBaseData = [pushToken _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", _FTStringFromBaseData);
  }

  hardwareVersion = [(IDSCheckUnknownSenderMessage *)self hardwareVersion];
  if (hardwareVersion)
  {
    CFDictionarySetValue(Mutable, @"x-hardware-version", hardwareVersion);
  }

  oSVersion = [(IDSCheckUnknownSenderMessage *)self OSVersion];
  if (oSVersion)
  {
    CFDictionarySetValue(Mutable, @"x-os-version", oSVersion);
  }

  softwareVersion = [(IDSCheckUnknownSenderMessage *)self softwareVersion];
  if (softwareVersion)
  {
    CFDictionarySetValue(Mutable, @"x-software-version", softwareVersion);
  }

  return Mutable;
}

- (id)additionalQueryStringParameters
{
  v10.receiver = self;
  v10.super_class = IDSCheckUnknownSenderMessage;
  additionalQueryStringParameters = [(IDSCheckUnknownSenderMessage *)&v10 additionalQueryStringParameters];
  Mutable = [additionalQueryStringParameters mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  sender = [(IDSCheckUnknownSenderMessage *)self sender];
  if (sender)
  {
    CFDictionarySetValue(Mutable, @"sender", sender);
  }

  attemptCount = [(IDSCheckUnknownSenderMessage *)self attemptCount];
  stringValue = [attemptCount stringValue];

  if (stringValue)
  {
    CFDictionarySetValue(Mutable, @"count", stringValue);
  }

  v8 = [(IDSCheckUnknownSenderMessage *)self geo];
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"geo", v8);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy _numberForKey:@"status"];
  -[IDSCheckUnknownSenderMessage setStatus:](self, "setStatus:", [v5 integerValue]);

  v6 = [dictionaryCopy _numberForKey:@"abusive"];
  -[IDSCheckUnknownSenderMessage setAbusive:](self, "setAbusive:", [v6 BOOLValue]);

  v7 = [dictionaryCopy _numberForKey:@"delay"];

  [v7 doubleValue];
  [(IDSCheckUnknownSenderMessage *)self setDelay:?];
}

@end