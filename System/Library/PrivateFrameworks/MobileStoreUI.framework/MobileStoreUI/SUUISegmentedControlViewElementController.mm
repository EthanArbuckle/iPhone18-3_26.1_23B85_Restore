@interface SUUISegmentedControlViewElementController
- (SUUISegmentedControlViewElementController)initWithViewElement:(id)element segmentedControl:(id)control;
- (UIViewController)parentViewController;
- (id)_segmentedControl;
- (void)_cancelMenuAction:(id)action;
- (void)_connectToSegmentedControl:(id)control;
- (void)_destroyMenuSheetViewController;
- (void)_destroyPopoverController;
- (void)_reloadPropertiesForSegmentedControl:(id)control;
- (void)_showMoreListSheetWithTitles:(id)titles selectedIndex:(int64_t)index;
- (void)_showPopoverMoreListWithTitles:(id)titles;
- (void)dealloc;
- (void)menuPopover:(id)popover didSelectMenuItemAtIndex:(int64_t)index;
- (void)menuPopover:(id)popover willRepositionToRect:(CGRect *)rect inView:(id *)view;
- (void)menuPopoverDidCancel:(id)cancel;
- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index;
- (void)reloadAfterDocumentUpdate;
- (void)segmentedControl:(id)control showMoreListWithTitles:(id)titles;
- (void)setDefaultMaximumNumberOfVisibleItems:(int64_t)items;
- (void)setDesiredSegmentWidth:(double)width;
@end

@implementation SUUISegmentedControlViewElementController

- (SUUISegmentedControlViewElementController)initWithViewElement:(id)element segmentedControl:(id)control
{
  elementCopy = element;
  controlCopy = control;
  v12.receiver = self;
  v12.super_class = SUUISegmentedControlViewElementController;
  v9 = [(SUUISegmentedControlViewElementController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_defaultMaximumNumberOfVisibleItems = -1;
    v9->_desiredSegmentWidth = 100.0;
    objc_storeStrong(&v9->_viewElement, element);
    if (controlCopy)
    {
      objc_storeStrong(&v10->_segmentedControl, control);
      [(SUUISegmentedControlViewElementController *)v10 _connectToSegmentedControl:controlCopy];
    }
  }

  return v10;
}

- (void)dealloc
{
  [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setTarget:0];
  [(SUUIMenuViewController *)self->_menuSheetViewController setDelegate:0];
  [(SUUIMenuPopoverController *)self->_popoverMenuViewController setDelegate:0];
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUISegmentedControlViewElementController;
  [(SUUISegmentedControlViewElementController *)&v3 dealloc];
}

- (void)reloadAfterDocumentUpdate
{
  if (self->_segmentedControl && [(SUUISegmentedControlViewElement *)self->_viewElement updateType])
  {
    segmentedControl = self->_segmentedControl;

    [(SUUISegmentedControlViewElementController *)self _connectToSegmentedControl:segmentedControl];
  }
}

- (void)setDefaultMaximumNumberOfVisibleItems:(int64_t)items
{
  if (self->_defaultMaximumNumberOfVisibleItems != items)
  {
    self->_defaultMaximumNumberOfVisibleItems = items;
    [(SUUISegmentedControlViewElementController *)self _reloadPropertiesForSegmentedControl:self->_segmentedControl];
  }
}

- (void)setDesiredSegmentWidth:(double)width
{
  if (self->_desiredSegmentWidth != width)
  {
    self->_desiredSegmentWidth = width;
    [(SUUIFlexibleSegmentedControl *)self->_segmentedControl setDesiredSegmentWidth:?];
  }
}

- (void)segmentedControl:(id)control showMoreListWithTitles:(id)titles
{
  controlCopy = control;
  titlesCopy = titles;
  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    [(SUUISegmentedControlViewElementController *)self _showPopoverMoreListWithTitles:titlesCopy];
  }

  else
  {
    itemTitles = [controlCopy itemTitles];
    -[SUUISegmentedControlViewElementController _showMoreListSheetWithTitles:selectedIndex:](self, "_showMoreListSheetWithTitles:selectedIndex:", itemTitles, [controlCopy selectedSegmentIndex]);
  }
}

