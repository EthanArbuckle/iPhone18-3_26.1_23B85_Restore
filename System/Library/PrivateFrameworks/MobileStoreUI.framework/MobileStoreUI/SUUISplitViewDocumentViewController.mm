@interface SUUISplitViewDocumentViewController
- (BOOL)_isFullyPopulated;
- (SUUISplitViewDocumentViewController)initWithTemplateElement:(id)element clientContext:(id)context;
- (id)_defaultBackgroundColor;
- (id)leftBarButtonItemsForDocument:(id)document;
- (void)_SUUI_endDelayingPresentation;
- (void)_reloadSplitViewControllers;
- (void)dealloc;
- (void)delayPresentationIfNeededForParentViewController:(id)controller;
- (void)documentDidUpdate:(id)update;
- (void)loadView;
- (void)navigationDocumentStackDidChange:(id)change;
- (void)suui_viewWillAppear:(BOOL)appear;
@end

@implementation SUUISplitViewDocumentViewController

- (SUUISplitViewDocumentViewController)initWithTemplateElement:(id)element clientContext:(id)context
{
  elementCopy = element;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = SUUISplitViewDocumentViewController;
  v9 = [(SUUISplitViewDocumentViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_templateElement, element);
    [(SUUIViewController *)v10 setClientContext:contextCopy];
    v11 = objc_alloc_init(_SUUISplitViewDocumentSplitViewController);
    splitViewController = v10->_splitViewController;
    v10->_splitViewController = &v11->super;

    [(SUUISplitViewDocumentViewController *)v10 _reloadSplitViewControllers];
    [(SUUISplitViewDocumentViewController *)v10 addChildViewController:v10->_splitViewController];
  }

  return v10;
}

