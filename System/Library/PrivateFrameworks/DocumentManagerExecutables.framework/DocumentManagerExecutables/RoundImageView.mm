@interface RoundImageView
- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithFrame:(CGRect)frame;
- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithImage:(id)image;
- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)layoutSubviews;
@end

@implementation RoundImageView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RoundImageView();
  v2 = v5.receiver;
  [(RoundImageView *)&v5 layoutSubviews];
  layer = [v2 layer];
  [layer setMasksToBounds_];

  layer2 = [v2 layer];
  [v2 bounds];
  [layer2 setCornerRadius_];
}

- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithImage:(id)image
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RoundImageView();
  return [(RoundImageView *)&v5 initWithImage:image];
}

- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundImageView();
  return [(RoundImageView *)&v7 initWithImage:image highlightedImage:highlightedImage];
}

- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RoundImageView();
  return [(RoundImageView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC26DocumentManagerExecutablesP33_4F7CD631947D50D55E2268B8D828F3BC14RoundImageView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RoundImageView();
  coderCopy = coder;
  v5 = [(RoundImageView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end