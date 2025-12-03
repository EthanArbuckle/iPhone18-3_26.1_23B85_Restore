@interface TranscriptNavigationBarTitleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7ChatKit32TranscriptNavigationBarTitleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TranscriptNavigationBarTitleView

- (_TtC7ChatKit32TranscriptNavigationBarTitleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView;
  type metadata accessor for TranscriptNavigationBarPrincipalView();
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for TranscriptNavigationBarTitleView();
  height = [(_UINavigationBarTitleView *)&v11 initWithFrame:x, y, width, height];
  sub_190CEACA4();

  return height;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190CEAE38();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TranscriptNavigationBarTitleView();
  [(TranscriptNavigationBarTitleView *)&v7 sizeThatFits:width, height];
  result.height = v6;
  result.width = v5;
  return result;
}

@end