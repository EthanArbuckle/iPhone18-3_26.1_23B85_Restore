@interface CameraTrayViewController
- (_TtC16MagnifierSupport24CameraTrayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (uint64_t)detectionMenuActionTriggered:;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)didTapActivitiesButton:(id)button;
- (void)didTapBackButton:(id)button;
- (void)didTapDetectionModeButton:(id)button;
- (void)didTapReaderButton:(id)button;
- (void)didTapRedoDocumentButton:(id)button;
- (void)didTapSettingsButton:(id)button;
- (void)didTapShareButton:(id)button;
- (void)didTapSnapshotButton:(id)button;
- (void)switchToDetectionModeControls;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CameraTrayViewController

- (void)didTapActivitiesButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_257C7E070();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257D85A48();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257D88594(appear);
}

- (void)didTapSettingsButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_257D98DCC();
}

- (void)didTapShareButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_257D90C60(buttonCopy, sub_257BE0880);
}

- (void)didTapReaderButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_257D90C60(buttonCopy, sub_257BE1DC0);
}

- (void)didTapSnapshotButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_257D90DA0(buttonCopy);
}

- (void)didTapDetectionModeButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_257D98F30();
}

- (void)didTapRedoDocumentButton:(id)button
{
  v3 = qword_281544FE0;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  sub_257D98B04(2);
}

- (void)didTapBackButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_257D9968C();
}

- (void)switchToDetectionModeControls
{
  selfCopy = self;
  sub_257D839A4();
}

- (_TtC16MagnifierSupport24CameraTrayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_257D91FB0(v5, v7, bundle);
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_257D99954();

  return v7;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_257D99BF0();

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v6 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer);
  selfCopy = self;
  if (v7)
  {
    [v7 invalidate];
    v9 = *(&self->super.super.super.isa + v6);
  }

  else
  {
    v9 = 0;
  }

  *(&self->super.super.super.isa + v6) = 0;
}

- (uint64_t)detectionMenuActionTriggered:
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v4 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintShouldDisplay;
  swift_beginAccess();
  v8[0] = 0;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v5 = sub_257ECF110();
  MEMORY[0x28223BE20](v5);
  *&v7[-16] = v8;
  *&v7[-8] = v4;
  sub_257ECFD40();
  (*(v1 + 8))(v3, v0);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v8[1] = 1;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

@end