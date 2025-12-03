@interface CallScreeningViewController
- (_TtC16CommunicationsUI27CallScreeningViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CallScreeningViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(CallScreeningViewController *)&v3 viewDidLoad];
  sub_1C2DB8FB0();
  sub_1C2DBDE48();

  sub_1C2DB99E0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  CallScreeningViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  CallScreeningViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(CallScreeningViewController *)&v7 viewWillDisappear:disappearCopy];
  if (v4[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] == 1)
  {
    v5 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    v6 = sub_1C2E4EA6C();
    [v6 resignFirstResponder];
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  CallScreeningViewController.viewDidLayoutSubviews()();
}

- (_TtC16CommunicationsUI27CallScreeningViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end