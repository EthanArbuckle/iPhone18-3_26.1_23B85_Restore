@interface HKMinimumSizeView
- (CGSize)intrinsicContentSize;
- (HKMinimumSizeView)initWithFrame:(CGRect)frame;
@end

@implementation HKMinimumSizeView

- (HKMinimumSizeView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = HKMinimumSizeView;
  result = [(HKMinimumSizeView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    v4 = *MEMORY[0x1E69DE788];
    result->_minimumWidth = *MEMORY[0x1E69DE788];
    result->_minimumHeight = v4;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  minimumWidth = self->_minimumWidth;
  minimumHeight = self->_minimumHeight;
  result.height = minimumHeight;
  result.width = minimumWidth;
  return result;
}

@end