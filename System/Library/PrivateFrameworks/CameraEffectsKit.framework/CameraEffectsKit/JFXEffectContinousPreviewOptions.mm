@interface JFXEffectContinousPreviewOptions
- (id)copyWithZone:(_NSZone *)a3;
- (id)initContinousPreviewOptions;
- (void)setEffectAnimationDuration:(id *)a3;
@end

@implementation JFXEffectContinousPreviewOptions

- (id)initContinousPreviewOptions
{
  v6.receiver = self;
  v6.super_class = JFXEffectContinousPreviewOptions;
  v2 = [(JFXEffectPreviewOptions *)&v6 initPreviewOptions];
  if (v2)
  {
    CMTimeMakeWithSeconds(&v5, 1.0, 30);
    v3 = *&v5.value;
    v2[10] = v5.epoch;
    *(v2 + 4) = v3;
    *(v2 + 32) = 1;
    v2[5] = 0;
    *(v2 + 9) = 2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = JFXEffectContinousPreviewOptions;
  v4 = [(JFXEffectPreviewOptions *)&v11 copyWithZone:a3];
  epoch = self->_effectAnimationDuration.epoch;
  v4[4] = *&self->_effectAnimationDuration.value;
  *(v4 + 10) = epoch;
  *(v4 + 32) = self->_loopAnimation;
  *(v4 + 5) = self->_backgroundType;
  v6 = MEMORY[0x245D22230](self->_renderPropertiesConfigurationBlock);
  v7 = *(v4 + 7);
  *(v4 + 7) = v6;

  v8 = [(NSArray *)self->_effectsToApplyToBackground copy];
  v9 = *(v4 + 6);
  *(v4 + 6) = v8;

  return v4;
}

- (void)setEffectAnimationDuration:(id *)a3
{
  var3 = a3->var3;
  *&self->_effectAnimationDuration.value = *&a3->var0;
  self->_effectAnimationDuration.epoch = var3;
}

@end