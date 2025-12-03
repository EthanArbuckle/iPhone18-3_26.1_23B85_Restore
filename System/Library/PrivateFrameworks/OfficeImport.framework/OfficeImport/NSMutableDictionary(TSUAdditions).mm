@interface NSMutableDictionary(TSUAdditions)
+ (id)tsu_dictionaryByInvertingDictionaryIfPossible:()TSUAdditions;
+ (uint64_t)tsu_dictionaryByInvertingDictionary:()TSUAdditions;
- (uint64_t)tsu_objectForKey:()TSUAdditions withDefaultOfClass:;
- (uint64_t)tsu_objectForKey:()TSUAdditions withDefaultUsingBlock:;
@end

@implementation NSMutableDictionary(TSUAdditions)

- (uint64_t)tsu_objectForKey:()TSUAdditions withDefaultUsingBlock:
{
  v7 = [self objectForKey:?];
  if (!v7)
  {
    v7 = (*(a4 + 16))(a4);
    [self setObject:v7 forKey:a3];
  }

  return v7;
}

- (uint64_t)tsu_objectForKey:()TSUAdditions withDefaultOfClass:
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__NSMutableDictionary_TSUAdditions__tsu_objectForKey_withDefaultOfClass___block_invoke;
  v5[3] = &unk_2799C63C0;
  v5[4] = a4;
  return [self tsu_objectForKey:a3 withDefaultUsingBlock:v5];
}

+ (id)tsu_dictionaryByInvertingDictionaryIfPossible:()TSUAdditions
{
  if (!a3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSMutableDictionary(TSUAdditions) tsu_dictionaryByInvertingDictionaryIfPossible:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSDictionaryAdditions.m"], 139, 0, "invalid nil value for '%{public}s'", "source");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v5 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__NSMutableDictionary_TSUAdditions__tsu_dictionaryByInvertingDictionaryIfPossible___block_invoke;
  v8[3] = &unk_2799C63E8;
  v8[4] = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [a3 count];
  if (v6 == [v5 count])
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)tsu_dictionaryByInvertingDictionary:()TSUAdditions
{
  v1 = [self tsu_dictionaryByInvertingDictionaryIfPossible:?];
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSMutableDictionary(TSUAdditions) tsu_dictionaryByInvertingDictionary:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSDictionaryAdditions.m"], 156, 0, "Source dictionary is not invertible.");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return v1;
}

@end