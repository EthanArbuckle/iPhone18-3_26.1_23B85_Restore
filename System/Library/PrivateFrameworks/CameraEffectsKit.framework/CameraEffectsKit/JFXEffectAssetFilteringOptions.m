@interface JFXEffectAssetFilteringOptions
- (JFXEffectAssetFilteringOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation JFXEffectAssetFilteringOptions

- (JFXEffectAssetFilteringOptions)init
{
  v3.receiver = self;
  v3.super_class = JFXEffectAssetFilteringOptions;
  result = [(JFXEffectAssetFilteringOptions *)&v3 init];
  if (result)
  {
    *&result->_quality = 0u;
    *&result->_usageMode = 0u;
    *&result->_contentType = 0u;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 6) = self->_filteringMode;
  *(result + 2) = self->_aspectRatio;
  *(result + 4) = self->_colorDynamicRange;
  *(result + 1) = self->_contentType;
  *(result + 5) = self->_quality;
  *(result + 3) = self->_usageMode;
  return result;
}

- (id)description
{
  v3 = [(JFXEffectAssetFilteringOptions *)self filteringMode];
  v4 = @"close";
  if (v3 == 1)
  {
    v4 = @"exact";
  }

  v5 = MEMORY[0x277CCAB68];
  v6 = v4;
  v7 = [[v5 alloc] initWithFormat:@"filteringMode %@ ", v6];

  if ([(JFXEffectAssetFilteringOptions *)self contentType])
  {
    v8 = JFX_descriptionForEffectAssetContentType([(JFXEffectAssetFilteringOptions *)self contentType]);
    [v7 appendString:v8];
  }

  if ([(JFXEffectAssetFilteringOptions *)self aspectRatio])
  {
    [v7 appendString:{@", "}];
    v9 = JFX_descriptionForEffectAssetAspectRatio([(JFXEffectAssetFilteringOptions *)self aspectRatio]);
    [v7 appendString:v9];
  }

  if ([(JFXEffectAssetFilteringOptions *)self usageMode])
  {
    [v7 appendString:{@", "}];
    v10 = JFX_descriptionForEffectAssetUsageMode([(JFXEffectAssetFilteringOptions *)self usageMode]);
    [v7 appendString:v10];
  }

  return v7;
}

@end