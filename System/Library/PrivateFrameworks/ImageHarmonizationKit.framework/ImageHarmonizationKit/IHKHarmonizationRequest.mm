@interface IHKHarmonizationRequest
- (IHKHarmonizationRequest)initWithForeground:(CGImage *)foreground background:(CGImage *)background forceHarmonization:(BOOL)harmonization harmonizationStrength:(float)strength;
- (void)dealloc;
@end

@implementation IHKHarmonizationRequest

- (IHKHarmonizationRequest)initWithForeground:(CGImage *)foreground background:(CGImage *)background forceHarmonization:(BOOL)harmonization harmonizationStrength:(float)strength
{
  v14.receiver = self;
  v14.super_class = IHKHarmonizationRequest;
  v10 = [(IHKHarmonizationRequest *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_forceHarmonization = harmonization;
    v10->_fg = CGImageRetain(foreground);
    v11->_bg = CGImageRetain(background);
    v11->_harmonizationStrength = strength;
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