@interface ISFallbackIconDarkSegmented
- (ISFallbackIconDarkSegmented)initWithDarkImage:(CGImage *)image drawsLightingEffects:(BOOL)effects feedback:(id)feedback;
- (void)dealloc;
@end

@implementation ISFallbackIconDarkSegmented

- (ISFallbackIconDarkSegmented)initWithDarkImage:(CGImage *)image drawsLightingEffects:(BOOL)effects feedback:(id)feedback
{
  feedbackCopy = feedback;
  v12.receiver = self;
  v12.super_class = ISFallbackIconDarkSegmented;
  v10 = [(ISFallbackIconDarkSegmented *)&v12 init];
  if (v10)
  {
    v10->_darkImage = CGImageRetain(image);
    v10->_drawsLightingEffects = effects;
    objc_storeStrong(&v10->_feedback, feedback);
  }

  return v10;
}

- (void)dealloc
{
  CGImageRelease(self->_darkImage);
  v3.receiver = self;
  v3.super_class = ISFallbackIconDarkSegmented;
  [(ISFallbackIconDarkSegmented *)&v3 dealloc];
}

@end