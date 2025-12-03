@interface FIUIChartBackgroundView
- (FIUIChartBackgroundView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)lineInsets;
@end

@implementation FIUIChartBackgroundView

- (FIUIChartBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = FIUIChartBackgroundView;
  v3 = [(FIUIChartBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(FIUIChartBackgroundView *)v3 setBackgroundColor:clearColor];

    [(FIUIChartBackgroundView *)v3 setOpaque:0];
  }

  return v3;
}

- (UIEdgeInsets)lineInsets
{
  top = self->_lineInsets.top;
  left = self->_lineInsets.left;
  bottom = self->_lineInsets.bottom;
  right = self->_lineInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end