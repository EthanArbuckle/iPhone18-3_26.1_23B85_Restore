@interface ISFallbackIconTintedSegmented
- (ISFallbackIconTintedSegmented)initWithTintableImage:(CGImage *)a3 drawsLightingEffects:(BOOL)a4 feedback:(id)a5;
- (void)dealloc;
@end

@implementation ISFallbackIconTintedSegmented

- (ISFallbackIconTintedSegmented)initWithTintableImage:(CGImage *)a3 drawsLightingEffects:(BOOL)a4 feedback:(id)a5
{
  v9 = a5;
  v12.receiver = self;
  v12.super_class = ISFallbackIconTintedSegmented;
  v10 = [(ISFallbackIconTintedSegmented *)&v12 init];
  if (v10)
  {
    v10->_tintableImage = CGImageRetain(a3);
    v10->_drawsLightingEffects = a4;
    objc_storeStrong(&v10->_feedback, a5);
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