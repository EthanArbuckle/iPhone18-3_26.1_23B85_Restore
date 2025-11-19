@interface IDSSocketPairEncryptedMessage
- (IDSSocketPairEncryptedMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4;
- (IDSSocketPairEncryptedMessage)initWithData:(id)a3;
- (NSData)data;
@end

@implementation IDSSocketPairEncryptedMessage

- (IDSSocketPairEncryptedMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4
{
  v5.receiver = self;
  v5.super_class = IDSSocketPairEncryptedMessage;
  return [(IDSSocketPairMessage *)&v5 initWithCommand:a3 underlyingData:a4];
}

- (IDSSocketPairEncryptedMessage)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSSocketPairEncryptedMessage;
  v6 = [(IDSSocketPairEncryptedMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (NSData)data
{
  data = self->_data;
  if (data)
  {
    v3 = data;
  }

  else
  {
    v3 = [(IDSSocketPairMessage *)self _existingUnderlyingData];
  }

  return v3;
}

@end