@interface SuperFacesHostViewController
- (_TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController)initWithCoder:(id)a3;
- (_TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation SuperFacesHostViewController

- (_TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController)initWithCoder:(id)a3
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController_sceneHostingController) = 0;
  result = sub_25B0E3D00();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for SuperFacesHostViewController();
  v3 = self;
  [(SuperFacesHostViewController *)&v4 viewDidLoad];
  sub_25B0462A0();
}

- (_TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end