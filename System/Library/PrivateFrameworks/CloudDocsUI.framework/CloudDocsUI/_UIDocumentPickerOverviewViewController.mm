@interface _UIDocumentPickerOverviewViewController
- (_UIDocumentPickerOverviewDelegate)delegate;
- (_UIDocumentPickerOverviewViewController)initWithFileTypes:(id)a3 mode:(unint64_t)a4 auxiliaryOptions:(id)a5 includeManagementItem:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateContents;
- (void)updatePreferredContentSize;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _UIDocumentPickerOverviewViewController

- (_UIDocumentPickerOverviewViewController)initWithFileTypes:(id)a3 mode:(unint64_t)a4 auxiliaryOptions:(id)a5 includeManagementItem:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v26.receiver = self;
  v26.super_class = _UIDocumentPickerOverviewViewController;
  v12 = [(_UIContainerHuggingTableViewController *)&v26 initWithStyle:0];
  v13 = v12;
  if (v12)
  {
    [(_UIDocumentPickerOverviewViewController *)v12 setMode:a4];
    [(_UIDocumentPickerOverviewViewController *)v13 setAuxiliaryOptions:v11];
    [(_UIDocumentPickerOverviewViewController *)v13 setFileTypes:v10];
    [(_UIDocumentPickerOverviewViewController *)v13 setManage:v6];
    v14 = [(_UIDocumentPickerOverviewViewController *)v13 tableView];
    [v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"com.apple.UIKit.fileprovider.default"];

    v15 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v17 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
    v19 = [(_UIDocumentPickerOverviewViewController *)v13 tableView];
    [v19 setSeparatorInset:{v15, v16, v17, v18}];

    v20 = [(_UIDocumentPickerOverviewViewController *)v13 tableView];
    [v20 setAlwaysBounceVertical:0];

    v21 = *MEMORY[0x277D76F30];
    v22 = [(_UIDocumentPickerOverviewViewController *)v13 tableView];
    [v22 setRowHeight:v21];

    v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v13 action:sel__doneButtonPressed];
    v24 = [(_UIDocumentPickerOverviewViewController *)v13 navigationItem];
    [v24 setRightBarButtonItem:v23];

    [(_UIDocumentPickerOverviewViewController *)v13 updateContents];
  }

  return v13;
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = _UIDocumentPickerOverviewViewController;
  v4 = a3;
  [(_UIDocumentPickerOverviewViewController *)&v11 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;

  v7 = [(_UIDocumentPickerOverviewViewController *)self traitCollection];
  [v7 displayScale];
  v9 = vabdd_f64(v6, v8);

  if (v9 >= 2.22044605e-16)
  {
    v10 = [(_UIDocumentPickerOverviewViewController *)self tableView];
    [v10 reloadData];
  }
}

- (void)updateContents
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75ED0]);
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v5 = [v4 localizedStringForKey:@"Browse" value:@"Browse" table:@"Localizable"];
  [v3 setTitle:v5];

  v6 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v8 = [(_UIDocumentPickerOverviewViewController *)self traitCollection];
  v9 = [v6 imageNamed:@"UIDocumentPicker-more" inBundle:v7 compatibleWithTraitCollection:v8];
  [v3 setImage:v9];

  [v3 setIdentifier:@"__UIDocumentPickerBrowseIdentifier"];
  [v3 setNewlyAdded:0];
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(_UIDocumentPickerOverviewViewController *)self auxiliaryOptions];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([v16 order])
        {
          [v10 addObject:v16];
        }

        else
        {
          [v10 insertObject:v16 atIndex:0];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v18 = [v17 isEqualToArray:v10];

  if ((v18 & 1) == 0)
  {
    [(_UIDocumentPickerOverviewViewController *)self setAllPickers:v10];
    [(_UIDocumentPickerOverviewViewController *)self updatePreferredContentSize];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIDocumentPickerOverviewViewController *)self navigationController];
  [v5 setNavigationBarHidden:1];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___UIDocumentPickerOverviewViewController_viewWillAppear___block_invoke;
  v7[3] = &unk_278DD61B0;
  v7[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  v6.receiver = self;
  v6.super_class = _UIDocumentPickerOverviewViewController;
  [(_UIDocumentPickerOverviewViewController *)&v6 viewWillAppear:v3];
}

- (void)updatePreferredContentSize
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [v3 reloadData];

  v4 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [v4 setNeedsLayout];

  v5 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [v5 layoutSubviews];

  v6 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v7 = [v6 count];

  if (v7 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v10 = [v9 count] > 8;
  v11 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [v11 setShowsVerticalScrollIndicator:v10];

  v12 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [v12 setScrollIndicatorInsets:{10.0, 0.0, 10.0, 0.0}];

  v13 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  v14 = [v13 visibleCells];
  v15 = [v14 firstObject];

  [v15 size];
  [v15 systemLayoutSizeFittingSize:? withHorizontalFittingPriority:? verticalFittingPriority:?];
  v17 = v16;
  v18 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v19 = [v18 count];

  if (v19 <= v8)
  {
    v21 = [v15 textLabel];
    v22 = [v21 font];

    if (v7)
    {
      v23 = 0;
      v24 = *MEMORY[0x277D740A8];
      v25 = 0.0;
      do
      {
        v26 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
        v27 = [v26 objectAtIndex:v23];

        v28 = [v27 title];
        v34 = v24;
        v35[0] = v22;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        [v28 boundingRectWithSize:1 options:v29 attributes:0 context:{500.0, v17}];
        v31 = v30;

        if (v25 < v31)
        {
          v25 = v31;
        }

        ++v23;
      }

      while (v8 != v23);
      v32 = v25 + 92.0;
    }

    else
    {
      v32 = 92.0;
    }

    v20 = ceil(v32);
  }

  else
  {
    v20 = 320.0;
  }

  [(_UIDocumentPickerOverviewViewController *)self setPreferredContentSize:v20, v17 * v8];
  v33 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [v33 setEstimatedRowHeight:v17];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = _UIDocumentPickerOverviewViewController;
  [(_UIDocumentPickerOverviewViewController *)&v10 setPreferredContentSize:?];
  v6 = [(_UIDocumentPickerOverviewViewController *)self parentViewController];
  if ([v6 conformsToProtocol:&unk_2856D9E88])
  {
    [v6 preferredContentSize];
    if (v8 != width || v7 != height)
    {
      [v6 setPreferredContentSize:{width, height}];
    }
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(_UIDocumentPickerOverviewViewController *)self allPickers:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"com.apple.UIKit.fileprovider.default" forIndexPath:v6];
  v8 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = v10;
  v12 = [v11 image];
  v13 = [v12 imageWithRenderingMode:2];
  v14 = [v7 iconView];
  [v14 setImage:v13];

  v15 = [v11 title];
  v16 = [v7 textLabel];
  [v16 setText:v15];

  v17 = [v11 isNewlyAdded];
  [v7 setShowNewlyAdded:v17];
  [v7 setSeparatorInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v7 = [v5 row];

  v11 = [v6 objectAtIndex:v7];

  v8 = [v11 identifier];

  v9 = [(_UIDocumentPickerOverviewViewController *)self delegate];
  v10 = [v11 identifier];
  if (v8 == @"__UIDocumentPickerBrowseIdentifier")
  {
    [v9 overviewController:self selectedDocumentPickerWithIdentifier:v10];
  }

  else
  {
    [v9 overviewController:self selectedAuxiliaryOptionWithIdentifier:v10];
  }
}

- (_UIDocumentPickerOverviewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end