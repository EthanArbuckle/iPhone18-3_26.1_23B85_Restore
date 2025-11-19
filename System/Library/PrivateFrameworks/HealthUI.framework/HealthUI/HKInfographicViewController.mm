@interface HKInfographicViewController
- (HKInfographicViewController)initWithItems:(id)a3 tableViewStyle:(int64_t)a4;
- (HKInfographicViewController)initWithSections:(id)a3 tableViewStyle:(int64_t)a4;
- (id)_updateAttributedString:(id)a3 withTraitCollection:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateTableViewTopPadding;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKInfographicViewController

- (HKInfographicViewController)initWithItems:(id)a3 tableViewStyle:(int64_t)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[HKInfographicSection alloc] initWithItems:v6 footer:0];

  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(HKInfographicViewController *)self initWithSections:v8 tableViewStyle:a4];

  return v9;
}

- (HKInfographicViewController)initWithSections:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HKInfographicViewController;
  v7 = [(HKInfographicViewController *)&v10 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v7->_tableViewStyle = a4;
    [(HKInfographicViewController *)v7 setSections:v6];
  }

  return v8;
}

- (void)viewDidLoad
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:self->_tableViewStyle style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKInfographicViewController *)self setTableView:v4];

  v5 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381300);
  v6 = [(HKInfographicViewController *)self tableView];
  [v6 setAccessibilityIdentifier:v5];

  v7 = [(HKInfographicViewController *)self tableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (self->_tableViewStyle)
  {
    v8 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    v9 = [(HKInfographicViewController *)self view];
    [v9 setBackgroundColor:v8];

    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  else
  {
    v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v11 = [(HKInfographicViewController *)self view];
    [v11 setBackgroundColor:v10];

    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v12 = ;
  v13 = [(HKInfographicViewController *)self tableView];
  [v13 setBackgroundColor:v12];

  v14 = [(HKInfographicViewController *)self tableView];
  [v14 setDataSource:self];

  v15 = [(HKInfographicViewController *)self tableView];
  [v15 setAllowsSelection:0];

  v16 = [(HKInfographicViewController *)self tableView];
  [v16 setSeparatorStyle:0];

  v17 = [(HKInfographicViewController *)self tableView];
  [v17 setEstimatedRowHeight:50.0];

  [(HKInfographicViewController *)self _updateTableViewTopPadding];
  v18 = *MEMORY[0x1E69DE3D0];
  v19 = [(HKInfographicViewController *)self tableView];
  [v19 setRowHeight:v18];

  v20 = [(HKInfographicViewController *)self tableView];
  [v20 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicViewControllerTextViewCell"];

  v21 = [(HKInfographicViewController *)self tableView];
  [v21 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicViewControllerLinkedTextViewCell"];

  v22 = [(HKInfographicViewController *)self tableView];
  [v22 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicButtonCell"];

  v23 = [(HKInfographicViewController *)self tableView];
  [v23 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicViewControllerContentViewCell"];

  v24 = [(HKInfographicViewController *)self tableView];
  [v24 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicViewControllerTableViewCell"];

  v25 = [(HKInfographicViewController *)self tableView];
  [v25 registerClass:objc_opt_class() forCellReuseIdentifier:@"HKInfographicTitleDetailOptionalButtonCell"];

  v26 = [(HKInfographicViewController *)self view];
  v27 = [(HKInfographicViewController *)self tableView];
  [v26 addSubview:v27];

  v28 = [(HKInfographicViewController *)self tableView];
  v29 = [v28 leadingAnchor];
  v30 = [(HKInfographicViewController *)self view];
  v31 = [v30 leadingAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  v33 = [(HKInfographicViewController *)self tableView];
  v34 = [v33 trailingAnchor];
  v35 = [(HKInfographicViewController *)self view];
  v36 = [v35 trailingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  [v37 setActive:1];

  v38 = [(HKInfographicViewController *)self tableView];
  v39 = [v38 topAnchor];
  v40 = [(HKInfographicViewController *)self view];
  v41 = [v40 topAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = [(HKInfographicViewController *)self tableView];
  v44 = [v43 bottomAnchor];
  v45 = [(HKInfographicViewController *)self view];
  v46 = [v45 bottomAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  [v47 setActive:1];

  v48 = [(HKInfographicViewController *)self tableView];
  [v48 reloadData];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKInfographicViewController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v10 = [v9 items];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [v6 dequeueReusableCellWithIdentifier:@"HKInfographicViewControllerTextViewCell" forIndexPath:v7];
    v14 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:v14];
LABEL_3:

    v15 = [v12 descriptionString];
    v16 = [(HKInfographicViewController *)self traitCollection];
    v17 = [(HKInfographicViewController *)self _updateAttributedString:v15 withTraitCollection:v16];
    v18 = [v13 descriptionLabel];
LABEL_4:
    v19 = v18;
    [v18 setAttributedText:v17];

LABEL_7:
    v26 = [v12 baseIdentifier];

    [v13 updateAutomationIdentifiersWith:v26];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [v6 dequeueReusableCellWithIdentifier:@"HKInfographicViewControllerLinkedTextViewCell" forIndexPath:v7];
    v20 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:v20];

    v21 = [v12 descriptionString];
    v22 = [(HKInfographicViewController *)self traitCollection];
    v23 = [(HKInfographicViewController *)self _updateAttributedString:v21 withTraitCollection:v22];
    v24 = [v13 descriptionLabel];
    [v24 setAttributedText:v23];

    v25 = [v12 didTapLinkedText];
    [v13 setDidTapLinkedText:v25];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v11;
    v13 = [v6 dequeueReusableCellWithIdentifier:@"HKInfographicButtonCell" forIndexPath:v7];
    v29 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:v29];

    v30 = [v28 configuration];
    v31 = [v28 buttonTapHandler];
    [v13 setConfiguration:v30 buttonTapHandler:v31];
LABEL_13:

    v32 = [v28 baseIdentifier];

    [v13 updateAutomationIdentifiersWith:v32];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [v6 dequeueReusableCellWithIdentifier:@"HKInfographicViewControllerContentViewCell" forIndexPath:v7];
    v33 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:v33];

    v14 = [v12 titleString];
    v34 = [(HKInfographicViewController *)self traitCollection];
    v35 = [(HKInfographicViewController *)self _updateAttributedString:v14 withTraitCollection:v34];
    v36 = [v13 titleLabel];
    [v36 setAttributedText:v35];

    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [v6 dequeueReusableCellWithIdentifier:@"HKInfographicViewControllerTableViewCell" forIndexPath:v7];
    [v13 setSeparatorHidden:{objc_msgSend(v12, "separatorHidden")}];
    v37 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v13 setBackgroundColor:v37];

    v38 = [v12 titleString];
    v39 = [(HKInfographicViewController *)self traitCollection];
    v40 = [(HKInfographicViewController *)self _updateAttributedString:v38 withTraitCollection:v39];
    v41 = [v13 titleLabel];
    [v41 setAttributedText:v40];

    v15 = [v12 valueString];
    v16 = [(HKInfographicViewController *)self traitCollection];
    v17 = [(HKInfographicViewController *)self _updateAttributedString:v15 withTraitCollection:v16];
    v18 = [v13 valueLabel];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v11;
    v13 = [v6 dequeueReusableCellWithIdentifier:@"HKInfographicTitleDetailOptionalButtonCell" forIndexPath:v7];
    v30 = [v28 titleString];
    v31 = [v28 detailString];
    v42 = [v28 buttonTextString];
    v43 = [v28 buttonAction];
    [v13 populateWithTitle:v30 detail:v31 buttonText:v42 buttonAction:v43];

    goto LABEL_13;
  }

  v44 = objc_alloc(MEMORY[0x1E69DD028]);
  v13 = [v44 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
LABEL_8:

  return v13;
}

- (id)_updateAttributedString:(id)a3 withTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [v5 mutableCopy];
    v8 = [v7 length];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __75__HKInfographicViewController__updateAttributedString_withTraitCollection___block_invoke;
    v15 = &unk_1E81B79A0;
    v16 = v6;
    v17 = v7;
    v9 = v7;
    [v9 enumerateAttributesInRange:0 options:v8 usingBlock:{0, &v12}];
    v10 = [v9 copy];
  }

  else
  {
    v10 = v5;
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(HKInfographicViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 footer];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(HKInfographicViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 items];
  v8 = [v7 count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(HKInfographicViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (void)_updateTableViewTopPadding
{
  v6 = [(HKInfographicViewController *)self tableView];
  [v6 _sectionContentInset];
  v4 = v3;
  v5 = [(HKInfographicViewController *)self tableView];
  [v5 _setTopPadding:v4];
}

@end