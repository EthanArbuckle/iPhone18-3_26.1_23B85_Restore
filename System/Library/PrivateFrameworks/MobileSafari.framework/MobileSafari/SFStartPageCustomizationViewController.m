@interface SFStartPageCustomizationViewController
- (BOOL)showsBackgroundImagesCell;
- (SFStartPageCustomizationDataSource)dataSource;
- (SFStartPageCustomizationViewController)initWithDataSource:(id)a3;
- (id)_backgroundImageIdentifier;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)identifierToCustomizationItemMapForItemVariant:(int64_t)a3;
- (id)makeBackgroundImageRegistration;
- (id)makeBackgroundImageToggleRegistration;
- (id)makeBackgroundImagesCollectionViewLayout;
- (id)makeCustomizationItemRegistration;
- (id)makeCustomizationSyncFooterRegistration;
- (id)makeCustomizationSyncToggleRegistration;
- (id)makeFixedCustomizationItemRegistration;
- (id)makeReorderingHandlers;
- (id)makeRootCollectionViewLayout;
- (id)makeSuggestionDataSourcesToggleRegistration;
- (id)makeSuggestionsDataSourcesHeaderRegistration;
- (void)_createGeneratedBackgroundImageItemProvider;
- (void)_createMobileAssetBackgroundImageItemProviders;
- (void)_didSelectMobileAssetBackgroundImageCell:(id)a3;
- (void)_setCustomizationSyncWithValue:(id)a3;
- (void)_updateGeneratedBackgroundImageItemProviderWithImage:(id)a3;
- (void)_updateHasGeneratedBackgroundImage:(id)a3;
- (void)_updateImageWithURL:(id)a3;
- (void)_updateMobileAssetBackgroundImageItemProviderWithImage:(id)a3 fileName:(id)a4;
- (void)backgroundImageCellDidSelectClearButton:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)didChangeCustomizationItemOrder:(id)a3 forVariant:(int64_t)a4;
- (void)mobileAssetBackgroundImageInstalled:(id)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)reloadDataAnimatingDifferences:(BOOL)a3;
- (void)setCustomizationItemIdentifier:(id)a3 inSection:(id)a4 enabled:(BOOL)a5;
- (void)setShowsCloseButton:(BOOL)a3;
- (void)setUpBackgroundImagesCollectionViewDataSource;
- (void)setUpRootCollectionViewDataSource;
- (void)showPhotoPicker;
- (void)startPageCustomizationCellDidChangeValue:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SFStartPageCustomizationViewController

- (SFStartPageCustomizationViewController)initWithDataSource:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SFStartPageCustomizationViewController;
  v5 = [(SFStartPageCustomizationViewController *)&v31 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = _WBSLocalizedString();
    [(SFStartPageCustomizationViewController *)v5 setTitle:v6];

    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = MEMORY[0x1E695DFF8];
    v9 = _SFSafariContainerPath();
    v10 = [v8 fileURLWithPath:v9];
    v11 = [v10 URLByAppendingPathComponent:@"Library" isDirectory:1];
    v12 = [v11 URLByAppendingPathComponent:@"Caches" isDirectory:1];

    v13 = [objc_alloc(MEMORY[0x1E69C9848]) initWithBundle:v7 localCachesDirectory:v12];
    backgroundImagesDataSource = v5->_backgroundImagesDataSource;
    v5->_backgroundImagesDataSource = v13;

    objc_storeWeak(&v5->_dataSource, v4);
    v15 = [MEMORY[0x1E695DF90] dictionary];
    identifierToFixedCustomizationItemMap = v5->_identifierToFixedCustomizationItemMap;
    v5->_identifierToFixedCustomizationItemMap = v15;

    v17 = [MEMORY[0x1E695DF90] dictionary];
    identifierToCustomizationItemMap = v5->_identifierToCustomizationItemMap;
    v5->_identifierToCustomizationItemMap = v17;

    v19 = [MEMORY[0x1E695DF90] dictionary];
    mobileAssetFileNameToItemProvider = v5->_mobileAssetFileNameToItemProvider;
    v5->_mobileAssetFileNameToItemProvider = v19;

    v21 = [MEMORY[0x1E695DF90] dictionary];
    identifierToSuggestionsDataSourceCustomizationItemMap = v5->_identifierToSuggestionsDataSourceCustomizationItemMap;
    v5->_identifierToSuggestionsDataSourceCustomizationItemMap = v21;

    [(SFStartPageCustomizationViewController *)v5 _updateHasGeneratedBackgroundImage:v4];
    v23 = [v4 backgroundImageAssetControllerForCustomizationViewController:v5];
    v24 = [v23 fileNames];
    v25 = [v24 copy];
    mobileAssetFileNames = v5->_mobileAssetFileNames;
    v5->_mobileAssetFileNames = v25;

    [(SFStartPageCustomizationViewController *)v5 _createMobileAssetBackgroundImageItemProviders];
    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    [v27 addObserver:v5 selector:sel_mobileAssetBackgroundImageInstalled_ name:*MEMORY[0x1E69C9920] object:v5->_backgroundImagesDataSource];

    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v5 selector:sel_backgroundImagesDidChange_ name:*MEMORY[0x1E69C9A00] object:v5->_backgroundImagesDataSource];

    v29 = v5;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SFStartPageCustomizationViewController;
  [(SFStartPageCustomizationViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = SFStartPageCustomizationViewController;
  [(SFStartPageCustomizationViewController *)&v14 viewDidLoad];
  v3 = [(SFStartPageCustomizationViewController *)self view];
  v4 = [(SFStartPageCustomizationViewController *)self makeRootCollectionViewLayout];
  v5 = objc_alloc(MEMORY[0x1E69DC7F0]);
  [v3 bounds];
  v6 = [v5 initWithFrame:v4 collectionViewLayout:?];
  rootCollectionView = self->_rootCollectionView;
  self->_rootCollectionView = v6;

  [(UICollectionView *)self->_rootCollectionView setAutoresizingMask:18];
  v8 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [(UICollectionView *)self->_rootCollectionView setBackgroundColor:v8];

  [(UICollectionView *)self->_rootCollectionView setDelegate:self];
  [(UICollectionView *)self->_rootCollectionView setAccessibilityIdentifier:@"StartPageCustomizationMenu"];
  [(UICollectionView *)self->_rootCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"background-images-grid"];
  [v3 addSubview:self->_rootCollectionView];
  [(SFStartPageCustomizationViewController *)self setUpRootCollectionViewDataSource];
  v9 = [(SFStartPageCustomizationViewController *)self makeBackgroundImagesCollectionViewLayout];
  v10 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v11 = [(SFStartPageCustomizationViewController *)self view];
  [v11 bounds];
  v12 = [v10 initWithFrame:v9 collectionViewLayout:?];
  backgroundImagesCollectionView = self->_backgroundImagesCollectionView;
  self->_backgroundImagesCollectionView = v12;

  [(UICollectionView *)self->_backgroundImagesCollectionView setDelegate:self];
  [(UICollectionView *)self->_backgroundImagesCollectionView setAccessibilityIdentifier:@"StartPageBackgroundImageCollection"];
  [(SFStartPageCustomizationViewController *)self setUpBackgroundImagesCollectionViewDataSource];
  [(SFStartPageCustomizationViewController *)self reloadDataAnimatingDifferences:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFStartPageCustomizationViewController;
  [(SFStartPageCustomizationViewController *)&v5 viewDidDisappear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained startPageCustomizationViewControllerDidFinish:self];
  }
}

- (void)_updateGeneratedBackgroundImageItemProviderWithImage:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v4, "CGImage")}];
  v6 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v5];
  generatedBackgroundImageItemProvider = self->_generatedBackgroundImageItemProvider;
  self->_generatedBackgroundImageItemProvider = v6;

  [(NSItemProvider *)self->_generatedBackgroundImageItemProvider setSuggestedName:@"GeneratedProfileImage"];
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __95__SFStartPageCustomizationViewController__updateGeneratedBackgroundImageItemProviderWithImage___block_invoke;
    v8[3] = &unk_1E721F700;
    v9 = v5;
    [(NSItemProvider *)self->_generatedBackgroundImageItemProvider setPreviewImageHandler:v8];
  }
}

- (void)_createGeneratedBackgroundImageItemProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained profileProviderForCustomizationViewController:self];

  v5 = [MEMORY[0x1E69C9850] defaultManager];
  if (self->_hasGeneratedBackgroundImage)
  {
    v6 = [(SFStartPageCustomizationViewController *)self _backgroundImageIdentifier];
    v7 = [MEMORY[0x1E69C9850] defaultManager];
    v8 = [v4 activeProfile];
    v9 = [v7 imageForIdentifier:v6 forProfile:v8];

    [(SFStartPageCustomizationViewController *)self _updateGeneratedBackgroundImageItemProviderWithImage:v9];
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = [v4 activeProfile];
    v11 = [v10 symbolImageName];
    v12 = [v4 activeProfileIdentifier];
    v13 = [v4 activeProfile];
    v14 = [v13 color];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__SFStartPageCustomizationViewController__createGeneratedBackgroundImageItemProvider__block_invoke;
    v15[3] = &unk_1E721F728;
    objc_copyWeak(&v17, &location);
    v16 = v5;
    [v16 generateProfileSpecificBackgroundImageWithSymbol:v11 forProfile:v12 withColor:v14 completionHandler:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __85__SFStartPageCustomizationViewController__createGeneratedBackgroundImageItemProvider__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) fetchImage:v5];
    [WeakRetained _updateGeneratedBackgroundImageItemProviderWithImage:v4];
  }
}

- (void)_updateHasGeneratedBackgroundImage:(id)a3
{
  v4 = [a3 profileProviderForCustomizationViewController:self];
  if ([v4 hasMultipleProfiles])
  {
    v5 = [(SFStartPageCustomizationViewController *)self _backgroundImageIdentifier];
    v6 = [MEMORY[0x1E69C9850] defaultManager];
    v7 = [v4 activeProfile];
    v8 = [v7 identifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__SFStartPageCustomizationViewController__updateHasGeneratedBackgroundImage___block_invoke;
    v9[3] = &unk_1E721F750;
    v9[4] = self;
    [v6 getHasGeneratedBackgroundImage:v5 forProfileWithIdentifier:v8 completionHandler:v9];
  }

  else if (self->_hasGeneratedBackgroundImage)
  {
    self->_hasGeneratedBackgroundImage = 0;
    [(SFStartPageCustomizationViewController *)self reloadDataAnimatingDifferences:0];
  }
}

uint64_t __77__SFStartPageCustomizationViewController__updateHasGeneratedBackgroundImage___block_invoke(uint64_t result, int a2)
{
  v2 = *(result + 32);
  if (*(v2 + 1088) != a2)
  {
    *(v2 + 1088) = a2;
    return [*(result + 32) reloadDataAnimatingDifferences:0];
  }

  return result;
}

- (id)_backgroundImageIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained profileProviderForCustomizationViewController:self];

  v5 = [v4 activeTabGroup];
  if ([v5 isNamed])
  {
    v6 = [v4 activeTabGroup];
    [v6 uuid];
  }

  else
  {
    v6 = [v4 activeProfile];
    [v6 identifier];
  }
  v7 = ;

  if ([(__CFString *)v7 isEqualToString:*MEMORY[0x1E69C8B58]])
  {
    v8 = &stru_1EFF36230;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v8;
}

- (void)_updateMobileAssetBackgroundImageItemProviderWithImage:(id)a3 fileName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v6, "CGImage")}];
    v9 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v8];
    [v9 setSuggestedName:v7];
    if (v8)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __106__SFStartPageCustomizationViewController__updateMobileAssetBackgroundImageItemProviderWithImage_fileName___block_invoke;
      v10[3] = &unk_1E721F700;
      v11 = v8;
      [v9 setPreviewImageHandler:v10];
    }

    [(NSMutableDictionary *)self->_mobileAssetFileNameToItemProvider setObject:v9 forKeyedSubscript:v7];
  }
}

- (void)_createMobileAssetBackgroundImageItemProviders
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_mobileAssetFileNames;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * v5);
        v7 = [MEMORY[0x1E696AC08] defaultManager];
        v8 = [v7 safari_startPageBackgroundImageThumbnailMobileAssetFolderURL];
        v9 = [v8 URLByAppendingPathComponent:v6];

        v10 = CGImageSourceCreateWithURL(v9, 0);
        v11 = [MEMORY[0x1E69C8ED8] imageByAdoptingCGImage:{CGImageSourceCreateImageAtIndex(v10, 0, 0)}];
        CFRelease(v10);
        [(SFStartPageCustomizationViewController *)self _updateMobileAssetBackgroundImageItemProviderWithImage:v11 fileName:v6];

        ++v5;
      }

      while (v3 != v5);
      v3 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

- (void)setCustomizationItemIdentifier:(id)a3 inSection:(id)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v20 = a3;
  v8 = a4;
  if ([v8 isEqual:@"fixed-customization-items"])
  {
    v9 = 1;
  }

  else if ([v8 isEqual:@"customization-items"])
  {
    v9 = 0;
  }

  else if ([v8 isEqual:@"suggestions-data"])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SFStartPageCustomizationViewController *)self identifierToCustomizationItemMapForItemVariant:v9];
  v11 = [v10 objectForKeyedSubscript:v20];
  v12 = v11;
  if (v11 && [v11 isEnabled] != v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (objc_opt_respondsToSelector())
    {
      v14 = [v12 identifier];
      [WeakRetained startPageCustomizationViewController:self willModifySectionWithIdentifier:v14 enabled:v5];
    }

    v15 = [v12 itemWithEnabled:v5];
    v16 = [v12 identifier];
    [v10 setObject:v15 forKeyedSubscript:v16];

    v17 = [(UICollectionViewDiffableDataSource *)self->_rootCollectionViewDataSource snapshot];
    v18 = [v17 itemIdentifiersInSectionWithIdentifier:v8];

    ++self->_reloadDataSuppressionCount;
    [(SFStartPageCustomizationViewController *)self didChangeCustomizationItemOrder:v18 forVariant:v9];
    --self->_reloadDataSuppressionCount;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v20 isEqualToString:*MEMORY[0x1E69C9668]] && !v5)
    {
      v19 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v19 safari_setBool:0 andNotifyForKey:*MEMORY[0x1E69C9130]];
    }
  }
}

- (void)didChangeCustomizationItemOrder:(id)a3 forVariant:(int64_t)a4
{
  v6 = a3;
  v7 = [(SFStartPageCustomizationViewController *)self identifierToCustomizationItemMapForItemVariant:a4];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__SFStartPageCustomizationViewController_didChangeCustomizationItemOrder_forVariant___block_invoke;
  v15[3] = &unk_1E721F778;
  v8 = v7;
  v16 = v8;
  v9 = [v6 safari_mapObjectsUsingBlock:v15];
  v10 = [v9 mutableCopy];

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v12 = WeakRetained;
  if (a4 == 2)
  {
    v13 = [WeakRetained startPageCustomizationViewController:self customizationItemsForCustomizationVariant:0];
    [v10 addObjectsFromArray:v13];
    goto LABEL_5;
  }

  if (!a4)
  {
    v13 = [WeakRetained startPageCustomizationViewController:self customizationItemsForCustomizationVariant:2];
    [v10 addObjectsFromArray:v13];
LABEL_5:
  }

  ++self->_reloadDataSuppressionCount;
  v14 = [v10 copy];
  [v12 startPageCustomizationViewController:self didCustomizeItems:v14 withVariant:a4];

  --self->_reloadDataSuppressionCount;
}

