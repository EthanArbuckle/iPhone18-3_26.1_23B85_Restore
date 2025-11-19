@interface IPPronounPickerViewController
+ (id)pronounPickerHeaderText;
+ (id)pronounPickerViewControllerWithDelegate:(id)a3;
+ (id)unsupportedLanguageFooterText;
+ (id)viewForExplanatoryText:(id)a3 width:(double)a4;
- (BOOL)textFieldShouldReturn:(id)a3;
- (IPPronounPickerViewController)initWithDelegate:(id)a3;
- (IPPronounPickerViewControllerDelegate)delegate;
- (id)createLanguageMenuButton;
- (id)pronounInfoForEntryField:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)autofillEmptyFields;
- (void)handleDone;
- (void)handlePronounFieldContentDidChange:(id)a3;
- (void)initializePronounInfos;
- (void)pronounFieldContentDidChange:(id)a3;
- (void)sendResultToDelegate:(id)a3;
- (void)setUpTableHeaderAndFooter;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateDoneButton;
- (void)userChangedLanguage:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation IPPronounPickerViewController

+ (id)pronounPickerViewControllerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[IPPronounPickerViewController alloc] initWithDelegate:v3];

  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];

  return v5;
}

- (IPPronounPickerViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = IPPronounPickerViewController;
  v5 = [(IPPronounPickerViewController *)&v24 initWithStyle:2];
  v6 = v5;
  if (v5)
  {
    v7 = [(IPPronounPickerViewController *)v5 navigationItem];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"Pronouns" value:&stru_286773B58 table:@"PronounPicker"];
    [v7 setTitle:v9];

    v10 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v6 action:sel_handleCancel];
    [v7 setLeftBarButtonItem:v10];

    v11 = objc_alloc(MEMORY[0x277D751E0]);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"Add" value:&stru_286773B58 table:@"PronounPicker"];
    v14 = [v11 initWithTitle:v13 style:2 target:v6 action:sel_handleDone];
    [v7 setRightBarButtonItem:v14];

    v15 = [v7 rightBarButtonItem];
    [v15 setEnabled:0];

    [(IPPronounPickerViewController *)v6 setDelegate:v4];
    v16 = 0x2797EC000;
    v17 = +[IPPronounValidator initialPronounPickerLanguage];
    [(IPPronounPickerViewController *)v6 setCurrentLanguage:v17];

    v18 = [IPPronounValidator alloc];
    v19 = [(IPPronounPickerViewController *)v6 currentLanguage];
    if (v19)
    {
      v20 = MEMORY[0x277CBEAF8];
      v16 = [(IPPronounPickerViewController *)v6 currentLanguage];
      v21 = [v20 localeWithLocaleIdentifier:v16];
    }

    else
    {
      v21 = 0;
    }

    v22 = [(IPPronounValidator *)v18 initWithLocale:v21];
    [(IPPronounPickerViewController *)v6 setPronounValidator:v22];

    if (v19)
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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = [(IPPronounPickerViewController *)self pronounInfos];
  v5 = [v4 count];

  return v5 + [(IPPronounPickerViewController *)self shouldShowLanguagePopup];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v91[3] = *MEMORY[0x277D85DE8];
  v5 = -[IPPronounPickerViewController pronounInfoIndexFromSectionIndex:](self, "pronounInfoIndexFromSectionIndex:", [a4 section]);
  v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:0];
  v7 = v6;
  if (v5 < 0)
  {
    v10 = [v6 contentView];
    v26 = objc_opt_new();
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"Language" value:&stru_286773B58 table:@"PronounPicker"];
    [v26 setText:v28];

    v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v26 setFont:v29];

    [v26 setAdjustsFontForContentSizeCategory:1];
    [v10 addSubview:v26];
    v30 = [(IPPronounPickerViewController *)self createLanguageMenuButton];
    [v10 addSubview:v30];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 intrinsicContentSize];
    v32 = v31;
    [v30 intrinsicContentSize];
    v34 = v32 + v33 + 50.0;
    v35 = [(IPPronounPickerViewController *)self tableView];
    [v35 frame];
    v37 = v36;

    if (v34 <= v37)
    {
      v88 = MEMORY[0x277CCAAD0];
      v58 = [v30 trailingAnchor];
      v57 = [v10 trailingAnchor];
      v56 = [v58 constraintEqualToAnchor:v57 constant:-20.0];
      v90[0] = v56;
      v55 = [v30 centerYAnchor];
      v85 = [v10 centerYAnchor];
      v83 = [v55 constraintEqualToAnchor:?];
      v90[1] = v83;
      v59 = [v26 leadingAnchor];
      v79 = [v10 leadingAnchor];
      v81 = v59;
      v77 = [v59 constraintEqualToAnchor:20.0 constant:?];
      v90[2] = v77;
      v60 = [v26 trailingAnchor];
      v73 = [v30 leadingAnchor];
      v75 = v60;
      v71 = [v60 constraintEqualToAnchor:-10.0 constant:?];
      v90[3] = v71;
      v61 = [v26 firstBaselineAnchor];
      v69 = [v30 firstBaselineAnchor];
      v70 = v61;
      v47 = [v61 constraintEqualToAnchor:?];
      v90[4] = v47;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:5];
      [v88 activateConstraints:v48];
    }

    else
    {
      v87 = v7;
      [v30 intrinsicContentSize];
      v39 = v38;
      v40 = [(IPPronounPickerViewController *)self tableView];
      [v40 frame];
      v42 = v41 + -50.0;

      if (v39 > v42)
      {
        v43 = [(IPPronounPickerViewController *)self tableView];
        [v43 frame];
        v39 = v44 + -50.0;
      }

      v67 = MEMORY[0x277CCAAD0];
      v68 = [v26 leadingAnchor];
      v66 = [v10 leadingAnchor];
      v65 = [v68 constraintEqualToAnchor:v66 constant:20.0];
      v89[0] = v65;
      v64 = [v26 trailingAnchor];
      v85 = [v10 trailingAnchor];
      v83 = [v64 constraintEqualToAnchor:-20.0 constant:?];
      v89[1] = v83;
      v45 = [v26 topAnchor];
      v79 = [v10 topAnchor];
      v81 = v45;
      v77 = [v45 constraintEqualToAnchor:12.0 constant:?];
      v89[2] = v77;
      v46 = [v30 trailingAnchor];
      v73 = [v10 trailingAnchor];
      v75 = v46;
      v71 = [v46 constraintEqualToAnchor:-20.0 constant:?];
      v89[3] = v71;
      v70 = [v30 widthAnchor];
      v69 = [v70 constraintEqualToConstant:v39];
      v89[4] = v69;
      v47 = [v30 topAnchor];
      v48 = [v26 bottomAnchor];
      v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];
      v89[5] = v49;
      v50 = [v30 bottomAnchor];
      [v10 bottomAnchor];
      v52 = v51 = v10;
      v53 = [v50 constraintEqualToAnchor:v52 constant:-12.0];
      v89[6] = v53;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:7];
      [v67 activateConstraints:v54];

      v55 = v64;
      v10 = v51;
      v56 = v65;

      v57 = v66;
      v58 = v68;
      v7 = v87;
    }

    [v7 setSelectionStyle:0];
  }

  else
  {
    v8 = [(IPPronounPickerViewController *)self pronounInfos];
    [v8 objectAtIndexedSubscript:v5];
    v9 = v84 = v5;
    v10 = [v9 entryField];

    v11 = [v7 contentView];
    [v11 addSubview:v10];

    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setDelegate:self];
    v72 = MEMORY[0x277CCAAD0];
    v80 = [v10 leadingAnchor];
    v82 = [v7 contentView];
    v78 = [v82 leadingAnchor];
    v76 = [v80 constraintEqualToAnchor:v78 constant:20.0];
    v91[0] = v76;
    v12 = [v10 trailingAnchor];
    v13 = [v7 contentView];
    v14 = [v13 trailingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14 constant:-20.0];
    v91[1] = v15;
    v16 = [v10 centerYAnchor];
    [v7 contentView];
    v17 = v74 = self;
    v18 = [v17 centerYAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v91[2] = v19;
    [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:3];
    v20 = v86 = v7;
    [v72 activateConstraints:v20];

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = *MEMORY[0x277D770B0];
    v23 = [(IPPronounPickerViewController *)v74 pronounInfos];
    v24 = [v23 objectAtIndexedSubscript:v84];
    v25 = [v24 entryField];
    [v21 addObserver:v74 selector:sel_pronounFieldContentDidChange_ name:v22 object:v25];

    v7 = v86;
    [v86 setSelectionStyle:0];
  }

  v62 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v35[4] = *MEMORY[0x277D85DE8];
  v5 = [(IPPronounPickerViewController *)self pronounInfoIndexFromSectionIndex:a4];
  if (v5 < 0)
  {
    v14 = 0;
  }

  else
  {
    v6 = v5;
    v7 = [(IPPronounPickerViewController *)self pronounInfos];
    v8 = [v7 objectAtIndexedSubscript:v6];
    v9 = [v8 exampleLabel];

    v10 = [(IPPronounPickerViewController *)self pronounInfos];
    v11 = [v10 objectAtIndexedSubscript:v6];
    v12 = [v11 generateExampleLabelText];
    [v9 setAttributedText:v12];

    v13 = objc_alloc(MEMORY[0x277D75D18]);
    v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v14 addSubview:v9];
    v28 = MEMORY[0x277CCAAD0];
    v33 = [v9 leadingAnchor];
    v34 = [v14 safeAreaLayoutGuide];
    v32 = [v34 leadingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32 constant:20.0];
    v35[0] = v31;
    v29 = [v9 trailingAnchor];
    v30 = [v14 safeAreaLayoutGuide];
    v27 = [v30 trailingAnchor];
    v26 = [v29 constraintEqualToAnchor:v27 constant:-20.0];
    v35[1] = v26;
    v25 = [v9 topAnchor];
    v15 = [v14 safeAreaLayoutGuide];
    v16 = [v15 topAnchor];
    v17 = [v25 constraintEqualToAnchor:v16 constant:7.33];
    v35[2] = v17;
    v18 = [v9 bottomAnchor];
    v19 = [v14 safeAreaLayoutGuide];
    v20 = [v19 bottomAnchor];
    v21 = [v18 constraintEqualToAnchor:v20];
    v35[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v28 activateConstraints:v22];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [(IPPronounPickerViewController *)self pronounInfos];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(IPPronounPickerViewController *)self pronounInfoForEntryField:v4];
    v8 = [(IPPronounPickerViewController *)self pronounInfos];
    v9 = [v8 indexOfObject:v7];

    v10 = [(IPPronounPickerViewController *)self pronounInfos];
    v11 = [(IPPronounPickerViewController *)self pronounInfos];
    v12 = [v10 objectAtIndexedSubscript:{(v9 + 1) % objc_msgSend(v11, "count")}];
    v13 = [v12 entryField];
    [v13 becomeFirstResponder];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(IPPronounPickerViewController *)self pronounInfoForEntryField:a3];
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
  v3 = [(IPPronounPickerViewController *)self pronounInfos];
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v33 + 1) + 8 * v7);
      v9 = [v8 entryField];
      v10 = [v9 isFirstResponder];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_handlePronounFieldContentDidChange_ object:v8];
    [(IPPronounPickerViewController *)self handlePronounFieldContentDidChange:v8];
    v11 = [(IPPronounPickerViewController *)self navigationItem];
    v12 = [v11 rightBarButtonItem];
    v13 = [v12 isEnabled];

    if (!v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = [(IPPronounPickerViewController *)self pronounInfos];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = objc_alloc(MEMORY[0x277CCAB38]);
        v22 = [v20 value];
        v23 = [v20 morphology];
        v24 = [v21 initWithPronoun:v22 morphology:v23 dependentMorphology:0];
        [v14 addObject:v24];
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v17);
  }

  v25 = MEMORY[0x277CCACB8];
  v26 = [(IPPronounPickerViewController *)self currentLanguage];
  v27 = [v25 localizedForLanguageIdentifier:v26 withPronouns:v14];

  [(IPPronounPickerViewController *)self sendResultToDelegate:v27];
