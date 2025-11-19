@interface _UIDocumentTargetSelectionController
+ (id)_loadThumbnailForURL:(id)a3 size:(CGSize)a4 scale:(double)a5 wantsBorder:(BOOL *)a6 generatedThumbnail:(BOOL *)a7;
- (_UIDocumentTargetSelectionController)initWithItemsToMove:(id)a3;
- (_UIDocumentTargetSelectionControllerDelegate)delegate;
- (id)initForCopyWithItems:(id)a3;
- (id)initForCrossContainerMoveWithItemsToMove:(id)a3;
- (id)navControllerForPalette;
- (id)pickableTypes;
- (void)_commonInitItems:(id)a3 crossContainer:(BOOL)a4 sourceContainer:(id)a5;
- (void)_setContainerViewController:(id)a3;
- (void)_setIconViewImage:(id)a3 border:(BOOL)a4;
- (void)_setupNavigationItem;
- (void)_setupPalette;
- (void)_updatePalette;
- (void)didSelectItem:(id)a3;
- (void)dismiss:(id)a3;
- (void)setItemsToMove:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _UIDocumentTargetSelectionController

- (void)_commonInitItems:(id)a3 crossContainer:(BOOL)a4 sourceContainer:(id)a5
{
  v6 = a4;
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  [(_UIDocumentTargetSelectionController *)self setEdgesForExtendedLayout:0];
  if (v6)
  {
    v42 = v9;
    v43 = v8;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v54;
      v15 = *MEMORY[0x277CBE918];
      v16 = *MEMORY[0x277CC20C0];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v54 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v53 + 1) + 8 * i);
          v52 = 0;
          [v18 getPromisedItemResourceValue:&v52 forKey:v15 error:{0, v42, v43}];
          v19 = v52;
          v20 = v19;
          if (v13)
          {
            v21 = v13;
          }

          else
          {
            v21 = v19;
          }

          v22 = v21;

          if ([v20 isEqual:v22])
          {
            v13 = v22;
          }

          else
          {
            v13 = v16;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v9 = v42;
    v8 = v43;
    if (v42)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v28 = v10;
      v29 = [v28 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v49;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v49 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [*(*(&v48 + 1) + 8 * j) br_cloudDocsContainer];
          }

          v30 = [v28 countByEnumeratingWithState:&v48 objects:v60 count:16];
        }

        while (v30);
      }
    }

    v33 = [_UIDocumentPickerAllContainersModel alloc];
    v59 = v13;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    v35 = [(_UIDocumentPickerAllContainersModel *)v33 initWithFoldersForPickableTypes:v34 mode:3 sourceContainer:v9];
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = v8;
    v24 = [v23 countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v24)
    {
      v25 = v24;
      v13 = 0;
      v26 = *v45;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v23);
          }

          if (!v13)
          {
            v13 = [*(*(&v44 + 1) + 8 * k) br_containerID];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v44 objects:v58 count:16];
      }

      while (v25);
    }

    else
    {
      v13 = 0;
    }

    v36 = [MEMORY[0x277CFAE20] allContainersByContainerID];
    v34 = [v36 objectForKey:v13];

    v37 = [v34 localizedName];
    containerName = self->_containerName;
    self->_containerName = v37;

    v39 = [_UIDocumentPickerSubfoldersContainerModel alloc];
    v57 = *MEMORY[0x277CC2078];
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    v35 = [(_UIDocumentPickerSubfoldersContainerModel *)v39 initWithPickableTypes:v40 container:v13];
  }

  [(_UIDocumentPickerAllContainersModel *)v35 startMonitoringChanges];
  v41 = [[_UIDocumentPickerContainerViewController alloc] initWithModel:v35];
  [(_UIDocumentPickerContainerViewController *)v41 setExplicitDisplayMode:3];
  [(_UIDocumentTargetSelectionController *)self _setContainerViewController:v41];
  [(_UIDocumentTargetSelectionController *)self setItemsToMove:v8];
}

