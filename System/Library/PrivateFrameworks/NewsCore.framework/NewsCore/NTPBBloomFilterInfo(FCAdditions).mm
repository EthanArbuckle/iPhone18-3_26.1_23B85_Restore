@interface NTPBBloomFilterInfo(FCAdditions)
+ (id)fc_emptyBloomFilterInfo;
+ (id)fc_fullBloomFilterInfo;
- (uint64_t)fc_maybeContainsURL:()FCAdditions;
@end

@implementation NTPBBloomFilterInfo(FCAdditions)

+ (id)fc_fullBloomFilterInfo
{
  v0 = objc_opt_new();
  v3 = -1;
  v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v3 length:1];
  [v0 setBloomFilterData:v1];

  [v0 setHashFunctionCount:1];

  return v0;
}

+ (id)fc_emptyBloomFilterInfo
{
  v0 = objc_opt_new();
  v3 = 0;
  v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v3 length:1];
  [v0 setBloomFilterData:v1];

  [v0 setHashFunctionCount:1];

  return v0;
}

- (uint64_t)fc_maybeContainsURL:()FCAdditions
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69B70F8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [a1 bloomFilterData];
  v8 = [v6 initWithData:v7 hashFunctionCount:{objc_msgSend(a1, "hashFunctionCount")}];

  v9 = [v5 nb_domain];

  v10 = [v9 lowercaseString];

  if (v10)
  {
    v11 = v10;
    v12 = FCWebURLResolutionLog;
    if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [a1 bloomFilterData];
      *buf = 134218499;
      v20 = [v14 length];
      v21 = 1024;
      v22 = [a1 hashFunctionCount];
      v23 = 2117;
      v24 = v11;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "using bloom filter of length %zd, hash function count %d to query %{sensitive}@", buf, 0x1Cu);
    }

    v15 = [v8 maybeContainsString:v11];
  }

  else
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__NTPBBloomFilterInfo_FCAdditions__fc_maybeContainsURL___block_invoke;
    v18[3] = &unk_1E7C36F40;
    v18[4] = a1;
    __56__NTPBBloomFilterInfo_FCAdditions__fc_maybeContainsURL___block_invoke(v18);
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

@end