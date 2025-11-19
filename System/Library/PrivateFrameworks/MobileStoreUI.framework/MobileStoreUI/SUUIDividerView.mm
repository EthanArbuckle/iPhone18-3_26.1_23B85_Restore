@interface SUUIDividerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)setDividerColor:(id)a3;
@end

@implementation SUUIDividerView

- (void)setDividerColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = SUUIDividerView;
  [(SUUIDividerView *)&v3 setBackgroundColor:a3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  dividerOrientation = self->_dividerOrientation;
  dividerSize = self->_dividerSize;
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v9 = 1.0 / v8;

  if (dividerSize >= 0.00000011920929)
  {
    v10 = dividerSize;
  }

  else
  {
    v10 = width;
  }

  if (dividerSize >= 0.00000011920929)
  {
    v11 = dividerSize;
  }

  else
  {
    v11 = height;
  }

  if (dividerOrientation)
  {
    v10 = v9;
  }

  else
  {
    v11 = v9;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

@end