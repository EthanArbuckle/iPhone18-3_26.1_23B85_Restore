@interface NTKGreenfieldCompanionSharePhotosPickerViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (NTKGreenfieldCompanionSharePhotosPickerViewController)initWithPhotosFace:(id)face;
- (NTKGreenfieldCompanionSharePhotosPickerViewControllerDelegate)delegate;
- (id)_queue_fetchAssets;
- (id)_queue_fetchOptions;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_createPhotosEditorWithCompletionBlock:(id)block;
- (void)_didTapDeselectAll;
- (void)_didTapOnDoneButton;
- (void)_handleDidFinishWithNewResourcesDirectory:(id)directory;
- (void)_handleEditorDidCreated;
- (void)_handleSelectionChanged;
- (void)_queue_fetchAssets;
- (void)_setupCollectionView;
- (void)_setupNavigationItems;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
@end

@implementation NTKGreenfieldCompanionSharePhotosPickerViewController

- (NTKGreenfieldCompanionSharePhotosPickerViewController)initWithPhotosFace:(id)face
{
  faceCopy = face;
  v6 = objc_alloc_init(NTKCFaceDetailCustomPhotosFlowLayout);
  v15.receiver = self;
  v15.super_class = NTKGreenfieldCompanionSharePhotosPickerViewController;
  v7 = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)&v15 initWithCollectionViewLayout:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_originalFace, face);
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    selectedIndexes = v8->_selectedIndexes;
    v8->_selectedIndexes = indexSet;

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v12 = dispatch_queue_create("com.apple.NanoTimeKit.NTKGreenfieldCompanionSharePhotosPickerViewController", v11);
    queue = v8->_queue;
    v8->_queue = v12;
  }

  return v8;
}

- (void)viewDidLoad
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = NTKGreenfieldCompanionSharePhotosPickerViewController;
  [(NTKGreenfieldCompanionSharePhotosPickerViewController *)&v17 viewDidLoad];
  v3 = NTKClockFaceLocalizedString(@"GREENFIELD_SHARING_PHOTOS_NAV_PROMPT_LOADING", @"Share up to %d photos from this album");
  v4 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v3, -[NSMutableIndexSet count](self->_selectedIndexes, "count")];
  navigationItem = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self navigationItem];
  [navigationItem setPrompt:v4];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  navigationController = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self navigationController];
  [navigationController setToolbarHidden:0];

  v10 = NTKCCustomizationLocalizedString(@"PHOTOS_DESELECT_ALL", @"Deselect All", v9);
  v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v10 style:0 target:self action:sel__didTapDeselectAll];
  v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self setToolbarItems:v13];

  [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self _setupNavigationItems];
  [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self _setupCollectionView];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__NTKGreenfieldCompanionSharePhotosPickerViewController_viewDidLoad__block_invoke;
  v14[3] = &unk_27877DC58;
  objc_copyWeak(&v15, &location);
  [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self _createPhotosEditorWithCompletionBlock:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __68__NTKGreenfieldCompanionSharePhotosPickerViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEditorDidCreated];
}