id __85__SFStartPageCustomizationViewController_didChangeCustomizationItemOrder_forVariant___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];

  return v2;
}

- (id)identifierToCustomizationItemMapForItemVariant:(int64_t)a3
{
  if (a3 <= 2)
  {
    a2 = *(&self->super.super.super.isa + *off_1E721FAE0[a3]);
  }

  return a2;
}

- (BOOL)showsBackgroundImagesCell
{
  if (self->_backgroundSectionUnconditionallyVisible)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v2 = [WeakRetained isBackgroundImageEnabledForStartPageCustomizationViewController:self];

  return v2;
}

- (void)mobileAssetBackgroundImageInstalled:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69C9928]];

  if ([v5 length])
  {
    [(SFStartPageCustomizationViewController *)self reloadDataAnimatingDifferences:1];
  }
}

- (void)setShowsCloseButton:(BOOL)a3
{
  if (self->_showsCloseButton != a3)
  {
    self->_showsCloseButton = a3;
    if (a3)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__dismiss_];
      v4 = [(SFStartPageCustomizationViewController *)self navigationItem];
      [v4 sf_setPreferredDismissOrDoneButtonItem:v6];

      v7 = [(SFStartPageCustomizationViewController *)self navigationItem];
      v5 = [v7 sf_preferredDismissOrDoneButtonItem];
      [v5 setAccessibilityIdentifier:@"StartPageCustomizationMenuCloseButton"];
    }

    else
    {
      v7 = [(SFStartPageCustomizationViewController *)self navigationItem];
      [v7 sf_setPreferredDismissOrDoneButtonItem:0];
    }
  }
}

- (void)reloadDataAnimatingDifferences:(BOOL)a3
{
  v74[1] = *MEMORY[0x1E69E9840];
  if (!self->_reloadDataSuppressionCount)
  {
    v43 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (self->_rootCollectionViewDataSource)
    {
      v44 = objc_alloc_init(MEMORY[0x1E69955A0]);
      if ([WeakRetained isCloudSyncAvailableForStartPageCustomizationViewController:self])
      {
        v74[0] = @"customization-sync";
        v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
        [v44 appendSectionsWithIdentifiers:v4];

        v73 = @"customization-sync::toggle";
        v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
        [v44 appendItemsWithIdentifiers:v5 intoSectionWithIdentifier:@"customization-sync"];
      }

      v49 = [WeakRetained startPageCustomizationViewController:self customizationItemsForCustomizationVariant:1];
      configureSnapshotWithCustomizationItemsSection(v44, @"fixed-customization-items", v49, self->_identifierToFixedCustomizationItemMap);
      v46 = [WeakRetained startPageCustomizationViewController:self customizationItemsForCustomizationVariant:0];
      configureSnapshotWithCustomizationItemsSection(v44, @"customization-items", v46, self->_identifierToCustomizationItemMap);
      if ([WeakRetained isSuggestionsCustomizationAvailableForStartPageCustomizationViewController:self])
      {
        v6 = [WeakRetained startPageCustomizationViewController:self customizationItemsForCustomizationVariant:2];
        configureSnapshotWithCustomizationItemsSection(v44, @"suggestions-data", v6, self->_identifierToSuggestionsDataSourceCustomizationItemMap);
      }

      v72 = @"background-image";
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
      [v44 appendSectionsWithIdentifiers:v7];

      v71 = @"background-image::toggle";
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
      [v44 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:@"background-image"];

      if ([(SFStartPageCustomizationViewController *)self showsBackgroundImagesCell])
      {
        v70 = @"background-image::grid";
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
        [v44 appendItemsWithIdentifiers:v9 intoSectionWithIdentifier:@"background-image"];
      }

      [(UICollectionViewDiffableDataSource *)self->_rootCollectionViewDataSource applySnapshot:v44 animatingDifferences:v43];
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = [(UICollectionView *)self->_rootCollectionView indexPathsForVisibleItems];
      v10 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v10)
      {
        v11 = *v65;
        do
        {
          v12 = 0;
          do
          {
            if (*v65 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v64 + 1) + 8 * v12);
            v14 = -[UICollectionViewDiffableDataSource sectionIdentifierForIndex:](self->_rootCollectionViewDataSource, "sectionIdentifierForIndex:", [v13 section]);
            v15 = [(UICollectionViewDiffableDataSource *)self->_rootCollectionViewDataSource itemIdentifierForIndexPath:v13];
            if ([v15 isEqualToString:@"customization-sync::toggle"])
            {
              v16 = [(UICollectionView *)self->_rootCollectionView cellForItemAtIndexPath:v13];
              [v16 setOn:{objc_msgSend(WeakRetained, "isCloudSyncEnabledForStartPageCustomizationViewController:", self)}];
LABEL_21:

              goto LABEL_22;
            }

            if ([v14 isEqual:@"fixed-customization-items"])
            {
              v16 = [(UICollectionView *)self->_rootCollectionView cellForItemAtIndexPath:v13];
              v17 = [v49 objectAtIndexedSubscript:{objc_msgSend(v13, "row")}];
              [v16 setOn:{objc_msgSend(v17, "isEnabled")}];
LABEL_20:

              goto LABEL_21;
            }

            if ([v14 isEqual:@"customization-items"])
            {
              v16 = [(UICollectionView *)self->_rootCollectionView cellForItemAtIndexPath:v13];
              v17 = [v46 objectAtIndexedSubscript:{objc_msgSend(v13, "row")}];
              [v16 setOn:{objc_msgSend(v17, "isEnabled")}];
              goto LABEL_20;
            }

            if ([v15 isEqual:@"background-image::toggle"])
            {
              v16 = [(UICollectionView *)self->_rootCollectionView cellForItemAtIndexPath:v13];
              [v16 setOn:{-[SFStartPageCustomizationViewController showsBackgroundImagesCell](self, "showsBackgroundImagesCell")}];
              goto LABEL_21;
            }

LABEL_22:

            ++v12;
          }

          while (v10 != v12);
          v18 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
          v10 = v18;
        }

        while (v18);
      }
    }

    if (self->_backgroundImagesCollectionViewDataSource)
    {
      obja = objc_alloc_init(MEMORY[0x1E69955A0]);
      v68 = @"background-image";
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      [obja appendSectionsWithIdentifiers:v19];

      v20 = [WeakRetained backgroundImageForStartPageCustomizationViewController:self];
      backgroundImagesDataSource = self->_backgroundImagesDataSource;
      v40 = v20;
      v22 = [v20 suggestedName];
      v23 = [(WBSStartPageBackgroundImagesDataSource *)backgroundImagesDataSource indexOfBackgroundImageWithName:v22];

      v24 = [MEMORY[0x1E695DF70] array];
      v45 = objc_loadWeakRetained(&self->_dataSource);
      v42 = [v45 profileProviderForCustomizationViewController:self];
      if ([v42 hasMultipleProfiles])
      {
        hasGeneratedBackgroundImage = self->_hasGeneratedBackgroundImage;
        if (!self->_generatedBackgroundImageItemProvider)
        {
          [(SFStartPageCustomizationViewController *)self _createGeneratedBackgroundImageItemProvider];
        }

        v26 = [SFStartPageBackgroundImageModel alloc];
        generatedBackgroundImageItemProvider = self->_generatedBackgroundImageItemProvider;
        v47 = [v42 activeProfile];
        v28 = [v47 symbolImageName];
        v29 = [v42 activeProfile];
        v30 = [v29 identifier];
        v50 = [(SFStartPageBackgroundImageModel *)v26 initWithItemProvider:generatedBackgroundImageItemProvider symbolName:v28 profileIdentifier:v30 selected:hasGeneratedBackgroundImage];
      }

      else
      {
        v50 = 0;
        LOBYTE(hasGeneratedBackgroundImage) = 0;
      }

      v60 = 0;
      v61 = &v60;
      v62 = 0x2020000000;
      v63 = 0;
      v38 = [MEMORY[0x1E695DF70] array];
      v31 = [(NSMutableDictionary *)self->_mobileAssetFileNameToItemProvider keysSortedByValueUsingComparator:&__block_literal_global_67];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __73__SFStartPageCustomizationViewController_reloadDataAnimatingDifferences___block_invoke_2;
      v54[3] = &unk_1E721F7C0;
      v59 = hasGeneratedBackgroundImage;
      v58 = &v60;
      v41 = v40;
      v55 = v41;
      v56 = self;
      v48 = v38;
      v57 = v48;
      v39 = v31;
      [v31 enumerateObjectsUsingBlock:v54];
      if ((v61[3] & 1) != 0 || hasGeneratedBackgroundImage || !v41 || v23 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = [[SFStartPageBackgroundImageModel alloc] initWithItemProvider:0];
      }

      else
      {
        v32 = [[SFStartPageBackgroundImageModel alloc] initWithItemProvider:v41];
      }

      v33 = v32;
      [v24 addObject:v32];
      if ([v48 count])
      {
        [v24 addObjectsFromArray:v48];
      }

      if (v50)
      {
        [v24 addObject:v50];
      }

      v34 = [(WBSStartPageBackgroundImagesDataSource *)self->_backgroundImagesDataSource itemCount];
      if (v34 >= 1)
      {
        for (i = 0; i != v34; ++i)
        {
          if (v23 != i || hasGeneratedBackgroundImage)
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v61 + 24) ^ 1;
          }

          v37 = [[SFStartPageBackgroundImageModel alloc] initWithIndex:i inDataSource:self->_backgroundImagesDataSource selected:v36 & 1];
          [v24 addObject:v37];
        }
      }

      [obja appendItemsWithIdentifiers:v24 intoSectionWithIdentifier:@"background-image"];
      [(UICollectionViewDiffableDataSource *)self->_backgroundImagesCollectionViewDataSource applySnapshot:obja animatingDifferences:v43];

      _Block_object_dispose(&v60, 8);
    }
  }
}

