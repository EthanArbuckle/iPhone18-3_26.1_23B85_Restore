@interface _CUIThemeEffectRendition
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)effectPreset;
- (void)_setStructuredThemeStore:(id)a3;
- (void)dealloc;
@end

@implementation _CUIThemeEffectRendition

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v9.receiver = self;
  v9.super_class = _CUIThemeEffectRendition;
  v5 = [(CUIThemeRendition *)&v9 _initWithCSIHeader:a3 version:*&a4];
  v5[27] = &a3->var11.var1[a3->var11.var0 + 1] + a3->var10;
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

- (void)_setStructuredThemeStore:(id)a3
{
  if ([a3 distilledInCoreUIVersion] <= 0x192)
  {
    [(CUIThemeRendition *)self setInternalScale:2];
  }

  self->_minimumShadowSpread = 0.0;
  if ([a3 distilledInCoreUIVersion] <= 0x1CE)
  {
    self->_minimumShadowSpread = 2.0;
  }
}

@end