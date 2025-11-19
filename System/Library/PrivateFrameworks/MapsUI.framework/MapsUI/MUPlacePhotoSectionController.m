@interface MUPlacePhotoSectionController
- (BOOL)dismissPhotoGalleryIfNecessary:(id)a3;
- (BOOL)hasContent;
- (BOOL)isFirstParty;
- (BOOL)photoSliderView:(id)a3 shouldShowFullWidthForModel:(id)a4;
- (MUPlacePhotoSectionController)initWithMapItem:(id)a3 configuration:(id)a4;
- (MUPlacePhotoSectionControllerDelegate)photoSectionControllerDelegate;
- (MUUserInformationProvider)userInfoProvider;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)attributionViewModelsForPhotoSliderView:(id)a3;
- (id)infoCardChildPossibleActions;
- (id)photoSliderView:(id)a3 photoOverlayForModel:(id)a4;
- (id)photoSliderViewRequestsViewModels:(id)a3;
- (unint64_t)numberOfAttributionsForPhotoSliderView:(id)a3;
- (void)_addPhotoButtonTappedWithEntryPoint:(int64_t)a3 presentationOptions:(id)a4;
- (void)_populateRevealedAnalyticsModule:(id)a3;
- (void)_routeAlbumTapWithViewModel:(id)a3;
- (void)_routeFlatListTapWithViewModel:(id)a3;
- (void)_setupSectionView;
- (void)_update;
- (void)photoSliderView:(id)a3 didTapAttribution:(id)a4;
- (void)photoSliderView:(id)a3 didTapViewModel:(id)a4;
- (void)placePhotoGallery:(id)a3 attributionViewTappedAtIndex:(unint64_t)a4;
- (void)placePhotoGallery:(id)a3 didSelectReportImageAtIndex:(unint64_t)a4;
- (void)placePhotoGallery:(id)a3 openButtonTappedAtIndex:(unint64_t)a4;
- (void)placePhotoGallery:(id)a3 willCloseAtIndex:(unint64_t)a4;
- (void)placePhotoGalleryDidCloseAtIndex:(unint64_t)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation MUPlacePhotoSectionController

- (MUUserInformationProvider)userInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_userInfoProvider);

  return WeakRetained;
}

- (MUPlacePhotoSectionControllerDelegate)photoSectionControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_photoSectionControllerDelegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(MUPhotoSliderTileProvider *)self->_photoTileProvider showFullScreen])
  {
    v4 = &unk_1F450DE80;
  }

  else
  {
    v4 = &unk_1F450DE68;
  }

  [v3 addObject:v4];
  v5 = [v3 copy];

  return v5;
}

- (void)_populateRevealedAnalyticsModule:(id)a3
{
  photoTileProvider = self->_photoTileProvider;
  v4 = a3;
  v5 = MUPhotosRevealedModuleForProvider(photoTileProvider);
  [v4 setPhotos:v5];
}

- (BOOL)isFirstParty
{
  v2 = [(MUPlaceSectionController *)self mapItem];
  v3 = [v2 _mapkit_preferredFirstPhotoVendor];
  v4 = [v3 shouldHandlePhotosLocally];

  return v4;
}

- (BOOL)dismissPhotoGalleryIfNecessary:(id)a3
{
  v3 = a3;
  v4 = +[MapsUIUtilities isSafariProcess];
  if (v4)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  return v4;
}

- (void)placePhotoGallery:(id)a3 didSelectReportImageAtIndex:(unint64_t)a4
{
  v11 = a3;
  v6 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photoItemAtIndex:a4];
    [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:86];
    v9 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
    v10 = [v8 geoMapItemPhoto];
    [v9 placePhotoSectionController:self didSelectPhotoToReport:v10 withPhotoGalleryViewController:v11];
  }
}

- (void)placePhotoGallery:(id)a3 openButtonTappedAtIndex:(unint64_t)a4
{
  v16 = a3;
  v6 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  v7 = [v6 count];

  if (v7 > a4)
  {
    v8 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(MUPlacePhotoSectionController *)self dismissPhotoGalleryIfNecessary:v16];
      v11 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
      v12 = [v11 objectAtIndex:a4];

      v13 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      v14 = [v12 photoID];
      if (v10)
      {
        v15 = 0;
      }

      else
      {
        v15 = v16;
      }

      [v13 placePhotoSectionController:self didSelectViewPhoto:v12 withID:v14 presentingViewController:v15];
    }
  }
}