- (void)_setupNavigationItems
{
  v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__didTapOnCancelButton];
  navigationItem = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v15];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__didTapOnDoneButton];
  navigationItem2 = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v4];

  if (NTKPhotosIsCustomPhotosFace(self->_originalFace))
  {
    v6 = @"EDIT_OPTION_LABEL_PHOTOS_CUSTOM_COMPANION";
    v7 = @"Photos";
LABEL_5:
    v8 = NTKCompanionClockFaceLocalizedString(v6, v7);
    [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self setTitle:v8];
LABEL_6:

    goto LABEL_7;
  }

  if (NTKPhotosIsMemoryPhotosFace(self->_originalFace))
  {
    v6 = @"EDIT_OPTION_LABEL_PHOTOS_MEMORY_COMPANION";
    v7 = @"Dynamic";
    goto LABEL_5;
  }

  if (NTKPhotosIsSyncedAlbumPhotosFace(self->_originalFace))
  {
    v9 = [NTKCompanionSyncedAlbumEditor alloc];
    resourceDirectory = [(NTKFace *)self->_originalFace resourceDirectory];
    device = [(NTKFace *)self->_originalFace device];
    v8 = [(NTKCompanionSinglePHAssetEditor *)v9 initWithResourceDirectory:resourceDirectory forDevice:device shouldFinalize:0];

    albumIdentifier = [(NTKCompanionSinglePHAssetEditor *)v8 albumIdentifier];
    device2 = [(NTKFace *)self->_originalFace device];
    v14 = NTKAlbumNameForLocalIdentifier(albumIdentifier, device2);
    [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self setTitle:v14];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)_didTapOnDoneButton
{
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v3 startAnimating];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v3];
  navigationItem = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  v6 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, -[NTKCompanionCustomPhotosEditor photosCount](self->_editor, "photosCount")}];
  [v6 removeIndexes:self->_selectedIndexes];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__NTKGreenfieldCompanionSharePhotosPickerViewController__didTapOnDoneButton__block_invoke;
  v14[3] = &unk_2787813B0;
  v14[4] = self;
  [v6 enumerateIndexesWithOptions:2 usingBlock:v14];
  objc_initWeak(&location, self);
  if ([(NTKCompanionResourceDirectoryEditor *)self->_editor state]== 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__NTKGreenfieldCompanionSharePhotosPickerViewController__didTapOnDoneButton__block_invoke_2;
    v11[3] = &unk_27877DC58;
    v7 = &v12;
    objc_copyWeak(&v12, &location);
    [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self dismissViewControllerAnimated:1 completion:v11];
  }

  else
  {
    editor = self->_editor;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __76__NTKGreenfieldCompanionSharePhotosPickerViewController__didTapOnDoneButton__block_invoke_3;
    v9[3] = &unk_2787813D8;
    v7 = &v10;
    objc_copyWeak(&v10, &location);
    [(NTKCompanionCustomPhotosEditor *)editor finalizeWithCompletion:v9];
  }

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __76__NTKGreenfieldCompanionSharePhotosPickerViewController__didTapOnDoneButton__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 companionSharePhotosPickerViewController:v3 didFinishWithFace:v3[129]];

    WeakRetained = v3;
  }
}

void __76__NTKGreenfieldCompanionSharePhotosPickerViewController__didTapOnDoneButton__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__NTKGreenfieldCompanionSharePhotosPickerViewController__didTapOnDoneButton__block_invoke_4;
    v6[3] = &unk_27877E438;
    v6[4] = WeakRetained;
    v7 = v3;
    [v5 dismissViewControllerAnimated:1 completion:v6];
  }
}

- (void)_createPhotosEditorWithCompletionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__NTKGreenfieldCompanionSharePhotosPickerViewController__createPhotosEditorWithCompletionBlock___block_invoke;
  v7[3] = &unk_27877FF60;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(queue, v7);
}

void __96__NTKGreenfieldCompanionSharePhotosPickerViewController__createPhotosEditorWithCompletionBlock___block_invoke(uint64_t a1)
{
  v11 = *(*(a1 + 32) + 1032);
  v2 = [*(*(a1 + 32) + 1032) device];
  IsCustomPhotosFace = NTKPhotosIsCustomPhotosFace(*(*(a1 + 32) + 1032));
  v4 = [NTKCompanionCustomPhotosEditor alloc];
  v5 = v4;
  if (IsCustomPhotosFace)
  {
    v6 = [v11 resourceDirectory];
    v7 = [(NTKCompanionCustomPhotosEditor *)v5 initWithResourceDirectory:v6 forDevice:v2];
  }

  else
  {
    v7 = [(NTKCompanionCustomPhotosEditor *)v4 initWithResourceDirectory:0 forDevice:v2];
    v6 = [*(a1 + 32) _queue_fetchAssets];
    [(NTKCompanionCustomPhotosEditor *)v7 addAssetsFromAssetList:v6 maxPhotosCount:-1];
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 1040);
  *(v8 + 1040) = v7;
  v10 = v7;

  dispatch_async(MEMORY[0x277D85CD0], *(a1 + 40));
}

