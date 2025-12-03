@interface IDSGetDependentRegistrationMessage
- (IDSGetDependentRegistrationMessage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
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
    lastObject = [v3 lastObject];
    [(IDSGetDependentRegistrationMessage *)v2 setTopic:lastObject];

    [(IDSGetDependentRegistrationMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = IDSGetDependentRegistrationMessage;
  v4 = [(IDSGetDependentRegistrationMessage *)&v8 copyWithZone:zone];
  service = [(IDSGetDependentRegistrationMessage *)self service];
  [v4 setService:service];

  responseRegistrations = [(IDSGetDependentRegistrationMessage *)self responseRegistrations];
  [v4 setResponseRegistrations:responseRegistrations];

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
  messageBody = [(IDSGetDependentRegistrationMessage *)&v7 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  service = [(IDSGetDependentRegistrationMessage *)self service];
  if (service)
  {
    CFDictionarySetValue(Mutable, @"service", service);
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"registrations"];
  [(IDSGetDependentRegistrationMessage *)self setResponseRegistrations:v5];

  v6 = [dictionaryCopy objectForKey:@"alert"];

  [(IDSGetDependentRegistrationMessage *)self setResponseAlertInfo:v6];
}

@end