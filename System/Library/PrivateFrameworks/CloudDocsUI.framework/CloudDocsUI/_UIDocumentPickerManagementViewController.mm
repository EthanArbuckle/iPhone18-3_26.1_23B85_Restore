@interface _UIDocumentPickerManagementViewController
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (_UIDocumentPickerManagementViewController)initWithCoder:(id)coder;
- (_UIDocumentPickerManagementViewController)initWithFileTypes:(id)types mode:(unint64_t)mode;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_doneButtonPressed;
- (void)_updateContentSize;
- (void)switchToggled:(id)toggled;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _UIDocumentPickerManagementViewController

- (_UIDocumentPickerManagementViewController)initWithFileTypes:(id)types mode:(unint64_t)mode
{
  typesCopy = types;
  v20.receiver = self;
  v20.super_class = _UIDocumentPickerManagementViewController;
  v7 = [(_UIContainerHuggingTableViewController *)&v20 initWithStyle:0];
  if (v7)
  {
    v8 = [_UIDocumentPickerDescriptor manageablePickersForMode:mode documentTypes:typesCopy];
    [(_UIDocumentPickerManagementViewController *)v7 setAllPickers:v8];

    [(_UIDocumentPickerManagementViewController *)v7 setFileTypes:typesCopy];
    [(_UIDocumentPickerManagementViewController *)v7 setMode:mode];
    tableView = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"com.apple.UIKit.fileprovider.default"];

    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v11 = [v10 localizedStringForKey:@"Manage Locations" value:@"Manage Locations" table:@"Localizable"];
    [(_UIDocumentPickerManagementViewController *)v7 setTitle:v11];

    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v7 action:sel__doneButtonPressed];
    navigationItem = [(_UIDocumentPickerManagementViewController *)v7 navigationItem];
    [navigationItem setRightBarButtonItem:v12];

    [(_UIDocumentPickerManagementViewController *)v7 setEditing:1 animated:0];
    tableView2 = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [tableView2 setAlwaysBounceVertical:0];

    v15 = *MEMORY[0x277D76F30];
    tableView3 = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [tableView3 setRowHeight:v15];

    tableView4 = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [tableView4 reloadData];

    [(_UIDocumentPickerManagementViewController *)v7 _updateContentSize];
    tableView5 = [(_UIDocumentPickerManagementViewController *)v7 tableView];
    [tableView5 reloadData];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(_UIDocumentPickerManagementViewController *)self _updateContentSize];
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerManagementViewController;
  [(_UIDocumentPickerManagementViewController *)&v5 viewWillAppear:appearCopy];
}

- (_UIDocumentPickerManagementViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerManagementViewController;
  return [(_UIDocumentPickerManagementViewController *)&v4 initWithCoder:coder];
}

- (void)traitCollectionDidChange:(id)change
{
  tableView = [(_UIDocumentPickerManagementViewController *)self tableView];
  [tableView reloadData];
}

- (void)_doneButtonPressed
{
  navigationController = [(_UIDocumentPickerManagementViewController *)self navigationController];
  v2 = [navigationController popViewControllerAnimated:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(_UIDocumentPickerManagementViewController *)self allPickers:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"com.apple.UIKit.fileprovider.default" forIndexPath:pathCopy];
  allPickers = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v9 = [pathCopy row];

  v10 = [allPickers objectAtIndex:v9];

  localizedName = [v10 localizedName];
  textLabel = [v7 textLabel];
  [textLabel setText:localizedName];

  mode = [(_UIDocumentPickerManagementViewController *)self mode];
  fileTypes = [(_UIDocumentPickerManagementViewController *)self fileTypes];
  v23 = 0;
  [v10 pickerEnabledForMode:mode documentTypes:fileTypes reason:&v23];
  v15 = v23;

  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:v15];

  [v7 setShowNewlyAdded:{objc_msgSend(v10, "isNewlyAdded")}];
  identifier = [v10 identifier];
  v18 = [identifier isEqualToString:*MEMORY[0x277D773A0]];

  editingAccessoryView = [v7 editingAccessoryView];
  if (!editingAccessoryView && (v18 & 1) == 0)
  {
    v20 = objc_alloc(MEMORY[0x277D75AE8]);
    editingAccessoryView = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v7 setEditingAccessoryView:editingAccessoryView];
    editingAccessoryView2 = [v7 editingAccessoryView];
    [editingAccessoryView2 addTarget:self action:sel_switchToggled_ forControlEvents:4096];
  }

  if (v18)
  {
    [v7 setEditingAccessoryView:0];
  }

  [editingAccessoryView setOn:{objc_msgSend(v10, "enabled")}];

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  allPickers = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v10 = [pathCopy row];

  v14 = [allPickers objectAtIndex:v10];

  traitCollection = [(_UIDocumentPickerManagementViewController *)self traitCollection];
  [traitCollection displayScale];
  v12 = [v14 imageWithScale:?];
  imageView = [cellCopy imageView];

  [imageView setImage:v12];
}

- (void)switchToggled:(id)toggled
{
  toggledCopy = toggled;
  tableView = [(_UIDocumentPickerManagementViewController *)self tableView];
  [toggledCopy bounds];
  [tableView convertPoint:toggledCopy fromView:?];
  v7 = v6;
  v9 = v8;

  tableView2 = [(_UIDocumentPickerManagementViewController *)self tableView];
  v14 = [tableView2 indexPathForRowAtPoint:{v7, v9}];

  allPickers = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v12 = [allPickers objectAtIndex:{objc_msgSend(v14, "row")}];

  isOn = [toggledCopy isOn];
  [v12 setEnabled:isOn];
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  allPickers = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v7 = [pathCopy row];

  v8 = [allPickers objectAtIndex:v7];

  identifier = [v8 identifier];
  LOBYTE(v7) = [identifier isEqualToString:*MEMORY[0x277D773A0]];

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    allPickers2 = [(_UIDocumentPickerManagementViewController *)self allPickers];
    v12 = [allPickers2 count];

    allPickers3 = [(_UIDocumentPickerManagementViewController *)self allPickers];
    v14 = [allPickers3 indexOfObjectPassingTest:&__block_literal_global_3] != 0x7FFFFFFFFFFFFFFFLL;

    v10 = (v12 - v14) > 1;
  }

  return v10;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  v7 = [indexPathCopy row];
  allPickers = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v9 = [allPickers indexOfObjectPassingTest:&__block_literal_global_35];

  if (v7 == v9)
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(indexPathCopy inSection:{"row") + 1, 0}];
  }

  else
  {
    v10 = indexPathCopy;
  }

  v11 = v10;

  return v11;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  allPickers = [(_UIDocumentPickerManagementViewController *)self allPickers];
  v13 = [allPickers mutableCopy];

  v10 = [v13 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  v11 = [pathCopy row];

  [v13 removeObjectAtIndex:v11];
  v12 = [indexPathCopy row];

  [v13 insertObject:v10 atIndex:v12];
  [(_UIDocumentPickerManagementViewController *)self setAllPickers:v13];
  [_UIDocumentPickerDescriptor setOrderFromPickers:v13];
}

@end