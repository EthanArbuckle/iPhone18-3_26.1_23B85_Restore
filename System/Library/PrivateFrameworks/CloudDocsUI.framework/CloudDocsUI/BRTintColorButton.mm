@interface BRTintColorButton
- (void)tintColorDidChange;
@end

@implementation BRTintColorButton

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = BRTintColorButton;
  [(BRTintColorButton *)&v4 tintColorDidChange];
  v3 = [(BRTintColorButton *)self tintColor];
  [(BRTintColorButton *)self setTitleColor:v3 forState:0];

  [(BRTintColorButton *)self setNeedsDisplay];
}

@end