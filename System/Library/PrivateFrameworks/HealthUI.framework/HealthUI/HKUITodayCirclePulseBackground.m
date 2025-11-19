@interface HKUITodayCirclePulseBackground
- (void)drawRect:(CGRect)a3;
@end

@implementation HKUITodayCirclePulseBackground

- (void)drawRect:(CGRect)a3
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