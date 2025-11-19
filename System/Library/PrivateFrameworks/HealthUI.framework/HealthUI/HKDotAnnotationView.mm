@interface HKDotAnnotationView
- (HKDotAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (void)drawRect:(CGRect)a3;
@end

@implementation HKDotAnnotationView

- (HKDotAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = HKDotAnnotationView;
  v4 = [(MKAnnotationView *)&v7 initWithAnnotation:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HKDotAnnotationView *)v4 setOpaque:0];
  }

  return v5;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    v9 = CurrentContext;
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [v10 setFill];

    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    CGContextFillEllipseInRect(v9, v12);
    [(UIColor *)self->_dotColor setFill];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v14 = CGRectInset(v13, 4.0, 4.0);

    CGContextFillEllipseInRect(v9, v14);
  }
}

@end