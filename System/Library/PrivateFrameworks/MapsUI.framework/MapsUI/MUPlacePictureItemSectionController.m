@interface MUPlacePictureItemSectionController
- (MUPlacePictureItemSectionController)initWithMapItem:(id)a3 annotatedList:(id)a4 presentingViewController:(id)a5;
- (MUPlacePictureItemSectionControllerDelegate)pictureItemDelegate;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)_performPunchout;
- (void)_presentPhotoGalleryForPhotoIndex:(unint64_t)a3;
- (void)_setupSubviews;
- (void)placePhotoGallery:(id)a3 willCloseAtIndex:(unint64_t)a4;
- (void)placeTileCollectionView:(id)a3 didTapOnViewModel:(id)a4;
- (void)setActive:(BOOL)a3;
@end

@implementation MUPlacePictureItemSectionController

- (MUPlacePictureItemSectionControllerDelegate)pictureItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureItemDelegate);

  return WeakRetained;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v5 viewControllers];
  v7 = [v6 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v5 viewControllers];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v10 indexOfVisibleView];
      v12 = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
      v13 = [v12 pictureItems];
      v14 = [v13 count];

      if (v11 >= v14)
      {
        v19 = 0;
      }

      else
      {
        v15 = [(MUPlaceTilesView *)self->_tilesView imageViewForIndex:v11];
        v16 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v17 = [v15 image];
        v18 = [v16 initWithImage:v17];

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
  v10 = v5;
LABEL_10:

LABEL_11:

  return v19;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v7 = [(UIImageView *)self->_imageViewForTransition image];
  v8 = [v6 initWithImage:v7];

  [v8 setContentMode:{-[UIImageView contentMode](self->_imageViewForTransition, "contentMode")}];
  v9 = [[MUPhotoGalleryTransitionAnimator alloc] initWithView:self->_imageViewForTransition transitionView:v8];
  [(MUPhotoGalleryTransitionAnimator *)v9 setDelegate:self];

  return v9;
}

- (void)placePhotoGallery:(id)a3 willCloseAtIndex:(unint64_t)a4
{
  v6 = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
  v7 = [v6 pictureItems];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    v10 = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
    v11 = [v10 pictureItems];
    v12 = [v11 count] + 1;

    if (v12 <= a4)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(MUPlaceTilesView *)self->_tilesView accessoryView];
    }
  }

  else
  {
    v9 = [(MUPlaceTilesView *)self->_tilesView imageViewForIndex:a4];
  }

  tilesView = self->_tilesView;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __74__MUPlacePictureItemSectionController_placePhotoGallery_willCloseAtIndex___block_invoke;
  v15[3] = &unk_1E821B950;
  v16 = v9;
  v14 = v9;
  [(MUPlaceTilesView *)tilesView enumerateImageViewsWithBlock:v15];
  [(MUPlaceTilesView *)self->_tilesView scrollToViewAtIndex:a4];
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

