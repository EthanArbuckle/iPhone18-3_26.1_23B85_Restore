@interface MBDigestSHA256
- (MBDigestSHA256)init;
- (id)final;
- (void)finalWithBytes:(void *)bytes length:(unint64_t)length;
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

- (void)finalWithBytes:(void *)bytes length:(unint64_t)length
{
  if (length != 32)
  {
    [MBDigestSHA256 finalWithBytes:length:];
  }

  CC_SHA256_Final(bytes, &self->_context);
}

- (id)final
{
  v5 = *MEMORY[0x1E69E9840];
  [(MBDigestSHA256 *)self finalWithBytes:v4 length:32];
  result = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:32];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)finalWithBytes:length:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end