@interface IDSGetDependentRegistrationMessage
- (IDSGetDependentRegistrationMessage)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSGetDependentRegistrationMessage

- (IDSGetDependentRegistrationMessage)init
{
  v6.receiver = self;
  v6.super_class = IDSGetDependentRegistrationMessage;
  v2 = [(IDSGetDependentRegistrationMessage *)&v6 init];
  if (v2)
  {
    IMGetConferenceSettings();
    v3 = 0;
    v4 = [v3 lastObject];
    [(IDSGetDependentRegistrationMessage *)v2 setTopic:v4];

    [(IDSGetDependentRegistrationMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = IDSGetDependentRegistrationMessage;
  v4 = [(IDSGetDependentRegistrationMessage *)&v8 copyWithZone:a3];
  v5 = [(IDSGetDependentRegistrationMessage *)self service];
  [v4 setService:v5];

  v6 = [(IDSGetDependentRegistrationMessage *)self responseRegistrations];
  [v4 setResponseRegistrations:v6];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (id)messageBody
{
  v7.receiver = self;
  v7.super_class = IDSGetDependentRegistrationMessage;
  v3 = [(IDSGetDependentRegistrationMessage *)&v7 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSGetDependentRegistrationMessage *)self service];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"service", v5);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"registrations"];
  [(IDSGetDependentRegistrationMessage *)self setResponseRegistrations:v5];

  v6 = [v4 objectForKey:@"alert"];

  [(IDSGetDependentRegistrationMessage *)self setResponseAlertInfo:v6];
}

@end