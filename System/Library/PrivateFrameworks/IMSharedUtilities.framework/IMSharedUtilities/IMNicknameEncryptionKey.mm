@interface IMNicknameEncryptionKey
- (IMNicknameEncryptionKey)initWithData:(id)data;
- (const)bytes;
- (unint64_t)length;
@end

@implementation IMNicknameEncryptionKey

- (IMNicknameEncryptionKey)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = IMNicknameEncryptionKey;
  v6 = [(IMNicknameEncryptionKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (const)bytes
{
  data = [(IMNicknameEncryptionKey *)self data];
  bytes = [data bytes];

  return bytes;
}

- (unint64_t)length
{
  data = [(IMNicknameEncryptionKey *)self data];
  v3 = [data length];

  return v3;
}

@end