@interface NTKPhotosFaceView
- (BOOL)_canOperationProceed:(unint64_t)proceed;
- (BOOL)_enqueuePreloadedPhoto:(id)photo ifMatchingGeneration:(unint64_t)generation;
- (BOOL)_preloadNextPhoto;
- (BOOL)_shouldAnimationContinue:(BOOL)continue;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NTKPhotosFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_backgroundImageAlphaForEditMode:(int64_t)mode;
- (double)_timeLabelAlphaForEditMode:(int64_t)mode;
- (id)_analysisCacheKeyFor:(id)for;
- (id)_analysisForAlignment:(unint64_t)alignment;
- (id)_cachedAnalysisForKey:(id)key;
- (id)_createAndCachePhotoAnalysisForKey:(id)key dateAlignment:(unint64_t)alignment image:(id)image;
- (id)_dequeueToLoadIfMatchingGeneration:(unint64_t)generation;
- (void)_animationFinished:(BOOL)finished;
- (void)_animationStart;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_clearPreloaded;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_displayCachedPhoto:(id)photo animated:(BOOL)animated preroll:(BOOL)preroll completion:(id)completion;
- (void)_endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_finalizeForSnapshotting:(id)snapshotting;
- (void)_handleSingleTap:(id)tap;
- (void)_loadSnapshotContentViews;
- (void)_nextPhotoAnimated:(BOOL)animated preroll:(BOOL)preroll method:(unint64_t)method completion:(id)completion;
- (void)_nextPhotoReadyAnimated:(BOOL)animated preroll:(BOOL)preroll completion:(id)completion;
- (void)_operationIsDone;
- (void)_resetTapAnimationState;
- (void)_startBackgroundRefill;
- (void)_startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)_unloadSnapshotContentViews;
- (void)_updateContents:(BOOL)contents;
- (void)_updateDateAttributesAnimated:(BOOL)animated completion:(id)completion;
- (void)_updateForResourceDirectoryChange:(id)change;
- (void)_updateReader:(BOOL)reader;
- (void)layoutSubviews;
- (void)readerDidChange:(id)change;
@end

@implementation NTKPhotosFaceView

- (NTKPhotosFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = NTKPhotosFaceView;
  result = [(NTKBasePhotosFaceView *)&v6 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (result)
  {
    result->_currentContent = 2989;
  }

  return result;
}

- (void)layoutSubviews
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = NTKPhotosFaceView;
  layoutSubviews = [(NTKBasePhotosFaceView *)&v17 layoutSubviews];
  if (NTKInternalBuild(layoutSubviews, v4) && _os_feature_enabled_impl())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    posterImageView = [(NTKBasePhotosFaceView *)self posterImageView];
    subviews = [posterImageView subviews];

    v7 = [subviews countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 setHidden:1];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [subviews countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }

    posterImageView2 = [(NTKBasePhotosFaceView *)self posterImageView];
    MEMORY[0x2318D8E70]([posterImageView2 bounds]);
    [(UILabel *)self->_aplLabel setCenter:?];
  }
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKPhotosFaceView;
  [(NTKBasePhotosFaceView *)&v3 _applyFrozen];
  [(UITapGestureRecognizer *)self->_singleTapGesture setEnabled:[(NTKBasePhotosFaceView *)self isInteractive]];
}

