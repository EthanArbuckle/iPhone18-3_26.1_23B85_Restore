@interface IDSSocketPairEncryptedMessage
- (IDSSocketPairEncryptedMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data;
- (IDSSocketPairEncryptedMessage)initWithData:(id)data;
- (NSData)data;
@end

@implementation IDSSocketPairEncryptedMessage

- (IDSSocketPairEncryptedMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data
{
  v5.receiver = self;
  v5.super_class = IDSSocketPairEncryptedMessage;
  return [(IDSSocketPairMessage *)&v5 initWithCommand:command underlyingData:data];
}

- (IDSSocketPairEncryptedMessage)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = IDSSocketPairEncryptedMessage;
  v6 = [(IDSSocketPairEncryptedMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (NSData)data
{
  data = self->_data;
  if (data)
  {
    _existingUnderlyingData = data;
  }

  else
  {
    _existingUnderlyingData = [(IDSSocketPairMessage *)self _existingUnderlyingData];
  }

  return _existingUnderlyingData;
}

@end