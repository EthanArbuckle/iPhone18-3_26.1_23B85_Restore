@interface BackgroundHighlightableButton
- (BOOL)isHighlighted;
- (_TtC18HealthExperienceUI29BackgroundHighlightableButton)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI29BackgroundHighlightableButton)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation BackgroundHighlightableButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BackgroundHighlightableButton();
  return [(BackgroundHighlightableButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackgroundHighlightableButton();
  v4 = v7.receiver;
  [(BackgroundHighlightableButton *)&v7 setHighlighted:v3];
  v5 = [v4 isHighlighted];
  v6 = &OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_highlightedColor;
  if (!v5)
  {
    v6 = &OBJC_IVAR____TtC18HealthExperienceUI29BackgroundHighlightableButton_regularColor;
  }

  [v4 setBackgroundColor_];
}

- (_TtC18HealthExperienceUI29BackgroundHighlightableButton)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI29BackgroundHighlightableButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end