@interface DBAudioNotificationViewController
- (_TtC9DashBoard33DBAudioNotificationViewController)initWithCoder:(id)a3;
- (_TtC9DashBoard33DBAudioNotificationViewController)initWithEnvironment:(id)a3;
- (_TtC9DashBoard33DBAudioNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)hideNotification;
- (void)loadView;
- (void)updateForService:(id)a3;
- (void)viewDidLoad;
@end

@implementation DBAudioNotificationViewController

- (_TtC9DashBoard33DBAudioNotificationViewController)initWithEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_248270210();
  swift_unknownObjectRelease();
  return v3;
}

- (_TtC9DashBoard33DBAudioNotificationViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider;
  type metadata accessor for DBVolumeSlider();
  *(&self->super.super.super.isa + v4) = sub_248294EFC();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentVolumeService) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_currentTimer) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)loadView
{
  type metadata accessor for DBAudioView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(DBAudioNotificationViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  DBAudioNotificationViewController.viewDidLoad()();
}

- (void)updateForService:(id)a3
{
  v4 = a3;
  v5 = self;
  DBAudioNotificationViewController.updateFor(service:)(v4);
}

- (void)hideNotification
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard33DBAudioNotificationViewController_volumeSlider);
  v5 = self;
  [v2 alpha];
  if (v3 > 0.0)
  {
    sub_248383DC0();
    sub_24814FB28(0, &qword_27EE90950);
    v4 = sub_2483841B0();
    sub_248382A40();

    sub_24826EE70(0);
  }
}

- (_TtC9DashBoard33DBAudioNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end