LABEL_19:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)pronounFieldContentDidChange:(id)a3
{
  v4 = [a3 object];
  v5 = [(IPPronounPickerViewController *)self pronounInfoForEntryField:v4];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_handlePronounFieldContentDidChange_ object:v5];
  [(IPPronounPickerViewController *)self performSelector:sel_handlePronounFieldContentDidChange_ withObject:v5 afterDelay:0.5];
}

- (void)sendResultToDelegate:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(IPPronounPickerViewController *)self pronounValidator];
    [v4 rememberUserEntry:v6];

    v5 = [(IPPronounPickerViewController *)self delegate];
    [v5 pronounPickerViewController:self didFinishWithTermOfAddress:v6];
  }

  else
  {
    v5 = [(IPPronounPickerViewController *)self delegate];
    [v5 pronounPickerViewControllerDidCancel:self];
  }
}

- (void)handlePronounFieldContentDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 entryField];
  v6 = [v5 markedTextRange];

  if (!v6 || [v6 isEmpty])
  {
    v7 = [v4 entryField];
    v8 = [v7 text];
    v9 = [(IPPronounPickerViewController *)self pronounValidator];
    [v4 entryFieldContentDidChange:v8 validator:v9 userEntered:1];

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
  v4 = [(IPPronounPickerViewController *)self pronounInfos];
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
        objc_enumerationMutation(v4);
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
          v14 = [(IPPronounPickerViewController *)self pronounInfos];
          v27 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                  objc_enumerationMutation(v14);
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

              v28 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v28);
          }

          goto LABEL_37;
        }

        v11 = v3;
        v12 = @"???";
        goto LABEL_12;
      }

      v10 = [v9 value];
      [v3 addObject:v10];

