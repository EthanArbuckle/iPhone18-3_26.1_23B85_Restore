@interface CNAutocompleteGroupDetailViewController
- (CNAutocompleteGroupDetailViewController)initWithStyle:(int64_t)style;
- (CNAutocompleteGroupDetailViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_removeButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CNAutocompleteGroupDetailViewController

- (CNAutocompleteGroupDetailViewController)initWithStyle:(int64_t)style
{
  v16.receiver = self;
  v16.super_class = CNAutocompleteGroupDetailViewController;
  v3 = [(CNAutocompleteGroupDetailViewController *)&v16 initWithStyle:style];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"RECENT_TITLE" value:&stru_1F3002C60 table:@"Main"];
    navigationItem = [(CNAutocompleteGroupDetailViewController *)v3 navigationItem];
    [navigationItem setTitle:v5];

    tableView = [(CNAutocompleteGroupDetailViewController *)v3 tableView];
    v8 = objc_opt_class();
    v9 = +[CNComposeRecipientTableViewCell identifier];
    [tableView registerClass:v8 forCellReuseIdentifier:v9];

    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"REMOVE_TITLE" value:&stru_1F3002C60 table:@"Main"];
    v13 = [v10 initWithTitle:v12 style:0 target:v3 action:sel__removeButtonTapped_];

    navigationItem2 = [(CNAutocompleteGroupDetailViewController *)v3 navigationItem];
    [navigationItem2 setRightBarButtonItem:v13];
  }

  return v3;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CNAutocompleteGroupDetailViewController;
  [(CNAutocompleteGroupDetailViewController *)&v5 viewWillDisappear:disappear];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained autocompleteGroupDetailViewControllerDidCancel:self];
  }
}

- (void)_removeButtonTapped:(id)tapped
{
  v4 = MEMORY[0x1E69DC650];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"REMOVE_RECENT_GROUP_CONFIRM" value:&stru_1F3002C60 table:@"Main"];
  v7 = [v4 alertControllerWithTitle:v6 message:0 preferredStyle:0];

  [v7 setModalPresentationStyle:7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = MEMORY[0x1E69DC648];
  v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"REMOVE_RECENT" value:&stru_1F3002C60 table:@"Main"];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __63__CNAutocompleteGroupDetailViewController__removeButtonTapped___block_invoke;
  v24 = &unk_1E7CD1B78;
  v25 = WeakRetained;
  selfCopy = self;
  v12 = WeakRetained;
  v13 = [v9 actionWithTitle:v11 style:2 handler:&v21];
  [v7 addAction:{v13, v21, v22, v23, v24}];

  v14 = MEMORY[0x1E69DC648];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_1F3002C60 table:@"Main"];
  v17 = [v14 actionWithTitle:v16 style:1 handler:0];
  [v7 addAction:v17];

  popoverPresentationController = [v7 popoverPresentationController];
  navigationItem = [(CNAutocompleteGroupDetailViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [popoverPresentationController setBarButtonItem:rightBarButtonItem];

  [popoverPresentationController setPermittedArrowDirections:3];
  [(CNAutocompleteGroupDetailViewController *)self presentViewController:v7 animated:1 completion:0];
}

void __63__CNAutocompleteGroupDetailViewController__removeButtonTapped___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) autocompleteGroupDetailViewController:*(a1 + 40) didAskToRemoveGroup:*(*(a1 + 40) + 1048)];
  }

  v3 = [*(a1 + 40) navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(CNComposeRecipientGroup *)self->_group children:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CNComposeRecipientTableViewCell identifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  children = [(CNComposeRecipientGroup *)self->_group children];
  v11 = [pathCopy row];

  v12 = [children objectAtIndex:v11];

  [v9 setAccessoryType:1];
  [v9 setShouldHighlightCompleteMatches:0];
  recipient = [v9 recipient];

  if (recipient != v12)
  {
    [v9 setRecipient:v12];
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    children = [(CNComposeRecipientGroup *)self->_group children];
    v7 = [children objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    [WeakRetained autocompleteGroupDetailViewController:self didTapComposeRecipient:v7];
  }
}

- (CNAutocompleteGroupDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end