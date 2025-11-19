@interface NSData(DAHexString)
+ (id)da_dataWithHexString:()DAHexString stringIsUppercase:;
- (id)da_hexString;
- (id)da_lowercaseHexStringWithoutSpaces;
- (id)da_uppercaseHexStringWithoutSpaces;
@end

@implementation NSData(DAHexString)

- (id)da_hexString
{
  v2 = [a1 bytes];
  v3 = [a1 length];
  v4 = malloc_type_malloc(((9 * v3) >> 2) & 0x1FFFFFFFFFFFFFFFLL, 0x7A400D58uLL);
  if (v3 < 5)
  {
    v5 = 0;
    v7 = v4;
    if (!v3)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = 0;
  v6 = v2;
  v7 = v4;
  do
  {
    v8 = 0;
    ++v7;
    do
    {
      if (*(v6 + v8) <= 0x9Fu)
      {
        v9 = (*(v6 + v8) >> 4) | 0x30;
      }

      else
      {
        v9 = (*(v6 + v8) >> 4) + 87;
      }

      *(v7 - 1) = v9;
      v10 = *(v6 + v8) & 0xF;
      if (v10 <= 9)
      {
        v11 = v10 | 0x30;
      }

      else
      {
        v11 = v10 + 87;
      }

      *v7 = v11;
      v7 += 2;
      ++v8;
    }

    while (v8 != 4);
    *(v7 - 1) = 32;
    v5 += 4;
    v3 -= 4;
    v6 += 4;
  }

  while (v3 > 4);
  if (v3)
  {
LABEL_15:
    v12 = (v2 + v5);
    do
    {
      if (*v12 <= 0x9Fu)
      {
        v13 = (*v12 >> 4) | 0x30;
      }

      else
      {
        v13 = (*v12 >> 4) + 87;
      }

      *v7 = v13;
      v14 = *v12++;
      v15 = (v14 & 0xF) + 87;
      v16 = v14 & 0xF | 0x30;
      if ((v14 & 0xFu) <= 9)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      v18 = v7 + 2;
      v7[1] = v17;
      v7 += 2;
      --v3;
    }

    while (v3);
    v7 = v18;
  }

LABEL_24:
  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v4 length:v7 - v4 encoding:1 freeWhenDone:1];

  return v19;
}

- (id)da_lowercaseHexStringWithoutSpaces
{
  v1 = [a1 da_hexString];
  v2 = [v1 mutableCopy];

  [v2 replaceOccurrencesOfString:@" " withString:&stru_285AA6518 options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)da_uppercaseHexStringWithoutSpaces
{
  v1 = [a1 da_hexString];
  v2 = [v1 uppercaseString];
  v3 = [v2 mutableCopy];

  [v3 replaceOccurrencesOfString:@" " withString:&stru_285AA6518 options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

+ (id)da_dataWithHexString:()DAHexString stringIsUppercase:
{
  v5 = a3;
  v6 = objc_opt_new();
  if (a4)
  {
    v7 = @"0123456789ABCDEF";
  }

  else
  {
    v7 = @"0123456789abcdef";
  }

  if (a4)
  {
    v8 = -55;
  }

  else
  {
    v8 = -87;
  }

  v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v7];
  if ([v5 length])
  {
    v10 = 0;
    do
    {
      v11 = v10;
      if ([v5 length] <= v10)
      {
LABEL_13:
        v13 = -1;
      }

      else
      {
        v12 = v10 + 1;
        while (1)
        {
          v10 = v12;
          v13 = [v5 characterAtIndex:v11];
          v11 = v10;
          if ([v9 characterIsMember:v13])
          {
            break;
          }

          v14 = [v5 length];
          v12 = v10 + 1;
          if (v14 <= v10)
          {
            goto LABEL_13;
          }
        }
      }

      if ([v5 length] <= v11)
      {
        break;
      }

      ++v10;
      while (1)
      {
        v15 = [v5 characterAtIndex:v11];
        if ([v9 characterIsMember:v15 & 0xFFFF])
        {
          break;
        }

        v11 = v10;
        if ([v5 length] <= v10++)
        {
          goto LABEL_26;
        }
      }

      if (v13 == -1 || v15 == -1)
      {
        break;
      }

      v17 = v13 - 48;
      if ((v13 - 48) >= 0xA)
      {
        v17 = v8 + v13;
      }

      v18 = v15 - 48;
      if ((v15 - 48) >= 0xA)
      {
        v18 = v8 + v15;
      }

      v20 = v18 + 16 * v17;
      [v6 appendBytes:&v20 length:1];
    }

    while ([v5 length] > v10);
  }

LABEL_26:

  return v6;
}

@end