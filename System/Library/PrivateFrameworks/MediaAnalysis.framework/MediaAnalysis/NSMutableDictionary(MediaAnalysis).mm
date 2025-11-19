@interface NSMutableDictionary(MediaAnalysis)
- (id)vcp_mutableResults;
- (uint64_t)vcp_addEntriesFromResults:()MediaAnalysis;
- (uint64_t)vcp_addFlags:()MediaAnalysis;
- (uint64_t)vcp_addStatsFlags:()MediaAnalysis;
- (uint64_t)vcp_addTypes:()MediaAnalysis;
- (uint64_t)vcp_appendResults:()MediaAnalysis;
- (void)vcp_appendResult:()MediaAnalysis forKey:;
- (void)vcp_removeResultForKey:()MediaAnalysis;
- (void)vcp_setFingerprint:()MediaAnalysis;
- (void)vcp_setFlags:()MediaAnalysis;
- (void)vcp_setQuality:()MediaAnalysis;
- (void)vcp_setResult:()MediaAnalysis forKey:;
- (void)vcp_setResults:()MediaAnalysis;
- (void)vcp_setStatsFlags:()MediaAnalysis;
- (void)vcp_setTypes:()MediaAnalysis;
- (void)vcp_setVersion:()MediaAnalysis;
@end

@implementation NSMutableDictionary(MediaAnalysis)

- (void)vcp_setVersion:()MediaAnalysis
{
  v2 = [MEMORY[0x1E696AD98] numberWithInt:?];
  [a1 setObject:? forKey:?];
}

- (void)vcp_setTypes:()MediaAnalysis
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [a1 setObject:? forKey:?];
}

- (void)vcp_setFlags:()MediaAnalysis
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [a1 setObject:? forKey:?];
}

- (void)vcp_setStatsFlags:()MediaAnalysis
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [a1 setObject:? forKey:?];
}

- (void)vcp_setQuality:()MediaAnalysis
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [a1 setObject:? forKey:?];
}

- (void)vcp_setFingerprint:()MediaAnalysis
{
  v8 = a3;
  v4 = [v8 master];

  if (v4)
  {
    v5 = [v8 master];
    [a1 setObject:v5 forKey:@"masterFingerprint"];
  }

  else
  {
    [a1 removeObjectForKey:@"masterFingerprint"];
  }

  v6 = [v8 adjusted];

  if (v6)
  {
    v7 = [v8 adjusted];
    [a1 setObject:v7 forKey:@"adjustedFingerprint"];
  }

  else
  {
    [a1 removeObjectForKey:@"adjustedFingerprint"];
  }
}

- (uint64_t)vcp_addTypes:()MediaAnalysis
{
  v4 = [a1 vcp_types] | a3;

  return [a1 vcp_setTypes:v4];
}

- (uint64_t)vcp_addFlags:()MediaAnalysis
{
  v4 = [a1 vcp_flags] | a3;

  return [a1 vcp_setFlags:v4];
}

- (uint64_t)vcp_addStatsFlags:()MediaAnalysis
{
  v4 = [a1 vcp_statsFlags] | a3;

  return [a1 vcp_setStatsFlags:v4];
}

- (id)vcp_mutableResults
{
  v2 = [a1 objectForKey:@"metadataRanges"];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    [a1 setObject:v2 forKey:@"metadataRanges"];
  }

  return v2;
}

- (void)vcp_setResult:()MediaAnalysis forKey:
{
  v9 = a3;
  v6 = a4;
  if (v9 && v6 && [v9 count])
  {
    v7 = [a1 vcp_mutableResults];
    v8 = [v9 mutableCopy];
    [v7 setObject:v8 forKey:v6];
  }
}

- (uint64_t)vcp_addEntriesFromResults:()MediaAnalysis
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__NSMutableDictionary_MediaAnalysis__vcp_addEntriesFromResults___block_invoke;
  v4[3] = &unk_1E83510D8;
  v4[4] = a1;
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)vcp_setResults:()MediaAnalysis
{
  v4 = a3;
  [a1 removeObjectForKey:@"metadataRanges"];
  [a1 vcp_addEntriesFromResults:v4];
}

- (void)vcp_appendResult:()MediaAnalysis forKey:
{
  v11 = a3;
  v6 = a4;
  if (v11 && v6 && [v11 count])
  {
    v7 = [a1 vcp_mutableResults];
    v8 = [v7 objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      [v8 addObjectsFromArray:v11];
    }

    else
    {
      v10 = [v11 mutableCopy];
      [v7 setObject:v10 forKey:v6];
    }
  }
}

- (uint64_t)vcp_appendResults:()MediaAnalysis
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NSMutableDictionary_MediaAnalysis__vcp_appendResults___block_invoke;
  v4[3] = &unk_1E83510D8;
  v4[4] = a1;
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)vcp_removeResultForKey:()MediaAnalysis
{
  v5 = a3;
  v4 = [a1 vcp_mutableResults];
  [v4 removeObjectForKey:v5];
}

@end