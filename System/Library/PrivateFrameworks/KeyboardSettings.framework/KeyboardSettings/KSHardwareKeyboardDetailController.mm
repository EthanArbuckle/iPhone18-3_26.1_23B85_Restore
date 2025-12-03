@interface KSHardwareKeyboardDetailController
- (NSString)inputMode;
- (UIKeyboardInputMode)uiKeyboardinputMode;
- (id)newSpecifiers;
- (id)specifiers;
- (void)dealloc;
- (void)setHardwareLayout:(id)layout;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation KSHardwareKeyboardDetailController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSHardwareKeyboardDetailController;
  [(KSHardwareKeyboardDetailController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = KSHardwareKeyboardDetailController;
  [(KSHardwareKeyboardDetailController *)&v4 viewDidLoad];
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
    result = [(KSHardwareKeyboardDetailController *)self newSpecifiers];
    *(&self->super.super.super.super.super.isa + v3) = result;
  }

  return result;
}

- (id)newSpecifiers
{
  v36 = *MEMORY[0x277D85DE8];
  inputMode = [(KSHardwareKeyboardDetailController *)self inputMode];
  obj = UIKeyboardGetSupportedHardwareKeyboardsForInputMode();
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(obj, "count") + 1}];
  v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:0];
  [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  v25 = v4;
  v23 = v5;
  [v4 addObject:v5];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = +[KSKeyboardListController inputModes];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v31 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v30 + 1) + 8 * v10);
      if ([(NSString *)inputMode isEqualToString:TIInputModeGetNormalizedIdentifier()])
      {
        v12 = [TIInputModeGetComponentsFromIdentifier() objectForKey:@"hw"];
        if ([v12 length])
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    v16 = *MEMORY[0x277D3FFB8];
    v17 = *MEMORY[0x277D40090];
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v26 + 1) + 8 * v18);
        v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:+[KSKeyboardListController displayNameForHardwareLayout:inputMode:](KSKeyboardListController target:"displayNameForHardwareLayout:inputMode:" set:v19 get:-[KSHardwareKeyboardDetailController uiKeyboardinputMode](self detail:"uiKeyboardinputMode")) cell:self edit:{0, 0, 0, 3, 0}];
        [v20 setProperty:v19 forKey:v16];
        if ([v12 isEqualToString:v19])
        {
          [v23 setProperty:v20 forKey:v17];
        }

        [v25 addObject:v20];
        ++v18;
      }

      while (v14 != v18);
      v14 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = KSHardwareKeyboardDetailController;
  [KSHardwareKeyboardDetailController tableView:sel_tableView_didSelectRowAtIndexPath_ didSelectRowAtIndexPath:?];
  v7 = [view cellForRowAtIndexPath:path];
  if (v7)
  {
    specifier = [v7 specifier];
    v9 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
    if ([v9 length])
    {
      [(KSHardwareKeyboardDetailController *)self setHardwareLayout:v9];
    }
  }
}

- (NSString)inputMode
{
  result = self->_inputMode;
  if (!result)
  {
    specifier = [(KSHardwareKeyboardDetailController *)self specifier];
    result = [objc_msgSend(specifier propertyForKey:{*MEMORY[0x277D3FFB8]), "copy"}];
    self->_inputMode = result;
  }

  return result;
}

- (UIKeyboardInputMode)uiKeyboardinputMode
{
  result = self->_uiKeyboardinputMode;
  if (!result)
  {
    v4 = MEMORY[0x277D75680];
    specifier = [(KSHardwareKeyboardDetailController *)self specifier];
    result = [objc_msgSend(v4 keyboardInputModeWithIdentifier:{objc_msgSend(specifier, "propertyForKey:", *MEMORY[0x277D3FFB8])), "copy"}];
    self->_uiKeyboardinputMode = result;
  }

  return result;
}

- (void)setHardwareLayout:(id)layout
{
  v5 = [+[KSKeyboardListController inputModes](KSKeyboardListController "inputModes")];
  if (![v5 count])
  {
    [KSHardwareKeyboardDetailController setHardwareLayout:];
  }

  if ([v5 count])
  {
    v6 = [v5 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v13 = v6 - 1;
LABEL_5:
      v10 = v9;
      do
      {
        [v5 objectAtIndex:v10];
        if ([(NSString *)[(KSHardwareKeyboardDetailController *)self inputMode] isEqualToString:TIInputModeGetNormalizedIdentifier()])
        {
          v11 = [TIInputModeGetComponentsFromIdentifier() mutableCopy];
          v12 = [v11 objectForKey:@"hw"];
          if (!v12 || ![v12 isEqualToString:layout])
          {
            [v11 setObject:layout forKey:@"hw"];
            [v5 replaceObjectAtIndex:v10 withObject:UIKeyboardInputModeGetIdentifierFromComponents()];
            v9 = v10 + 1;
            v8 = 1;
            if (v13 != v10)
            {
              goto LABEL_5;
            }

            goto LABEL_14;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      if ((v8 & 1) == 0)
      {
        return;
      }

LABEL_14:

      [KSKeyboardListController setInputModes:v5];
    }
  }
}

@end