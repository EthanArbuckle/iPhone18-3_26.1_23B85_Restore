@interface HKUITodayCirclePulseBackground
- (void)drawRect:(CGRect)rect;
@end

@implementation HKUITodayCirclePulseBackground

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    v5 = CurrentContext;
    v6 = HKHealthKeyColor();
    [v6 setFill];

    [(HKUITodayCirclePulseBackground *)self bounds];
    CGContextFillEllipseInRect(v5, v8);

    CGContextFlush(v5);
  }
}

@end