- (void)menuPopoverDidCancel:(id)cancel
{
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl cancelMoreList];

  [(SUUISegmentedControlViewElementController *)self _destroyPopoverController];
}

- (void)menuPopover:(id)popover didSelectMenuItemAtIndex:(int64_t)index
{
  moreListIndex = [(SUUIFlexibleSegmentedControl *)self->_segmentedControl moreListIndex];
  [(SUUISegmentedControlViewElement *)self->_viewElement dispatchEventOfType:2 forItemAtIndex:moreListIndex + index];
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:moreListIndex + index];

  [(SUUISegmentedControlViewElementController *)self _destroyPopoverController];
}

- (void)menuPopover:(id)popover willRepositionToRect:(CGRect *)rect inView:(id *)view
{
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl frameForSegmentWithIndex:[(SUUIFlexibleSegmentedControl *)self->_segmentedControl moreListIndex:popover]];
  rect->origin.x = v6;
  rect->origin.y = v7;
  rect->size.width = v8;
  rect->size.height = v9;
}

- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index
{
  [(SUUISegmentedControlViewElement *)self->_viewElement dispatchEventOfType:2 forItemAtIndex:?];
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl cancelMoreList];
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:index];
  [(SUUIMenuViewController *)self->_menuSheetViewController dismissViewControllerAnimated:1 completion:0];

  [(SUUISegmentedControlViewElementController *)self _destroyMenuSheetViewController];
}

- (void)_cancelMenuAction:(id)action
{
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl cancelMoreList];
  [(SUUIMenuViewController *)self->_menuSheetViewController dismissViewControllerAnimated:1 completion:0];

  [(SUUISegmentedControlViewElementController *)self _destroyMenuSheetViewController];
}

- (void)_connectToSegmentedControl:(id)control
{
  controlCopy = control;
  [controlCopy setDelegate:self];
  [controlCopy setDesiredSegmentWidth:self->_desiredSegmentWidth];
  segmentItemTitles = [(SUUISegmentedControlViewElement *)self->_viewElement segmentItemTitles];
  [controlCopy setItemTitles:segmentItemTitles];

  moreListTitle = [(SUUISegmentedControlViewElement *)self->_viewElement moreListTitle];
  [controlCopy setMoreListTitle:moreListTitle];

  [controlCopy setSelectedSegmentIndex:{-[SUUISegmentedControlViewElement initialSelectedItemIndex](self->_viewElement, "initialSelectedItemIndex")}];
  style = [(SUUISegmentedControlViewElement *)self->_viewElement style];
  v7 = SUUIViewElementPlainColorWithStyle(style, 0);
  [controlCopy setTintColor:v7];

  [(SUUISegmentedControlViewElementController *)self _reloadPropertiesForSegmentedControl:controlCopy];
}

- (void)_destroyMenuSheetViewController
{
  [(SUUIMenuViewController *)self->_menuSheetViewController setDelegate:0];
  [(SUUIMenuViewController *)self->_menuSheetViewController dismissViewControllerAnimated:1 completion:0];
  menuSheetViewController = self->_menuSheetViewController;
  self->_menuSheetViewController = 0;

  [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setTarget:0];
  menuSheetCancelButtonItem = self->_menuSheetCancelButtonItem;
  self->_menuSheetCancelButtonItem = 0;
}

- (void)_destroyPopoverController
{
  [(SUUIMenuPopoverController *)self->_popoverMenuViewController setDelegate:0];
  popoverMenuViewController = self->_popoverMenuViewController;
  self->_popoverMenuViewController = 0;
}

- (void)_reloadPropertiesForSegmentedControl:(id)control
{
  controlCopy = control;
  defaultMaximumNumberOfVisibleItems = [(SUUISegmentedControlViewElement *)self->_viewElement maximumNumberOfVisibleItems];
  if (defaultMaximumNumberOfVisibleItems > 0 || (defaultMaximumNumberOfVisibleItems = self->_defaultMaximumNumberOfVisibleItems, defaultMaximumNumberOfVisibleItems >= 1))
  {
    [controlCopy setMaximumNumberOfVisibleItems:defaultMaximumNumberOfVisibleItems];
  }

  style = [(SUUISegmentedControlViewElement *)self->_viewElement style];
  v6 = [style valueForStyle:@"itml-segmented-control-width"];
  v7 = [v6 isEqualToString:@"full"];

  [controlCopy setSizesSegmentsToFitWidth:v7];
}

