@interface KSEditUserWordController
+ (BOOL)wantsToDelegate:(id)delegate;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (KSEditUserWordController)initWithUserWord:(id)word;
- (NSString)shortcut;
- (NSString)target;
- (UITextField)shortcutTextField;
- (UITextField)targetTextField;
- (id)originalDelegateForTextField:(id)field;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)validationErrorStringFromError:(int64_t)error;
- (void)_dismiss;
- (void)_handleValidationWithError:(int64_t)error;
- (void)_unpackTextReplacementError:(id)error;
- (void)dealloc;
- (void)save;
- (void)setShortcut:(id)shortcut;
- (void)setTarget:(id)target;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLoad;
@end

@implementation KSEditUserWordController

- (KSEditUserWordController)initWithUserWord:(id)word
{
  v7.receiver = self;
  v7.super_class = KSEditUserWordController;
  v4 = [(KSEditUserWordController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(KSEditUserWordController *)v4 setOldEntry:word];
    if (!word)
    {
      word = objc_alloc_init(MEMORY[0x277D22AE0]);
    }

    [(KSEditUserWordController *)v5 setNextEntry:word];
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
  nextEntry = [(KSEditUserWordController *)self nextEntry];

  return [(_KSTextReplacementEntry *)nextEntry phrase];
}

- (void)setTarget:(id)target
{
  nextEntry = [(KSEditUserWordController *)self nextEntry];

  [(_KSTextReplacementEntry *)nextEntry setPhrase:target];
}

- (NSString)shortcut
{
  nextEntry = [(KSEditUserWordController *)self nextEntry];

  return [(_KSTextReplacementEntry *)nextEntry shortcut];
}

- (void)setShortcut:(id)shortcut
{
  nextEntry = [(KSEditUserWordController *)self nextEntry];

  [(_KSTextReplacementEntry *)nextEntry setShortcut:shortcut];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = KSEditUserWordController;
  v5 = [(KSEditUserWordController *)&v7 tableView:view cellForRowAtIndexPath:path];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() wantsToDelegate:{objc_msgSend(objc_msgSend(v5, "specifier"), "identifier")}] && objc_msgSend(objc_msgSend(v5, "textField"), "delegate") != self)
  {
    objc_setAssociatedObject([v5 textField], "kTextFieldOriginalDelegate", objc_msgSend(objc_msgSend(v5, "textField"), "delegate"), 0);
    [objc_msgSend(v5 "textField")];
  }

  return v5;
}

+ (BOOL)wantsToDelegate:(id)delegate
{
  propertyTitles = [self propertyTitles];

  return [propertyTitles containsObject:delegate];
}

- (id)originalDelegateForTextField:(id)field
{
  result = objc_getAssociatedObject(field, "kTextFieldOriginalDelegate");
  if (!result)
  {
    result = [field delegate];
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
    array = [MEMORY[0x277CBEB18] array];
    if (![(NSString *)[(KSEditUserWordController *)self footerTitle] length])
    {
      -[KSEditUserWordController setFooterTitle:](self, "setFooterTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"USER_WORD_EXPLANATORY_TEXT", &stru_28679E3A8, @"Keyboard"}]);
    }

    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    footerTitle = [(KSEditUserWordController *)self footerTitle];
    [emptyGroupSpecifier setProperty:footerTitle forKey:*MEMORY[0x277D3FF88]];
    [array addObject:emptyGroupSpecifier];
    [(KSEditUserWordController *)self setGroupSpecifier:emptyGroupSpecifier];
    v8 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] target:"bundleForClass:" set:objc_opt_class()) get:"localizedStringForKey:value:table:" detail:@"WORD" cell:&stru_28679E3A8 edit:{@"Keyboard", self, sel_setTarget_, sel_target, 0, 8, 0}];
    v9 = *MEMORY[0x277D3FFB8];
    [v8 setProperty:@"WORD" forKey:*MEMORY[0x277D3FFB8]];
    [v8 setKeyboardType:0 autoCaps:0 autoCorrection:1];
    [array addObject:v8];
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
    [array addObject:v10];
    result = array;
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

