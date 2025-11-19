@interface CSFHashUtils
+ (id)sha1StringFromInputData:(id)a3;
+ (id)sha256DataFromInputData:(id)a3;
+ (id)sha256HashStringFromInputString:(id)a3;
@end

@implementation CSFHashUtils

+ (id)sha256DataFromInputData:(id)a3
{
  v3 = MEMORY[0x1E695DF88];
  v4 = a3;
  v5 = [v3 dataWithLength:32];
  v6 = [v4 bytes];
  v7 = [v4 length];

  CC_SHA256(v6, v7, [v5 mutableBytes]);

  return v5;
}

+ (id)sha1StringFromInputData:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)sha256HashStringFromInputString:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a3 cStringUsingEncoding:4];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:strlen(v3)];
  CC_SHA256([v4 bytes], objc_msgSend(v4, "length"), md);
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

@end