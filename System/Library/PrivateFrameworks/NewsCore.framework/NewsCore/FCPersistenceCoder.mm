@interface FCPersistenceCoder
- (id)_codeData:(uint64_t)data;
- (id)encodeData:(void *)data;
- (void)initWithKey:(void *)key;
@end

@implementation FCPersistenceCoder

- (void)initWithKey:(void *)key
{
  v3 = a2;
  if (key)
  {
    v7.receiver = key;
    v7.super_class = FCPersistenceCoder;
    key = objc_msgSendSuper2(&v7, sel_init);
    if (key)
    {
      v4 = [v3 copy];
      v5 = key[1];
      key[1] = v4;
    }
  }

  return key;
}

- (id)encodeData:(void *)data
{
  if (data)
  {
    data = [(FCPersistenceCoder *)data _codeData:a2];
    v2 = vars8;
  }

  return data;
}

- (id)_codeData:(uint64_t)data
{
  v3 = a2;
  if (data)
  {
    if ([*(data + 8) length])
    {
      v4 = [v3 mutableCopy];
      mutableBytes = [v4 mutableBytes];
      v6 = [v4 length];
      bytes = [*(data + 8) bytes];
      v8 = [*(data + 8) length];
      if (v6 >= 1)
      {
        v9 = &mutableBytes[v6];
        v10 = &bytes[v8];
        do
        {
          v11 = *bytes++;
          *mutableBytes++ ^= v11;
          if (bytes == v10)
          {
            bytes = [*(data + 8) bytes];
          }
        }

        while (mutableBytes < v9);
      }
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end