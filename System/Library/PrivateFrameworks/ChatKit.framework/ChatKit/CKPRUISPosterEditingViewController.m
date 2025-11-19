@interface CKPRUISPosterEditingViewController
- (BOOL)_isGradientPoster;
- (BOOL)_isPhotosPoster;
- (CKPRUISPosterEditingViewController)initWithEditingConfiguration:(id)a3;
- (CKPRUISPosterEditingViewController)initWithExistingConfiguration:(id)a3 context:(id)a4 extensionIdentifier:(id)a5;
- (CKPRUISPosterEditingViewController)initWithExtensionIdentifier:(id)a3 configuration:(id)a4 context:(id)a5;
- (PRUISPosterEditingViewControllerDelegate)delegate;
- (id)_colorButtonImageForColor:(id)a3;
- (id)_fallbackColorsForLook:(id)a3;
- (id)_photosColorPaletteForCurrentLook;
- (id)keyCommands;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelButtonTapped;
- (void)_colorButtonTappedAtIndex:(unint64_t)a3;
- (void)_commonInit;
- (void)_editingLookSelected:(id)a3;
- (void)_lookSelected:(id)a3;
- (void)_selectedColorsChanged:(id)a3 notifyPoster:(BOOL)a4;
- (void)_setButtonTapped;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEditingLooks:(id)a3;
- (void)setLooks:(id)a3;
- (void)setSelectedColors:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKPRUISPosterEditingViewController

- (CKPRUISPosterEditingViewController)initWithEditingConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CKPRUISPosterEditingViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    gotLoadHelper_x8__OBJC_CLASS___PRUISPosterEditingViewController(v6);
    v8 = [objc_alloc(*(v7 + 192)) initWithEditingConfiguration:v4];
    [(CKPRUISPosterEditingViewController *)v5 setEditor:v8];

    v9 = [v4 posterContents];
    v10 = [v9 _path];
    v11 = [v10 serverIdentity];
    v12 = [v11 provider];
    extensionBundleIdentifier = v5->_extensionBundleIdentifier;
    v5->_extensionBundleIdentifier = v12;

    v14 = [(CKPRUISPosterEditingViewController *)v5 editor];
    [v14 setInjectedClientSettingsDelegate:v5];

    [(CKPRUISPosterEditingViewController *)v5 _commonInit];
  }

  return v5;
}

- (CKPRUISPosterEditingViewController)initWithExtensionIdentifier:(id)a3 configuration:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CKPRUISPosterEditingViewController *)self initWithNibName:0 bundle:0];
  if (v11)
  {
    gotLoadHelper_x8__OBJC_CLASS___PRUISPosterEditingViewController(v12);
    v14 = [objc_alloc(*(v13 + 192)) initWithExtensionIdentifier:v8 configuration:v9 context:v10];
    [(CKPRUISPosterEditingViewController *)v11 setEditor:v14];

    v15 = [v8 copy];
    extensionBundleIdentifier = v11->_extensionBundleIdentifier;
    v11->_extensionBundleIdentifier = v15;

    v17 = [(CKPRUISPosterEditingViewController *)v11 editor];
    [v17 setInjectedClientSettingsDelegate:v11];

    [(CKPRUISPosterEditingViewController *)v11 _commonInit];
  }

  return v11;
}

- (CKPRUISPosterEditingViewController)initWithExistingConfiguration:(id)a3 context:(id)a4 extensionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CKPRUISPosterEditingViewController *)self initWithNibName:0 bundle:0];
  if (v11)
  {
    gotLoadHelper_x8__OBJC_CLASS___PRUISPosterEditingViewController(v12);
    v14 = [objc_alloc(*(v13 + 192)) initWithExistingConfiguration:v8 context:v9];
    [(CKPRUISPosterEditingViewController *)v11 setEditor:v14];

    v15 = [v10 copy];
    extensionBundleIdentifier = v11->_extensionBundleIdentifier;
    v11->_extensionBundleIdentifier = v15;

    v17 = [(CKPRUISPosterEditingViewController *)v11 editor];
    [v17 setInjectedClientSettingsDelegate:v11];

    [(CKPRUISPosterEditingViewController *)v11 _commonInit];
  }

  return v11;
}

