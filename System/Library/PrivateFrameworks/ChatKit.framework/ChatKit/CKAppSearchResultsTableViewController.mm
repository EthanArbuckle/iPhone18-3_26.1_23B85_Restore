@interface CKAppSearchResultsTableViewController
- (CKBrowserAppManagerViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)searchEnded;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation CKAppSearchResultsTableViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CKAppSearchResultsTableViewController;
  [(CKAppSearchResultsTableViewController *)&v8 viewDidLoad];
  tableView = [(CKAppSearchResultsTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKAppManagerAppTableViewCell reuseIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  [(CKAppSearchResultsTableViewController *)self setClearsSelectionOnViewWillAppear:0];
  editButtonItem = [(CKAppSearchResultsTableViewController *)self editButtonItem];
  navigationItem = [(CKAppSearchResultsTableViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:editButtonItem];
}

- (void)searchEnded
{
  [(CKAppSearchResultsTableViewController *)self setSearchResults:0];
  tableView = [(CKAppSearchResultsTableViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(CKAppSearchResultsTableViewController *)self searchResults:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [path row];
  searchResults = [(CKAppSearchResultsTableViewController *)self searchResults];
  v7 = [searchResults objectAtIndex:v5];

  if (v7)
  {
    v8 = [CKAppManagerAppTableViewCell alloc];
    v9 = +[CKAppManagerAppTableViewCell reuseIdentifier];
    v10 = [(CKAppManagerAppTableViewCell *)v8 initWithStyle:0 reuseIdentifier:v9];

    [(CKAppManagerAppTableViewCell *)v10 updateCellWithPluginInfo:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (pathCopy && [pathCopy row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    searchResults = [(CKAppSearchResultsTableViewController *)self searchResults];
    v10 = [searchResults objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

    if (v10)
    {
      v11 = +[CKBalloonPluginManager sharedInstance];
      visibleDrawerPlugins = [v11 visibleDrawerPlugins];
      v13 = [visibleDrawerPlugins containsObject:v10];

      if ((v13 & 1) == 0)
      {
        identifier = [v10 identifier];
        [v11 updateInteractionTimeForPlugin:identifier];

        [v11 commitInteractionTimeOrderingChanges];
      }

      delegate = [(CKAppSearchResultsTableViewController *)self delegate];
      [delegate browserAppManagerDidSelectPlugin:v10];
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Plugin for selected index is nil", v17, 2u);
      }
    }
  }

  tableView = [(CKAppSearchResultsTableViewController *)self tableView];
  [tableView deselectRowAtIndexPath:v8 animated:1];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
  {
    tableView2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"browserDisplayName contains[cd] %@", text];
    allPlugins = [(CKAppSearchResultsTableViewController *)self allPlugins];
    v7 = [allPlugins filteredArrayUsingPredicate:tableView2];

    [(CKAppSearchResultsTableViewController *)self setSearchResults:v7];
    tableView = [(CKAppSearchResultsTableViewController *)self tableView];
    [tableView reloadData];
  }

  else
  {
    [(CKAppSearchResultsTableViewController *)self setSearchResults:0];
    tableView2 = [(CKAppSearchResultsTableViewController *)self tableView];
    [tableView2 reloadData];
  }
}

- (CKBrowserAppManagerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end