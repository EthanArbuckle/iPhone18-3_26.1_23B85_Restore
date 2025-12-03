@interface SUUINavigationBarSegmentsController
- (SUUINavigationBarSegmentsController)initWithViewElement:(id)element;
- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)item;
- (void)willAppearInNavigationBar;
@end

@implementation SUUINavigationBarSegmentsController

- (SUUINavigationBarSegmentsController)initWithViewElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUINavigationBarSegmentsController;
  v5 = [(SUUINavigationBarSegmentsController *)&v9 init];
  if (v5)
  {
    v6 = [[SUUISegmentedControlViewElementController alloc] initWithViewElement:elementCopy];
    underlyingController = v5->_underlyingController;
    v5->_underlyingController = v6;

    [(SUUISegmentedControlViewElementController *)v5->_underlyingController setDesiredSegmentWidth:0.0];
  }

  return v5;
}

- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)item
{
  underlyingController = self->_underlyingController;
  itemCopy = item;
  [(SUUISegmentedControlViewElementController *)underlyingController reloadAfterDocumentUpdate];
  v6.receiver = self;
  v6.super_class = SUUINavigationBarSegmentsController;
  [(SUUINavigationBarSectionController *)&v6 reloadAfterDocumentUpdateWithNavigationItem:itemCopy];
}

- (void)willAppearInNavigationBar
{
  context = [(SUUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v5 = v4;
  parentViewController = [context parentViewController];
  if ([parentViewController isViewLoaded])
  {
    view = [parentViewController view];
    [view bounds];
    v5 = v8;
  }

  if (v5 <= 320.0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 5;
  }

  [(SUUISegmentedControlViewElementController *)self->_underlyingController setDefaultMaximumNumberOfVisibleItems:v9];
  v10.receiver = self;
  v10.super_class = SUUINavigationBarSegmentsController;
  [(SUUINavigationBarSectionController *)&v10 willAppearInNavigationBar];
}

@end