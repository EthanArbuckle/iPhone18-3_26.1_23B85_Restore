@interface TIHardwareKeyboardModifierRemapDetailController
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation TIHardwareKeyboardModifierRemapDetailController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(TIHardwareKeyboardModifierRemapDetailController *)self newSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)newSpecifiers
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  v4 = [v3 currentKeyboard];

  v5 = self;
  v6 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifier];
  v7 = *MEMORY[0x277D3FFB8];
  v8 = [v6 propertyForKey:*MEMORY[0x277D3FFB8]];

  v9 = [v8 isEqualToString:@"Function"];
  v10 = v9;
  if (v9)
  {
    v11 = showGlobeKeyInsteadOfFunctionKey(v4);
  }

  else
  {
    v11 = 0;
  }

  v31 = v8;
  v30 = attributedTitleForKey(v8, v4, @" key", 0);
  v12 = [v30 string];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"CHOOSE_KEY_ACTION" value:&stru_28679E3A8 table:@"Keyboard"];

  v29 = v12;
  v15 = [v14 stringByReplacingOccurrencesOfString:@"%@" withString:v12];

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
          v24 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v5 set:0 get:0 detail:0 cell:3 edit:0];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v49.receiver = self;
  v49.super_class = TIHardwareKeyboardModifierRemapDetailController;
  v7 = a3;
  v8 = [(TIHardwareKeyboardModifierRemapDetailController *)&v49 tableView:v7 cellForRowAtIndexPath:v6];
  v9 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifierAtIndexPath:v6];
  v10 = *MEMORY[0x277D3FFB8];
  v48 = v9;
  v11 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
  v12 = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  v13 = attributedTitleForKey(v11, [v12 currentKeyboard], 0, 1);

  v14 = [v8 titleLabel];
  v47 = v13;
  [v14 setAttributedText:v13];

  v15 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifier];
  v16 = [v15 propertyForKey:v10];

  v17 = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  v18 = [v17 valueForRemappingKey:v16];

  [v8 setChecked:{objc_msgSend(v11, "isEqualToString:", v18)}];
  v19 = [v7 window];
  v20 = [v19 screen];
  [v20 scale];
  v22 = v21;

  v23 = fmax(v22, 1.0);
  v24 = [MEMORY[0x277D75348] clearColor];
  [v7 setSeparatorColor:v24];

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
    v34 = [MEMORY[0x277D75348] separatorColor];
    [v25 setBackgroundColor:v34];

    [v8 addSubview:v25];
  }

  v35 = 1.0 / v23;
  v36 = [v6 row];
  v37 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifiers];
  v38 = [v37 count] - 3;

  if (v36 == v38)
  {
    v35 = v35 * 3.0;
    v31 = v33 - v35;
  }

  else
  {
    v39 = [v6 row];
    v40 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifiers];
    v41 = [v40 count] - 2;

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifierAtIndexPath:v6];
  v8 = [(TIHardwareKeyboardModifierRemapDetailController *)self specifier];
  v9 = *MEMORY[0x277D3FFB8];
  v10 = [v8 propertyForKey:*MEMORY[0x277D3FFB8]];

  v11 = [v13 propertyForKey:v9];
  v12 = [(TIHardwareKeyboardModifierRemapDetailController *)self parentController];
  [v12 setRemappingFromKey:v10 toValue:v11];

  [(TIHardwareKeyboardModifierRemapDetailController *)self reloadSpecifiers];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

@end