@interface MUPlaceHeaderButton
- (MUPlaceHeaderButton)initWithFrame:(CGRect)frame;
@end

@implementation MUPlaceHeaderButton

- (MUPlaceHeaderButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUPlaceHeaderButton;
  v3 = [(MUPlaceHeaderButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUPlaceHeaderButton *)v3 setPreferredMenuElementOrder:2];
  }

  return v4;
}

@end