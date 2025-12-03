@interface CKAbstractReviewViewController
- (BOOL)isLoadingIndicatorRowIndex:(int64_t)index;
- (CKAbstractReviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_handleDelete;
- (void)_updateNavigationItemState;
- (void)dealloc;
- (void)loadView;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CKAbstractReviewViewController

- (CKAbstractReviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = CKAbstractReviewViewController;
  v4 = [(CKAbstractReviewViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UITableView *)self->_tableView setDataSource:0];
  [(UITableView *)self->_tableView setDelegate:0];
  v4.receiver = self;
  v4.super_class = CKAbstractReviewViewController;
  [(CKAbstractReviewViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:0 style:{*MEMORY[0x1E695F058], v5, v6, v7}];
  [(CKAbstractReviewViewController *)self setTableView:v8];

  [-[CKAbstractReviewViewController tableViewCellClass](self "tableViewCellClass")];
  v10 = v9;
  tableView = [(CKAbstractReviewViewController *)self tableView];
  [tableView setRowHeight:v10];

  tableView2 = [(CKAbstractReviewViewController *)self tableView];
  [tableView2 setSeparatorInset:{0.0, 66.0, 0.0, 0.0}];

  tableView3 = [(CKAbstractReviewViewController *)self tableView];
  [tableView3 setAllowsSelection:1];

  tableView4 = [(CKAbstractReviewViewController *)self tableView];
  [tableView4 setAllowsMultipleSelection:0];

  tableView5 = [(CKAbstractReviewViewController *)self tableView];
  [tableView5 setAllowsMultipleSelectionDuringEditing:1];

  tableView6 = [(CKAbstractReviewViewController *)self tableView];
  tableViewCellClass = [(CKAbstractReviewViewController *)self tableViewCellClass];
  tableViewCellReuseIdentifier = [(CKAbstractReviewViewController *)self tableViewCellReuseIdentifier];
  [tableView6 registerClass:tableViewCellClass forCellReuseIdentifier:tableViewCellReuseIdentifier];

  tableView7 = [(CKAbstractReviewViewController *)self tableView];
  v20 = objc_opt_class();
  v21 = +[CKStorageLoadingCell reuseIdentifier];
  [tableView7 registerClass:v20 forCellReuseIdentifier:v21];

  tableView8 = [(CKAbstractReviewViewController *)self tableView];
  [tableView8 setContentInset:{35.0, 0.0, 0.0, 0.0}];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  tableView9 = [(CKAbstractReviewViewController *)self tableView];
  [tableView9 setBackgroundColor:systemBackgroundColor];

  tableView10 = [(CKAbstractReviewViewController *)self tableView];
  [tableView10 setDataSource:self];

  tableView11 = [(CKAbstractReviewViewController *)self tableView];
  [tableView11 setDelegate:self];

  v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  [(CKAbstractReviewViewController *)self setTopLineView:v27];

  tableView12 = [(CKAbstractReviewViewController *)self tableView];
  separatorColor = [tableView12 separatorColor];
  topLineView = [(CKAbstractReviewViewController *)self topLineView];
  [topLineView setBackgroundColor:separatorColor];

  tableView13 = [(CKAbstractReviewViewController *)self tableView];
  topLineView2 = [(CKAbstractReviewViewController *)self topLineView];
  [tableView13 addSubview:topLineView2];

  navigationBarTitle = [(CKAbstractReviewViewController *)self navigationBarTitle];
  [(CKAbstractReviewViewController *)self setTitle:navigationBarTitle];

  tableView14 = [(CKAbstractReviewViewController *)self tableView];
  [(CKAbstractReviewViewController *)self setView:tableView14];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKAbstractReviewViewController;
  [(CKAbstractReviewViewController *)&v4 viewWillAppear:appear];
  [(CKAbstractReviewViewController *)self _updateNavigationItemState];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = CKAbstractReviewViewController;
  [(CKAbstractReviewViewController *)&v8 viewWillLayoutSubviews];
  tableView = [(CKAbstractReviewViewController *)self tableView];
  [tableView frame];
  v5 = v4;
  if (CKPixelWidth_once != -1)
  {
    [CKAbstractReviewViewController viewWillLayoutSubviews];
  }

  v6 = *&CKPixelWidth_sPixel;
  topLineView = [(CKAbstractReviewViewController *)self topLineView];
  [topLineView setFrame:{0.0, 0.0, v5, v6}];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = CKAbstractReviewViewController;
  [CKAbstractReviewViewController setEditing:sel_setEditing_animated_ animated:?];
  tableView = [(CKAbstractReviewViewController *)self tableView];
  [tableView setEditing:editingCopy animated:animatedCopy];

  [(CKAbstractReviewViewController *)self _updateNavigationItemState];
}

- (BOOL)isLoadingIndicatorRowIndex:(int64_t)index
{
  if (index < 0)
  {
    return 0;
  }

  tableView = [(CKAbstractReviewViewController *)self tableView];
  v6 = [tableView numberOfRowsInSection:0];

  if (v6 <= index)
  {
    return 0;
  }

  v7 = [(CKAbstractReviewViewController *)self modelObjectAtIndex:index];
  v8 = +[CKStorageLoadingCell reuseIdentifier];
  v9 = [v7 isEqual:v8];

  return v9;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[CKAbstractReviewViewController isLoadingIndicatorRowIndex:](self, "isLoadingIndicatorRowIndex:", [pathCopy row]))
  {
    v6 = 0;
  }

  else
  {
    v6 = pathCopy;
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  tableView = [(CKAbstractReviewViewController *)self tableView];

  if (section || tableView != viewCopy)
  {
    return 0;
  }

  return [(CKAbstractReviewViewController *)self numberOfModelObjects];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[CKAbstractReviewViewController modelObjectAtIndex:](self, "modelObjectAtIndex:", [pathCopy row]);
  v9 = +[CKStorageLoadingCell reuseIdentifier];
  v10 = [v8 isEqual:v9];

  tableView = [(CKAbstractReviewViewController *)self tableView];
  if (v10)
  {
    v12 = +[CKStorageLoadingCell reuseIdentifier];
    v13 = [tableView dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "inserting CKStorageLoadingCell", v17, 2u);
      }
    }

    [v13 startAnimating];
  }

  else
  {
    tableViewCellReuseIdentifier = [(CKAbstractReviewViewController *)self tableViewCellReuseIdentifier];
    v13 = [tableView dequeueReusableCellWithIdentifier:tableViewCellReuseIdentifier forIndexPath:pathCopy];

    [v13 setModelObject:v8];
  }

  return v13;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v17[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (!-[CKAbstractReviewViewController isLoadingIndicatorRowIndex:](self, "isLoadingIndicatorRowIndex:", [pathCopy row]))
  {
    tableView = [(CKAbstractReviewViewController *)self tableView];
    v11 = tableView;
    if (pathCopy && style == 1 && tableView == viewCopy && ![pathCopy section])
    {
      v12 = [pathCopy row];
      numberOfModelObjects = [(CKAbstractReviewViewController *)self numberOfModelObjects];

      if (v12 < numberOfModelObjects)
      {
        v14 = -[CKAbstractReviewViewController modelObjectAtIndex:](self, "modelObjectAtIndex:", [pathCopy row]);
        [(CKAbstractReviewViewController *)self deleteModelObjectAndUnderlyingData:v14];
        tableView2 = [(CKAbstractReviewViewController *)self tableView];
        v17[0] = pathCopy;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        [tableView2 deleteRowsAtIndexPaths:v16 withRowAnimation:100];
      }
    }

    else
    {
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (!-[CKAbstractReviewViewController isLoadingIndicatorRowIndex:](self, "isLoadingIndicatorRowIndex:", [pathCopy row]) && (-[CKAbstractReviewViewController isEditing](self, "isEditing") & 1) == 0 && !objc_msgSend(pathCopy, "section"))
  {
    -[CKAbstractReviewViewController didSelectModelObjectAtIndex:](self, "didSelectModelObjectAtIndex:", [pathCopy row]);
  }
}

- (void)_applicationDidBecomeActive:(id)active
{
  tableView = [(CKAbstractReviewViewController *)self tableView];
  tableView2 = [(CKAbstractReviewViewController *)self tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

  [(CKAbstractReviewViewController *)self reloadModelData];
  tableView3 = [(CKAbstractReviewViewController *)self tableView];
  [tableView3 reloadData];
}

- (void)_handleDelete
{
  tableView = [(CKAbstractReviewViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  if ([indexPathsForSelectedRows count])
  {
    isEditing = [(CKAbstractReviewViewController *)self isEditing];

    if (isEditing)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__0;
      v22 = __Block_byref_object_dispose__0;
      array = [MEMORY[0x1E695DF70] array];
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__0;
      v16 = __Block_byref_object_dispose__0;
      array2 = [MEMORY[0x1E695DF70] array];
      tableView2 = [(CKAbstractReviewViewController *)self tableView];
      indexPathsForSelectedRows2 = [tableView2 indexPathsForSelectedRows];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __47__CKAbstractReviewViewController__handleDelete__block_invoke;
      v11[3] = &unk_1E72EBB00;
      v11[4] = self;
      v11[5] = &v18;
      v11[6] = &v12;
      [indexPathsForSelectedRows2 enumerateObjectsUsingBlock:v11];

      v8 = v19[5];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__CKAbstractReviewViewController__handleDelete__block_invoke_2;
      v10[3] = &unk_1E72EBB28;
      v10[4] = self;
      [v8 enumerateObjectsUsingBlock:v10];
      tableView3 = [(CKAbstractReviewViewController *)self tableView];
      [tableView3 deleteRowsAtIndexPaths:v13[5] withRowAnimation:100];

      _Block_object_dispose(&v12, 8);
      _Block_object_dispose(&v18, 8);
    }
  }

  else
  {
  }

  [(CKAbstractReviewViewController *)self setEditing:0 animated:1];
}

void __47__CKAbstractReviewViewController__handleDelete__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (![v4 section] && (objc_msgSend(*(a1 + 32), "isLoadingIndicatorRowIndex:", objc_msgSend(v4, "row")) & 1) == 0)
  {
    v3 = [*(a1 + 32) modelObjectAtIndex:{objc_msgSend(v4, "row")}];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
    [*(*(*(a1 + 48) + 8) + 40) addObject:v4];
  }
}

- (void)_updateNavigationItemState
{
  parentViewController = [(CKAbstractReviewViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationItem = [(CKAbstractReviewViewController *)self navigationItem];
  }

  else
  {
    parentViewController2 = [(CKAbstractReviewViewController *)self parentViewController];
    navigationItem = [parentViewController2 navigationItem];
  }

  isEditing = [(CKAbstractReviewViewController *)self isEditing];
  if (isEditing)
  {
    cancelEditingBarButtonItem = [(CKAbstractReviewViewController *)self cancelEditingBarButtonItem];

    if (!cancelEditingBarButtonItem)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancel];
      [(CKAbstractReviewViewController *)self setCancelEditingBarButtonItem:v8];
    }

    deleteBarButtonItem = [(CKAbstractReviewViewController *)self deleteBarButtonItem];

    if (!deleteBarButtonItem)
    {
      v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__handleDelete];
      [(CKAbstractReviewViewController *)self setDeleteBarButtonItem:v10];
    }

    cancelEditingBarButtonItem2 = [(CKAbstractReviewViewController *)self cancelEditingBarButtonItem];
    [navigationItem setLeftBarButtonItem:cancelEditingBarButtonItem2];

    deleteBarButtonItem2 = [(CKAbstractReviewViewController *)self deleteBarButtonItem];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:0];
    deleteBarButtonItem2 = [(CKAbstractReviewViewController *)self editButtonItem];
  }

  v13 = deleteBarButtonItem2;
  [navigationItem setRightBarButtonItem:deleteBarButtonItem2];

  [navigationItem setHidesBackButton:isEditing animated:1];
}

@end