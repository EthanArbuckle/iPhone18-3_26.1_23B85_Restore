@interface MUPlacePhotoSectionController
- (BOOL)dismissPhotoGalleryIfNecessary:(id)necessary;
- (BOOL)hasContent;
- (BOOL)isFirstParty;
- (BOOL)photoSliderView:(id)view shouldShowFullWidthForModel:(id)model;
- (MUPlacePhotoSectionController)initWithMapItem:(id)item configuration:(id)configuration;
- (MUPlacePhotoSectionControllerDelegate)photoSectionControllerDelegate;
- (MUUserInformationProvider)userInfoProvider;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)attributionViewModelsForPhotoSliderView:(id)view;
- (id)infoCardChildPossibleActions;
- (id)photoSliderView:(id)view photoOverlayForModel:(id)model;
- (id)photoSliderViewRequestsViewModels:(id)models;
- (unint64_t)numberOfAttributionsForPhotoSliderView:(id)view;
- (void)_addPhotoButtonTappedWithEntryPoint:(int64_t)point presentationOptions:(id)options;
- (void)_populateRevealedAnalyticsModule:(id)module;
- (void)_routeAlbumTapWithViewModel:(id)model;
- (void)_routeFlatListTapWithViewModel:(id)model;
- (void)_setupSectionView;
- (void)_update;
- (void)photoSliderView:(id)view didTapAttribution:(id)attribution;
- (void)photoSliderView:(id)view didTapViewModel:(id)model;
- (void)placePhotoGallery:(id)gallery attributionViewTappedAtIndex:(unint64_t)index;
- (void)placePhotoGallery:(id)gallery didSelectReportImageAtIndex:(unint64_t)index;
- (void)placePhotoGallery:(id)gallery openButtonTappedAtIndex:(unint64_t)index;
- (void)placePhotoGallery:(id)gallery willCloseAtIndex:(unint64_t)index;
- (void)placePhotoGalleryDidCloseAtIndex:(unint64_t)index;
- (void)setActive:(BOOL)active;
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
  array = [MEMORY[0x1E695DF70] array];
  if ([(MUPhotoSliderTileProvider *)self->_photoTileProvider showFullScreen])
  {
    v4 = &unk_1F450DE80;
  }

  else
  {
    v4 = &unk_1F450DE68;
  }

  [array addObject:v4];
  v5 = [array copy];

  return v5;
}

- (void)_populateRevealedAnalyticsModule:(id)module
{
  photoTileProvider = self->_photoTileProvider;
  moduleCopy = module;
  v5 = MUPhotosRevealedModuleForProvider(photoTileProvider);
  [moduleCopy setPhotos:v5];
}

- (BOOL)isFirstParty
{
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _mapkit_preferredFirstPhotoVendor = [mapItem _mapkit_preferredFirstPhotoVendor];
  shouldHandlePhotosLocally = [_mapkit_preferredFirstPhotoVendor shouldHandlePhotosLocally];

  return shouldHandlePhotosLocally;
}

- (BOOL)dismissPhotoGalleryIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = +[MapsUIUtilities isSafariProcess];
  if (v4)
  {
    [necessaryCopy dismissViewControllerAnimated:1 completion:0];
  }

  return v4;
}

- (void)placePhotoGallery:(id)gallery didSelectReportImageAtIndex:(unint64_t)index
{
  galleryCopy = gallery;
  photoSectionControllerDelegate = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photoItemAtIndex:index];
    [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:86];
    photoSectionControllerDelegate2 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
    geoMapItemPhoto = [v8 geoMapItemPhoto];
    [photoSectionControllerDelegate2 placePhotoSectionController:self didSelectPhotoToReport:geoMapItemPhoto withPhotoGalleryViewController:galleryCopy];
  }
}

- (void)placePhotoGallery:(id)gallery openButtonTappedAtIndex:(unint64_t)index
{
  galleryCopy = gallery;
  photos = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  v7 = [photos count];

  if (v7 > index)
  {
    photoSectionControllerDelegate = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(MUPlacePhotoSectionController *)self dismissPhotoGalleryIfNecessary:galleryCopy];
      photos2 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
      v12 = [photos2 objectAtIndex:index];

      photoSectionControllerDelegate2 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      photoID = [v12 photoID];
      if (v10)
      {
        v15 = 0;
      }

      else
      {
        v15 = galleryCopy;
      }

      [photoSectionControllerDelegate2 placePhotoSectionController:self didSelectViewPhoto:v12 withID:photoID presentingViewController:v15];
    }
  }
}

- (void)placePhotoGallery:(id)gallery attributionViewTappedAtIndex:(unint64_t)index
{
  photoSectionControllerDelegate = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  [photoSectionControllerDelegate placePhotoSectionController:self didSelectPhotoCategoryAtIndex:index];
}