- (_UIDocumentTargetSelectionController)initWithItemsToMove:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIDocumentTargetSelectionController;
  v5 = [(_UIDocumentTargetSelectionController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(_UIDocumentTargetSelectionController *)v5 _commonInitItems:v4 crossContainer:0 sourceContainer:0];
    v6->_targetSelectionType = 1;
  }

  return v6;
}

- (id)initForCrossContainerMoveWithItemsToMove:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = _UIDocumentTargetSelectionController;
  v5 = [(_UIDocumentTargetSelectionController *)&v25 initWithNibName:0 bundle:0];
  if (v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      v10 = *MEMORY[0x277CBE948];
      v11 = *MEMORY[0x277CBE938];
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          v20 = 0;
          v14 = [v13 getPromisedItemResourceValue:&v20 forKey:v10 error:0];
          v15 = v20;
          v16 = v15;
          if (v14 && ([v15 isEqualToString:v11] & 1) == 0)
          {

            v18 = [v6 firstObject];
            v17 = [v18 br_cloudDocsContainer];
            goto LABEL_13;
          }

          ++v12;
        }

        while (v8 != v12);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
    v18 = v6;
LABEL_13:

    [(_UIDocumentTargetSelectionController *)v5 _commonInitItems:v6 crossContainer:1 sourceContainer:v17];
    v5->_targetSelectionType = 1;
  }

  return v5;
}

- (id)initForCopyWithItems:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIDocumentTargetSelectionController;
  v5 = [(_UIDocumentTargetSelectionController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(_UIDocumentTargetSelectionController *)v5 _commonInitItems:v4 crossContainer:1 sourceContainer:0];
    v6->_targetSelectionType = 2;
  }

  return v6;
}

- (id)navControllerForPalette
{
  containedNavigationController = self->_containedNavigationController;
  if (containedNavigationController)
  {
    v3 = containedNavigationController;
  }

  else
  {
    v3 = [(_UIDocumentTargetSelectionController *)self navigationController];
  }

  return v3;
}

- (void)_setupNavigationItem
{
  v2 = self;
  v19[1] = *MEMORY[0x277D85DE8];
  if (self->_containedNavigationController)
  {
    self = self->_containerViewController;
  }

  v3 = [(_UIDocumentTargetSelectionController *)self navigationItem];
  v4 = [v3 rightBarButtonItems];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_dismiss_];
    v19[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v3 setRightBarButtonItems:v7];
  }

  if (v2->_containerName)
  {
    [v3 setTitle:?];
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v9 = [v8 localizedStringForKey:@"iCloud Drive" value:@"iCloud Drive" table:@"Localizable"];
    [v3 setTitle:v9];
  }

  targetSelectionType = v2->_targetSelectionType;
  switch(targetSelectionType)
  {
    case 2uLL:
      goto LABEL_13;
    case 1uLL:
LABEL_12:
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v13 = [v12 localizedStringForKey:@"Choose a new location to move these items." value:@"Choose a new location to move these items." table:@"Localizable"];
      v14 = [v11 localizedStringWithFormat:v13, -[NSArray count](v2->_itemsToMove, "count")];
      [v3 setPrompt:v14];

LABEL_13:
      v15 = MEMORY[0x277CCACA8];
      v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v17 = [v16 localizedStringForKey:@"Choose a location to add these items." value:@"Choose a location to add these items." table:@"Localizable"];
      v18 = [v15 localizedStringWithFormat:v17, -[NSArray count](v2->_itemsToMove, "count")];
      [v3 setPrompt:v18];

      break;
    case 0uLL:
      [v3 setPrompt:0];
      goto LABEL_12;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  self->_completedInitialDisplay = 1;
  v18.receiver = self;
  v18.super_class = _UIDocumentTargetSelectionController;
  [(_UIDocumentTargetSelectionController *)&v18 viewWillAppear:a3];
  v4 = [(_UIDocumentTargetSelectionController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    p_containedNavigationController = &self->_containedNavigationController;
    containedNavigationController = self->_containedNavigationController;
    self->_containedNavigationController = 0;

    p_containerViewController = &self->_containerViewController;
    v9 = &self->_containerViewController;
  }

  else
  {
    v9 = &self->_containerViewController;
    v10 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_containerViewController];
    p_containerViewController = &self->_containedNavigationController;
    v11 = self->_containedNavigationController;
    self->_containedNavigationController = v10;

    p_containedNavigationController = &self->_containedNavigationController;
  }

  v12 = [*p_containerViewController view];
  v13 = [(_UIDocumentTargetSelectionController *)self view];
  [v13 bounds];
  [v12 setFrame:?];

  [(_UIDocumentTargetSelectionController *)self addChildViewController:*p_containerViewController];
  v14 = [*p_containerViewController view];
  [v14 setAutoresizingMask:18];

  [(_UIDocumentPickerContainerViewController *)*v9 setServiceViewController:self];
  v15 = [(_UIDocumentTargetSelectionController *)self view];
  v16 = [*p_containerViewController view];
  [v15 addSubview:v16];

  [(UINavigationController *)*p_containedNavigationController didMoveToParentViewController:self];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55___UIDocumentTargetSelectionController_viewWillAppear___block_invoke;
  v17[3] = &unk_278DD61B0;
  v17[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v17];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _UIDocumentTargetSelectionController;
  [(_UIDocumentTargetSelectionController *)&v6 viewDidDisappear:a3];
  v4 = [(_UINavigationControllerPalette *)self->_palette navController];
  [v4 detachPalette:self->_palette];

  palette = self->_palette;
  self->_palette = 0;
}

