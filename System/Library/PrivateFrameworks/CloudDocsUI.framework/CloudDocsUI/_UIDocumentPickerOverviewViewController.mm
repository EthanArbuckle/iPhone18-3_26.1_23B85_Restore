@interface _UIDocumentPickerOverviewViewController
- (_UIDocumentPickerOverviewDelegate)delegate;
- (_UIDocumentPickerOverviewViewController)initWithFileTypes:(id)types mode:(unint64_t)mode auxiliaryOptions:(id)options includeManagementItem:(BOOL)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)setPreferredContentSize:(CGSize)size;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContents;
- (void)updatePreferredContentSize;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _UIDocumentPickerOverviewViewController

- (_UIDocumentPickerOverviewViewController)initWithFileTypes:(id)types mode:(unint64_t)mode auxiliaryOptions:(id)options includeManagementItem:(BOOL)item
{
  itemCopy = item;
  typesCopy = types;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = _UIDocumentPickerOverviewViewController;
  v12 = [(_UIContainerHuggingTableViewController *)&v26 initWithStyle:0];
  v13 = v12;
  if (v12)
  {
    [(_UIDocumentPickerOverviewViewController *)v12 setMode:mode];
    [(_UIDocumentPickerOverviewViewController *)v13 setAuxiliaryOptions:optionsCopy];
    [(_UIDocumentPickerOverviewViewController *)v13 setFileTypes:typesCopy];
    [(_UIDocumentPickerOverviewViewController *)v13 setManage:itemCopy];
    tableView = [(_UIDocumentPickerOverviewViewController *)v13 tableView];
    [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"com.apple.UIKit.fileprovider.default"];

    v15 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v17 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
    tableView2 = [(_UIDocumentPickerOverviewViewController *)v13 tableView];
    [tableView2 setSeparatorInset:{v15, v16, v17, v18}];

    tableView3 = [(_UIDocumentPickerOverviewViewController *)v13 tableView];
    [tableView3 setAlwaysBounceVertical:0];

    v21 = *MEMORY[0x277D76F30];
    tableView4 = [(_UIDocumentPickerOverviewViewController *)v13 tableView];
    [tableView4 setRowHeight:v21];

    v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v13 action:sel__doneButtonPressed];
    navigationItem = [(_UIDocumentPickerOverviewViewController *)v13 navigationItem];
    [navigationItem setRightBarButtonItem:v23];

    [(_UIDocumentPickerOverviewViewController *)v13 updateContents];
  }

  return v13;
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = _UIDocumentPickerOverviewViewController;
  changeCopy = change;
  [(_UIDocumentPickerOverviewViewController *)&v11 traitCollectionDidChange:changeCopy];
  [changeCopy displayScale];
  v6 = v5;

  traitCollection = [(_UIDocumentPickerOverviewViewController *)self traitCollection];
  [traitCollection displayScale];
  v9 = vabdd_f64(v6, v8);

  if (v9 >= 2.22044605e-16)
  {
    tableView = [(_UIDocumentPickerOverviewViewController *)self tableView];
    [tableView reloadData];
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
  traitCollection = [(_UIDocumentPickerOverviewViewController *)self traitCollection];
  v9 = [v6 imageNamed:@"UIDocumentPicker-more" inBundle:v7 compatibleWithTraitCollection:traitCollection];
  [v3 setImage:v9];

  [v3 setIdentifier:@"__UIDocumentPickerBrowseIdentifier"];
  [v3 setNewlyAdded:0];
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  auxiliaryOptions = [(_UIDocumentPickerOverviewViewController *)self auxiliaryOptions];
  v12 = [auxiliaryOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(auxiliaryOptions);
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

      v13 = [auxiliaryOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  allPickers = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v18 = [allPickers isEqualToArray:v10];

  if ((v18 & 1) == 0)
  {
    [(_UIDocumentPickerOverviewViewController *)self setAllPickers:v10];
    [(_UIDocumentPickerOverviewViewController *)self updatePreferredContentSize];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  navigationController = [(_UIDocumentPickerOverviewViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___UIDocumentPickerOverviewViewController_viewWillAppear___block_invoke;
  v7[3] = &unk_278DD61B0;
  v7[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v7];
  v6.receiver = self;
  v6.super_class = _UIDocumentPickerOverviewViewController;
  [(_UIDocumentPickerOverviewViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)updatePreferredContentSize
{
  v35[1] = *MEMORY[0x277D85DE8];
  tableView = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [tableView reloadData];

  tableView2 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [tableView2 setNeedsLayout];

  tableView3 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [tableView3 layoutSubviews];

  allPickers = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v7 = [allPickers count];

  if (v7 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  allPickers2 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v10 = [allPickers2 count] > 8;
  tableView4 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [tableView4 setShowsVerticalScrollIndicator:v10];

  tableView5 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [tableView5 setScrollIndicatorInsets:{10.0, 0.0, 10.0, 0.0}];

  tableView6 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  visibleCells = [tableView6 visibleCells];
  firstObject = [visibleCells firstObject];

  [firstObject size];
  [firstObject systemLayoutSizeFittingSize:? withHorizontalFittingPriority:? verticalFittingPriority:?];
  v17 = v16;
  allPickers3 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v19 = [allPickers3 count];

  if (v19 <= v8)
  {
    textLabel = [firstObject textLabel];
    font = [textLabel font];

    if (v7)
    {
      v23 = 0;
      v24 = *MEMORY[0x277D740A8];
      v25 = 0.0;
      do
      {
        allPickers4 = [(_UIDocumentPickerOverviewViewController *)self allPickers];
        v27 = [allPickers4 objectAtIndex:v23];

        title = [v27 title];
        v34 = v24;
        v35[0] = font;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        [title boundingRectWithSize:1 options:v29 attributes:0 context:{500.0, v17}];
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
  tableView7 = [(_UIDocumentPickerOverviewViewController *)self tableView];
  [tableView7 setEstimatedRowHeight:v17];
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = _UIDocumentPickerOverviewViewController;
  [(_UIDocumentPickerOverviewViewController *)&v10 setPreferredContentSize:?];
  parentViewController = [(_UIDocumentPickerOverviewViewController *)self parentViewController];
  if ([parentViewController conformsToProtocol:&unk_2856D9E88])
  {
    [parentViewController preferredContentSize];
    if (v8 != width || v7 != height)
    {
      [parentViewController setPreferredContentSize:{width, height}];
    }
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(_UIDocumentPickerOverviewViewController *)self allPickers:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"com.apple.UIKit.fileprovider.default" forIndexPath:pathCopy];
  allPickers = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v9 = [pathCopy row];

  v10 = [allPickers objectAtIndex:v9];

  v11 = v10;
  image = [v11 image];
  v13 = [image imageWithRenderingMode:2];
  iconView = [v7 iconView];
  [iconView setImage:v13];

  title = [v11 title];
  textLabel = [v7 textLabel];
  [textLabel setText:title];

  isNewlyAdded = [v11 isNewlyAdded];
  [v7 setShowNewlyAdded:isNewlyAdded];
  [v7 setSeparatorInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = objc_alloc(MEMORY[0x277D75D18]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  allPickers = [(_UIDocumentPickerOverviewViewController *)self allPickers];
  v7 = [pathCopy row];

  v11 = [allPickers objectAtIndex:v7];

  identifier = [v11 identifier];

  delegate = [(_UIDocumentPickerOverviewViewController *)self delegate];
  identifier2 = [v11 identifier];
  if (identifier == @"__UIDocumentPickerBrowseIdentifier")
  {
    [delegate overviewController:self selectedDocumentPickerWithIdentifier:identifier2];
  }

  else
  {
    [delegate overviewController:self selectedAuxiliaryOptionWithIdentifier:identifier2];
  }
}

- (_UIDocumentPickerOverviewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end