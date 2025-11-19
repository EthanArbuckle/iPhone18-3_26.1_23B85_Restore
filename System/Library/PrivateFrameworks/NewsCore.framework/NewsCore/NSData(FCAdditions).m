@interface NSData(FCAdditions)
+ (id)fc_randomDataWithLength:()FCAdditions;
- (BOOL)fc_isGzipped;
- (id)fc_URLSafeBase64EncodedStringWithOptions:()FCAdditions;
- (id)fc_decryptAESSIVWithKey:()FCAdditions additionalData:;
- (id)fc_encryptAESSIVWithKey:()FCAdditions additionalData:;
- (id)fc_gzipDeflate;
- (id)fc_gzipInflate;
- (id)fc_sha256;
- (id)fc_zlibDeflate;
- (id)fc_zlibInflate;
- (uint64_t)fc_bigEndianCompareAsUnsignedInteger:()FCAdditions;
@end

@implementation NSData(FCAdditions)

- (id)fc_gzipDeflate
{
  if ([a1 length])
  {
    memset(&v8.total_out, 0, 72);
    v8.avail_in = [a1 length];
    v2 = 0;
    if (!deflateInit2_(&v8, -1, 8, 31, 8, 0, "1.2.12", 112))
    {
      v3 = [MEMORY[0x1E695DF88] dataWithLength:0x4000];
      do
      {
        total_out = v8.total_out;
        if (total_out >= [v3 length])
        {
          [v3 increaseLengthBy:0x4000];
        }

        v5 = [v3 mutableBytes];
        v8.next_out = (v5 + v8.total_out);
        v6 = [v3 length];
        v8.avail_out = v6 - LODWORD(v8.total_out);
        deflate(&v8, 4);
      }

      while (!v8.avail_out);
      deflateEnd(&v8);
      [v3 setLength:v8.total_out];
      v2 = [MEMORY[0x1E695DEF0] dataWithData:v3];
    }
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)fc_zlibInflate
{
  if (![a1 length])
  {
    v10 = a1;
    goto LABEL_14;
  }

  v2 = [a1 length];
  v3 = [a1 length];
  v4 = [MEMORY[0x1E695DF88] dataWithLength:v2 + (v3 >> 1)];
  v12.avail_in = [a1 length];
  v12.zalloc = 0;
  v12.zfree = 0;
  v12.total_out = 0;
  if (inflateInit2_(&v12, -15, "1.2.12", 112))
  {
    goto LABEL_12;
  }

  v5 = v3 >> 1;
  do
  {
    total_out = v12.total_out;
    if (total_out >= [v4 length])
    {
      [v4 increaseLengthBy:v5];
    }

    v7 = [v4 mutableBytes];
    v12.next_out = (v7 + v12.total_out);
    v8 = [v4 length];
    v12.avail_out = v8 - LODWORD(v12.total_out);
    v9 = inflate(&v12, 2);
  }

  while (!v9);
  if (v9 != 1)
  {
    inflateEnd(&v12);
    goto LABEL_12;
  }

  if (inflateEnd(&v12))
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  [v4 setLength:v12.total_out];
  v10 = [MEMORY[0x1E695DEF0] dataWithData:v4];
LABEL_13:

LABEL_14:

  return v10;
}

- (id)fc_zlibDeflate
{
  if ([a1 length])
  {
    memset(&v8.total_out, 0, 72);
    v8.avail_in = [a1 length];
    v2 = 0;
    if (!deflateInit2_(&v8, 9, 8, -15, 9, 0, "1.2.12", 112))
    {
      v3 = [MEMORY[0x1E695DF88] dataWithLength:0x4000];
      do
      {
        total_out = v8.total_out;
        if (total_out >= [v3 length])
        {
          [v3 increaseLengthBy:0x4000];
        }

        v5 = [v3 mutableBytes];
        v8.next_out = (v5 + v8.total_out);
        v6 = [v3 length];
        v8.avail_out = v6 - LODWORD(v8.total_out);
        deflate(&v8, 4);
      }

      while (!v8.avail_out);
      deflateEnd(&v8);
      [v3 setLength:v8.total_out];
      v2 = [MEMORY[0x1E695DEF0] dataWithData:v3];
    }
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)fc_gzipInflate
{
  if (![a1 length])
  {
    v10 = a1;
    goto LABEL_14;
  }

  v2 = [a1 length];
  v3 = [a1 length];
  v4 = [MEMORY[0x1E695DF88] dataWithLength:v2 + (v3 >> 1)];
  v12.avail_in = [a1 length];
  v12.zalloc = 0;
  v12.zfree = 0;
  v12.total_out = 0;
  if (inflateInit2_(&v12, 47, "1.2.12", 112))
  {
    goto LABEL_12;
  }

  v5 = v3 >> 1;
  do
  {
    total_out = v12.total_out;
    if (total_out >= [v4 length])
    {
      [v4 increaseLengthBy:v5];
    }

    v7 = [v4 mutableBytes];
    v12.next_out = (v7 + v12.total_out);
    v8 = [v4 length];
    v12.avail_out = v8 - LODWORD(v12.total_out);
    v9 = inflate(&v12, 2);
  }

  while (!v9);
  if (v9 != 1)
  {
    inflateEnd(&v12);
    goto LABEL_12;
  }

  if (inflateEnd(&v12))
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  [v4 setLength:v12.total_out];
  v10 = [MEMORY[0x1E695DEF0] dataWithData:v4];
LABEL_13:

LABEL_14:

  return v10;
}

- (BOOL)fc_isGzipped
{
  if ([a1 length] < 2)
  {
    return 0;
  }

  v2 = [a1 bytes];
  v3 = *v2;
  if (v3 != 31)
  {
    if (v3 == 120)
    {
      v4 = v2[1];
      if (v4 == 1 || v4 == 218 || v4 == 156)
      {
        return 1;
      }
    }

    return 0;
  }

  return v2[1] == 139;
}

+ (id)fc_randomDataWithLength:()FCAdditions
{
  v4 = [MEMORY[0x1E695DF88] dataWithLength:?];
  if (CCRandomGenerateBytes([v4 mutableBytes], a3))
  {

    v4 = 0;
  }

  return v4;
}

- (id)fc_encryptAESSIVWithKey:()FCAdditions additionalData:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    ccaes_siv_encrypt_mode();
    [a1 length];
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:ccsiv_ciphertext_size()];
    ccaes_siv_encrypt_mode();
    [v6 length];
    [v6 bytes];
    [v7 length];
    [v7 bytes];
    [a1 length];
    [a1 bytes];
    [v8 mutableBytes];
    if (!ccsiv_one_shot())
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "key != nil"];
    *buf = 136315906;
    v12 = "[NSData(FCAdditions) fc_encryptAESSIVWithKey:additionalData:]";
    v13 = 2080;
    v14 = "NSData+FCAdditions.m";
    v15 = 1024;
    v16 = 250;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v8 = 0;
