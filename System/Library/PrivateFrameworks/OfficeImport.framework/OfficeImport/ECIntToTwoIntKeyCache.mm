@interface ECIntToTwoIntKeyCache
- (BOOL)integerIsPresentForKey1:(unint64_t)key1 key2:(unint64_t)key2 outValue:(unint64_t *)value;
- (ECIntToTwoIntKeyCache)init;
- (void)setObject:(unint64_t)object forKey1:(unint64_t)key1 key2:(unint64_t)key2;
@end

@implementation ECIntToTwoIntKeyCache

- (ECIntToTwoIntKeyCache)init
{
  v6.receiver = self;
  v6.super_class = ECIntToTwoIntKeyCache;
  v2 = [(ECIntToTwoIntKeyCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mCache = v2->mCache;
    v2->mCache = v3;
  }

  return v2;
}

- (BOOL)integerIsPresentForKey1:(unint64_t)key1 key2:(unint64_t)key2 outValue:(unint64_t *)value
{
  v7 = [ECIntToTwoIntKeyCache keyForKey1:key1 key2:key2];
  v8 = [(NSMutableDictionary *)self->mCache objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    *value = [v8 unsignedIntegerValue];
  }

  return v9 != 0;
}

- (void)setObject:(unint64_t)object forKey1:(unint64_t)key1 key2:(unint64_t)key2
{
  v8 = [ECIntToTwoIntKeyCache keyForKey1:key1 key2:key2];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:object];
  [(NSMutableDictionary *)self->mCache setObject:v7 forKeyedSubscript:v8];
}

@end