LABEL_13:
      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v37 objects:v42 count:16];
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

  v13 = [(IPPronounPickerViewController *)self pronounValidator];
  v14 = [v13 autofillPronouns:v3];

  v15 = [(IPPronounPickerViewController *)self pronounInfos];
  v16 = [v15 count];

  if (v16)
  {
    v17 = 0;
    do
    {
      v18 = [(IPPronounPickerViewController *)self pronounInfos];
      v19 = [v18 objectAtIndexedSubscript:v17];
      v20 = [v19 textWasEnteredByUser];

      if ((v20 & 1) == 0)
      {
        v21 = [(IPPronounPickerViewController *)self pronounInfos];
        v22 = [v21 objectAtIndexedSubscript:v17];
        v23 = v22;
        if (v14)
        {
          v24 = [v14 objectAtIndexedSubscript:v17];
          [v23 autofillValue:v24];
        }

        else
        {
          [v22 autofillValue:&stru_286773B58];
        }
      }

      ++v17;
      v25 = [(IPPronounPickerViewController *)self pronounInfos];
      v26 = [v25 count];
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
  v3 = [(IPPronounPickerViewController *)self pronounInfos];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v12 + 1) + 8 * v7) hasValidValue])
        {
          v8 = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = [(IPPronounPickerViewController *)self navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setEnabled:v8];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)pronounInfoForEntryField:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(IPPronounPickerViewController *)self pronounInfos];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 entryField];

        if (v11 == v4)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(IPPronounPickerViewController *)self pronounInfos];
  v12 = [v5 objectAtIndexedSubscript:0];
