@interface FCPersistenceCoder
- (id)_codeData:(uint64_t)a1;
- (id)encodeData:(void *)a1;
- (void)initWithKey:(void *)a1;
@end

@implementation FCPersistenceCoder

- (void)initWithKey:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = FCPersistenceCoder;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

- (id)encodeData:(void *)a1
{
  if (a1)
  {
    a1 = [(FCPersistenceCoder *)a1 _codeData:a2];
    v2 = vars8;
  }

  return a1;
}

- (id)_codeData:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ([*(a1 + 8) length])
    {
      v4 = [v3 mutableCopy];
      v5 = [v4 mutableBytes];
      v6 = [v4 length];
      v7 = [*(a1 + 8) bytes];
      v8 = [*(a1 + 8) length];
      if (v6 >= 1)
      {
        v9 = &v5[v6];
        v10 = &v7[v8];
        do
        {
          v11 = *v7++;
          *v5++ ^= v11;
          if (v7 == v10)
          {
            v7 = [*(a1 + 8) bytes];
          }
        }

        while (v5 < v9);
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