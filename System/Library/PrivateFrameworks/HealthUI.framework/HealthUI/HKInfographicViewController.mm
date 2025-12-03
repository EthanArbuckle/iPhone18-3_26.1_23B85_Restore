@interface HKInfographicViewController
- (HKInfographicViewController)initWithItems:(id)items tableViewStyle:(int64_t)style;
- (HKInfographicViewController)initWithSections:(id)sections tableViewStyle:(int64_t)style;
- (id)_updateAttributedString:(id)string withTraitCollection:(id)collection;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateTableViewTopPadding;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKInfographicViewController

- (HKInfographicViewController)initWithItems:(id)items tableViewStyle:(int64_t)style
{
  v11[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v7 = [[HKInfographicSection alloc] initWithItems:itemsCopy footer:0];

  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(HKInfographicViewController *)self initWithSections:v8 tableViewStyle:style];

  return v9;
}

- (HKInfographicViewController)initWithSections:(id)sections tableViewStyle:(int64_t)style
{
  sectionsCopy = sections;
  v10.receiver = self;
  v10.super_class = HKInfographicViewController;
  v7 = [(HKInfographicViewController *)&v10 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v7->_tableViewStyle = style;
    [(HKInfographicViewController *)v7 setSections:sectionsCopy];
  }

  return v8;
}

