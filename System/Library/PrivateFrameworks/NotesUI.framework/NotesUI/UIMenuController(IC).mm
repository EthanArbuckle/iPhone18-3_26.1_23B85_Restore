@interface UIMenuController(IC)
- (void)ic_addMenuItemsIfNecessary:()IC;
@end

@implementation UIMenuController(IC)

- (void)ic_addMenuItemsIfNecessary:()IC
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 menuItems];
  v6 = v5;
  if (!v5)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v7 = [v5 mutableCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __51__UIMenuController_IC__ic_addMenuItemsIfNecessary___block_invoke;
        v14[3] = &unk_1E846D448;
        v14[4] = v13;
        if (([v7 ic_containsObjectPassingTest:v14] & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (!v7)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((updatedMenuItems) != nil)" functionName:"-[UIMenuController(IC) ic_addMenuItemsIfNecessary:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "updatedMenuItems"}];
  }

  [a1 setMenuItems:v7];
}

@end