@interface NSData(ContactsFoundation)
+ (id)_cn_dataFromHexString:()ContactsFoundation;
- (BOOL)_cn_containsData:()ContactsFoundation;
- (id)_cn_SHA1String;
- (id)_cn_SHA256HashDataWithSalt:()ContactsFoundation;
- (id)_cn_decodeBase64;
- (id)_cn_decodeBase64IgnoringWhitespace;
- (id)_cn_hexString;
- (id)_cn_md5Hash;
- (id)_cn_padDataToLength:()ContactsFoundation;
- (id)_cn_trimTrailingZeros;
- (id)_cn_writeToURL:()ContactsFoundation options:;
- (uint64_t)_cn_distanceFromData:()ContactsFoundation;
@end

@implementation NSData(ContactsFoundation)

- (id)_cn_hexString
{
  v2 = [self length];
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v2];
  bytes = [self bytes];
  if ([self length])
  {
    v5 = 0;
    do
    {
      [v3 appendFormat:@"%02lX", *(bytes + v5++)];
    }

    while (v5 < [self length]);
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithString:v3];

  return v6;
}

- (id)_cn_md5Hash
{
  v2 = [MEMORY[0x1E695DF88] dataWithLength:16];
  CC_MD5([self bytes], objc_msgSend(self, "length"), objc_msgSend(v2, "mutableBytes"));

  return v2;
}

- (BOOL)_cn_containsData:()ContactsFoundation
{
  v4 = a3;
  v5 = [self rangeOfData:v4 options:0 range:{0, objc_msgSend(self, "length")}];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_cn_decodeBase64
{
  v2 = [MEMORY[0x1E695DF88] dataWithCapacity:{(3 * objc_msgSend(self, "length")) >> 2}];
  bytes = [self bytes];
  v4 = [self length];
  if (v4 < 1)
  {
    goto LABEL_58;
  }

  v5 = bytes + v4;
  do
  {
    v6 = 0;
    v7 = 0;
    v8 = (bytes + 1);
    v9 = 1;
    while (1)
    {
      v10 = Decode64Table[*(v8 - 1) & 0x7F];
      if (v10 <= 0xFC)
      {
        if (v10 == 251)
        {
          v11 = v7 == 0;
          if (v7)
          {
            v12 = v6;
          }

          else
          {
            v12 = v6 + 1;
          }

          if (v6 >= 2)
          {
            v11 = 0;
          }

          v13 = (v9 & 1) == 0;
          if (v9)
          {
            v6 = v12;
          }
        }

        else
        {
          if (v10 == 252)
          {
            if ((v9 & (v7 == 0)) != 0)
            {
              v7 = (v8 - 1);
            }

            goto LABEL_26;
          }

LABEL_22:
          v11 = (v6 | v7) == 0;
          v13 = (v9 & 1) == 0;
        }

        v9 = !v13 && v11;
        goto LABEL_26;
      }

      if (v10 != 255)
      {
        break;
      }

      v9 = 0;
LABEL_26:
      v14 = v8 + 1;
      if (v8++ >= v5)
      {
        v16 = 0;
        v17 = (v14 - 1);
        if (v9)
        {
          v18 = 0;
          goto LABEL_36;
        }

LABEL_42:
        if (v16)
        {
          v23 = v17;
        }

        else
        {
          v23 = v5;
        }

        v24 = v23 - bytes;
        v25 = v2;
        v26 = bytes;
LABEL_56:
        [v25 appendBytes:v26 length:v24];
        goto LABEL_57;
      }
    }

    if (v10 == 254)
    {
      v19 = v8 - 1;
      goto LABEL_34;
    }

    if (v10 != 253)
    {
      goto LABEL_22;
    }

    v19 = v8 - 1;
    if (v8 < v5 && *v8 == 10)
    {
      v19 = v8;
    }

LABEL_34:
    v17 = (v19 + 1);
    v16 = (v19 + 1) < v5;
    if ((v9 & 1) == 0)
    {
      goto LABEL_42;
    }

    v18 = v8 - 1;
LABEL_36:
    if (!v7)
    {
      v7 = v18;
    }

    if (!v7)
    {
      v7 = v5;
    }

    v20 = v6 + bytes;
    v21 = v7 - v20;
    if (v7 == v20)
    {
      v22 = 0;
    }

    else
    {
      v27 = 0;
      v22 = 0;
      do
      {
        v28 = Decode64Table[*(bytes + v27) & 0x7F];
        if ((v28 & 0x8000000000000000) == 0)
        {
          v22 = v28 + (v22 << 6);
          if ((~v27 & 3) == 0)
          {
            v30 = BYTE2(v22);
            [v2 appendBytes:&v30 length:1];
            v31 = BYTE1(v22);
            [v2 appendBytes:&v31 length:1];
            v32 = v22;
            [v2 appendBytes:&v32 length:1];
            v22 = 0;
          }
        }

        ++v27;
      }

      while (v21 != v27);
    }

    if ((v21 & 3) >= 2)
    {
      if ((v21 & 3) == 2)
      {
        v35 = v22 >> 4;
        v26 = &v35;
      }

      else
      {
        v33 = v22 >> 10;
        [v2 appendBytes:&v33 length:1];
        v34 = v22 >> 2;
        v26 = &v34;
      }

      v25 = v2;
      v24 = 1;
      goto LABEL_56;
    }

LABEL_57:
    bytes = v17;
  }

  while (v16);
LABEL_58:

  return v2;
}

- (id)_cn_decodeBase64IgnoringWhitespace
{
  v2 = [MEMORY[0x1E695DF88] dataWithCapacity:{(3 * objc_msgSend(self, "length")) >> 2}];
  bytes = [self bytes];
  v4 = [self length];
  if (v4 < 1)
  {
    goto LABEL_28;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = bytes + v4;
  v9 = bytes + 1;
  do
  {
    v10 = Decode64Table[*(v9 - 1) & 0x7F];
    if ((v10 - 252) >= 3)
    {
      if (v10 == 251)
      {
        v7 <<= 6;
        ++v5;
        v12 = ++v6 < 3;
        goto LABEL_13;
      }

      if (v10 == 255 || v6 != 0)
      {
        goto LABEL_28;
      }

      v6 = 0;
      v7 = v10 + (v7 << 6);
      ++v5;
    }

    v12 = 1;
LABEL_13:
    if (v5 == 4 && v12)
    {
      v15 = BYTE2(v7);
      LOBYTE(v12) = 1;
      [v2 appendBytes:&v15 length:1];
      if (v6 > 1)
      {
        v7 = 0;
        v5 = 0;
      }

      else
      {
        v16 = BYTE1(v7);
        LOBYTE(v12) = 1;
        [v2 appendBytes:&v16 length:1];
        if (v6)
        {
          v7 = 0;
          v5 = 0;
          v6 = 1;
        }

        else
        {
          v17 = v7;
          LOBYTE(v12) = 1;
          [v2 appendBytes:&v17 length:1];
          v7 = 0;
          v5 = 0;
        }
      }
    }

    if (v9 >= v8)
    {
      break;
    }

    ++v9;
  }

  while (v12);
  if (v5 != 0 && v12)
  {
    if (v5 == 3)
    {
      v19 = v7 >> 10;
      [v2 appendBytes:&v19 length:1];
      v20 = v7 >> 2;
      v13 = &v20;
LABEL_27:
      [v2 appendBytes:v13 length:1];
    }

    else if (v5 == 2)
    {
      v18 = v7 >> 4;
      v13 = &v18;
      goto LABEL_27;
    }
  }

LABEL_28:

  return v2;
}

- (id)_cn_SHA256HashDataWithSalt:()ContactsFoundation
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 dataUsingEncoding:4];
  v5 = [MEMORY[0x1E695DF88] dataWithData:v4];
  [v5 appendData:self];
  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), md);
  v6 = 0;
  v7 = v13;
  do
  {
    v8 = md[v6];
    *(v7 - 1) = cn_nibbleToChar_byteMap[v8 >> 4];
    *v7 = cn_nibbleToChar_byteMap[v8 & 0xF];
    v7 += 2;
    ++v6;
  }

  while (v6 != 32);
  v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v12 length:64];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_cn_SHA1String
{
  v6 = *MEMORY[0x1E69E9840];
  CC_SHA1([self bytes], objc_msgSend(self, "length"), md);
  string = [MEMORY[0x1E696AD60] string];
  for (i = 0; i != 20; ++i)
  {
    [string appendFormat:@"%x", md[i]];
  }

  v3 = *MEMORY[0x1E69E9840];

  return string;
}

