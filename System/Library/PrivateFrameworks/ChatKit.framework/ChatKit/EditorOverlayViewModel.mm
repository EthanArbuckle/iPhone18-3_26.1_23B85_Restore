@interface EditorOverlayViewModel
- (_TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel)init;
- (void)scene:(id)scene didUpdatePosterContentsLuminanceTo:(id)to;
- (void)scene:(id)scene didUpdatePosterHostedContentSettingsTo:(id)to;
@end

@implementation EditorOverlayViewModel

- (_TtC7ChatKitP33_F7EA248AA0ED494224E5816BFBB9B75C22EditorOverlayViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scene:(id)scene didUpdatePosterHostedContentSettingsTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  sub_190A31D60(to, v7);
}

- (void)scene:(id)scene didUpdatePosterContentsLuminanceTo:(id)to
{
  sceneCopy = scene;
  toCopy = to;
  selfCopy = self;
  sub_190A36C24(toCopy);
}

@end