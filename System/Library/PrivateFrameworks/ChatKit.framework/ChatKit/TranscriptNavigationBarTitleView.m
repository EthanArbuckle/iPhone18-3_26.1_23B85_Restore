@interface TranscriptNavigationBarTitleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC7ChatKit32TranscriptNavigationBarTitleView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TranscriptNavigationBarTitleView

- (_TtC7ChatKit32TranscriptNavigationBarTitleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView;
  type metadata accessor for TranscriptNavigationBarPrincipalView();
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_delegate) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = type metadata accessor for TranscriptNavigationBarTitleView();
  v9 = [(_UINavigationBarTitleView *)&v11 initWithFrame:x, y, width, height];
  sub_190CEACA4();

  return v9;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190CEAE38();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TranscriptNavigationBarTitleView();
  [(TranscriptNavigationBarTitleView *)&v7 sizeThatFits:width, height];
  result.height = v6;
  result.width = v5;
  return result;
}

@end