@interface IPPronounPickerViewController
+ (id)pronounPickerHeaderText;
+ (id)pronounPickerViewControllerWithDelegate:(id)delegate;
+ (id)unsupportedLanguageFooterText;
+ (id)viewForExplanatoryText:(id)text width:(double)width;
- (BOOL)textFieldShouldReturn:(id)return;
- (IPPronounPickerViewController)initWithDelegate:(id)delegate;
- (IPPronounPickerViewControllerDelegate)delegate;
- (id)createLanguageMenuButton;
- (id)pronounInfoForEntryField:(id)field;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)autofillEmptyFields;
- (void)handleDone;
- (void)handlePronounFieldContentDidChange:(id)change;
- (void)initializePronounInfos;
- (void)pronounFieldContentDidChange:(id)change;
- (void)sendResultToDelegate:(id)delegate;
- (void)setUpTableHeaderAndFooter;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateDoneButton;
- (void)userChangedLanguage:(id)language;
- (void)viewDidLayoutSubviews;
@end

@implementation IPPronounPickerViewController

+ (id)pronounPickerViewControllerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[IPPronounPickerViewController alloc] initWithDelegate:delegateCopy];

  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];

  return v5;
}

- (IPPronounPickerViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = IPPronounPickerViewController;
  v5 = [(IPPronounPickerViewController *)&v24 initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    navigationItem = [(IPPronounPickerViewController *)v5 navigationItem];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"Pronouns" value:&stru_286773B58 table:@"PronounPicker"];
    [navigationItem setTitle:v9];

    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v6 action:sel_handleCancel];
    [navigationItem setLeftBarButtonItem:v10];

    v11 = objc_alloc(MEMORY[0x277D751E0]);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"Add" value:&stru_286773B58 table:@"PronounPicker"];
    v14 = [v11 initWithTitle:v13 style:2 target:v6 action:sel_handleDone];
    [navigationItem setRightBarButtonItem:v14];

    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];

    [(IPPronounPickerViewController *)v6 setDelegate:delegateCopy];
    currentLanguage2 = 0x2797EC000;
    v17 = +[IPPronounValidator initialPronounPickerLanguage];
    [(IPPronounPickerViewController *)v6 setCurrentLanguage:v17];

    v18 = [IPPronounValidator alloc];
    currentLanguage = [(IPPronounPickerViewController *)v6 currentLanguage];
    if (currentLanguage)
    {
      v20 = MEMORY[0x277CBEAF8];
      currentLanguage2 = [(IPPronounPickerViewController *)v6 currentLanguage];
      v21 = [v20 localeWithLocaleIdentifier:currentLanguage2];
    }

    else
    {
      v21 = 0;
    }

    v22 = [(IPPronounValidator *)v18 initWithLocale:v21];
    [(IPPronounPickerViewController *)v6 setPronounValidator:v22];

    if (currentLanguage)
    {
    }

    [(IPPronounPickerViewController *)v6 setViewHasChangedSize:0];
    [(IPPronounPickerViewController *)v6 initializePronounInfos];
  }

  return v6;
}

