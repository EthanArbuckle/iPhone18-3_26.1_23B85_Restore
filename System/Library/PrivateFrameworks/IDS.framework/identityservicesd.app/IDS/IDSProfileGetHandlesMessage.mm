@interface IDSProfileGetHandlesMessage
- (IDSProfileGetHandlesMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
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
  v3 = [(IDSProfileGetHandlesMessage *)&v7 additionalMessageHeaders];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  v5 = [(IDSProfileGetHandlesMessage *)self dsAuthID];
  if (v5)
  {
    CFDictionarySetValue(v4, @"x-ds-client-id", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100931CE4();
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = IDSProfileGetHandlesMessage;
  v4 = [(IDSProfileGetHandlesMessage *)&v7 copyWithZone:a3];
  v5 = [(IDSProfileGetHandlesMessage *)self responseHandles];
  [v4 setResponseHandles:v5];

  return v4;
}

- (void)handleResponseDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = IDSProfileGetHandlesMessage;
  v4 = a3;
  [(IDSProfileGetHandlesMessage *)&v7 handleResponseDictionary:v4];
  v5 = [v4 objectForKey:{@"handles", v7.receiver, v7.super_class}];
  [(IDSProfileGetHandlesMessage *)self setResponseHandles:v5];

  v6 = [v4 objectForKey:@"self-handle"];

  [(IDSProfileGetHandlesMessage *)self setSelfHandle:v6];
}

@end