- (void)_commonInit
{
  v2 = [(CKPRUISPosterEditingViewController *)self editor];
  [v2 setAcceptButtonType:3];
}

- (PRUISPosterEditingViewControllerDelegate)delegate
{
  v2 = [(CKPRUISPosterEditingViewController *)self editor];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CKPRUISPosterEditingViewController *)self editor];
  [v5 setDelegate:v4];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CKPRUISPosterEditingViewController;
  [(CKPRUISPosterEditingViewController *)&v8 viewDidLoad];
  [(CKPRUISPosterEditingViewController *)self setOverrideUserInterfaceStyle:2];
  v3 = [(CKPRUISPosterEditingViewController *)self editor];
  [(CKPRUISPosterEditingViewController *)self addChildViewController:v3];

  v4 = [(CKPRUISPosterEditingViewController *)self view];
  v5 = [(CKPRUISPosterEditingViewController *)self editor];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(CKPRUISPosterEditingViewController *)self editor];
  [v7 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKPRUISPosterEditingViewController;
  [(CKPRUISPosterEditingViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(CKPRUISPosterEditingViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKPRUISPosterEditingViewController *)self editor];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (+[CKUtilities isIphone])
  {
    return 2;
  }

  v4.receiver = self;
  v4.super_class = CKPRUISPosterEditingViewController;
  return [(CKPRUISPosterEditingViewController *)&v4 supportedInterfaceOrientations];
}

- (id)keyCommands
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel__escapePressed_];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)setLooks:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSArray *)self->_looks isEqualToArray:v4])
  {
    v25 = v4;
    v5 = [v4 copy];
    looks = self->_looks;
    self->_looks = v5;

    v7 = [(NSArray *)self->_looks count]< 2;
    val = self;
    v8 = [(CKPRUISPosterEditingViewController *)self looksButton];
    v9 = v8;
    if (v7)
    {
      [v8 removeFromSuperview];

      [(CKPRUISPosterEditingViewController *)val setLooksButton:0];
    }

    else
    {

      if (!v9)
      {
        v10 = [MEMORY[0x1E69DC738] buttonWithType:1];
        [(CKPRUISPosterEditingViewController *)val setLooksButton:v10];

        v11 = [(CKPRUISPosterEditingViewController *)val view];
        v12 = [(CKPRUISPosterEditingViewController *)val looksButton];
        [v11 addSubview:v12];
      }

      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      objc_initWeak(&location, val);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = val->_looks;
      v14 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v14)
      {
        v15 = *v31;
        do
        {
          v16 = 0;
          do
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v30 + 1) + 8 * v16);
            v18 = MEMORY[0x1E69DC628];
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __47__CKPRUISPosterEditingViewController_setLooks___block_invoke;
            v28[3] = &unk_1E72EBF48;
            objc_copyWeak(&v29, &location);
            v28[4] = v17;
            v19 = [v18 actionWithTitle:v17 image:0 identifier:0 handler:v28];
            v20 = [(CKPRUISPosterEditingViewController *)val selectedLook];
            LODWORD(v17) = [v17 isEqualToString:v20];

            if (v17)
            {
              [v19 setState:1];
            }

            [v13 addObject:v19];

            objc_destroyWeak(&v29);
            ++v16;
          }

          while (v14 != v16);
          v14 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v14);
      }

      v21 = [MEMORY[0x1E69DCC60] menuWithChildren:v13];
      v22 = [(CKPRUISPosterEditingViewController *)val looksButton];
      [v22 setMenu:v21];

      v23 = [(CKPRUISPosterEditingViewController *)val looksButton];
      [v23 setShowsMenuAsPrimaryAction:1];

      v24 = [(CKPRUISPosterEditingViewController *)val looksButton];
      [v24 setChangesSelectionAsPrimaryAction:1];

      objc_destroyWeak(&location);
    }

    v4 = v25;
  }
}

void __47__CKPRUISPosterEditingViewController_setLooks___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _lookSelected:*(a1 + 32)];
}

