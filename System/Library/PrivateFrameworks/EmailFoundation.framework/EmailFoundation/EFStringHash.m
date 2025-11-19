@interface EFStringHash
- (BOOL)isEqual:(id)a3;
- (EFStringHash)initWithCoder:(id)a3;
- (EFStringHash)initWithData:(id)a3;
- (EFStringHash)initWithHash:(int64_t)a3;
- (EFStringHash)initWithMD5Digest:(id)a3;
- (EFStringHash)initWithString:(id)a3;
- (NSString)ef_publicDescription;
- (NSString)hexStringValue;
- (NSString)stringValue;
- (id)_hexStringFromHash:(int64_t)a3;
- (id)redactedStringValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EFStringHash

void __35__EFStringHash_redactedStringValue__block_invoke()
{
  v0 = +[EFDevice currentDevice];
  v1 = [v0 identifier];

  if (v1)
  {
    [v1 getUUIDBytes:&redactedStringValue_deviceSalt];
  }
}

- (NSString)ef_publicDescription
{
  v3 = +[EFDevice currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    [(EFStringHash *)self debugDescription];
  }

  else
  {
    [(EFStringHash *)self redactedStringValue];
  }
  v5 = ;

  return v5;
}

- (id)redactedStringValue
{
  v15 = *MEMORY[0x1E69E9840];
  if (redactedStringValue_onceToken != -1)
  {
    [EFStringHash redactedStringValue];
  }

  data = [(EFStringHash *)self primitiveHash];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v9.wbuf[12] = v3;
  *&v9.wbuf[14] = v3;
  *&v9.wbuf[8] = v3;
  *&v9.wbuf[10] = v3;
  *&v9.wbuf[4] = v3;
  *&v9.wbuf[6] = v3;
  *v9.wbuf = v3;
  *&v9.wbuf[2] = v3;
  *&v9.hash[4] = v3;
  *&v9.hash[6] = v3;
  *v9.hash = v3;
  *&v9.hash[2] = v3;
  *v9.count = v3;
  CC_SHA512_Init(&v9);
  CC_SHA512_Update(&v9, &redactedStringValue_deviceSalt, 0x10u);
  CC_SHA512_Update(&v9, &data, 8u);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v4;
  v14 = v4;
  *md = v4;
  v12 = v4;
  CC_SHA512_Final(md, &v9);
  v5 = [(EFStringHash *)self _hexStringFromHash:*md];
  v6 = [v5 substringWithRange:{2, 4}];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)hexStringValue
{
  v2 = [(EFStringHash *)self _hexStringFromHash:[(EFStringHash *)self primitiveHash]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F459BF68;
  }

  v5 = v4;

  return &v4->isa;
}

- (EFStringHash)initWithString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 ef_md5Digest];
    v6 = [(EFStringHash *)self initWithMD5Digest:v5];
  }

  else
  {
    v6 = [(EFStringHash *)self initWithHash:0];
  }

  return v6;
}

- (EFStringHash)initWithData:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 ef_md5Digest];
    v6 = [(EFStringHash *)self initWithMD5Digest:v5];
  }

  else
  {
    v6 = [(EFStringHash *)self initWithHash:0];
  }

  return v6;
}

- (EFStringHash)initWithHash:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = EFStringHash;
  result = [(EFStringHash *)&v5 init];
  if (result)
  {
    result->_primitiveHash = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[EFStringHash int64Value](self, "int64Value") && [v5 int64Value])
    {
      v6 = [(EFStringHash *)self int64Value];
      v7 = v6 == [v5 int64Value];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)stringValue
{
  v2 = [(EFStringHash *)self int64Value];
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", v2];
  }

  return v2;
}

- (id)_hexStringFromHash:(int64_t)a3
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", a3];

  return v3;
}

- (EFStringHash)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[EFStringHash initWithHash:](self, "initWithHash:", [v4 decodeInt64ForKey:@"EFPropertyKey_primitiveHash"]);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[EFStringHash primitiveHash](self forKey:{"primitiveHash"), @"EFPropertyKey_primitiveHash"}];
}

- (EFStringHash)initWithMD5Digest:(id)a3
{
  v4 = a3;
  if ([v4 length] >= 8)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v9[3] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __hashForDigest_block_invoke;
    v8[3] = &unk_1E824A218;
    v8[4] = &v10;
    v8[5] = v9;
    [v4 enumerateByteRangesUsingBlock:v8];
    v5 = v11[3];
    _Block_object_dispose(v9, 8);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [(EFStringHash *)self initWithHash:v5];
  return v6;
}

@end