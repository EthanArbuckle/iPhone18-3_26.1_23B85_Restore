@interface CoreIDVUIButton
- (_TtC9CoreIDVUI15CoreIDVUIButton)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation CoreIDVUIButton

- (_TtC9CoreIDVUI15CoreIDVUIButton)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_originalButtonText);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton____lazy_storage___activityIndicator) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_style) = 5;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_useWatchScheme) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_isNeutralButtonColorScheme) = 0;
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for CoreIDVUIButton();
  v2 = v8.receiver;
  [(CoreIDVUIButton *)&v8 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  v5 = v4;
  [v2 bounds];
  if (v6 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  [layer setCornerRadius_];

  sub_2458B51B8();
}

@end