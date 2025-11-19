@interface HKMinimumSizeView
- (CGSize)intrinsicContentSize;
- (HKMinimumSizeView)initWithFrame:(CGRect)a3;
@end

@implementation HKMinimumSizeView

- (HKMinimumSizeView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = HKMinimumSizeView;
  result = [(HKMinimumSizeView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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