- (void)setEditingLooks:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSArray *)self->_editingLooks isEqualToArray:v4])
  {
    v33 = v4;
    v5 = [v4 copy];
    editingLooks = self->_editingLooks;
    self->_editingLooks = v5;

    v7 = [(NSArray *)self->_editingLooks count]< 2;
    v8 = [(CKPRUISPosterEditingViewController *)self looksButton];
    v9 = v8;
    if (v7)
    {
      [v8 removeFromSuperview];

      [(CKPRUISPosterEditingViewController *)self setLooksButton:0];
    }

    else
    {

      if (!v9)
      {
        v10 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
        v11 = [MEMORY[0x1E69DC6E8] clearConfiguration];
        v12 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
        [v11 setBackgroundColor:v12];

        [v10 setBackground:v11];
        v13 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v10 primaryAction:0];
        v14 = [MEMORY[0x1E69DC738] buttonWithType:1];
        [(CKPRUISPosterEditingViewController *)self setLooksButton:v14];

        [(CKPRUISPosterEditingViewController *)self setLooksButtonBackground:v13];
        v15 = [(CKPRUISPosterEditingViewController *)self looksButton];
        [v15 addSubview:v13];

        v16 = [(CKPRUISPosterEditingViewController *)self looksButton];
        [v16 setClipsToBounds:1];

        v17 = [(CKPRUISPosterEditingViewController *)self view];
        v18 = [(CKPRUISPosterEditingViewController *)self looksButton];
        [v17 addSubview:v18];
      }

      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      objc_initWeak(&location, self);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = self->_editingLooks;
      v19 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v19)
      {
        v20 = *v39;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v39 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v38 + 1) + 8 * i);
            v23 = MEMORY[0x1E69DC628];
            v24 = [v22 displayName];
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = __54__CKPRUISPosterEditingViewController_setEditingLooks___block_invoke;
            v36[3] = &unk_1E72EBF48;
            objc_copyWeak(&v37, &location);
            v36[4] = v22;
            v25 = [v23 actionWithTitle:v24 image:0 identifier:0 handler:v36];

            v26 = [(CKPRUISPosterEditingViewController *)self selectedEditingLook];
            LODWORD(v22) = [v22 isEqual:v26];

            if (v22)
            {
              [v25 setState:1];
            }

            [v35 addObject:v25];

            objc_destroyWeak(&v37);
          }

          v19 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v19);
      }

      v27 = [MEMORY[0x1E69DCC60] menuWithChildren:v35];
      v28 = [(CKPRUISPosterEditingViewController *)self looksButton];
      [v28 setMenu:v27];

      v29 = [(CKPRUISPosterEditingViewController *)self looksButton];
      [v29 setShowsMenuAsPrimaryAction:1];

      v30 = [(CKPRUISPosterEditingViewController *)self looksButton];
      [v30 setChangesSelectionAsPrimaryAction:1];

      v31 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
      v32 = [(CKPRUISPosterEditingViewController *)self looksButton];
      [v32 setTintColor:v31];

      objc_destroyWeak(&location);
    }

    v4 = v33;
  }
}

void __54__CKPRUISPosterEditingViewController_setEditingLooks___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _editingLookSelected:*(a1 + 32)];
}

