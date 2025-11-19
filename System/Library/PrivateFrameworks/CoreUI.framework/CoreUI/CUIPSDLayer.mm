@interface CUIPSDLayer
- (CUIPSDLayer)init;
- (void)dealloc;
@end

@implementation CUIPSDLayer

- (CUIPSDLayer)init
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayer;
  result = [(CUIPSDLayer *)&v3 init];
  if (result)
  {
    result->_opacity = 1.0;
    result->_blendMode = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPSDLayer;
  [(CUIPSDLayer *)&v3 dealloc];
}

@end