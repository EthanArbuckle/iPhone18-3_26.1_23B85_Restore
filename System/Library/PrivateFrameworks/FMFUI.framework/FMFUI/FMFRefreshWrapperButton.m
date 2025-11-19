@interface FMFRefreshWrapperButton
- (FMFRefreshWrapperButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)wrapperInsets;
@end

@implementation FMFRefreshWrapperButton

- (FMFRefreshWrapperButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = FMFRefreshWrapperButton;
  v3 = [(FMFRefreshWrapperButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FMFRefreshWrapperButton *)v3 setWrapperInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  return v4;
}

- (UIEdgeInsets)wrapperInsets
{
  top = self->_wrapperInsets.top;
  left = self->_wrapperInsets.left;
  bottom = self->_wrapperInsets.bottom;
  right = self->_wrapperInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end