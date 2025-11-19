@interface CameraTrayViewController
- (_TtC16MagnifierSupport24CameraTrayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (uint64_t)detectionMenuActionTriggered:;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)didTapActivitiesButton:(id)a3;
- (void)didTapBackButton:(id)a3;
- (void)didTapDetectionModeButton:(id)a3;
- (void)didTapReaderButton:(id)a3;
- (void)didTapRedoDocumentButton:(id)a3;
- (void)didTapSettingsButton:(id)a3;
- (void)didTapShareButton:(id)a3;
- (void)didTapSnapshotButton:(id)a3;
- (void)switchToDetectionModeControls;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CameraTrayViewController

- (void)didTapActivitiesButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257C7E070();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_257D85A48();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_257D88594(a3);
}

- (void)didTapSettingsButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D98DCC();
}

- (void)didTapShareButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D90C60(v4, sub_257BE0880);
}

- (void)didTapReaderButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D90C60(v4, sub_257BE1DC0);
}

- (void)didTapSnapshotButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D90DA0(v4);
}

- (void)didTapDetectionModeButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D98F30();
}

- (void)didTapRedoDocumentButton:(id)a3
{
  v3 = qword_281544FE0;
  v4 = self;
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

- (void)didTapBackButton:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D9968C();
}

- (void)switchToDetectionModeControls
{
  v2 = self;
  sub_257D839A4();
}

- (_TtC16MagnifierSupport24CameraTrayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_257D91FB0(v5, v7, a4);
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_257D99954();

  return v7;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_257D99BF0();

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v6 = OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_captureButtonContextMenuTimer);
  v8 = self;
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