- (void)_setupPalette
{
  v43[7] = *MEMORY[0x277D85DE8];
  palette = self->_palette;
  if (palette)
  {
    v4 = [(_UINavigationControllerPalette *)palette navController];
    [v4 detachPalette:self->_palette];

    v5 = self->_palette;
    self->_palette = 0;
  }

  v6 = [(_UIDocumentTargetSelectionController *)self navControllerForPalette];
  v7 = [v6 view];
  [v7 bounds];
  v42 = v6;
  v9 = [v6 paletteForEdge:2 size:{v8, 72.0}];
  v10 = self->_palette;
  self->_palette = v9;

  [(_UINavigationControllerPalette *)self->_palette setPinningBarShadowIsHidden:1];
  [v6 attachPalette:self->_palette isPinned:1];
  v11 = objc_alloc_init(MEMORY[0x277D755E8]);
  iconView = self->_iconView;
  self->_iconView = v11;

  v13 = [(NSArray *)self->_itemsToMove firstObject];
  v41 = [v13 ui_resolveOnDiskBookmarkAndPromise];

  v14 = [objc_opt_class() _loadDocumentIconForURL:v41 size:{44.0, 44.0}];
  [(_UIDocumentTargetSelectionController *)self _setIconViewImage:v14 border:0];

  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  filesLabel = self->_filesLabel;
  self->_filesLabel = v15;

  [(UIImageView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_filesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_UINavigationControllerPalette *)self->_palette addSubview:self->_iconView];
  [(_UINavigationControllerPalette *)self->_palette addSubview:self->_filesLabel];
  v17 = [(UIImageView *)self->_iconView widthAnchor];
  v18 = [v17 constraintEqualToConstant:0.0];

  LODWORD(v19) = 1111752704;
  v40 = v18;
  [v18 setPriority:v19];
  v20 = [(UIImageView *)self->_iconView widthAnchor];
  v32 = [v20 constraintEqualToConstant:0.0];

  LODWORD(v21) = 1113325568;
  [v32 setPriority:v21];
  v33 = MEMORY[0x277CCAAD0];
  v43[0] = v18;
  v39 = [(UIImageView *)self->_iconView leadingAnchor];
  v38 = [(_UINavigationControllerPalette *)self->_palette leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:17.0];
  v43[1] = v37;
  v36 = [(UILabel *)self->_filesLabel leadingAnchor];
  v35 = [(UIImageView *)self->_iconView trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35 constant:12.0];
  v43[2] = v34;
  v31 = [(_UINavigationControllerPalette *)self->_palette trailingAnchor];
  v22 = [(UILabel *)self->_filesLabel trailingAnchor];
  v23 = [v31 constraintGreaterThanOrEqualToAnchor:v22 constant:17.0];
  v43[3] = v23;
  v24 = [(UIImageView *)self->_iconView centerYAnchor];
  v25 = [(_UINavigationControllerPalette *)self->_palette centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v43[4] = v26;
  v27 = [(UILabel *)self->_filesLabel centerYAnchor];
  v28 = [(_UINavigationControllerPalette *)self->_palette centerYAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v43[5] = v29;
  v43[6] = v32;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:7];
  [v33 activateConstraints:v30];
}

- (void)_setContainerViewController:(id)a3
{
  objc_storeStrong(&self->_containerViewController, a3);
  v5 = a3;
  v9 = [(_UIDocumentTargetSelectionController *)self navigationController];
  v6 = [v9 view];
  v7 = [v6 semanticContentAttribute];
  v8 = [(_UIDocumentPickerContainerViewController *)self->_containerViewController view];

  [v8 setSemanticContentAttribute:v7];
}

- (id)pickableTypes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CC20C0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)didSelectItem:(id)a3
{
  v6 = a3;
  if ([v6 type] == 1 || objc_msgSend(v6, "type") == 2)
  {
    v4 = [(_UIDocumentTargetSelectionController *)self delegate];
    v5 = [v6 url];
    [v4 documentTargetSelectionController:self didSelectItemAtURL:v5];
  }
}

