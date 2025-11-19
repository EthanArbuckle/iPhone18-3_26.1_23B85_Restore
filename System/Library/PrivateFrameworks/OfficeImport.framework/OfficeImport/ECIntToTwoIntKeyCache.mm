@interface ECIntToTwoIntKeyCache
- (BOOL)integerIsPresentForKey1:(unint64_t)a3 key2:(unint64_t)a4 outValue:(unint64_t *)a5;
- (ECIntToTwoIntKeyCache)init;
- (void)setObject:(unint64_t)a3 forKey1:(unint64_t)a4 key2:(unint64_t)a5;
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

- (BOOL)integerIsPresentForKey1:(unint64_t)a3 key2:(unint64_t)a4 outValue:(unint64_t *)a5
{
  v7 = [ECIntToTwoIntKeyCache keyForKey1:a3 key2:a4];
  v8 = [(NSMutableDictionary *)self->mCache objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    *a5 = [v8 unsignedIntegerValue];
  }

  return v9 != 0;
}

- (void)setObject:(unint64_t)a3 forKey1:(unint64_t)a4 key2:(unint64_t)a5
{
  v8 = [ECIntToTwoIntKeyCache keyForKey1:a4 key2:a5];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->mCache setObject:v7 forKeyedSubscript:v8];
}

@end