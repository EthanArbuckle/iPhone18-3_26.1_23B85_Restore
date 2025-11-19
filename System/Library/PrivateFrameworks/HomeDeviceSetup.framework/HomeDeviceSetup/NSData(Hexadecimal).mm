@interface NSData(Hexadecimal)
+ (id)mb_dataFromHexadecimalString:()Hexadecimal;
- (id)mb_hexadecimalString;
@end

@implementation NSData(Hexadecimal)

+ (id)mb_dataFromHexadecimalString:()Hexadecimal
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
  v2 = [a1 bytes];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 length];
    for (i = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v4];
    {
      v6 = *v3++;
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02lx", v6];
      [i appendString:v7];
    }

    v8 = [MEMORY[0x277CCACA8] stringWithString:i];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] string];
  }

  return v8;
}

@end