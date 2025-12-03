@interface MUPlacePictureItemSectionController
- (MUPlacePictureItemSectionController)initWithMapItem:(id)item annotatedList:(id)list presentingViewController:(id)controller;
- (MUPlacePictureItemSectionControllerDelegate)pictureItemDelegate;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)_performPunchout;
- (void)_presentPhotoGalleryForPhotoIndex:(unint64_t)index;
- (void)_setupSubviews;
- (void)placePhotoGallery:(id)gallery willCloseAtIndex:(unint64_t)index;
- (void)placeTileCollectionView:(id)view didTapOnViewModel:(id)model;
- (void)setActive:(BOOL)active;
@end

@implementation MUPlacePictureItemSectionController

- (MUPlacePictureItemSectionControllerDelegate)pictureItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureItemDelegate);

  return WeakRetained;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = controllerCopy;
  viewControllers = [v5 viewControllers];
  firstObject = [viewControllers firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    viewControllers2 = [v5 viewControllers];
    firstObject2 = [viewControllers2 firstObject];

    if (firstObject2)
    {
      indexOfVisibleView = [firstObject2 indexOfVisibleView];
      pictureItemContainer = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
      pictureItems = [pictureItemContainer pictureItems];
      v14 = [pictureItems count];

      if (indexOfVisibleView >= v14)
      {
        v19 = 0;
      }

      else
      {
        v15 = [(MUPlaceTilesView *)self->_tilesView imageViewForIndex:indexOfVisibleView];
        v16 = objc_alloc(MEMORY[0x1E69DCAE0]);
        image = [v15 image];
        v18 = [v16 initWithImage:image];

        [v18 setContentMode:{objc_msgSend(v15, "contentMode")}];
        v19 = [[MUPhotoGalleryTransitionAnimator alloc] initWithView:v15 transitionView:v18];
      }

      [(MUPhotoGalleryTransitionAnimator *)v19 setDelegate:self];
      goto LABEL_10;
    }

LABEL_6:
    v19 = 0;
    goto LABEL_11;
  }

  v19 = 0;
  firstObject2 = v5;
LABEL_10:

LABEL_11:

  return v19;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
  image = [(UIImageView *)self->_imageViewForTransition image];
  v8 = [v6 initWithImage:image];

  [v8 setContentMode:{-[UIImageView contentMode](self->_imageViewForTransition, "contentMode")}];
  v9 = [[MUPhotoGalleryTransitionAnimator alloc] initWithView:self->_imageViewForTransition transitionView:v8];
  [(MUPhotoGalleryTransitionAnimator *)v9 setDelegate:self];

  return v9;
}

- (void)placePhotoGallery:(id)gallery willCloseAtIndex:(unint64_t)index
{
  pictureItemContainer = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
  pictureItems = [pictureItemContainer pictureItems];
  v8 = [pictureItems count];

  if (v8 <= index)
  {
    pictureItemContainer2 = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
    pictureItems2 = [pictureItemContainer2 pictureItems];
    v12 = [pictureItems2 count] + 1;

    if (v12 <= index)
    {
      accessoryView = 0;
    }

    else
    {
      accessoryView = [(MUPlaceTilesView *)self->_tilesView accessoryView];
    }
  }

  else
  {
    accessoryView = [(MUPlaceTilesView *)self->_tilesView imageViewForIndex:index];
  }

  tilesView = self->_tilesView;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__MUPlacePictureItemSectionController_placePhotoGallery_willCloseAtIndex___block_invoke;
  v15[3] = &unk_1E821B950;
  v16 = accessoryView;
  v14 = accessoryView;
  [(MUPlaceTilesView *)tilesView enumerateImageViewsWithBlock:v15];
  [(MUPlaceTilesView *)self->_tilesView scrollToViewAtIndex:index];
}

uint64_t __74__MUPlacePictureItemSectionController_placePhotoGallery_willCloseAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = 1.0;
  if (*(a1 + 32) == a2)
  {
    v2 = 0.0;
  }

  return [a2 setAlpha:v2];
}

