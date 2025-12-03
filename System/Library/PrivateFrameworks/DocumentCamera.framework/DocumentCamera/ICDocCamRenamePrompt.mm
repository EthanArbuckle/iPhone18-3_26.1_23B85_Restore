@interface ICDocCamRenamePrompt
- (BOOL)isTitleValid:(id)valid error:(id *)error;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (ICDocCamRenamePrompt)initWithExistingTitle:(id)title;
- (id)stringByScrubbingStringForCollectionName:(id)name;
- (void)enableAction:(id)action withString:(id)string;
- (void)showFromViewController:(id)controller completion:(id)completion;
- (void)showSingleButtonAlertFromViewController:(id)controller withTitle:(id)title message:(id)message;
- (void)textFieldChanged:(id)changed;
@end

@implementation ICDocCamRenamePrompt

- (ICDocCamRenamePrompt)initWithExistingTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = ICDocCamRenamePrompt;
  v6 = [(ICDocCamRenamePrompt *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_existingTitle, title);
  }

  return v7;
}

- (void)showFromViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
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
  v11 = controllerCopy;
  v35 = v11;
  [v9 addTextFieldWithConfigurationHandler:v34];
  v12 = MEMORY[0x277D750F8];
  v13 = [DCLocalization localizedStringForKey:@"Cancel" value:@"Cancel" table:@"Localizable"];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __58__ICDocCamRenamePrompt_showFromViewController_completion___block_invoke_2;
  v31[3] = &unk_278F94240;
  v14 = completionCopy;
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
  existingTitle = [(ICDocCamRenamePrompt *)self existingTitle];
  [(ICDocCamRenamePrompt *)self enableAction:v21 withString:existingTitle];

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

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

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

- (BOOL)isTitleValid:(id)valid error:(id *)error
{
  v18[2] = *MEMORY[0x277D85DE8];
  validCopy = valid;
  if (validCopy)
  {
    v6 = validCopy;
  }

  else
  {
    v6 = &stru_285C55A80;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [(__CFString *)v6 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v8 length])
  {
    if ([v8 length] < 0x81)
    {
      LOBYTE(error) = 1;
      goto LABEL_12;
    }

    if (error)
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
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1024 userInfo:v15];

      LOBYTE(error) = 0;
    }
  }

  else if (error)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [DCLocalization localizedStringForKey:@"Please choose a different name." value:@"Please choose a different name." table:@"Localizable"];
    v9 = [v11 stringWithFormat:v12, v8];

    v10 = @"Scanned document collection names can’t be blank.";
    goto LABEL_10;
  }

LABEL_12:

  return error;
}

- (void)showSingleButtonAlertFromViewController:(id)controller withTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  controllerCopy = controller;
  if ([titleCopy length] < 0xC9)
  {
    v12 = titleCopy;
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [titleCopy substringToIndex:200];
    v11 = [v9 stringWithFormat:@"%@…", v10];

    v12 = v11;
  }

  v19 = v12;
  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:messageCopy preferredStyle:1];
  v14 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle"];
  [v13 setImage:v14];

  v15 = MEMORY[0x277D750F8];
  v16 = [DCLocalization localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
  v17 = [v15 actionWithTitle:v16 style:0 handler:0];
  [v13 addAction:v17];

  [controllerCopy presentViewController:v13 animated:1 completion:0];
}

- (id)stringByScrubbingStringForCollectionName:(id)name
{
  nameCopy = name;
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v5 = [nameCopy rangeOfCharacterFromSet:newlineCharacterSet];

  v6 = nameCopy;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    newlineCharacterSet2 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v8 = [nameCopy componentsSeparatedByCharactersInSet:newlineCharacterSet2];

    v6 = [v8 componentsJoinedByString:@" "];
  }

  if ([v6 length] >= 0x81)
  {
    v9 = [v6 dc_substringToIndex:128];

    v6 = v9;
  }

  return v6;
}

- (void)textFieldChanged:(id)changed
{
  changedCopy = changed;
  v5 = objc_opt_class();
  v12 = DCDynamicCast(v5, changedCopy);

  text = [v12 text];
  if (v12)
  {
    saveAction = [(ICDocCamRenamePrompt *)self saveAction];
    [(ICDocCamRenamePrompt *)self enableAction:saveAction withString:text];
  }

  v8 = [(ICDocCamRenamePrompt *)self stringByScrubbingStringForCollectionName:text];
  if (([text isEqualToString:v8] & 1) == 0)
  {
    selectionRange = [v12 selectionRange];
    v11 = v10;
    [v12 setText:v8];
    if (selectionRange + v11 < [v8 length])
    {
      [v12 setSelectionRange:{selectionRange, v11}];
    }
  }
}

- (void)enableAction:(id)action withString:(id)string
{
  v5 = MEMORY[0x277CCA900];
  stringCopy = string;
  actionCopy = action;
  whitespaceAndNewlineCharacterSet = [v5 whitespaceAndNewlineCharacterSet];
  v15 = [stringCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  [actionCopy setEnabled:{objc_msgSend(v15, "length") != 0}];
  v9 = objc_opt_class();
  v10 = [actionCopy safeValueForKey:@"_representer"];
  v11 = DCDynamicCast(v9, v10);

  LOBYTE(v10) = [actionCopy isEnabled];
  if (v10)
  {
    v12 = *MEMORY[0x277D76580];
    v13 = [v11 accessibilityTraits] & ~v12;
  }

  else
  {
    accessibilityTraits = [v11 accessibilityTraits];
    v13 = *MEMORY[0x277D76580] | accessibilityTraits;
  }

  [v11 setAccessibilityTraits:v13];
}

@end