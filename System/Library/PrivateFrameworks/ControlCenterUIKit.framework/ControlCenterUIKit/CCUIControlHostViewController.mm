@interface CCUIControlHostViewController
- (BOOL)controlHostViewShouldPerformPrimaryAction:(id)action;
- (BOOL)isDevicePasscodeLocked:(id)locked;
- (BOOL)shouldPerformClickInteraction;
- (BOOL)suppressesContentTransitions;
- (CCUIControlHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CCUIControlHostViewControllerDelegate)delegate;
- (CCUIModuleContentMetrics)contentMetrics;
- (double)compactContinuousCornerRadius;
- (id)contextMenuPreviewForControlHostView:(id)view;
- (int64_t)gridSizeClass;
- (int64_t)userVisibilityStatus;
- (void)controlHostView:(id)view enqueue:(id)enqueue;
- (void)dealloc;
- (void)loadView;
- (void)setCompactContinuousCornerRadius:(double)radius;
- (void)setContentMetrics:(id)metrics;
- (void)setContentModuleContext:(id)context;
- (void)setGridSizeClass:(int64_t)class;
- (void)setSuppressesContentTransitions:(BOOL)transitions;
- (void)setUserVisibilityStatus:(int64_t)status;
- (void)set_isResizing:(BOOL)resizing;
@end

@implementation CCUIControlHostViewController

- (CCUIControlHostViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setContentModuleContext:(id)context
{
  v4 = *(self + OBJC_IVAR___CCUIControlHostViewController_contentModuleContext);
  *(self + OBJC_IVAR___CCUIControlHostViewController_contentModuleContext) = context;
  contextCopy = context;
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR___CCUIControlHostViewController_controlInstance);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = CCUIControlHostViewController;
  [(CCUIControlHostViewController *)&v4 dealloc];
}

- (void)loadView
{
  selfCopy = self;
  CCUIControlHostViewController.loadView()();
}

- (int64_t)gridSizeClass
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_gridSizeClass;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setGridSizeClass:(int64_t)class
{
  selfCopy = self;
  CCUIControlHostViewController.gridSizeClass.setter(class);
}

- (BOOL)suppressesContentTransitions
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_suppressesContentTransitions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSuppressesContentTransitions:(BOOL)transitions
{
  selfCopy = self;
  CCUIControlHostViewController.suppressesContentTransitions.setter(transitions);
}

- (int64_t)userVisibilityStatus
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_userVisibilityStatus;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserVisibilityStatus:(int64_t)status
{
  v5 = status == 2;
  v6 = OBJC_IVAR___CCUIControlHostViewController_userVisibilityStatus;
  swift_beginAccess();
  *(self + v6) = status;
  if (status == 1)
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

- (void)setCompactContinuousCornerRadius:(double)radius
{
  selfCopy = self;
  CCUIControlHostViewController.compactContinuousCornerRadius.setter(radius);
}

- (CCUIModuleContentMetrics)contentMetrics
{
  v3 = OBJC_IVAR___CCUIControlHostViewController_contentMetrics;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  CCUIControlHostViewController.contentMetrics.setter(metrics);
}

- (void)set_isResizing:(BOOL)resizing
{
  selfCopy = self;
  sub_1D16C55F8(resizing);
}

- (BOOL)shouldPerformClickInteraction
{
  selfCopy = self;
  viewIfLoaded = [(CCUIControlHostViewController *)selfCopy viewIfLoaded];
  if (viewIfLoaded)
  {
    v4 = viewIfLoaded;
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

  contextMenu = [v5 contextMenu];

  if (contextMenu)
  {
  }

  return contextMenu == 0;
}

- (BOOL)controlHostViewShouldPerformPrimaryAction:(id)action
{
  selfCopy = self;
  delegate = [(CCUIControlHostViewController *)selfCopy delegate];
  if (delegate)
  {
    v5 = [(CCUIControlHostViewControllerDelegate *)delegate controlHostViewControllerShouldPerformPrimaryAction:selfCopy];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)controlHostView:(id)view enqueue:(id)enqueue
{
  enqueueCopy = enqueue;
  selfCopy = self;
  contentModuleContext = [(CCUIControlHostViewController *)selfCopy contentModuleContext];
  [(CCUIContentModuleContext *)contentModuleContext enqueueStatusUpdate:enqueueCopy];
}

- (BOOL)isDevicePasscodeLocked:(id)locked
{
  selfCopy = self;
  contentModuleContext = [(CCUIControlHostViewController *)selfCopy contentModuleContext];
  if (contentModuleContext)
  {
    v5 = contentModuleContext;
    isDevicePasscodeLocked = [(CCUIContentModuleContext *)contentModuleContext isDevicePasscodeLocked];
  }

  else
  {
    isDevicePasscodeLocked = 0;
  }

  return isDevicePasscodeLocked;
}

- (id)contextMenuPreviewForControlHostView:(id)view
{
  selfCopy = self;
  delegate = [(CCUIControlHostViewController *)selfCopy delegate];
  if (delegate)
  {
    v5 = delegate;
    if (([(CCUIControlHostViewControllerDelegate *)delegate respondsToSelector:sel_contextMenuPreviewForControlHostViewController_]& 1) != 0)
    {
      v6 = [(CCUIControlHostViewControllerDelegate *)v5 contextMenuPreviewForControlHostViewController:selfCopy];
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

- (CCUIControlHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end