- (void)setSelectedColors:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSArray *)self->_selectedColors isEqualToArray:v4])
  {
    v20 = v4;
    v5 = [v4 copy];
    selectedColors = self->_selectedColors;
    self->_selectedColors = v5;

    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v30 = 0u;
    v7 = [(CKPRUISPosterEditingViewController *)self colorButtons];
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = *v31;
      do
      {
        v10 = 0;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v30 + 1) + 8 * v10++) removeFromSuperview];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    [(CKPRUISPosterEditingViewController *)self setColorButtons:0];
    v4 = v20;
    if ([(NSArray *)self->_selectedColors count])
    {
      v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_selectedColors, "count")}];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = self->_selectedColors;
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v11)
      {
        v12 = 0;
        v13 = *v27;
        do
        {
          v14 = 0;
          do
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = [(CKPRUISPosterEditingViewController *)self _colorButtonImageForColor:*(*(&v26 + 1) + 8 * v14)];
            objc_initWeak(&location, self);
            v16 = MEMORY[0x1E69DC628];
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __56__CKPRUISPosterEditingViewController_setSelectedColors___block_invoke;
            v23[3] = &unk_1E72F49B0;
            objc_copyWeak(v24, &location);
            v24[1] = v12;
            v17 = [v16 actionWithHandler:v23];
            v18 = [MEMORY[0x1E69DC738] buttonWithType:0 primaryAction:v17];
            [v18 setImage:v15 forState:0];
            v19 = [(CKPRUISPosterEditingViewController *)self view];
            [v19 addSubview:v18];

            [v22 addObject:v18];
            objc_destroyWeak(v24);
            objc_destroyWeak(&location);

            ++v12;
            ++v14;
          }

          while (v11 != v14);
          v11 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v11);
      }

      [(CKPRUISPosterEditingViewController *)self setColorButtons:v22];
      v4 = v20;
    }
  }
}

void __56__CKPRUISPosterEditingViewController_setSelectedColors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _colorButtonTappedAtIndex:*(a1 + 40)];
}

- (void)_setButtonTapped
{
  gotLoadHelper_x8__OBJC_CLASS___PRInjectedEditingSettings(v2);
  v6 = [objc_alloc(*(v4 + 696)) initWithState:2];
  v5 = [(CKPRUISPosterEditingViewController *)self editor];
  [v5 setInjectedEditingSettings:v6];
}

- (void)_cancelButtonTapped
{
  gotLoadHelper_x8__OBJC_CLASS___PRInjectedEditingSettings(v2);
  v6 = [objc_alloc(*(v4 + 696)) initWithState:1];
  v5 = [(CKPRUISPosterEditingViewController *)self editor];
  [v5 setInjectedEditingSettings:v6];
}

- (void)_lookSelected:(id)a3
{
  gotLoadHelper_x8__OBJC_CLASS___PRInjectedEditingSettings(v3);
  v6 = *(v5 + 696);
  v8 = v7;
  v14 = [[v6 alloc] initWithState:0];
  [v14 setCurrentLook:v8];
  v9 = [(CKPRUISPosterEditingViewController *)self editor];
  [v9 setInjectedEditingSettings:v14];

  [(CKPRUISPosterEditingViewController *)self setSelectedLook:v8];
  v10 = [(CKPRUISPosterEditingViewController *)self selectedColors];
  v11 = [v10 count];

  if (!v11)
  {
    v12 = [(CKPRUISPosterEditingViewController *)self selectedLook];
    v13 = [(CKPRUISPosterEditingViewController *)self _fallbackColorsForLook:v12];
    [(CKPRUISPosterEditingViewController *)self setSelectedColors:v13];
  }
}

- (void)_editingLookSelected:(id)a3
{
  gotLoadHelper_x8__OBJC_CLASS___PRInjectedEditingSettings(v3);
  v6 = *(v5 + 696);
  v8 = v7;
  v10 = [[v6 alloc] initWithState:0];
  [v10 setCurrentEditingLook:v8];
  [(CKPRUISPosterEditingViewController *)self setSelectedEditingLook:v8];

  v9 = [(CKPRUISPosterEditingViewController *)self editor];
  [v9 setInjectedEditingSettings:v10];
}

- (void)_selectedColorsChanged:(id)a3 notifyPoster:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (v4)
  {
    gotLoadHelper_x8__OBJC_CLASS___PRInjectedEditingSettings(v6);
    v8 = [objc_alloc(*(v7 + 696)) initWithState:0];
    if (objc_opt_respondsToSelector())
    {
      [v8 setSelectedColors:v10];
    }

    v9 = [(CKPRUISPosterEditingViewController *)self editor];
    [v9 setInjectedEditingSettings:v8];
  }

  [(CKPRUISPosterEditingViewController *)self setSelectedColors:v10];
}