uint64_t __73__SFStartPageCustomizationViewController_reloadDataAnimatingDifferences___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 suggestedName];
  v6 = [v4 suggestedName];
  v7 = [v5 caseInsensitiveCompare:v6];

  return v7;
}

void __73__SFStartPageCustomizationViewController_reloadDataAnimatingDifferences___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) suggestedName];
  v4 = [v11 isEqualToString:v3];

  if (v4 && (*(a1 + 64) & 1) == 0)
  {
    v6 = *(*(a1 + 56) + 8);
    v5 = 1;
    v7 = 1;
  }

  else
  {
    v5 = 0;
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 24);
  }

  *(v6 + 24) = v7 & 1;
  v8 = [SFStartPageBackgroundImageModel alloc];
  v9 = [*(*(a1 + 40) + 1104) objectForKeyedSubscript:v11];
  v10 = [(SFStartPageBackgroundImageModel *)v8 initWithItemProvider:v9 fileName:v11 selected:v5];

  [*(a1 + 48) addObject:v10];
}

- (void)setUpRootCollectionViewDataSource
{
  v19 = [(SFStartPageCustomizationViewController *)self makeCustomizationSyncToggleRegistration];
  v3 = [(SFStartPageCustomizationViewController *)self makeCustomizationSyncFooterRegistration];
  v18 = [(SFStartPageCustomizationViewController *)self makeFixedCustomizationItemRegistration];
  v17 = [(SFStartPageCustomizationViewController *)self makeCustomizationItemRegistration];
  v16 = [(SFStartPageCustomizationViewController *)self makeBackgroundImageToggleRegistration];
  v15 = [(SFStartPageCustomizationViewController *)self makeSuggestionDataSourcesToggleRegistration];
  v4 = [(SFStartPageCustomizationViewController *)self makeSuggestionsDataSourcesHeaderRegistration];
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__SFStartPageCustomizationViewController_setUpRootCollectionViewDataSource__block_invoke;
  aBlock[3] = &unk_1E721F7E8;
  objc_copyWeak(&v31, location);
  v5 = v19;
  v26 = v5;
  v20 = v17;
  v27 = v20;
  v6 = v18;
  v28 = v6;
  v7 = v16;
  v29 = v7;
  v8 = v15;
  v30 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [objc_alloc(MEMORY[0x1E69DC820]) initWithCollectionView:self->_rootCollectionView cellProvider:v9];
  rootCollectionViewDataSource = self->_rootCollectionViewDataSource;
  self->_rootCollectionViewDataSource = v10;

  v12 = [(SFStartPageCustomizationViewController *)self makeReorderingHandlers];
  [(UICollectionViewDiffableDataSource *)self->_rootCollectionViewDataSource setReorderingHandlers:v12];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__SFStartPageCustomizationViewController_setUpRootCollectionViewDataSource__block_invoke_2;
  v21[3] = &unk_1E721F810;
  objc_copyWeak(&v24, location);
  v13 = v3;
  v22 = v13;
  v14 = v4;
  v23 = v14;
  [(UICollectionViewDiffableDataSource *)self->_rootCollectionViewDataSource setSupplementaryViewProvider:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

id __75__SFStartPageCustomizationViewController_setUpRootCollectionViewDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v11 = WeakRetained;
  if (!WeakRetained)
  {
    v17 = 0;
    goto LABEL_20;
  }

  v12 = [WeakRetained[134] sectionIdentifierForIndex:{objc_msgSend(v8, "section")}];
  if ([v12 isEqual:@"customization-sync"] && objc_msgSend(v9, "isEqualToString:", @"customization-sync::toggle"))
  {
    v13 = *(a1 + 32);
    v14 = MEMORY[0x1E696AD98];
    v15 = objc_loadWeakRetained(v11 + 141);
    v16 = [v14 numberWithBool:{objc_msgSend(v15, "isCloudSyncEnabledForStartPageCustomizationViewController:", v11)}];
    v17 = [v7 dequeueConfiguredReusableCellWithRegistration:v13 forIndexPath:v8 item:v16];

LABEL_18:
    goto LABEL_19;
  }

  if ([v12 isEqual:@"customization-items"])
  {
    v18 = *(a1 + 40);
    v15 = [v11[129] objectForKeyedSubscript:v9];
    v19 = [v7 dequeueConfiguredReusableCellWithRegistration:v18 forIndexPath:v8 item:v15];
LABEL_17:
    v17 = v19;
    goto LABEL_18;
  }

  if ([v12 isEqual:@"fixed-customization-items"])
  {
    v20 = *(a1 + 48);
    v15 = [v11[130] objectForKeyedSubscript:v9];
    v19 = [v7 dequeueConfiguredReusableCellWithRegistration:v20 forIndexPath:v8 item:v15];
    goto LABEL_17;
  }

  if (![v12 isEqual:@"background-image"])
  {
    goto LABEL_15;
  }

  if ([v9 isEqualToString:@"background-image::toggle"])
  {
    v21 = *(a1 + 56);
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "showsBackgroundImagesCell")}];
    v19 = [v7 dequeueConfiguredReusableCellWithRegistration:v21 forIndexPath:v8 item:v15];
    goto LABEL_17;
  }

  if (![v9 isEqualToString:@"background-image::grid"])
  {
LABEL_15:
    if (![v12 isEqual:@"suggestions-data"])
    {
      v17 = 0;
      goto LABEL_19;
    }

    v22 = *(a1 + 64);
    v15 = [v11[131] objectForKeyedSubscript:v9];
    v19 = [v7 dequeueConfiguredReusableCellWithRegistration:v22 forIndexPath:v8 item:v15];
    goto LABEL_17;
  }

  v17 = [v7 dequeueReusableCellWithReuseIdentifier:@"background-images-grid" forIndexPath:v8];
  [v17 setCollectionView:v11[125]];
