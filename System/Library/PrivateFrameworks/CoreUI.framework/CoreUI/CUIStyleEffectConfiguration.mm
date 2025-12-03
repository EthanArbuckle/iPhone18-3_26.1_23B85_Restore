@interface CUIStyleEffectConfiguration
- (CUIStyleEffectConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CUIStyleEffectConfiguration

- (CUIStyleEffectConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CUIStyleEffectConfiguration;
  return [(CUIStyleEffectConfiguration *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIStyleEffectConfiguration;
  [(CUIStyleEffectConfiguration *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    v4[1] = self->_state;
    v4[2] = self->_presentationState;
    v4[3] = self->_value;
    v4[4] = self->_dimension1;
    v4[5] = [(NSString *)self->_appearanceName copy];
    *(v5 + 48) = self->_useSimplifiedEffect;
    *(v5 + 49) = self->_foregroundColorShouldTintEffects;
    v5[7] = *&self->_brightnessMultiplier;
    v5[8] = *&self->_effectScale;
  }

  return v5;
}

@end