- (void)_loadSnapshotContentViews
{
  v29.receiver = self;
  v29.super_class = NTKPhotosFaceView;
  [(NTKBasePhotosFaceView *)&v29 _loadSnapshotContentViews];
  if ((*(self + 1240) & 1) == 0)
  {
    *(self + 1240) |= 1u;
    device = [(NTKFaceView *)self device];
    self->_deviceSizeClass = [device sizeClass];

    v4 = [NTKRoundedCornerOverlayView alloc];
    [(NTKPhotosFaceView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    device2 = [(NTKFaceView *)self device];
    v14 = [(NTKRoundedCornerOverlayView *)v4 initWithFrame:device2 forDeviceCornerRadius:v6, v8, v10, v12];
    photoTransitionCornerView = self->_photoTransitionCornerView;
    self->_photoTransitionCornerView = v14;

    [(UIView *)self->_photoTransitionCornerView setAlpha:0.0];
    contentView = [(NTKFaceView *)self contentView];
    v17 = self->_photoTransitionCornerView;
    cornerView = [(NTKBasePhotosFaceView *)self cornerView];
    [contentView insertSubview:v17 aboveSubview:cornerView];

    v19 = objc_opt_new();
    preloaded = self->_preloaded;
    self->_preloaded = v19;

    v21 = objc_opt_new();
    toload = self->_toload;
    self->_toload = v21;

    v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleSingleTap_];
    singleTapGesture = self->_singleTapGesture;
    self->_singleTapGesture = v23;

    [(UITapGestureRecognizer *)self->_singleTapGesture setDelegate:self];
    [(NTKPhotosFaceView *)self addGestureRecognizer:self->_singleTapGesture];
    v25 = [(NTKPhotosFaceView *)self _updateContents:1];
    if (NTKInternalBuild(v25, v26))
    {
      if (_os_feature_enabled_impl())
      {
        timeView = [(NTKFaceView *)self timeView];
        [timeView setHidden:1];

        complicationContainerView = [(NTKFaceView *)self complicationContainerView];
        [complicationContainerView setHidden:1];
      }
    }
  }
}

- (void)_unloadSnapshotContentViews
{
  v9.receiver = self;
  v9.super_class = NTKPhotosFaceView;
  [(NTKBasePhotosFaceView *)&v9 _unloadSnapshotContentViews];
  if (*(self + 1240))
  {
    *(self + 1240) &= ~1u;
    [(UIView *)self->_photoTransitionCornerView removeFromSuperview];
    photoTransitionCornerView = self->_photoTransitionCornerView;
    self->_photoTransitionCornerView = 0;

    [(UIView *)self->_photoTransitionSnapshotView removeFromSuperview];
    photoTransitionSnapshotView = self->_photoTransitionSnapshotView;
    self->_photoTransitionSnapshotView = 0;

    [(NTKPhotosFaceView *)self removeGestureRecognizer:self->_singleTapGesture];
    singleTapGesture = self->_singleTapGesture;
    self->_singleTapGesture = 0;

    preloaded = self->_preloaded;
    self->_preloaded = 0;

    toload = self->_toload;
    self->_toload = 0;

    enqueuePreloadedPhotoCompletion = self->_enqueuePreloadedPhotoCompletion;
    self->_enqueuePreloadedPhotoCompletion = 0;

    ++self->_preloadGeneration;
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v16 = *MEMORY[0x277D85DE8];
  optionCopy = option;
  v13.receiver = self;
  v13.super_class = NTKPhotosFaceView;
  [(NTKBasePhotosFaceView *)&v13 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 14)
  {
    [(NTKPhotosFaceView *)self _updateDateAttributesAnimated:0];
  }

  else if (mode == 12)
  {
    v9 = optionCopy;
    currentContent = self->_currentContent;
    if (currentContent != [v9 photosContent])
    {
      v11 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        photosContent = [v9 photosContent];
        *buf = 67109120;
        v15 = photosContent;
        _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "NTKPhotosFaceView: photosContent now set to %d", buf, 8u);
      }

      self->_currentContent = [v9 photosContent];
      [(NTKPhotosFaceView *)self _updateContents:1];
    }
  }
}

- (void)_configureForEditMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = NTKPhotosFaceView;
  [(NTKBasePhotosFaceView *)&v5 _configureForEditMode:?];
  if (mode == 12)
  {
    [(NTKPhotosFaceView *)self _updateDateAttributesAnimated:1];
  }
}

- (void)_updateForResourceDirectoryChange:(id)change
{
  v4.receiver = self;
  v4.super_class = NTKPhotosFaceView;
  [(NTKFaceView *)&v4 _updateForResourceDirectoryChange:change];
  [(NTKPhotosFaceView *)self _updateContents:0];
}

- (double)_timeLabelAlphaForEditMode:(int64_t)mode
{
  result = 0.5;
  if (mode != 12)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = NTKPhotosFaceView;
    [(NTKBasePhotosFaceView *)&v6 _timeLabelAlphaForEditMode:0.5];
  }

  return result;
}

- (double)_backgroundImageAlphaForEditMode:(int64_t)mode
{
  result = 1.0;
  if (mode != 12)
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = NTKPhotosFaceView;
    [(NTKBasePhotosFaceView *)&v6 _backgroundImageAlphaForEditMode:1.0];
  }

  return result;
}

- (void)_startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  v5.receiver = self;
  v5.super_class = NTKPhotosFaceView;
  [(NTKBackgroundImageFaceView *)&v5 _startScrubbingAnimated:animated withCompletion:completion];
  *(self + 1240) |= 2u;
}

- (void)_endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  v5.receiver = self;
  v5.super_class = NTKPhotosFaceView;
  [(NTKBackgroundImageFaceView *)&v5 _endScrubbingAnimated:animated withCompletion:completion];
  *(self + 1240) &= ~2u;
}

- (void)_finalizeForSnapshotting:(id)snapshotting
{
  snapshottingCopy = snapshotting;
  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKPhotosFaceView _finalizeForSnapshotting", buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__NTKPhotosFaceView__finalizeForSnapshotting___block_invoke;
  aBlock[3] = &unk_27877E960;
  v6 = snapshottingCopy;
  v14 = v6;
  v7 = _Block_copy(aBlock);
  if ((self->_currentContent | 2) == 2)
  {
    v8 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "NTKPhotosFaceView waiting for photos analysis", buf, 2u);
    }

    v9 = _NTKPhotosAnalysisQueue();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__NTKPhotosFaceView__finalizeForSnapshotting___block_invoke_66;
    v11[3] = &unk_27877E960;
    v12 = v7;
    dispatch_async(v9, v11);
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "NTKPhotosFaceView nothing to wait for", buf, 2u);
    }

    v7[2](v7);
  }
}

