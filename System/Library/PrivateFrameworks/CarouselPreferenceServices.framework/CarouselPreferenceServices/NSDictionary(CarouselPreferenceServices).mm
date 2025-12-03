@interface NSDictionary(CarouselPreferenceServices)
- (uint64_t)cslprf_BOOLForKey:()CarouselPreferenceServices withDefaultValue:;
@end

@implementation NSDictionary(CarouselPreferenceServices)

- (uint64_t)cslprf_BOOLForKey:()CarouselPreferenceServices withDefaultValue:
{
  v5 = [self objectForKey:?];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

@end