- (void)placePhotoGallery:(id)a3 attributionViewTappedAtIndex:(unint64_t)a4
{
  v6 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  [v6 placePhotoSectionController:self didSelectPhotoCategoryAtIndex:a4];
}

- (void)placePhotoGalleryDidCloseAtIndex:(unint64_t)a3
{
  v4 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
    [v6 placePhotoSectionControllerDidCloseFullscreenPhotos:self];
  }
}

- (void)placePhotoGallery:(id)a3 willCloseAtIndex:(unint64_t)a4
{
  v6 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    v9 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v10 = [v9 count] + 1;

    if (v10 <= a4)
    {
      v8 = 0;
    }

    else
    {
      v8 = [(MUPlacePhotoSliderView *)self->_photoSliderView attributionViewForAttribution:self->_attributionViewModel];
    }
  }

  else
  {
    v8 = [(MUPlacePhotoSliderView *)self->_photoSliderView imageViewForIndex:a4];
  }

  photoSliderView = self->_photoSliderView;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__MUPlacePhotoSectionController_placePhotoGallery_willCloseAtIndex___block_invoke;
  v13[3] = &unk_1E821B950;
  v14 = v8;
  v12 = v8;
  [(MUPlacePhotoSliderView *)photoSliderView enumerateImageViewsWithBlock:v13];
  [(MUPlacePhotoSliderView *)self->_photoSliderView scrollToViewAtIndex:a4];
}

uint64_t __68__MUPlacePhotoSectionController_placePhotoGallery_willCloseAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v2 = 1.0;
  if (*(a1 + 32) == a2)
  {
    v2 = 0.0;
  }

  return [a2 setAlpha:v2];
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
      if (v11 >= [(MUPhotoSliderTileProvider *)self->_photoTileProvider numberOfPhotos])
      {
        v16 = 0;
      }

      else
      {
        v12 = [(MUPlacePhotoSliderView *)self->_photoSliderView imageViewForIndex:v11];
        v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v14 = [v12 image];
        v15 = [v13 initWithImage:v14];

        [v15 setContentMode:{objc_msgSend(v12, "contentMode")}];
        v16 = [[MUPhotoGalleryTransitionAnimator alloc] initWithView:v12 transitionView:v15];
        [(MUPhotoGalleryTransitionAnimator *)v16 setDelegate:self];
      }

      v5 = v10;
      goto LABEL_10;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = 0;
LABEL_10:

LABEL_11:

  return v16;
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

- (void)_addPhotoButtonTappedWithEntryPoint:(int64_t)a3 presentationOptions:(id)a4
{
  v6 = a4;
  [(MUPlaceSectionController *)self captureInfoCardAction:2147 eventValue:@"photo slider" feedbackType:0 actionRichProviderId:0 classification:0];
  v7 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  [v7 placePhotoSectionController:self requestsAddPhotosToMapsWithEntryPoint:a3 options:v6];
}

- (void)photoSliderView:(id)a3 didTapAttribution:(id)a4
{
  v14 = a4;
  v5 = [(MUPlacePhotoSliderView *)self->_photoSliderView attributionViewForAttribution:v14];
  v6 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v6 setProgressObserver:v5];
  [(MUPresentationOptions *)v6 setSourceView:v5];
  [v5 frame];
  [(MUPresentationOptions *)v6 setSourceRect:?];
  if (self->_attributionViewModel == v14)
  {
    if ([(MUPhotoSliderTileProvider *)self->_photoTileProvider displayType]== 1)
    {
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6018];
      v7 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
      v8 = [v7 firstObject];
      [(MUPlacePhotoSectionController *)self _routeAlbumTapWithViewModel:v8];
    }

    else
    {
      v9 = [(MUPlaceSectionController *)self mapItem];
      v10 = [v9 _mapkit_hasMultiplePhotoVendors];

      if (v10)
      {
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6018];
        v7 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        [v7 placePhotoSectionControllerRequestsToOpenThumbnailGallery:self withStartingIndex:0];
        goto LABEL_9;
      }

      v11 = [(MUPlaceSectionController *)self mapItem];
      v7 = [v11 _mapkit_preferredFirstPhotoVendor];

      v12 = [v7 shouldHandlePhotosLocally];
      v13 = [v7 providerID];
      if (v12)
      {
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6018 eventValue:0 actionRichProviderId:v13];

        v8 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        [v8 placePhotoSectionControllerRequestsToOpenThumbnailGallery:self withStartingIndex:0];
      }

      else
      {
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6023 eventValue:0 actionRichProviderId:v13];

        v8 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        [v8 placePhotoSectionController:self requestsToOpenPhotoAttribution:v7 presentationOptions:v6];
      }
    }

