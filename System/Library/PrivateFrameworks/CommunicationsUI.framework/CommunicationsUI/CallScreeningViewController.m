@interface CallScreeningViewController
- (_TtC16CommunicationsUI27CallScreeningViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  CallScreeningViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  CallScreeningViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(CallScreeningViewController *)&v7 viewWillDisappear:v3];
  if (v4[OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController_createTextField] == 1)
  {
    v5 = sub_1C2DC0558(&OBJC_IVAR____TtC16CommunicationsUI27CallScreeningViewController____lazy_storage___textField, sub_1C2DBF508);
    v6 = sub_1C2E4EA6C();
    [v6 resignFirstResponder];
  }
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  CallScreeningViewController.viewDidLayoutSubviews()();
}

- (_TtC16CommunicationsUI27CallScreeningViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end