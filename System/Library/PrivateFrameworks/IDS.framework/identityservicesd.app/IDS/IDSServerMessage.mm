@interface IDSServerMessage
- (IDSServerMessage)initWithPayload:(id)payload command:(id)command;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
@end

@implementation IDSServerMessage

- (IDSServerMessage)initWithPayload:(id)payload command:(id)command
{
  payloadCopy = payload;
  commandCopy = command;
  v12.receiver = self;
  v12.super_class = IDSServerMessage;
  v8 = [(IDSServerMessage *)&v12 init];
  if (v8)
  {
    v9 = [payloadCopy copy];
    payload = v8->_payload;
    v8->_payload = v9;

    v8->_command = [commandCopy integerValue];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = IDSServerMessage;
  v4 = [(IDSServerMessage *)&v6 copyWithZone:zone];
  [v4 setPayload:self->_payload];
  [v4 setCommand:self->_command];
  return v4;
}

- (id)messageBody
{
  v10.receiver = self;
  v10.super_class = IDSServerMessage;
  messageBody = [(IDSServerMessage *)&v10 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  payload = self->_payload;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10057E798;
  v8[3] = &unk_100BD95F8;
  v6 = Mutable;
  v9 = v6;
  [(NSDictionary *)payload enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

@end