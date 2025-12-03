@interface DBWidgetHomeViewController
- (BOOL)enabled;
- (BOOL)showWallpaper;
- (SBHLegibilitySettings)legibilitySettings;
- (_TtC9DashBoard26DBWidgetHomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)contentVisibility;
- (void)_wheelChangedWithEvent:(id)event;
- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications;
- (void)beginCancelingTouches;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)downButtonHandler;
- (void)endCancelingTouches;
- (void)handleBackTap;
- (void)invalidate;
- (void)leafIcon:(id)icon didChangeActiveDataSource:(id)source;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)relayout;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setForeground:(BOOL)foreground;
- (void)setLegibilitySettings:(id)settings;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)upButtonHandler;
- (void)updatePageControlsOffsetAndFlash:(BOOL)flash;
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

- (void)setForeground:(BOOL)foreground
{
  selfCopy = self;
  DBWidgetHomeViewController.setForeground(_:)(foreground);
}

- (void)beginCancelingTouches
{
  selfCopy = self;
  DBWidgetHomeViewController.beginCancelingTouches()();
}

- (void)endCancelingTouches
{
  selfCopy = self;
  _s9DashBoard26DBWidgetHomeViewControllerC19endCancelingTouchesyyF_0();
}

- (void)relayout
{
  selfCopy = self;
  sub_2482D8F74(2);
}

- (SBHLegibilitySettings)legibilitySettings
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setLegibilitySettings:(id)settings
{
  v5 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_legibilitySettings;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = settings;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (unint64_t)contentVisibility
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_contentVisibility;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentVisibility:(unint64_t)visibility
{
  v5 = OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_contentVisibility;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = visibility;
}

- (_TtC9DashBoard26DBWidgetHomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)updatePageControlsOffsetAndFlash:(BOOL)flash
{
  selfCopy = self;
  DBWidgetHomeViewController.updatePageControlsOffset(flash:)(flash);
}

- (void)viewDidLoad
{
  selfCopy = self;
  DBWidgetHomeViewController.viewDidLoad()();
}

- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_248383BE0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_248383BB0();
  selfCopy = self;
  v12 = sub_248383BA0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = 3;
  *(v13 + 40) = selfCopy;
  sub_2482D8C74(0, 0, v9, &unk_2483A0110, v13);
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  DBWidgetHomeViewController._wheelChanged(with:)(eventCopy);
}

- (void)upButtonHandler
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack);
  if (v2)
  {
    selfCopy = self;
    v3 = v2;
    widgetIcon = [v3 widgetIcon];
    if (widgetIcon)
    {
      v5 = widgetIcon;
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
    selfCopy = self;
    v3 = v2;
    widgetIcon = [v3 widgetIcon];
    if (widgetIcon)
    {
      v5 = widgetIcon;
      [v3 setPreferredDirection_];
      sub_2482E3100();

      v3 = v5;
    }
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_24814FB28(0, &qword_27EE92A70);
  sub_248151298(&qword_27EE92A78, &qword_27EE92A70);
  sub_248383C80();
  eventCopy = event;
  selfCopy = self;
  v8 = sub_248383C70();

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for DBWidgetHomeViewController();
  [(DBWidgetHomeViewController *)&v9 touchesBegan:v8 withEvent:eventCopy];

  sub_2482D6FAC();
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  sub_24814FB28(0, &unk_27EE92A80);
  sub_248151298(&qword_27EE8FBB0, &unk_27EE92A80);
  v6 = sub_248383C80();
  eventCopy = event;
  selfCopy = self;
  DBWidgetHomeViewController.pressesBegan(_:with:)(v6, event);
}

- (void)handleBackTap
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard26DBWidgetHomeViewController_selectedWidgetStack))
  {
    selfCopy = self;
    sub_2482E39AC();
    sub_2482E3C40();
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for DBWidgetHomeViewController();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v12.receiver;
  [(DBWidgetHomeViewController *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  sub_2482E39AC();
  v9 = sub_2482D53BC();
  if (v9)
  {
    v10 = v9;
    v11 = sub_2482DB9E8(v9);
    [v10 setFixedPageControlOffset_];
  }
}

- (void)leafIcon:(id)icon didChangeActiveDataSource:(id)source
{
  iconCopy = icon;
  swift_unknownObjectRetain();
  selfCopy = self;
  DBWidgetHomeViewController.leafIcon(_:didChangeActiveDataSource:)(iconCopy, source);

  swift_unknownObjectRelease();
}

- (void)invalidate
{
  selfCopy = self;
  v2 = sub_248381BA0();
  [v2 deactivate];

  sub_248382180();
}

@end