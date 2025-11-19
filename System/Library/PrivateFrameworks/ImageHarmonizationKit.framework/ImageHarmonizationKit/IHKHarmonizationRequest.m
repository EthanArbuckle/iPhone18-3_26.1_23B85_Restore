@interface IHKHarmonizationRequest
- (IHKHarmonizationRequest)initWithForeground:(CGImage *)a3 background:(CGImage *)a4 forceHarmonization:(BOOL)a5 harmonizationStrength:(float)a6;
- (void)dealloc;
@end

@implementation IHKHarmonizationRequest

- (IHKHarmonizationRequest)initWithForeground:(CGImage *)a3 background:(CGImage *)a4 forceHarmonization:(BOOL)a5 harmonizationStrength:(float)a6
{
  v14.receiver = self;
  v14.super_class = IHKHarmonizationRequest;
  v10 = [(IHKHarmonizationRequest *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_forceHarmonization = a5;
    v10->_fg = CGImageRetain(a3);
    v11->_bg = CGImageRetain(a4);
    v11->_harmonizationStrength = a6;
    v12 = v11;
  }

  return v11;
}

- (void)dealloc
{
  CGImageRelease(self->_fg);
  CGImageRelease(self->_bg);
  v3.receiver = self;
  v3.super_class = IHKHarmonizationRequest;
  [(IHKHarmonizationRequest *)&v3 dealloc];
}

@end