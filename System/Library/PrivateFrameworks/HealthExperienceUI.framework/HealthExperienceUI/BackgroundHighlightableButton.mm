@interface BackgroundHighlightableButton
- (BOOL)isHighlighted;
- (_TtC18HealthExperienceUI29BackgroundHighlightableButton)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI29BackgroundHighlightableButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation BackgroundHighlightableButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BackgroundHighlightableButton();
  return [(BackgroundHighlightableButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackgroundHighlightableButton();
  v4 = v7.receiver;
  [(BackgroundHighlightableButton *)&v7 setHighlighted:highlightedCopy];
  isHighlighted = [v4 isHighlighted];
  v6 = &OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_highlightedColor;
  if (!isHighlighted)
  {
    v6 = &OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_regularColor;
  }

  [v4 setBackgroundColor_];
}

- (_TtC18HealthExperienceUI29BackgroundHighlightableButton)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI29BackgroundHighlightableButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end