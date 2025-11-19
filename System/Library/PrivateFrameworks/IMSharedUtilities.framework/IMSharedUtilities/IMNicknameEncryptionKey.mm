@interface IMNicknameEncryptionKey
- (IMNicknameEncryptionKey)initWithData:(id)a3;
- (const)bytes;
- (unint64_t)length;
@end

@implementation IMNicknameEncryptionKey

- (IMNicknameEncryptionKey)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMNicknameEncryptionKey;
  v6 = [(IMNicknameEncryptionKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (const)bytes
{
  v2 = [(IMNicknameEncryptionKey *)self data];
  v3 = [v2 bytes];

  return v3;
}

- (unint64_t)length
{
  v2 = [(IMNicknameEncryptionKey *)self data];
  v3 = [v2 length];

  return v3;
}

@end