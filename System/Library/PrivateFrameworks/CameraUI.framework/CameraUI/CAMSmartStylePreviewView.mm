@interface CAMSmartStylePreviewView
- (CAMSmartStylePreviewView)initWithFrame:(CGRect)a3;
- (CAMSmartStylePreviewViewDelegate)delegate;
- (NSDictionary)_fileURLImageProperties;
- (NSURL)_fileURL;
- (PEAsset)_asset;
- (void)_addConstraints;
- (void)_setComposition:(id)a3;
- (void)_setDidFinishRendering:(BOOL)a3;
- (void)_updateMediaViewZoomIfNecessary;
- (void)_updatePreviewAdjustments;
- (void)mediaViewDidFinishRendering:(id)a3 withStatistics:(id)a4;
- (void)setLogIdentifier:(id)a3;
- (void)setResourceLoadResult:(id)a3;
- (void)setStyle:(id)a3;
- (void)speedUpFadeInAnimations;
@end

@implementation CAMSmartStylePreviewView

- (CAMSmartStylePreviewView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CAMSmartStylePreviewView;
  v3 = [(CAMSmartStylePreviewView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B3DC0]);
    mediaView = v3->__mediaView;
    v3->__mediaView = v4;

    [(NUMediaView *)v3->__mediaView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NUMediaView *)v3->__mediaView setUserInteractionEnabled:0];
    [(NUMediaView *)v3->__mediaView setClipsToBounds:1];
    [(NUMediaView *)v3->__mediaView setDelegate:v3];
    [(NUMediaView *)v3->__mediaView setAlpha:0.0];
    [(CAMSmartStylePreviewView *)v3 addSubview:v3->__mediaView];
    v6 = [MEMORY[0x1E69DC888] systemGray5Color];
    [(CAMSmartStylePreviewView *)v3 setBackgroundColor:v6];

    [(CAMSmartStylePreviewView *)v3 _addConstraints];
  }

  return v3;
}

- (void)setLogIdentifier:(id)a3
{
  v5 = a3;
  logIdentifier = self->_logIdentifier;
  if (logIdentifier != v5)
  {
    v7 = v5;
    logIdentifier = [(NSString *)logIdentifier isEqualToString:v5];
    v5 = v7;
    if ((logIdentifier & 1) == 0)
    {
      objc_storeStrong(&self->_logIdentifier, a3);
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](logIdentifier, v5);
}

- (void)setResourceLoadResult:(id)a3
{
  v5 = a3;
  if (self->_resourceLoadResult != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_resourceLoadResult, a3);
    v6 = [(CAMSmartStyleSettingsResourceLoadResult *)v9 compositionController];
    v7 = [v6 copy];
    compositionController = self->__compositionController;
    self->__compositionController = v7;

    [(CAMSmartStylePreviewView *)self _updatePreviewAdjustments];
    v5 = v9;
  }
}

- (PEAsset)_asset
{
  v2 = [(CAMSmartStylePreviewView *)self resourceLoadResult];
  v3 = [v2 asset];

  return v3;
}

- (NSURL)_fileURL
{
  v2 = [(CAMSmartStylePreviewView *)self resourceLoadResult];
  v3 = [v2 fileURL];

  return v3;
}

- (NSDictionary)_fileURLImageProperties
{
  v2 = [(CAMSmartStylePreviewView *)self resourceLoadResult];
  v3 = [v2 fileURLImageProperties];

  return v3;
}

- (void)setStyle:(id)a3
{
  v5 = a3;
  style = self->_style;
  if (style != v5)
  {
    v7 = v5;
    style = [style isEqualToSmartStyle:v5];
    v5 = v7;
    if ((style & 1) == 0)
    {
      objc_storeStrong(&self->_style, a3);
      style = [(CAMSmartStylePreviewView *)self _updatePreviewAdjustments];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](style, v5);
}

- (void)_setDidFinishRendering:(BOOL)a3
{
  if (self->_didFinishRendering != a3)
  {
    self->_didFinishRendering = a3;
    if (a3)
    {
      v4 = [(CAMSmartStylePreviewView *)self delegate];
      [v4 smartStylePreviewViewDidFinishRendering:self];
    }
  }
}

- (void)speedUpFadeInAnimations
{
  v2 = [(NUMediaView *)self->__mediaView layer];
  [v2 removeAnimationForKey:@"opacity"];
}

- (void)mediaViewDidFinishRendering:(id)a3 withStatistics:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->__mediaView == a3)
  {
    v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(CAMSmartStylePreviewView *)self logIdentifier];
      v9 = [(CAMSmartStylePreviewView *)self resourceLoadResult];
      v10 = [v9 logIdentifier];
      [v6 totalDuration];
      v12 = v11;
      [v6 duration];
      v14 = v13;
      [v6 latency];
      *buf = 138544386;
      v19 = v8;
      v20 = 2114;
      v21 = v10;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = v14;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@: didFinishRendering totalDuration=%.3f (duration=%.3f latency=%.3f)", buf, 0x34u);
    }

    [(CAMSmartStylePreviewView *)self _setDidFinishRendering:1];
    [(NUMediaView *)self->__mediaView alpha];
    if (v16 == 0.0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__CAMSmartStylePreviewView_mediaViewDidFinishRendering_withStatistics___block_invoke;
      block[3] = &unk_1E76F77B0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    [(CAMSmartStylePreviewView *)self _updateMediaViewZoomIfNecessary];
  }
}

