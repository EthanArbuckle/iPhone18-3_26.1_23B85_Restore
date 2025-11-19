@interface MUPlaceHeaderButton
- (MUPlaceHeaderButton)initWithFrame:(CGRect)a3;
@end

@implementation MUPlaceHeaderButton

- (MUPlaceHeaderButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUPlaceHeaderButton;
  v3 = [(MUPlaceHeaderButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceHeaderButton *)v3 setPreferredMenuElementOrder:2];
  }

  return v4;
}

@end