void __46__NTKPhotosFaceView__finalizeForSnapshotting___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NTKPhotosFaceView__finalizeForSnapshotting___block_invoke_2;
  block[3] = &unk_27877E960;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (BOOL)_preloadNextPhoto
{
  numberOfPhotos = self->_numberOfPhotos;
  if (numberOfPhotos)
  {
    [(NTKPhotosFaceView *)self _nextPhotoAnimated:0 preroll:1 method:2 completion:0];
  }

  return numberOfPhotos != 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v7.receiver = self;
  v7.super_class = NTKPhotosFaceView;
  v5 = ![(NTKBackgroundImageFaceView *)&v7 gestureRecognizerShouldBegin:beginCopy]|| (*(self + 1240) & 8) == 0 || self->_singleTapGesture == beginCopy;

  return v5;
}

- (void)readerDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__NTKPhotosFaceView_readerDidChange___block_invoke;
  v6[3] = &unk_27877E438;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void *__37__NTKPhotosFaceView_readerDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearPreloaded];
  v2 = *(*(a1 + 32) + 1320);
  *(*(a1 + 32) + 1320) = [*(a1 + 40) count];
  v3 = *(a1 + 32);
  if (*(v3 + 1320))
  {
    v4 = [[_NTKPhotoIndexGenerator alloc] initWithSize:*(*(a1 + 32) + 1320)];
    v3 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 1256);
  *(v3 + 1256) = v4;

  result = *(a1 + 32);
  v7 = result[165];
  if (v2)
  {
    if (!v7)
    {

      return [result setNoPhotosViewVisible:1];
    }
  }

  else if (v7)
  {
    [result setNoPhotosViewVisible:0];
    v8 = *(a1 + 32);
    v9 = [v8 isInteractive];

    return [v8 _nextPhotoAnimated:v9 preroll:0 method:3 completion:0];
  }

  return result;
}

- (BOOL)_shouldAnimationContinue:(BOOL)continue
{
  if (continue && [(NTKFaceView *)self dataMode]== 1 && [(NTKBasePhotosFaceView *)self isInteractive]&& self->_numberOfPhotos)
  {
    return 1;
  }

  [(NTKPhotosFaceView *)self _resetTapAnimationState];
  return 0;
}

- (void)_displayCachedPhoto:(id)photo animated:(BOOL)animated preroll:(BOOL)preroll completion:(id)completion
{
  prerollCopy = preroll;
  animatedCopy = animated;
  v67 = *MEMORY[0x277D85DE8];
  photoCopy = photo;
  completionCopy = completion;
  if (photoCopy && ([photoCopy photo], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    image = [photoCopy image];
    [image scale];
    v15 = v14;
    [image size];
    if (!image || ((v18 = v15 * v17, v15 * v16 >= 1.0) ? (v19 = v18 < 1.0) : (v19 = 1), v19))
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      v20 = NTKGenerateMonochromeColorMatrixFromImage(image);
      [(NTKBasePhotosFaceView *)self setMonochromeColorMatrix:v20];

      photo = [photoCopy photo];
      [photo crop];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v68.origin.x = v23;
      v68.origin.y = v25;
      v68.size.width = v27;
      v68.size.height = v29;
      if (CGRectIsEmpty(v68) || (v69.origin.x = v23, v69.origin.y = v25, v69.size.width = v27, v69.size.height = v29, v70.origin.x = v23, v70.origin.y = v25, v70.size.width = v27, v70.size.height = v29, !CGRectEqualToRect(v69, v70)))
      {
        v30 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          photo2 = [photoCopy photo];
          localIdentifier = [photo2 localIdentifier];
          *location = 138413314;
          *&location[4] = localIdentifier;
          v59 = 2048;
          v60 = v23;
          v61 = 2048;
          v62 = v25;
          v63 = 2048;
          v64 = v27;
          v65 = 2048;
          v66 = v29;
          _os_log_error_impl(&dword_22D9C5000, v30, OS_LOG_TYPE_ERROR, "Bad crop on photo %@: { %.1f, %.1f, %.1f, %.1f }", location, 0x34u);
        }

        device = [(NTKFaceView *)self device];
        NTKPhotosDefaultCropForImage(image, device);
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        photo3 = [photoCopy photo];
        [photo3 setCrop:{v33, v35, v37, v39}];
      }

      posterImageView = [(NTKBasePhotosFaceView *)self posterImageView];
      [posterImageView setPhoto:photoCopy allowIris:1];

      [(NTKPhotosFaceView *)self setPresentedPhoto:photoCopy];
      if (prerollCopy)
      {
        posterImageView2 = [(NTKBasePhotosFaceView *)self posterImageView];
        isPhotoIris = [posterImageView2 isPhotoIris];

        if (isPhotoIris)
        {
          posterImageView3 = [(NTKBasePhotosFaceView *)self posterImageView];
          [posterImageView3 prepareToPlayWithMode:2];
        }
      }

      objc_initWeak(location, self);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __69__NTKPhotosFaceView__displayCachedPhoto_animated_preroll_completion___block_invoke;
      v55[3] = &unk_278781070;
      objc_copyWeak(&v57, location);
      v56 = completionCopy;
      v45 = [(NTKPhotosFaceView *)self _updateDateAttributesAnimated:animatedCopy completion:v55];
      if (NTKInternalBuild(v45, v46) && _os_feature_enabled_impl())
      {
        if (!self->_aplLabel)
        {
          v47 = objc_alloc_init(MEMORY[0x277D756B8]);
          aplLabel = self->_aplLabel;
          self->_aplLabel = v47;

          v49 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
          [(UILabel *)self->_aplLabel setFont:v49];

          whiteColor = [MEMORY[0x277D75348] whiteColor];
          [(UILabel *)self->_aplLabel setTextColor:whiteColor];

          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)self->_aplLabel setBackgroundColor:blackColor];

          posterImageView4 = [(NTKBasePhotosFaceView *)self posterImageView];
          [posterImageView4 addSubview:self->_aplLabel];
        }

        CLKUIComputeImageAPL();
      }

      objc_destroyWeak(&v57);
      objc_destroyWeak(location);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

