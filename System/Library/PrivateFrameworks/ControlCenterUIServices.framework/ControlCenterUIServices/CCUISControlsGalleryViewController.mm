@interface CCUISControlsGalleryViewController
- (CCUISControlsGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CCUISControlsGalleryViewControllerCustomItemsDelegate)customItemsDelegate;
- (CCUISControlsGalleryViewControllerDelegate)delegate;
- (void)setGalleryManager:(id)a3;
- (void)setSelectedControl:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUISControlsGalleryViewController

- (CCUISControlsGalleryViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSelectedControl:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUISControlsGalleryViewController_selectedControl);
  *(self + OBJC_IVAR___CCUISControlsGalleryViewController_selectedControl) = a3;
  v5 = a3;
  v6 = self;

  [(CCUISControlsGalleryViewController *)v6 isViewLoaded];
}

- (void)viewDidLoad
{
  v2 = self;
  CCUISControlsGalleryViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  CCUISControlsGalleryViewController.viewWillLayoutSubviews()();
}

- (void)setGalleryManager:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager);
  *(self + OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager) = a3;
  v3 = a3;
}

- (CCUISControlsGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CCUISControlsGalleryViewControllerCustomItemsDelegate)customItemsDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end