LABEL_9:
    goto LABEL_10;
  }

  if (self->_addPhotoViewModel == v14)
  {
    [(MUPlacePhotoSectionController *)self _addPhotoButtonTappedWithEntryPoint:2 presentationOptions:v6];
  }

LABEL_10:
}

- (unint64_t)numberOfAttributionsForPhotoSliderView:(id)a3
{
  v3 = 1;
  if (self->_attributionViewModel)
  {
    v3 = 2;
  }

  if (self->_addPhotoViewModel)
  {
    return v3;
  }

  else
  {
    return self->_attributionViewModel != 0;
  }
}

- (id)attributionViewModelsForPhotoSliderView:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = v4;
  if (self->_addPhotoViewModel)
  {
    [v4 addObject:?];
  }

  if (self->_attributionViewModel)
  {
    [v5 addObject:?];
  }

  v6 = [v5 copy];

  return v6;
}

- (id)photoSliderView:(id)a3 photoOverlayForModel:(id)a4
{
  v5 = a4;
  v6 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];

  photoTileProvider = self->_photoTileProvider;
  if (v6 == v5)
  {
    [(MUPhotoSliderTileProvider *)photoTileProvider yourPhotosTileOverlay];
  }

  else
  {
    [(MUPhotoSliderTileProvider *)photoTileProvider overlayForPhoto:v5];
  }
  v8 = ;

  return v8;
}

- (BOOL)photoSliderView:(id)a3 shouldShowFullWidthForModel:(id)a4
{
  v5 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v8 = [v7 count];

    v9 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v10 = v9;
    if (v8 == 1)
    {
      v11 = [v9 firstObject];

      v12 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
      v13 = [v12 photoID];
      v14 = [v11 photoID];
      v15 = [v13 isEqualToString:v14];

      if (v15)
      {
        return 1;
      }
    }

    else
    {
      v17 = [v9 count];

      if (!v17)
      {
        return 1;
      }
    }
  }

  v18 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
  if (v18)
  {
    v19 = v18;
    v20 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v21 = [v20 count];

    if (v21)
    {
      return 0;
    }
  }

  v22 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  v16 = [v22 count] == 1;

  return v16;
}

- (id)photoSliderViewRequestsViewModels:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
  [v4 _mapsui_addObjectIfNotNil:v5];

  v6 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  [v4 _mapsui_addObjectsFromArrayIfNotNil:v6];

  v7 = [v4 copy];

  return v7;
}

- (void)_update
{
  if (self->_active)
  {
    [(MUPlacePhotoSliderView *)self->_photoSliderView displayPhotos];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_active = a3;
    v6 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlacePhotoSectionControllerActivate", "", buf, 2u);
    }

    [(MUPlacePhotoSectionController *)self _update];
    v7 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v7))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlacePhotoSectionControllerActivate", "", v8, 2u);
    }
  }
}