- (void)viewDidLayoutSubviews
{
  if ([(IPPronounPickerViewController *)self viewHasChangedSize])
  {
    [(IPPronounPickerViewController *)self setViewHasChangedSize:0];

    [(IPPronounPickerViewController *)self setUpTableHeaderAndFooter];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
  v5 = [pronounInfos count];

  return v5 + [(IPPronounPickerViewController *)self shouldShowLanguagePopup];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v91[3] = *MEMORY[0x277D85DE8];
  v5 = -[IPPronounPickerViewController pronounInfoIndexFromSectionIndex:](self, "pronounInfoIndexFromSectionIndex:", [path section]);
  v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  v7 = v6;
  if (v5 < 0)
  {
    contentView = [v6 contentView];
    v26 = objc_opt_new();
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"Language" value:&stru_286773B58 table:@"PronounPicker"];
    [v26 setText:v28];

    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v26 setFont:v29];

    [v26 setAdjustsFontForContentSizeCategory:1];
    [contentView addSubview:v26];
    createLanguageMenuButton = [(IPPronounPickerViewController *)self createLanguageMenuButton];
    [contentView addSubview:createLanguageMenuButton];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [createLanguageMenuButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 intrinsicContentSize];
    v32 = v31;
    [createLanguageMenuButton intrinsicContentSize];
    v34 = v32 + v33 + 50.0;
    tableView = [(IPPronounPickerViewController *)self tableView];
    [tableView frame];
    v37 = v36;

    if (v34 <= v37)
    {
      v88 = MEMORY[0x277CCAAD0];
      trailingAnchor = [createLanguageMenuButton trailingAnchor];
      trailingAnchor2 = [contentView trailingAnchor];
      v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
      v90[0] = v56;
      centerYAnchor = [createLanguageMenuButton centerYAnchor];
      centerYAnchor2 = [contentView centerYAnchor];
      v83 = [centerYAnchor constraintEqualToAnchor:?];
      v90[1] = v83;
      leadingAnchor = [v26 leadingAnchor];
      leadingAnchor2 = [contentView leadingAnchor];
      v81 = leadingAnchor;
      v77 = [leadingAnchor constraintEqualToAnchor:20.0 constant:?];
      v90[2] = v77;
      trailingAnchor3 = [v26 trailingAnchor];
      leadingAnchor3 = [createLanguageMenuButton leadingAnchor];
      v75 = trailingAnchor3;
      v71 = [trailingAnchor3 constraintEqualToAnchor:-10.0 constant:?];
      v90[3] = v71;
      firstBaselineAnchor = [v26 firstBaselineAnchor];
      firstBaselineAnchor2 = [createLanguageMenuButton firstBaselineAnchor];
      widthAnchor = firstBaselineAnchor;
      topAnchor2 = [firstBaselineAnchor constraintEqualToAnchor:?];
      v90[4] = topAnchor2;
      bottomAnchor = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:5];
      [v88 activateConstraints:bottomAnchor];
    }

    else
    {
      v87 = v7;
      [createLanguageMenuButton intrinsicContentSize];
      v39 = v38;
      tableView2 = [(IPPronounPickerViewController *)self tableView];
      [tableView2 frame];
      v42 = v41 + -50.0;

      if (v39 > v42)
      {
        tableView3 = [(IPPronounPickerViewController *)self tableView];
        [tableView3 frame];
        v39 = v44 + -50.0;
      }

      v67 = MEMORY[0x277CCAAD0];
      leadingAnchor4 = [v26 leadingAnchor];
      leadingAnchor5 = [contentView leadingAnchor];
      v65 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:20.0];
      v89[0] = v65;
      trailingAnchor4 = [v26 trailingAnchor];
      centerYAnchor2 = [contentView trailingAnchor];
      v83 = [trailingAnchor4 constraintEqualToAnchor:-20.0 constant:?];
      v89[1] = v83;
      topAnchor = [v26 topAnchor];
      leadingAnchor2 = [contentView topAnchor];
      v81 = topAnchor;
      v77 = [topAnchor constraintEqualToAnchor:12.0 constant:?];
      v89[2] = v77;
      trailingAnchor5 = [createLanguageMenuButton trailingAnchor];
      leadingAnchor3 = [contentView trailingAnchor];
      v75 = trailingAnchor5;
      v71 = [trailingAnchor5 constraintEqualToAnchor:-20.0 constant:?];
      v89[3] = v71;
      widthAnchor = [createLanguageMenuButton widthAnchor];
      firstBaselineAnchor2 = [widthAnchor constraintEqualToConstant:v39];
      v89[4] = firstBaselineAnchor2;
      topAnchor2 = [createLanguageMenuButton topAnchor];
      bottomAnchor = [v26 bottomAnchor];
      v49 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:10.0];
      v89[5] = v49;
      bottomAnchor2 = [createLanguageMenuButton bottomAnchor];
      [contentView bottomAnchor];
      v52 = v51 = contentView;
      v53 = [bottomAnchor2 constraintEqualToAnchor:v52 constant:-12.0];
      v89[6] = v53;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:7];
      [v67 activateConstraints:v54];

      centerYAnchor = trailingAnchor4;
      contentView = v51;
      v56 = v65;

      trailingAnchor2 = leadingAnchor5;
      trailingAnchor = leadingAnchor4;
      v7 = v87;
    }

    [v7 setSelectionStyle:0];
  }

  else
  {
    pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
    [pronounInfos objectAtIndexedSubscript:v5];
    v9 = v84 = v5;
    contentView = [v9 entryField];

    contentView2 = [v7 contentView];
    [contentView2 addSubview:contentView];

    [contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView setDelegate:self];
    v72 = MEMORY[0x277CCAAD0];
    leadingAnchor6 = [contentView leadingAnchor];
    contentView3 = [v7 contentView];
    leadingAnchor7 = [contentView3 leadingAnchor];
    v76 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:20.0];
    v91[0] = v76;
    trailingAnchor6 = [contentView trailingAnchor];
    contentView4 = [v7 contentView];
    trailingAnchor7 = [contentView4 trailingAnchor];
    v15 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-20.0];
    v91[1] = v15;
    centerYAnchor3 = [contentView centerYAnchor];
    [v7 contentView];
    v17 = v74 = self;
    centerYAnchor4 = [v17 centerYAnchor];
    v19 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v91[2] = v19;
    [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
    v20 = v86 = v7;
    [v72 activateConstraints:v20];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = *MEMORY[0x277D770B0];
    pronounInfos2 = [(IPPronounPickerViewController *)v74 pronounInfos];
    v24 = [pronounInfos2 objectAtIndexedSubscript:v84];
    entryField = [v24 entryField];
    [defaultCenter addObserver:v74 selector:sel_pronounFieldContentDidChange_ name:v22 object:entryField];

    v7 = v86;
    [v86 setSelectionStyle:0];
  }

  v62 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v35[4] = *MEMORY[0x277D85DE8];
  v5 = [(IPPronounPickerViewController *)self pronounInfoIndexFromSectionIndex:section];
  if (v5 < 0)
  {
    v14 = 0;
  }

  else
  {
    v6 = v5;
    pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
    v8 = [pronounInfos objectAtIndexedSubscript:v6];
    exampleLabel = [v8 exampleLabel];

    pronounInfos2 = [(IPPronounPickerViewController *)self pronounInfos];
    v11 = [pronounInfos2 objectAtIndexedSubscript:v6];
    generateExampleLabelText = [v11 generateExampleLabelText];
    [exampleLabel setAttributedText:generateExampleLabelText];

    v13 = objc_alloc(MEMORY[0x277D75D18]);
    v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v14 addSubview:exampleLabel];
    v28 = MEMORY[0x277CCAAD0];
    leadingAnchor = [exampleLabel leadingAnchor];
    safeAreaLayoutGuide = [v14 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v35[0] = v31;
    trailingAnchor = [exampleLabel trailingAnchor];
    safeAreaLayoutGuide2 = [v14 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v35[1] = v26;
    topAnchor = [exampleLabel topAnchor];
    safeAreaLayoutGuide3 = [v14 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:7.33];
    v35[2] = v17;
    bottomAnchor = [exampleLabel bottomAnchor];
    safeAreaLayoutGuide4 = [v14 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v35[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v28 activateConstraints:v22];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
  v6 = [pronounInfos count];

  if (v6)
  {
    v7 = [(IPPronounPickerViewController *)self pronounInfoForEntryField:returnCopy];
    pronounInfos2 = [(IPPronounPickerViewController *)self pronounInfos];
    v9 = [pronounInfos2 indexOfObject:v7];

    pronounInfos3 = [(IPPronounPickerViewController *)self pronounInfos];
    pronounInfos4 = [(IPPronounPickerViewController *)self pronounInfos];
    v12 = [pronounInfos3 objectAtIndexedSubscript:{(v9 + 1) % objc_msgSend(pronounInfos4, "count")}];
    entryField = [v12 entryField];
    [entryField becomeFirstResponder];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  v4 = [(IPPronounPickerViewController *)self pronounInfoForEntryField:editing];
  if (v4)
  {
    v5 = v4;
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_handlePronounFieldContentDidChange_ object:v4];
    [(IPPronounPickerViewController *)self handlePronounFieldContentDidChange:v5];
  }

  MEMORY[0x2821F96F8]();
}

- (void)handleDone
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
  v4 = [pronounInfos countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v34 != v6)
      {
        objc_enumerationMutation(pronounInfos);
      }

      v8 = *(*(&v33 + 1) + 8 * v7);
      entryField = [v8 entryField];
      isFirstResponder = [entryField isFirstResponder];

      if (isFirstResponder)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [pronounInfos countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_handlePronounFieldContentDidChange_ object:v8];
    [(IPPronounPickerViewController *)self handlePronounFieldContentDidChange:v8];
    navigationItem = [(IPPronounPickerViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    isEnabled = [rightBarButtonItem isEnabled];

    if (!isEnabled)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_9:
  }

  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  pronounInfos2 = [(IPPronounPickerViewController *)self pronounInfos];
  v16 = [pronounInfos2 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(pronounInfos2);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = objc_alloc(MEMORY[0x277CCAB38]);
        value = [v20 value];
        morphology = [v20 morphology];
        v24 = [v21 initWithPronoun:value morphology:morphology dependentMorphology:0];
        [array addObject:v24];
      }

      v17 = [pronounInfos2 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  v25 = MEMORY[0x277CCACB8];
  currentLanguage = [(IPPronounPickerViewController *)self currentLanguage];
  v27 = [v25 localizedForLanguageIdentifier:currentLanguage withPronouns:array];

  [(IPPronounPickerViewController *)self sendResultToDelegate:v27];
LABEL_19:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)pronounFieldContentDidChange:(id)change
{
  object = [change object];
  v5 = [(IPPronounPickerViewController *)self pronounInfoForEntryField:object];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_handlePronounFieldContentDidChange_ object:v5];
  [(IPPronounPickerViewController *)self performSelector:sel_handlePronounFieldContentDidChange_ withObject:v5 afterDelay:0.5];
}

- (void)sendResultToDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    pronounValidator = [(IPPronounPickerViewController *)self pronounValidator];
    [pronounValidator rememberUserEntry:delegateCopy];

    delegate = [(IPPronounPickerViewController *)self delegate];
    [delegate pronounPickerViewController:self didFinishWithTermOfAddress:delegateCopy];
  }

  else
  {
    delegate = [(IPPronounPickerViewController *)self delegate];
    [delegate pronounPickerViewControllerDidCancel:self];
  }
}