LABEL_6:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fc_decryptAESSIVWithKey:()FCAdditions additionalData:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    ccaes_siv_encrypt_mode();
    [a1 length];
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:ccsiv_plaintext_size()];
    ccaes_siv_decrypt_mode();
    [v6 length];
    [v6 bytes];
    [v7 length];
    [v7 bytes];
    [a1 length];
    [a1 bytes];
    [v8 mutableBytes];
    if (!ccsiv_one_shot())
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "key != nil"];
    *buf = 136315906;
    v12 = "[NSData(FCAdditions) fc_decryptAESSIVWithKey:additionalData:]";
    v13 = 2080;
    v14 = "NSData+FCAdditions.m";
    v15 = 1024;
    v16 = 275;
    v17 = 2114;
    v18 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v8 = 0;
LABEL_6:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)fc_sha256
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  v1 = CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), v4);
  if (v1)
  {
    v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:32];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)fc_URLSafeBase64EncodedStringWithOptions:()FCAdditions
{
  v1 = [a1 base64EncodedStringWithOptions:?];
  v2 = [v1 mutableCopy];

  [v2 replaceOccurrencesOfString:@"+" withString:@"-" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"=" withString:&stru_1F2DC7DC0 options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (uint64_t)fc_bigEndianCompareAsUnsignedInteger:()FCAdditions
{
  v4 = a3;
  v5 = [a1 bytes];
  v6 = [v4 bytes];
  v7 = [a1 length];
  if ([v4 length] | v7)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v9 - 1;
      v11 = [a1 length];
      if (v11 <= [v4 length])
      {
        v16 = [v4 length];
        if (v16 <= [a1 length])
        {
          v14 = *v5;
          v15 = *v6;
        }

        else
        {
          v17 = [v4 length];
          v18 = [a1 length];
          v15 = *v6;
          if (v10 >= v17 - v18)
          {
            v14 = v5[v18 - v17];
          }

          else
          {
            v14 = 0;
          }
        }
      }

      else
      {
        v12 = [a1 length];
        v13 = [v4 length];
        v14 = *v5;
        if (v10 >= v12 - v13)
        {
          v15 = v6[v13 - v12];
        }

        else
        {
          v15 = 0;
        }
      }

      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v14];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v15];
      v21 = [v19 compare:v20];

      if (v21 == 1 || v21 == -1)
      {
        v22 = 1;
        v8 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = [a1 length];
      v24 = [v4 length];
      if (v23 <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23;
      }

      if (v22)
      {
        break;
      }

      ++v5;
      ++v6;
    }

    while (v9++ < v25);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end