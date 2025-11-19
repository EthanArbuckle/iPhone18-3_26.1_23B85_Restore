@interface JFXEffectContinousPreviewImageOptions
- (id)copyWithZone:(_NSZone *)a3;
- (id)initImageOptionsWithFrameRate:(unint64_t)a3;
@end

@implementation JFXEffectContinousPreviewImageOptions

- (id)initImageOptionsWithFrameRate:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = JFXEffectContinousPreviewImageOptions;
  result = [(JFXEffectContinousPreviewOptions *)&v5 initContinousPreviewOptions];
  if (result)
  {
    *(result + 11) = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = JFXEffectContinousPreviewImageOptions;
  result = [(JFXEffectContinousPreviewOptions *)&v5 copyWithZone:a3];
  *(result + 11) = self->_preferredUpdatesPerSecond;
  return result;
}

@end