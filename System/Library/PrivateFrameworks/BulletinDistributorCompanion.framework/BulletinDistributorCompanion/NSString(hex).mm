@interface NSString(hex)
- (id)fromHex;
- (id)hex;
@end

@implementation NSString(hex)

- (id)hex
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = [a1 UTF8String];
  v4 = strlen(v3);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = *v3++;
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02x", v6];
      [v2 appendString:v7];

      --v5;
    }

    while (v5);
  }

  return v2;
}

- (id)fromHex
{
  v2 = [a1 UTF8String];
  v3 = strlen(v2);
  v4 = v3;
  if ((v3 & 1) == 0)
  {
    v5 = malloc_type_malloc((v3 >> 1) + 1, 0x3FAC3504uLL);
    if (v5)
    {
      v6 = v5;
      if (!v4)
      {
LABEL_10:
        v6[v4 >> 1] = 0;
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        free(v6);
        goto LABEL_13;
      }

      v7 = 0;
      while (1)
      {
        v12[0] = v2[v7];
        v8 = v2[v7 + 1];
        v12[1] = v2[v7 + 1];
        v12[2] = 0;
        if (![a1 _validHexChar:?])
        {
          break;
        }

        if (([a1 _validHexChar:v8] & 1) == 0)
        {
          break;
        }

        v11 = 0;
        if (sscanf(v12, "%x", &v11) != 1 || !v11)
        {
          break;
        }

        v6[v7 >> 1] = v11;
        v7 += 2;
        if (v7 >= v4)
        {
          goto LABEL_10;
        }
      }

      free(v6);
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

@end