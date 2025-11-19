@interface IDSServerMessage
- (IDSServerMessage)initWithPayload:(id)a3 command:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
@end

@implementation IDSServerMessage

- (IDSServerMessage)initWithPayload:(id)a3 command:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IDSServerMessage;
  v8 = [(IDSServerMessage *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    payload = v8->_payload;
    v8->_payload = v9;

    v8->_command = [v7 integerValue];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = IDSServerMessage;
  v4 = [(IDSServerMessage *)&v6 copyWithZone:a3];
  [v4 setPayload:self->_payload];
  [v4 setCommand:self->_command];
  return v4;
}

- (id)messageBody
{
  v10.receiver = self;
  v10.super_class = IDSServerMessage;
  v3 = [(IDSServerMessage *)&v10 messageBody];
  Mutable = [v3 mutableCopy];

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