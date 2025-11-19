@interface CUIBackgroundStyleEffectConfiguration
- (BOOL)shouldIgnoreForegroundColor;
- (BOOL)shouldRespectOutputBlending;
- (CUIBackgroundStyleEffectConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation CUIBackgroundStyleEffectConfiguration

- (CUIBackgroundStyleEffectConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CUIBackgroundStyleEffectConfiguration;
  result = [(CUIStyleEffectConfiguration *)&v3 init];
  if (result)
  {
    result->_shouldRespectOutputBlending = -3;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIBackgroundStyleEffectConfiguration;
  [(CUIStyleEffectConfiguration *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CUIBackgroundStyleEffectConfiguration;
  v5 = [(CUIStyleEffectConfiguration *)&v7 copyWithZone:?];
  if (v5)
  {
    v5[10] = [(NSString *)self->_backgroundType copyWithZone:a3];
    *(v5 + 88) = self->_effectShowsValue;
  }

  return v5;
}

- (BOOL)shouldIgnoreForegroundColor
{
  v13.receiver = self;
  v13.super_class = CUIBackgroundStyleEffectConfiguration;
  LOBYTE(v3) = [(CUIStyleEffectConfiguration *)&v13 shouldIgnoreForegroundColor];
  if (self->_backgroundType && ![(CUIStyleEffectConfiguration *)self foregroundColorShouldTintEffects])
  {
    v4 = CUIConstantToMapID([(CUIBackgroundStyleEffectConfiguration *)self backgroundType]) - 32;
    if (v4 < 0x22 && ((0x27246837FuLL >> v4) & 1) != 0)
    {
      v3 = 0x1FFFFFFDFuLL >> v4;
    }

    else
    {
      v5 = [(CUIBackgroundStyleEffectConfiguration *)self backgroundType];
      _CUILog(4, "CoreUI: Invalid background type requested: %@", v6, v7, v8, v9, v10, v11, v5);
    }
  }

  return v3 & 1;
}

- (BOOL)shouldRespectOutputBlending
{
  shouldRespectOutputBlending = self->_shouldRespectOutputBlending;
  if (shouldRespectOutputBlending < 0)
  {
    v14.receiver = self;
    v14.super_class = CUIBackgroundStyleEffectConfiguration;
    LOBYTE(v3) = [(CUIStyleEffectConfiguration *)&v14 shouldRespectOutputBlending];
    if (self->_backgroundType)
    {
      v5 = CUIConstantToMapID([(CUIBackgroundStyleEffectConfiguration *)self backgroundType]) - 32;
      if (v5 < 0x1F && ((0x7246837Fu >> v5) & 1) != 0)
      {
        v3 = 0x4FB9FE90u >> v5;
      }

      else
      {
        v6 = [(CUIBackgroundStyleEffectConfiguration *)self backgroundType];
        _CUILog(4, "CoreUI: Invalid background type requested: %@", v7, v8, v9, v10, v11, v12, v6);
      }
    }
  }

  else
  {
    LOBYTE(v3) = shouldRespectOutputBlending != 0;
  }

  return v3 & 1;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIBackgroundStyleEffectConfiguration;
  return [NSString stringWithFormat:@"%@\nbackgroundType: %@\neffectShowsValue: %d", [(CUIStyleEffectConfiguration *)&v3 description], [(CUIBackgroundStyleEffectConfiguration *)self backgroundType], [(CUIBackgroundStyleEffectConfiguration *)self effectShowsValue]];
}

@end