LABEL_19:

LABEL_20:

  return v17;
}

id __75__SFStartPageCustomizationViewController_setUpRootCollectionViewDataSource__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained[134] sectionIdentifierForIndex:{objc_msgSend(v7, "section")}];
    v11 = [v10 isEqual:@"customization-sync"];

    if (v11)
    {
      v12 = 32;
LABEL_6:
      v15 = [v6 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v12) forIndexPath:v7];
      goto LABEL_8;
    }

    v13 = [v9[134] sectionIdentifierForIndex:{objc_msgSend(v7, "section")}];
    v14 = [v13 isEqual:@"suggestions-data"];

    if (v14)
    {
      v12 = 40;
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (void)setUpBackgroundImagesCollectionViewDataSource
{
  v3 = [(SFStartPageCustomizationViewController *)self makeBackgroundImageRegistration];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__SFStartPageCustomizationViewController_setUpBackgroundImagesCollectionViewDataSource__block_invoke;
  aBlock[3] = &unk_1E721F838;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [objc_alloc(MEMORY[0x1E69DC820]) initWithCollectionView:self->_backgroundImagesCollectionView cellProvider:v5];
  backgroundImagesCollectionViewDataSource = self->_backgroundImagesCollectionViewDataSource;
  self->_backgroundImagesCollectionViewDataSource = v6;
}

id __87__SFStartPageCustomizationViewController_setUpBackgroundImagesCollectionViewDataSource__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = [a2 dequeueConfiguredReusableCellWithRegistration:*(a1 + 32) forIndexPath:a3 item:a4];

  return v4;
}

- (id)makeReorderingHandlers
{
  objc_initWeak(&location, self);
  v2 = objc_alloc_init(MEMORY[0x1E69DC828]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__SFStartPageCustomizationViewController_makeReorderingHandlers__block_invoke;
  v6[3] = &unk_1E721F860;
  objc_copyWeak(&v7, &location);
  [v2 setCanReorderItemHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SFStartPageCustomizationViewController_makeReorderingHandlers__block_invoke_2;
  v4[3] = &unk_1E721F888;
  objc_copyWeak(&v5, &location);
  [v2 setDidReorderHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v2;
}

uint64_t __64__SFStartPageCustomizationViewController_makeReorderingHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 134);
    v7 = [v6 indexPathForItemIdentifier:v3];
    v8 = [v6 sectionIdentifierForIndex:{objc_msgSend(v7, "section")}];
    v9 = [v8 isEqual:@"customization-items"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __64__SFStartPageCustomizationViewController_makeReorderingHandlers__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v7 finalSnapshot];
    v5 = [v4 itemIdentifiersInSectionWithIdentifier:@"customization-items"];

    [WeakRetained didChangeCustomizationItemOrder:v5 forVariant:0];
    v6 = objc_loadWeakRetained(WeakRetained + 141);
    if (objc_opt_respondsToSelector())
    {
      [v6 didReorderSectionIdentifiersForStartPageCustomizationViewController:WeakRetained];
    }
  }
}

- (id)makeRootCollectionViewLayout
{
  v3 = objc_alloc(MEMORY[0x1E69DC808]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__SFStartPageCustomizationViewController_makeRootCollectionViewLayout__block_invoke;
  v6[3] = &unk_1E721F8B0;
  v6[4] = self;
  v4 = [v3 initWithSectionProvider:v6];

  return v4;
}

id __70__SFStartPageCustomizationViewController_makeRootCollectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  v7 = [*(*(a1 + 32) + 1072) sectionIdentifierForIndex:a2];
  if ([v7 isEqual:@"background-image"])
  {
    v8 = [v6 separatorConfiguration];
    [v8 setTopSeparatorVisibility:2];
    [v8 setBottomSeparatorVisibility:2];
    [v6 setSeparatorConfiguration:v8];
  }

  if ([v7 isEqual:@"customization-sync"])
  {
    [v6 setFooterMode:1];
  }

  if ([v7 isEqual:@"suggestions-data"])
  {
    [v6 setHeaderMode:1];
  }

  v9 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v6 layoutEnvironment:v5];
  [v9 contentInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = [*(*(a1 + 32) + 1072) sectionIdentifierForIndex:a2 - 1];
  }

  v17 = [v16 isEqual:@"customization-sync"];
  v18 = 0.0;
  if (v17)
  {
    v18 = 8.0;
  }

  [v9 setContentInsets:{v18, v11, v13, v15}];

  return v9;
}

- (id)makeBackgroundImagesCollectionViewLayout
{
  v3 = objc_alloc(MEMORY[0x1E69DC808]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__SFStartPageCustomizationViewController_makeBackgroundImagesCollectionViewLayout__block_invoke;
  v6[3] = &unk_1E721F8B0;
  v6[4] = self;
  v4 = [v3 initWithSectionProvider:v6];

  return v4;
}

id __82__SFStartPageCustomizationViewController_makeBackgroundImagesCollectionViewLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [*(a1 + 32) preferredBackgroundImagesCollectionViewColumnCount];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v4 container];
    [v7 effectiveContentSize];
    if (v8 < 430.0)
    {
      v6 = 3.0;
    }

    else
    {
      v6 = 5.0;
    }
  }

  v9 = [v4 container];
  [v9 effectiveContentSize];
  v11 = (v10 + -32.0 + (v6 + -1.0) * -8.0) / v6;

  v12 = [MEMORY[0x1E6995558] absoluteDimension:v11];
  v13 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v12 heightDimension:v12];
  v14 = [MEMORY[0x1E6995578] itemWithLayoutSize:v13];
  v15 = MEMORY[0x1E6995588];
  v16 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v17 = [MEMORY[0x1E6995558] estimatedDimension:100.0];
  v18 = [v15 sizeWithWidthDimension:v16 heightDimension:v17];

  v19 = MEMORY[0x1E6995568];
  v25[0] = v14;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v21 = [v19 horizontalGroupWithLayoutSize:v18 subitems:v20];

  v22 = [MEMORY[0x1E6995590] flexibleSpacing:8.0];
  [v21 setInterItemSpacing:v22];

  v23 = [MEMORY[0x1E6995580] sectionWithGroup:v21];
  [v23 setContentInsets:{1.0, 16.0, 15.0, 16.0}];
  [v23 setInterGroupSpacing:8.0];

  return v23;
}

