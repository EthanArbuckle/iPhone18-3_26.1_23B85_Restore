@interface FormatVideoPlayerManager
- (_TtC8NewsFeed24FormatVideoPlayerManager)init;
- (id)videoAdForVideoPlayerViewController:(id)a3;
- (id)videoForVideoPlayerViewController:(id)a3;
- (void)startPictureInPictureIfPossible;
- (void)videoPlayerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4;
- (void)videoPlayerViewControllerDidExitFullscreen:(id)a3;
- (void)videoPlayerViewControllerDidStopPictureInPicture:(id)a3;
- (void)videoPlayerViewControllerWillStartPictureInPicture:(id)a3;
@end

@implementation FormatVideoPlayerManager

- (void)startPictureInPictureIfPossible
{
  v2 = self;
  sub_1D6AF16CC();
}

- (_TtC8NewsFeed24FormatVideoPlayerManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)videoPlayerViewControllerWillStartPictureInPicture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6AF452C();
}

- (void)videoPlayerViewControllerDidStopPictureInPicture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6AF2E58(v4);
}

- (void)videoPlayerViewController:(id)a3 restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1D6AF4AC8(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)videoPlayerViewControllerDidExitFullscreen:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D6AF360C(v4);
}

- (id)videoAdForVideoPlayerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1D6AF3B5C(v4);

  return v6;
}

- (id)videoForVideoPlayerViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1D6AF4C88();

  return v6;
}

@end