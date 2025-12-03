@interface CNPostalAddressStreetEquivalance
+ (BOOL)isStreetAddress:(id)address equivalentToStreetAddress:(id)streetAddress;
+ (id)_normalizationMap;
+ (id)normalizationMap;
+ (id)normalizeAddress:(id)address;
+ (id)normalizeComponent:(id)component;
@end

@implementation CNPostalAddressStreetEquivalance

+ (BOOL)isStreetAddress:(id)address equivalentToStreetAddress:(id)streetAddress
{
  streetAddressCopy = streetAddress;
  v7 = [self normalizeAddress:address];
  v8 = [self normalizeAddress:streetAddressCopy];

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1EF441028;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1EF441028;
  }

  v11 = [(__CFString *)v9 localizedCaseInsensitiveCompare:v10]== 0;

  return v11;
}

+ (id)normalizeAddress:(id)address
{
  v4 = [self prepareStringForNormalization:address];
  _cn_tokens = [v4 _cn_tokens];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__CNPostalAddressStreetEquivalance_normalizeAddress___block_invoke;
  v9[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
  v9[4] = self;
  v6 = [_cn_tokens _cn_map:v9];
  v7 = [v6 componentsJoinedByString:@" "];

  return v7;
}

+ (id)normalizeComponent:(id)component
{
  componentCopy = component;
  punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v6 = [componentCopy _cn_stringByDeletingCharactersInSet:punctuationCharacterSet];

  normalizationMap = [self normalizationMap];
  v8 = [normalizationMap objectForKey:v6];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = componentCopy;
  }

  v10 = v9;

  return v10;
}

+ (id)_normalizationMap
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"StreetAbbreviations" withExtension:@"plist"];

  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v3];

  return v4;
}

+ (id)normalizationMap
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CNPostalAddressStreetEquivalance_normalizationMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (normalizationMap_cn_once_token_0 != -1)
  {
    dispatch_once(&normalizationMap_cn_once_token_0, block);
  }

  v2 = normalizationMap_cn_once_object_0;

  return v2;
}

uint64_t __52__CNPostalAddressStreetEquivalance_normalizationMap__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _normalizationMap];
  v2 = normalizationMap_cn_once_object_0;
  normalizationMap_cn_once_object_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end