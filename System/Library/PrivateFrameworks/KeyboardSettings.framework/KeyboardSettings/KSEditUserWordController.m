@interface KSEditUserWordController
+ (BOOL)wantsToDelegate:(id)a3;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (KSEditUserWordController)initWithUserWord:(id)a3;
- (NSString)shortcut;
- (NSString)target;
- (UITextField)shortcutTextField;
- (UITextField)targetTextField;
- (id)originalDelegateForTextField:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)validationErrorStringFromError:(int64_t)a3;
- (void)_dismiss;
- (void)_handleValidationWithError:(int64_t)a3;
- (void)_unpackTextReplacementError:(id)a3;
- (void)dealloc;
- (void)save;
- (void)setShortcut:(id)a3;
- (void)setTarget:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)viewDidLoad;
@end

@implementation KSEditUserWordController

- (KSEditUserWordController)initWithUserWord:(id)a3
{
  v7.receiver = self;
  v7.super_class = KSEditUserWordController;
  v4 = [(KSEditUserWordController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(KSEditUserWordController *)v4 setOldEntry:a3];
    if (!a3)
    {
      a3 = objc_alloc_init(MEMORY[0x277D22AE0]);
    }

    [(KSEditUserWordController *)v5 setNextEntry:a3];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSEditUserWordController;
  [(KSEditUserWordController *)&v3 dealloc];
}

- (NSString)target
{
  v2 = [(KSEditUserWordController *)self nextEntry];

  return [(_KSTextReplacementEntry *)v2 phrase];
}

- (void)setTarget:(id)a3
{
  v4 = [(KSEditUserWordController *)self nextEntry];

  [(_KSTextReplacementEntry *)v4 setPhrase:a3];
}

- (NSString)shortcut
{
  v2 = [(KSEditUserWordController *)self nextEntry];

  return [(_KSTextReplacementEntry *)v2 shortcut];
}

- (void)setShortcut:(id)a3
{
  v4 = [(KSEditUserWordController *)self nextEntry];

  [(_KSTextReplacementEntry *)v4 setShortcut:a3];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = KSEditUserWordController;
  v5 = [(KSEditUserWordController *)&v7 tableView:a3 cellForRowAtIndexPath:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() wantsToDelegate:{objc_msgSend(objc_msgSend(v5, "specifier"), "identifier")}] && objc_msgSend(objc_msgSend(v5, "textField"), "delegate") != self)
  {
    objc_setAssociatedObject([v5 textField], "kTextFieldOriginalDelegate", objc_msgSend(objc_msgSend(v5, "textField"), "delegate"), 0);
    [objc_msgSend(v5 "textField")];
  }

  return v5;
}

+ (BOOL)wantsToDelegate:(id)a3
{
  v4 = [a1 propertyTitles];

  return [v4 containsObject:a3];
}

