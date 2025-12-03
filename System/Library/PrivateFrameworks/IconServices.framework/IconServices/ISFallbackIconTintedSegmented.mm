@interface ISFallbackIconTintedSegmented
- (ISFallbackIconTintedSegmented)initWithTintableImage:(CGImage *)image drawsLightingEffects:(BOOL)effects feedback:(id)feedback;
- (void)dealloc;
@end

@implementation ISFallbackIconTintedSegmented

- (ISFallbackIconTintedSegmented)initWithTintableImage:(CGImage *)image drawsLightingEffects:(BOOL)effects feedback:(id)feedback
{
  feedbackCopy = feedback;
  v12.receiver = self;
  v12.super_class = ISFallbackIconTintedSegmented;
  v10 = [(ISFallbackIconTintedSegmented *)&v12 init];
  if (v10)
  {
    v10->_tintableImage = CGImageRetain(image);
    v10->_drawsLightingEffects = effects;
    objc_storeStrong(&v10->_feedback, feedback);
  }

  return v10;
}

- (void)dealloc
{
  CGImageRelease(self->_tintableImage);
  v3.receiver = self;
  v3.super_class = ISFallbackIconTintedSegmented;
  [(ISFallbackIconTintedSegmented *)&v3 dealloc];
}

@end