LABEL_11:
  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)createLanguageMenuButton
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v4 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v3 setBaseForegroundColor:v4];

  [v3 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v53 = v3;
  v5 = [MEMORY[0x277D75220] buttonWithConfiguration:v3 primaryAction:0];
  [v5 setChangesSelectionAsPrimaryAction:1];
  v52 = v5;
  [v5 setShowsMenuAsPrimaryAction:1];
  obj = self;
  v6 = [(IPPronounPickerViewController *)self currentLanguage];
  v7 = [IPPronounValidator preferredPronounLocalizationForLanguage:v6];

  v8 = [MEMORY[0x277CBEB18] array];
  v54 = [MEMORY[0x277CBEB18] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v9 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v10 = [v9 countByEnumeratingWithState:&v76 objects:v83 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [IPPronounValidator preferredPronounLocalizationForLanguage:*(*(&v76 + 1) + 8 * i)];
        if (v14 && ([v8 containsObject:v14] & 1) == 0)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v76 objects:v83 count:16];
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
        if (v21 && ([v8 containsObject:v20] & 1) == 0 && (objc_msgSend(v54, "containsObject:", v20) & 1) == 0)
        {
          [v54 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v17);
  }

  [v54 sortUsingComparator:&__block_literal_global];
  v59 = [MEMORY[0x277CBEB18] array];
  v58 = [MEMORY[0x277CBEB18] array];
  v22 = obj;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obja = v8;
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
        v29 = [MEMORY[0x277CBEAF8] currentLocale];
        v30 = [v29 localizedStringForLocaleIdentifier:v27];
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

        [v59 addObject:v31];
      }

      v24 = [obja countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v24);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v55 = v54;
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
        v38 = [MEMORY[0x277CBEAF8] currentLocale];
        v39 = [v38 localizedStringForLocaleIdentifier:v36];
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

        [v58 addObject:v40];
      }

      v33 = [v55 countByEnumeratingWithState:&v62 objects:v80 count:16];
    }

    while (v33);
  }

  v41 = [MEMORY[0x277CBEB18] array];
  v42 = [(IPPronounPickerViewController *)v22 currentLanguage];

  if (!v42)
  {
    v43 = MEMORY[0x277D750C8];
    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v45 = [v44 localizedStringForKey:@"Select" value:&stru_286773B58 table:@"PronounPicker"];
    v46 = [v43 actionWithTitle:v45 image:0 identifier:0 handler:&__block_literal_global_58];

    [v46 setAttributes:1];
    [v46 setState:1];
    [v41 addObject:v46];
  }

  if ([v59 count])
  {
    v47 = [MEMORY[0x277D75710] menuWithTitle:&stru_286773B58 image:0 identifier:0 options:1 children:v59];
    [v41 addObject:v47];
  }

  if ([v58 count])
  {
    v48 = [MEMORY[0x277D75710] menuWithTitle:&stru_286773B58 image:0 identifier:0 options:1 children:v58];
    [v41 addObject:v48];
  }

  v49 = [MEMORY[0x277D75710] menuWithChildren:v41];
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