void __69__NTKPhotosFaceView__displayCachedPhoto_animated_preroll_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateImageToBlur];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }
}

- (BOOL)_enqueuePreloadedPhoto:(id)photo ifMatchingGeneration:(unint64_t)generation
{
  photoCopy = photo;
  preloadGeneration = self->_preloadGeneration;
  if (preloadGeneration == generation)
  {
    [(NSMutableArray *)self->_preloaded enqueueCachedPhoto:photoCopy];
  }

  enqueuePreloadedPhotoCompletion = self->_enqueuePreloadedPhotoCompletion;
  if (enqueuePreloadedPhotoCompletion)
  {
    v9 = _Block_copy(enqueuePreloadedPhotoCompletion);
    v10 = self->_enqueuePreloadedPhotoCompletion;
    self->_enqueuePreloadedPhotoCompletion = 0;

    v9[2](v9, preloadGeneration == generation);
  }

  return preloadGeneration == generation;
}

- (id)_dequeueToLoadIfMatchingGeneration:(unint64_t)generation
{
  if (self->_preloadGeneration == generation)
  {
    dequeueCachedPhoto = [(NSMutableArray *)self->_toload dequeueCachedPhoto];
  }

  else
  {
    dequeueCachedPhoto = 0;
  }

  return dequeueCachedPhoto;
}

- (void)_startBackgroundRefill
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_preloaded count];
  v4 = [(NSMutableArray *)self->_toload count]+ v3;
  if (v4 < 2)
  {
    v6 = 2 - v4;
    preloadGeneration = self->_preloadGeneration;
    do
    {
      nextSequential = [(_NTKPhotoIndexGenerator *)self->_generator nextSequential];
      v9 = [(NTKPhotosReader *)self->_reader objectAtIndexedSubscript:nextSequential];
      v10 = [[NTKCachedPhoto alloc] initWithPhoto:v9 index:nextSequential];
      [(NSMutableArray *)self->_toload enqueueCachedPhoto:v10];

      --v6;
    }

    while (v6);
    objc_initWeak(&buf, self);
    if (_NTKPhotosLoadQueue_onceToken != -1)
    {
      [NTKPhotosFaceView _startBackgroundRefill];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__NTKPhotosFaceView__startBackgroundRefill__block_invoke;
    v12[3] = &unk_278781190;
    v11 = _NTKPhotosLoadQueue___photoLoadQueue;
    objc_copyWeak(v13, &buf);
    v13[1] = preloadGeneration;
    dispatch_async(v11, v12);

    objc_destroyWeak(v13);
    objc_destroyWeak(&buf);
  }

  else if (v3 >= 3)
  {
    v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = v3;
      v15 = 1024;
      v16 = 2;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "_preloaded.count (%d) higher than _NTKPhotosMaxPreloadedPhotos (%d)", &buf, 0xEu);
    }
  }
}

void __43__NTKPhotosFaceView__startBackgroundRefill__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D85CD0];
  do
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (!WeakRetained)
    {
      break;
    }

    v4 = WeakRetained;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__17;
    v18 = __Block_byref_object_dispose__17;
    v19 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__NTKPhotosFaceView__startBackgroundRefill__block_invoke_76;
    block[3] = &unk_278781140;
    block[4] = WeakRetained;
    block[5] = &v14;
    block[6] = *(a1 + 40);
    dispatch_sync(v2, block);
    v5 = v15[5];
    if (!v5)
    {
      _Block_object_dispose(&v14, 8);

      return;
    }

    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = [v5 load] ^ 1;
    v6 = *(v10 + 24);
    if ((v6 & 1) == 0)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __43__NTKPhotosFaceView__startBackgroundRefill__block_invoke_2;
      v8[3] = &unk_278781168;
      v8[4] = v4;
      v8[5] = &v9;
      v7 = *(a1 + 40);
      v8[6] = &v14;
      v8[7] = v7;
      dispatch_sync(v2, v8);

      v6 = *(v10 + 24);
    }

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v14, 8);
  }

  while ((v6 & 1) == 0);
}

