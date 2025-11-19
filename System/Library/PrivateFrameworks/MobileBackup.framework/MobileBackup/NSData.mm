@interface NSData
+ (id)mb_dataFromHexadecimalString:(id)a3;
- (id)mb_base64EncodedFileSystemPathString;
- (id)mb_hexadecimalString;
@end

@implementation NSData

+ (id)mb_dataFromHexadecimalString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lowercaseString];

    v4 = objc_opt_new();
    v16 = 0;
    v6 = [v5 length];
    v7 = v6 - 1;
    if (v6 != 1)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        v10 = [v5 characterAtIndex:v8];
        if (v10 >= 48)
        {
          v11 = v10 & 0x7F;
          v12 = v10 <= 0x39u || v11 >= 0x61;
          v13 = !v12;
          if (v11 <= 0x66 && !v13)
          {
            __str[0] = v10;
            __str[1] = [v5 characterAtIndex:v8 + 1];
            HIBYTE(v16) = strtol(__str, 0, 16);
            [v4 appendBytes:&v16 + 1 length:1];
            v9 = v8 + 2;
          }
        }

        v8 = v9;
      }

      while (v9 < v7);
    }
  }

  return v4;
}

- (id)mb_hexadecimalString
{
  v3 = [(NSData *)self bytes];
  if (v3)
  {
    v4 = v3;
    v5 = [(NSData *)self length];
    for (i = [NSMutableString stringWithCapacity:2 * v5];
    {
      v7 = *v4++;
      v8 = [NSString stringWithFormat:@"%02lx", v7];
      [i appendString:v8];
    }

    v9 = [NSString stringWithString:i];
  }

  else
  {
    v9 = +[NSString string];
  }

  return v9;
}

- (id)mb_base64EncodedFileSystemPathString
{
  v2 = [(NSData *)self base64EncodedStringWithOptions:0];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  return v4;
}

@end