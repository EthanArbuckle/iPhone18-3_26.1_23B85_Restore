@interface MUGradientView
- (BOOL)shouldReduceTransparency;
@end

@implementation MUGradientView

- (BOOL)shouldReduceTransparency
{
  if ([(MUGradientView *)self disableReduceTransparency])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = MUGradientView;
  return [(_MKGradientView *)&v4 shouldReduceTransparency];
}

@end