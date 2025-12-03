@interface ComplicationsLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC11ClockPoster18ComplicationsLabel)initWithCoder:(id)coder;
- (_TtC11ClockPoster18ComplicationsLabel)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ComplicationsLabel

- (_TtC11ClockPoster18ComplicationsLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_contentsSpacing) = 0x4020000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_orderedContents) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_complicationViews) = MEMORY[0x1E69E7CC0];
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E48ECB88();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1E48ECD8C(0, width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC11ClockPoster18ComplicationsLabel)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end