- (void)_presentPhotoGalleryForPhotoIndex:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
  v7 = [v6 pictureItems];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73__MUPlacePictureItemSectionController__presentPhotoGalleryForPhotoIndex___block_invoke;
  v24[3] = &unk_1E821B928;
  v8 = v5;
  v25 = v8;
  [v7 enumerateObjectsUsingBlock:v24];

  if ([v8 count])
  {
    v9 = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
    v10 = [v9 allowFullScreenPhoto];

    if (v10)
    {
      [(MUPlacePictureItemSectionController *)self _captureUserAction:6052];
      v11 = [MUPlacePhotoGalleryViewController alloc];
      v12 = [v8 copy];
      v13 = [(MUPlaceTilesView *)self->_tilesView accessoryView];
      v14 = [(MUPlaceSectionController *)self mapItem];
      v15 = [(MUPlacePhotoGalleryViewController *)v11 initWithPhotos:v12 additionalView:v13 scrollToIndex:a3 mapItem:v14 delegate:self];
      photoGalleryViewController = self->_photoGalleryViewController;
      self->_photoGalleryViewController = v15;

      v17 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_photoGalleryViewController];
      v18 = [v17 navigationController];
      [v18 setNavigationBarHidden:1 animated:0];

      [v17 setModalPresentationStyle:5];
      [v17 setTransitioningDelegate:self];
      v19 = [MEMORY[0x1E696F3B8] sharedInstance];
      LODWORD(v13) = [v19 userInterfaceIdiom];

      if (v13 == 2)
      {
        [(MUPlacePhotoGalleryViewController *)self->_photoGalleryViewController setPanAndSwipeToDismissGestureEnabled:0];
        [v17 setModalPresentationStyle:8];
        WeakRetained = [(MUPlacePictureItemSectionController *)self pictureItemDelegate];
        [WeakRetained pictureItemSectionController:self requestsSceneActivationWithPhotoGallery:self->_photoGalleryViewController];
      }

      else
      {
        v21 = [(MUPlaceTilesView *)self->_tilesView imageViewForIndex:a3];
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
    v6 = [v4 providerName];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "Attempting to punch our with attribution with provider %@", &v10, 0xCu);
  }

  v7 = MEMORY[0x1E696F198];
  v8 = [v4 attributionURLs];
  [v7 launchAttributionURLs:v8 withAttribution:v4 completionHandler:&__block_literal_global_23963];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)placeTileCollectionView:(id)a3 didTapOnViewModel:(id)a4
{
  tilesView = self->_tilesView;
  v6 = a4;
  v7 = [(MUPlaceTilesView *)tilesView viewModels];
  v8 = [v7 indexOfObject:v6];

  v9 = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
  v10 = [v9 pictureItems];
  v12 = [v10 objectAtIndex:v8];

  v11 = [v12 pictureItemPhotoType];
  if ((v11 - 2) >= 2)
  {
    if (v11 == 1)
    {
      [(MUPlacePictureItemSectionController *)self _presentPhotoGalleryForPhotoIndex:v8];
    }
  }

  else
  {
    [(MUPlacePictureItemSectionController *)self _performPunchout];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(MUPlaceTilesView *)self->_tilesView displayPlaceTiles];
  }
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    annotatedList = self->_annotatedList;
    v5 = self;
    v6 = annotatedList;
    v7 = mkAttributionForAnnotatedList();
    v8 = [(GEOAnnotatedItemList *)v6 title];
    v9 = [MUPlaceSectionHeaderViewModel viewModelForTitle:v8 attribution:v7 target:v5 action:sel__performPunchout];

    [(MUPlaceSectionHeaderViewModel *)v9 setTarget:v5 selector:sel__performPunchout];
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
  v5 = [(GEOAnnotatedItemList *)self->_annotatedList pictureItemContainer];
  v6 = [v5 pictureItems];

  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 pictureItemPhotoType];
        if ((v13 - 2) >= 2)
        {
          if (v13 == 1)
          {
            [v23 addObject:v12];
          }
        }

        else
        {
          v14 = [(GEOAnnotatedItemList *)self->_annotatedList attribution];
          v15 = [v14 providerName];
          v16 = [MUPunchoutViewModel viewModelForVendorName:v15];

          objc_storeStrong(&self->_attributionViewModel, v16);
          v9 = v16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  v18 = [(MUPlacePictureItemSectionController *)self sectionHeaderViewModel];
  v19 = [(MUPlaceSectionView *)v17 initWithStyle:0 sectionHeaderViewModel:v18];
  sectionView = self->_sectionView;
  self->_sectionView = v19;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  [(MUPlaceSectionView *)self->_sectionView attachViewToContentView:self->_tilesView];

  v21 = *MEMORY[0x1E69E9840];
}

- (MUPlacePictureItemSectionController)initWithMapItem:(id)a3 annotatedList:(id)a4 presentingViewController:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MUPlacePictureItemSectionController;
  v11 = [(MUPlaceSectionController *)&v16 initWithMapItem:a3];
  if (v11)
  {
    v12 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v12))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlacePictureItemSectionControllerInit", "", v15, 2u);
    }

    objc_storeStrong(&v11->_annotatedList, a4);
    objc_storeWeak(&v11->_presentingViewController, v10);
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