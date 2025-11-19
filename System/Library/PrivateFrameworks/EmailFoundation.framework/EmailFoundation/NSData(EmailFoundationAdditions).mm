@interface NSData(EmailFoundationAdditions)
+ (id)ef_crlfData;
- (BOOL)ef_containsData:()EmailFoundationAdditions;
- (id)ef_hexString;
- (id)ef_md5Digest;
- (id)ef_sha256DigestWithSalts:()EmailFoundationAdditions;
- (uint64_t)ef_hasSuffix:()EmailFoundationAdditions;
- (uint64_t)ef_rangeOfData:()EmailFoundationAdditions options:;
- (uint64_t)ef_subdataFromIndex:()EmailFoundationAdditions;
- (void)ef_enumerateSubdataOfSize:()EmailFoundationAdditions usingBlock:;
@end

@implementation NSData(EmailFoundationAdditions)

- (id)ef_md5Digest
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__NSData_EmailFoundationAdditions__ef_md5Digest__block_invoke;
  v5[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32l;
  v5[4] = &c;
  [a1 enumerateByteRangesUsingBlock:v5];
  *md = 0;
  v8 = 0;
  CC_MD5_Final(md, &c);
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:16];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)ef_hexString
{
  v2 = [a1 length];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:2 * v2];
  v4 = [a1 bytes];
  if (v2)
  {
    v5 = v4;
    do
    {
      v6 = *v5++;
      [v3 appendFormat:@"%02X", v6];
      --v2;
    }

    while (v2);
  }

  return v3;
}

- (id)ef_sha256DigestWithSalts:()EmailFoundationAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *md = v5;
  v23 = v5;
  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v5;
  *&c.wbuf[10] = v5;
  *&c.hash[6] = v5;
  *&c.wbuf[2] = v5;
  *c.count = v5;
  *&c.hash[2] = v5;
  CC_SHA256_Init(&c);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 length])
        {
          v11 = v10;
          CC_SHA256_Update(&c, [v10 bytes], objc_msgSend(v10, "length"));
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = a1;
  CC_SHA256_Update(&c, [a1 bytes], objc_msgSend(a1, "length"));
  CC_SHA256_Final(md, &c);
  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)ef_crlfData
{
  if (ef_crlfData_onceToken != -1)
  {
    +[NSData(EmailFoundationAdditions) ef_crlfData];
  }

  v1 = ef_crlfData_crlfData;

  return v1;
}

- (uint64_t)ef_subdataFromIndex:()EmailFoundationAdditions
{
  v5 = [a1 length] - a3;

  return [a1 subdataWithRange:{a3, v5}];
}

- (void)ef_enumerateSubdataOfSize:()EmailFoundationAdditions usingBlock:
{
  v6 = a4;
  v7 = 0;
  v8 = 0;
  v13 = 0;
  do
  {
    if (v8 >= [a1 length])
    {
      break;
    }

    v9 = [a1 length];
    v10 = v7 + v9 >= a3 ? a3 : v7 + v9;
    v11 = [a1 subdataWithRange:{v8, v10}];
    v6[2](v6, v11, &v13);
    v12 = v13;

    v8 += a3;
    v7 -= a3;
  }

  while ((v12 & 1) == 0);
}

- (uint64_t)ef_rangeOfData:()EmailFoundationAdditions options:
{
  v6 = a3;
  v7 = [a1 rangeOfData:v6 options:a4 range:{0, objc_msgSend(a1, "length")}];

  return v7;
}

- (uint64_t)ef_hasSuffix:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [a1 length];
  if (v5 >= [v4 length])
  {
    v7 = [a1 subdataWithRange:{objc_msgSend(a1, "length") - objc_msgSend(v4, "length"), objc_msgSend(v4, "length")}];
    v6 = [v7 isEqualToData:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)ef_containsData:()EmailFoundationAdditions
{
  v4 = a3;
  [a1 ef_rangeOfData:v4];
  v6 = v5 == [v4 length];

  return v6;
}

@end