- (void)_routeAlbumTapWithViewModel:(id)a3
{
  v21 = a3;
  v4 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  v6 = v21;
  if (v5)
  {
    if (v21)
    {
      v7 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
      v8 = v7 == v21;

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      v8 = 0;
      isKindOfClass = 0;
    }

    v10 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider displayType];
    if (v8)
    {
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:329];
      v11 = 0;
LABEL_7:
      v12 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      [v12 placePhotoSectionController:self didSelectPhotoCategoryAtIndex:v11];

      v6 = v21;
      goto LABEL_11;
    }

    v13 = v10;
    v6 = v21;
    if (isKindOfClass)
    {
      v14 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
      v15 = [v14 indexOfObject:v21];

      if (v13 == 1)
      {
        v16 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider albumIdForPhoto:v21];
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:284 eventValue:v16 actionRichProviderId:0];

        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v15];
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6006 eventValue:v17 actionRichProviderId:0];

        v18 = [(MUPlacePhotoSectionController *)self photoSliderViewRequestsViewModels:self->_photoSliderView];
        v11 = [v18 indexOfObject:v21];
      }

      else
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v15];
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6006 eventValue:v19 actionRichProviderId:0];

        v20 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
        v11 = v20 != 0;
      }

      goto LABEL_7;
    }
  }

LABEL_11:
}

- (void)_routeFlatListTapWithViewModel:(id)a3
{
  v38 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
    if (v4)
    {
      v5 = v4;
      v6 = [(MUPlaceSectionController *)self mapItem];
      v7 = [v6 _mapkit_supportsFullScreenExperience];

      if (v7)
      {
        [(MUPlacePhotoSectionController *)self _routeAlbumTapWithViewModel:v38];
        goto LABEL_15;
      }
    }

    v8 = v38;
    v9 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v10 = [v9 indexOfObject:v8];

    if ([(MUPhotoSliderTileProvider *)self->_photoTileProvider shouldRouteToPhotoThumbnailGallery])
    {
      v11 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v10];
        [(MUPlaceSectionController *)self captureInfoCardAction:6006 eventValue:v13 feedbackType:0 actionRichProviderId:0 classification:0];

        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6087];
        v14 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        [v14 placePhotoSectionControllerRequestsToOpenThumbnailGallery:self withStartingIndex:v10];
LABEL_13:
      }

LABEL_14:

      goto LABEL_15;
    }

    if (-[MUPhotoSliderTileProvider showFullScreen](self->_photoTileProvider, "showFullScreen") && ![v8 needsObfuscationWhenRenderedInFullScreen])
    {
      v23 = [MUPlacePhotoGalleryViewController alloc];
      v24 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
      v25 = [(MUPlaceSectionController *)self mapItem];
      v26 = [(MUPlacePhotoGalleryViewController *)v23 initWithPhotos:v24 additionalView:0 scrollToIndex:v10 mapItem:v25 delegate:self];
      photoGalleryViewController = self->_photoGalleryViewController;
      self->_photoGalleryViewController = v26;

      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v10];
      v29 = [v8 attribution];
      v30 = [v29 providerID];
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6006 eventValue:v28 actionRichProviderId:v30];

      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6087];
      if (MapKitIdiomIsMacCatalyst())
      {
        v31 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          v14 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
          [v14 placePhotoSectionController:self requestsSceneActivationForPhotoGalleryViewController:self->_photoGalleryViewController];
          goto LABEL_13;
        }
      }

      v14 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_photoGalleryViewController];
      v33 = [v14 navigationController];
      [v33 setNavigationBarHidden:1 animated:0];

      [v14 setModalPresentationStyle:5];
      [v14 setTransitioningDelegate:self];
      v34 = [(MUPlacePhotoSliderView *)self->_photoSliderView imageViewForIndex:v10];
      imageViewForTransition = self->_imageViewForTransition;
      self->_imageViewForTransition = v34;

      v36 = [(MUPlacePhotoSectionController *)self presentingViewController];
      [v36 presentViewController:v14 animated:1 completion:0];

      v37 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      LOBYTE(v33) = objc_opt_respondsToSelector();

      if ((v33 & 1) == 0)
      {
        goto LABEL_13;
      }

      v21 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      [v21 placePhotoSectionControllerDidOpenFullscreenPhotos:self];
    }

    else
    {
      v15 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      v16 = objc_opt_respondsToSelector();

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v10];
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6006 eventValue:v17 actionRichProviderId:0];

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v10];
      v19 = [v8 attribution];
      v20 = [v19 providerID];
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6018 eventValue:v18 actionRichProviderId:v20];

      v14 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      v21 = [v8 photoID];
      v22 = [(MUPlacePhotoSectionController *)self presentingViewController];
      [v14 placePhotoSectionController:self didSelectViewPhoto:v8 withID:v21 presentingViewController:v22];
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)photoSliderView:(id)a3 didTapViewModel:(id)a4
{
  v8 = a4;
  v5 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];

  if (v5 == v8 || (v6 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider displayType], v6 == 1))
  {
    v6 = [(MUPlacePhotoSectionController *)self _routeAlbumTapWithViewModel:v8];
  }

  else
  {
    v7 = v8;
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = [(MUPlacePhotoSectionController *)self _routeFlatListTapWithViewModel:v8];
  }

  v7 = v8;
