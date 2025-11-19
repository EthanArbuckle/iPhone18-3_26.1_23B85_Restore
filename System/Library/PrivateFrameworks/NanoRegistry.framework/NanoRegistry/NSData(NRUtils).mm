@interface NSData(NRUtils)
+ (id)dataWithRandomBytesOfSize:()NRUtils;
+ (id)fromUUID:()NRUtils;
- (id)NRSHA256;
- (id)toUUID;
- (unsigned)NRSHA256:()NRUtils;
@end

@implementation NSData(NRUtils)

+ (id)dataWithRandomBytesOfSize:()NRUtils
{
  v4 = [MEMORY[0x1E695DF88] dataWithLength:?];
  v5 = [v4 bytes];
  v6 = v5;
  v7 = a3 >> 2;
  if (a3 >= 4)
  {
    v8 = v5;
    v9 = a3 >> 2;
    do
    {
      *v8++ = random();
      --v9;
    }

    while (v9);
  }

  v10 = a3 & 3;
  if (v10)
  {
    v11 = (v6 + 4 * v7);
    do
    {
      *v11++ = random();
      --v10;
    }

    while (v10);
  }

  return v4;
}

+ (id)fromUUID:()NRUtils
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 getUUIDBytes:v6];
    v3 = [MEMORY[0x1E695DF88] dataWithBytes:v6 length:16];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)toUUID
{
  if ([a1 length] == 16)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(a1, "bytes")}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unsigned)NRSHA256:()NRUtils
{
  if (a3)
  {
    v4 = result;
    v5 = [result bytes];
    v6 = [v4 length];

    return CC_SHA256(v5, v6, a3);
  }

  return result;
}

- (id)NRSHA256
{
  v5 = *MEMORY[0x1E69E9840];
  [a1 NRSHA256:v4];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:32];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

@end