- (id)makeCustomizationItemRegistration
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __75__SFStartPageCustomizationViewController_makeCustomizationItemRegistration__block_invoke;
  v8 = &unk_1E721F8D8;
  objc_copyWeak(&v9, &location);
  v2 = _Block_copy(&v5);
  v3 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:{v2, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __75__SFStartPageCustomizationViewController_makeCustomizationItemRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v6 setOn:{objc_msgSend(v7, "isEnabled")}];
    [v6 setDelegate:WeakRetained];
    v9 = [v6 defaultContentConfiguration];
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = [v7 title];
    v12 = sectionTextAttributes();
    v13 = [v10 initWithString:v11 attributes:v12];
    [v9 setAttributedText:v13];

    v14 = [v7 icon];
    [v9 setImage:v14];

    v15 = [v9 textProperties];
    v16 = [v15 color];
    v17 = [v9 imageProperties];
    [v17 setTintColor:v16];

    [v6 setContentConfiguration:v9];
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v7 identifier];
    v20 = [v18 stringWithFormat:@"%@MenuRow", v19];
    [v6 setAccessibilityIdentifier:v20];

    v21 = objc_alloc_init(MEMORY[0x1E69DC7D0]);
    [v21 setDisplayedState:0];
    [v21 setShowsVerticalSeparator:0];
    v23[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v6 setAccessories:v22];
  }
}

- (id)makeBackgroundImageToggleRegistration
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __79__SFStartPageCustomizationViewController_makeBackgroundImageToggleRegistration__block_invoke;
  v8 = &unk_1E721F900;
  objc_copyWeak(&v9, &location);
  v2 = _Block_copy(&v5);
  v3 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:{v2, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __79__SFStartPageCustomizationViewController_makeBackgroundImageToggleRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v14 setOn:{objc_msgSend(v6, "BOOLValue")}];
    [v14 setDelegate:WeakRetained];
    v8 = [v14 defaultContentConfiguration];
    v9 = _WBSLocalizedString();
    [v8 setText:v9];

    v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo"];
    [v8 setImage:v10];

    v11 = [v8 textProperties];
    v12 = [v11 color];
    v13 = [v8 imageProperties];
    [v13 setTintColor:v12];

    [v14 setContentConfiguration:v8];
    [v14 setAccessibilityIdentifier:@"backgroundImageItemIdentifierMenuRow"];
  }
}

- (id)makeSuggestionDataSourcesToggleRegistration
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __85__SFStartPageCustomizationViewController_makeSuggestionDataSourcesToggleRegistration__block_invoke;
  v8 = &unk_1E721F8D8;
  objc_copyWeak(&v9, &location);
  v2 = _Block_copy(&v5);
  v3 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:{v2, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __85__SFStartPageCustomizationViewController_makeSuggestionDataSourcesToggleRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v20 setOn:{objc_msgSend(v6, "isEnabled")}];
    [v20 setDelegate:WeakRetained];
    v8 = [v20 defaultContentConfiguration];
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = [v6 title];
    v11 = sectionTextAttributes();
    v12 = [v9 initWithString:v10 attributes:v11];
    [v8 setAttributedText:v12];

    v13 = [v6 icon];
    [v8 setImage:v13];

    v14 = [v8 textProperties];
    v15 = [v14 color];
    v16 = [v8 imageProperties];
    [v16 setTintColor:v15];

    [v20 setContentConfiguration:v8];
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v6 identifier];
    v19 = [v17 stringWithFormat:@"%@MenuRow", v18];
    [v20 setAccessibilityIdentifier:v19];
  }
}

- (id)makeSuggestionsDataSourcesHeaderRegistration
{
  v2 = [MEMORY[0x1E69DC870] registrationWithSupplementaryClass:objc_opt_class() elementKind:*MEMORY[0x1E69DDC08] configurationHandler:&__block_literal_global_129];

  return v2;
}

void __86__SFStartPageCustomizationViewController_makeSuggestionsDataSourcesHeaderRegistration__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [MEMORY[0x1E69DCC28] headerConfiguration];
  v3 = _WBSLocalizedString();
  [v2 setText:v3];

  [v4 setContentConfiguration:v2];
}

- (id)makeBackgroundImageRegistration
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __73__SFStartPageCustomizationViewController_makeBackgroundImageRegistration__block_invoke;
  v8 = &unk_1E721F970;
  objc_copyWeak(&v9, &location);
  v2 = _Block_copy(&v5);
  v3 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:{v2, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __73__SFStartPageCustomizationViewController_makeBackgroundImageRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v6 setShowsSelectionRing:{objc_msgSend(v7, "isSelected")}];
    [v6 setShowsCustomImageControls:{objc_msgSend(v7, "isCustomImage")}];
    [v6 setDelegate:WeakRetained];
    v9 = [v7 mobileAssetFileName];

    if (v9)
    {
      v10 = [v7 mobileAssetFileName];
      [v6 setMobileAssetFileName:v10];

      v11 = objc_loadWeakRetained(WeakRetained + 141);
      v12 = [v11 backgroundImageAssetControllerForCustomizationViewController:WeakRetained];
      v13 = [v7 mobileAssetFileName];
      [v6 setDownloadState:{objc_msgSend(v12, "downloadStateForFileName:", v13)}];
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __73__SFStartPageCustomizationViewController_makeBackgroundImageRegistration__block_invoke_2;
    v18 = &unk_1E721F948;
    objc_copyWeak(&v22, (a1 + 32));
    v14 = v6;
    v19 = v14;
    v21 = &v23;
    v20 = v7;
    [v20 getThumbnailImageWithCompletionHandler:&v15];
    if ((v24[3] & 1) == 0)
    {
      [v14 setImage:{0, v15, v16, v17, v18, v19}];
    }

    objc_destroyWeak(&v22);
    _Block_object_dispose(&v23, 8);
  }
}

void __73__SFStartPageCustomizationViewController_makeBackgroundImageRegistration__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      [*(a1 + 32) setImage:v9];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v7 = [WeakRetained[126] indexPathForItemIdentifier:*(a1 + 40)];
      if (v7)
      {
        v8 = [v6[125] cellForItemAtIndexPath:v7];
        [v8 setImage:v9];
      }
    }
  }
}

- (id)makeCustomizationSyncToggleRegistration
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __81__SFStartPageCustomizationViewController_makeCustomizationSyncToggleRegistration__block_invoke;
  v8 = &unk_1E721F900;
  objc_copyWeak(&v9, &location);
  v2 = _Block_copy(&v5);
  v3 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:{v2, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __81__SFStartPageCustomizationViewController_makeCustomizationSyncToggleRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v10 setOn:{objc_msgSend(v6, "BOOLValue")}];
    [v10 setDelegate:WeakRetained];
    v8 = [v10 defaultContentConfiguration];
    v9 = _WBSLocalizedString();
    [v8 setText:v9];

    [v10 setContentConfiguration:v8];
  }
}

- (id)makeCustomizationSyncFooterRegistration
{
  v2 = [MEMORY[0x1E69DC870] registrationWithSupplementaryClass:objc_opt_class() elementKind:*MEMORY[0x1E69DDC00] configurationHandler:&__block_literal_global_143];

  return v2;
}

void __81__SFStartPageCustomizationViewController_makeCustomizationSyncFooterRegistration__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 defaultContentConfiguration];
  v3 = _WBSLocalizedString();
  [v2 setText:v3];

  [v4 setContentConfiguration:v2];
}

- (id)makeFixedCustomizationItemRegistration
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __80__SFStartPageCustomizationViewController_makeFixedCustomizationItemRegistration__block_invoke;
  v8 = &unk_1E721F8D8;
  objc_copyWeak(&v9, &location);
  v2 = _Block_copy(&v5);
  v3 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:{v2, v5, v6, v7, v8}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v3;
}