void __43__NTKPhotosFaceView__startBackgroundRefill__block_invoke_76(uint64_t a1)
{
  v2 = [*(a1 + 32) _dequeueToLoadIfMatchingGeneration:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __43__NTKPhotosFaceView__startBackgroundRefill__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _enqueuePreloadedPhoto:*(*(*(a1 + 48) + 8) + 40) ifMatchingGeneration:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  return result;
}

- (void)_clearPreloaded
{
  [(NSMutableArray *)self->_preloaded removeAllObjects];
  [(NSMutableArray *)self->_toload removeAllObjects];
  ++self->_preloadGeneration;
  enqueuePreloadedPhotoCompletion = self->_enqueuePreloadedPhotoCompletion;
  self->_enqueuePreloadedPhotoCompletion = 0;
}

- (void)_nextPhotoReadyAnimated:(BOOL)animated preroll:(BOOL)preroll completion:(id)completion
{
  prerollCopy = preroll;
  animatedCopy = animated;
  preloaded = self->_preloaded;
  completionCopy = completion;
  dequeueCachedPhoto = [(NSMutableArray *)preloaded dequeueCachedPhoto];
  [(NTKPhotosFaceView *)self _displayCachedPhoto:dequeueCachedPhoto animated:animatedCopy preroll:prerollCopy completion:completionCopy];

  [(NTKPhotosFaceView *)self _startBackgroundRefill];
}

- (void)_nextPhotoAnimated:(BOOL)animated preroll:(BOOL)preroll method:(unint64_t)method completion:(id)completion
{
  prerollCopy = preroll;
  animatedCopy = animated;
  completionCopy = completion;
  v11 = completionCopy;
  if (self->_numberOfPhotos)
  {
    if ((method & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      presentedPhoto = [(NTKPhotosFaceView *)self presentedPhoto];
      [(NTKPhotosFaceView *)self _clearPreloaded];
      if (method == 3)
      {
        [(_NTKPhotoIndexGenerator *)self->_generator reset];
      }

      else if (self->_numberOfPhotos >= 2 && presentedPhoto != 0)
      {
        -[_NTKPhotoIndexGenerator setIndex:](self->_generator, "setIndex:", [presentedPhoto index]);
      }
    }

    if ([(NSMutableArray *)self->_preloaded count])
    {
      [(NTKPhotosFaceView *)self _nextPhotoReadyAnimated:animatedCopy preroll:prerollCopy completion:v11];
    }

    else
    {
      if (method == 2)
      {
        nextRandom = [(_NTKPhotoIndexGenerator *)self->_generator nextRandom];
      }

      else
      {
        if (!method)
        {
          objc_initWeak(&location, self);
          v20 = MEMORY[0x277D85DD0];
          v21 = 3221225472;
          v22 = __66__NTKPhotosFaceView__nextPhotoAnimated_preroll_method_completion___block_invoke;
          v23 = &unk_2787811B8;
          objc_copyWeak(&v25, &location);
          v26 = animatedCopy;
          v27 = prerollCopy;
          v24 = v11;
          v14 = _Block_copy(&v20);
          enqueuePreloadedPhotoCompletion = self->_enqueuePreloadedPhotoCompletion;
          self->_enqueuePreloadedPhotoCompletion = v14;

          [(NTKPhotosFaceView *)self _startBackgroundRefill:v20];
          objc_destroyWeak(&v25);
          objc_destroyWeak(&location);
          goto LABEL_25;
        }

        nextRandom = [(_NTKPhotoIndexGenerator *)self->_generator nextSequential];
      }

      v17 = nextRandom;
      v18 = [(NTKPhotosReader *)self->_reader objectAtIndexedSubscript:nextRandom];
      v19 = [[NTKCachedPhoto alloc] initWithPhoto:v18 index:v17];
      if ([(NTKCachedPhoto *)v19 load])
      {
        [(NTKPhotosFaceView *)self _displayCachedPhoto:v19 animated:animatedCopy preroll:prerollCopy completion:v11];
        [(NTKPhotosFaceView *)self _startBackgroundRefill];
      }

      else if (v11)
      {
        v11[2](v11, 0);
      }
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_25:
}

void __66__NTKPhotosFaceView__nextPhotoAnimated_preroll_method_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _nextPhotoReadyAnimated:*(a1 + 48) preroll:*(a1 + 49) completion:*(a1 + 32)];
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

- (void)_animationFinished:(BOOL)finished
{
  finishedCopy = finished;
  [(UIView *)self->_photoTransitionSnapshotView removeFromSuperview];
  photoTransitionSnapshotView = self->_photoTransitionSnapshotView;
  self->_photoTransitionSnapshotView = 0;

  *(self + 1240) &= ~8u;
  if (self->_queuedTransitionCount)
  {
    v6 = !finishedCopy;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && [(NTKFaceView *)self dataMode]== 1)
  {
    --self->_queuedTransitionCount;

    [(NTKPhotosFaceView *)self _handleSingleTap:0];
  }
}

- (void)_animationStart
{
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeScale(&v13, 0.95, 0.95);
  v12 = v13;
  cornerView = [(NTKBasePhotosFaceView *)self cornerView];
  v11 = v12;
  [cornerView setTransform:&v11];

  v10 = v13;
  posterImageView = [(NTKBasePhotosFaceView *)self posterImageView];
  v11 = v10;
  [posterImageView setTransform:&v11];

  posterImageView2 = [(NTKBasePhotosFaceView *)self posterImageView];
  [posterImageView2 setAlpha:0.0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__NTKPhotosFaceView__animationStart__block_invoke;
  v9[3] = &unk_27877DB10;
  v9[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:2 delay:v9 options:0 animations:0.25 completion:0.1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__NTKPhotosFaceView__animationStart__block_invoke_2;
  v8[3] = &unk_27877DB10;
  v8[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:2 delay:v8 options:0 animations:0.25 completion:0.0];
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__NTKPhotosFaceView__animationStart__block_invoke_3;
  v7[3] = &unk_27877DB10;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__NTKPhotosFaceView__animationStart__block_invoke_4;
  v6[3] = &unk_2787802F8;
  [MEMORY[0x277D75D18] animateWithDuration:131074 delay:v7 options:v6 animations:0.8 completion:0.0];
}

void __36__NTKPhotosFaceView__animationStart__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) posterImageView];
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v7 = *MEMORY[0x277CBF2C0];
  v6 = v7;
  v8 = v5;
  v9 = *(MEMORY[0x277CBF2C0] + 32);
  v4 = v9;
  [v2 setTransform:&v7];

  v3 = [*(a1 + 32) cornerView];
  v7 = v6;
  v8 = v5;
  v9 = v4;
  [v3 setTransform:&v7];
}

uint64_t __36__NTKPhotosFaceView__animationStart__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1288) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1296);

  return [v2 setAlpha:0.0];
}

