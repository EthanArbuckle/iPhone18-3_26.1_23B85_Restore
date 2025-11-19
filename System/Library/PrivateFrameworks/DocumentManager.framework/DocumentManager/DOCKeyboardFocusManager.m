@interface DOCKeyboardFocusManager
+ (DOCKeyboardFocusManager)sharedManager;
+ (id)allDirectionalKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4;
+ (id)directionalKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4;
+ (id)selectionKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4;
+ (id)systemProvidedDirectionalKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4;
+ (id)systemProvidedSelectionKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4;
+ (void)_applySystemOverridePriority:(id)a3;
- (BOOL)requestCurrentFocus:(id)a3;
- (BOOL)restoreCurrentlyFocused;
- (DOCKeyboardFocusManager)init;
- (id)adjacentFocusableToFocusable:(id)a3 direction:(int64_t)a4;
- (id)currentlyFocused;
- (void)_printAllRegisteredFocusable;
- (void)currentlyFocused;
- (void)registerKeyboardFocusable:(id)a3;
- (void)unregisterKeyboardFocusable:(id)a3;
@end

@implementation DOCKeyboardFocusManager

+ (DOCKeyboardFocusManager)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__DOCKeyboardFocusManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager__sharedInstance;

  return v2;
}

uint64_t __40__DOCKeyboardFocusManager_sharedManager__block_invoke()
{
  sharedManager__sharedInstance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (DOCKeyboardFocusManager)init
{
  v6.receiver = self;
  v6.super_class = DOCKeyboardFocusManager;
  v2 = [(DOCKeyboardFocusManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    allKeyboardFocusable = v2->_allKeyboardFocusable;
    v2->_allKeyboardFocusable = v3;
  }

  return v2;
}

+ (id)allDirectionalKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [objc_opt_class() directionalKeyCommandsWithAction:a3 prioritize:v4];
  [v6 addObjectsFromArray:v7];

  v8 = [objc_opt_class() selectionKeyCommandsWithAction:a3 prioritize:v4];
  [v6 addObjectsFromArray:v8];

  v9 = [objc_opt_class() systemProvidedSelectionKeyCommandsWithAction:a3 prioritize:v4];
  [v6 addObjectsFromArray:v9];

  v10 = [objc_opt_class() systemProvidedDirectionalKeyCommandsWithAction:a3 prioritize:v4];
  [v6 addObjectsFromArray:v10];

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];

  return v11;
}

+ (id)directionalKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4
{
  v4 = a4;
  v10[2] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x80000 action:a3];
  v10[0] = v6;
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x80000 action:a3];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  if (v4)
  {
    [objc_opt_class() _applySystemOverridePriority:v8];
  }

  return v8;
}

+ (id)systemProvidedDirectionalKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4
{
  v4 = a4;
  v12[4] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0 action:a3];
  v12[0] = v6;
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0 action:a3];
  v12[1] = v7;
  v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0 action:a3];
  v12[2] = v8;
  v9 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0 action:a3];
  v12[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  if (v4)
  {
    [objc_opt_class() _applySystemOverridePriority:v10];
  }

  return v10;
}

+ (id)selectionKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4
{
  v4 = a4;
  v12[4] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:655360 action:a3];
  v12[0] = v6;
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:655360 action:a3];
  v12[1] = v7;
  v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:655360 action:a3];
  v12[2] = v8;
  v9 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:655360 action:a3];
  v12[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  if (v4)
  {
    [objc_opt_class() _applySystemOverridePriority:v10];
  }

  return v10;
}

+ (id)systemProvidedSelectionKeyCommandsWithAction:(SEL)a3 prioritize:(BOOL)a4
{
  v4 = a4;
  v12[4] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x20000 action:a3];
  v12[0] = v6;
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x20000 action:a3];
  v12[1] = v7;
  v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0x20000 action:a3];
  v12[2] = v8;
  v9 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0x20000 action:a3];
  v12[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  if (v4)
  {
    [objc_opt_class() _applySystemOverridePriority:v10];
  }

  return v10;
}

+ (void)_applySystemOverridePriority:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setWantsPriorityOverSystemBehavior:1];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)registerKeyboardFocusable:(id)a3
{
  v4 = a3;
  if (![(NSPointerArray *)self->_allKeyboardFocusable doc_containsPointer:?])
  {
    [(NSPointerArray *)self->_allKeyboardFocusable addPointer:v4];
  }
}

- (void)unregisterKeyboardFocusable:(id)a3
{
  allKeyboardFocusable = self->_allKeyboardFocusable;
  v5 = a3;
  v6 = [(NSPointerArray *)allKeyboardFocusable doc_indexOfPointer:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_allKeyboardFocusable removePointerAtIndex:v6];
    [(NSPointerArray *)self->_allKeyboardFocusable compact];
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentlyFocused);

  if (WeakRetained == v5)
  {

    objc_storeWeak(&self->_currentlyFocused, 0);
  }
}

- (id)currentlyFocused
{
  v3 = MEMORY[0x1E699A478];
  v4 = *MEMORY[0x1E699A478];
  if (!*MEMORY[0x1E699A478])
  {
    DOCInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(DOCKeyboardFocusManager *)self currentlyFocused];
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentlyFocused);

  return WeakRetained;
}