- (void)dismiss:(id)a3
{
  v4 = [(_UIDocumentTargetSelectionController *)self presentingViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48___UIDocumentTargetSelectionController_dismiss___block_invoke;
  v5[3] = &unk_278DD61B0;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (void)_updatePalette
{
  v3 = [(_UIDocumentTargetSelectionController *)self view];
  [v3 bounds];
  v5 = v4 + -44.0 + -34.0 + -12.0;

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke_2;
  v47[3] = &unk_278DD6708;
  v47[4] = self;
  *&v47[5] = v5;
  v6 = MEMORY[0x245D41DF0](v47);
  [(UILabel *)self->_filesLabel setLineBreakMode:4];
  if ([(NSArray *)self->_itemsToMove count]< 2)
  {
    [(UILabel *)self->_filesLabel setLineBreakMode:5];
    v19 = [(NSArray *)self->_itemsToMove firstObject];
    v20 = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke(v19, v19);
    [(UILabel *)self->_filesLabel setText:v20];
    goto LABEL_5;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v9 = v6;
  v10 = [v8 localizedStringForKey:@"%lu items" value:@"%lu items" table:@"Localizable"];
  v11 = [v7 localizedStringWithFormat:v10, -[NSArray count](self->_itemsToMove, "count")];
  [(UILabel *)self->_filesLabel setText:v11];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v14 = [v13 localizedStringForKey:@"%@ & %lu more…" value:@"%@ & %lu more…" table:@"Localizable"];
  v15 = [(NSArray *)self->_itemsToMove objectAtIndex:0];
  v16 = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke(v15, v15);
  v17 = [v12 localizedStringWithFormat:v14, v16, -[NSArray count](self->_itemsToMove, "count") - 1];
  v40 = v9;
  v9[2](v9, v17);

  if ([(NSArray *)self->_itemsToMove count]== 2)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v20 = [v19 localizedStringForKey:@"%@ value:%@" table:{@"%@, %@", @"Localizable"}];
    v38 = [(NSArray *)self->_itemsToMove objectAtIndex:0];
    v21 = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke(v38, v38);
    v22 = [(NSArray *)self->_itemsToMove objectAtIndex:1];
    v23 = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke(v22, v22);
    v24 = [v18 localizedStringWithFormat:v20, v21, v23];
    v40[2](v40, v24);

    v6 = v40;
LABEL_5:

    goto LABEL_6;
  }

  v6 = v9;
  if ([(NSArray *)self->_itemsToMove count]>= 3)
  {
    v33 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v20 = [v19 localizedStringForKey:@"%@ value:%@ & %lu more…" table:{@"%@, %@ & %lu more…", @"Localizable"}];
    v39 = [(NSArray *)self->_itemsToMove objectAtIndex:0];
    v34 = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke(v39, v39);
    v35 = [(NSArray *)self->_itemsToMove objectAtIndex:1];
    v36 = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke(v35, v35);
    v37 = [v33 localizedStringWithFormat:v20, v34, v36, -[NSArray count](self->_itemsToMove, "count") - 2];
    v40[2](v40, v37);

    v6 = v40;
    goto LABEL_5;
  }

LABEL_6:
  objc_initWeak(&location, self);
  v25 = [(NSArray *)self->_itemsToMove firstObject];
  v26 = [v25 ui_resolveOnDiskBookmarkAndPromise];

  v27 = [(_UIDocumentTargetSelectionController *)self traitCollection];
  [v27 displayScale];
  v29 = v28;

  if (!self->_firstFileThumbnailObservation)
  {
    v30 = [BRObservableFile observerForKey:0 onFileURL:v26];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __54___UIDocumentTargetSelectionController__updatePalette__block_invoke_3;
    v41[3] = &unk_278DD6780;
    v42 = v26;
    v44 = vdupq_n_s64(0x4046000000000000uLL);
    v45 = v29;
    objc_copyWeak(&v43, &location);
    v31 = [v30 addObserverBlock:v41];
    firstFileThumbnailObservation = self->_firstFileThumbnailObservation;
    self->_firstFileThumbnailObservation = v31;

    objc_destroyWeak(&v43);
  }

  objc_destroyWeak(&location);
}

+ (id)_loadThumbnailForURL:(id)a3 size:(CGSize)a4 scale:(double)a5 wantsBorder:(BOOL *)a6 generatedThumbnail:(BOOL *)a7
{
  height = a4.height;
  width = a4.width;
  v18 = 0;
  v12 = *MEMORY[0x277CBE918];
  v13 = a3;
  [v13 getPromisedItemResourceValue:&v18 forKey:v12 error:0];
  v14 = v18;
  v15 = [MEMORY[0x277CC1EB8] documentProxyForName:0 type:v14 MIMEType:0];
  v16 = [_UIDocumentPickerContainerItem _blockingThumbnailForItem:v13 documentProxy:v15 withSize:a6 scale:a7 wantsBorder:width generatedThumbnail:height, a5];

  return v16;
}

- (void)_setIconViewImage:(id)a3 border:(BOOL)a4
{
  v4 = a4;
  [(UIImageView *)self->_iconView setImage:a3];
  if (v4)
  {
    v6 = [MEMORY[0x277D75348] separatorColor];
    v7 = [v6 CGColor];
    v8 = [(UIImageView *)self->_iconView layer];
    [v8 setBorderColor:v7];

    v12 = [(_UIDocumentTargetSelectionController *)self traitCollection];
    [v12 displayScale];
    v10 = 1.0 / v9;
    v11 = [(UIImageView *)self->_iconView layer];
    [v11 setBorderWidth:v10];
  }

  else
  {
    v12 = [(UIImageView *)self->_iconView layer];
    [v12 setBorderWidth:0.0];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIDocumentTargetSelectionController;
  [(_UIDocumentTargetSelectionController *)&v3 viewDidLayoutSubviews];
  if ([(NSArray *)self->_itemsToMove count])
  {
    if (self->_completedInitialDisplay)
    {
      [(_UIDocumentTargetSelectionController *)self _updatePalette];
    }
  }
}

- (void)setItemsToMove:(id)a3
{
  v4 = a3;
  if (self->_itemsToMove != v4)
  {
    v7 = v4;
    v5 = [(NSArray *)v4 copy];
    itemsToMove = self->_itemsToMove;
    self->_itemsToMove = v5;

    v4 = v7;
    if (self->_completedInitialDisplay)
    {
      [(_UIDocumentTargetSelectionController *)self _setupNavigationItem];
      v4 = v7;
    }
  }
}

- (_UIDocumentTargetSelectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end