void __36__NTKPhotosFaceView__animationStart__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) posterImageView];
  [v1 setAlpha:1.0];
}

- (void)_handleSingleTap:(id)tap
{
  tapCopy = tap;
  if ([(NTKBasePhotosFaceView *)self isInteractive]&& self->_numberOfPhotos >= 2 && (*(self + 1240) & 2) == 0)
  {
    if ((*(self + 1240) & 8) != 0)
    {
      queuedTransitionCount = self->_queuedTransitionCount;
      if (queuedTransitionCount <= 1)
      {
        self->_queuedTransitionCount = queuedTransitionCount + 1;
      }
    }

    else
    {
      *(self + 1240) |= 8u;
      posterImageView = [(NTKBasePhotosFaceView *)self posterImageView];
      v6 = [posterImageView snapshotViewAfterScreenUpdates:0];
      photoTransitionSnapshotView = self->_photoTransitionSnapshotView;
      self->_photoTransitionSnapshotView = v6;

      [(UIView *)self->_photoTransitionCornerView setAlpha:1.0];
      contentView = [(NTKFaceView *)self contentView];
      [contentView insertSubview:self->_photoTransitionSnapshotView belowSubview:self->_photoTransitionCornerView];

      objc_initWeak(&location, self);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __38__NTKPhotosFaceView__handleSingleTap___block_invoke;
      v10[3] = &unk_2787811E0;
      objc_copyWeak(&v11, &location);
      v10[4] = self;
      [(NTKPhotosFaceView *)self _nextPhotoAnimated:1 preroll:1 method:0 completion:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __38__NTKPhotosFaceView__handleSingleTap___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v6 = [WeakRetained _shouldAnimationContinue:a2];
    v5 = v9;
    if (v6)
    {
      v7 = [v9 posterImageView];
      v8 = [v7 isPhotoIris];

      if (v8)
      {
        [*(a1 + 32) _playIrisOnSingleTap];
      }

      else
      {
        [v9 _animationStart];
      }

      v5 = v9;
    }
  }
}

- (void)_resetTapAnimationState
{
  [(UIView *)self->_photoTransitionSnapshotView removeFromSuperview];
  photoTransitionSnapshotView = self->_photoTransitionSnapshotView;
  self->_photoTransitionSnapshotView = 0;

  *(self + 1240) &= ~8u;
  self->_queuedTransitionCount = 0;
}

- (void)_updateDateAttributesAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  currentContent = self->_currentContent;
  switch(currentContent)
  {
    case 2uLL:
LABEL_4:
      presentedPhoto = [(NTKPhotosFaceView *)self presentedPhoto];
      v9 = [(NTKPhotosFaceView *)self _analysisCacheKeyFor:presentedPhoto];

      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__17;
      v37 = __Block_byref_object_dispose__17;
      v38 = [(NTKPhotosFaceView *)self _cachedAnalysisForKey:v9];
      v10 = v34[5];
      if (v10)
      {
        [(NTKBasePhotosFaceView *)self _setDateAttributes:v10 animated:animatedCopy];
      }

      else
      {
        presentedPhoto2 = [(NTKPhotosFaceView *)self presentedPhoto];
        image = [presentedPhoto2 image];

        if (image)
        {
          objc_initWeak(&location, self);
          currentAnalysisOperationID = self->_currentAnalysisOperationID;
          presentedPhoto3 = [(NTKPhotosFaceView *)self presentedPhoto];
          image2 = [presentedPhoto3 image];

          dateAlignment = [(NTKBasePhotosFaceView *)self dateAlignment];
          v19 = _NTKPhotosAnalysisQueue();
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __62__NTKPhotosFaceView__updateDateAttributesAnimated_completion___block_invoke;
          block[3] = &unk_278781230;
          objc_copyWeak(v30, &location);
          v30[1] = currentAnalysisOperationID;
          v29 = &v33;
          v20 = v9;
          v30[2] = dateAlignment;
          v26 = v20;
          v27 = image2;
          v31 = animatedCopy;
          v28 = completionCopy;
          v21 = image2;
          dispatch_async(v19, block);

          objc_destroyWeak(v30);
          objc_destroyWeak(&location);
LABEL_12:
          _Block_object_dispose(&v33, 8);

          goto LABEL_19;
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }

      goto LABEL_12;
    case 1uLL:
      v11 = [(NTKPhotosFaceView *)self _analysisForAlignment:[(NTKBasePhotosFaceView *)self dateAlignment]];
      if (v11)
      {
        goto LABEL_9;
      }

      v22 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [NTKPhotosFaceView _updateDateAttributesAnimated:v22 completion:?];
      }

      if (NTKInternalBuild(v23, v24))
      {
        v11 = +[NTKPhotoAnalysis invalidAnalysis];
        if (v11)
        {
LABEL_9:
          v12 = v11;
          [(NTKBasePhotosFaceView *)self _setDateAttributes:v11 animated:animatedCopy];
        }
      }

      break;
    case 0uLL:
      goto LABEL_4;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_19:
}

void __62__NTKPhotosFaceView__updateDateAttributesAnimated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if ([WeakRetained _canOperationProceed:*(a1 + 72)])
  {
    v3 = [WeakRetained _createAndCachePhotoAnalysisForKey:*(a1 + 32) dateAlignment:*(a1 + 80) image:*(a1 + 40)];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__NTKPhotosFaceView__updateDateAttributesAnimated_completion___block_invoke_2;
    block[3] = &unk_278781208;
    block[4] = WeakRetained;
    v12 = *(a1 + 40);
    v14 = *(a1 + 88);
    v8 = *(a1 + 48);
    v6 = v8;
    v13 = v8;
    dispatch_sync(MEMORY[0x277D85CD0], block);

    v7 = v12;
LABEL_5:

    goto LABEL_6;
  }

  if (*(a1 + 48))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__NTKPhotosFaceView__updateDateAttributesAnimated_completion___block_invoke_3;
    v9[3] = &unk_27877E960;
    v10 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v9);
    v7 = v10;
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __62__NTKPhotosFaceView__updateDateAttributesAnimated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _operationIsDone];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) presentedPhoto];
  v4 = [v3 image];

  if (v2 == v4)
  {
    [*(a1 + 32) _setDateAttributes:*(*(*(a1 + 56) + 8) + 40) animated:*(a1 + 64)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (BOOL)_canOperationProceed:(unint64_t)proceed
{
  v5 = _NTKPhotosAnalysisQueue();
  dispatch_assert_queue_V2(v5);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NTKPhotosFaceView__canOperationProceed___block_invoke;
  block[3] = &unk_278781258;
  block[5] = &v8;
  block[6] = proceed;
  block[4] = self;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  LOBYTE(proceed) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return proceed;
}

void *__42__NTKPhotosFaceView__canOperationProceed___block_invoke(void *result)
{
  v1 = result[4];
  if ((*(v1 + 1240) & 4) == 0 && result[6] == *(v1 + 1272))
  {
    *(v1 + 1240) |= 4u;
    *(*(result[5] + 8) + 24) = 1;
  }

  return result;
}

- (void)_operationIsDone
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  ++self->_currentAnalysisOperationID;
  *(self + 1240) &= ~4u;
}

- (void)_updateContents:(BOOL)contents
{
  contentsCopy = contents;
  v5 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "NTKPhotosFaceView: _updateContents", v6, 2u);
  }

  if (*(self + 1240))
  {
    [(NTKPhotosFaceView *)self _updateReader:contentsCopy];
    [(NTKBasePhotosFaceView *)self setNoPhotosViewVisible:self->_numberOfPhotos == 0];
    [(NTKPhotosFaceView *)self _nextPhotoAnimated:[(NTKBasePhotosFaceView *)self isInteractive] preroll:0 method:3 completion:0];
  }
}