LABEL_7:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (BOOL)hasContent
{
  v3 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];

  if (v3)
  {
    return 1;
  }

  v5 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  v4 = [v5 count] != 0;

  return v4;
}

- (void)_setupSectionView
{
  v3 = [[MUPlacePhotoSliderView alloc] initWithDataSource:self photoTileSize:175.0, 175.0];
  photoSliderView = self->_photoSliderView;
  self->_photoSliderView = v3;

  [(MUPlacePhotoSliderView *)self->_photoSliderView setDelegate:self];
  [(MUPlacePhotoSliderView *)self->_photoSliderView setAnalyticsDelegate:self];
  if ([(MUPhotoSliderTileProvider *)self->_photoTileProvider showMorePhotoPunchoutAtEndOfSlider])
  {
    v5 = +[MUPunchoutViewModel viewModelForFullScreenGallery];
    attributionViewModel = self->_attributionViewModel;
    self->_attributionViewModel = v5;
  }

  if ([(MUPlacePhotoSectionControllerConfiguration *)self->_configuration supportsARPCallToAction]&& [(MUPhotoSliderTileProvider *)self->_photoTileProvider showARPCallToActionAttributionAtEndOfSlider])
  {
    v7 = +[MUPunchoutViewModel viewModelForAddPhotos];
    addPhotoViewModel = self->_addPhotoViewModel;
    self->_addPhotoViewModel = v7;

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__MUPlacePhotoSectionController__setupSectionView__block_invoke;
    v15[3] = &unk_1E821BAC8;
    objc_copyWeak(&v16, &location);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__MUPlacePhotoSectionController__setupSectionView__block_invoke_2;
    v13[3] = &unk_1E821BAC8;
    objc_copyWeak(&v14, &location);
    v9 = [MUPhotoOptionsMenuButton menuForPhotoOptionsMenuButtonWithCameraCompletion:v15 libraryCompletion:v13];
    [(MUPunchoutViewModel *)self->_addPhotoViewModel setMenu:v9];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v10 = [[MUPlaceSectionView alloc] initWithStyle:0 alwaysHideSeparators:0];
  [(MUPlaceSectionView *)v10 attachViewToContentView:self->_photoSliderView];
  sectionView = self->_sectionView;
  self->_sectionView = v10;
  v12 = v10;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
}

void __50__MUPlacePhotoSectionController__setupSectionView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_alloc_init(MUPresentationOptions);
    [v3 _addPhotoButtonTappedWithEntryPoint:1 presentationOptions:v2];

    WeakRetained = v3;
  }
}

void __50__MUPlacePhotoSectionController__setupSectionView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_alloc_init(MUPresentationOptions);
    [v3 _addPhotoButtonTappedWithEntryPoint:2 presentationOptions:v2];

    WeakRetained = v3;
  }
}

- (MUPlacePhotoSectionController)initWithMapItem:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MUPlacePhotoSectionController;
  v8 = [(MUPlaceSectionController *)&v15 initWithMapItem:v6];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlacePhotoSectionControllerInit", "", v14, 2u);
    }

    v10 = [[MUPhotoSliderTileProvider alloc] initWithMapItem:v6];
    photoTileProvider = v8->_photoTileProvider;
    v8->_photoTileProvider = v10;

    objc_storeStrong(&v8->_configuration, a4);
    [(MUPlacePhotoSectionController *)v8 _setupSectionView];
    v12 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v12))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlacePhotoSectionControllerInit", "", v14, 2u);
    }
  }

  return v8;
}

@end