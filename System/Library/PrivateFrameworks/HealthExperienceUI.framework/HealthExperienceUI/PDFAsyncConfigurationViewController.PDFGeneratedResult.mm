@interface PDFAsyncConfigurationViewController.PDFGeneratedResult
- (Class)classForPage;
- (_TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult)init;
@end

@implementation PDFAsyncConfigurationViewController.PDFGeneratedResult

- (Class)classForPage
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult_configuration);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 8);
  selfCopy = self;
  v6(&v9, v4, v5);

  if (v9)
  {
    if (v9 == 1)
    {
      type metadata accessor for PDFPageNumberedPage();
    }
  }

  else
  {
    sub_1B9F0ADF8(0, &qword_1EBBEE7C8);
  }

  return swift_getObjCClassFromMetadata();
}

- (_TtCC18HealthExperienceUI35PDFAsyncConfigurationViewControllerP33_41892A8E3AE85A20C0CA0B347A3001CA18PDFGeneratedResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end