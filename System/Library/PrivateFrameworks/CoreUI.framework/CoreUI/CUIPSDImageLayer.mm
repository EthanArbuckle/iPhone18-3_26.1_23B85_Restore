@interface CUIPSDImageLayer
- (CUIPSDImageLayer)initWithCGImageRef:(CGImage *)ref;
- (void)dealloc;
@end

@implementation CUIPSDImageLayer

- (CUIPSDImageLayer)initWithCGImageRef:(CGImage *)ref
{
  v6.receiver = self;
  v6.super_class = CUIPSDImageLayer;
  v4 = [(CUIPSDLayer *)&v6 init];
  if (v4)
  {
    v4->_image = [CUIImage imageWithCGImage:ref];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDImageLayer;
  [(CUIPSDLayer *)&v3 dealloc];
}

@end