+ (id)_cn_dataFromHexString:()ContactsFoundation
{
  lowercaseString = [a3 lowercaseString];
  data = [MEMORY[0x1E695DF88] data];
  v15 = 0;
  v5 = [lowercaseString length];
  v6 = v5 - 1;
  if (v5 != 1)
  {
    v7 = 0;
    do
    {
      v8 = v7 + 1;
      v9 = [lowercaseString characterAtIndex:v7];
      if (v9 >= 48)
      {
        v10 = v9 & 0x7F;
        v11 = v9 <= 0x39u || v10 >= 0x61;
        v12 = !v11;
        if (v10 <= 0x66 && !v12)
        {
          __str[0] = v9;
          __str[1] = [lowercaseString characterAtIndex:v7 + 1];
          HIBYTE(v15) = strtol(__str, 0, 16);
          [data appendBytes:&v15 + 1 length:1];
          v8 = v7 + 2;
        }
      }

      v7 = v8;
    }

    while (v8 < v6);
  }

  return data;
}

- (id)_cn_writeToURL:()ContactsFoundation options:
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__NSData_ContactsFoundation___cn_writeToURL_options___block_invoke;
  v10[3] = &unk_1E6ED7A18;
  v10[4] = self;
  v11 = v6;
  v12 = a4;
  v7 = v6;
  v8 = [CNFuture futureWithBlock:v10];

  return v8;
}

- (id)_cn_trimTrailingZeros
{
  bytes = [self bytes];
  v3 = [self length];
  if (v3)
  {
    v4 = v3;
    while (!*(bytes - 1 + v4))
    {
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    if (v4 >= [self length])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = [self subdataWithRange:{0, v4}];
    }
  }

  else
  {
LABEL_5:
    selfCopy = [MEMORY[0x1E695DEF0] data];
  }

  return selfCopy;
}

- (id)_cn_padDataToLength:()ContactsFoundation
{
  if ([self length] >= a3)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self mutableCopy];
    [selfCopy increaseLengthBy:{a3 - objc_msgSend(self, "length")}];
  }

  return selfCopy;
}

- (uint64_t)_cn_distanceFromData:()ContactsFoundation
{
  v4 = a3;
  v5 = [self length];
  if (v5 == [v4 length])
  {
    if (([self isEqualToData:v4] & 1) != 0 || (v6 = objc_msgSend(self, "bytes"), v7 = objc_msgSend(v4, "bytes"), (v8 = objc_msgSend(self, "length")) == 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      do
      {
        v12 = *v6++;
        v11 = v12;
        v13 = *v7++;
        v9.i32[0] = v13 ^ v11;
        v9 = vcnt_s8(v9);
        v9.i16[0] = vaddlv_u8(v9);
        v10 += v9.u32[0];
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

@end