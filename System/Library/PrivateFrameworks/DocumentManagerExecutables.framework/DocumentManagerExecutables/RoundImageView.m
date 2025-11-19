@interface RoundImageView
- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithFrame:(CGRect)a3;
- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithImage:(id)a3;
- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)layoutSubviews;
@end

@implementation RoundImageView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RoundImageView();
  v2 = v5.receiver;
  [(RoundImageView *)&v5 layoutSubviews];
  v3 = [v2 layer];
  [v3 setMasksToBounds_];

  v4 = [v2 layer];
  [v2 bounds];
  [v4 setCornerRadius_];
}

- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RoundImageView();
  return [(RoundImageView *)&v5 initWithImage:a3];
}

- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundImageView();
  return [(RoundImageView *)&v7 initWithImage:a3 highlightedImage:a4];
}

- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundImageView();
  return [(RoundImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundImageView();
  v4 = a3;
  v5 = [(RoundImageView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end