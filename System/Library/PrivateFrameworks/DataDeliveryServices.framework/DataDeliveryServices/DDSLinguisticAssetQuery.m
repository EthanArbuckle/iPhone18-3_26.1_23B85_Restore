@interface DDSLinguisticAssetQuery
- (DDSLinguisticAssetQuery)initWithAssetType:(id)a3 languageIdentifier:(id)a4;
- (void)addRegionWithCountry:(id)a3 province:(id)a4 city:(id)a5;
@end

@implementation DDSLinguisticAssetQuery

- (DDSLinguisticAssetQuery)initWithAssetType:(id)a3 languageIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[(DDSAttributeFilter *)DDSLinguisticAttributeFilter];
  [v8 addAssetLocale:v7];
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];
  v10 = [v9 languageCode];

  LOBYTE(v9) = [v10 isEqualToString:v7];
  if ((v9 & 1) == 0)
  {
    [v8 addAssetLocale:v10];
  }

  v13.receiver = self;
  v13.super_class = DDSLinguisticAssetQuery;
  v11 = [(DDSAssetQuery *)&v13 initWithAssetType:v6 filter:v8];

  return v11;
}

- (void)addRegionWithCountry:(id)a3 province:(id)a4 city:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(DDSAssetQuery *)self filter];
  [v11 addRegionWithCountry:v10 province:v9 city:v8];
}

@end