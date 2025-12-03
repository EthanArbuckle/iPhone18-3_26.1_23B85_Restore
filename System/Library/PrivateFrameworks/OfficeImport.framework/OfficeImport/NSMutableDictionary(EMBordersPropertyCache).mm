@interface NSMutableDictionary(EMBordersPropertyCache)
- (id)addToCacheAndReturnCssString:()EMBordersPropertyCache;
@end

@implementation NSMutableDictionary(EMBordersPropertyCache)

- (id)addToCacheAndReturnCssString:()EMBordersPropertyCache
{
  v4 = a3;
  cssString = [self objectForKey:v4];
  if (!cssString)
  {
    cssString = [v4 cssString];
    [self setObject:cssString forKey:v4];
  }

  return cssString;
}

@end