@interface _UIViewServiceViewController
- (_UIViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setContainedNavController:(id)controller;
- (void)viewDidLayoutSubviews;
@end

@implementation _UIViewServiceViewController

- (_UIViewServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v17.receiver = self;
  v17.super_class = _UIViewServiceViewController;
  v8 = [(_UIViewServiceViewController *)&v17 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = objc_alloc_init(_UIPreferredContentSizeRelayingNavigationController);
    objc_initWeak(&location, v8);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __55___UIViewServiceViewController_initWithNibName_bundle___block_invoke;
    v14 = &unk_278DD66E0;
    objc_copyWeak(&v15, &location);
    [(_UIPreferredContentSizeRelayingNavigationController *)v9 setPreferredContentSizeDidChange:&v11];
    [(_UIViewServiceViewController *)v8 setContainedNavController:v9, v11, v12, v13, v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)setContainedNavController:(id)controller
{
  objc_storeStrong(&self->_containedNavController, controller);
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  [(UINavigationController *)self->_containedNavController beginAppearanceTransition:1 animated:0];
  view = [(UINavigationController *)self->_containedNavController view];
  [view setAutoresizingMask:18];

  [(_UIViewServiceViewController *)self addChildViewController:self->_containedNavController];
  view2 = [(_UIViewServiceViewController *)self view];
  view3 = [(UINavigationController *)self->_containedNavController view];
  [view2 addSubview:view3];

  [(UINavigationController *)self->_containedNavController didMoveToParentViewController:self];
  [(UINavigationController *)self->_containedNavController endAppearanceTransition];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = _UIViewServiceViewController;
  [(_UIViewServiceViewController *)&v2 viewDidLayoutSubviews];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v5 = cdui_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_UIViewServiceViewController *)containerCopy preferredContentSizeDidChangeForChildContentContainer:v5];
  }

  [containerCopy preferredContentSize];
  [(_UIViewServiceViewController *)self _updatedContentSizeForPreferredContentSize:?];
  [(_UIViewServiceViewController *)self setPreferredContentSize:?];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  [viewController preferredContentSize];
  [controllerCopy setPreferredContentSize:?];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  [a1 preferredContentSize];
  v3 = NSStringFromCGSize(v7);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_243823000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] requesting content size %@", &v4, 0xCu);
}

@end