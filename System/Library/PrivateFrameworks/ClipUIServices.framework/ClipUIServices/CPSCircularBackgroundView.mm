@interface CPSCircularBackgroundView
- (void)layoutSubviews;
@end

@implementation CPSCircularBackgroundView

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CPSCircularBackgroundView;
  [(CPSCircularBackgroundView *)&v8 layoutSubviews];
  [(CPSCircularBackgroundView *)self bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  v7 = CGRectGetWidth(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  [(CPSCircularBackgroundView *)self _setContinuousCornerRadius:fmin(v7, CGRectGetHeight(v10)) * 0.5];
}

@end