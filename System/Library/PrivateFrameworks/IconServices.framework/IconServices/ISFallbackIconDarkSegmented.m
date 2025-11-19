@interface ISFallbackIconDarkSegmented
- (ISFallbackIconDarkSegmented)initWithDarkImage:(CGImage *)a3 drawsLightingEffects:(BOOL)a4 feedback:(id)a5;
- (void)dealloc;
@end

@implementation ISFallbackIconDarkSegmented

- (ISFallbackIconDarkSegmented)initWithDarkImage:(CGImage *)a3 drawsLightingEffects:(BOOL)a4 feedback:(id)a5
{
  v9 = a5;
  v12.receiver = self;
  v12.super_class = ISFallbackIconDarkSegmented;
  v10 = [(ISFallbackIconDarkSegmented *)&v12 init];
  if (v10)
  {
    v10->_darkImage = CGImageRetain(a3);
    v10->_drawsLightingEffects = a4;
    objc_storeStrong(&v10->_feedback, a5);
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