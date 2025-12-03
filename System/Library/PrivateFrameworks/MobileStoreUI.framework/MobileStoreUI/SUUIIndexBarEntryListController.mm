@interface SUUIIndexBarEntryListController
+ (id)entryListControllerForEntryListViewElement:(id)element;
+ (id)entryListControllerForEntryViewElement:(id)element;
- (SUUIIndexBarEntryListControllerDelegate)delegate;
- (void)_didInvalidate;
@end

@implementation SUUIIndexBarEntryListController

+ (id)entryListControllerForEntryViewElement:(id)element
{
  elementCopy = element;
  v4 = [[SUUIIndexBarSingleEntryListController alloc] initWithEntryViewElement:elementCopy];

  return v4;
}

+ (id)entryListControllerForEntryListViewElement:(id)element
{
  elementCopy = element;
  entryListElementType = [elementCopy entryListElementType];
  if (entryListElementType == 2)
  {
    v5 = [[SUUIIndexBarLocaleStandardEntryListController alloc] initWithSUUIIndexBarEntryListViewElement:elementCopy];
    goto LABEL_5;
  }

  if (entryListElementType == 1)
  {
    v5 = [[SUUIIndexBarDynamicElementEntryListController alloc] initWithEntryListViewElement:elementCopy];
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
  delegate = [(SUUIIndexBarEntryListController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate indexBarEntryListControllerDidInvalidate:self];
  }
}

- (SUUIIndexBarEntryListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end