- (void)_presentPhotoGalleryForPhotoIndex:(unint64_t)index
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pictureItemContainer = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
  pictureItems = [pictureItemContainer pictureItems];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73__MUPlacePictureItemSectionController__presentPhotoGalleryForPhotoIndex___block_invoke;
  v24[3] = &unk_1E821B928;
  v8 = v5;
  v25 = v8;
  [pictureItems enumerateObjectsUsingBlock:v24];

  if ([v8 count])
  {
    pictureItemContainer2 = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
    allowFullScreenPhoto = [pictureItemContainer2 allowFullScreenPhoto];

    if (allowFullScreenPhoto)
    {
      [(MUPlacePictureItemSectionController *)self _captureUserAction:6052];
      v11 = [MUPlacePhotoGalleryViewController alloc];
      v12 = [v8 copy];
      accessoryView = [(MUPlaceTilesView *)self->_tilesView accessoryView];
      mapItem = [(MUPlaceSectionController *)self mapItem];
      v15 = [(MUPlacePhotoGalleryViewController *)v11 initWithPhotos:v12 additionalView:accessoryView scrollToIndex:index mapItem:mapItem delegate:self];
      photoGalleryViewController = self->_photoGalleryViewController;
      self->_photoGalleryViewController = v15;

      v17 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_photoGalleryViewController];
      navigationController = [v17 navigationController];
      [navigationController setNavigationBarHidden:1 animated:0];

      [v17 setModalPresentationStyle:5];
      [v17 setTransitioningDelegate:self];
      mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
      LODWORD(accessoryView) = [mEMORY[0x1E696F3B8] userInterfaceIdiom];

      if (accessoryView == 2)
      {
        [(MUPlacePhotoGalleryViewController *)self->_photoGalleryViewController setPanAndSwipeToDismissGestureEnabled:0];
        [v17 setModalPresentationStyle:8];
        WeakRetained = [(MUPlacePictureItemSectionController *)self pictureItemDelegate];
        [WeakRetained pictureItemSectionController:self requestsSceneActivationWithPhotoGallery:self->_photoGalleryViewController];
      }

      else
      {
        v21 = [(MUPlaceTilesView *)self->_tilesView imageViewForIndex:index];
        imageViewForTransition = self->_imageViewForTransition;
        self->_imageViewForTransition = v21;

        [v17 setModalPresentationStyle:5];
        [v17 setTransitioningDelegate:self];
        WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
        [WeakRetained presentViewController:v17 animated:1 completion:0];
      }
    }

    else
    {
      v17 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_INFO, "Picture item container does not allow full screen photo. Bail early", v23, 2u);
      }
    }
  }
}

void __73__MUPlacePictureItemSectionController__presentPhotoGalleryForPhotoIndex___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 photo];
  if (v3)
  {
    v4 = v3;
    v5 = [v8 pictureItemPhotoType];

    if (v5 == 1)
    {
      v6 = *(a1 + 32);
      v7 = [objc_alloc(MEMORY[0x1E696F288]) initWithPictureItem:v8];
      [v6 addObject:v7];
    }
  }
}

