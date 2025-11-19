@interface ICDocCamRenamePrompt
- (BOOL)isTitleValid:(id)a3 error:(id *)a4;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (ICDocCamRenamePrompt)initWithExistingTitle:(id)a3;
- (id)stringByScrubbingStringForCollectionName:(id)a3;
- (void)enableAction:(id)a3 withString:(id)a4;
- (void)showFromViewController:(id)a3 completion:(id)a4;
- (void)showSingleButtonAlertFromViewController:(id)a3 withTitle:(id)a4 message:(id)a5;
- (void)textFieldChanged:(id)a3;
@end

@implementation ICDocCamRenamePrompt

- (ICDocCamRenamePrompt)initWithExistingTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICDocCamRenamePrompt;
  v6 = [(ICDocCamRenamePrompt *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_existingTitle, a3);
  }

  return v7;
}

- (void)showFromViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ICDocCamRenamePrompt *)self setStrongSelf:self];
  v8 = [DCLocalization localizedStringForKey:@"Rename" value:@"Rename" table:@"Localizable"];
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:0 preferredStyle:1];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"character.cursor.ibeam"];
  [v9 setImage:v10];

  objc_initWeak(location, self);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __58__ICDocCamRenamePrompt_showFromViewController_completion___block_invoke;
  v34[3] = &unk_278F94218;
  objc_copyWeak(&v36, location);
  v11 = v6;
  v35 = v11;
  [v9 addTextFieldWithConfigurationHandler:v34];
  v12 = MEMORY[0x277D750F8];
  v13 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __58__ICDocCamRenamePrompt_showFromViewController_completion___block_invoke_2;
  v31[3] = &unk_278F94240;
  v14 = v7;
  v32 = v14;
  objc_copyWeak(&v33, location);
  v15 = [v12 actionWithTitle:v13 style:1 handler:v31];
  [v9 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = [DCLocalization localizedStringForKey:@"Save" value:@"Save" table:@"Localizable"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __58__ICDocCamRenamePrompt_showFromViewController_completion___block_invoke_3;
  v26[3] = &unk_278F94268;
  v18 = v9;
  v27 = v18;
  objc_copyWeak(&v30, location);
  v19 = v11;
  v28 = v19;
  v20 = v14;
  v29 = v20;
  v21 = [v16 actionWithTitle:v17 style:0 handler:v26];

  [(ICDocCamRenamePrompt *)self setSaveAction:v21];
  v22 = [(ICDocCamRenamePrompt *)self existingTitle];
  [(ICDocCamRenamePrompt *)self enableAction:v21 withString:v22];

  [v18 addAction:v21];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __58__ICDocCamRenamePrompt_showFromViewController_completion___block_invoke_4;
  v24[3] = &unk_278F92C70;
  v23 = v18;
  v25 = v23;
  [v19 presentViewController:v23 animated:1 completion:v24];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v33);

  objc_destroyWeak(&v36);
  objc_destroyWeak(location);
}

void __58__ICDocCamRenamePrompt_showFromViewController_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained existingTitle];
  [v3 setText:v5];

  v6 = [DCLocalization localizedStringForKey:@"Name" value:@"Name" table:@"Localizable"];
  [v3 setPlaceholder:v6];

  v7 = [*(a1 + 32) view];
  [v3 setAutocapitalizationType:DCLocalizedCapitalizationStyleForView(v7)];

  v8 = objc_loadWeakRetained((a1 + 40));
  [v3 addTarget:v8 action:sel_textFieldChanged_ forControlEvents:0x20000];

  [v3 setClearButtonMode:1];
  v9 = objc_loadWeakRetained((a1 + 40));
  [v3 setDelegate:v9];
}

void __58__ICDocCamRenamePrompt_showFromViewController_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setStrongSelf:0];
}

void __58__ICDocCamRenamePrompt_showFromViewController_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];

  v4 = [v3 text];
  v5 = [v4 copy];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v16 = 0;
  v7 = [WeakRetained isTitleValid:v5 error:&v16];
  v8 = v16;

  if ((v7 & 1) == 0)
  {
    v9 = objc_loadWeakRetained((a1 + 56));
    v10 = *(a1 + 40);
    v11 = [v8 userInfo];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
    v13 = [v8 userInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA498]];
    [v9 showSingleButtonAlertFromViewController:v10 withTitle:v12 message:v14];
  }

  (*(*(a1 + 48) + 16))();
  v15 = objc_loadWeakRetained((a1 + 56));
  [v15 setStrongSelf:0];
}

