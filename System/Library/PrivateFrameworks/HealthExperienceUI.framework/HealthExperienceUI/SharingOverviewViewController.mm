@interface SharingOverviewViewController
- (NSString)sidebarSelectionIdentifier;
- (_TtC18HealthExperienceUI29SharingOverviewViewController)initWithCoder:(id)coder;
- (void)restoreUserActivityState:(id)state;
- (void)ttrButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
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

- (_TtC18HealthExperienceUI29SharingOverviewViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1BA0037E8();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  selfCopy = self;
  sub_1BA4A71E8();
  v9 = 8;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for SharingOverviewViewController();
  v8.receiver = selfCopy;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:appearingCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SharingOverviewViewController();
  v4 = v7.receiver;
  [(CompoundDataSourceCollectionViewController *)&v7 viewDidAppear:appearCopy];
  userActivity = [v4 userActivity];
  if (userActivity)
  {
    v6 = userActivity;
    [v4 submitUserActivityForRestoration_];
  }
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1BA003E68(stateCopy);
}

- (void)ttrButtonTapped
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  selfCopy = self;
  sub_1BA1174D4(0x532068746C616548, 0xEE00676E69726168, sub_1BA349C48, v3);
}

@end