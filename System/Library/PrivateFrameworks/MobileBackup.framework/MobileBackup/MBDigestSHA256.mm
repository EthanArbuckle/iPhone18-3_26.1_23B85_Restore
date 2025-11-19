@interface MBDigestSHA256
- (MBDigestSHA256)init;
- (id)final;
- (void)finalWithBytes:(void *)a3 length:(unint64_t)a4;
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

- (void)finalWithBytes:(void *)a3 length:(unint64_t)a4
{
  if (a4 != 32)
  {
    [MBDigestSHA256 finalWithBytes:length:];
  }

  CC_SHA256_Final(a3, &self->_context);
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