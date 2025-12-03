@interface IDSPeerAccessoryMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
@end

@implementation IDSPeerAccessoryMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = IDSPeerAccessoryMessage;
  v4 = [(IDSPeerMessage *)&v7 copyWithZone:zone];
  accessToken = [(IDSPeerAccessoryMessage *)self accessToken];
  [v4 setAccessToken:accessToken];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"sP"];
  [v2 addObject:@"hT"];

  return v2;
}

- (id)messageBody
{
  v7.receiver = self;
  v7.super_class = IDSPeerAccessoryMessage;
  messageBody = [(IDSPeerMessage *)&v7 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  accessToken = [(IDSPeerAccessoryMessage *)self accessToken];
  if (accessToken)
  {
    CFDictionarySetValue(Mutable, @"hT", accessToken);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092BE14();
  }

  return Mutable;
}

@end