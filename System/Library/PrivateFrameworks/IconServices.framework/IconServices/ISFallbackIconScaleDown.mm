@interface ISFallbackIconScaleDown
- (ISFallbackIconScaleDown)initWithImage:(CGImage *)image cornerRadius:(id)radius;
- (void)dealloc;
@end

@implementation ISFallbackIconScaleDown

- (ISFallbackIconScaleDown)initWithImage:(CGImage *)image cornerRadius:(id)radius
{
  radiusCopy = radius;
  v10.receiver = self;
  v10.super_class = ISFallbackIconScaleDown;
  v8 = [(ISFallbackIconScaleDown *)&v10 init];
  if (v8)
  {
    v8->_image = CGImageRetain(image);
    objc_storeStrong(&v8->_cornerRadius, radius);
  }

  return v8;
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = ISFallbackIconScaleDown;
  [(ISFallbackIconScaleDown *)&v3 dealloc];
}

@end