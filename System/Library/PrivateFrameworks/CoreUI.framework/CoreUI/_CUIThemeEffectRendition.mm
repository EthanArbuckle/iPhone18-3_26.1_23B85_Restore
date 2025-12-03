@interface _CUIThemeEffectRendition
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (id)effectPreset;
- (void)_setStructuredThemeStore:(id)store;
- (void)dealloc;
@end

@implementation _CUIThemeEffectRendition

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v9.receiver = self;
  v9.super_class = _CUIThemeEffectRendition;
  v5 = [(CUIThemeRendition *)&v9 _initWithCSIHeader:header version:*&version];
  v5[27] = &header->var11.var1[header->var11.var0 + 1] + header->var10;
  v6 = -[CUIThemeDataEffectPreset initWithEffectData:forScaleFactor:]([CUIThemeDataEffectPreset alloc], "initWithEffectData:forScaleFactor:", v5[27], [v5 internalScale]);
  v5[28] = v6;
  LODWORD(v7) = *(v5 + 58);
  [(CUIShapeEffectPreset *)v6 setMinimumShadowSpread:v7];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeEffectRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)effectPreset
{
  v2 = self->_effectPreset;

  return v2;
}

- (void)_setStructuredThemeStore:(id)store
{
  if ([store distilledInCoreUIVersion] <= 0x192)
  {
    [(CUIThemeRendition *)self setInternalScale:2];
  }

  self->_minimumShadowSpread = 0.0;
  if ([store distilledInCoreUIVersion] <= 0x1CE)
  {
    self->_minimumShadowSpread = 2.0;
  }
}

@end