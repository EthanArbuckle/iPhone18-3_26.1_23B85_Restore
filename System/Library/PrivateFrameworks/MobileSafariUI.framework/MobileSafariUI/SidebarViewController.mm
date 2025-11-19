@interface SidebarViewController
- (id)preferredFocusEnvironments;
- (void)setContentViewController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SidebarViewController

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = SidebarViewController;
  [(SidebarViewController *)&v10 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  v4 = [(SidebarViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  verticalSeparator = self->_verticalSeparator;
  self->_verticalSeparator = v5;

  v7 = [MEMORY[0x277D75348] opaqueSeparatorColor];
  [(UIView *)self->_verticalSeparator setBackgroundColor:v7];

  v8 = [(SidebarViewController *)self view];
  [v8 addSubview:self->_verticalSeparator];

  v9 = [(SidebarViewController *)self traitOverrides];
  [v9 setNSIntegerValue:1 forTrait:objc_opt_class()];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = SidebarViewController;
  [(SidebarViewController *)&v9 viewWillLayoutSubviews];
  v3 = [(SidebarViewController *)self view];
  v4 = [v3 _sf_usesLeftToRightLayout];

  [(SidebarViewController *)self separatorWidth];
  v6 = v5;
  if (v4)
  {
    v7 = [(SidebarViewController *)self view];
    [v7 bounds];
    Width = CGRectGetWidth(v10);
  }

  else
  {
    Width = -v5;
  }

  [(UIView *)self->_verticalSeparator setFrame:Width, v6, v6, 100000.0];
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  contentViewController = self->_contentViewController;
  v11 = v5;
  if (contentViewController != v5)
  {
    [(UIViewController *)contentViewController willMoveToParentViewController:0];
    v7 = [(UIViewController *)self->_contentViewController view];
    [v7 removeFromSuperview];

    [(UIViewController *)self->_contentViewController removeFromParentViewController];
    objc_storeStrong(&self->_contentViewController, a3);
    if (self->_contentViewController)
    {
      v8 = [(SidebarViewController *)self view];
      [(SidebarViewController *)self addChildViewController:self->_contentViewController];
      v9 = [(UIViewController *)self->_contentViewController view];
      [v9 setAccessibilityIdentifier:@"Sidebar"];
      v10 = [MEMORY[0x277D75348] clearColor];
      [v9 setBackgroundColor:v10];

      [v8 bounds];
      [v9 setFrame:?];
      [v8 addSubview:v9];
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