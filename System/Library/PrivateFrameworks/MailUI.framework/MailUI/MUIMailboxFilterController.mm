@interface MUIMailboxFilterController
- (MUIMailboxFilterController)initWithMailboxes:(id)mailboxes focus:(id)focus baseStoragePath:(id)path defaultsRepresentationProvider:(id)provider filterRepresentationProvider:(id)representationProvider mailboxFilterClass:(Class)class filterProviderClass:(Class)providerClass isFilteringAvailable:(BOOL)self0;
- (void)reselectFocusedAccounts;
- (void)updateWithFilterContext:(id)context;
@end

@implementation MUIMailboxFilterController

- (MUIMailboxFilterController)initWithMailboxes:(id)mailboxes focus:(id)focus baseStoragePath:(id)path defaultsRepresentationProvider:(id)provider filterRepresentationProvider:(id)representationProvider mailboxFilterClass:(Class)class filterProviderClass:(Class)providerClass isFilteringAvailable:(BOOL)self0
{
  mailboxesCopy = mailboxes;
  focusCopy = focus;
  pathCopy = path;
  providerCopy = provider;
  representationProviderCopy = representationProvider;
  v28.receiver = self;
  v28.super_class = MUIMailboxFilterController;
  v21 = [(MUIMailboxFilterController *)&v28 init];
  if (v21)
  {
    v22 = [[MUIMailboxFilterContext alloc] initWithMailboxes:mailboxesCopy focus:focusCopy isFilteringAvailable:available];
    v23 = [[MUIMailboxFilterPersistedStore alloc] initWithBaseStoragePath:pathCopy defaultsRepresentationProvider:providerCopy filterRepresentationProvider:representationProviderCopy mailboxFilterClass:class filterProviderClass:providerClass];
    store = v21->_store;
    v21->_store = v23;

    v25 = [(MUIMailboxFilterPersistedStore *)v21->_store filterViewModelForContext:v22];
    viewModel = v21->_viewModel;
    v21->_viewModel = v25;
  }

  return v21;
}

- (void)updateWithFilterContext:(id)context
{
  contextCopy = context;
  viewModel = [(MUIMailboxFilterController *)self viewModel];
  filterContext = [viewModel filterContext];

  if (filterContext != contextCopy)
  {
    store = [(MUIMailboxFilterController *)self store];
    v7 = [store filterViewModelForContext:contextCopy];
    viewModel = self->_viewModel;
    self->_viewModel = v7;
  }
}

- (void)reselectFocusedAccounts
{
  viewModel = [(MUIMailboxFilterController *)self viewModel];
  [viewModel reselectFocusFilters];
}

@end