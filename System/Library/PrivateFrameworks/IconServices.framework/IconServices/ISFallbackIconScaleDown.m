@interface ISFallbackIconScaleDown
- (ISFallbackIconScaleDown)initWithImage:(CGImage *)a3 cornerRadius:(id)a4;
- (void)dealloc;
@end

@implementation ISFallbackIconScaleDown

- (ISFallbackIconScaleDown)initWithImage:(CGImage *)a3 cornerRadius:(id)a4
{
  v7 = a4;
  v10.receiver = self;
  v10.super_class = ISFallbackIconScaleDown;
  v8 = [(ISFallbackIconScaleDown *)&v10 init];
  if (v8)
  {
    v8->_image = CGImageRetain(a3);
    objc_storeStrong(&v8->_cornerRadius, a4);
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