- (void)handlePronounFieldContentDidChange:(id)change
{
  changeCopy = change;
  entryField = [changeCopy entryField];
  markedTextRange = [entryField markedTextRange];

  if (!markedTextRange || [markedTextRange isEmpty])
  {
    entryField2 = [changeCopy entryField];
    text = [entryField2 text];
    pronounValidator = [(IPPronounPickerViewController *)self pronounValidator];
    [changeCopy entryFieldContentDidChange:text validator:pronounValidator userEntered:1];

    [(IPPronounPickerViewController *)self autofillEmptyFields];
    [(IPPronounPickerViewController *)self updateDoneButton];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__IPPronounPickerViewController_handlePronounFieldContentDidChange___block_invoke;
    v10[3] = &unk_2797EC450;
    v10[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v10];
  }
}

void __68__IPPronounPickerViewController_handlePronounFieldContentDidChange___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) tableView];
  v2 = MEMORY[0x277CCAA78];
  v3 = [*(a1 + 32) shouldShowLanguagePopup];
  v4 = [*(a1 + 32) pronounInfos];
  v5 = [v2 indexSetWithIndexesInRange:{v3, objc_msgSend(v4, "count")}];
  [v6 _reloadSectionHeaderFooters:v5 withRowAnimation:5];
}

- (void)autofillEmptyFields
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
  v5 = [pronounInfos countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v38;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v38 != v7)
      {
        objc_enumerationMutation(pronounInfos);
      }

      v9 = *(*(&v37 + 1) + 8 * v8);
      if (![v9 textWasEnteredByUser])
      {
        break;
      }

      if (([v9 hasValue] & 1) == 0)
      {
        if (![v9 hasErrorMessage])
        {

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          pronounInfos2 = [(IPPronounPickerViewController *)self pronounInfos];
          v27 = [pronounInfos2 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v34;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v34 != v29)
                {
                  objc_enumerationMutation(pronounInfos2);
                }

                v31 = *(*(&v33 + 1) + 8 * i);
                if (([v31 hasValue] & 1) != 0 || (objc_msgSend(v31, "hasErrorMessage") & 1) != 0 || !objc_msgSend(v31, "textWasEnteredByUser"))
                {
                  if (([v31 textWasEnteredByUser] & 1) == 0)
                  {
                    [v31 autofillValue:&stru_286773B58];
                  }
                }

                else
                {
                  [v31 setTextWasEnteredByUser:0];
                }
              }

              v28 = [pronounInfos2 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v28);
          }

          goto LABEL_37;
        }

        v11 = v3;
        v12 = @"???";
        goto LABEL_12;
      }

      value = [v9 value];
      [v3 addObject:value];

