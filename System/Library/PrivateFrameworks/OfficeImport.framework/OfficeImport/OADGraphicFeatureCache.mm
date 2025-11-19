@interface OADGraphicFeatureCache
- (OADGraphicFeatureCache)init;
- (id)countedFeatureAtIndex:(unint64_t)a3;
- (unint64_t)cacheFeature:(id)a3;
- (void)dealloc;
@end

@implementation OADGraphicFeatureCache

- (OADGraphicFeatureCache)init
{
  v8.receiver = self;
  v8.super_class = OADGraphicFeatureCache;
  v2 = [(OADGraphicFeatureCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mFeatureUsageArray = v2->mFeatureUsageArray;
    v2->mFeatureUsageArray = v3;

    v5 = objc_alloc_init(OITSUNoCopyDictionary);
    mFeatureMap = v2->mFeatureMap;
    v2->mFeatureMap = v5;
  }

  return v2;
}

- (void)dealloc
{
  mFeatureUsageArray = self->mFeatureUsageArray;
  self->mFeatureUsageArray = 0;

  mFeatureMap = self->mFeatureMap;
  self->mFeatureMap = 0;

  v5.receiver = self;
  v5.super_class = OADGraphicFeatureCache;
  [(OADGraphicFeatureCache *)&v5 dealloc];
}

- (unint64_t)cacheFeature:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(OITSUNoCopyDictionary *)self->mFeatureMap objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = -[OADGraphicFeatureCache countedFeatureAtIndex:](self, "countedFeatureAtIndex:", [v5 unsignedIntegerValue]);
      [v7 incrementUsageCount];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->mFeatureUsageArray, "count") + 1}];
      v10 = [[OADCountedGraphicFeature alloc] initWithFeature:v4];
      [(NSMutableArray *)self->mFeatureUsageArray addObject:v10];

      [(OITSUNoCopyDictionary *)self->mFeatureMap setObject:v9 forKey:v4];
      v6 = v9;
    }

    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)countedFeatureAtIndex:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(NSMutableArray *)self->mFeatureUsageArray objectAtIndex:a3 - 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end