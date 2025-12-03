@interface SummarySharingAlertsSelectionViewController
- (_TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController)initWithCollectionViewLayout:(id)layout;
- (void)done;
- (void)viewDidLoad;
@end

@implementation SummarySharingAlertsSelectionViewController

- (_TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController_cancellables) = MEMORY[0x1E69E7CC0];
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA35EDCC();
}

- (void)done
{
  selfCopy = self;
  sub_1BA35EF7C();
}

- (_TtC18HealthExperienceUI43SummarySharingAlertsSelectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end