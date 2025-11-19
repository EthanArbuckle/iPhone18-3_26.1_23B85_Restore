@interface UITraitCollection(CRSUITraits)
+ (id)crsui_traitCollectionWithMapStyle:()CRSUITraits;
- (uint64_t)crsui_mapStyle;
@end

@implementation UITraitCollection(CRSUITraits)

- (uint64_t)crsui_mapStyle
{
  v1 = [a1 _valueForTraitNamed:@"CRSUIMapStyleTraitName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)crsui_traitCollectionWithMapStyle:()CRSUITraits
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v3 = [a1 _traitCollectionWithValue:v2 forTraitNamed:@"CRSUIMapStyleTraitName"];

  return v3;
}

@end