@interface CCUISControlsGalleryViewController
- (CCUISControlsGalleryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CCUISControlsGalleryViewControllerCustomItemsDelegate)customItemsDelegate;
- (CCUISControlsGalleryViewControllerDelegate)delegate;
- (void)setGalleryManager:(id)manager;
- (void)setSelectedControl:(id)control;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CCUISControlsGalleryViewController

- (CCUISControlsGalleryViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSelectedControl:(id)control
{
  v4 = *(self + OBJC_IVAR___CCUISControlsGalleryViewController_selectedControl);
  *(self + OBJC_IVAR___CCUISControlsGalleryViewController_selectedControl) = control;
  controlCopy = control;
  selfCopy = self;

  [(CCUISControlsGalleryViewController *)selfCopy isViewLoaded];
}

- (void)viewDidLoad
{
  selfCopy = self;
  CCUISControlsGalleryViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  CCUISControlsGalleryViewController.viewWillLayoutSubviews()();
}

- (void)setGalleryManager:(id)manager
{
  v4 = *(self + OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager);
  *(self + OBJC_IVAR___CCUISControlsGalleryViewController_galleryManager) = manager;
  managerCopy = manager;
}

- (CCUISControlsGalleryViewController)initWithNibName:(id)name bundle:(id)bundle
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