- (void)_updateReader:(BOOL)reader
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_currentContent != 2989)
  {
    generator = [(NTKFaceView *)self resourceDirectory];
    if (!reader)
    {
      reader = self->_reader;
      if (reader)
      {
        resourceDirectory = [(NTKPhotosReader *)reader resourceDirectory];
        v10 = NTKEqualStrings(resourceDirectory, generator);

        if (v10)
        {
          p_super = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v20) = 0;
            _os_log_impl(&dword_22D9C5000, p_super, OS_LOG_TYPE_DEFAULT, "_updateReader: resource dir didn't change; re-using existing reader", &v20, 2u);
          }

LABEL_24:

          goto LABEL_25;
        }
      }
    }

    [(NTKPhotosFaceView *)self _clearPreloaded];
    currentContent = self->_currentContent;
    if (currentContent)
    {
      if (currentContent == 1)
      {
        v13 = [NTKPhotosReader readerForResourceDirectory:generator];
      }

      else
      {
        if (currentContent != 2)
        {
          goto LABEL_17;
        }

        v13 = [NTKPhotosReader readerForMemoriesWithResourceDirectory:generator];
      }
    }

    else
    {
      v13 = [NTKPhotosReader readerForSyncedAlbumWithResourceDirectory:generator];
    }

    v14 = self->_reader;
    self->_reader = v13;