- (id)originalDelegateForTextField:(id)a3
{
  result = objc_getAssociatedObject(a3, "kTextFieldOriginalDelegate");
  if (!result)
  {
    result = [a3 delegate];
  }

  if (result == self)
  {
    return 0;
  }

  return result;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSEditUserWordController;
  [(KSEditUserWordController *)&v4 viewDidLoad];
  [-[KSEditUserWordController navigationItem](self "navigationItem")];
  [objc_msgSend(-[KSEditUserWordController navigationItem](self "navigationItem")];
  [-[KSEditUserWordController navigationItem](self "navigationItem")];
  v3 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionHeaderHeight:0.0];
  [*(&self->super.super.super.super.super.isa + v3) setEstimatedSectionFooterHeight:0.0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  result = *(&self->super.super.super.super.super.isa + v3);
  if (!result)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    if (![(NSString *)[(KSEditUserWordController *)self footerTitle] length])
    {
      -[KSEditUserWordController setFooterTitle:](self, "setFooterTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"USER_WORD_EXPLANATORY_TEXT", &stru_28679E3A8, @"Keyboard"}]);
    }

    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = [(KSEditUserWordController *)self footerTitle];
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];
    [v5 addObject:v6];
    [(KSEditUserWordController *)self setGroupSpecifier:v6];
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"WORD" cell:&stru_28679E3A8 edit:{@"Keyboard", self, sel_setTarget_, sel_target, 0, 8, 0}];
    v9 = *MEMORY[0x277D3FFB8];
    [v8 setProperty:@"WORD" forKey:*MEMORY[0x277D3FFB8]];
    [v8 setKeyboardType:0 autoCaps:0 autoCorrection:1];
    [v5 addObject:v8];
    if ([(NSString *)[(KSEditUserWordController *)self target] isEqualToString:[(KSEditUserWordController *)self shortcut]])
    {
      [(KSEditUserWordController *)self setShortcut:&stru_28679E3A8];
    }

    v10 = [MEMORY[0x277D3FB40] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"SHORTCUT_FIELD_TITLE" cell:&stru_28679E3A8 edit:{@"Keyboard", self, sel_setShortcut_, sel_shortcut, 0, 8, 0}];
    if (([(NSString *)[(KSEditUserWordController *)self target] _containsIdeographicCharacters]& 1) == 0)
    {
      [v10 setPlaceholder:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"OPTIONAL", &stru_28679E3A8, @"Keyboard"}];
    }

    [v10 setProperty:@"SHORTCUT" forKey:v9];
    [v10 setKeyboardType:0 autoCaps:0 autoCorrection:1];
    [v5 addObject:v10];
    result = v5;
    *(&self->super.super.super.super.super.isa + v3) = result;
  }

  return result;
}

- (UITextField)targetTextField
{
  v2 = [(KSEditUserWordController *)self cachedCellForSpecifierID:@"WORD"];

  return [v2 editableTextField];
}

- (UITextField)shortcutTextField
{
  v2 = [(KSEditUserWordController *)self cachedCellForSpecifierID:@"SHORTCUT"];

  return [v2 editableTextField];
}

- (id)validationErrorStringFromError:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  v4 = off_2797FA1E8[a3 - 1];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v5 localizedStringForKey:v4 value:&stru_28679E3A8 table:@"Keyboard"];
}

- (void)_dismiss
{
  v2 = [(KSEditUserWordController *)self navigationController];

  [v2 popViewControllerAnimated:1];
}

- (void)_unpackTextReplacementError:(id)a3
{
  if ([a3 code] == 11)
  {
    v5 = [a3 userInfo];
    v6 = [objc_msgSend(v5 objectForKeyedSubscript:{*MEMORY[0x277D22AF8]), "firstObject"}];
    v7 = [a3 userInfo];
    v8 = [objc_msgSend(v7 objectForKeyedSubscript:{*MEMORY[0x277D22AE8]), "firstObject"}];
    if (v6)
    {
      v8 = v6;
    }

    else if (!v8)
    {
      return;
    }

    goto LABEL_8;
  }

  v9 = [a3 domain];
  if ([v9 isEqual:*MEMORY[0x277D22AF0]])
  {
    v8 = a3;
LABEL_8:
    v10 = [v8 code];
    goto LABEL_9;
  }

  v10 = -2;
LABEL_9:

  [(KSEditUserWordController *)self _handleValidationWithError:v10];
}

