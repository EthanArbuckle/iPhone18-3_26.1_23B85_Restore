@interface IdentityProofingLivenessVideoPreviewViewController
- (_TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)playerDidFinishPlayingWithNotification:(id)notification;
- (void)toggleControlsVisibility;
- (void)togglePlayPause;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IdentityProofingLivenessVideoPreviewViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2457D9320();
}

- (void)playerDidFinishPlayingWithNotification:(id)notification
{
  v4 = sub_24590BE54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590BE44();
  selfCopy = self;
  sub_2457D9750();

  (*(v5 + 8))(v7, v4);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_2457D999C();
}

- (void)togglePlayPause
{
  selfCopy = self;
  sub_2457DA030();
}

- (void)toggleControlsVisibility
{
  selfCopy = self;
  sub_2457DA1F8();
}

- (_TtC9CoreIDVUI50IdentityProofingLivenessVideoPreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end