- (id)_segmentedControl
{
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = objc_alloc_init(SUUIFlexibleSegmentedControl);
    v5 = self->_segmentedControl;
    self->_segmentedControl = v4;

    [(SUUISegmentedControlViewElementController *)self _connectToSegmentedControl:self->_segmentedControl];
    segmentedControl = self->_segmentedControl;
  }

  return segmentedControl;
}

- (void)_showMoreListSheetWithTitles:(id)titles selectedIndex:(int64_t)index
{
  if (!self->_menuSheetViewController)
  {
    titlesCopy = titles;
    parentViewController = [(SUUISegmentedControlViewElementController *)self parentViewController];
    navigationController = [parentViewController navigationController];
    v9 = navigationController;
    if (navigationController)
    {
      navigationBar = [navigationController navigationBar];
      barStyle = [navigationBar barStyle];
    }

    else
    {
      barStyle = 0;
    }

    v12 = [[SUUIMenuViewController alloc] initWithMenuTitles:titlesCopy];

    menuSheetViewController = self->_menuSheetViewController;
    self->_menuSheetViewController = v12;

    [(SUUIMenuViewController *)self->_menuSheetViewController setDelegate:self];
    [(SUUIMenuViewController *)self->_menuSheetViewController setIndexOfCheckedTitle:index];
    v14 = self->_menuSheetViewController;
    moreListTitle = [(SUUIFlexibleSegmentedControl *)self->_segmentedControl moreListTitle];
    [(SUUIMenuViewController *)v14 setTitle:moreListTitle];

    if (barStyle == 1)
    {
      [(SUUIMenuViewController *)self->_menuSheetViewController setMenuStyle:1];
    }

    v16 = objc_alloc_init(MEMORY[0x277D751E0]);
    menuSheetCancelButtonItem = self->_menuSheetCancelButtonItem;
    self->_menuSheetCancelButtonItem = v16;

    [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setAction:sel__cancelMenuAction_];
    [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setStyle:2];
    [(UIBarButtonItem *)self->_menuSheetCancelButtonItem setTarget:self];
    v18 = self->_menuSheetCancelButtonItem;
    clientContext = [(SUUISegmentedControlViewElementController *)self clientContext];
    v20 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"CANCEL"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"CANCEL" inBundles:0];
    }
    v21 = ;
    [(UIBarButtonItem *)v18 setTitle:v21];

    navigationItem = [(SUUIMenuViewController *)self->_menuSheetViewController navigationItem];
    [navigationItem setLeftBarButtonItem:self->_menuSheetCancelButtonItem];

    v23 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_menuSheetViewController];
    navigationBar2 = [v23 navigationBar];
    [navigationBar2 setBarStyle:barStyle];

    view = [v23 view];
    [view setSemanticContentAttribute:storeSemanticContentAttribute()];

    navigationBar3 = [v23 navigationBar];
    [navigationBar3 setSemanticContentAttribute:storeSemanticContentAttribute()];

    [parentViewController presentViewController:v23 animated:1 completion:0];
  }
}

- (void)_showPopoverMoreListWithTitles:(id)titles
{
  if (!self->_popoverMenuViewController)
  {
    titlesCopy = titles;
    v6 = [[SUUIMenuPopoverController alloc] initWithMenuTitles:titlesCopy];

    popoverMenuViewController = self->_popoverMenuViewController;
    self->_popoverMenuViewController = v6;

    [(SUUIMenuPopoverController *)self->_popoverMenuViewController setDelegate:self];
    [(SUUIFlexibleSegmentedControl *)self->_segmentedControl frameForSegmentWithIndex:[(SUUIFlexibleSegmentedControl *)self->_segmentedControl moreListIndex]];
    v8 = self->_popoverMenuViewController;
    segmentedControl = self->_segmentedControl;

    [(SUUIMenuPopoverController *)v8 presentFromRect:segmentedControl inView:15 permittedArrowDirections:1 animated:?];
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end