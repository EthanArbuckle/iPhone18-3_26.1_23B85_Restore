@interface SUUIITunesStoreUIPageViewController
- (BOOL)presentDialogForError:(id)a3 pendUntilVisible:(BOOL)a4;
- (SUProductPageViewController)productPageViewController;
- (id)_cancelButtonItem;
- (void)_addCancelButtonToNavigationItem:(id)a3;
- (void)_storeSheetCancelButtonAction:(id)a3;
- (void)dealloc;
- (void)handleFailureWithError:(id)a3;
- (void)resetNavigationItem:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUIITunesStoreUIPageViewController

- (void)dealloc
{
  v3 = [(SUBarButtonItem *)self->_cancelButtonItem target];

  if (v3 == self)
  {
    [(SUBarButtonItem *)self->_cancelButtonItem setTarget:0];
  }

  v4.receiver = self;
  v4.super_class = SUUIITunesStoreUIPageViewController;
  [(SUStorePageViewController *)&v4 dealloc];
}

- (void)handleFailureWithError:(id)a3
{
  v4 = a3;
  if ([(SUViewController *)self isVisible])
  {
    v5.receiver = self;
    v5.super_class = SUUIITunesStoreUIPageViewController;
    [(SUStorePageViewController *)&v5 handleFailureWithError:v4];
  }
}

- (BOOL)presentDialogForError:(id)a3 pendUntilVisible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SUUIITunesStoreUIPageViewController *)self productPageViewController];
  v8 = [v7 productPageStyle];

  if (v8 == 1)
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SUUIITunesStoreUIPageViewController;
    v9 = [(SUViewController *)&v11 presentDialogForError:v6 pendUntilVisible:v4];
  }

  return v9;
}

- (void)resetNavigationItem:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SUUIITunesStoreUIPageViewController;
  [(SUStorePageViewController *)&v5 resetNavigationItem:v4];
  if ([(SUUIITunesStoreUIPageViewController *)self showsCancelButton])
  {
    [(SUUIITunesStoreUIPageViewController *)self _addCancelButtonToNavigationItem:v4];
  }
}

- (void)viewWillLayoutSubviews
{
  if ([(SUUIITunesStoreUIPageViewController *)self showsCancelButton])
  {
    v3 = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    [(SUUIITunesStoreUIPageViewController *)self _addCancelButtonToNavigationItem:v3];
  }

  v4.receiver = self;
  v4.super_class = SUUIITunesStoreUIPageViewController;
  [(SUUIITunesStoreUIPageViewController *)&v4 viewWillLayoutSubviews];
}

- (void)_addCancelButtonToNavigationItem:(id)a3
{
  v4 = a3;
  v7 = [(SUUIITunesStoreUIPageViewController *)self _cancelButtonItem];
  v5 = [(SUViewController *)self clientInterface];
  v6 = [v5 appearance];
  [v6 styleBarButtonItem:v7];

  [v4 setLeftBarButtonItem:v7 animated:0];
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

- (void)_storeSheetCancelButtonAction:(id)a3
{
  v3 = [(SUUIITunesStoreUIPageViewController *)self productPageViewController];
  [v3 _sendDidFinishWithResult:0];
}

- (SUProductPageViewController)productPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_productPageViewController);

  return WeakRetained;
}

@end