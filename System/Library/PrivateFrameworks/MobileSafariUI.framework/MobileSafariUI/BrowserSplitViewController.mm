@interface BrowserSplitViewController
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isShowingSidebar;
- (BOOL)safari_wantsTransparentApplicationBackground;
- (BOOL)showsSidebarByDefault;
- (BrowserController)browserController;
- (BrowserSplitViewController)initWithCoder:(id)a3;
- (BrowserSplitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BrowserSplitViewController)initWithStyle:(int64_t)a3;
- (NSArray)trailingSidebarButtonItems;
- (SidebarUIProxyDelegate)sidebarUIProxyDelegate;
- (UIBarButtonItem)leadingSidebarButtonItem;
- (UIBarButtonItem)newTabGroupButtonItem;
- (UIBarButtonItem)sidebarButtonItem;
- (UIBarButtonItem)trailingSidebarButtonItem;
- (UINavigationBar)topNavigationBar;
- (UIViewController)childViewControllerForStatusBarStyle;
- (double)currentSidebarWidth;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)splitViewController:(uint64_t)a3 willHideColumn:(uint64_t)a4;
- (int64_t)bookmarksPresentationStyle;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setCurrentSidebarWidth:(double)a3;
- (void)setNewTabGroupButtonItem:(id)a3;
- (void)setShowingSidebar:(BOOL)a3 completion:(id)a4;
- (void)setShowsSidebarByDefault:(BOOL)a3;
- (void)setSidebarButtonItem:(id)a3;
- (void)setUpSidebarContentIfNeeded;
- (void)sidebarVisibilityWillChangeWithCompletion:(id)a3;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)updateAdditionalSafeAreaInsetsFor:(int64_t)a3 isCollapsed:(BOOL)a4;
- (void)validateCommand:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BrowserSplitViewController

- (void)viewDidLoad
{
  v2 = self;
  BrowserSplitViewController.viewDidLoad()();
}

- (BOOL)isShowingSidebar
{
  v2 = self;
  if ([(BrowserSplitViewController *)v2 isCollapsed])
  {

    return 0;
  }

  else if ([(BrowserSplitViewController *)v2 displayMode]== 2)
  {

    return 1;
  }

  else
  {
    v4 = [(BrowserSplitViewController *)v2 displayMode];

    return v4 == 3;
  }
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_215835C28(a4);
}

- (BrowserController)browserController
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  return Strong;
}

- (void)setUpSidebarContentIfNeeded
{
  v5 = self;
  if (_SFDeviceIsPad())
  {
    v2 = [(BrowserSplitViewController *)v5 viewControllerForColumn:0];
    if (!v2)
    {
      v3 = [(BrowserSplitViewController *)v5 browserController];
      v2 = [(BrowserController *)v3 sidebarContentViewControllerForSidebarUIProxy:v5];

      [(BrowserSplitViewController *)v5 setViewController:v2 forColumn:0];
    }

    v4 = v2;
  }

  else
  {
    v4 = v5;
  }
}

- (SidebarUIProxyDelegate)sidebarUIProxyDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)splitViewController:(uint64_t)a3 willHideColumn:(uint64_t)a4
{
  if (!a4)
  {
    return [result sidebarVisibilityWillChangeWithCompletion_];
  }

  return result;
}

- (int64_t)bookmarksPresentationStyle
{
  v2 = self;
  v3 = [(BrowserSplitViewController *)v2 traitCollection];
  v4 = [v3 horizontalSizeClass] != 1;

  return 2 * v4;
}

- (BOOL)safari_wantsTransparentApplicationBackground
{
  v2 = self;
  v3 = [(BrowserSplitViewController *)v2 browserController];
  v4 = [(BrowserController *)v3 rootViewController];

  if (v4)
  {
    v6 = [(BrowserRootViewController *)v4 safari_wantsTransparentApplicationBackground];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BrowserSplitViewController)initWithCoder:(id)a3
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
  v2 = self;
  v3 = sub_2159F54FC(&OBJC_IVAR___BrowserSplitViewController____lazy_storage___sidebarButtonItem, sub_2159F5270);

  return v3;
}

- (void)setSidebarButtonItem:(id)a3
{
  v4 = *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___sidebarButtonItem);
  *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___sidebarButtonItem) = a3;
  v3 = a3;
}

- (UIBarButtonItem)newTabGroupButtonItem
{
  v2 = self;
  v3 = sub_2159F54FC(&OBJC_IVAR___BrowserSplitViewController____lazy_storage___newTabGroupButtonItem, sub_2159F55A8);

  return v3;
}

- (void)setNewTabGroupButtonItem:(id)a3
{
  v4 = *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___newTabGroupButtonItem);
  *(self + OBJC_IVAR___BrowserSplitViewController____lazy_storage___newTabGroupButtonItem) = a3;
  v3 = a3;
}

