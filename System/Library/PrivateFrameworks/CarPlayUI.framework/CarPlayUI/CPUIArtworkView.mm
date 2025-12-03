@interface CPUIArtworkView
- (UIImage)image;
- (UIImage)placeholderImage;
- (id)showVideoHandler;
- (int64_t)videoPlaybackState;
- (void)setImage:(id)image;
- (void)setPlaceholderImage:(id)image;
- (void)setShowVideoHandler:(id)handler;
- (void)setVideoPlaybackState:(int64_t)state;
@end

@implementation CPUIArtworkView

- (UIImage)image
{
  v3 = OBJC_IVAR____TtC9CarPlayUI15CPUIArtworkView_image;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImage:(id)image
{
  v5 = OBJC_IVAR____TtC9CarPlayUI15CPUIArtworkView_image;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = image;
  imageCopy = image;
  selfCopy = self;

  CPUIArtworkView.image.didset();
}

- (UIImage)placeholderImage
{
  v3 = OBJC_IVAR____TtC9CarPlayUI15CPUIArtworkView_placeholderImage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  CPUIArtworkView.placeholderImage.setter(image);
}

- (int64_t)videoPlaybackState
{
  v3 = OBJC_IVAR____TtC9CarPlayUI15CPUIArtworkView_videoPlaybackState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setVideoPlaybackState:(int64_t)state
{
  v5 = OBJC_IVAR____TtC9CarPlayUI15CPUIArtworkView_videoPlaybackState;
  swift_beginAccess();
  *(self + v5) = state;
  selfCopy = self;
  CPUIArtworkView.updateWrappedView()();
}

- (id)showVideoHandler
{
  v2 = (self + OBJC_IVAR____TtC9CarPlayUI15CPUIArtworkView_showVideoHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_1;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setShowVideoHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC9CarPlayUI15CPUIArtworkView_showVideoHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
}

@end