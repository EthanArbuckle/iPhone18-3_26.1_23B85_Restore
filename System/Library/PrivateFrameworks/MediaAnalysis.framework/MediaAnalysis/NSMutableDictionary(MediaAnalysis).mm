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
  [self setObject:? forKey:?];
}

- (void)vcp_setTypes:()MediaAnalysis
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [self setObject:? forKey:?];
}

- (void)vcp_setFlags:()MediaAnalysis
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  [self setObject:? forKey:?];
}

- (void)vcp_setStatsFlags:()MediaAnalysis
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [self setObject:? forKey:?];
}

- (void)vcp_setQuality:()MediaAnalysis
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [self setObject:? forKey:?];
}

- (void)vcp_setFingerprint:()MediaAnalysis
{
  v8 = a3;
  master = [v8 master];

  if (master)
  {
    master2 = [v8 master];
    [self setObject:master2 forKey:@"masterFingerprint"];
  }

  else
  {
    [self removeObjectForKey:@"masterFingerprint"];
  }

  adjusted = [v8 adjusted];

  if (adjusted)
  {
    adjusted2 = [v8 adjusted];
    [self setObject:adjusted2 forKey:@"adjustedFingerprint"];
  }

  else
  {
    [self removeObjectForKey:@"adjustedFingerprint"];
  }
}

- (uint64_t)vcp_addTypes:()MediaAnalysis
{
  v4 = [self vcp_types] | a3;

  return [self vcp_setTypes:v4];
}

- (uint64_t)vcp_addFlags:()MediaAnalysis
{
  v4 = [self vcp_flags] | a3;

  return [self vcp_setFlags:v4];
}

- (uint64_t)vcp_addStatsFlags:()MediaAnalysis
{
  v4 = [self vcp_statsFlags] | a3;

  return [self vcp_setStatsFlags:v4];
}

- (id)vcp_mutableResults
{
  dictionary = [self objectForKey:@"metadataRanges"];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [self setObject:dictionary forKey:@"metadataRanges"];
  }

  return dictionary;
}

- (void)vcp_setResult:()MediaAnalysis forKey:
{
  v9 = a3;
  v6 = a4;
  if (v9 && v6 && [v9 count])
  {
    vcp_mutableResults = [self vcp_mutableResults];
    v8 = [v9 mutableCopy];
    [vcp_mutableResults setObject:v8 forKey:v6];
  }
}

- (uint64_t)vcp_addEntriesFromResults:()MediaAnalysis
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__NSMutableDictionary_MediaAnalysis__vcp_addEntriesFromResults___block_invoke;
  v4[3] = &unk_1E83510D8;
  v4[4] = self;
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)vcp_setResults:()MediaAnalysis
{
  v4 = a3;
  [self removeObjectForKey:@"metadataRanges"];
  [self vcp_addEntriesFromResults:v4];
}

- (void)vcp_appendResult:()MediaAnalysis forKey:
{
  v11 = a3;
  v6 = a4;
  if (v11 && v6 && [v11 count])
  {
    vcp_mutableResults = [self vcp_mutableResults];
    v8 = [vcp_mutableResults objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      [v8 addObjectsFromArray:v11];
    }

    else
    {
      v10 = [v11 mutableCopy];
      [vcp_mutableResults setObject:v10 forKey:v6];
    }
  }
}

- (uint64_t)vcp_appendResults:()MediaAnalysis
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__NSMutableDictionary_MediaAnalysis__vcp_appendResults___block_invoke;
  v4[3] = &unk_1E83510D8;
  v4[4] = self;
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)vcp_removeResultForKey:()MediaAnalysis
{
  v5 = a3;
  vcp_mutableResults = [self vcp_mutableResults];
  [vcp_mutableResults removeObjectForKey:v5];
}

@end