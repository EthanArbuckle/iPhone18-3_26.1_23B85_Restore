@interface DBWidgetHomeViewController
- (BOOL)enabled;
- (BOOL)showWallpaper;
- (SBHLegibilitySettings)legibilitySettings;
- (_TtC9DashBoard26DBWidgetHomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)contentVisibility;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6;
- (void)beginCancelingTouches;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)downButtonHandler;
- (void)endCancelingTouches;
- (void)handleBackTap;
- (void)invalidate;
- (void)leafIcon:(id)a3 didChangeActiveDataSource:(id)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)relayout;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setForeground:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)upButtonHandler;
- (void)updatePageControlsOffsetAndFlash:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation DBWidgetHomeViewController

- (BOOL)enabled
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state))
  {
    return [*(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state) showWidgets];
  }

  else
  {
    return [*(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_widgetLayoutDataProvider) isEnabled];
  }
}

- (BOOL)showWallpaper
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_state);
  if (v2)
  {
    return [v2 showWallpaper];
  }

  else
  {
    return 1;
  }
}

- (void)setForeground:(BOOL)a3
{
  v4 = self;
  DBWidgetHomeViewController.setForeground(_:)(a3);
}

- (void)beginCancelingTouches
{
  v2 = self;
  DBWidgetHomeViewController.beginCancelingTouches()();
}

- (void)endCancelingTouches
{
  v2 = self;
  _s9DashBoard26DBWidgetHomeViewControllerC19endCancelingTouchesyyF_0();
}

- (void)relayout
{
  v2 = self;
  sub_2482D8F74(2);
}

- (SBHLegibilitySettings)legibilitySettings
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_legibilitySettings;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (unint64_t)contentVisibility
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_contentVisibility;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentVisibility:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_contentVisibility;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (_TtC9DashBoard26DBWidgetHomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updatePageControlsOffsetAndFlash:(BOOL)a3
{
  v4 = self;
  DBWidgetHomeViewController.updatePageControlsOffset(flash:)(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  DBWidgetHomeViewController.viewDidLoad()();
}

- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_248383BE0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_248383BB0();
  v11 = self;
  v12 = sub_248383BA0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = 3;
  *(v13 + 40) = v11;
  sub_2482D8C74(0, 0, v9, &unk_2483A0110, v13);
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  DBWidgetHomeViewController._wheelChanged(with:)(v4);
}

- (void)upButtonHandler
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack);
  if (v2)
  {
    v6 = self;
    v3 = v2;
    v4 = [v3 widgetIcon];
    if (v4)
    {
      v5 = v4;
      [v3 setPreferredDirection_];
      [v5 selectNextActiveDataSource];

      v3 = v5;
    }
  }
}

- (void)downButtonHandler
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack);
  if (v2)
  {
    v6 = self;
    v3 = v2;
    v4 = [v3 widgetIcon];
    if (v4)
    {
      v5 = v4;
      [v3 setPreferredDirection_];
      sub_2482E3100();

      v3 = v5;
    }
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_24814FB28(0, &qword_27EE92A70);
  sub_248151298(&qword_27EE92A78, &qword_27EE92A70);
  sub_248383C80();
  v6 = a4;
  v7 = self;
  v8 = sub_248383C70();

  v9.receiver = v7;
  v9.super_class = type metadata accessor for DBWidgetHomeViewController();
  [(DBWidgetHomeViewController *)&v9 touchesBegan:v8 withEvent:v6];

  sub_2482D6FAC();
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  sub_24814FB28(0, &unk_27EE92A80);
  sub_248151298(&qword_27EE8FBB0, &unk_27EE92A80);
  v6 = sub_248383C80();
  v7 = a4;
  v8 = self;
  DBWidgetHomeViewController.pressesBegan(_:with:)(v6, a4);
}

- (void)handleBackTap
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack))
  {
    v2 = self;
    sub_2482E39AC();
    sub_2482E3C40();
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for DBWidgetHomeViewController();
  v6 = a3;
  v7 = a4;
  v8 = v12.receiver;
  [(DBWidgetHomeViewController *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  sub_2482E39AC();
  v9 = sub_2482D53BC();
  if (v9)
  {
    v10 = v9;
    v11 = sub_2482DB9E8(v9);
    [v10 setFixedPageControlOffset_];
  }
}

- (void)leafIcon:(id)a3 didChangeActiveDataSource:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  DBWidgetHomeViewController.leafIcon(_:didChangeActiveDataSource:)(v6, a4);

  swift_unknownObjectRelease();
}

- (void)invalidate
{
  v3 = self;
  v2 = sub_248381BA0();
  [v2 deactivate];

  sub_248382180();
}

@end