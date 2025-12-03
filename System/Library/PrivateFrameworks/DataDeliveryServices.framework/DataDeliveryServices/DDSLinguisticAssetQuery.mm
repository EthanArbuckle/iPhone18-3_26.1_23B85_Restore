@interface DDSLinguisticAssetQuery
- (DDSLinguisticAssetQuery)initWithAssetType:(id)type languageIdentifier:(id)identifier;
- (void)addRegionWithCountry:(id)country province:(id)province city:(id)city;
@end

@implementation DDSLinguisticAssetQuery

- (DDSLinguisticAssetQuery)initWithAssetType:(id)type languageIdentifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v8 = +[(DDSAttributeFilter *)DDSLinguisticAttributeFilter];
  [v8 addAssetLocale:identifierCopy];
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:identifierCopy];
  languageCode = [v9 languageCode];

  LOBYTE(v9) = [languageCode isEqualToString:identifierCopy];
  if ((v9 & 1) == 0)
  {
    [v8 addAssetLocale:languageCode];
  }

  v13.receiver = self;
  v13.super_class = DDSLinguisticAssetQuery;
  v11 = [(DDSAssetQuery *)&v13 initWithAssetType:typeCopy filter:v8];

  return v11;
}

- (void)addRegionWithCountry:(id)country province:(id)province city:(id)city
{
  cityCopy = city;
  provinceCopy = province;
  countryCopy = country;
  filter = [(DDSAssetQuery *)self filter];
  [filter addRegionWithCountry:countryCopy province:provinceCopy city:cityCopy];
}

@end