@interface IDSProfileGetHandlesMessage
- (IDSProfileGetHandlesMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSProfileGetHandlesMessage

- (IDSProfileGetHandlesMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSProfileGetHandlesMessage;
  v2 = [(IDSProfileGetHandlesMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSProfileGetHandlesMessage *)v2 setTimeout:240.0];
  }

  return v3;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (id)messageBody
{
  v2 = objc_alloc_init(NSMutableDictionary);

  return v2;
}

- (id)additionalMessageHeaders
{
  v7.receiver = self;
  v7.super_class = IDSProfileGetHandlesMessage;
  additionalMessageHeaders = [(IDSProfileGetHandlesMessage *)&v7 additionalMessageHeaders];
  v4 = [additionalMessageHeaders mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  dsAuthID = [(IDSProfileGetHandlesMessage *)self dsAuthID];
  if (dsAuthID)
  {
    CFDictionarySetValue(v4, @"x-ds-client-id", dsAuthID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931CE4();
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = IDSProfileGetHandlesMessage;
  v4 = [(IDSProfileGetHandlesMessage *)&v7 copyWithZone:zone];
  responseHandles = [(IDSProfileGetHandlesMessage *)self responseHandles];
  [v4 setResponseHandles:responseHandles];

  return v4;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = IDSProfileGetHandlesMessage;
  dictionaryCopy = dictionary;
  [(IDSProfileGetHandlesMessage *)&v7 handleResponseDictionary:dictionaryCopy];
  v5 = [dictionaryCopy objectForKey:{@"handles", v7.receiver, v7.super_class}];
  [(IDSProfileGetHandlesMessage *)self setResponseHandles:v5];

  v6 = [dictionaryCopy objectForKey:@"self-handle"];

  [(IDSProfileGetHandlesMessage *)self setSelfHandle:v6];
}

@end