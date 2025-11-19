@interface JFXEffectAssetAttributes
- (BOOL)isMatchingFilterAttributes:(id)a3;
- (JFXEffectAssetAttributes)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation JFXEffectAssetAttributes

- (JFXEffectAssetAttributes)init
{
  v3.receiver = self;
  v3.super_class = JFXEffectAssetAttributes;
  result = [(JFXEffectAssetAttributes *)&v3 init];
  if (result)
  {
    result->_quality = 0;
    *&result->_usageMode = 0u;
    *&result->_contentType = 0u;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  if ([(JFXEffectAssetAttributes *)self contentType])
  {
    v4 = JFX_descriptionForEffectAssetContentType([(JFXEffectAssetAttributes *)self contentType]);
    [v3 appendString:v4];
  }

  if ([(JFXEffectAssetAttributes *)self aspectRatio])
  {
    if ([v3 length])
    {
      [v3 appendString:{@", "}];
    }

    v5 = JFX_descriptionForEffectAssetAspectRatio([(JFXEffectAssetAttributes *)self aspectRatio]);
    [v3 appendString:v5];
  }

  if ([(JFXEffectAssetAttributes *)self usageMode])
  {
    if ([v3 length])
    {
      [v3 appendString:{@", "}];
    }

    v6 = JFX_descriptionForEffectAssetUsageMode([(JFXEffectAssetAttributes *)self usageMode]);
    [v3 appendString:v6];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_aspectRatio;
  *(result + 4) = self->_colorDynamicRange;
  *(result + 1) = self->_contentType;
  *(result + 5) = self->_quality;
  *(result + 3) = self->_usageMode;
  return result;
}

- (BOOL)isMatchingFilterAttributes:(id)a3
{
  v4 = a3;
  if ([v4 contentType])
  {
    v5 = [v4 contentType];
    if (v5 != [(JFXEffectAssetAttributes *)self contentType])
    {
      goto LABEL_15;
    }
  }

  if ([v4 usageMode])
  {
    if ([v4 usageMode] == 2)
    {
      if ([(JFXEffectAssetAttributes *)self usageMode]== 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = [v4 usageMode];
      if (v6 != [(JFXEffectAssetAttributes *)self usageMode])
      {
LABEL_15:
        v10 = 0;
        goto LABEL_16;
      }
    }
  }

  if ([v4 aspectRatio])
  {
    v7 = [v4 aspectRatio];
    if (v7 != [(JFXEffectAssetAttributes *)self aspectRatio])
    {
      goto LABEL_15;
    }
  }

  if ([v4 colorDynamicRange])
  {
    v8 = [v4 colorDynamicRange];
    if (v8 != [(JFXEffectAssetAttributes *)self colorDynamicRange])
    {
      goto LABEL_15;
    }
  }

  if ([v4 quality])
  {
    v9 = [v4 quality];
    if (v9 != [(JFXEffectAssetAttributes *)self quality])
    {
      goto LABEL_15;
    }
  }

  v10 = 1;
LABEL_16:

  return v10;
}

@end