@interface MUIMailboxFilterController
- (MUIMailboxFilterController)initWithMailboxes:(id)a3 focus:(id)a4 baseStoragePath:(id)a5 defaultsRepresentationProvider:(id)a6 filterRepresentationProvider:(id)a7 mailboxFilterClass:(Class)a8 filterProviderClass:(Class)a9 isFilteringAvailable:(BOOL)a10;
- (void)reselectFocusedAccounts;
- (void)updateWithFilterContext:(id)a3;
@end

@implementation MUIMailboxFilterController

- (MUIMailboxFilterController)initWithMailboxes:(id)a3 focus:(id)a4 baseStoragePath:(id)a5 defaultsRepresentationProvider:(id)a6 filterRepresentationProvider:(id)a7 mailboxFilterClass:(Class)a8 filterProviderClass:(Class)a9 isFilteringAvailable:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v28.receiver = self;
  v28.super_class = MUIMailboxFilterController;
  v21 = [(MUIMailboxFilterController *)&v28 init];
  if (v21)
  {
    v22 = [[MUIMailboxFilterContext alloc] initWithMailboxes:v16 focus:v17 isFilteringAvailable:a10];
    v23 = [[MUIMailboxFilterPersistedStore alloc] initWithBaseStoragePath:v18 defaultsRepresentationProvider:v19 filterRepresentationProvider:v20 mailboxFilterClass:a8 filterProviderClass:a9];
    store = v21->_store;
    v21->_store = v23;

    v25 = [(MUIMailboxFilterPersistedStore *)v21->_store filterViewModelForContext:v22];
    viewModel = v21->_viewModel;
    v21->_viewModel = v25;
  }

  return v21;
}

- (void)updateWithFilterContext:(id)a3
{
  v9 = a3;
  v4 = [(MUIMailboxFilterController *)self viewModel];
  v5 = [v4 filterContext];

  if (v5 != v9)
  {
    v6 = [(MUIMailboxFilterController *)self store];
    v7 = [v6 filterViewModelForContext:v9];
    viewModel = self->_viewModel;
    self->_viewModel = v7;
  }
}

- (void)reselectFocusedAccounts
{
  v2 = [(MUIMailboxFilterController *)self viewModel];
  [v2 reselectFocusFilters];
}

@end