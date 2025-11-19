@interface SUUISegmentedControlViewElementController
- (SUUISegmentedControlViewElementController)initWithViewElement:(id)a3 segmentedControl:(id)a4;
- (UIViewController)parentViewController;
- (id)_segmentedControl;
- (void)_cancelMenuAction:(id)a3;
- (void)_connectToSegmentedControl:(id)a3;
- (void)_destroyMenuSheetViewController;
- (void)_destroyPopoverController;
- (void)_reloadPropertiesForSegmentedControl:(id)a3;
- (void)_showMoreListSheetWithTitles:(id)a3 selectedIndex:(int64_t)a4;
- (void)_showPopoverMoreListWithTitles:(id)a3;
- (void)dealloc;
- (void)menuPopover:(id)a3 didSelectMenuItemAtIndex:(int64_t)a4;
- (void)menuPopover:(id)a3 willRepositionToRect:(CGRect *)a4 inView:(id *)a5;
- (void)menuPopoverDidCancel:(id)a3;
- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)reloadAfterDocumentUpdate;
- (void)segmentedControl:(id)a3 showMoreListWithTitles:(id)a4;
- (void)setDefaultMaximumNumberOfVisibleItems:(int64_t)a3;
- (void)setDesiredSegmentWidth:(double)a3;
@end

@implementation SUUISegmentedControlViewElementController

- (SUUISegmentedControlViewElementController)initWithViewElement:(id)a3 segmentedControl:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUUISegmentedControlViewElementController;
  v9 = [(SUUISegmentedControlViewElementController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_defaultMaximumNumberOfVisibleItems = -1;
    v9->_desiredSegmentWidth = 100.0;
    objc_storeStrong(&v9->_viewElement, a3);
    if (v8)
    {
      objc_storeStrong(&v10->_segmentedControl, a4);
      [(SUUISegmentedControlViewElementController *)v10 _connectToSegmentedControl:v8];
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

- (void)setDefaultMaximumNumberOfVisibleItems:(int64_t)a3
{
  if (self->_defaultMaximumNumberOfVisibleItems != a3)
  {
    self->_defaultMaximumNumberOfVisibleItems = a3;
    [(SUUISegmentedControlViewElementController *)self _reloadPropertiesForSegmentedControl:self->_segmentedControl];
  }
}

- (void)setDesiredSegmentWidth:(double)a3
{
  if (self->_desiredSegmentWidth != a3)
  {
    self->_desiredSegmentWidth = a3;
    [(SUUIFlexibleSegmentedControl *)self->_segmentedControl setDesiredSegmentWidth:?];
  }
}

- (void)segmentedControl:(id)a3 showMoreListWithTitles:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    [(SUUISegmentedControlViewElementController *)self _showPopoverMoreListWithTitles:v6];
  }

  else
  {
    v7 = [v8 itemTitles];
    -[SUUISegmentedControlViewElementController _showMoreListSheetWithTitles:selectedIndex:](self, "_showMoreListSheetWithTitles:selectedIndex:", v7, [v8 selectedSegmentIndex]);
  }
}

- (void)menuPopoverDidCancel:(id)a3
{
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl cancelMoreList];

  [(SUUISegmentedControlViewElementController *)self _destroyPopoverController];
}

- (void)menuPopover:(id)a3 didSelectMenuItemAtIndex:(int64_t)a4
{
  v6 = [(SUUIFlexibleSegmentedControl *)self->_segmentedControl moreListIndex];
  [(SUUISegmentedControlViewElement *)self->_viewElement dispatchEventOfType:2 forItemAtIndex:v6 + a4];
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:v6 + a4];

  [(SUUISegmentedControlViewElementController *)self _destroyPopoverController];
}

- (void)menuPopover:(id)a3 willRepositionToRect:(CGRect *)a4 inView:(id *)a5
{
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl frameForSegmentWithIndex:[(SUUIFlexibleSegmentedControl *)self->_segmentedControl moreListIndex:a3]];
  a4->origin.x = v6;
  a4->origin.y = v7;
  a4->size.width = v8;
  a4->size.height = v9;
}

- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  [(SUUISegmentedControlViewElement *)self->_viewElement dispatchEventOfType:2 forItemAtIndex:?];
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl cancelMoreList];
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:a4];
  [(SUUIMenuViewController *)self->_menuSheetViewController dismissViewControllerAnimated:1 completion:0];

  [(SUUISegmentedControlViewElementController *)self _destroyMenuSheetViewController];
}

