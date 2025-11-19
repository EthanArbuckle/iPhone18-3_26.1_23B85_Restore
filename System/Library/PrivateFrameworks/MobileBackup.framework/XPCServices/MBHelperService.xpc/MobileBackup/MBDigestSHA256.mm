@interface MBDigestSHA256
- (MBDigestSHA256)init;
- (void)updateWithBytes:(const void *)a3 length:(unint64_t)a4;
@end

@implementation MBDigestSHA256

- (MBDigestSHA256)init
{
  v5.receiver = self;
  v5.super_class = MBDigestSHA256;
  v2 = [(MBDigestSHA256 *)&v5 init];
  v3 = v2;
  if (v2)
  {
    CC_SHA256_Init(&v2->_context);
  }

  return v3;
}

- (void)updateWithBytes:(const void *)a3 length:(unint64_t)a4
{
  if (a4)
  {
    v7 = 0;
    v8 = a4;
    do
    {
      v9 = v8 - 0x4000;
      if (v8 >= 0x4000)
      {
        v10 = 0x4000;
      }

      else
      {
        v10 = v8;
      }

      CC_SHA256_Update(&self->_context, a3 + v7, v10);
      v7 += 0x4000;
      v8 = v9;
    }

    while (v7 < a4);
  }
}

@end