- (id)_queue_fetchAssets
{
  v52 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  device = [(NTKFace *)self->_originalFace device];
  if (NTKPhotosIsSyncedAlbumPhotosFace(self->_originalFace))
  {
    resourceDirectory = [(NTKFace *)self->_originalFace resourceDirectory];
    v5 = [NTKPhotosReader readerForResourceDirectory:resourceDirectory];

    assetCollectionIdentifier = [v5 assetCollectionIdentifier];
    if (assetCollectionIdentifier)
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    if (!NTKPhotosIsMemoryPhotosFace(self->_originalFace))
    {
      assetCollectionIdentifier = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(assetCollectionIdentifier, OS_LOG_TYPE_ERROR))
      {
        [(NTKGreenfieldCompanionSharePhotosPickerViewController *)&self->_originalFace _queue_fetchAssets];
      }

      v21 = MEMORY[0x277CBEBF8];
      goto LABEL_44;
    }

    assetCollectionIdentifier = 0;
    v6 = 3;
  }

  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v49 = v6;
    v50 = 2112;
    v51 = assetCollectionIdentifier;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Fetching assets with collectionTarget:%ld albumIdentifier:%@", buf, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x277D2BA48]);
  nrDevice = [device nrDevice];
  v10 = [v8 initWithCollectionTarget:v6 device:nrDevice];

  if (!assetCollectionIdentifier || v6 == 3)
  {
    assetCollections = [v10 assetCollections];
    anyObject = [assetCollections anyObject];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    assetCollections = [v10 assetCollections];
    anyObject = [assetCollections countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (anyObject)
    {
      selfCopy = self;
      v35 = v10;
      v36 = device;
      v13 = *v43;
      while (2)
      {
        for (i = 0; i != anyObject; i = i + 1)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(assetCollections);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          v16 = objc_alloc(MEMORY[0x277CCAD78]);
          v17 = [MEMORY[0x277CD9840] uuidFromLocalIdentifier:assetCollectionIdentifier];
          v18 = [v16 initWithUUIDString:v17];

          v19 = NTK_npto_uuid(v15);
          v20 = [v18 isEqual:v19];

          if (v20)
          {
            anyObject = v15;

            goto LABEL_26;
          }
        }

        anyObject = [assetCollections countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (anyObject)
        {
          continue;
        }

        break;
      }

LABEL_26:
      device = v36;
    }
  }

  v22 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = anyObject;
    _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "Fetching assets with assetCollection: %@", buf, 0xCu);
  }

  if (anyObject)
  {
    _queue_fetchOptions = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self _queue_fetchOptions];
    v24 = [v10 fetchAssetsInAssetCollection:anyObject options:_queue_fetchOptions];

    v25 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = v24;
    v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [v25 addObject:{*(*(&v38 + 1) + 8 * j), selfCopy, v35, v36}];
        }

        v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v28);
    }

    v31 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v25 count];
      *buf = 134217984;
      v49 = v32;
      _os_log_impl(&dword_22D9C5000, v31, OS_LOG_TYPE_DEFAULT, "Fetching assets. Found %lu assets.", buf, 0xCu);
    }

    v21 = [v25 copy];
  }

  else
  {
    v26 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(NTKGreenfieldCompanionSharePhotosPickerViewController *)v26 _queue_fetchAssets];
    }

    v21 = MEMORY[0x277CBEBF8];
  }

LABEL_44:

  return v21;
}

- (id)_queue_fetchOptions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD9880]);
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v2 setSortDescriptors:v4];

  v7 = *MEMORY[0x277CD9AE8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
  [v2 addFetchPropertySets:v5];

  return v2;
}

- (void)_setupCollectionView
{
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  collectionView = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self collectionView];
  [collectionView setBackgroundColor:systemBackgroundColor];

  collectionView2 = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self collectionView];
  v6 = objc_opt_class();
  v7 = +[NTKCPhotoListCell reuseIdentifier];
  [collectionView2 registerClass:v6 forCellWithReuseIdentifier:v7];

  collectionView3 = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self collectionView];
  [collectionView3 setAlwaysBounceVertical:1];
}

- (void)_handleSelectionChanged
{
  v10 = NTKClockFaceLocalizedString(@"GREENFIELD_SHARING_PHOTOS_NAV_PROMPT", @"Share up to %d photos from this album (%@)");
  v3 = NTKClockFaceLocalizedString(@"GREENFIELD_SHARING_PHOTOS_NAV_PROMPT_SELECTED_COUNT", @"%lu Selected");
  v4 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v3, -[NSMutableIndexSet count](self->_selectedIndexes, "count")];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:v10, 24, v4];
  navigationItem = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self navigationItem];
  [navigationItem setPrompt:v5];

  v7 = [(NSMutableIndexSet *)self->_selectedIndexes count]!= 0;
  navigationItem2 = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:v7];
}

