@interface NFGFaceGalleryViewController
- (NFGFaceGalleryViewController)initWithCoder:(id)coder;
- (NFGFaceGalleryViewController)initWithDelegate:(id)delegate;
- (NFGFaceGalleryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NFGFaceGalleryViewControllerDelegate)delegate;
- (void)commonInit;
- (void)runTest:(id)test withOptions:(id)options;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation NFGFaceGalleryViewController

- (NFGFaceGalleryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    sub_25B0E3740();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = NFGFaceGalleryViewController.init(nibName:bundle:)(bundle, v7, bundle);

  return v8;
}

- (NFGFaceGalleryViewController)initWithCoder:(id)coder
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  _sSo28NFGFaceGalleryViewControllerC08NanoFaceB0E5coderABSgSo7NSCoderC_tcfc_0();
}

- (NFGFaceGalleryViewControllerDelegate)delegate
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectWeakAssign();
}

- (NFGFaceGalleryViewController)initWithDelegate:(id)delegate
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v3 = NFGFaceGalleryViewController.init(delegate:)();

  return v3;
}

- (void)commonInit
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self + OBJC_IVAR___NFGFaceGalleryViewController_task;
  selfCopy = self;
  os_unfair_lock_lock(v3);
  sub_25B0DD26C(v3 + 1);
  os_unfair_lock_unlock(v3);
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

  selfCopy = self;
  NFGFaceGalleryViewController.viewDidLoad()();
}

- (void)runTest:(id)test withOptions:(id)options
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_25B0E3740();
  v7 = v6;
  v8 = sub_25B0E36A0();
  selfCopy = self;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  NFGFaceGalleryViewController.run(test:options:)(v10, v8);
}

@end