void __80__SFStartPageCustomizationViewController_makeFixedCustomizationItemRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v14 setOn:{objc_msgSend(v6, "isEnabled")}];
    [v14 setDelegate:WeakRetained];
    v8 = [v14 defaultContentConfiguration];
    v9 = [v6 title];
    [v8 setText:v9];

    v10 = [v6 icon];
    [v8 setImage:v10];

    v11 = [v8 textProperties];
    v12 = [v11 color];
    v13 = [v8 imageProperties];
    [v13 setTintColor:v12];

    [v14 setContentConfiguration:v8];
  }
}

- (void)backgroundImageCellDidSelectClearButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  [WeakRetained startPageCustomizationViewController:self didSelectCustomBackgroundImage:0];

  [(SFStartPageCustomizationViewController *)self reloadDataAnimatingDifferences:1];
}

- (void)startPageCustomizationCellDidChangeValue:(id)a3
{
  v9 = a3;
  v4 = [(UICollectionView *)self->_rootCollectionView indexPathForCell:?];
  v5 = -[UICollectionViewDiffableDataSource sectionIdentifierForIndex:](self->_rootCollectionViewDataSource, "sectionIdentifierForIndex:", [v4 section]);
  if ([v5 isEqual:@"customization-sync"])
  {
    [(SFStartPageCustomizationViewController *)self _setCustomizationSyncWithValue:v9];
  }

  else if (([v5 isEqual:@"fixed-customization-items"] & 1) != 0 || (objc_msgSend(v5, "isEqual:", @"customization-items") & 1) != 0 || objc_msgSend(v5, "isEqual:", @"suggestions-data"))
  {
    v6 = [(UICollectionViewDiffableDataSource *)self->_rootCollectionViewDataSource itemIdentifierForIndexPath:v4];
    if (v6)
    {
      -[SFStartPageCustomizationViewController setCustomizationItemIdentifier:inSection:enabled:](self, "setCustomizationItemIdentifier:inSection:enabled:", v6, v5, [v9 isOn]);
      if ([v6 isEqualToString:*MEMORY[0x1E69C96C0]])
      {
        [(SFStartPageCustomizationViewController *)self reloadDataAnimatingDifferences:1];
      }
    }
  }

  else if ([v5 isEqual:@"background-image"])
  {
    v7 = [v9 isOn];
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained startPageCustomizationViewController:self didModifyBackgroundImageEnabled:v7];

    self->_backgroundSectionUnconditionallyVisible = v7;
    [(SFStartPageCustomizationViewController *)self reloadDataAnimatingDifferences:1];
  }
}

- (void)_setCustomizationSyncWithValue:(id)a3
{
  v4 = a3;
  if ([v4 isOn])
  {
    WeakRetained = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:WeakRetained message:v6 preferredStyle:1];
    v8 = MEMORY[0x1E69DC648];
    v9 = _WBSLocalizedString();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__SFStartPageCustomizationViewController__setCustomizationSyncWithValue___block_invoke;
    v20[3] = &unk_1E721F340;
    v20[4] = self;
    v10 = [v8 actionWithTitle:v9 style:0 handler:v20];
    [v7 addAction:v10];

    v11 = [MEMORY[0x1E69C8860] currentDevice];
    [v11 deviceClass];

    v12 = _WBSLocalizedString();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__SFStartPageCustomizationViewController__setCustomizationSyncWithValue___block_invoke_2;
    v19[3] = &unk_1E721F340;
    v19[4] = self;
    v13 = [MEMORY[0x1E69DC648] actionWithTitle:v12 style:0 handler:v19];
    [v7 addAction:v13];

    v14 = MEMORY[0x1E69DC648];
    v15 = _WBSLocalizedString();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__SFStartPageCustomizationViewController__setCustomizationSyncWithValue___block_invoke_3;
    v17[3] = &unk_1E721F340;
    v18 = v4;
    v16 = [v14 actionWithTitle:v15 style:1 handler:v17];
    [v7 addAction:v16];

    [(SFStartPageCustomizationViewController *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    [WeakRetained startPageCustomizationViewControllerDidDisableCloudSync:self];
  }
}

void __73__SFStartPageCustomizationViewController__setCustomizationSyncWithValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1128));
  [WeakRetained startPageCustomizationViewControllerDidEnableCloudSync:*(a1 + 32) withPreference:0];
}

void __73__SFStartPageCustomizationViewController__setCustomizationSyncWithValue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1128));
  [WeakRetained startPageCustomizationViewControllerDidEnableCloudSync:*(a1 + 32) withPreference:1];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_rootCollectionView != v6)
  {
    [(UICollectionView *)v6 deselectItemAtIndexPath:v7 animated:1];
    v8 = [(UICollectionViewDiffableDataSource *)self->_backgroundImagesCollectionViewDataSource itemIdentifierForIndexPath:v7];
    self->_hasGeneratedBackgroundImage = 0;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v10 = [v8 imageDescription];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 url];
      [v11 luminance];
      [WeakRetained startPageCustomizationViewController:self didSelectBuiltInBackgroundImageAtURL:v12 precomputedLuminance:?];

      [(SFStartPageCustomizationViewController *)self reloadDataAnimatingDifferences:1];
    }

    else
    {
      v13 = [v8 profileIdentifier];

      if (v13)
      {
        self->_hasGeneratedBackgroundImage = 1;
        v14 = [MEMORY[0x1E69C9850] defaultManager];
        v27 = [WeakRetained profileProviderForCustomizationViewController:self];
        v15 = [v27 activeProfile];
        v26 = [v15 identifier];
        v25 = [v15 symbolImageName];
        v16 = [v15 color];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __82__SFStartPageCustomizationViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
        v28[3] = &unk_1E721FA30;
        v17 = v14;
        v29 = v17;
        v30 = self;
        v18 = v26;
        v31 = v18;
        v19 = v27;
        v32 = v19;
        [v17 generateProfileSpecificBackgroundImageWithSymbol:v25 forProfile:v18 withColor:v16 completionHandler:v28];
      }

      else
      {
        v20 = [v8 mobileAssetFileName];

        if (v20)
        {
          mobileAssetFileNameToItemProvider = self->_mobileAssetFileNameToItemProvider;
          v22 = [v8 mobileAssetFileName];
          v23 = [(NSMutableDictionary *)mobileAssetFileNameToItemProvider objectForKeyedSubscript:v22];
          [WeakRetained startPageCustomizationViewController:self didSelectMobileAssetBackgroundImageWithProvider:v23];

          v24 = [(UICollectionView *)v6 cellForItemAtIndexPath:v7];
          [(SFStartPageCustomizationViewController *)self _didSelectMobileAssetBackgroundImageCell:v24];
        }

        else
        {
          [(SFStartPageCustomizationViewController *)self showPhotoPicker];
        }
      }
    }
  }
}

void __82__SFStartPageCustomizationViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__SFStartPageCustomizationViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
  v11[3] = &unk_1E721FA08;
  v10 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v10;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  [v4 cacheImageFromURL:a2 completion:v11];
}