- (double)currentSidebarWidth
{
  v2 = [objc_opt_self() standardUserDefaults];
  [v2 safari:@"SidebarWidth" doubleForKey:320.0 defaultValue:?];
  v4 = v3;

  return v4;
}

- (void)setCurrentSidebarWidth:(double)a3
{
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 standardUserDefaults];
  v7 = sub_215A6FA70();
  [v6 setObject:v7 forKey:@"SidebarWidth"];
}

- (BOOL)showsSidebarByDefault
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = [v2 BOOLForKey_];

  return v3;
}

- (void)setShowsSidebarByDefault:(BOOL)a3
{
  v3 = a3;
  v4 = [objc_opt_self() standardUserDefaults];
  [v4 setBool:v3 forKey:@"ShowSidebar"];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = BrowserSplitViewController;
  v2 = self;
  [(BrowserSplitViewController *)&v3 viewDidLayoutSubviews];
  [(BrowserSplitViewController *)v2 primaryColumnWidth:v3.receiver];
  [(BrowserSplitViewController *)v2 setCurrentSidebarWidth:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = sub_215A700D0();
  MEMORY[0x28223BE20](v8);
  swift_unknownObjectRetain();
  v9 = self;
  _SFSizeClassForWidth();
  sub_215A70970();
  sub_215A700C0();
  sub_215A70980();
  v10.receiver = v9;
  v10.super_class = BrowserSplitViewController;
  [(BrowserSplitViewController *)&v10 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  swift_unknownObjectRelease();
}

- (BOOL)canBecomeFirstResponder
{
  v2 = self;
  v3 = [(BrowserSplitViewController *)v2 browserController];
  v4 = [(BrowserController *)v3 canBecomeFirstResponder];

  return v4;
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  if ([(BrowserSplitViewController *)v2 canBecomeFirstResponder])
  {
    v3 = [(BrowserSplitViewController *)v2 browserController];
    v4 = [(BrowserController *)v3 becomeFirstResponder];

    if (v4)
    {

      return 1;
    }

    else
    {
      v7.receiver = v2;
      v7.super_class = BrowserSplitViewController;
      v6 = [(BrowserSplitViewController *)&v7 becomeFirstResponder];

      return v6;
    }
  }

  else
  {

    return 0;
  }
}

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = self;
  v3 = [(BrowserSplitViewController *)v2 browserController];
  v4 = [(BrowserController *)v3 rootViewController];

  return v4;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = BrowserSplitViewController.canPerformAction(_:withSender:)(a3, v10);

  sub_21583FDA0(v10);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v7.receiver = self;
  v7.super_class = BrowserSplitViewController;
  v4 = a3;
  v5 = self;
  [(BrowserSplitViewController *)&v7 validateCommand:v4];
  v6 = [(BrowserSplitViewController *)v5 browserController:v7.receiver];
  [(BrowserController *)v6 validateCommand:v4];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v4 = self;
  BrowserSplitViewController.forwardingTarget(for:)(a3, v12);

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
  v4 = self;
  if ([v3 isEnhancedVerticalTabsEnabled])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(BrowserSplitViewController *)v4 sidebarButtonItem];
  }

  return v5;
}

- (UIBarButtonItem)trailingSidebarButtonItem
{
  v3 = objc_opt_self();
  v4 = self;
  if ([v3 isEnhancedVerticalTabsEnabled])
  {
    v5 = [(BrowserSplitViewController *)v4 sidebarButtonItem];
  }

  else
  {
    v5 = [(BrowserSplitViewController *)v4 newTabGroupButtonItem];
  }

  v6 = v5;

  return v6;
}

- (NSArray)trailingSidebarButtonItems
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_215A96980;
  v4 = self;
  *(v3 + 32) = [(BrowserSplitViewController *)v4 sidebarButtonItem];
  *(v3 + 40) = [(BrowserSplitViewController *)v4 newTabGroupButtonItem];

  sub_2159F7DA8(0, &qword_2811A22B8);
  v5 = sub_215A705D0();

  return v5;
}

- (UINavigationBar)topNavigationBar
{
  v2 = self;
  v3 = sub_2159F6C60();

  return v3;
}

- (void)setShowingSidebar:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  sub_2159F6E08(a3, v6, v7);
  sub_21584BA0C(v6);
}

- (void)sidebarVisibilityWillChangeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_2159F7050(v7, v6);
  sub_21584BA0C(v7);
}

- (void)updateAdditionalSafeAreaInsetsFor:(int64_t)a3 isCollapsed:(BOOL)a4
{
  v4 = self;
  sub_2159F74C4();
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = self;
  BrowserSplitViewController.present(_:animated:completion:)(v10, a4, v8, v9);
  sub_21584BA0C(v8);
}

- (BrowserSplitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BrowserSplitViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end