@interface NSMutableDictionary(OSASubmitterExtension)
- (void)_accumulateKey:()OSASubmitterExtension value:;
- (void)_recordRetirement:()OSASubmitterExtension reason:;
@end

@implementation NSMutableDictionary(OSASubmitterExtension)

- (void)_accumulateKey:()OSASubmitterExtension value:
{
  v6 = a3;
  v7 = [self objectForKeyedSubscript:v6];
  v8 = MEMORY[0x277CCABB0];
  v11 = v7;
  if (v7)
  {
    intValue = [v7 intValue];
  }

  else
  {
    intValue = 0;
  }

  v10 = [v8 numberWithLong:intValue + a4];
  [self setObject:v10 forKeyedSubscript:v6];
}

- (void)_recordRetirement:()OSASubmitterExtension reason:
{
  v8 = a3;
  v6 = a4;
  v7 = [self objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_opt_new();
    [self setObject:v7 forKeyedSubscript:v6];
  }

  [v7 _accumulateKey:v8 value:1];
}

@end