- (void)placePhotoGalleryDidCloseAtIndex:(unint64_t)index
{
  photoSectionControllerDelegate = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    photoSectionControllerDelegate2 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
    [photoSectionControllerDelegate2 placePhotoSectionControllerDidCloseFullscreenPhotos:self];
  }
}

- (void)placePhotoGallery:(id)gallery willCloseAtIndex:(unint64_t)index
{
  photos = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  v7 = [photos count];

  if (v7 <= index)
  {
    photos2 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v10 = [photos2 count] + 1;

    if (v10 <= index)
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
    v8 = [(MUPlacePhotoSliderView *)self->_photoSliderView imageViewForIndex:index];
  }

  photoSliderView = self->_photoSliderView;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__MUPlacePhotoSectionController_placePhotoGallery_willCloseAtIndex___block_invoke;
  v13[3] = &unk_1E821B950;
  v14 = v8;
  v12 = v8;
  [(MUPlacePhotoSliderView *)photoSliderView enumerateImageViewsWithBlock:v13];
  [(MUPlacePhotoSliderView *)self->_photoSliderView scrollToViewAtIndex:index];
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
      if (indexOfVisibleView >= [(MUPhotoSliderTileProvider *)self->_photoTileProvider numberOfPhotos])
      {
        v16 = 0;
      }

      else
      {
        v12 = [(MUPlacePhotoSliderView *)self->_photoSliderView imageViewForIndex:indexOfVisibleView];
        v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
        image = [v12 image];
        v15 = [v13 initWithImage:image];

        [v15 setContentMode:{objc_msgSend(v12, "contentMode")}];
        v16 = [[MUPhotoGalleryTransitionAnimator alloc] initWithView:v12 transitionView:v15];
        [(MUPhotoGalleryTransitionAnimator *)v16 setDelegate:self];
      }

      v5 = firstObject2;
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

- (void)_addPhotoButtonTappedWithEntryPoint:(int64_t)point presentationOptions:(id)options
{
  optionsCopy = options;
  [(MUPlaceSectionController *)self captureInfoCardAction:2147 eventValue:@"photo slider" feedbackType:0 actionRichProviderId:0 classification:0];
  photoSectionControllerDelegate = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  [photoSectionControllerDelegate placePhotoSectionController:self requestsAddPhotosToMapsWithEntryPoint:point options:optionsCopy];
}

- (void)photoSliderView:(id)view didTapAttribution:(id)attribution
{
  attributionCopy = attribution;
  v5 = [(MUPlacePhotoSliderView *)self->_photoSliderView attributionViewForAttribution:attributionCopy];
  v6 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v6 setProgressObserver:v5];
  [(MUPresentationOptions *)v6 setSourceView:v5];
  [v5 frame];
  [(MUPresentationOptions *)v6 setSourceRect:?];
  if (self->_attributionViewModel == attributionCopy)
  {
    if ([(MUPhotoSliderTileProvider *)self->_photoTileProvider displayType]== 1)
    {
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6018];
      photos = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
      firstObject = [photos firstObject];
      [(MUPlacePhotoSectionController *)self _routeAlbumTapWithViewModel:firstObject];
    }

    else
    {
      mapItem = [(MUPlaceSectionController *)self mapItem];
      _mapkit_hasMultiplePhotoVendors = [mapItem _mapkit_hasMultiplePhotoVendors];

      if (_mapkit_hasMultiplePhotoVendors)
      {
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6018];
        photos = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        [photos placePhotoSectionControllerRequestsToOpenThumbnailGallery:self withStartingIndex:0];
        goto LABEL_9;
      }

      mapItem2 = [(MUPlaceSectionController *)self mapItem];
      photos = [mapItem2 _mapkit_preferredFirstPhotoVendor];

      shouldHandlePhotosLocally = [photos shouldHandlePhotosLocally];
      providerID = [photos providerID];
      if (shouldHandlePhotosLocally)
      {
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6018 eventValue:0 actionRichProviderId:providerID];

        firstObject = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        [firstObject placePhotoSectionControllerRequestsToOpenThumbnailGallery:self withStartingIndex:0];
      }

      else
      {
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6023 eventValue:0 actionRichProviderId:providerID];

        firstObject = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        [firstObject placePhotoSectionController:self requestsToOpenPhotoAttribution:photos presentationOptions:v6];
      }
    }

LABEL_9:
    goto LABEL_10;
  }

  if (self->_addPhotoViewModel == attributionCopy)
  {
    [(MUPlacePhotoSectionController *)self _addPhotoButtonTappedWithEntryPoint:2 presentationOptions:v6];
  }

LABEL_10:
}

- (unint64_t)numberOfAttributionsForPhotoSliderView:(id)view
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

- (id)attributionViewModelsForPhotoSliderView:(id)view
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