- (void)_handleDidFinishWithNewResourcesDirectory:(id)directory
{
  directoryCopy = directory;
  if (directoryCopy)
  {
    deepCopy = [(NTKFace *)self->_originalFace deepCopy];
    [deepCopy setResourceDirectory:directoryCopy];
    device = [(NTKFace *)self->_originalFace device];
    v6 = [NTKPhotosContentEditOption optionWithPhotosContent:1 forDevice:device];
    [deepCopy selectOption:v6 forCustomEditMode:12 slot:0];
    delegate = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self delegate];
    [delegate companionSharePhotosPickerViewController:self didFinishWithFace:deepCopy];
  }

  else
  {
    deepCopy = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self delegate];
    [deepCopy companionSharePhotosPickerViewController:self didFinishWithFace:0];
  }
}

- (void)_handleEditorDidCreated
{
  photosCount = [(NTKCompanionCustomPhotosEditor *)self->_editor photosCount];
  if (photosCount >= 0x18)
  {
    v4 = 24;
  }

  else
  {
    v4 = photosCount;
  }

  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      [(NSMutableIndexSet *)self->_selectedIndexes addIndex:i];
    }
  }

  [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self _handleSelectionChanged];
  collectionView = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)_didTapDeselectAll
{
  v15 = *MEMORY[0x277D85DE8];
  [(NSMutableIndexSet *)self->_selectedIndexes removeAllIndexes];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  collectionView = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v5 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setSelected:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self _handleSelectionChanged];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  collectionView = [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self collectionView];
  v9 = +[NTKCPhotoListCell reuseIdentifier];
  v10 = [collectionView dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  item = [pathCopy item];
  [v10 setIndex:item];
  objc_initWeak(&location, self);
  editor = self->_editor;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __95__NTKGreenfieldCompanionSharePhotosPickerViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v19 = &unk_278781400;
  v13 = v10;
  v20 = v13;
  v21[1] = item;
  objc_copyWeak(v21, &location);
  [(NTKCompanionCustomPhotosEditor *)editor imageAndCropForPhotoAtIndex:item completion:&v16];
  [v13 setPhoto:{0, v16, v17, v18, v19}];
  [v13 setCrop:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v13 setSelected:{-[NSMutableIndexSet containsIndex:](self->_selectedIndexes, "containsIndex:", item)}];
  v14 = v13;
  objc_destroyWeak(v21);

  objc_destroyWeak(&location);

  return v14;
}

void __95__NTKGreenfieldCompanionSharePhotosPickerViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2, double x, double y, double width, double height)
{
  v11 = a2;
  if ([*(a1 + 32) index] == *(a1 + 48))
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (!CGRectIsEmpty(v17))
    {
      [v11 scale];
      v13 = 1.0 / v12;
      [v11 scale];
      CGAffineTransformMakeScale(&v16, v13, 1.0 / v14);
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      v19 = CGRectApplyAffineTransform(v18, &v16);
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
    }

    [*(a1 + 32) setPhoto:v11];
    [*(a1 + 32) setCrop:{x, y, width, height}];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [*(a1 + 32) setSelected:{objc_msgSend(WeakRetained[131], "containsIndex:", *(a1 + 48))}];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  item = [pathCopy item];
  v9 = [viewCopy cellForItemAtIndexPath:pathCopy];

  if (([v9 isSelected] & 1) != 0 || -[NSMutableIndexSet count](self->_selectedIndexes, "count") < 0x18)
  {
    [v9 setSelected:{objc_msgSend(v9, "isSelected") ^ 1}];
    isSelected = [v9 isSelected];
    selectedIndexes = self->_selectedIndexes;
    if (isSelected)
    {
      [(NSMutableIndexSet *)selectedIndexes addIndex:item];
    }

    else
    {
      [(NSMutableIndexSet *)selectedIndexes removeIndex:item];
    }

    [(NTKGreenfieldCompanionSharePhotosPickerViewController *)self _handleSelectionChanged];
  }

  return 0;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  editor = self->_editor;
  indexPathCopy = indexPath;
  item = [path item];
  item2 = [indexPathCopy item];

  [(NTKCompanionCustomPhotosEditor *)editor movePhotoAtIndex:item toIndex:item2];
}

- (NTKGreenfieldCompanionSharePhotosPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_queue_fetchAssets
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Can't handle photos face: %@", &v3, 0xCu);
}

@end