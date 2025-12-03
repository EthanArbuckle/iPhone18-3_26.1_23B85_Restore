@interface MBDigestSHA256
- (MBDigestSHA256)init;
- (void)updateWithBytes:(const void *)bytes length:(unint64_t)length;
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

- (void)updateWithBytes:(const void *)bytes length:(unint64_t)length
{
  if (length)
  {
    v7 = 0;
    lengthCopy = length;
    do
    {
      v9 = lengthCopy - 0x4000;
      if (lengthCopy >= 0x4000)
      {
        v10 = 0x4000;
      }

      else
      {
        v10 = lengthCopy;
      }

      CC_SHA256_Update(&self->_context, bytes + v7, v10);
      v7 += 0x4000;
      lengthCopy = v9;
    }

    while (v7 < length);
  }
}

@end