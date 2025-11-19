@interface ISFallbackIconFill
- (ISFallbackIconFill)initWithImage:(CGImage *)a3 foregroundAndLightingEffectsImage:(CGImage *)a4 feedback:(id)a5;
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

- (ISFallbackIconFill)initWithImage:(CGImage *)a3 foregroundAndLightingEffectsImage:(CGImage *)a4 feedback:(id)a5
{
  v9 = a5;
  v12.receiver = self;
  v12.super_class = ISFallbackIconFill;
  v10 = [(ISFallbackIconFill *)&v12 init];
  if (v10)
  {
    v10->_image = CGImageRetain(a3);
    v10->_foregroundAndLightingEffectsImage = CGImageRetain(a4);
    objc_storeStrong(&v10->_feedback, a5);
  }

  return v10;
}

@end