LABEL_13:
      if (v6 == ++v8)
      {
        v6 = [pronounInfos countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v11 = v3;
    v12 = &stru_286773B58;
LABEL_12:
    [v11 addObject:v12];
    goto LABEL_13;
  }

LABEL_15:

  pronounValidator = [(IPPronounPickerViewController *)self pronounValidator];
  pronounInfos2 = [pronounValidator autofillPronouns:v3];

  pronounInfos3 = [(IPPronounPickerViewController *)self pronounInfos];
  v16 = [pronounInfos3 count];

  if (v16)
  {
    v17 = 0;
    do
    {
      pronounInfos4 = [(IPPronounPickerViewController *)self pronounInfos];
      v19 = [pronounInfos4 objectAtIndexedSubscript:v17];
      textWasEnteredByUser = [v19 textWasEnteredByUser];

      if ((textWasEnteredByUser & 1) == 0)
      {
        pronounInfos5 = [(IPPronounPickerViewController *)self pronounInfos];
        v22 = [pronounInfos5 objectAtIndexedSubscript:v17];
        v23 = v22;
        if (pronounInfos2)
        {
          v24 = [pronounInfos2 objectAtIndexedSubscript:v17];
          [v23 autofillValue:v24];
        }

        else
        {
          [v22 autofillValue:&stru_286773B58];
        }
      }

      ++v17;
      pronounInfos6 = [(IPPronounPickerViewController *)self pronounInfos];
      v26 = [pronounInfos6 count];
    }

    while (v17 < v26);
  }

LABEL_37:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)updateDoneButton
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
  v4 = [pronounInfos countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(pronounInfos);
        }

        if (![*(*(&v12 + 1) + 8 * v7) hasValidValue])
        {
          v8 = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [pronounInfos countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  navigationItem = [(IPPronounPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v8];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)pronounInfoForEntryField:(id)field
{
  v21 = *MEMORY[0x277D85DE8];
  fieldCopy = field;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
  v6 = [pronounInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(pronounInfos);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        entryField = [v10 entryField];

        if (entryField == fieldCopy)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [pronounInfos countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
  v12 = [pronounInfos objectAtIndexedSubscript:0];
LABEL_11:
  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)createLanguageMenuButton
{
  v84 = *MEMORY[0x277D85DE8];
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [plainButtonConfiguration setBaseForegroundColor:secondaryLabelColor];

  [plainButtonConfiguration setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v53 = plainButtonConfiguration;
  v5 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
  [v5 setChangesSelectionAsPrimaryAction:1];
  v52 = v5;
  [v5 setShowsMenuAsPrimaryAction:1];
  obj = self;
  currentLanguage = [(IPPronounPickerViewController *)self currentLanguage];
  v7 = [IPPronounValidator preferredPronounLocalizationForLanguage:currentLanguage];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v10 = [preferredLanguages countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v77;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v77 != v12)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v14 = [IPPronounValidator preferredPronounLocalizationForLanguage:*(*(&v76 + 1) + 8 * i)];
        if (v14 && ([array containsObject:v14] & 1) == 0)
        {
          [array addObject:v14];
        }
      }

      v11 = [preferredLanguages countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v11);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v15 = +[IPPronounValidator supportedPronounLocalizations];
  v16 = [v15 countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v73;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v73 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v72 + 1) + 8 * j);
        v21 = [IPPronounValidator preferredPronounLocalizationForLanguage:v20];
        if (v21 && ([array containsObject:v20] & 1) == 0 && (objc_msgSend(array2, "containsObject:", v20) & 1) == 0)
        {
          [array2 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v17);
  }

  [array2 sortUsingComparator:&__block_literal_global];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v22 = obj;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obja = array;
  v23 = [obja countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v69;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v69 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v68 + 1) + 8 * k);
        v28 = MEMORY[0x277D750C8];
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        v30 = [currentLocale localizedStringForLocaleIdentifier:v27];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __57__IPPronounPickerViewController_createLanguageMenuButton__block_invoke_2;
        v66[3] = &unk_2797EC498;
        v67 = v22;
        v31 = [v28 actionWithTitle:v30 image:0 identifier:v27 handler:v66];

        if (v7 && [v27 isEqualToString:v7])
        {
          [v31 setState:1];
        }

        [array3 addObject:v31];
      }

      v24 = [obja countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v24);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v55 = array2;
  v32 = [v55 countByEnumeratingWithState:&v62 objects:v80 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v63;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v63 != v34)
        {
          objc_enumerationMutation(v55);
        }

        v36 = *(*(&v62 + 1) + 8 * m);
        v37 = MEMORY[0x277D750C8];
        currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
        v39 = [currentLocale2 localizedStringForLocaleIdentifier:v36];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __57__IPPronounPickerViewController_createLanguageMenuButton__block_invoke_3;
        v60[3] = &unk_2797EC498;
        v61 = v22;
        v40 = [v37 actionWithTitle:v39 image:0 identifier:v36 handler:v60];

        if (v7 && [v36 isEqualToString:v7])
        {
          [v40 setState:1];
        }

        [array4 addObject:v40];
      }

      v33 = [v55 countByEnumeratingWithState:&v62 objects:v80 count:16];
    }

    while (v33);
  }

  array5 = [MEMORY[0x277CBEB18] array];
  currentLanguage2 = [(IPPronounPickerViewController *)v22 currentLanguage];

  if (!currentLanguage2)
  {
    v43 = MEMORY[0x277D750C8];
    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v45 = [v44 localizedStringForKey:@"Select" value:&stru_286773B58 table:@"PronounPicker"];
    v46 = [v43 actionWithTitle:v45 image:0 identifier:0 handler:&__block_literal_global_58];

    [v46 setAttributes:1];
    [v46 setState:1];
    [array5 addObject:v46];
  }

  if ([array3 count])
  {
    v47 = [MEMORY[0x277D75710] menuWithTitle:&stru_286773B58 image:0 identifier:0 options:1 children:array3];
    [array5 addObject:v47];
  }

  if ([array4 count])
  {
    v48 = [MEMORY[0x277D75710] menuWithTitle:&stru_286773B58 image:0 identifier:0 options:1 children:array4];
    [array5 addObject:v48];
  }

  v49 = [MEMORY[0x277D75710] menuWithChildren:array5];
  [v52 setMenu:v49];

  v50 = *MEMORY[0x277D85DE8];

  return v52;
}

