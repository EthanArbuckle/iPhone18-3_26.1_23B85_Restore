@interface JFXEffectContinousPreviewImageOptions
- (id)copyWithZone:(_NSZone *)zone;
- (id)initImageOptionsWithFrameRate:(unint64_t)rate;
@end

@implementation JFXEffectContinousPreviewImageOptions

- (id)initImageOptionsWithFrameRate:(unint64_t)rate
{
  v5.receiver = self;
  v5.super_class = JFXEffectContinousPreviewImageOptions;
  result = [(JFXEffectContinousPreviewOptions *)&v5 initContinousPreviewOptions];
  if (result)
  {
    *(result + 11) = rate;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = JFXEffectContinousPreviewImageOptions;
  result = [(JFXEffectContinousPreviewOptions *)&v5 copyWithZone:zone];
  *(result + 11) = self->_preferredUpdatesPerSecond;
  return result;
}

@end