@interface EFStringHash
- (BOOL)isEqual:(id)equal;
- (EFStringHash)initWithCoder:(id)coder;
- (EFStringHash)initWithData:(id)data;
- (EFStringHash)initWithHash:(int64_t)hash;
- (EFStringHash)initWithMD5Digest:(id)digest;
- (EFStringHash)initWithString:(id)string;
- (NSString)ef_publicDescription;
- (NSString)hexStringValue;
- (NSString)stringValue;
- (id)_hexStringFromHash:(int64_t)hash;
- (id)redactedStringValue;
- (void)encodeWithCoder:(id)coder;
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
  isInternal = [v3 isInternal];

  if (isInternal)
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

- (EFStringHash)initWithString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    ef_md5Digest = [stringCopy ef_md5Digest];
    v6 = [(EFStringHash *)self initWithMD5Digest:ef_md5Digest];
  }

  else
  {
    v6 = [(EFStringHash *)self initWithHash:0];
  }

  return v6;
}

- (EFStringHash)initWithData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    ef_md5Digest = [dataCopy ef_md5Digest];
    v6 = [(EFStringHash *)self initWithMD5Digest:ef_md5Digest];
  }

  else
  {
    v6 = [(EFStringHash *)self initWithHash:0];
  }

  return v6;
}

- (EFStringHash)initWithHash:(int64_t)hash
{
  v5.receiver = self;
  v5.super_class = EFStringHash;
  result = [(EFStringHash *)&v5 init];
  if (result)
  {
    result->_primitiveHash = hash;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[EFStringHash int64Value](self, "int64Value") && [v5 int64Value])
    {
      int64Value = [(EFStringHash *)self int64Value];
      v7 = int64Value == [v5 int64Value];
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
  int64Value = [(EFStringHash *)self int64Value];
  if (int64Value)
  {
    int64Value = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", int64Value];
  }

  return int64Value;
}

- (id)_hexStringFromHash:(int64_t)hash
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", hash];

  return v3;
}

- (EFStringHash)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[EFStringHash initWithHash:](self, "initWithHash:", [coderCopy decodeInt64ForKey:@"EFPropertyKey_primitiveHash"]);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[EFStringHash primitiveHash](self forKey:{"primitiveHash"), @"EFPropertyKey_primitiveHash"}];
}

- (EFStringHash)initWithMD5Digest:(id)digest
{
  digestCopy = digest;
  if ([digestCopy length] >= 8)
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
    [digestCopy enumerateByteRangesUsingBlock:v8];
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