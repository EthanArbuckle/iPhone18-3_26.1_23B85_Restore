@interface CCUIControlHostViewController
- (BOOL)controlHostViewShouldPerformPrimaryAction:(id)a3;
- (BOOL)isDevicePasscodeLocked:(id)a3;
- (BOOL)shouldPerformClickInteraction;
- (BOOL)suppressesContentTransitions;
- (CCUIControlHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CCUIControlHostViewControllerDelegate)delegate;
- (CCUIModuleContentMetrics)contentMetrics;
- (double)compactContinuousCornerRadius;
- (id)contextMenuPreviewForControlHostView:(id)a3;
- (int64_t)gridSizeClass;
- (int64_t)userVisibilityStatus;
- (void)controlHostView:(id)a3 enqueue:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)setCompactContinuousCornerRadius:(double)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContentModuleContext:(id)a3;
- (void)setGridSizeClass:(int64_t)a3;
- (void)setSuppressesContentTransitions:(BOOL)a3;
- (void)setUserVisibilityStatus:(int64_t)a3;
- (void)set_isResizing:(BOOL)a3;
@end

@implementation CCUIControlHostViewController

- (CCUIControlHostViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setContentModuleContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIControlHostViewController_contentModuleContext);
  *(self + OBJC_IVAR___CCUIControlHostViewController_contentModuleContext) = a3;
  v3 = a3;
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR___CCUIControlHostViewController_controlInstance);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = CCUIControlHostViewController;
  [(CCUIControlHostViewController *)&v4 dealloc];
}

- (void)loadView
{
  v2 = self;
  CCUIControlHostViewController.loadView()();
}

- (int64_t)gridSizeClass
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_gridSizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGridSizeClass:(int64_t)a3
{
  v4 = self;
  CCUIControlHostViewController.gridSizeClass.setter(a3);
}

- (BOOL)suppressesContentTransitions
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_suppressesContentTransitions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSuppressesContentTransitions:(BOOL)a3
{
  v4 = self;
  CCUIControlHostViewController.suppressesContentTransitions.setter(a3);
}

- (int64_t)userVisibilityStatus
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_userVisibilityStatus;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserVisibilityStatus:(int64_t)a3
{
  v5 = a3 == 2;
  v6 = OBJC_IVAR___CCUIControlHostViewController_userVisibilityStatus;
  swift_beginAccess();
  *(self + v6) = a3;
  if (a3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * v5;
  }

  [*(self + OBJC_IVAR___CCUIControlHostViewController_controlInstance) setVisibility_];
}

- (double)compactContinuousCornerRadius
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCompactContinuousCornerRadius:(double)a3
{
  v4 = self;
  CCUIControlHostViewController.compactContinuousCornerRadius.setter(a3);
}

- (CCUIModuleContentMetrics)contentMetrics
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_contentMetrics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentMetrics:(id)a3
{
  v5 = a3;
  v6 = self;
  CCUIControlHostViewController.contentMetrics.setter(a3);
}

- (void)set_isResizing:(BOOL)a3
{
  v4 = self;
  sub_1D16C55F8(a3);
}

- (BOOL)shouldPerformClickInteraction
{
  v2 = self;
  v3 = [(CCUIControlHostViewController *)v2 viewIfLoaded];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 contextMenu];

  if (v6)
  {
  }

  return v6 == 0;
}

- (BOOL)controlHostViewShouldPerformPrimaryAction:(id)a3
{
  v3 = self;
  v4 = [(CCUIControlHostViewController *)v3 delegate];
  if (v4)
  {
    v5 = [(CCUIControlHostViewControllerDelegate *)v4 controlHostViewControllerShouldPerformPrimaryAction:v3];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)controlHostView:(id)a3 enqueue:(id)a4
{
  v5 = a4;
  v7 = self;
  v6 = [(CCUIControlHostViewController *)v7 contentModuleContext];
  [(CCUIContentModuleContext *)v6 enqueueStatusUpdate:v5];
}

- (BOOL)isDevicePasscodeLocked:(id)a3
{
  v3 = self;
  v4 = [(CCUIControlHostViewController *)v3 contentModuleContext];
  if (v4)
  {
    v5 = v4;
    v6 = [(CCUIContentModuleContext *)v4 isDevicePasscodeLocked];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contextMenuPreviewForControlHostView:(id)a3
{
  v3 = self;
  v4 = [(CCUIControlHostViewController *)v3 delegate];
  if (v4)
  {
    v5 = v4;
    if (([(CCUIControlHostViewControllerDelegate *)v4 respondsToSelector:sel_contextMenuPreviewForControlHostViewController_]& 1) != 0)
    {
      v6 = [(CCUIControlHostViewControllerDelegate *)v5 contextMenuPreviewForControlHostViewController:v3];
    }

    else
    {
      v6 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CCUIControlHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end