void __58__ICDocCamRenamePrompt_showFromViewController_completion___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) textFields];
  v4 = [v1 firstObject];

  v2 = [v4 text];
  v3 = [v2 length];

  if (v3)
  {
    [v4 selectAll:0];
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a5;
  v10 = [a3 text];
  v11 = [v10 stringByReplacingCharactersInRange:location withString:{length, v9}];

  if ([v11 length])
  {
    v12 = [(ICDocCamRenamePrompt *)self isTitleValid:v11 error:0];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)isTitleValid:(id)a3 error:(id *)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_285C55A80;
  }

  v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [(__CFString *)v6 stringByTrimmingCharactersInSet:v7];

  if ([v8 length])
  {
    if ([v8 length] < 0x81)
    {
      LOBYTE(a4) = 1;
      goto LABEL_12;
    }

    if (a4)
    {
      v9 = [DCLocalization localizedStringForKey:@"Please choose a different name." value:@"Please choose a different name." table:@"Localizable"];
      v10 = @"Collection names can’t be longer than 128 characters.";
LABEL_10:
      v13 = [DCLocalization localizedStringForKey:v10 value:v10 table:@"Localizable"];
      v14 = *MEMORY[0x277CCA498];
      v17[0] = *MEMORY[0x277CCA450];
      v17[1] = v14;
      v18[0] = v9;
      v18[1] = v13;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1024 userInfo:v15];

      LOBYTE(a4) = 0;
    }
  }

  else if (a4)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [DCLocalization localizedStringForKey:@"Please choose a different name." value:@"Please choose a different name." table:@"Localizable"];
    v9 = [v11 stringWithFormat:v12, v8];

    v10 = @"Scanned document collection names can’t be blank.";
    goto LABEL_10;
  }

LABEL_12:

  return a4;
}

- (void)showSingleButtonAlertFromViewController:(id)a3 withTitle:(id)a4 message:(id)a5
{
  v18 = a4;
  v7 = a5;
  v8 = a3;
  if ([v18 length] < 0xC9)
  {
    v12 = v18;
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [v18 substringToIndex:200];
    v11 = [v9 stringWithFormat:@"%@…", v10];

    v12 = v11;
  }

  v19 = v12;
  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v7 preferredStyle:1];
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v13 setImage:v14];

  v15 = MEMORY[0x277D750F8];
  v16 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v17 = [v15 actionWithTitle:v16 style:0 handler:0];
  [v13 addAction:v17];

  [v8 presentViewController:v13 animated:1 completion:0];
}

- (id)stringByScrubbingStringForCollectionName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v5 = [v3 rangeOfCharacterFromSet:v4];

  v6 = v3;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v8 = [v3 componentsSeparatedByCharactersInSet:v7];

    v6 = [v8 componentsJoinedByString:@" "];
  }

  if ([v6 length] >= 0x81)
  {
    v9 = [v6 dc_substringToIndex:128];

    v6 = v9;
  }

  return v6;
}

- (void)textFieldChanged:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v12 = DCDynamicCast(v5, v4);

  v6 = [v12 text];
  if (v12)
  {
    v7 = [(ICDocCamRenamePrompt *)self saveAction];
    [(ICDocCamRenamePrompt *)self enableAction:v7 withString:v6];
  }

  v8 = [(ICDocCamRenamePrompt *)self stringByScrubbingStringForCollectionName:v6];
  if (([v6 isEqualToString:v8] & 1) == 0)
  {
    v9 = [v12 selectionRange];
    v11 = v10;
    [v12 setText:v8];
    if (v9 + v11 < [v8 length])
    {
      [v12 setSelectionRange:{v9, v11}];
    }
  }
}

- (void)enableAction:(id)a3 withString:(id)a4
{
  v5 = MEMORY[0x277CCA900];
  v6 = a4;
  v7 = a3;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v15 = [v6 stringByTrimmingCharactersInSet:v8];

  [v7 setEnabled:{objc_msgSend(v15, "length") != 0}];
  v9 = objc_opt_class();
  v10 = [v7 safeValueForKey:@"_representer"];
  v11 = DCDynamicCast(v9, v10);

  LOBYTE(v10) = [v7 isEnabled];
  if (v10)
  {
    v12 = *MEMORY[0x277D76580];
    v13 = [v11 accessibilityTraits] & ~v12;
  }

  else
  {
    v14 = [v11 accessibilityTraits];
    v13 = *MEMORY[0x277D76580] | v14;
  }

  [v11 setAccessibilityTraits:v13];
}

@end