- (void)_colorButtonTappedAtIndex:(unint64_t)a3
{
  v41 = [(CKPRUISPosterEditingViewController *)self selectedColors];
  if ([v41 count] <= a3)
  {
  }

  else
  {
    v5 = [(CKPRUISPosterEditingViewController *)self colorButtons];
    v6 = [v5 count];

    if (v6 > a3)
    {
      v7 = [(CKPRUISPosterEditingViewController *)self _isPhotosPoster];
      v8 = [(CKPRUISPosterEditingViewController *)self selectedColors];
      v9 = [v8 objectAtIndex:a3];

      v10 = [(CKPRUISPosterEditingViewController *)self colorButtons];
      v11 = [v10 objectAtIndex:a3];

      gotLoadHelper_x8__OBJC_CLASS___PREditorColorPickerConfiguration(v12);
      v14 = objc_alloc_init(*(v13 + 672));
      gotLoadHelper_x8__OBJC_CLASS___PRPosterColor(v15);
      v17 = [objc_alloc(*(v16 + 728)) initWithColor:v9];
      [v14 setSelectedColor:v17];

      [v14 setColorPickerSourceItem:v11];
      if (v7)
      {
        [v14 setColorWellDisplayMode:0];
        v19 = [(CKPRUISPosterEditingViewController *)self _photosColorPaletteForCurrentLook];
        [v14 setColorPalette:v19];

        [v14 setShowsSlider:0];
      }

      gotLoadHelper_x8__OBJC_CLASS___PREditingFontAndColorPickerViewController(v18);
      v21 = objc_alloc(*(v20 + 640));
      Helper_x8__PRPosterRoleBackdrop = gotLoadHelper_x8__PRPosterRoleBackdrop(v22);
      v26 = [v25 initWithComponents:4 role:**(v24 + 944) titleString:{0, Helper_x8__PRPosterRoleBackdrop}];
      [v26 setColorPickerConfiguration:v14];
      objc_initWeak(&location, self);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __64__CKPRUISPosterEditingViewController__colorButtonTappedAtIndex___block_invoke;
      v42[3] = &unk_1E72F49D8;
      objc_copyWeak(v43, &location);
      v43[1] = a3;
      [v26 setChangeHandler:v42];
      [v26 setDelegate:self];
      v27 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v26];
      v28 = CKFrameworkBundle();
      if (v7)
      {
        [v28 localizedStringForKey:@"STYLE_COLOR" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        [v28 localizedStringForKey:@"BACKGROUND_COLOR" value:&stru_1F04268F8 table:@"ChatKit"];
      }
      v29 = ;
      [v26 setTitle:v29];

      [v27 setModalPresentationStyle:7];
      v30 = [v27 popoverPresentationController];
      [v30 setSourceView:v11];

      [v11 bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = [v27 popoverPresentationController];
      [v39 setSourceRect:{v32, v34, v36, v38}];

      v40 = [v27 popoverPresentationController];
      [v40 setDelegate:self];

      [(CKPRUISPosterEditingViewController *)self setColorPickerNavigationController:v27];
      [(CKPRUISPosterEditingViewController *)self presentViewController:v27 animated:1 completion:0];

      objc_destroyWeak(v43);
      objc_destroyWeak(&location);
    }
  }
}

void __64__CKPRUISPosterEditingViewController__colorButtonTappedAtIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a9)
  {
    v10 = [a9 color];
    v16 = [v10 color];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = [WeakRetained selectedColors];
    v13 = [v12 mutableCopy];

    [v13 replaceObjectAtIndex:*(a1 + 40) withObject:v16];
    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v13 copy];
    [v14 _selectedColorsChanged:v15 notifyPoster:1];
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [a3 presentedViewController];
  v5 = [(CKPRUISPosterEditingViewController *)self colorPickerNavigationController];

  if (v4 == v5)
  {
    v6 = [(CKPRUISPosterEditingViewController *)self selectedColors];
    [(CKPRUISPosterEditingViewController *)self _selectedColorsChanged:v6 notifyPoster:1];

    [(CKPRUISPosterEditingViewController *)self setColorPickerNavigationController:0];
  }
}

