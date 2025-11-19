@interface SUUIGiftThemeBackgroundView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SUUIGiftThemeBackgroundView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUUIGiftThemeBackgroundView;
  v5 = [(SUUIGiftThemeBackgroundView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {
    v6 = self->_scrollView;

    v5 = v6;
  }

  return v5;
}

@end