void __82__SFStartPageCustomizationViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SFStartPageCustomizationViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3;
    block[3] = &unk_1E721F9E0;
    v8 = *(a1 + 32);
    v4 = *(&v8 + 1);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v10 = v8;
    v11 = v7;
    v12 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __82__SFStartPageCustomizationViewController_collectionView_didSelectItemAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _backgroundImageIdentifier];
  if ([*(a1 + 40) isEqualToString:*MEMORY[0x1E69C8B58]])
  {
    v3 = 0;
  }

  else
  {
    v4 = [*(a1 + 48) activeTabGroup];
    v3 = [v4 isNamed] ^ 1;
  }

  objc_initWeak(&location, *(a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__SFStartPageCustomizationViewController_collectionView_didSelectItemAtIndexPath___block_invoke_4;
  v6[3] = &unk_1E721F9B8;
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 64);
  [v5 processImageForIdentifier:v2 isGeneratedImage:1 withinProfile:v3 completionHandler:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __82__SFStartPageCustomizationViewController_collectionView_didSelectItemAtIndexPath___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) updateProfileWithIdentifier:*(a1 + 40) persist:1 usingBlock:&__block_literal_global_171 completionHandler:0];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [WeakRetained _updateGeneratedBackgroundImageItemProviderWithImage:*(a1 + 48)];
    [WeakRetained reloadDataAnimatingDifferences:0];
  }
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(UICollectionViewDiffableDataSource *)self->_rootCollectionViewDataSource indexForSectionIdentifier:@"customization-items"];
  if ([v11 section] != v12)
  {
    if ([v11 section] <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = [v9 numberOfItemsInSection:{objc_msgSend(v10, "section")}] - 1;
    }

    v14 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:v12];

    v11 = v14;
  }

  return v11;
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v10 dismissViewControllerAnimated:1 completion:0];
  if ([v6 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v6 objectAtIndexedSubscript:0];
    v9 = [v8 itemProvider];
    [WeakRetained startPageCustomizationViewController:self didSelectCustomBackgroundImage:v9];

    [(SFStartPageCustomizationViewController *)self reloadDataAnimatingDifferences:1];
  }
}

- (void)showPhotoPicker
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v3 = getPHPickerConfigurationClass(void)::softClass;
  v20 = getPHPickerConfigurationClass(void)::softClass;
  if (!getPHPickerConfigurationClass(void)::softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = ___ZL29getPHPickerConfigurationClassv_block_invoke;
    v15 = &unk_1E721C528;
    v16 = &v17;
    ___ZL29getPHPickerConfigurationClassv_block_invoke(&v12);
    v3 = v18[3];
  }

  v4 = v3;
  _Block_object_dispose(&v17, 8);
  v5 = [[v3 alloc] init];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v6 = getPHPickerFilterClass(void)::softClass;
  v20 = getPHPickerFilterClass(void)::softClass;
  if (!getPHPickerFilterClass(void)::softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = ___ZL22getPHPickerFilterClassv_block_invoke;
    v15 = &unk_1E721C528;
    v16 = &v17;
    ___ZL22getPHPickerFilterClassv_block_invoke(&v12);
    v6 = v18[3];
  }

  v7 = v6;
  _Block_object_dispose(&v17, 8);
  v8 = [v6 imagesFilter];
  [v5 setFilter:v8];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v9 = getPHPickerViewControllerClass(void)::softClass;
  v20 = getPHPickerViewControllerClass(void)::softClass;
  if (!getPHPickerViewControllerClass(void)::softClass)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = ___ZL30getPHPickerViewControllerClassv_block_invoke;
    v15 = &unk_1E721C528;
    v16 = &v17;
    ___ZL30getPHPickerViewControllerClassv_block_invoke(&v12);
    v9 = v18[3];
  }

  v10 = v9;
  _Block_object_dispose(&v17, 8);
  v11 = [[v9 alloc] initWithConfiguration:v5];
  [v11 setDelegate:self];
  [(SFStartPageCustomizationViewController *)self presentViewController:v11 animated:1 completion:0];
}

- (void)_didSelectMobileAssetBackgroundImageCell:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [v4 mobileAssetFileName];
  lastSelectedMobileAssetFileName = self->_lastSelectedMobileAssetFileName;
  self->_lastSelectedMobileAssetFileName = v6;

  v8 = [WeakRetained backgroundImageAssetControllerForCustomizationViewController:self];
  v9 = [v4 mobileAssetFileName];
  v10 = [v8 downloadStateForFileName:v9];

  if (v10 != 1)
  {
    if (v10 == 2)
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [v11 safari_startPageBackgroundImageMobileAssetFolderURL];
      v13 = [v4 mobileAssetFileName];
      v14 = [v12 URLByAppendingPathComponent:v13];

      [(SFStartPageCustomizationViewController *)self _updateImageWithURL:v14];
    }

    else
    {
      [v4 setDownloadState:1];
      v15 = [WeakRetained backgroundImageAssetControllerForCustomizationViewController:self];
      v16 = [v4 mobileAssetFileName];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __83__SFStartPageCustomizationViewController__didSelectMobileAssetBackgroundImageCell___block_invoke;
      v17[3] = &unk_1E721FA80;
      v18 = v4;
      v19 = self;
      [v15 downloadMobileAssetBackgroundImage:v16 completionHandler:v17];
    }
  }
}

void __83__SFStartPageCustomizationViewController__didSelectMobileAssetBackgroundImageCell___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__SFStartPageCustomizationViewController__didSelectMobileAssetBackgroundImageCell___block_invoke_2;
  v11[3] = &unk_1E721FA58;
  v12 = v5;
  v13 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __83__SFStartPageCustomizationViewController__didSelectMobileAssetBackgroundImageCell___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2 && !a1[5])
  {
    v4 = *(a1[7] + 1112);
    v5 = [v2 lastPathComponent];
    LODWORD(v4) = [v4 isEqualToString:v5];

    if (v4)
    {
      v6 = a1[7];
      v7 = a1[4];

      [v6 _updateImageWithURL:v7];
    }
  }

  else
  {
    v3 = a1[6];

    [v3 setDownloadState:3];
  }
}

- (void)_updateImageWithURL:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained profileProviderForCustomizationViewController:self];

  v7 = [v6 activeProfile];
  v8 = [v7 identifier];
  v9 = [MEMORY[0x1E69C9850] defaultManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__SFStartPageCustomizationViewController__updateImageWithURL___block_invoke;
  v12[3] = &unk_1E721FAA8;
  v12[4] = self;
  v10 = v8;
  v13 = v10;
  v11 = v6;
  v14 = v11;
  [v9 cacheImageFromURL:v4 completion:v12];
}

void __62__SFStartPageCustomizationViewController__updateImageWithURL___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SFStartPageCustomizationViewController__updateImageWithURL___block_invoke_2;
    block[3] = &unk_1E721F620;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __62__SFStartPageCustomizationViewController__updateImageWithURL___block_invoke_2(id *a1)
{
  v2 = [a1[4] _backgroundImageIdentifier];
  if ([a1[5] isEqualToString:*MEMORY[0x1E69C8B58]])
  {
    v3 = 0;
  }

  else
  {
    v4 = [a1[6] activeTabGroup];
    v3 = [v4 isNamed] ^ 1;
  }

  v5 = [MEMORY[0x1E69C9850] defaultManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__SFStartPageCustomizationViewController__updateImageWithURL___block_invoke_3;
  v8[3] = &unk_1E721F620;
  v9 = a1[6];
  v6 = a1[5];
  v7 = a1[4];
  v10 = v6;
  v11 = v7;
  [v5 processImageForIdentifier:v2 isGeneratedImage:0 withinProfile:v3 completionHandler:v8];
}

uint64_t __62__SFStartPageCustomizationViewController__updateImageWithURL___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) updateProfileWithIdentifier:*(a1 + 40) persist:1 usingBlock:&__block_literal_global_177 completionHandler:0];
  v3 = *(a1 + 48);

  return [v3 reloadDataAnimatingDifferences:0];
}

- (SFStartPageCustomizationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end