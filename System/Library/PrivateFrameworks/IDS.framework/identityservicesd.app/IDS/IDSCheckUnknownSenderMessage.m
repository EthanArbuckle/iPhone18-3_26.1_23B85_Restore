@interface IDSCheckUnknownSenderMessage
- (id)additionalMessageHeaders;
- (id)additionalQueryStringParameters;
- (id)copyWithZone:(_NSZone *)a3;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSCheckUnknownSenderMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = IDSCheckUnknownSenderMessage;
  v4 = [(IDSCheckUnknownSenderMessage *)&v12 copyWithZone:a3];
  v5 = [(IDSCheckUnknownSenderMessage *)self hardwareVersion];
  [v4 setHardwareVersion:v5];

  v6 = [(IDSCheckUnknownSenderMessage *)self OSVersion];
  [v4 setOSVersion:v6];

  v7 = [(IDSCheckUnknownSenderMessage *)self softwareVersion];
  [v4 setSoftwareVersion:v7];

  v8 = [(IDSCheckUnknownSenderMessage *)self sender];
  [v4 setSender:v8];

  v9 = [(IDSCheckUnknownSenderMessage *)self attemptCount];
  [v4 setAttemptCount:v9];

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
  v3 = [(IDSCheckUnknownSenderMessage *)&v11 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSCheckUnknownSenderMessage *)self pushToken];
  v6 = [v5 _FTStringFromBaseData];

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", v6);
  }

  v7 = [(IDSCheckUnknownSenderMessage *)self hardwareVersion];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"x-hardware-version", v7);
  }

  v8 = [(IDSCheckUnknownSenderMessage *)self OSVersion];
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"x-os-version", v8);
  }

  v9 = [(IDSCheckUnknownSenderMessage *)self softwareVersion];
  if (v9)
  {
    CFDictionarySetValue(Mutable, @"x-software-version", v9);
  }

  return Mutable;
}

- (id)additionalQueryStringParameters
{
  v10.receiver = self;
  v10.super_class = IDSCheckUnknownSenderMessage;
  v3 = [(IDSCheckUnknownSenderMessage *)&v10 additionalQueryStringParameters];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSCheckUnknownSenderMessage *)self sender];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"sender", v5);
  }

  v6 = [(IDSCheckUnknownSenderMessage *)self attemptCount];
  v7 = [v6 stringValue];

  if (v7)
  {
    CFDictionarySetValue(Mutable, @"count", v7);
  }

  v8 = [(IDSCheckUnknownSenderMessage *)self geo];
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"geo", v8);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 _numberForKey:@"status"];
  -[IDSCheckUnknownSenderMessage setStatus:](self, "setStatus:", [v5 integerValue]);

  v6 = [v4 _numberForKey:@"abusive"];
  -[IDSCheckUnknownSenderMessage setAbusive:](self, "setAbusive:", [v6 BOOLValue]);

  v7 = [v4 _numberForKey:@"delay"];

  [v7 doubleValue];
  [(IDSCheckUnknownSenderMessage *)self setDelay:?];
}

@end