@interface SUUIIndexBarEntryListController
+ (id)entryListControllerForEntryListViewElement:(id)a3;
+ (id)entryListControllerForEntryViewElement:(id)a3;
- (SUUIIndexBarEntryListControllerDelegate)delegate;
- (void)_didInvalidate;
@end

@implementation SUUIIndexBarEntryListController

+ (id)entryListControllerForEntryViewElement:(id)a3
{
  v3 = a3;
  v4 = [[SUUIIndexBarSingleEntryListController alloc] initWithEntryViewElement:v3];

  return v4;
}

+ (id)entryListControllerForEntryListViewElement:(id)a3
{
  v3 = a3;
  v4 = [v3 entryListElementType];
  if (v4 == 2)
  {
    v5 = [[SUUIIndexBarLocaleStandardEntryListController alloc] initWithSUUIIndexBarEntryListViewElement:v3];
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = [[SUUIIndexBarDynamicElementEntryListController alloc] initWithEntryListViewElement:v3];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)_didInvalidate
{
  v3 = [(SUUIIndexBarEntryListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 indexBarEntryListControllerDidInvalidate:self];
  }
}

- (SUUIIndexBarEntryListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end