@interface CKAppSearchResultsTableViewController
- (CKBrowserAppManagerViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)searchEnded;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation CKAppSearchResultsTableViewController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CKAppSearchResultsTableViewController;
  [(CKAppSearchResultsTableViewController *)&v8 viewDidLoad];
  v3 = [(CKAppSearchResultsTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[CKAppManagerAppTableViewCell reuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];

  [(CKAppSearchResultsTableViewController *)self setClearsSelectionOnViewWillAppear:0];
  v6 = [(CKAppSearchResultsTableViewController *)self editButtonItem];
  v7 = [(CKAppSearchResultsTableViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];
}

- (void)searchEnded
{
  [(CKAppSearchResultsTableViewController *)self setSearchResults:0];
  v3 = [(CKAppSearchResultsTableViewController *)self tableView];
  [v3 reloadData];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(CKAppSearchResultsTableViewController *)self searchResults:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a4 row];
  v6 = [(CKAppSearchResultsTableViewController *)self searchResults];
  v7 = [v6 objectAtIndex:v5];

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(CKAppSearchResultsTableViewController *)self searchResults];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

    if (v10)
    {
      v11 = +[CKBalloonPluginManager sharedInstance];
      v12 = [v11 visibleDrawerPlugins];
      v13 = [v12 containsObject:v10];

      if ((v13 & 1) == 0)
      {
        v14 = [v10 identifier];
        [v11 updateInteractionTimeForPlugin:v14];

        [v11 commitInteractionTimeOrderingChanges];
      }

      v15 = [(CKAppSearchResultsTableViewController *)self delegate];
      [v15 browserAppManagerDidSelectPlugin:v10];
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

  v16 = [(CKAppSearchResultsTableViewController *)self tableView];
  [v16 deselectRowAtIndexPath:v8 animated:1];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v9 = [v4 text];

  if ([v9 length])
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"browserDisplayName contains[cd] %@", v9];
    v6 = [(CKAppSearchResultsTableViewController *)self allPlugins];
    v7 = [v6 filteredArrayUsingPredicate:v5];

    [(CKAppSearchResultsTableViewController *)self setSearchResults:v7];
    v8 = [(CKAppSearchResultsTableViewController *)self tableView];
    [v8 reloadData];
  }

  else
  {
    [(CKAppSearchResultsTableViewController *)self setSearchResults:0];
    v5 = [(CKAppSearchResultsTableViewController *)self tableView];
    [v5 reloadData];
  }
}

- (CKBrowserAppManagerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end