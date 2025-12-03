@interface JFXEffectContinousPreviewOptions
- (id)copyWithZone:(_NSZone *)zone;
- (id)initContinousPreviewOptions;
- (void)setEffectAnimationDuration:(id *)duration;
@end

@implementation JFXEffectContinousPreviewOptions

- (id)initContinousPreviewOptions
{
  v6.receiver = self;
  v6.super_class = JFXEffectContinousPreviewOptions;
  initPreviewOptions = [(JFXEffectPreviewOptions *)&v6 initPreviewOptions];
  if (initPreviewOptions)
  {
    CMTimeMakeWithSeconds(&v5, 1.0, 30);
    v3 = *&v5.value;
    initPreviewOptions[10] = v5.epoch;
    *(initPreviewOptions + 4) = v3;
    *(initPreviewOptions + 32) = 1;
    initPreviewOptions[5] = 0;
    *(initPreviewOptions + 9) = 2;
  }

  return initPreviewOptions;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = JFXEffectContinousPreviewOptions;
  v4 = [(JFXEffectPreviewOptions *)&v11 copyWithZone:zone];
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

- (void)setEffectAnimationDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_effectAnimationDuration.value = *&duration->var0;
  self->_effectAnimationDuration.epoch = var3;
}

@end