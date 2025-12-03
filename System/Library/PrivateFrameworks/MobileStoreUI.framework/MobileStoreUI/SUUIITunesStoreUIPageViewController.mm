@interface SUUIITunesStoreUIPageViewController
- (BOOL)presentDialogForError:(id)error pendUntilVisible:(BOOL)visible;
- (SUProductPageViewController)productPageViewController;
- (id)_cancelButtonItem;
- (void)_addCancelButtonToNavigationItem:(id)item;
- (void)_storeSheetCancelButtonAction:(id)action;
- (void)dealloc;
- (void)handleFailureWithError:(id)error;
- (void)resetNavigationItem:(id)item;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUIITunesStoreUIPageViewController

- (void)dealloc
{
  target = [(SUBarButtonItem *)self->_cancelButtonItem target];

  if (target == self)
  {
    [(SUBarButtonItem *)self->_cancelButtonItem setTarget:0];
  }

  v4.receiver = self;
  v4.super_class = SUUIITunesStoreUIPageViewController;
  [(SUStorePageViewController *)&v4 dealloc];
}

- (void)handleFailureWithError:(id)error
{
  errorCopy = error;
  if ([(SUViewController *)self isVisible])
  {
    v5.receiver = self;
    v5.super_class = SUUIITunesStoreUIPageViewController;
    [(SUStorePageViewController *)&v5 handleFailureWithError:errorCopy];
  }
}

- (BOOL)presentDialogForError:(id)error pendUntilVisible:(BOOL)visible
{
  visibleCopy = visible;
  errorCopy = error;
  productPageViewController = [(SUUIITunesStoreUIPageViewController *)self productPageViewController];
  productPageStyle = [productPageViewController productPageStyle];

  if (productPageStyle == 1)
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SUUIITunesStoreUIPageViewController;
    v9 = [(SUViewController *)&v11 presentDialogForError:errorCopy pendUntilVisible:visibleCopy];
  }

  return v9;
}

- (void)resetNavigationItem:(id)item
{
  itemCopy = item;
  v5.receiver = self;
  v5.super_class = SUUIITunesStoreUIPageViewController;
  [(SUStorePageViewController *)&v5 resetNavigationItem:itemCopy];
  if ([(SUUIITunesStoreUIPageViewController *)self showsCancelButton])
  {
    [(SUUIITunesStoreUIPageViewController *)self _addCancelButtonToNavigationItem:itemCopy];
  }
}

- (void)viewWillLayoutSubviews
{
  if ([(SUUIITunesStoreUIPageViewController *)self showsCancelButton])
  {
    navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    [(SUUIITunesStoreUIPageViewController *)self _addCancelButtonToNavigationItem:navigationItemForScriptInterface];
  }

  v4.receiver = self;
  v4.super_class = SUUIITunesStoreUIPageViewController;
  [(SUUIITunesStoreUIPageViewController *)&v4 viewWillLayoutSubviews];
}

- (void)_addCancelButtonToNavigationItem:(id)item
{
  itemCopy = item;
  _cancelButtonItem = [(SUUIITunesStoreUIPageViewController *)self _cancelButtonItem];
  clientInterface = [(SUViewController *)self clientInterface];
  appearance = [clientInterface appearance];
  [appearance styleBarButtonItem:_cancelButtonItem];

  [itemCopy setLeftBarButtonItem:_cancelButtonItem animated:0];
}

- (id)_cancelButtonItem
{
  if (!self->_cancelButtonItem)
  {
    v3 = objc_alloc_init(MEMORY[0x277D7FDB0]);
    cancelButtonItem = self->_cancelButtonItem;
    self->_cancelButtonItem = v3;

    [(SUBarButtonItem *)self->_cancelButtonItem setAction:sel__storeSheetCancelButtonAction_];
    [(SUBarButtonItem *)self->_cancelButtonItem setStyle:2];
    [(SUBarButtonItem *)self->_cancelButtonItem setTarget:self];
    v5 = self->_cancelButtonItem;
    if (self->_cancelButtonTitle)
    {
      [(SUBarButtonItem *)self->_cancelButtonItem setTitle:?];
    }

    else
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"CLOSE_SHEET_BUTTON" value:&stru_286AECDE0 table:0];
      [(SUBarButtonItem *)v5 setTitle:v7];
    }
  }

  v8 = self->_cancelButtonItem;

  return v8;
}

- (void)_storeSheetCancelButtonAction:(id)action
{
  productPageViewController = [(SUUIITunesStoreUIPageViewController *)self productPageViewController];
  [productPageViewController _sendDidFinishWithResult:0];
}

- (SUProductPageViewController)productPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_productPageViewController);

  return WeakRetained;
}

@end