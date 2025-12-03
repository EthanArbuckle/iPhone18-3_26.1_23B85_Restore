@interface SuperGalleryHostViewController
- (_TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController)initWithCoder:(id)coder;
- (_TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation SuperGalleryHostViewController

- (_TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController)initWithCoder:(id)coder
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController_sceneHostingController) = 0;
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
  v4.super_class = type metadata accessor for SuperGalleryHostViewController();
  selfCopy = self;
  [(SuperGalleryHostViewController *)&v4 viewDidLoad];
  sub_25B0479B8();
}

- (_TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController)initWithNibName:(id)name bundle:(id)bundle
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