@interface NSMutableDictionary(EMBordersPropertyCache)
- (id)addToCacheAndReturnCssString:()EMBordersPropertyCache;
@end

@implementation NSMutableDictionary(EMBordersPropertyCache)

- (id)addToCacheAndReturnCssString:()EMBordersPropertyCache
{
  v4 = a3;
  v5 = [a1 objectForKey:v4];
  if (!v5)
  {
    v5 = [v4 cssString];
    [a1 setObject:v5 forKey:v4];
  }

  return v5;
}

@end