@interface NSMutableDictionary(CarouselPreferenceServices)
- (void)cslprf_safeRemoveObjectForKey:()CarouselPreferenceServices;
@end

@implementation NSMutableDictionary(CarouselPreferenceServices)

- (void)cslprf_safeRemoveObjectForKey:()CarouselPreferenceServices
{
  if (a3)
  {
    return [self removeObjectForKey:?];
  }

  return self;
}

@end