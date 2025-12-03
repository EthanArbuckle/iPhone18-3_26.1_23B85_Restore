@interface CAMSmartStylePreviewView
- (CAMSmartStylePreviewView)initWithFrame:(CGRect)frame;
- (CAMSmartStylePreviewViewDelegate)delegate;
- (NSDictionary)_fileURLImageProperties;
- (NSURL)_fileURL;
- (PEAsset)_asset;
- (void)_addConstraints;
- (void)_setComposition:(id)composition;
- (void)_setDidFinishRendering:(BOOL)rendering;
- (void)_updateMediaViewZoomIfNecessary;
- (void)_updatePreviewAdjustments;
- (void)mediaViewDidFinishRendering:(id)rendering withStatistics:(id)statistics;
- (void)setLogIdentifier:(id)identifier;
- (void)setResourceLoadResult:(id)result;
- (void)setStyle:(id)style;
- (void)speedUpFadeInAnimations;
@end

@implementation CAMSmartStylePreviewView

- (CAMSmartStylePreviewView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CAMSmartStylePreviewView;
  v3 = [(CAMSmartStylePreviewView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
    [(CAMSmartStylePreviewView *)v3 setBackgroundColor:systemGray5Color];

    [(CAMSmartStylePreviewView *)v3 _addConstraints];
  }

  return v3;
}

- (void)setLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  logIdentifier = self->_logIdentifier;
  if (logIdentifier != identifierCopy)
  {
    v7 = identifierCopy;
    logIdentifier = [(NSString *)logIdentifier isEqualToString:identifierCopy];
    identifierCopy = v7;
    if ((logIdentifier & 1) == 0)
    {
      objc_storeStrong(&self->_logIdentifier, identifier);
      identifierCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](logIdentifier, identifierCopy);
}

- (void)setResourceLoadResult:(id)result
{
  resultCopy = result;
  if (self->_resourceLoadResult != resultCopy)
  {
    v9 = resultCopy;
    objc_storeStrong(&self->_resourceLoadResult, result);
    compositionController = [(CAMSmartStyleSettingsResourceLoadResult *)v9 compositionController];
    v7 = [compositionController copy];
    compositionController = self->__compositionController;
    self->__compositionController = v7;

    [(CAMSmartStylePreviewView *)self _updatePreviewAdjustments];
    resultCopy = v9;
  }
}

- (PEAsset)_asset
{
  resourceLoadResult = [(CAMSmartStylePreviewView *)self resourceLoadResult];
  asset = [resourceLoadResult asset];

  return asset;
}

- (NSURL)_fileURL
{
  resourceLoadResult = [(CAMSmartStylePreviewView *)self resourceLoadResult];
  fileURL = [resourceLoadResult fileURL];

  return fileURL;
}

- (NSDictionary)_fileURLImageProperties
{
  resourceLoadResult = [(CAMSmartStylePreviewView *)self resourceLoadResult];
  fileURLImageProperties = [resourceLoadResult fileURLImageProperties];

  return fileURLImageProperties;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  style = self->_style;
  if (style != styleCopy)
  {
    v7 = styleCopy;
    style = [style isEqualToSmartStyle:styleCopy];
    styleCopy = v7;
    if ((style & 1) == 0)
    {
      objc_storeStrong(&self->_style, style);
      style = [(CAMSmartStylePreviewView *)self _updatePreviewAdjustments];
      styleCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](style, styleCopy);
}

- (void)_setDidFinishRendering:(BOOL)rendering
{
  if (self->_didFinishRendering != rendering)
  {
    self->_didFinishRendering = rendering;
    if (rendering)
    {
      delegate = [(CAMSmartStylePreviewView *)self delegate];
      [delegate smartStylePreviewViewDidFinishRendering:self];
    }
  }
}

- (void)speedUpFadeInAnimations
{
  layer = [(NUMediaView *)self->__mediaView layer];
  [layer removeAnimationForKey:@"opacity"];
}

- (void)mediaViewDidFinishRendering:(id)rendering withStatistics:(id)statistics
{
  v28 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  if (self->__mediaView == rendering)
  {
    v7 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(CAMSmartStylePreviewView *)self logIdentifier];
      resourceLoadResult = [(CAMSmartStylePreviewView *)self resourceLoadResult];
      logIdentifier2 = [resourceLoadResult logIdentifier];
      [statisticsCopy totalDuration];
      v12 = v11;
      [statisticsCopy duration];
      v14 = v13;
      [statisticsCopy latency];
      *buf = 138544386;
      v19 = logIdentifier;
      v20 = 2114;
      v21 = logIdentifier2;
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
  topAnchor = [(NUMediaView *)self->__mediaView topAnchor];
  topAnchor2 = [(CAMSmartStylePreviewView *)self topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v17[0] = v14;
  bottomAnchor = [(NUMediaView *)self->__mediaView bottomAnchor];
  bottomAnchor2 = [(CAMSmartStylePreviewView *)self bottomAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v17[1] = v5;
  leadingAnchor = [(NUMediaView *)self->__mediaView leadingAnchor];
  leadingAnchor2 = [(CAMSmartStylePreviewView *)self leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v17[2] = v8;
  trailingAnchor = [(NUMediaView *)self->__mediaView trailingAnchor];
  trailingAnchor2 = [(CAMSmartStylePreviewView *)self trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v17[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  [v13 activateConstraints:v12];
}

- (void)_updatePreviewAdjustments
{
  style = [(CAMSmartStylePreviewView *)self style];
  _compositionController = [(CAMSmartStylePreviewView *)self _compositionController];
  _asset = [(CAMSmartStylePreviewView *)self _asset];
  _fileURL = [(CAMSmartStylePreviewView *)self _fileURL];
  _fileURLImageProperties = [(CAMSmartStylePreviewView *)self _fileURLImageProperties];
  resourceLoadResult = [(CAMSmartStylePreviewView *)self resourceLoadResult];
  [resourceLoadResult cropRect];
  v13 = [CAMSmartStyleSettingsRenderUtilities compositionForStyle:style compositionController:_compositionController originalAsset:_asset fileURL:_fileURL fileURLImageProperties:_fileURLImageProperties aspectRatio:1.0 cropRect:v9, v10, v11, v12];

  [(CAMSmartStylePreviewView *)self _setComposition:v13];
}

- (void)_setComposition:(id)composition
{
  v13 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  if (self->__composition != compositionCopy)
  {
    v6 = os_log_create("com.apple.camera", "SmartStyleSettings");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = [(CAMSmartStylePreviewView *)self logIdentifier];
      style = [(CAMSmartStylePreviewView *)self style];
      v9 = 138543618;
      v10 = logIdentifier;
      v11 = 2114;
      v12 = style;
      _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: updating composition for %{public}@", &v9, 0x16u);
    }

    objc_storeStrong(&self->__composition, composition);
    self->__hasUpdatedZoomForComposition = 0;
    [(NUMediaView *)self->__mediaView setComposition:compositionCopy];
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