- (void)userChangedLanguage:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(IPPronounPickerViewController *)self pronounInfos];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 entryField];
        v12 = [v11 isFirstResponder];

        if (v12)
        {
          v13 = [v10 entryField];
          [v13 resignFirstResponder];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(IPPronounPickerViewController *)self setCurrentLanguage:v4];
  v14 = [IPPronounValidator alloc];
  v15 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v4];
  v16 = [(IPPronounValidator *)v14 initWithLocale:v15];
  [(IPPronounPickerViewController *)self setPronounValidator:v16];

  [(IPPronounPickerViewController *)self initializePronounInfos];
  v17 = [(IPPronounPickerViewController *)self tableView];
  [v17 setTableFooterView:0];

  v18 = [(IPPronounPickerViewController *)self tableView];
  [v18 reloadData];

  [(IPPronounPickerViewController *)self updateDoneButton];
  v19 = [(IPPronounPickerViewController *)self pronounInfos];
  v20 = [v19 objectAtIndexedSubscript:0];
  v21 = [v20 entryField];
  [v21 becomeFirstResponder];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)initializePronounInfos
{
  v3 = [(IPPronounPickerViewController *)self pronounValidator];
  v17 = [v3 exampleStrings];

  v4 = [(IPPronounPickerViewController *)self pronounValidator];
  v5 = [v4 examplePlaceholders];

  v6 = [(IPPronounPickerViewController *)self pronounValidator];
  v7 = [v6 displayedMorphologies];

  v8 = [(IPPronounPickerViewController *)self pronounValidator];
  v9 = [v8 language];

  v10 = [MEMORY[0x277CBEB18] array];
  if ([v7 count])
  {
    v11 = 0;
    do
    {
      v12 = [IPPronounPickerPronounInfo alloc];
      v13 = [v17 objectAtIndexedSubscript:v11];
      v14 = [v5 objectAtIndexedSubscript:v11];
      v15 = [v7 objectAtIndexedSubscript:v11];
      v16 = [(IPPronounPickerPronounInfo *)v12 initWithExampleText:v13 examplePlaceholder:v14 morphology:v15 language:v9];
      [v10 addObject:v16];

      ++v11;
    }

    while (v11 < [v7 count]);
  }

  [(IPPronounPickerViewController *)self setPronounInfos:v10];
}

