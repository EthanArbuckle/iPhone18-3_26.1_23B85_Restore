@interface EditorOverlayViewModel
- (_TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel)init;
- (void)scene:(id)a3 didUpdatePosterContentsLuminanceTo:(id)a4;
- (void)scene:(id)a3 didUpdatePosterHostedContentSettingsTo:(id)a4;
@end

@implementation EditorOverlayViewModel

- (_TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scene:(id)a3 didUpdatePosterHostedContentSettingsTo:(id)a4
{
  v6 = a4;
  v8 = self;
  sub_190A31D60(a4, v7);
}

- (void)scene:(id)a3 didUpdatePosterContentsLuminanceTo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190A36C24(v7);
}

@end