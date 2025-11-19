@interface _CDHashUtilities
+ (id)hexStringFromData:(id)a3;
+ (id)md5ForData:(id)a3;
+ (id)md5ForObjectDescription:(id)a3;
+ (id)md5ForString:(id)a3;
+ (id)md5forDictionary:(id)a3 error:(id *)a4;
+ (id)sha1ForData:(id)a3;
+ (id)sha1ForString:(id)a3;
+ (id)sha256Hash:(id)a3 withSalt:(id)a4;
@end

@implementation _CDHashUtilities

+ (id)sha1ForString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F05B9908;
  }

  v6 = [(__CFString *)v5 dataUsingEncoding:4];
  v7 = [a1 sha1ForData:v6];

  return v7;
}

+ (id)sha1ForData:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:"" length:0];
  }

  CC_SHA1([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)md5ForData:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    CC_MD5([v3 bytes], objc_msgSend(v3, "length"), md);
    v5 = [MEMORY[0x1E696AD60] stringWithCapacity:32];
    for (i = 0; i != 16; ++i)
    {
      [v5 appendFormat:@"%02x", md[i]];
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)md5ForString:(id)a3
{
  if (a3)
  {
    v4 = [a3 dataUsingEncoding:4];
    v5 = [a1 md5ForData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)md5ForObjectDescription:(id)a3
{
  v4 = [a3 description];
  v5 = [a1 md5ForString:v4];

  return v5;
}

+ (id)md5forDictionary:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:0 error:a4];
  if (v5)
  {
    v6 = [a1 md5ForData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)hexStringFromData:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [MEMORY[0x1E696AD60] string];
  if ([v3 length])
  {
    v6 = 0;
    do
    {
      [v5 appendFormat:@"%hhx", *(v4 + v6++)];
    }

    while ([v3 length] > v6);
  }

  v7 = [v5 copy];

  return v7;
}

+ (id)sha256Hash:(id)a3 withSalt:(id)a4
{
  v4 = 0;
  v14 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v7 = a4;
    v8 = [a3 dataUsingEncoding:4];
    v9 = [v8 mutableCopy];

    [v9 appendData:v7];
    md[0] = 0;
    CC_SHA256([v9 bytes], objc_msgSend(v9, "length"), md);
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
    v4 = [a1 hexStringFromData:v10];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end