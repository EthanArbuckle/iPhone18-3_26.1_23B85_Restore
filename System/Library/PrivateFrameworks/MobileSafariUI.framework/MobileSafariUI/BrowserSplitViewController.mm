@interface BrowserSplitViewController
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isShowingSidebar;
- (BOOL)safari_wantsTransparentApplicationBackground;
- (BOOL)showsSidebarByDefault;
- (BrowserController)browserController;
- (BrowserSplitViewController)initWithCoder:(id)coder;
- (BrowserSplitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BrowserSplitViewController)initWithStyle:(int64_t)style;
- (NSArray)trailingSidebarButtonItems;
- (SidebarUIProxyDelegate)sidebarUIProxyDelegate;
- (UIBarButtonItem)leadingSidebarButtonItem;
- (UIBarButtonItem)newTabGroupButtonItem;
- (UIBarButtonItem)sidebarButtonItem;
- (UIBarButtonItem)trailingSidebarButtonItem;
- (UINavigationBar)topNavigationBar;
- (UIViewController)childViewControllerForStatusBarStyle;
- (double)currentSidebarWidth;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)splitViewController:(uint64_t)controller willHideColumn:(uint64_t)column;
- (int64_t)bookmarksPresentationStyle;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setCurrentSidebarWidth:(double)width;
- (void)setNewTabGroupButtonItem:(id)item;
- (void)setShowingSidebar:(BOOL)sidebar completion:(id)completion;
- (void)setShowsSidebarByDefault:(BOOL)default;
- (void)setSidebarButtonItem:(id)item;
- (void)setUpSidebarContentIfNeeded;
- (void)sidebarVisibilityWillChangeWithCompletion:(id)completion;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)updateAdditionalSafeAreaInsetsFor:(int64_t)for isCollapsed:(BOOL)collapsed;
- (void)validateCommand:(id)command;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BrowserSplitViewController

- (void)viewDidLoad
{
  selfCopy = self;
  BrowserSplitViewController.viewDidLoad()();
}

- (BOOL)isShowingSidebar
{
  selfCopy = self;
  if ([(BrowserSplitViewController *)selfCopy isCollapsed])
  {

    return 0;
  }

  else if ([(BrowserSplitViewController *)selfCopy displayMode]== 2)
  {

    return 1;
  }

  else
  {
    displayMode = [(BrowserSplitViewController *)selfCopy displayMode];

    return displayMode == 3;
  }
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  controllerCopy = controller;
  selfCopy = self;
  sub_215835C28(mode);
}

- (BrowserController)browserController
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  return Strong;
}

- (void)setUpSidebarContentIfNeeded
{
  selfCopy = self;
  if (_SFDeviceIsPad())
  {
    v2 = [(BrowserSplitViewController *)selfCopy viewControllerForColumn:0];
    if (!v2)
    {
      browserController = [(BrowserSplitViewController *)selfCopy browserController];
      v2 = [(BrowserController *)browserController sidebarContentViewControllerForSidebarUIProxy:selfCopy];

      [(BrowserSplitViewController *)selfCopy setViewController:v2 forColumn:0];
    }

    v4 = v2;
  }

  else
  {
    v4 = selfCopy;
  }
}

- (SidebarUIProxyDelegate)sidebarUIProxyDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)splitViewController:(uint64_t)controller willHideColumn:(uint64_t)column
{
  if (!column)
  {
    return [result sidebarVisibilityWillChangeWithCompletion_];
  }

  return result;
}

- (int64_t)bookmarksPresentationStyle
{
  selfCopy = self;
  traitCollection = [(BrowserSplitViewController *)selfCopy traitCollection];
  v4 = [traitCollection horizontalSizeClass] != 1;

  return 2 * v4;
}

- (BOOL)safari_wantsTransparentApplicationBackground
{
  selfCopy = self;
  browserController = [(BrowserSplitViewController *)selfCopy browserController];
  rootViewController = [(BrowserController *)browserController rootViewController];

  if (rootViewController)
  {
    safari_wantsTransparentApplicationBackground = [(BrowserRootViewController *)rootViewController safari_wantsTransparentApplicationBackground];

    return safari_wantsTransparentApplicationBackground;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BrowserSplitViewController)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___sidebarButtonItem) = 0;
  *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___newTabGroupButtonItem) = 0;
  swift_unknownObjectWeakInit();
  result = sub_215A70CB0();
  __break(1u);
  return result;
}

- (UIBarButtonItem)sidebarButtonItem
{
  selfCopy = self;
  v3 = sub_2159F54FC(&OBJC_IVAR___BrowserSplitViewController____lazy_storage___sidebarButtonItem, sub_2159F5270);

  return v3;
}

- (void)setSidebarButtonItem:(id)item
{
  v4 = *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___sidebarButtonItem);
  *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___sidebarButtonItem) = item;
  itemCopy = item;
}

- (UIBarButtonItem)newTabGroupButtonItem
{
  selfCopy = self;
  v3 = sub_2159F54FC(&OBJC_IVAR___BrowserSplitViewController____lazy_storage___newTabGroupButtonItem, sub_2159F55A8);

  return v3;
}

- (void)setNewTabGroupButtonItem:(id)item
{
  v4 = *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___newTabGroupButtonItem);
  *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___newTabGroupButtonItem) = item;
  itemCopy = item;
}