- (void)setUpTableHeaderAndFooter
{
  v3 = [(IPPronounPickerViewController *)self tableView];
  v4 = [v3 safeAreaLayoutGuide];
  [v4 layoutFrame];
  v6 = v5;

  v7 = +[IPPronounPickerViewController pronounPickerHeaderText];
  v8 = [IPPronounPickerViewController viewForExplanatoryText:v7 width:v6];
  v9 = [(IPPronounPickerViewController *)self tableView];
  [v9 setTableHeaderView:v8];

  v10 = [(IPPronounPickerViewController *)self currentLanguage];

  if (!v10)
  {
    v13 = +[IPPronounPickerViewController unsupportedLanguageFooterText];
    v11 = [IPPronounPickerViewController viewForExplanatoryText:v13 width:v6];
    v12 = [(IPPronounPickerViewController *)self tableView];
    [v12 setTableFooterView:v11];
  }
}

+ (id)viewForExplanatoryText:(id)a3 width:(double)a4
{
  v28[3] = *MEMORY[0x277D85DE8];
  v26 = a3;
  v5 = objc_opt_new();
  [v5 setAttributedText:v26];
  [v5 setNumberOfLines:0];
  [v5 setAdjustsFontForContentSizeCategory:1];
  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v5 setTextColor:v6];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = objc_opt_new();
  [v7 addSubview:v5];
  v21 = MEMORY[0x277CCAAD0];
  v24 = [v5 leadingAnchor];
  v25 = [v7 safeAreaLayoutGuide];
  v23 = [v25 leadingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:20.0];
  v28[0] = v22;
  v20 = [v5 trailingAnchor];
  v8 = [v7 safeAreaLayoutGuide];
  v9 = [v8 trailingAnchor];
  v10 = [v20 constraintEqualToAnchor:v9 constant:-20.0];
  v28[1] = v10;
  v11 = [v5 topAnchor];
  v12 = [v7 safeAreaLayoutGuide];
  v13 = [v12 topAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:20.0];
  v28[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  [v21 activateConstraints:v15];

  [a1 heightForExplanatoryText:v26 width:a4];
  v17 = v16;

  [v7 setFrame:{0.0, 0.0, a4, v17}];
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
  v2 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v3 = [v2 mutableCopy];

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