- (void)viewDidLoad
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:self->_tableViewStyle style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKInfographicViewController *)self setTableView:v4];

  v5 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381300);
  tableView = [(HKInfographicViewController *)self tableView];
  [tableView setAccessibilityIdentifier:v5];

  tableView2 = [(HKInfographicViewController *)self tableView];
  [tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (self->_tableViewStyle)
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    view = [(HKInfographicViewController *)self view];
    [view setBackgroundColor:systemGroupedBackgroundColor];

    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    view2 = [(HKInfographicViewController *)self view];
    [view2 setBackgroundColor:systemBackgroundColor];

    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v12 = ;
  tableView3 = [(HKInfographicViewController *)self tableView];
  [tableView3 setBackgroundColor:v12];

  tableView4 = [(HKInfographicViewController *)self tableView];
  [tableView4 setDataSource:self];

  tableView5 = [(HKInfographicViewController *)self tableView];
  [tableView5 setAllowsSelection:0];

  tableView6 = [(HKInfographicViewController *)self tableView];
  [tableView6 setSeparatorStyle:0];

  tableView7 = [(HKInfographicViewController *)self tableView];
  [tableView7 setEstimatedRowHeight:50.0];

  [(HKInfographicViewController *)self _updateTableViewTopPadding];
  v18 = *MEMORY[0x1E69DE3D0];
  tableView8 = [(HKInfographicViewController *)self tableView];
  [tableView8 setRowHeight:v18];

  tableView9 = [(HKInfographicViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicViewControllerTextViewCell"];

  tableView10 = [(HKInfographicViewController *)self tableView];
  [tableView10 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicViewControllerLinkedTextViewCell"];

  tableView11 = [(HKInfographicViewController *)self tableView];
  [tableView11 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicButtonCell"];

  tableView12 = [(HKInfographicViewController *)self tableView];
  [tableView12 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicViewControllerContentViewCell"];

  tableView13 = [(HKInfographicViewController *)self tableView];
  [tableView13 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicViewControllerTableViewCell"];

  tableView14 = [(HKInfographicViewController *)self tableView];
  [tableView14 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicTitleDetailOptionalButtonCell"];

  view3 = [(HKInfographicViewController *)self view];
  tableView15 = [(HKInfographicViewController *)self tableView];
  [view3 addSubview:tableView15];

  tableView16 = [(HKInfographicViewController *)self tableView];
  leadingAnchor = [tableView16 leadingAnchor];
  view4 = [(HKInfographicViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v32 setActive:1];

  tableView17 = [(HKInfographicViewController *)self tableView];
  trailingAnchor = [tableView17 trailingAnchor];
  view5 = [(HKInfographicViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v37 setActive:1];

  tableView18 = [(HKInfographicViewController *)self tableView];
  topAnchor = [tableView18 topAnchor];
  view6 = [(HKInfographicViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v42 setActive:1];

  tableView19 = [(HKInfographicViewController *)self tableView];
  bottomAnchor = [tableView19 bottomAnchor];
  view7 = [(HKInfographicViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v47 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v47 setActive:1];

  tableView20 = [(HKInfographicViewController *)self tableView];
  [tableView20 reloadData];

  v49.receiver = self;
  v49.super_class = HKInfographicViewController;
  [(HKInfographicViewController *)&v49 viewDidLoad];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HKInfographicViewController;
  [(HKInfographicViewController *)&v3 viewWillLayoutSubviews];
  [(HKInfographicViewController *)self _updateTableViewTopPadding];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sections = [(HKInfographicViewController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  items = [v9 items];
  v11 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"HKInfographicViewControllerTextViewCell" forIndexPath:pathCopy];
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:secondarySystemGroupedBackgroundColor];
LABEL_3:

    descriptionString = [v12 descriptionString];
    traitCollection = [(HKInfographicViewController *)self traitCollection];
    v17 = [(HKInfographicViewController *)self _updateAttributedString:descriptionString withTraitCollection:traitCollection];
    descriptionLabel = [v13 descriptionLabel];
LABEL_4:
    v19 = descriptionLabel;
    [descriptionLabel setAttributedText:v17];

LABEL_7:
    baseIdentifier = [v12 baseIdentifier];

    [v13 updateAutomationIdentifiersWith:baseIdentifier];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"HKInfographicViewControllerLinkedTextViewCell" forIndexPath:pathCopy];
    secondarySystemGroupedBackgroundColor2 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:secondarySystemGroupedBackgroundColor2];

    descriptionString2 = [v12 descriptionString];
    traitCollection2 = [(HKInfographicViewController *)self traitCollection];
    v23 = [(HKInfographicViewController *)self _updateAttributedString:descriptionString2 withTraitCollection:traitCollection2];
    descriptionLabel2 = [v13 descriptionLabel];
    [descriptionLabel2 setAttributedText:v23];

    didTapLinkedText = [v12 didTapLinkedText];
    [v13 setDidTapLinkedText:didTapLinkedText];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v11;
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"HKInfographicButtonCell" forIndexPath:pathCopy];
    secondarySystemGroupedBackgroundColor3 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:secondarySystemGroupedBackgroundColor3];

    configuration = [v28 configuration];
    buttonTapHandler = [v28 buttonTapHandler];
    [v13 setConfiguration:configuration buttonTapHandler:buttonTapHandler];
LABEL_13:

    baseIdentifier2 = [v28 baseIdentifier];

    [v13 updateAutomationIdentifiersWith:baseIdentifier2];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"HKInfographicViewControllerContentViewCell" forIndexPath:pathCopy];
    secondarySystemGroupedBackgroundColor4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:secondarySystemGroupedBackgroundColor4];

    secondarySystemGroupedBackgroundColor = [v12 titleString];
    traitCollection3 = [(HKInfographicViewController *)self traitCollection];
    v35 = [(HKInfographicViewController *)self _updateAttributedString:secondarySystemGroupedBackgroundColor withTraitCollection:traitCollection3];
    titleLabel = [v13 titleLabel];
    [titleLabel setAttributedText:v35];

    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"HKInfographicViewControllerTableViewCell" forIndexPath:pathCopy];
    [v13 setSeparatorHidden:{objc_msgSend(v12, "separatorHidden")}];
    secondarySystemGroupedBackgroundColor5 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:secondarySystemGroupedBackgroundColor5];

    titleString = [v12 titleString];
    traitCollection4 = [(HKInfographicViewController *)self traitCollection];
    v40 = [(HKInfographicViewController *)self _updateAttributedString:titleString withTraitCollection:traitCollection4];
    titleLabel2 = [v13 titleLabel];
    [titleLabel2 setAttributedText:v40];

    descriptionString = [v12 valueString];
    traitCollection = [(HKInfographicViewController *)self traitCollection];
    v17 = [(HKInfographicViewController *)self _updateAttributedString:descriptionString withTraitCollection:traitCollection];
    descriptionLabel = [v13 valueLabel];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v11;
    v13 = [viewCopy dequeueReusableCellWithIdentifier:@"HKInfographicTitleDetailOptionalButtonCell" forIndexPath:pathCopy];
    configuration = [v28 titleString];
    buttonTapHandler = [v28 detailString];
    buttonTextString = [v28 buttonTextString];
    buttonAction = [v28 buttonAction];
    [v13 populateWithTitle:configuration detail:buttonTapHandler buttonText:buttonTextString buttonAction:buttonAction];

    goto LABEL_13;
  }

  v44 = objc_alloc(MEMORY[0x1E69DD028]);
  v13 = [v44 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_8:

  return v13;
}

- (id)_updateAttributedString:(id)string withTraitCollection:(id)collection
{
  stringCopy = string;
  collectionCopy = collection;
  if ([stringCopy length])
  {
    v7 = [stringCopy mutableCopy];
    v8 = [v7 length];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __75__HKInfographicViewController__updateAttributedString_withTraitCollection___block_invoke;
    v15 = &unk_1E81B79A0;
    v16 = collectionCopy;
    v17 = v7;
    v9 = v7;
    [v9 enumerateAttributesInRange:0 options:v8 usingBlock:{0, &v12}];
    v10 = [v9 copy];
  }

  else
  {
    v10 = stringCopy;
  }

  return v10;
}

void __75__HKInfographicViewController__updateAttributedString_withTraitCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69DB648];
  v8 = a2;
  v18 = [v8 objectForKeyedSubscript:v7];
  v9 = *MEMORY[0x1E69DB5F8];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];

  if (v18)
  {
    v11 = [v18 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:*(a1 + 32)];
    [*(a1 + 40) removeAttribute:v7 range:{a3, a4}];
    [*(a1 + 40) addAttribute:v7 value:v11 range:{a3, a4}];
  }

  if (v10)
  {
    v12 = [v10 image];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 configuration];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 configurationWithTraitCollection:*(a1 + 32)];
        [*(a1 + 40) removeAttribute:v9 range:{a3, a4}];
        v17 = [v13 imageWithConfiguration:v16];
        [v10 setImage:v17];
        [*(a1 + 40) addAttribute:v9 value:v10 range:{a3, a4}];
      }
    }
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sections = [(HKInfographicViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  footer = [v6 footer];

  return footer;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(HKInfographicViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  items = [v6 items];
  v8 = [items count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(HKInfographicViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (void)_updateTableViewTopPadding
{
  tableView = [(HKInfographicViewController *)self tableView];
  [tableView _sectionContentInset];
  v4 = v3;
  tableView2 = [(HKInfographicViewController *)self tableView];
  [tableView2 _setTopPadding:v4];
}

@end