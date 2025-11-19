@interface _UIDocumentPickerManagementViewController
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (_UIDocumentPickerManagementViewController)initWithCoder:(id)a3;
- (_UIDocumentPickerManagementViewController)initWithFileTypes:(id)a3 mode:(unint64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_doneButtonPressed;
- (void)_updateContentSize;
- (void)switchToggled:(id)a3;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _UIDocumentPickerManagementViewController

- (_UIDocumentPickerManagementViewController)initWithFileTypes:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = _UIDocumentPickerManagementViewController;
  v7 = [(_UIContainerHuggingTableViewController *)&v20 initWithStyle:0];
  if (v7)
  {
    v8 = [_UIDocumentPickerDescriptor manageablePickersForMode:a4 documentTypes:v6];
    [(_UIDocumentPickerManagementViewController *)v7 setAllPickers:v8];

    [(_UIDocumentPickerManagementViewController *)v7 setFileTypes:v6];
    [(_UIDocumentPickerManagementViewController *)v7 setMode:a4];
    v9 = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"com.apple.UIKit.fileprovider.default"];

    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v11 = [v10 localizedStringForKey:@"Manage Locations" value:@"Manage Locations" table:@"Localizable"];
    [(_UIDocumentPickerManagementViewController *)v7 setTitle:v11];

    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v7 action:sel__doneButtonPressed];
    v13 = [(_UIDocumentPickerManagementViewController *)v7 navigationItem];
    [v13 setRightBarButtonItem:v12];

    [(_UIDocumentPickerManagementViewController *)v7 setEditing:1 animated:0];
    v14 = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [v14 setAlwaysBounceVertical:0];

    v15 = *MEMORY[0x277D76F30];
    v16 = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [v16 setRowHeight:v15];

    v17 = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [v17 reloadData];

    [(_UIDocumentPickerManagementViewController *)v7 _updateContentSize];
    v18 = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [v18 reloadData];
  }

  return v7;
}

- (void)_updateContentSize
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63___UIDocumentPickerManagementViewController__updateContentSize__block_invoke;
  v2[3] = &unk_278DD61B0;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(_UIDocumentPickerManagementViewController *)self _updateContentSize];
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerManagementViewController;
  [(_UIDocumentPickerManagementViewController *)&v5 viewWillAppear:v3];
}

- (_UIDocumentPickerManagementViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerManagementViewController;
  return [(_UIDocumentPickerManagementViewController *)&v4 initWithCoder:a3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v3 = [(_UIDocumentPickerManagementViewController *)self tableView];
  [v3 reloadData];
}

- (void)_doneButtonPressed
{
  v3 = [(_UIDocumentPickerManagementViewController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(_UIDocumentPickerManagementViewController *)self allPickers:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"com.apple.UIKit.fileprovider.default" forIndexPath:v6];
  v8 = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [v10 localizedName];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  v13 = [(_UIDocumentPickerManagementViewController *)self mode];
  v14 = [(_UIDocumentPickerManagementViewController *)self fileTypes];
  v23 = 0;
  [v10 pickerEnabledForMode:v13 documentTypes:v14 reason:&v23];
  v15 = v23;

  v16 = [v7 detailTextLabel];
  [v16 setText:v15];

  [v7 setShowNewlyAdded:{objc_msgSend(v10, "isNewlyAdded")}];
  v17 = [v10 identifier];
  v18 = [v17 isEqualToString:*MEMORY[0x277D773A0]];

  v19 = [v7 editingAccessoryView];
  if (!v19 && (v18 & 1) == 0)
  {
    v20 = objc_alloc(MEMORY[0x277D75AE8]);
    v19 = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v7 setEditingAccessoryView:v19];
    v21 = [v7 editingAccessoryView];
    [v21 addTarget:self action:sel_switchToggled_ forControlEvents:4096];
  }

  if (v18)
  {
    [v7 setEditingAccessoryView:0];
  }

  [v19 setOn:{objc_msgSend(v10, "enabled")}];

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v10 = [v7 row];

  v14 = [v9 objectAtIndex:v10];

  v11 = [(_UIDocumentPickerManagementViewController *)self traitCollection];
  [v11 displayScale];
  v12 = [v14 imageWithScale:?];
  v13 = [v8 imageView];

  [v13 setImage:v12];
}

- (void)switchToggled:(id)a3
{
  v4 = a3;
  v5 = [(_UIDocumentPickerManagementViewController *)self tableView];
  [v4 bounds];
  [v5 convertPoint:v4 fromView:?];
  v7 = v6;
  v9 = v8;

  v10 = [(_UIDocumentPickerManagementViewController *)self tableView];
  v14 = [v10 indexPathForRowAtPoint:{v7, v9}];

  v11 = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v12 = [v11 objectAtIndex:{objc_msgSend(v14, "row")}];

  v13 = [v4 isOn];
  [v12 setEnabled:v13];
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  v9 = [v8 identifier];
  LOBYTE(v7) = [v9 isEqualToString:*MEMORY[0x277D773A0]];

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(_UIDocumentPickerManagementViewController *)self allPickers];
    v12 = [v11 count];

    v13 = [(_UIDocumentPickerManagementViewController *)self allPickers];
    v14 = [v13 indexOfObjectPassingTest:&__block_literal_global_3] != 0x7FFFFFFFFFFFFFFFLL;

    v10 = (v12 - v14) > 1;
  }

  return v10;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v6 = a5;
  v7 = [v6 row];
  v8 = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v9 = [v8 indexOfObjectPassingTest:&__block_literal_global_35];

  if (v7 == v9)
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v6 inSection:{"row") + 1, 0}];
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  return v11;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v13 = [v9 mutableCopy];

  v10 = [v13 objectAtIndex:{objc_msgSend(v8, "row")}];
  v11 = [v8 row];

  [v13 removeObjectAtIndex:v11];
  v12 = [v7 row];

  [v13 insertObject:v10 atIndex:v12];
  [(_UIDocumentPickerManagementViewController *)self setAllPickers:v13];
  [_UIDocumentPickerDescriptor setOrderFromPickers:v13];
}

@end