- (void)dealloc
{
  [(SUUINavigationDocumentController *)self->_leftNavigationDocumentController setDelegate:0];
  [(SUUINavigationDocumentController *)self->_rightNavigationDocumentController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUISplitViewDocumentViewController;
  [(SUUIViewController *)&v3 dealloc];
}

- (void)delayPresentationIfNeededForParentViewController:(id)controller
{
  controllerCopy = controller;
  delayingPresentationViewController = self->_delayingPresentationViewController;
  if (delayingPresentationViewController != controllerCopy)
  {
    [(UIViewController *)delayingPresentationViewController _endDelayingPresentation];
    if ([(SUUISplitViewTemplateElement *)self->_templateElement usesInlineSplitContent]|| [(SUUISplitViewDocumentViewController *)self _isFullyPopulated])
    {
      v7 = self->_delayingPresentationViewController;
      self->_delayingPresentationViewController = 0;
    }

    else
    {
      objc_storeStrong(&self->_delayingPresentationViewController, controller);
      objc_initWeak(&location, self);
      v8 = self->_delayingPresentationViewController;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __88__SUUISplitViewDocumentViewController_delayPresentationIfNeededForParentViewController___block_invoke;
      v9[3] = &unk_2798F7510;
      objc_copyWeak(&v10, &location);
      [(UIViewController *)v8 _beginDelayingPresentation:v9 cancellationHandler:3.0];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __88__SUUISplitViewDocumentViewController_delayPresentationIfNeededForParentViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _SUUI_endDelayingPresentation];

  return 1;
}

- (void)documentDidUpdate:(id)update
{
  templateElement = [update templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = templateElement;

  if (self->_splitViewController)
  {

    [(SUUISplitViewDocumentViewController *)self _reloadSplitViewControllers];
  }
}

- (id)leftBarButtonItemsForDocument:(id)document
{
  v7[1] = *MEMORY[0x277D85DE8];
  displayModeButtonItem = [(UISplitViewController *)self->_splitViewController displayModeButtonItem];
  v4 = displayModeButtonItem;
  if (displayModeButtonItem)
  {
    v7[0] = displayModeButtonItem;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)suui_viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationController = [(SUUINavigationDocumentController *)self->_leftNavigationDocumentController navigationController];
  topViewController = [navigationController topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topViewController suui_viewWillAppear:appearCopy];
  }

  navigationController2 = [(SUUINavigationDocumentController *)self->_rightNavigationDocumentController navigationController];
  topViewController2 = [navigationController2 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [topViewController2 suui_viewWillAppear:appearCopy];
  }

  v9.receiver = self;
  v9.super_class = SUUISplitViewDocumentViewController;
  [(SUUIViewController *)&v9 suui_viewWillAppear:appearCopy];
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  _defaultBackgroundColor = [(SUUISplitViewDocumentViewController *)self _defaultBackgroundColor];
  [v5 setBackgroundColor:_defaultBackgroundColor];

  view = [(UISplitViewController *)self->_splitViewController view];
  [view setAutoresizingMask:18];
  [v5 bounds];
  [view setFrame:?];
  [v5 addSubview:view];
  [(SUUISplitViewDocumentViewController *)self setView:v5];
}

- (void)navigationDocumentStackDidChange:(id)change
{
  changeCopy = change;
  if ([(SUUISplitViewDocumentViewController *)self _isFullyPopulated])
  {
    [(SUUISplitViewDocumentViewController *)self _SUUI_endDelayingPresentation];
  }

  leftNavigationDocumentController = self->_leftNavigationDocumentController;
  v5 = changeCopy;
  if (leftNavigationDocumentController == changeCopy)
  {
    documents = [(SUUINavigationDocumentController *)leftNavigationDocumentController documents];
    lastObject = [documents lastObject];

    navigationBarElement = [lastObject navigationBarElement];
    if (!navigationBarElement)
    {
      templateElement = [lastObject templateElement];
      if (objc_opt_respondsToSelector())
      {
        navigationBarElement = [templateElement navigationBarElement];
      }

      else
      {
        navigationBarElement = 0;
      }
    }

    v10 = [navigationBarElement firstChildForElementType:138];
    splitViewController = self->_splitViewController;
    text = [v10 text];
    string = [text string];
    [(UISplitViewController *)splitViewController _setDisplayModeButtonItemTitle:string];

    v5 = changeCopy;
  }

  MEMORY[0x2821F96F8](leftNavigationDocumentController, v5);
}

- (id)_defaultBackgroundColor
{
  style = [(SUUISplitViewTemplateElement *)self->_templateElement style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    whiteColor = color;
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  v6 = whiteColor;

  return v6;
}

- (BOOL)_isFullyPopulated
{
  documentStackItems = [(SUUINavigationDocumentController *)self->_leftNavigationDocumentController documentStackItems];
  if ([documentStackItems count])
  {
    documentStackItems2 = [(SUUINavigationDocumentController *)self->_rightNavigationDocumentController documentStackItems];
    v5 = [documentStackItems2 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_reloadSplitViewControllers
{
  v42[2] = *MEMORY[0x277D85DE8];
  leftSplitElement = [(SUUISplitViewTemplateElement *)self->_templateElement leftSplitElement];
  style = [leftSplitElement style];

  if (!self->_leftNavigationDocumentController)
  {
    v5 = objc_alloc_init(MEMORY[0x277D757A0]);
    v6 = [[SUUINavigationDocumentController alloc] initWithNavigationController:v5];
    leftNavigationDocumentController = self->_leftNavigationDocumentController;
    self->_leftNavigationDocumentController = v6;

    v8 = self->_leftNavigationDocumentController;
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUINavigationDocumentController *)v8 setClientContext:clientContext];

    [(SUUINavigationDocumentController *)self->_leftNavigationDocumentController setDelegate:self];
    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];

    view = [v5 view];
    v13 = view;
    if (color)
    {
      [view setBackgroundColor:color];
    }

    else
    {
      _defaultBackgroundColor = [(SUUISplitViewDocumentViewController *)self _defaultBackgroundColor];
      [v13 setBackgroundColor:_defaultBackgroundColor];
    }
  }

  leftNavigationDocument = [(SUUISplitViewTemplateElement *)self->_templateElement leftNavigationDocument];
  [leftNavigationDocument setNavigationDocumentController:self->_leftNavigationDocumentController];

  if (!self->_rightNavigationDocumentController)
  {
    v16 = objc_alloc_init(MEMORY[0x277D757A0]);
    v17 = [[SUUINavigationDocumentController alloc] initWithNavigationController:v16];
    rightNavigationDocumentController = self->_rightNavigationDocumentController;
    self->_rightNavigationDocumentController = v17;

    v19 = self->_rightNavigationDocumentController;
    clientContext2 = [(SUUIViewController *)self clientContext];
    [(SUUINavigationDocumentController *)v19 setClientContext:clientContext2];

    [(SUUINavigationDocumentController *)self->_rightNavigationDocumentController setDelegate:self];
    rightSplitElement = [(SUUISplitViewTemplateElement *)self->_templateElement rightSplitElement];
    style2 = [rightSplitElement style];
    ikBackgroundColor2 = [style2 ikBackgroundColor];
    color2 = [ikBackgroundColor2 color];

    view2 = [v16 view];
    v26 = view2;
    if (color2)
    {
      [view2 setBackgroundColor:color2];
    }

    else
    {
      _defaultBackgroundColor2 = [(SUUISplitViewDocumentViewController *)self _defaultBackgroundColor];
      [v26 setBackgroundColor:_defaultBackgroundColor2];
    }
  }

  rightNavigationDocument = [(SUUISplitViewTemplateElement *)self->_templateElement rightNavigationDocument];
  [rightNavigationDocument setNavigationDocumentController:self->_rightNavigationDocumentController];

  splitViewController = self->_splitViewController;
  navigationController = [(SUUINavigationDocumentController *)self->_leftNavigationDocumentController navigationController];
  v42[0] = navigationController;
  navigationController2 = [(SUUINavigationDocumentController *)self->_rightNavigationDocumentController navigationController];
  v42[1] = navigationController2;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  [(UISplitViewController *)splitViewController setViewControllers:v32];

  [(UISplitViewController *)self->_splitViewController setPreferredDisplayMode:[(SUUISplitViewTemplateElement *)self->_templateElement preferredDisplayMode]];
  itemWidth = [style itemWidth];
  [itemWidth floatValue];
  v35 = v34;
  v36 = v34;

  if (v35 >= 1.0)
  {
    [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:v36];
    [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:v36];
    v40 = self->_splitViewController;
    v41 = *MEMORY[0x277D76EE0];
  }

  else
  {
    v37 = self->_splitViewController;
    if (v35 >= 0.00000011921)
    {
      [(UISplitViewController *)v37 setMaximumPrimaryColumnWidth:1.79769313e308];
      v38 = self->_splitViewController;
      v39 = *MEMORY[0x277D76EE0];
    }

    else
    {
      v36 = *MEMORY[0x277D76EE0];
      [(UISplitViewController *)v37 setMaximumPrimaryColumnWidth:*MEMORY[0x277D76EE0]];
      v38 = self->_splitViewController;
      v39 = v36;
    }

    [(UISplitViewController *)v38 setMinimumPrimaryColumnWidth:v39];
    v40 = self->_splitViewController;
    v41 = v36;
  }

  [(UISplitViewController *)v40 setPreferredPrimaryColumnWidthFraction:v41];
}

- (void)_SUUI_endDelayingPresentation
{
  delayingPresentationViewController = self->_delayingPresentationViewController;
  if (delayingPresentationViewController)
  {
    [(UIViewController *)delayingPresentationViewController _endDelayingPresentation];
    v4 = self->_delayingPresentationViewController;
    self->_delayingPresentationViewController = 0;
  }
}

@end