@interface CUIThemeSchemaEffectRendition
- (CUIThemeSchemaEffectRendition)initWithCoreUIOptions:(id)a3 forKey:(const _renditionkeytoken *)a4;
- (id)referenceImage;
- (void)dealloc;
@end

@implementation CUIThemeSchemaEffectRendition

- (CUIThemeSchemaEffectRendition)initWithCoreUIOptions:(id)a3 forKey:(const _renditionkeytoken *)a4
{
  v9.receiver = self;
  v9.super_class = CUIThemeSchemaEffectRendition;
  v6 = [(CUIThemeSchemaEffectRendition *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CUIThemeRendition *)v6 _initializeRenditionKey:a4];
    [(CUIThemeRendition *)v7 setOpacity:1.0];
    [(CUIThemeRendition *)v7 setBlendMode:0];
    if ([NSBundle bundleWithIdentifier:@"com.apple.systemappearance"])
    {
      [(CUIThemeSchemaEffectRendition *)v7 _initializeCoreUIOptions:a3];
    }

    if (!v7->_effectPreset)
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  cuiInfo = self->_cuiInfo;
  if (cuiInfo)
  {
  }

  effectPreset = self->_effectPreset;
  if (effectPreset)
  {
  }

  referenceImage = self->_referenceImage;
  if (referenceImage)
  {
  }

  v6.receiver = self;
  v6.super_class = CUIThemeSchemaEffectRendition;
  [(CUIThemeRendition *)&v6 dealloc];
}

- (id)referenceImage
{
  result = self->_referenceImage;
  if (!result)
  {
    [(CUIThemeSchemaEffectRendition *)self _generateReferenceImage];
    return self->_referenceImage;
  }

  return result;
}

@end