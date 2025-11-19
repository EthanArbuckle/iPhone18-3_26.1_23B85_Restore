@interface SharingOverviewViewController
- (NSString)sidebarSelectionIdentifier;
- (_TtC18HealthExperienceUI29SharingOverviewViewController)initWithCoder:(id)a3;
- (void)restoreUserActivityState:(id)a3;
- (void)ttrButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation SharingOverviewViewController

- (NSString)sidebarSelectionIdentifier
{
  if (*(self + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_sidebarSelectionIdentifier + 8))
  {

    v2 = sub_1BA4A6758();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC18HealthExperienceUI29SharingOverviewViewController)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController____lazy_storage___store) = 0;
  *(self + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_syncObserver) = 0;
  v3 = (self + OBJC_IVAR____TtC18HealthExperienceUI29SharingOverviewViewController_sidebarSelectionIdentifier);
  *v3 = 0xD000000000000019;
  v3[1] = 0x80000001BA4E3770;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA0037E8();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = self;
  sub_1BA4A71E8();
  v9 = 8;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for SharingOverviewViewController();
  v8.receiver = v6;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SharingOverviewViewController();
  v4 = v7.receiver;
  [(CompoundDataSourceCollectionViewController *)&v7 viewDidAppear:v3];
  v5 = [v4 userActivity];
  if (v5)
  {
    v6 = v5;
    [v4 submitUserActivityForRestoration_];
  }
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA003E68(v4);
}

- (void)ttrButtonTapped
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v4 = self;
  sub_1BA1174D4(0x532068746C616548, 0xEE00676E69726168, sub_1BA349C48, v3);
}

@end