- (id)validationErrorStringFromError:(int64_t)error
{
  if ((error - 1) > 8)
  {
    return 0;
  }

  v4 = off_2797FA1E8[error - 1];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return [v5 localizedStringForKey:v4 value:&stru_28679E3A8 table:@"Keyboard"];
}

- (void)_dismiss
{
  navigationController = [(KSEditUserWordController *)self navigationController];

  [navigationController popViewControllerAnimated:1];
}

- (void)_unpackTextReplacementError:(id)error
{
  if ([error code] == 11)
  {
    userInfo = [error userInfo];
    v6 = [objc_msgSend(userInfo objectForKeyedSubscript:{*MEMORY[0x277D22AF8]), "firstObject"}];
    userInfo2 = [error userInfo];
    errorCopy = [objc_msgSend(userInfo2 objectForKeyedSubscript:{*MEMORY[0x277D22AE8]), "firstObject"}];
    if (v6)
    {
      errorCopy = v6;
    }

    else if (!errorCopy)
    {
      return;
    }

    goto LABEL_8;
  }

  domain = [error domain];
  if ([domain isEqual:*MEMORY[0x277D22AF0]])
  {
    errorCopy = error;
LABEL_8:
    code = [errorCopy code];
    goto LABEL_9;
  }

  code = -2;
LABEL_9:

  [(KSEditUserWordController *)self _handleValidationWithError:code];
}

- (void)_handleValidationWithError:(int64_t)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (error)
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = @"shortcut";
    v14[0] = [(KSEditUserWordController *)self shortcut];
    [defaultCenter postNotificationName:@"EditUserWordShortcutDidUpdateNotification" object:self userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}];
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

  dictionaryController = [(KSEditUserWordController *)self dictionaryController];
  v9[0] = [(KSEditUserWordController *)self nextEntry];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  if ([(KSEditUserWordController *)self oldEntry])
  {
    oldEntry = [(KSEditUserWordController *)self oldEntry];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&oldEntry count:1];
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
  [(KSUserWordsManager *)dictionaryController addEntries:v4 removeEntries:v5 withCompletionHandler:v7];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v10 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ([(KSEditUserWordController *)self targetTextField]== field)
  {
    v11 = [objc_msgSend(field "text")];
    _containsIdeographicCharacters = [v11 _containsIdeographicCharacters];
    v13 = [-[KSEditUserWordController specifiers](self "specifiers")];
    if (_containsIdeographicCharacters)
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
      if (!_containsIdeographicCharacters || [(NSString *)[(KSEditUserWordController *)self shortcut] length])
      {
        goto LABEL_10;
      }

      v16 = [-[KSEditUserWordController navigationItem](self "navigationItem")];
    }

    [v16 setEnabled:0];
LABEL_10:
    [(KSEditUserWordController *)self reloadSpecifier:v13];
  }

  if ([(KSEditUserWordController *)self shortcutTextField]!= field)
  {
    goto LABEL_17;
  }

  v17 = [objc_msgSend(field "text")];
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

  return [v10 textField:field shouldChangeCharactersInRange:location replacementString:{length, string}];
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldBeginEditing:editing];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if (objc_opt_respondsToSelector())
  {

    [v4 textFieldDidBeginEditing:editing];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldEndEditing:editing];
}

- (void)textFieldDidEndEditing:(id)editing
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if (objc_opt_respondsToSelector())
  {

    [v4 textFieldDidEndEditing:editing];
  }
}

- (BOOL)textFieldShouldClear:(id)clear
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldClear:clear];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v4 = [(KSEditUserWordController *)self originalDelegateForTextField:?];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 textFieldShouldReturn:return];
}

@end