@interface DDSLinguisticAttributeFilter
- (void)addRegionWithCountry:(id)country province:(id)province city:(id)city;
@end

@implementation DDSLinguisticAttributeFilter

- (void)addRegionWithCountry:(id)country province:(id)province city:(id)city
{
  countryCopy = country;
  provinceCopy = province;
  cityCopy = city;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (countryCopy)
  {
    [v10 setObject:countryCopy forKeyedSubscript:@"Country"];
  }

  if (provinceCopy)
  {
    [v11 setObject:provinceCopy forKeyedSubscript:@"Province"];
  }

  if (cityCopy)
  {
    [v11 setObject:cityCopy forKeyedSubscript:@"City"];
  }

  [(DDSAttributeFilter *)self addAllowedValue:v11 forKey:@"AssetRegion"];
}

@end