uint64_t __57__IPPronounPickerViewController_createLanguageMenuButton__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  v6 = a2;
  v7 = [v4 currentLocale];
  v8 = [v7 localizedStringForLocaleIdentifier:v6];

  v9 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v9 localizedStringForLocaleIdentifier:v5];

  v11 = [v8 localizedCaseInsensitiveCompare:v10];
  return v11;
}

void __57__IPPronounPickerViewController_createLanguageMenuButton__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 userChangedLanguage:v3];
}

void __57__IPPronounPickerViewController_createLanguageMenuButton__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 userChangedLanguage:v3];
}

- (void)userChangedLanguage:(id)language
{
  v28 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  pronounInfos = [(IPPronounPickerViewController *)self pronounInfos];
  v6 = [pronounInfos countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(pronounInfos);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        entryField = [v10 entryField];
        isFirstResponder = [entryField isFirstResponder];

        if (isFirstResponder)
        {
          entryField2 = [v10 entryField];
          [entryField2 resignFirstResponder];

          goto LABEL_11;
        }
      }

      v7 = [pronounInfos countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(IPPronounPickerViewController *)self setCurrentLanguage:languageCopy];
  v14 = [IPPronounValidator alloc];
  v15 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCopy];
  v16 = [(IPPronounValidator *)v14 initWithLocale:v15];
  [(IPPronounPickerViewController *)self setPronounValidator:v16];

  [(IPPronounPickerViewController *)self initializePronounInfos];
  tableView = [(IPPronounPickerViewController *)self tableView];
  [tableView setTableFooterView:0];

  tableView2 = [(IPPronounPickerViewController *)self tableView];
  [tableView2 reloadData];

  [(IPPronounPickerViewController *)self updateDoneButton];
  pronounInfos2 = [(IPPronounPickerViewController *)self pronounInfos];
  v20 = [pronounInfos2 objectAtIndexedSubscript:0];
  entryField3 = [v20 entryField];
  [entryField3 becomeFirstResponder];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)initializePronounInfos
{
  pronounValidator = [(IPPronounPickerViewController *)self pronounValidator];
  exampleStrings = [pronounValidator exampleStrings];

  pronounValidator2 = [(IPPronounPickerViewController *)self pronounValidator];
  examplePlaceholders = [pronounValidator2 examplePlaceholders];

  pronounValidator3 = [(IPPronounPickerViewController *)self pronounValidator];
  displayedMorphologies = [pronounValidator3 displayedMorphologies];

  pronounValidator4 = [(IPPronounPickerViewController *)self pronounValidator];
  language = [pronounValidator4 language];

  array = [MEMORY[0x277CBEB18] array];
  if ([displayedMorphologies count])
  {
    v11 = 0;
    do
    {
      v12 = [IPPronounPickerPronounInfo alloc];
      v13 = [exampleStrings objectAtIndexedSubscript:v11];
      v14 = [examplePlaceholders objectAtIndexedSubscript:v11];
      v15 = [displayedMorphologies objectAtIndexedSubscript:v11];
      v16 = [(IPPronounPickerPronounInfo *)v12 initWithExampleText:v13 examplePlaceholder:v14 morphology:v15 language:language];
      [array addObject:v16];

      ++v11;
    }

    while (v11 < [displayedMorphologies count]);
  }

  [(IPPronounPickerViewController *)self setPronounInfos:array];
}