- (id)_colorButtonImageForColor:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{35.0, 35.0}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CKPRUISPosterEditingViewController__colorButtonImageForColor___block_invoke;
  v8[3] = &unk_1E72F38B0;
  v9 = v3;
  v10 = xmmword_190DD0EE0;
  v11 = 0x403D000000000000;
  v5 = v3;
  v6 = [v4 imageWithActions:v8];

  return v6;
}

void __64__CKPRUISPosterEditingViewController__colorButtonImageForColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetFillColorWithColor(v3, [*(a1 + 32) CGColor]);
  CGContextSetLineWidth(v3, *(a1 + 40));
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  v6 = [v4 resolvedColorForTraitCollection:v5];
  v7 = [v6 CGColor];

  CGContextSetStrokeColorWithColor(v3, v7);
  v9.origin.x = *(a1 + 40);
  v9.size.width = *(a1 + 48);
  v9.size.height = *(a1 + 56);
  v9.origin.y = v9.origin.x;
  CGContextAddEllipseInRect(v3, v9);

  CGContextDrawPath(v3, kCGPathFillStroke);
}

- (id)_fallbackColorsForLook:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69A60F0] sharedInstance];
  v5 = [v4 isInternalInstall];

  if (v5)
  {
    if ([(CKPRUISPosterEditingViewController *)self _isGradientPoster])
    {
      v6 = [MEMORY[0x1E69DC888] redColor];
      v16[0] = v6;
      v7 = [MEMORY[0x1E69DC888] blueColor];
      v16[1] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
LABEL_9:

      goto LABEL_11;
    }

    if ([(CKPRUISPosterEditingViewController *)self _isPhotosPoster])
    {
      v9 = [(CKPRUISPosterEditingViewController *)self selectedLook];
      if ([v9 containsString:@"Duotone"])
      {

LABEL_8:
        v6 = [(CKPRUISPosterEditingViewController *)self _photosColorPaletteForCurrentLook];
        v12 = [v6 colors];
        v7 = [v12 firstObject];

        v13 = [v7 color];
        v15 = v13;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];

        goto LABEL_9;
      }

      v10 = [(CKPRUISPosterEditingViewController *)self selectedLook];
      v11 = [v10 containsString:@"Color"];

      if (v11)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)_isGradientPoster
{
  v2 = [(CKPRUISPosterEditingViewController *)self extensionBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.transcriptBackgroundPoster.GradientExtension"];

  return v3;
}

- (BOOL)_isPhotosPoster
{
  v2 = [(CKPRUISPosterEditingViewController *)self extensionBundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];

  return v3;
}

- (id)_photosColorPaletteForCurrentLook
{
  v31 = *MEMORY[0x1E69E9840];
  if (![(CKPRUISPosterEditingViewController *)self _isPhotosPoster])
  {
    v7 = 0;
    goto LABEL_18;
  }

  v4 = [(CKPRUISPosterEditingViewController *)self selectedEditingLook];
  v5 = [v4 identifier];

  if ([v5 isEqualToString:@"ColorWashDuotone"])
  {
    v6 = [MEMORY[0x1E69BDE98] colorWashDuotonePalette];
  }

  else
  {
    if (![v5 isEqualToString:@"ColorWashSingle"])
    {
      goto LABEL_16;
    }

    v6 = [MEMORY[0x1E69BDE98] colorWashSinglePalette];
  }

  v8 = v6;
  if (v6)
  {
    v25 = v5;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v8 primaryColors];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v27;
      gotLoadHelper_x28__OBJC_CLASS___PRPosterColor(v12);
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          v17 = objc_alloc(*(v2 + 728));
          v18 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v16, "CGColor")}];
          v19 = [v17 initWithColor:v18];

          [v9 addObject:v19];
        }

        v13 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v13);
    }

    gotLoadHelper_x8__OBJC_CLASS___PREditorColorPalette(v20);
    v22 = objc_alloc(*(v21 + 664));
    v23 = [v9 copy];
    v7 = [v22 initWithColors:v23 localizedName:0 showsColorWell:0];

    v5 = v25;
    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
LABEL_17:

LABEL_18:

  return v7;
}

@end