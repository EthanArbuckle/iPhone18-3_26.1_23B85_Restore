@interface MUWebBasedDebugPanelViewController
- (_TtC6MapsUI34MUWebBasedDebugPanelViewController)initWithCoder:(id)a3;
- (_TtC6MapsUI34MUWebBasedDebugPanelViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)closeButtonTapped;
- (void)viewDidLoad;
@end

@implementation MUWebBasedDebugPanelViewController

- (_TtC6MapsUI34MUWebBasedDebugPanelViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController____lazy_storage___closeButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_bridge) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_webView) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(MUWebBasedDebugPanelViewController *)&v3 viewDidLoad];
  sub_1C56541E4();
  sub_1C5654948();
}

- (void)closeButtonTapped
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_dismissHandler);
  if (v3)
  {
    v4 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_dismissHandler);
    v8[4] = *(&self->super.super.super.isa + OBJC_IVAR____TtC6MapsUI34MUWebBasedDebugPanelViewController_dismissHandler);
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C56444F8;
    v8[3] = &block_descriptor_3;
    v5 = _Block_copy(v8);
    v6 = self;
    sub_1C5633060(v3);
  }

  else
  {
    v7 = self;
    v5 = 0;
  }

  [(MUWebBasedDebugPanelViewController *)self dismissViewControllerAnimated:1 completion:v5];

  _Block_release(v5);
}

- (_TtC6MapsUI34MUWebBasedDebugPanelViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end