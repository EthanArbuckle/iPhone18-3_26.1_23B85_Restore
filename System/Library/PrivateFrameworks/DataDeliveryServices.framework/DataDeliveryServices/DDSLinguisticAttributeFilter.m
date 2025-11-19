@interface DDSLinguisticAttributeFilter
- (void)addRegionWithCountry:(id)a3 province:(id)a4 city:(id)a5;
@end

@implementation DDSLinguisticAttributeFilter

- (void)addRegionWithCountry:(id)a3 province:(id)a4 city:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (v12)
  {
    [v10 setObject:v12 forKeyedSubscript:@"Country"];
  }

  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:@"Province"];
  }

  if (v9)
  {
    [v11 setObject:v9 forKeyedSubscript:@"City"];
  }

  [(DDSAttributeFilter *)self addAllowedValue:v11 forKey:@"AssetRegion"];
}

@end