uint64_t __71__CAMSmartStylePreviewView_mediaViewDidFinishRendering_withStatistics___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __71__CAMSmartStylePreviewView_mediaViewDidFinishRendering_withStatistics___block_invoke_2;
  v2[3] = &unk_1E76F77B0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:1.5];
}

- (void)_addConstraints
{
  v17[4] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696ACD8];
  v16 = [(NUMediaView *)self->__mediaView topAnchor];
  v15 = [(CAMSmartStylePreviewView *)self topAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v17[0] = v14;
  v3 = [(NUMediaView *)self->__mediaView bottomAnchor];
  v4 = [(CAMSmartStylePreviewView *)self bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v17[1] = v5;
  v6 = [(NUMediaView *)self->__mediaView leadingAnchor];
  v7 = [(CAMSmartStylePreviewView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v17[2] = v8;
  v9 = [(NUMediaView *)self->__mediaView trailingAnchor];
  v10 = [(CAMSmartStylePreviewView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v17[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  [v13 activateConstraints:v12];
}

- (void)_updatePreviewAdjustments
{
  v3 = [(CAMSmartStylePreviewView *)self style];
  v4 = [(CAMSmartStylePreviewView *)self _compositionController];
  v5 = [(CAMSmartStylePreviewView *)self _asset];
  v6 = [(CAMSmartStylePreviewView *)self _fileURL];
  v7 = [(CAMSmartStylePreviewView *)self _fileURLImageProperties];
  v8 = [(CAMSmartStylePreviewView *)self resourceLoadResult];
  [v8 cropRect];
  v13 = [CAMSmartStyleSettingsRenderUtilities compositionForStyle:v3 compositionController:v4 originalAsset:v5 fileURL:v6 fileURLImageProperties:v7 aspectRatio:1.0 cropRect:v9, v10, v11, v12];

  [(CAMSmartStylePreviewView *)self _setComposition:v13];
}

- (void)_setComposition:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->__composition != v5)
  {
    v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CAMSmartStylePreviewView *)self logIdentifier];
      v8 = [(CAMSmartStylePreviewView *)self style];
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: updating composition for %{public}@", &v9, 0x16u);
    }

    objc_storeStrong(&self->__composition, a3);
    self->__hasUpdatedZoomForComposition = 0;
    [(NUMediaView *)self->__mediaView setComposition:v5];
    [(CAMSmartStylePreviewView *)self _setDidFinishRendering:0];
    [(CAMSmartStylePreviewView *)self _updateMediaViewZoomIfNecessary];
  }
}

- (void)_updateMediaViewZoomIfNecessary
{
  mediaView = self->__mediaView;
  if (mediaView)
  {
    if (!self->__hasUpdatedZoomForComposition)
    {
      if (self->__composition)
      {
        [(NUMediaView *)mediaView setZoomScaleToFit];
        [(NUMediaView *)self->__mediaView zoomScale];
        v5 = v4;
        [(NUMediaView *)self->__mediaView imageFrame];
        x = v21.origin.x;
        y = v21.origin.y;
        width = v21.size.width;
        height = v21.size.height;
        v10 = CGRectGetHeight(v21);
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v11 = CGRectGetWidth(v22);
        if (v10 != 0.0)
        {
          v12 = v11;
          if (v11 != 0.0)
          {
            v13 = v10 / v11;
            +[CAMSmartStylePreviewViewController desiredCarouselRatio];
            if (v13 != v14)
            {
              v15 = v14;
              [(NUMediaView *)self->__mediaView frame];
              if (v13 <= v15)
              {
                v20 = CGRectGetHeight(*&v16) / v10;
              }

              else
              {
                v20 = CGRectGetWidth(*&v16) / v12;
              }

              [(NUMediaView *)self->__mediaView setZoomScale:v5 * v20];
            }

            self->__hasUpdatedZoomForComposition = 1;
          }
        }
      }
    }
  }
}

- (CAMSmartStylePreviewViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end