- (void)setUpTableHeaderAndFooter
{
  tableView = [(IPPronounPickerViewController *)self tableView];
  safeAreaLayoutGuide = [tableView safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v6 = v5;

  v7 = +[IPPronounPickerViewController pronounPickerHeaderText];
  v8 = [IPPronounPickerViewController viewForExplanatoryText:v7 width:v6];
  tableView2 = [(IPPronounPickerViewController *)self tableView];
  [tableView2 setTableHeaderView:v8];

  currentLanguage = [(IPPronounPickerViewController *)self currentLanguage];

  if (!currentLanguage)
  {
    v13 = +[IPPronounPickerViewController unsupportedLanguageFooterText];
    v11 = [IPPronounPickerViewController viewForExplanatoryText:v13 width:v6];
    tableView3 = [(IPPronounPickerViewController *)self tableView];
    [tableView3 setTableFooterView:v11];
  }
}

+ (id)viewForExplanatoryText:(id)text width:(double)width
{
  v28[3] = *MEMORY[0x277D85DE8];
  textCopy = text;
  v5 = objc_opt_new();
  [v5 setAttributedText:textCopy];
  [v5 setNumberOfLines:0];
  [v5 setAdjustsFontForContentSizeCategory:1];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v5 setTextColor:secondaryLabelColor];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_new();
  [v7 addSubview:v5];
  v21 = MEMORY[0x277CCAAD0];
  leadingAnchor = [v5 leadingAnchor];
  safeAreaLayoutGuide = [v7 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v28[0] = v22;
  trailingAnchor = [v5 trailingAnchor];
  safeAreaLayoutGuide2 = [v7 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v28[1] = v10;
  topAnchor = [v5 topAnchor];
  safeAreaLayoutGuide3 = [v7 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v28[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  [v21 activateConstraints:v15];

  [self heightForExplanatoryText:textCopy width:width];
  v17 = v16;

  [v7 setFrame:{0.0, 0.0, width, v17}];
  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)pronounPickerHeaderText
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCA898]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PRONOUN PICKER HEADER" value:&stru_286773B58 table:@"PronounPicker"];
  v10 = *MEMORY[0x277D740A8];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v2 initWithString:v4 attributes:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)unsupportedLanguageFooterText
{
  v13[2] = *MEMORY[0x277D85DE8];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v3 = [defaultParagraphStyle mutableCopy];

  [v3 setAlignment:1];
  v4 = objc_alloc(MEMORY[0x277CCA898]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"UNSUPPORTED LANGUAGE FOOTER" value:&stru_286773B58 table:@"PronounPicker"];
  v12[0] = *MEMORY[0x277D740A8];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  v12[1] = *MEMORY[0x277D74118];
  v13[0] = v7;
  v13[1] = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [v4 initWithString:v6 attributes:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (IPPronounPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end