@interface NUDigest
- (NUDigest)init;
- (id)stringValue;
- (void)addBytes:(const void *)a3 length:(int64_t)a4;
- (void)addCString:(const char *)a3;
- (void)addString:(id)a3;
- (void)finalize;
@end

@implementation NUDigest

- (void)addBytes:(const void *)a3 length:(int64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_stringValue)
  {
    v5 = NUAssertLogger_370();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"already finalized"];
      *v21 = 138543362;
      *&v21[4] = v6;
      _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v21, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v8 = NUAssertLogger_370();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v9)
      {
        v12 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v13 = MEMORY[0x1E696AF00];
        v14 = v12;
        v15 = [v13 callStackSymbols];
        v16 = [v15 componentsJoinedByString:@"\n"];
        *v21 = 138543618;
        *&v21[4] = v12;
        v22 = 2114;
        v23 = v16;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v21, 0x16u);
      }
    }

    else if (v9)
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [v10 componentsJoinedByString:@"\n"];
      *v21 = 138543362;
      *&v21[4] = v11;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v21, 0xCu);
    }

    _NUAssertFailHandler("[NUDigest addBytes:length:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUDigest.m", 83, @"already finalized", v17, v18, v19, v20, *v21);
  }

  p_context = &self->_context;

  CC_MD5_Update(p_context, a3, a4);
}

- (void)addCString:(const char *)a3
{
  v5 = strlen(a3) + 1;

  [(NUDigest *)self addBytes:a3 length:v5];
}

- (void)addString:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 maximumLengthOfBytesUsingEncoding:4];
  v6 = v7 - ((v5 + 16) & 0xFFFFFFFFFFFFFFF0);
  [v4 getCString:v6 maxLength:v5 + 1 encoding:4];

  [(NUDigest *)self addBytes:v6 length:strlen(v6) + 1];
}

- (id)stringValue
{
  [(NUDigest *)self finalize];
  stringValue = self->_stringValue;

  return stringValue;
}

- (void)finalize
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->_stringValue)
  {
    CC_MD5_Final(md, &self->_context);
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    for (i = 0; i != 16; ++i)
    {
      [v3 appendFormat:@"%02x", md[i]];
    }

    stringValue = self->_stringValue;
    self->_stringValue = v3;
  }
}

- (NUDigest)init
{
  v4.receiver = self;
  v4.super_class = NUDigest;
  v2 = [(NUDigest *)&v4 init];
  CC_MD5_Init(&v2->_context);
  return v2;
}

@end