LABEL_17:
    [(NTKPhotosReader *)self->_reader setDelegate:self];
    v15 = [(NTKPhotosReader *)self->_reader count];
    self->_numberOfPhotos = v15;
    v16 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        numberOfPhotos = self->_numberOfPhotos;
        v20 = 138412546;
        v21 = generator;
        v22 = 2048;
        v23 = numberOfPhotos;
        _os_log_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_DEFAULT, "_updateReader: new reader for resource directory %@ (%ld)", &v20, 0x16u);
      }

      v19 = [[_NTKPhotoIndexGenerator alloc] initWithSize:self->_numberOfPhotos];
      p_super = &self->_generator->super;
      self->_generator = v19;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(NTKPhotosFaceView *)generator _updateReader:v17];
      }

      p_super = &self->_generator->super;
      self->_generator = 0;
    }

    goto LABEL_24;
  }

  v4 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [NTKPhotosFaceView _updateReader:v4];
  }

  [(NTKPhotosFaceView *)self _clearPreloaded];
  self->_numberOfPhotos = 0;
  v5 = self->_reader;
  self->_reader = 0;

  generator = self->_generator;
  self->_generator = 0;
LABEL_25:
}

- (id)_analysisForAlignment:(unint64_t)alignment
{
  presentedPhoto = [(NTKPhotosFaceView *)self presentedPhoto];
  photo = [presentedPhoto photo];
  v7 = [photo analysisForAlignment:alignment deviceSizeClass:self->_deviceSizeClass];

  return v7;
}

- (id)_analysisCacheKeyFor:(id)for
{
  photo = [for photo];
  dateAlignment = [(NTKBasePhotosFaceView *)self dateAlignment];
  v6 = CLKDeviceCategoryForSizeClass();
  if (dateAlignment)
  {
    v7 = 79;
  }

  else
  {
    v7 = 73;
  }

  if (dateAlignment)
  {
    v8 = 68;
  }

  else
  {
    v8 = 85;
  }

  if (dateAlignment)
  {
    v9 = 115;
  }

  else
  {
    v9 = 110;
  }

  if (v6 != 6)
  {
    v9 = 45;
  }

  if (v6 != 5)
  {
    v8 = v9;
  }

  if (v6 != 4)
  {
    v7 = v8;
  }

  if (dateAlignment)
  {
    v10 = 66;
  }

  else
  {
    v10 = 84;
  }

  if (dateAlignment)
  {
    v11 = 82;
  }

  else
  {
    v11 = 76;
  }

  if (dateAlignment)
  {
    v12 = 83;
  }

  else
  {
    v12 = 70;
  }

  if (v6 == 3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 45;
  }

  if (v6 == 2)
  {
    v13 = v11;
  }

  if (v6 == 1)
  {
    v13 = v10;
  }

  if (v6 <= 3)
  {
    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  v15 = MEMORY[0x277CCACA8];
  localIdentifier = [photo localIdentifier];
  modificationDate = [photo modificationDate];
  v18 = [v15 stringWithFormat:@"%@~%@~%u~%c", localIdentifier, modificationDate, 1, v14];

  return v18;
}

- (id)_cachedAnalysisForKey:(id)key
{
  keyCopy = key;
  v4 = +[NTKPhotoAnalysisFileCache sharedInstance];
  v5 = [v4 photoAnalysisForIdentifier:keyCopy];

  return v5;
}

- (id)_createAndCachePhotoAnalysisForKey:(id)key dateAlignment:(unint64_t)alignment image:(id)image
{
  deviceSizeClass = self->_deviceSizeClass;
  keyCopy = key;
  v9 = [NTKPhotoAnalysis analysisWithImage:image alignment:alignment deviceSizeClass:deviceSizeClass];
  v10 = +[NTKPhotoAnalysisFileCache sharedInstance];
  [v10 setPhotoAnalysis:v9 forIdentifier:keyCopy];

  return v9;
}

- (void)_updateDateAttributesAnimated:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 presentedPhoto];
  v4 = [v3 photo];
  v5 = [v4 imageURL];
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "photo analysis missing for %@", &v6, 0xCu);
}

- (void)_updateReader:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "_updateReader: new reader for resource directory %@ is empty!", &v2, 0xCu);
}

@end