- (void)_performPunchout
{
  v12 = *MEMORY[0x1E69E9840];
  [(MUPlacePictureItemSectionController *)self _captureUserAction:6054];
  v3 = self->_annotatedList;
  v4 = mkAttributionForAnnotatedList();
  v5 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    providerName = [v4 providerName];
    v10 = 138412290;
    v11 = providerName;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "Attempting to punch our with attribution with provider %@", &v10, 0xCu);
  }

  v7 = MEMORY[0x1E696F198];
  attributionURLs = [v4 attributionURLs];
  [v7 launchAttributionURLs:attributionURLs withAttribution:v4 completionHandler:&__block_literal_global_23963];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)placeTileCollectionView:(id)view didTapOnViewModel:(id)model
{
  tilesView = self->_tilesView;
  modelCopy = model;
  viewModels = [(MUPlaceTilesView *)tilesView viewModels];
  v8 = [viewModels indexOfObject:modelCopy];

  pictureItemContainer = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
  pictureItems = [pictureItemContainer pictureItems];
  v12 = [pictureItems objectAtIndex:v8];

  pictureItemPhotoType = [v12 pictureItemPhotoType];
  if ((pictureItemPhotoType - 2) >= 2)
  {
    if (pictureItemPhotoType == 1)
    {
      [(MUPlacePictureItemSectionController *)self _presentPhotoGalleryForPhotoIndex:v8];
    }
  }

  else
  {
    [(MUPlacePictureItemSectionController *)self _performPunchout];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(MUPlaceTilesView *)self->_tilesView displayPlaceTiles];
  }
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    annotatedList = self->_annotatedList;
    selfCopy = self;
    v6 = annotatedList;
    v7 = mkAttributionForAnnotatedList();
    title = [(GEOAnnotatedItemList *)v6 title];
    v9 = [MUPlaceSectionHeaderViewModel viewModelForTitle:title attribution:v7 target:selfCopy action:sel__performPunchout];

    [(MUPlaceSectionHeaderViewModel *)v9 setTarget:selfCopy selector:sel__performPunchout];
    v10 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v9;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
  }

  return sectionHeaderViewModel;
}

- (void)_setupSubviews
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = +[MUPlaceTilesViewConfiguration annotatedListConfiguration];
  v3 = [[MUPlaceTilesView alloc] initWithConfiguration:v22];
  tilesView = self->_tilesView;
  self->_tilesView = v3;

  v23 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  pictureItemContainer = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
  pictureItems = [pictureItemContainer pictureItems];

  v7 = [pictureItems countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(pictureItems);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        pictureItemPhotoType = [v12 pictureItemPhotoType];
        if ((pictureItemPhotoType - 2) >= 2)
        {
          if (pictureItemPhotoType == 1)
          {
            [v23 addObject:v12];
          }
        }

        else
        {
          attribution = [(GEOAnnotatedItemList *)self->_annotatedList attribution];
          providerName = [attribution providerName];
          v16 = [MUPunchoutViewModel viewModelForVendorName:providerName];

          objc_storeStrong(&self->_attributionViewModel, v16);
          v9 = v16;
        }
      }

      v8 = [pictureItems countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [(MUPlaceTilesView *)self->_tilesView setViewModels:v23];
  [(MUPlaceTilesView *)self->_tilesView setDelegate:self];
  [(MUPlaceTilesView *)self->_tilesView setAnalyticsDelegate:self];
  if (v9)
  {
    [(MUPlaceTilesView *)self->_tilesView setAccessoryViewModel:v9];
  }

  v17 = [MUPlaceSectionView alloc];
  sectionHeaderViewModel = [(MUPlacePictureItemSectionController *)self sectionHeaderViewModel];
  v19 = [(MUPlaceSectionView *)v17 initWithStyle:0 sectionHeaderViewModel:sectionHeaderViewModel];
  sectionView = self->_sectionView;
  self->_sectionView = v19;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  [(MUPlaceSectionView *)self->_sectionView attachViewToContentView:self->_tilesView];

  v21 = *MEMORY[0x1E69E9840];
}

- (MUPlacePictureItemSectionController)initWithMapItem:(id)item annotatedList:(id)list presentingViewController:(id)controller
{
  listCopy = list;
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = MUPlacePictureItemSectionController;
  v11 = [(MUPlaceSectionController *)&v16 initWithMapItem:item];
  if (v11)
  {
    v12 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlacePictureItemSectionControllerInit", "", v15, 2u);
    }

    objc_storeStrong(&v11->_annotatedList, list);
    objc_storeWeak(&v11->_presentingViewController, controllerCopy);
    [(MUPlacePictureItemSectionController *)v11 _setupSubviews];
    v13 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v13))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlacePictureItemSectionControllerInit", "", v15, 2u);
    }
  }

  return v11;
}

@end