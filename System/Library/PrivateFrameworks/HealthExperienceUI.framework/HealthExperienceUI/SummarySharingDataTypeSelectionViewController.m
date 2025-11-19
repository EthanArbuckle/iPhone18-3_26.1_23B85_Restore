@interface SummarySharingDataTypeSelectionViewController
- (_TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController)initWithCollectionViewLayout:(id)a3;
- (void)done;
- (void)viewDidLoad;
@end

@implementation SummarySharingDataTypeSelectionViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SummarySharingDataTypeSelectionViewController(0);
  v2 = v3.receiver;
  [(CompoundDataSourceCollectionViewController *)&v3 viewDidLoad];
  sub_1BA1E2988();
  sub_1BA1E2A90();
}

- (_TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables) = MEMORY[0x1E69E7CC0];
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)done
{
  v2 = self;
  sub_1BA1E2C78();
}

- (_TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end