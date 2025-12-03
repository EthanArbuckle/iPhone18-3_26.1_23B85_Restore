@interface TIHardwareKeyboardModifierRemapDetailController
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation TIHardwareKeyboardModifierRemapDetailController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    newSpecifiers = [(TIHardwareKeyboardModifierRemapDetailController *)self newSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = newSpecifiers;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)newSpecifiers
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  parentController = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  currentKeyboard = [parentController currentKeyboard];

  selfCopy = self;
  specifier = [(TIHardwareKeyboardModifierRemapDetailController *)self specifier];
  v7 = *MEMORY[0x277D3FFB8];
  v8 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];

  v9 = [v8 isEqualToString:@"Function"];
  v10 = v9;
  if (v9)
  {
    v11 = showGlobeKeyInsteadOfFunctionKey(currentKeyboard);
  }

  else
  {
    v11 = 0;
  }

  v31 = v8;
  v30 = attributedTitleForKey(v8, currentKeyboard, @" key", 0);
  string = [v30 string];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CHOOSE_KEY_ACTION" value:&stru_28679E3A8 table:@"Keyboard"];

  v29 = string;
  v15 = [v14 stringByReplacingOccurrencesOfString:@"%@" withString:string];

  v28 = v15;
  v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithName:v15];
  [v16 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
  v27 = v16;
  [v32 addObject:v16];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = _dstKeys;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      v21 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * v21);
        v23 = v22;
        if (((v10 & 1) != 0 || ([v22 isEqualToString:@"Function"] & 1) == 0) && (!v11 || (objc_msgSend(v23, "isEqualToString:", @"Globe") & 1) == 0))
        {
          v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
          [v24 setProperty:v23 forKey:v7];
          [v32 addObject:v24];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v32;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v49.receiver = self;
  v49.super_class = TIHardwareKeyboardModifierRemapDetailController;
  viewCopy = view;
  v8 = [(TIHardwareKeyboardModifierRemapDetailController *)&v49 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  v9 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifierAtIndexPath:pathCopy];
  v10 = *MEMORY[0x277D3FFB8];
  v48 = v9;
  v11 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
  parentController = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  v13 = attributedTitleForKey(v11, [parentController currentKeyboard], 0, 1);

  titleLabel = [v8 titleLabel];
  v47 = v13;
  [titleLabel setAttributedText:v13];

  specifier = [(TIHardwareKeyboardModifierRemapDetailController *)self specifier];
  v16 = [specifier propertyForKey:v10];

  parentController2 = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  v18 = [parentController2 valueForRemappingKey:v16];

  [v8 setChecked:{objc_msgSend(v11, "isEqualToString:", v18)}];
  window = [viewCopy window];
  screen = [window screen];
  [screen scale];
  v22 = v21;

  v23 = fmax(v22, 1.0);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [viewCopy setSeparatorColor:clearColor];

  v25 = [v8 viewWithTag:10086];
  [v8 bounds];
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  if (!v25)
  {
    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v26, v27, v28, v29}];
    [v25 setTag:10086];
    [v25 setAutoresizingMask:10];
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [v25 setBackgroundColor:separatorColor];

    [v8 addSubview:v25];
  }

  v35 = 1.0 / v23;
  v36 = [pathCopy row];
  specifiers = [(TIHardwareKeyboardModifierRemapDetailController *)self specifiers];
  v38 = [specifiers count] - 3;

  if (v36 == v38)
  {
    v35 = v35 * 3.0;
    v31 = v33 - v35;
  }

  else
  {
    v39 = [pathCopy row];
    specifiers2 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifiers];
    v41 = [specifiers2 count] - 2;

    if (v39 >= v41)
    {
      [v25 removeFromSuperview];
      v35 = v33;
    }

    else
    {
      [v8 separatorInset];
      v30 = v30 + v42;
      v32 = v32 - (v42 + v43);
      v31 = v33 - (v44 + v45) - v35;
    }
  }

  [v25 setFrame:{v30, v31, v32, v35}];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v13 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifierAtIndexPath:pathCopy];
  specifier = [(TIHardwareKeyboardModifierRemapDetailController *)self specifier];
  v9 = *MEMORY[0x277D3FFB8];
  v10 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];

  v11 = [v13 propertyForKey:v9];
  parentController = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  [parentController setRemappingFromKey:v10 toValue:v11];

  [(TIHardwareKeyboardModifierRemapDetailController *)self reloadSpecifiers];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end