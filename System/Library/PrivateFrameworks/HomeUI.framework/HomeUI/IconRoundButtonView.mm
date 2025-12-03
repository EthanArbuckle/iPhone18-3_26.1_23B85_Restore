@interface IconRoundButtonView
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)updateConstraints;
@end

@implementation IconRoundButtonView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for IconRoundButtonView();
  v2 = v7.receiver;
  [(IconRoundButtonView *)&v7 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  [v2 bounds];
  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  [v2 _setContinuousCornerRadius_];
  [v2 setNeedsDisplay];
}

- (CGSize)intrinsicContentSize
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for IconRoundButtonView();
  v2 = v11.receiver;
  [(IconRoundButtonView *)&v11 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension;
  swift_beginAccess();
  v8 = *&v2[v7];

  if (v4 > v8)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  if (v6 > v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_20D0F5F7C();
}

@end