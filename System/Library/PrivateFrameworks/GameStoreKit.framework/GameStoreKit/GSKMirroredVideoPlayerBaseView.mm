@interface GSKMirroredVideoPlayerBaseView
- (_TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView)initWithCoder:(id)coder;
- (_TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation GSKMirroredVideoPlayerBaseView

- (_TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView_videoLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CE65D8]) init];
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(GSKMirroredVideoPlayerBaseView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView_videoLayer];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC12GameStoreKit30GSKMirroredVideoPlayerBaseView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end