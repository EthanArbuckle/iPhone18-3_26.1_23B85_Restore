@interface ClarityAVPlayerViewController
- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D229ClarityAVPlayerViewController)initWithCoder:(id)a3;
- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D229ClarityAVPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D229ClarityAVPlayerViewController)initWithPlayerLayerView:(id)a3;
- (void)playerDidFinishPlaying;
@end

@implementation ClarityAVPlayerViewController

- (void)playerDidFinishPlaying
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D229ClarityAVPlayerViewController_finishedPlayingHandler);
  v4 = self;
  v3 = sub_190D50920();
  v2(v3);
}

- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D229ClarityAVPlayerViewController)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D229ClarityAVPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D229ClarityAVPlayerViewController)initWithPlayerLayerView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end