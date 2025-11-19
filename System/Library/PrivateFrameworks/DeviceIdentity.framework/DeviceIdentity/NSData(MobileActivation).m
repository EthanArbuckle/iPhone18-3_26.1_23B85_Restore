@interface NSData(MobileActivation)
- (id)hexString;
@end

@implementation NSData(MobileActivation)

- (id)hexString
{
  v2 = [a1 length];
  v3 = malloc_type_malloc(2 * v2, 0x38B1C265uLL);
  if (v3)
  {
    v4 = v3;
    if (v2)
    {
      v5 = 0;
      v6 = v3 + 1;
      do
      {
        v7 = *([a1 bytes] + v5);
        if (v7 <= 0x9F)
        {
          v8 = 48;
        }

        else
        {
          v8 = 55;
        }

        *(v6 - 1) = v8 + (v7 >> 4);
        v9 = *([a1 bytes] + v5) & 0xF;
        if (v9 <= 9)
        {
          v10 = 48;
        }

        else
        {
          v10 = 55;
        }

        *v6 = v10 + v9;
        v6 += 2;
        ++v5;
      }

      while (v2 != v5);
    }

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v4 length:2 * v2 encoding:1];
    free(v4);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end