- (void)_handleValidationWithError:(int64_t)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(KSEditUserWordController *)self validationErrorStringFromError:?];
    if ([v4 length])
    {
      v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v4 preferredStyle:1];
      v6 = MEMORY[0x277D750F8];
      v7 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"USER_WORD_BUTTON_OK", &stru_28679E3A8, @"Keyboard"}];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __55__KSEditUserWordController__handleValidationWithError___block_invoke;
      v12[3] = &unk_2797F9EA0;
      v12[4] = v5;
      [v5 addAction:{objc_msgSend(v6, "actionWithTitle:style:handler:", v7, 1, v12)}];
      [(KSEditUserWordController *)self setKeyboardAlertController:v5];
      [objc_msgSend(MEMORY[0x277D75D28] _viewControllerForFullScreenPresentationFromView:{-[KSEditUserWordController view](self, "view")), "presentViewController:animated:completion:", -[KSEditUserWordController keyboardAlertController](self, "keyboardAlertController"), 1, 0}];
    }
  }

  else
  {
    v8 = *MEMORY[0x277D6FC10];
    TIStatisticGetKey();
    [(NSString *)[(UITextField *)[(KSEditUserWordController *)self targetTextField] text] length];
    TIStatisticDistributionPushValue();
    v9 = *MEMORY[0x277D6FC18];
    TIStatisticGetKey();
    [(NSString *)[(UITextField *)[(KSEditUserWordController *)self shortcutTextField] text] length];
    TIStatisticDistributionPushValue();
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = @"shortcut";
    v14[0] = [(KSEditUserWordController *)self shortcut];
    [v10 postNotificationName:@"EditUserWordShortcutDidUpdateNotification" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}];
    [(KSEditUserWordController *)self _dismiss];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)save
{
  v9[1] = *MEMORY[0x277D85DE8];
  [(KSEditUserWordController *)self setTarget:[(UITextField *)[(KSEditUserWordController *)self targetTextField] text]];
  [(KSEditUserWordController *)self setShortcut:[(UITextField *)[(KSEditUserWordController *)self shortcutTextField] text]];
  if ([(KSEditUserWordController *)self oldEntry])
  {
    [(_KSTextReplacementEntry *)[(KSEditUserWordController *)self nextEntry] setPriorValue:[(KSEditUserWordController *)self oldEntry]];
  }

  v3 = [(KSEditUserWordController *)self dictionaryController];
  v9[0] = [(KSEditUserWordController *)self nextEntry];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  if ([(KSEditUserWordController *)self oldEntry])
  {
    v8 = [(KSEditUserWordController *)self oldEntry];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__KSEditUserWordController_save__block_invoke;
  v7[3] = &unk_2797FA1C8;
  v7[4] = self;
  [(KSUserWordsManager *)v3 addEntries:v4 removeEntries:v5 withCompletionHandler:v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ([(KSEditUserWordController *)self targetTextField]== a3)
  {
    v11 = [objc_msgSend(a3 "text")];
    v12 = [v11 _containsIdeographicCharacters];
    v13 = [-[KSEditUserWordController specifiers](self "specifiers")];
    if (v12)
    {
      v14 = @" ";
    }

    else
    {
      v14 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"OPTIONAL", &stru_28679E3A8, @"Keyboard"}];
    }

    [v13 setPlaceholder:v14];
    v15 = [v11 length];
    v16 = [-[KSEditUserWordController navigationItem](self "navigationItem")];
    if (v15)
    {
      [v16 setEnabled:1];
      if (!v12 || [(NSString *)[(KSEditUserWordController *)self shortcut] length])
      {
        goto LABEL_10;
      }

      v16 = [-[KSEditUserWordController navigationItem](self "navigationItem")];
    }

    [v16 setEnabled:0];
LABEL_10:
    [(KSEditUserWordController *)self reloadSpecifier:v13];
  }

  if ([(KSEditUserWordController *)self shortcutTextField]!= a3)
  {
    goto LABEL_17;
  }

  v17 = [objc_msgSend(a3 "text")];
  v18 = [(NSString *)[(KSEditUserWordController *)self target] length];
  v19 = [-[KSEditUserWordController navigationItem](self "navigationItem")];
  if (!v18)
  {
    goto LABEL_16;
  }

  [v19 setEnabled:1];
  if (-[NSString _containsIdeographicCharacters](-[KSEditUserWordController target](self, "target"), "_containsIdeographicCharacters") && ![v17 length])
  {
    v19 = [-[KSEditUserWordController navigationItem](self "navigationItem")];
LABEL_16:
    [v19 setEnabled:0];
  }

LABEL_17:
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v10 textField:a3 shouldChangeCharactersInRange:location replacementString:{length, a5}];
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldBeginEditing:a3];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if (objc_opt_respondsToSelector())
  {

    [v4 textFieldDidBeginEditing:a3];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldEndEditing:a3];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if (objc_opt_respondsToSelector())
  {

    [v4 textFieldDidEndEditing:a3];
  }
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldClear:a3];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldReturn:a3];
}

@end