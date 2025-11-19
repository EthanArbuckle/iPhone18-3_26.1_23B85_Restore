@interface BoundsChangeAwareView
- (void)setBounds:(CGRect)a3;
@end

@implementation BoundsChangeAwareView

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(BoundsChangeAwareView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = BoundsChangeAwareView;
  [(BoundsChangeAwareView *)&v13 setBounds:x, y, width, height];
  if (width != v9 || height != v11)
  {
    [(BoundsChangeAwareView *)self setNeedsLayout];
  }
}

@end