- (id)photoSliderView:(id)view photoOverlayForModel:(id)model
{
  modelCopy = model;
  userSubmittedPhoto = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];

  photoTileProvider = self->_photoTileProvider;
  if (userSubmittedPhoto == modelCopy)
  {
    [(MUPhotoSliderTileProvider *)photoTileProvider yourPhotosTileOverlay];
  }

  else
  {
    [(MUPhotoSliderTileProvider *)photoTileProvider overlayForPhoto:modelCopy];
  }
  v8 = ;

  return v8;
}

- (BOOL)photoSliderView:(id)view shouldShowFullWidthForModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    photos = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v8 = [photos count];

    photos2 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v10 = photos2;
    if (v8 == 1)
    {
      firstObject = [photos2 firstObject];

      userSubmittedPhoto = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
      photoID = [userSubmittedPhoto photoID];
      photoID2 = [firstObject photoID];
      v15 = [photoID isEqualToString:photoID2];

      if (v15)
      {
        return 1;
      }
    }

    else
    {
      v17 = [photos2 count];

      if (!v17)
      {
        return 1;
      }
    }
  }

  userSubmittedPhoto2 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
  if (userSubmittedPhoto2)
  {
    v19 = userSubmittedPhoto2;
    photos3 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v21 = [photos3 count];

    if (v21)
    {
      return 0;
    }
  }

  photos4 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  v16 = [photos4 count] == 1;

  return v16;
}

- (id)photoSliderViewRequestsViewModels:(id)models
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  userSubmittedPhoto = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
  [v4 _mapsui_addObjectIfNotNil:userSubmittedPhoto];

  photos = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  [v4 _mapsui_addObjectsFromArrayIfNotNil:photos];

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

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    v10 = v3;
    v11 = v4;
    self->_active = active;
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

- (void)_routeAlbumTapWithViewModel:(id)model
{
  modelCopy = model;
  photoSectionControllerDelegate = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
  v5 = objc_opt_respondsToSelector();

  v6 = modelCopy;
  if (v5)
  {
    if (modelCopy)
    {
      userSubmittedPhoto = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
      v8 = userSubmittedPhoto == modelCopy;

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      v8 = 0;
      isKindOfClass = 0;
    }

    displayType = [(MUPhotoSliderTileProvider *)self->_photoTileProvider displayType];
    if (v8)
    {
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:329];
      v11 = 0;
LABEL_7:
      photoSectionControllerDelegate2 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      [photoSectionControllerDelegate2 placePhotoSectionController:self didSelectPhotoCategoryAtIndex:v11];

      v6 = modelCopy;
      goto LABEL_11;
    }

    v13 = displayType;
    v6 = modelCopy;
    if (isKindOfClass)
    {
      photos = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
      v15 = [photos indexOfObject:modelCopy];

      if (v13 == 1)
      {
        v16 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider albumIdForPhoto:modelCopy];
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:284 eventValue:v16 actionRichProviderId:0];

        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v15];
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6006 eventValue:v17 actionRichProviderId:0];

        v18 = [(MUPlacePhotoSectionController *)self photoSliderViewRequestsViewModels:self->_photoSliderView];
        v11 = [v18 indexOfObject:modelCopy];
      }

      else
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v15];
        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6006 eventValue:v19 actionRichProviderId:0];

        userSubmittedPhoto2 = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
        v11 = userSubmittedPhoto2 != 0;
      }

      goto LABEL_7;
    }
  }

LABEL_11:
}

- (void)_routeFlatListTapWithViewModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userSubmittedPhoto = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];
    if (userSubmittedPhoto)
    {
      v5 = userSubmittedPhoto;
      mapItem = [(MUPlaceSectionController *)self mapItem];
      _mapkit_supportsFullScreenExperience = [mapItem _mapkit_supportsFullScreenExperience];

      if (_mapkit_supportsFullScreenExperience)
      {
        [(MUPlacePhotoSectionController *)self _routeAlbumTapWithViewModel:modelCopy];
        goto LABEL_15;
      }
    }

    v8 = modelCopy;
    photos = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
    v10 = [photos indexOfObject:v8];

    if ([(MUPhotoSliderTileProvider *)self->_photoTileProvider shouldRouteToPhotoThumbnailGallery])
    {
      photoSectionControllerDelegate = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v10];
        [(MUPlaceSectionController *)self captureInfoCardAction:6006 eventValue:v13 feedbackType:0 actionRichProviderId:0 classification:0];

        [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6087];
        photoSectionControllerDelegate2 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        [photoSectionControllerDelegate2 placePhotoSectionControllerRequestsToOpenThumbnailGallery:self withStartingIndex:v10];
LABEL_13:
      }

