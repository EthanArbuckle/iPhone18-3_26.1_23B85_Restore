@interface NSData(ICDataExtensions)
+ (id)ic_dataFromHexString:()ICDataExtensions;
+ (id)ic_dataWithUnsignedInteger:()ICDataExtensions;
+ (id)ic_randomDataOfLength:()ICDataExtensions error:;
+ (uint64_t)ic_nullableData:()ICDataExtensions isEqualToNullableData:;
+ (uint64_t)ic_random128BitData:()ICDataExtensions;
+ (uint64_t)ic_random256BitData:()ICDataExtensions;
- (id)ic_md5;
- (id)ic_sha256;
- (id)ic_stringValue;
- (uint64_t)ic_unsignedIntegerValue;
@end

@implementation NSData(ICDataExtensions)

- (id)ic_md5
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, [self bytes], objc_msgSend(self, "length"));
  CC_MD5_Final(md, &c);
  string = [MEMORY[0x1E696AD60] string];
  for (i = 0; i != 16; ++i)
  {
    v4 = md[i];
    LODWORD(v5) = (v4 >> 4) + 87;
    if (v4 >= 0xA0)
    {
      v5 = v5;
    }

    else
    {
      v5 = (v4 >> 4) | 0x30;
    }

    v6 = v4 & 0xF;
    LODWORD(v7) = v6 + 87;
    if (v6 >= 0xA)
    {
      v7 = v7;
    }

    else
    {
      v7 = v6 | 0x30;
    }

    [string appendFormat:@"%c%c", v5, v7];
  }

  return string;
}

- (id)ic_sha256
{
  v2 = [MEMORY[0x1E695DF88] dataWithLength:32];
  CC_SHA256([self bytes], objc_msgSend(self, "length"), objc_msgSend(v2, "mutableBytes"));
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

- (id)ic_stringValue
{
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self encoding:4];

  return v1;
}

- (uint64_t)ic_unsignedIntegerValue
{
  v4 = 0;
  v2 = [self length];
  result = 0;
  if (v2 == 8)
  {
    [self getBytes:&v4 length:8];
    return v4;
  }

  return result;
}

+ (id)ic_dataWithUnsignedInteger:()ICDataExtensions
{
  v5 = a3;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v5 length:8];

  return v3;
}

+ (uint64_t)ic_nullableData:()ICDataExtensions isEqualToNullableData:
{
  if (a3 | a4)
  {
    return [a3 isEqualToData:a4];
  }

  else
  {
    return 1;
  }
}

+ (id)ic_randomDataOfLength:()ICDataExtensions error:
{
  v6 = [MEMORY[0x1E695DF88] dataWithLength:?];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], a3, [v6 mutableBytes]))
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      *a4 = v7 = 0;
      goto LABEL_7;
    }
  }

  else if ([v6 length] == a3)
  {
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

+ (uint64_t)ic_random128BitData:()ICDataExtensions
{
  v4 = objc_opt_class();

  return [v4 ic_randomDataOfLength:16 error:a3];
}

+ (uint64_t)ic_random256BitData:()ICDataExtensions
{
  v4 = objc_opt_class();

  return [v4 ic_randomDataOfLength:32 error:a3];
}

+ (id)ic_dataFromHexString:()ICDataExtensions
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F4FCDA88];
  if ([v3 length])
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "hexString.length % 2 == 0", "+[NSData(ICDataExtensions) ic_dataFromHexString:]", 1, 0, @"Hex string must have an even length");
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v9 = 0;
  if ([v3 length] >= 2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      __str[0] = [v3 characterAtIndex:v6 - 1];
      __str[1] = [v3 characterAtIndex:v6];
      HIBYTE(v9) = strtol(__str, 0, 16);
      [v4 appendBytes:&v9 + 1 length:1];
      ++v5;
      v6 += 2;
    }

    while (v5 < [v3 length] >> 1);
  }

  return v4;
}

@end