@interface DataMetadataDelegate
- (_TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C420DataMetadataDelegate)init;
- (id)displayTypeController;
@end

@implementation DataMetadataDelegate

- (id)displayTypeController
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C420DataMetadataDelegate_healthStore);
  v3 = self;
  result = [v2 displayTypeController];
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C420DataMetadataDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end