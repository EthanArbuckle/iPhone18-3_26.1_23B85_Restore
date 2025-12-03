@interface AllAlertsViewController
- (_TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController)initWithCollectionViewLayout:(id)layout;
- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AllAlertsViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(CompoundDataSourceCollectionViewController *)&v5 viewDidLoad];
  v3 = sub_1B9F23FB0();
  swift_beginAccess();
  v4 = *(v3 + 16);

  [v4 registerObserver_];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CompoundDataSourceCollectionViewController *)&v5 viewDidAppear:appearCopy];
  sub_1BA15678C();
}

- (void)snapshotDidChangeWithDataSourceID:(id)d snapshot:(id)snapshot animated:(BOOL)animated
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1BA4A45C8();
  selfCopy = self;
  v15 = sub_1B9F23FB0();
  v16 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  (*(v8 + 16))(v10, v15 + v16, v7);

  v17 = sub_1BA4A44B8();
  v18 = *(v8 + 8);
  v18(v10, v7);
  if (!v17)
  {
    [(AllAlertsViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  }

  v18(v13, v7);
}

- (_TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController)initWithCollectionViewLayout:(id)layout
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController_cancellable) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CompoundDataSourceCollectionViewController *)&v7 initWithCollectionViewLayout:layout];
}

- (_TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUIP33_769EF482A8E949D5E185D49C9A04EEB923AllAlertsViewController_cancellable) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(CompoundDataSourceCollectionViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end