- (double)currentSidebarWidth
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  [standardUserDefaults safari:@"SidebarWidth" doubleForKey:320.0 defaultValue:?];
  v4 = v3;

  return v4;
}

- (void)setCurrentSidebarWidth:(double)width
{
  v4 = objc_opt_self();
  selfCopy = self;
  standardUserDefaults = [v4 standardUserDefaults];
  v7 = sub_215A6FA70();
  [standardUserDefaults setObject:v7 forKey:@"SidebarWidth"];
}

- (BOOL)showsSidebarByDefault
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (void)setShowsSidebarByDefault:(BOOL)default
{
  defaultCopy = default;
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  [standardUserDefaults setBool:defaultCopy forKey:@"ShowSidebar"];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BrowserSplitViewController;
  selfCopy = self;
  [(BrowserSplitViewController *)&v3 viewDidLayoutSubviews];
  [(BrowserSplitViewController *)selfCopy primaryColumnWidth:v3.receiver];
  [(BrowserSplitViewController *)selfCopy setCurrentSidebarWidth:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8 = sub_215A700D0();
  MEMORY[0x28223BE20](v8);
  swift_unknownObjectRetain();
  selfCopy = self;
  _SFSizeClassForWidth();
  sub_215A70970();
  sub_215A700C0();
  sub_215A70980();
  v10.receiver = selfCopy;
  v10.super_class = BrowserSplitViewController;
  [(BrowserSplitViewController *)&v10 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  swift_unknownObjectRelease();
}

- (BOOL)canBecomeFirstResponder
{
  selfCopy = self;
  browserController = [(BrowserSplitViewController *)selfCopy browserController];
  canBecomeFirstResponder = [(BrowserController *)browserController canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  if ([(BrowserSplitViewController *)selfCopy canBecomeFirstResponder])
  {
    browserController = [(BrowserSplitViewController *)selfCopy browserController];
    becomeFirstResponder = [(BrowserController *)browserController becomeFirstResponder];

    if (becomeFirstResponder)
    {

      return 1;
    }

    else
    {
      v7.receiver = selfCopy;
      v7.super_class = BrowserSplitViewController;
      becomeFirstResponder2 = [(BrowserSplitViewController *)&v7 becomeFirstResponder];

      return becomeFirstResponder2;
    }
  }

  else
  {

    return 0;
  }
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  selfCopy = self;
  browserController = [(BrowserSplitViewController *)selfCopy browserController];
  rootViewController = [(BrowserController *)browserController rootViewController];

  return rootViewController;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = BrowserSplitViewController.canPerformAction(_:withSender:)(action, v10);

  sub_21583FDA0(v10);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  v7.receiver = self;
  v7.super_class = BrowserSplitViewController;
  commandCopy = command;
  selfCopy = self;
  [(BrowserSplitViewController *)&v7 validateCommand:commandCopy];
  v6 = [(BrowserSplitViewController *)selfCopy browserController:v7.receiver];
  [(BrowserController *)v6 validateCommand:commandCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  selfCopy = self;
  BrowserSplitViewController.forwardingTarget(for:)(selector, v12);

  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_215A70D80();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIBarButtonItem)leadingSidebarButtonItem
{
  v3 = objc_opt_self();
  selfCopy = self;
  if ([v3 isEnhancedVerticalTabsEnabled])
  {
    sidebarButtonItem = 0;
  }

  else
  {
    sidebarButtonItem = [(BrowserSplitViewController *)selfCopy sidebarButtonItem];
  }

  return sidebarButtonItem;
}

- (UIBarButtonItem)trailingSidebarButtonItem
{
  v3 = objc_opt_self();
  selfCopy = self;
  if ([v3 isEnhancedVerticalTabsEnabled])
  {
    sidebarButtonItem = [(BrowserSplitViewController *)selfCopy sidebarButtonItem];
  }

  else
  {
    sidebarButtonItem = [(BrowserSplitViewController *)selfCopy newTabGroupButtonItem];
  }

  v6 = sidebarButtonItem;

  return v6;
}

- (NSArray)trailingSidebarButtonItems
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_215A96980;
  selfCopy = self;
  *(v3 + 32) = [(BrowserSplitViewController *)selfCopy sidebarButtonItem];
  *(v3 + 40) = [(BrowserSplitViewController *)selfCopy newTabGroupButtonItem];

  sub_2159F7DA8(0, &qword_2811A22B8);
  v5 = sub_215A705D0();

  return v5;
}

- (UINavigationBar)topNavigationBar
{
  selfCopy = self;
  v3 = sub_2159F6C60();

  return v3;
}

- (void)setShowingSidebar:(BOOL)sidebar completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_2159F7E28;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_2159F6E08(sidebar, v6, v7);
  sub_21584BA0C(v6);
}

- (void)sidebarVisibilityWillChangeWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_2159F7D3C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_2159F7050(v7, v6);
  sub_21584BA0C(v7);
}

- (void)updateAdditionalSafeAreaInsetsFor:(int64_t)for isCollapsed:(BOOL)collapsed
{
  selfCopy = self;
  sub_2159F74C4();
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_2159F7D34;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  BrowserSplitViewController.present(_:animated:completion:)(controllerCopy, animated, v8, v9);
  sub_21584BA0C(v8);
}

- (BrowserSplitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BrowserSplitViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end