@interface NFGFaceGalleryViewController
- (NFGFaceGalleryViewController)initWithCoder:(id)a3;
- (NFGFaceGalleryViewController)initWithDelegate:(id)a3;
- (NFGFaceGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NFGFaceGalleryViewControllerDelegate)delegate;
- (void)commonInit;
- (void)runTest:(id)a3 withOptions:(id)a4;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation NFGFaceGalleryViewController

- (NFGFaceGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    sub_25B0E3740();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = NFGFaceGalleryViewController.init(nibName:bundle:)(a4, v7, a4);

  return v8;
}

- (NFGFaceGalleryViewController)initWithCoder:(id)a3
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
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

- (void)setDelegate:(id)a3
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

- (NFGFaceGalleryViewController)initWithDelegate:(id)a3
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
  v4 = self;
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

  v3 = self;
  NFGFaceGalleryViewController.viewDidLoad()();
}

- (void)runTest:(id)a3 withOptions:(id)a4
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
  v9 = self;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  NFGFaceGalleryViewController.run(test:options:)(v10, v8);
}

@end