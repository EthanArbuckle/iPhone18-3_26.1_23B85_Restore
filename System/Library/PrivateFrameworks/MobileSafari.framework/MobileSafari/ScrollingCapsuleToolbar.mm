@interface ScrollingCapsuleToolbar
- (_TtC12MobileSafari23ScrollingCapsuleToolbar)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ScrollingCapsuleToolbar

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScrollingCapsuleToolbar();
  v2 = v3.receiver;
  [(ScrollingCapsuleToolbar *)&v3 layoutSubviews];
  [*&v2[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_leadingButton] setFrame_];
  [*&v2[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_trailingButton] setFrame_];
  sub_18BAD0F40();
}

- (_TtC12MobileSafari23ScrollingCapsuleToolbar)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end