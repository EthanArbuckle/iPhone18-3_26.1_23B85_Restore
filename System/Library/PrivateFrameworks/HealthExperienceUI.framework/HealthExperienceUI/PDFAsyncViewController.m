@interface PDFAsyncViewController
- (Class)classForPage;
- (_TtC18HealthExperienceUI22PDFAsyncViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapShare:(id)a3;
- (void)viewDidLoad;
@end

@implementation PDFAsyncViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA210E24();
}

- (void)didTapShare:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA2129C8(v5);

  __swift_destroy_boxed_opaque_existential_1(v5);
}

- (Class)classForPage
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pageNumberFormat);
  if (v2)
  {
    if (v2 == 1)
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

- (_TtC18HealthExperienceUI22PDFAsyncViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end