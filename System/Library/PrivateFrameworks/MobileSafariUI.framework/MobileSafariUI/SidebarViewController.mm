@interface SidebarViewController
- (id)preferredFocusEnvironments;
- (void)setContentViewController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SidebarViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = SidebarViewController;
  [(SidebarViewController *)&v10 viewDidLoad];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  view = [(SidebarViewController *)self view];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  verticalSeparator = self->_verticalSeparator;
  self->_verticalSeparator = v5;

  opaqueSeparatorColor = [MEMORY[0x277D75348] opaqueSeparatorColor];
  [(UIView *)self->_verticalSeparator setBackgroundColor:opaqueSeparatorColor];

  view2 = [(SidebarViewController *)self view];
  [view2 addSubview:self->_verticalSeparator];

  traitOverrides = [(SidebarViewController *)self traitOverrides];
  [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = SidebarViewController;
  [(SidebarViewController *)&v9 viewWillLayoutSubviews];
  view = [(SidebarViewController *)self view];
  _sf_usesLeftToRightLayout = [view _sf_usesLeftToRightLayout];

  [(SidebarViewController *)self separatorWidth];
  v6 = v5;
  if (_sf_usesLeftToRightLayout)
  {
    view2 = [(SidebarViewController *)self view];
    [view2 bounds];
    Width = CGRectGetWidth(v10);
  }

  else
  {
    Width = -v5;
  }

  [(UIView *)self->_verticalSeparator setFrame:Width, v6, v6, 100000.0];
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  contentViewController = self->_contentViewController;
  v11 = controllerCopy;
  if (contentViewController != controllerCopy)
  {
    [(UIViewController *)contentViewController willMoveToParentViewController:0];
    view = [(UIViewController *)self->_contentViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_contentViewController removeFromParentViewController];
    objc_storeStrong(&self->_contentViewController, controller);
    if (self->_contentViewController)
    {
      view2 = [(SidebarViewController *)self view];
      [(SidebarViewController *)self addChildViewController:self->_contentViewController];
      view3 = [(UIViewController *)self->_contentViewController view];
      [view3 setAccessibilityIdentifier:@"Sidebar"];
      clearColor = [MEMORY[0x277D75348] clearColor];
      [view3 setBackgroundColor:clearColor];

      [view2 bounds];
      [view3 setFrame:?];
      [view2 addSubview:view3];
      [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
    }
  }
}

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_contentViewController)
  {
    v4[0] = self->_contentViewController;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

@end