LABEL_14:

      goto LABEL_15;
    }

    if (-[MUPhotoSliderTileProvider showFullScreen](self->_photoTileProvider, "showFullScreen") && ![v8 needsObfuscationWhenRenderedInFullScreen])
    {
      v23 = [MUPlacePhotoGalleryViewController alloc];
      photos2 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
      mapItem2 = [(MUPlaceSectionController *)self mapItem];
      v26 = [(MUPlacePhotoGalleryViewController *)v23 initWithPhotos:photos2 additionalView:0 scrollToIndex:v10 mapItem:mapItem2 delegate:self];
      photoGalleryViewController = self->_photoGalleryViewController;
      self->_photoGalleryViewController = v26;

      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v10];
      attribution = [v8 attribution];
      providerID = [attribution providerID];
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6006 eventValue:v28 actionRichProviderId:providerID];

      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6087];
      if (MapKitIdiomIsMacCatalyst())
      {
        photoSectionControllerDelegate3 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
        v32 = objc_opt_respondsToSelector();

        if (v32)
        {
          photoSectionControllerDelegate2 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
          [photoSectionControllerDelegate2 placePhotoSectionController:self requestsSceneActivationForPhotoGalleryViewController:self->_photoGalleryViewController];
          goto LABEL_13;
        }
      }

      photoSectionControllerDelegate2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_photoGalleryViewController];
      navigationController = [photoSectionControllerDelegate2 navigationController];
      [navigationController setNavigationBarHidden:1 animated:0];

      [photoSectionControllerDelegate2 setModalPresentationStyle:5];
      [photoSectionControllerDelegate2 setTransitioningDelegate:self];
      v34 = [(MUPlacePhotoSliderView *)self->_photoSliderView imageViewForIndex:v10];
      imageViewForTransition = self->_imageViewForTransition;
      self->_imageViewForTransition = v34;

      presentingViewController = [(MUPlacePhotoSectionController *)self presentingViewController];
      [presentingViewController presentViewController:photoSectionControllerDelegate2 animated:1 completion:0];

      photoSectionControllerDelegate4 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      LOBYTE(navigationController) = objc_opt_respondsToSelector();

      if ((navigationController & 1) == 0)
      {
        goto LABEL_13;
      }

      photoSectionControllerDelegate5 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      [photoSectionControllerDelegate5 placePhotoSectionControllerDidOpenFullscreenPhotos:self];
    }

    else
    {
      photoSectionControllerDelegate6 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      v16 = objc_opt_respondsToSelector();

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v10];
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6006 eventValue:v17 actionRichProviderId:0];

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v10];
      attribution2 = [v8 attribution];
      providerID2 = [attribution2 providerID];
      [(MUPlacePhotoSectionController *)self _captureSliderInstrumentationWithAction:6018 eventValue:v18 actionRichProviderId:providerID2];

      photoSectionControllerDelegate2 = [(MUPlacePhotoSectionController *)self photoSectionControllerDelegate];
      photoSectionControllerDelegate5 = [v8 photoID];
      presentingViewController2 = [(MUPlacePhotoSectionController *)self presentingViewController];
      [photoSectionControllerDelegate2 placePhotoSectionController:self didSelectViewPhoto:v8 withID:photoSectionControllerDelegate5 presentingViewController:presentingViewController2];
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)photoSliderView:(id)view didTapViewModel:(id)model
{
  modelCopy = model;
  userSubmittedPhoto = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];

  if (userSubmittedPhoto == modelCopy || (v6 = [(MUPhotoSliderTileProvider *)self->_photoTileProvider displayType], v6 == 1))
  {
    v6 = [(MUPlacePhotoSectionController *)self _routeAlbumTapWithViewModel:modelCopy];
  }

  else
  {
    v7 = modelCopy;
    if (v6)
    {
      goto LABEL_7;
    }

    v6 = [(MUPlacePhotoSectionController *)self _routeFlatListTapWithViewModel:modelCopy];
  }

  v7 = modelCopy;
LABEL_7:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (BOOL)hasContent
{
  userSubmittedPhoto = [(MUPlacePhotoSectionController *)self userSubmittedPhoto];

  if (userSubmittedPhoto)
  {
    return 1;
  }

  photos = [(MUPhotoSliderTileProvider *)self->_photoTileProvider photos];
  v4 = [photos count] != 0;

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

- (MUPlacePhotoSectionController)initWithMapItem:(id)item configuration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = MUPlacePhotoSectionController;
  v8 = [(MUPlaceSectionController *)&v15 initWithMapItem:itemCopy];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlacePhotoSectionControllerInit", "", v14, 2u);
    }

    v10 = [[MUPhotoSliderTileProvider alloc] initWithMapItem:itemCopy];
    photoTileProvider = v8->_photoTileProvider;
    v8->_photoTileProvider = v10;

    objc_storeStrong(&v8->_configuration, configuration);
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