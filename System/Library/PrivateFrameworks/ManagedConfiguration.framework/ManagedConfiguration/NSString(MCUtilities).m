@interface NSString(MCUtilities)
+ (id)MCMakeUUID;
- (id)MCHashedFilenameWithPrefix:()MCUtilities extension:;
- (id)MCHashedIdentifier;
- (id)MCOldStyleSafeFilenameHashWithExtension:()MCUtilities;
- (id)MCSHA256DigestWithSalt:()MCUtilities;
- (uint64_t)MCHash;
- (uint64_t)MCSHA256DigestWithPasscodeSalt;
@end

@implementation NSString(MCUtilities)

- (id)MCHashedIdentifier
{
  v1 = [a1 MCSHA256DigestWithSalt:0];
  v2 = [v1 MCHexString];

  return v2;
}

- (id)MCHashedFilenameWithPrefix:()MCUtilities extension:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 MCHashedIdentifier];
  if (v6)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v6, v8];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v8, v13];
  }
  v9 = ;
  v10 = v9;
  if (v7)
  {
    v11 = [v9 stringByAppendingPathExtension:v7];

    v10 = v11;
  }

  return v10;
}

- (id)MCOldStyleSafeFilenameHashWithExtension:()MCUtilities
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v6 = [v5 invertedSet];
  v7 = [a1 componentsSeparatedByCharactersInSet:v6];
  v8 = [v7 componentsJoinedByString:@"_"];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@+%u", v8, objc_msgSend(a1, "MCHash")];

  if (v4)
  {
    v10 = [v9 stringByAppendingPathExtension:v4];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

- (uint64_t)MCSHA256DigestWithPasscodeSalt
{
  if (MCSHA256DigestWithPasscodeSalt_onceToken != -1)
  {
    [NSString(MCUtilities) MCSHA256DigestWithPasscodeSalt];
  }

  v2 = MCSHA256DigestWithPasscodeSalt_salt;

  return [a1 MCSHA256DigestWithSalt:v2];
}

- (id)MCSHA256DigestWithSalt:()MCUtilities
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 cStringUsingEncoding:4];
  v6 = strlen(v5);
  memset(&v10, 0, sizeof(v10));
  CC_SHA256_Init(&v10);
  if ([v4 length])
  {
    CC_SHA256_Update(&v10, [v4 bytes], objc_msgSend(v4, "length"));
  }

  CC_SHA256_Update(&v10, v5, v6);
  CC_SHA256_Final(md, &v10);
  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (uint64_t)MCHash
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  v3 = v10;
  if (v2 >= 0x61)
  {
    [a1 getCharacters:v10 range:{0, 32}];
    [a1 getCharacters:&v11 range:{(v2 >> 1) - 16, 32}];
    [a1 getCharacters:&v12 range:{v2 - 32, 32}];
    v4 = &v13;
    v5 = &v13;
LABEL_5:
    v3 = v10;
    v6 = v2;
    do
    {
      v6 = 67503105 * v6 + 16974593 * *v3 + 66049 * v3[1] + 257 * v3[2] + v3[3];
      v3 += 4;
    }

    while (v3 < v5);
    goto LABEL_10;
  }

  [a1 getCharacters:v10 range:{0, v2}];
  v4 = &v10[v2];
  if ((v2 & 0x7C) != 0)
  {
    v5 = &v10[v2 & 0x7C];
    goto LABEL_5;
  }

  v6 = v2;
LABEL_10:
  while (v3 < v4)
  {
    v7 = *v3++;
    v6 = 257 * v6 + v7;
  }

  v8 = *MEMORY[0x1E69E9840];
  return ((v6 << v2) + v6);
}

+ (id)MCMakeUUID
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);
  v3 = [MEMORY[0x1E696AEC0] _newZStringWithString:v2];

  return v3;
}

@end