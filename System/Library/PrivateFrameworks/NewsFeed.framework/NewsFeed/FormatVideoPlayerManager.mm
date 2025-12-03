@interface FormatVideoPlayerManager
- (_TtC8NewsFeed24FormatVideoPlayerManager)init;
- (id)videoAdForVideoPlayerViewController:(id)controller;
- (id)videoForVideoPlayerViewController:(id)controller;
- (void)startPictureInPictureIfPossible;
- (void)videoPlayerViewController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler;
- (void)videoPlayerViewControllerDidExitFullscreen:(id)fullscreen;
- (void)videoPlayerViewControllerDidStopPictureInPicture:(id)picture;
- (void)videoPlayerViewControllerWillStartPictureInPicture:(id)picture;
@end

@implementation FormatVideoPlayerManager

- (void)startPictureInPictureIfPossible
{
  selfCopy = self;
  sub_1D6AF16CC();
}

- (_TtC8NewsFeed24FormatVideoPlayerManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)videoPlayerViewControllerWillStartPictureInPicture:(id)picture
{
  pictureCopy = picture;
  selfCopy = self;
  sub_1D6AF452C();
}

- (void)videoPlayerViewControllerDidStopPictureInPicture:(id)picture
{
  pictureCopy = picture;
  selfCopy = self;
  sub_1D6AF2E58(pictureCopy);
}

- (void)videoPlayerViewController:(id)controller restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  controllerCopy = controller;
  selfCopy = self;
  sub_1D6AF4AC8(controllerCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)videoPlayerViewControllerDidExitFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  selfCopy = self;
  sub_1D6AF360C(fullscreenCopy);
}

- (id)videoAdForVideoPlayerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1D6AF3B5C(controllerCopy);

  return v6;
}

- (id)videoForVideoPlayerViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1D6AF4C88();

  return v6;
}

@end