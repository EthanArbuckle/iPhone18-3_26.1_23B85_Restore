@interface SummarySharingProfileGradientsProvider
- (_TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider)init;
- (void)controllerDidChangeContent:(id)content;
@end

@implementation SummarySharingProfileGradientsProvider

- (void)controllerDidChangeContent:(id)content
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider_fetchedResultsController);
  selfCopy = self;
  sections = [v3 sections];
  if (sections)
  {
    v6 = sections;
    sub_1BA024D28();
    v7 = sub_1BA4A6B08();
  }

  else
  {
    v7 = 0;
  }

  sub_1BA268D68(v7);
}

- (_TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end