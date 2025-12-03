@interface _CDHashUtilities
+ (id)hexStringFromData:(id)data;
+ (id)md5ForData:(id)data;
+ (id)md5ForObjectDescription:(id)description;
+ (id)md5ForString:(id)string;
+ (id)md5forDictionary:(id)dictionary error:(id *)error;
+ (id)sha1ForData:(id)data;
+ (id)sha1ForString:(id)string;
+ (id)sha256Hash:(id)hash withSalt:(id)salt;
@end

@implementation _CDHashUtilities

+ (id)sha1ForString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = stringCopy;
  }

  else
  {
    v5 = &stru_1F05B9908;
  }

  v6 = [(__CFString *)v5 dataUsingEncoding:4];
  v7 = [self sha1ForData:v6];

  return v7;
}

+ (id)sha1ForData:(id)data
{
  v9 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    dataCopy = [MEMORY[0x1E695DEF0] dataWithBytes:"" length:0];
  }

  CC_SHA1([dataCopy bytes], objc_msgSend(dataCopy, "length"), md);
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)md5ForData:(id)data
{
  v10 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    CC_MD5([dataCopy bytes], objc_msgSend(dataCopy, "length"), md);
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

+ (id)md5ForString:(id)string
{
  if (string)
  {
    v4 = [string dataUsingEncoding:4];
    v5 = [self md5ForData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)md5ForObjectDescription:(id)description
{
  v4 = [description description];
  v5 = [self md5ForString:v4];

  return v5;
}

+ (id)md5forDictionary:(id)dictionary error:(id *)error
{
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictionary requiringSecureCoding:0 error:error];
  if (v5)
  {
    v6 = [self md5ForData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)hexStringFromData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  string = [MEMORY[0x1E696AD60] string];
  if ([dataCopy length])
  {
    v6 = 0;
    do
    {
      [string appendFormat:@"%hhx", *(bytes + v6++)];
    }

    while ([dataCopy length] > v6);
  }

  v7 = [string copy];

  return v7;
}

+ (id)sha256Hash:(id)hash withSalt:(id)salt
{
  v4 = 0;
  v14 = *MEMORY[0x1E69E9840];
  if (hash && salt)
  {
    saltCopy = salt;
    v8 = [hash dataUsingEncoding:4];
    v9 = [v8 mutableCopy];

    [v9 appendData:saltCopy];
    md[0] = 0;
    CC_SHA256([v9 bytes], objc_msgSend(v9, "length"), md);
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
    v4 = [self hexStringFromData:v10];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end