- (void)_cancelMenuAction:(id)a3
{
  [(SUUIFlexibleSegmentedControl *)self->_segmentedControl cancelMoreList];
  [(SUUIMenuViewController *)self->_menuSheetViewController dismissViewControllerAnimated:1 completion:0];

  [(SUUISegmentedControlViewElementController *)self _destroyMenuSheetViewController];
}

- (void)_connectToSegmentedControl:(id)a3
{
  v8 = a3;
  [v8 setDelegate:self];
  [v8 setDesiredSegmentWidth:self->_desiredSegmentWidth];
  v4 = [(SUUISegmentedControlViewElement *)self->_viewElement segmentItemTitles];
  [v8 setItemTitles:v4];

  v5 = [(SUUISegmentedControlViewElement *)self->_viewElement moreListTitle];
  [v8 setMoreListTitle:v5];

  [v8 setSelectedSegmentIndex:{-[SUUISegmentedControlViewElement initialSelectedItemIndex](self->_viewElement, "initialSelectedItemIndex")}];
  v6 = [(SUUISegmentedControlViewElement *)self->_viewElement style];
  v7 = SUUIViewElementPlainColorWithStyle(v6, 0);
  [v8 setTintColor:v7];

  [(SUUISegmentedControlViewElementController *)self _reloadPropertiesForSegmentedControl:v8];
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

- (void)_reloadPropertiesForSegmentedControl:(id)a3
{
  v8 = a3;
  defaultMaximumNumberOfVisibleItems = [(SUUISegmentedControlViewElement *)self->_viewElement maximumNumberOfVisibleItems];
  if (defaultMaximumNumberOfVisibleItems > 0 || (defaultMaximumNumberOfVisibleItems = self->_defaultMaximumNumberOfVisibleItems, defaultMaximumNumberOfVisibleItems >= 1))
  {
    [v8 setMaximumNumberOfVisibleItems:defaultMaximumNumberOfVisibleItems];
  }

  v5 = [(SUUISegmentedControlViewElement *)self->_viewElement style];
  v6 = [v5 valueForStyle:@"itml-segmented-control-width"];
  v7 = [v6 isEqualToString:@"full"];

  [v8 setSizesSegmentsToFitWidth:v7];
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

- (void)_showMoreListSheetWithTitles:(id)a3 selectedIndex:(int64_t)a4
{
  if (!self->_menuSheetViewController)
  {
    v7 = a3;
    v27 = [(SUUISegmentedControlViewElementController *)self parentViewController];
    v8 = [v27 navigationController];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 navigationBar];
      v11 = [v10 barStyle];
    }

    else
    {
      v11 = 0;
    }

    v12 = [[SUUIMenuViewController alloc] initWithMenuTitles:v7];

    menuSheetViewController = self->_menuSheetViewController;
    self->_menuSheetViewController = v12;

    [(SUUIMenuViewController *)self->_menuSheetViewController setDelegate:self];
    [(SUUIMenuViewController *)self->_menuSheetViewController setIndexOfCheckedTitle:a4];
    v14 = self->_menuSheetViewController;
    v15 = [(SUUIFlexibleSegmentedControl *)self->_segmentedControl moreListTitle];
    [(SUUIMenuViewController *)v14 setTitle:v15];

    if (v11 == 1)
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
    v19 = [(SUUISegmentedControlViewElementController *)self clientContext];
    v20 = v19;
    if (v19)
    {
      [v19 localizedStringForKey:@"CANCEL"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"CANCEL" inBundles:0];
    }
    v21 = ;
    [(UIBarButtonItem *)v18 setTitle:v21];

    v22 = [(SUUIMenuViewController *)self->_menuSheetViewController navigationItem];
    [v22 setLeftBarButtonItem:self->_menuSheetCancelButtonItem];

    v23 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_menuSheetViewController];
    v24 = [v23 navigationBar];
    [v24 setBarStyle:v11];

    v25 = [v23 view];
    [v25 setSemanticContentAttribute:storeSemanticContentAttribute()];

    v26 = [v23 navigationBar];
    [v26 setSemanticContentAttribute:storeSemanticContentAttribute()];

    [v27 presentViewController:v23 animated:1 completion:0];
  }
}

- (void)_showPopoverMoreListWithTitles:(id)a3
{
  if (!self->_popoverMenuViewController)
  {
    v5 = a3;
    v6 = [[SUUIMenuPopoverController alloc] initWithMenuTitles:v5];

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