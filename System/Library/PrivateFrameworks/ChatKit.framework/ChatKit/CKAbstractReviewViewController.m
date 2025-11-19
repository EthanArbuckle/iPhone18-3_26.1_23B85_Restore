@interface CKAbstractReviewViewController
- (BOOL)isLoadingIndicatorRowIndex:(int64_t)a3;
- (CKAbstractReviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_handleDelete;
- (void)_updateNavigationItemState;
- (void)dealloc;
- (void)loadView;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CKAbstractReviewViewController

- (CKAbstractReviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKAbstractReviewViewController;
  v4 = [(CKAbstractReviewViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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
  v11 = [(CKAbstractReviewViewController *)self tableView];
  [v11 setRowHeight:v10];

  v12 = [(CKAbstractReviewViewController *)self tableView];
  [v12 setSeparatorInset:{0.0, 66.0, 0.0, 0.0}];

  v13 = [(CKAbstractReviewViewController *)self tableView];
  [v13 setAllowsSelection:1];

  v14 = [(CKAbstractReviewViewController *)self tableView];
  [v14 setAllowsMultipleSelection:0];

  v15 = [(CKAbstractReviewViewController *)self tableView];
  [v15 setAllowsMultipleSelectionDuringEditing:1];

  v16 = [(CKAbstractReviewViewController *)self tableView];
  v17 = [(CKAbstractReviewViewController *)self tableViewCellClass];
  v18 = [(CKAbstractReviewViewController *)self tableViewCellReuseIdentifier];
  [v16 registerClass:v17 forCellReuseIdentifier:v18];

  v19 = [(CKAbstractReviewViewController *)self tableView];
  v20 = objc_opt_class();
  v21 = +[CKStorageLoadingCell reuseIdentifier];
  [v19 registerClass:v20 forCellReuseIdentifier:v21];

  v22 = [(CKAbstractReviewViewController *)self tableView];
  [v22 setContentInset:{35.0, 0.0, 0.0, 0.0}];

  v23 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v24 = [(CKAbstractReviewViewController *)self tableView];
  [v24 setBackgroundColor:v23];

  v25 = [(CKAbstractReviewViewController *)self tableView];
  [v25 setDataSource:self];

  v26 = [(CKAbstractReviewViewController *)self tableView];
  [v26 setDelegate:self];

  v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  [(CKAbstractReviewViewController *)self setTopLineView:v27];

  v28 = [(CKAbstractReviewViewController *)self tableView];
  v29 = [v28 separatorColor];
  v30 = [(CKAbstractReviewViewController *)self topLineView];
  [v30 setBackgroundColor:v29];

  v31 = [(CKAbstractReviewViewController *)self tableView];
  v32 = [(CKAbstractReviewViewController *)self topLineView];
  [v31 addSubview:v32];

  v33 = [(CKAbstractReviewViewController *)self navigationBarTitle];
  [(CKAbstractReviewViewController *)self setTitle:v33];

  v34 = [(CKAbstractReviewViewController *)self tableView];
  [(CKAbstractReviewViewController *)self setView:v34];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKAbstractReviewViewController;
  [(CKAbstractReviewViewController *)&v4 viewWillAppear:a3];
  [(CKAbstractReviewViewController *)self _updateNavigationItemState];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = CKAbstractReviewViewController;
  [(CKAbstractReviewViewController *)&v8 viewWillLayoutSubviews];
  v3 = [(CKAbstractReviewViewController *)self tableView];
  [v3 frame];
  v5 = v4;
  if (CKPixelWidth_once != -1)
  {
    [CKAbstractReviewViewController viewWillLayoutSubviews];
  }

  v6 = *&CKPixelWidth_sPixel;
  v7 = [(CKAbstractReviewViewController *)self topLineView];
  [v7 setFrame:{0.0, 0.0, v5, v6}];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = CKAbstractReviewViewController;
  [CKAbstractReviewViewController setEditing:sel_setEditing_animated_ animated:?];
  v7 = [(CKAbstractReviewViewController *)self tableView];
  [v7 setEditing:v5 animated:v4];

  [(CKAbstractReviewViewController *)self _updateNavigationItemState];
}

- (BOOL)isLoadingIndicatorRowIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  v5 = [(CKAbstractReviewViewController *)self tableView];
  v6 = [v5 numberOfRowsInSection:0];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(CKAbstractReviewViewController *)self modelObjectAtIndex:a3];
  v8 = +[CKStorageLoadingCell reuseIdentifier];
  v9 = [v7 isEqual:v8];

  return v9;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (-[CKAbstractReviewViewController isLoadingIndicatorRowIndex:](self, "isLoadingIndicatorRowIndex:", [v5 row]))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(CKAbstractReviewViewController *)self tableView];

  if (a4 || v7 != v6)
  {
    return 0;
  }

  return [(CKAbstractReviewViewController *)self numberOfModelObjects];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[CKAbstractReviewViewController modelObjectAtIndex:](self, "modelObjectAtIndex:", [v7 row]);
  v9 = +[CKStorageLoadingCell reuseIdentifier];
  v10 = [v8 isEqual:v9];

  v11 = [(CKAbstractReviewViewController *)self tableView];
  if (v10)
  {
    v12 = +[CKStorageLoadingCell reuseIdentifier];
    v13 = [v11 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];

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
    v15 = [(CKAbstractReviewViewController *)self tableViewCellReuseIdentifier];
    v13 = [v11 dequeueReusableCellWithIdentifier:v15 forIndexPath:v7];

    [v13 setModelObject:v8];
  }

  return v13;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (!-[CKAbstractReviewViewController isLoadingIndicatorRowIndex:](self, "isLoadingIndicatorRowIndex:", [v9 row]))
  {
    v10 = [(CKAbstractReviewViewController *)self tableView];
    v11 = v10;
    if (v9 && a4 == 1 && v10 == v8 && ![v9 section])
    {
      v12 = [v9 row];
      v13 = [(CKAbstractReviewViewController *)self numberOfModelObjects];

      if (v12 < v13)
      {
        v14 = -[CKAbstractReviewViewController modelObjectAtIndex:](self, "modelObjectAtIndex:", [v9 row]);
        [(CKAbstractReviewViewController *)self deleteModelObjectAndUnderlyingData:v14];
        v15 = [(CKAbstractReviewViewController *)self tableView];
        v17[0] = v9;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        [v15 deleteRowsAtIndexPaths:v16 withRowAnimation:100];
      }
    }

    else
    {
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (!-[CKAbstractReviewViewController isLoadingIndicatorRowIndex:](self, "isLoadingIndicatorRowIndex:", [v5 row]) && (-[CKAbstractReviewViewController isEditing](self, "isEditing") & 1) == 0 && !objc_msgSend(v5, "section"))
  {
    -[CKAbstractReviewViewController didSelectModelObjectAtIndex:](self, "didSelectModelObjectAtIndex:", [v5 row]);
  }
}

- (void)_applicationDidBecomeActive:(id)a3
{
  v4 = [(CKAbstractReviewViewController *)self tableView];
  v5 = [(CKAbstractReviewViewController *)self tableView];
  v6 = [v5 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v6 animated:0];

  [(CKAbstractReviewViewController *)self reloadModelData];
  v7 = [(CKAbstractReviewViewController *)self tableView];
  [v7 reloadData];
}

- (void)_handleDelete
{
  v3 = [(CKAbstractReviewViewController *)self tableView];
  v4 = [v3 indexPathsForSelectedRows];
  if ([v4 count])
  {
    v5 = [(CKAbstractReviewViewController *)self isEditing];

    if (v5)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__0;
      v22 = __Block_byref_object_dispose__0;
      v23 = [MEMORY[0x1E695DF70] array];
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__0;
      v16 = __Block_byref_object_dispose__0;
      v17 = [MEMORY[0x1E695DF70] array];
      v6 = [(CKAbstractReviewViewController *)self tableView];
      v7 = [v6 indexPathsForSelectedRows];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __47__CKAbstractReviewViewController__handleDelete__block_invoke;
      v11[3] = &unk_1E72EBB00;
      v11[4] = self;
      v11[5] = &v18;
      v11[6] = &v12;
      [v7 enumerateObjectsUsingBlock:v11];

      v8 = v19[5];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__CKAbstractReviewViewController__handleDelete__block_invoke_2;
      v10[3] = &unk_1E72EBB28;
      v10[4] = self;
      [v8 enumerateObjectsUsingBlock:v10];
      v9 = [(CKAbstractReviewViewController *)self tableView];
      [v9 deleteRowsAtIndexPaths:v13[5] withRowAnimation:100];

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
  v3 = [(CKAbstractReviewViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v14 = [(CKAbstractReviewViewController *)self navigationItem];
  }

  else
  {
    v5 = [(CKAbstractReviewViewController *)self parentViewController];
    v14 = [v5 navigationItem];
  }

  v6 = [(CKAbstractReviewViewController *)self isEditing];
  if (v6)
  {
    v7 = [(CKAbstractReviewViewController *)self cancelEditingBarButtonItem];

    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__handleCancel];
      [(CKAbstractReviewViewController *)self setCancelEditingBarButtonItem:v8];
    }

    v9 = [(CKAbstractReviewViewController *)self deleteBarButtonItem];

    if (!v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:self action:sel__handleDelete];
      [(CKAbstractReviewViewController *)self setDeleteBarButtonItem:v10];
    }

    v11 = [(CKAbstractReviewViewController *)self cancelEditingBarButtonItem];
    [v14 setLeftBarButtonItem:v11];

    v12 = [(CKAbstractReviewViewController *)self deleteBarButtonItem];
  }

  else
  {
    [v14 setLeftBarButtonItem:0];
    v12 = [(CKAbstractReviewViewController *)self editButtonItem];
  }

  v13 = v12;
  [v14 setRightBarButtonItem:v12];

  [v14 setHidesBackButton:v6 animated:1];
}

@end