@interface ISFallbackIconFill
- (ISFallbackIconFill)initWithImage:(CGImage *)image foregroundAndLightingEffectsImage:(CGImage *)effectsImage feedback:(id)feedback;
- (void)dealloc;
@end

@implementation ISFallbackIconFill

- (void)dealloc
{
  CGImageRelease(self->_image);
  CGImageRelease(self->_foregroundAndLightingEffectsImage);
  v3.receiver = self;
  v3.super_class = ISFallbackIconFill;
  [(ISFallbackIconFill *)&v3 dealloc];
}

- (ISFallbackIconFill)initWithImage:(CGImage *)image foregroundAndLightingEffectsImage:(CGImage *)effectsImage feedback:(id)feedback
{
  feedbackCopy = feedback;
  v12.receiver = self;
  v12.super_class = ISFallbackIconFill;
  v10 = [(ISFallbackIconFill *)&v12 init];
  if (v10)
  {
    v10->_image = CGImageRetain(image);
    v10->_foregroundAndLightingEffectsImage = CGImageRetain(effectsImage);
    objc_storeStrong(&v10->_feedback, feedback);
  }

  return v10;
}

@end