@interface BoundsChangeAwareView
- (void)setBounds:(CGRect)bounds;
@end

@implementation BoundsChangeAwareView

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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