@interface UITraitCollection(CRSUITraits)
+ (id)crsui_traitCollectionWithMapStyle:()CRSUITraits;
- (uint64_t)crsui_mapStyle;
@end

@implementation UITraitCollection(CRSUITraits)

- (uint64_t)crsui_mapStyle
{
  v1 = [self _valueForTraitNamed:@"CRSUIMapStyleTraitName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v1 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)crsui_traitCollectionWithMapStyle:()CRSUITraits
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v3 = [self _traitCollectionWithValue:v2 forTraitNamed:@"CRSUIMapStyleTraitName"];

  return v3;
}

@end