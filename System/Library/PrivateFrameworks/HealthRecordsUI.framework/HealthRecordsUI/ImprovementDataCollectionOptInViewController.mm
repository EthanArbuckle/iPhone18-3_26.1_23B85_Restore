@interface ImprovementDataCollectionOptInViewController
- (_TtC15HealthRecordsUI44ImprovementDataCollectionOptInViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC15HealthRecordsUI44ImprovementDataCollectionOptInViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)accessoryButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)hxui_secondaryFooterButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ImprovementDataCollectionOptInViewController

- (void)viewDidLoad
{
  v2 = self;
  ImprovementDataCollectionOptInViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:v3];
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  sub_1D1223978(1, 2, 0);
}

- (void)hxui_primaryFooterButtonTapped
{
  v2 = self;
  sub_1D1095B88(1);
}

- (void)hxui_secondaryFooterButtonTapped
{
  v2 = self;
  sub_1D1095B88(0);
}

- (void)accessoryButtonTapped
{
  v2 = qword_1EE069ED0;
  v5 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = [qword_1EE06AA70 makeImproveHealthRecordsPrivacyPresenter];
  v4 = [(ImprovementDataCollectionOptInViewController *)v5 navigationController];
  [v3 presentInNavigationStack_];

  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  sub_1D1223978(1, 2, 1);
}

- (_TtC15HealthRecordsUI44ImprovementDataCollectionOptInViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI44ImprovementDataCollectionOptInViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end