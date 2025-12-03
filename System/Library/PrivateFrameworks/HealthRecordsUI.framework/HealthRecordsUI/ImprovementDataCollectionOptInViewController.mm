@interface ImprovementDataCollectionOptInViewController
- (_TtC15HealthRecordsUI44ImprovementDataCollectionOptInViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC15HealthRecordsUI44ImprovementDataCollectionOptInViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)accessoryButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)hxui_secondaryFooterButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ImprovementDataCollectionOptInViewController

- (void)viewDidLoad
{
  selfCopy = self;
  ImprovementDataCollectionOptInViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(OBBaseWelcomeController *)&v5 viewDidAppear:appearCopy];
  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  sub_1D1223978(1, 2, 0);
}

- (void)hxui_primaryFooterButtonTapped
{
  selfCopy = self;
  sub_1D1095B88(1);
}

- (void)hxui_secondaryFooterButtonTapped
{
  selfCopy = self;
  sub_1D1095B88(0);
}

- (void)accessoryButtonTapped
{
  v2 = qword_1EE069ED0;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  makeImproveHealthRecordsPrivacyPresenter = [qword_1EE06AA70 makeImproveHealthRecordsPrivacyPresenter];
  navigationController = [(ImprovementDataCollectionOptInViewController *)selfCopy navigationController];
  [makeImproveHealthRecordsPrivacyPresenter presentInNavigationStack_];

  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  sub_1D1223978(1, 2, 1);
}

- (_TtC15HealthRecordsUI44ImprovementDataCollectionOptInViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI44ImprovementDataCollectionOptInViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end