- (BOOL)requestCurrentFocus:(id)a3
{
  v4 = a3;
  v5 = +[DOCKeyboardFocusManager sharedManager];
  v6 = [v5 externalFirstResponderInFlight];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    [(DOCKeyboardFocusManager *)self registerKeyboardFocusable:v4];
    if ([v4 acceptsKeyboardFocus] && objc_msgSend(v4, "becomeKeyboardFocused"))
    {
      objc_storeWeak(&self->_currentlyFocused, v4);
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = MEMORY[0x1E699A478];
    v9 = *MEMORY[0x1E699A478];
    if (!*MEMORY[0x1E699A478])
    {
      DOCInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DOCKeyboardFocusManager *)v7 requestCurrentFocus:v9];
    }
  }

  return v7;
}

- (BOOL)restoreCurrentlyFocused
{
  WeakRetained = objc_loadWeakRetained(&self->_currentlyFocused);

  if (!WeakRetained)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained(&self->_currentlyFocused);
  v5 = [(DOCKeyboardFocusManager *)self requestCurrentFocus:v4];

  return v5;
}

- (id)adjacentFocusableToFocusable:(id)a3 direction:(int64_t)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [v6 absoluteFrame];
  v38 = v8;
  v39 = v7;
  v36 = v10;
  v37 = v9;
  v45[0] = xmmword_1E5812250;
  v45[1] = xmmword_1E5812260;
  v45[2] = xmmword_1E5812270;
  v45[3] = xmmword_1E5812280;
  v11 = 0;
  if ([(NSPointerArray *)self->_allKeyboardFocusable count])
  {
    v12 = 0;
    v14 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
    v15 = 1.79769313e308;
    do
    {
      v16 = [(NSPointerArray *)self->_allKeyboardFocusable pointerAtIndex:v12];
      v17 = v16;
      if (v16 == v6 || ![v16 acceptsKeyboardFocus] || !objc_msgSend(v17, "isInKeyWindow"))
      {
        goto LABEL_14;
      }

      [v17 absoluteFrame];
      v42 = v19;
      v43 = v18;
      v41 = v20;
      v22 = v21;
      v48.origin.x = v39;
      v48.origin.y = v38;
      v48.size.width = v37;
      v48.size.height = v36;
      MidX = CGRectGetMidX(v48);
      v49.origin.x = v39;
      v49.origin.y = v38;
      v49.size.width = v37;
      v49.size.height = v36;
      MidY = CGRectGetMidY(v49);
      v50.origin.x = v43;
      v50.origin.y = v42;
      v50.size.width = v41;
      v50.size.height = v22;
      v23 = CGRectGetMidX(v50);
      v51.origin.x = v43;
      v51.origin.y = v42;
      v51.size.width = v41;
      v51.size.height = v22;
      v24 = CGRectGetMidY(v51);
      v25 = 0;
      v26 = v23 - MidX;
      v27 = v24 - MidY;
      v28 = sqrt((v13 - v27) * (v13 - v27) + (v14 - (v23 - MidX)) * (v14 - (v23 - MidX)));
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      v30 = 2.22507386e-308;
      v31 = v45 + 1;
      do
      {
        v32 = (v27 * *v31 + v26 * *(v31 - 1)) / v28 / sqrt((v13 - *v31) * (v13 - *v31) + (v14 - *(v31 - 1)) * (v14 - *(v31 - 1)));
        if (v32 > v30)
        {
          v29 = v25;
          v30 = v32;
        }

        ++v25;
        v31 += 2;
      }

      while (v25 != 4);
      if (v29 == a4 && v28 < v15)
      {
        v34 = v17;

        v11 = v34;
      }

      else
      {
LABEL_14:
        v28 = v15;
      }

      ++v12;
      v15 = v28;
    }

    while (v12 < [(NSPointerArray *)self->_allKeyboardFocusable count]);
  }

  return v11;
}

- (void)_printAllRegisteredFocusable
{
  if ([(NSPointerArray *)self->_allKeyboardFocusable count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSPointerArray *)self->_allKeyboardFocusable pointerAtIndex:v3];
      [v4 absoluteFrame];
      v5 = NSStringFromCGRect(v6);
      NSLog(&cfstr_FocusableEntit.isa, v4, v5);

      ++v3;
    }

    while (v3 < [(NSPointerArray *)self->_allKeyboardFocusable count]);
  }
}

- (void)currentlyFocused
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v5 = 136315394;
  v6 = "[DOCKeyboardFocusManager currentlyFocused]";
  v7 = 2112;
  v8 = WeakRetained;
  _os_log_error_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_ERROR, "%s: _currentlyFocused: %@", &v5, 0x16u);
}

- (void)requestCurrentFocus:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = @"true";
  }

  else
  {
    v2 = @"false";
  }

  v3 = 136315394;
  v4 = "[DOCKeyboardFocusManager requestCurrentFocus:]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_ERROR, "%s: accepted and became success: %@", &v3, 0x16u);
}

@end