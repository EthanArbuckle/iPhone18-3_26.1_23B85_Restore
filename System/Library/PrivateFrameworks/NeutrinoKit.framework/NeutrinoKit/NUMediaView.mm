@interface NUMediaView
+ (UIEdgeInsets)_proposedInsetsForInsets:(UIEdgeInsets)insets contentSize:(CGSize)size inFrame:(CGRect)frame centerContent:(BOOL)content;
+ (double)currentEDRHeadroomForScreen:(id)screen;
+ (double)maximumEDRHeadroomForScreen:(id)screen;
- (BOOL)hasOverlayWithIdentifier:(id)identifier;
- (BOOL)isMuted;
- (BOOL)loopsVideoPlayback;
- (CGPoint)convertPoint:(CGPoint)point fromSpace:(id)space toView:(id)view;
- (CGPoint)convertPoint:(CGPoint)point fromView:(id)view toSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point toNormalizedYDownSourceSpaceFromView:(id)view;
- (CGPoint)convertPointFromImage:(CGPoint)image;
- (CGPoint)convertPointToImage:(CGPoint)image;
- (CGRect)convertNormalizedViewRect:(CGRect)rect fromSpace:(id)space;
- (CGRect)convertRectFromImage:(CGRect)image;
- (CGRect)convertRectToImage:(CGRect)image;
- (CGRect)convertViewRect:(CGRect)rect fromSpace:(id)space;
- (CGRect)cropRect;
- (CGRect)imageFrame;
- (CGSize)_imageSize;
- (CGSize)_masterSizeWithoutGeometry;
- (NUMediaView)initWithCoder:(id)coder;
- (NUMediaView)initWithFrame:(CGRect)frame;
- (NUMediaViewDelegate)delegate;
- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)size inFrame:(CGRect)frame;
- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)size inFrame:(CGRect)frame alwaysCenterContent:(BOOL)content;
- (UIEdgeInsets)edgeInsets;
- (id)_layerRecursiveDescription;
- (id)_livePhotoView;
- (id)_videoPlayerController;
- (id)_videoPlayerView;
- (id)snapshotImage;
- (void)_invalidateDisplayEDRHeadroomMonitor;
- (void)_livephotoPlaybackDidEnd;
- (void)_livephotoPlaybackWillBegin;
- (void)_monitorDisplayEDRHeadroom:(id)headroom;
- (void)_rendererDidCreateAVPlayerController:(id)controller;
- (void)_rendererDidFinishPreparingVideo;
- (void)_rendererDidFinishWithStatistics:(id)statistics;
- (void)_rendererDidStartPreparingVideo;
- (void)_rendererDidUpdateLivePhoto;
- (void)_scheduleDisplayEDRHeadroomMonitor;
- (void)_setLayerFilters:(id)filters;
- (void)_setPipelineFilters:(id)filters shouldUpdateContent:(BOOL)content;
- (void)_setupViews;
- (void)_startVideoPlayback;
- (void)_stopVideoPlayback;
- (void)_transitionToInsets:(UIEdgeInsets)insets duration:(double)duration animationCurve:(int64_t)curve updateRenderContent:(BOOL)content;
- (void)_updateContentInsets;
- (void)_updateRenderContent;
- (void)_updateScreenSpaceOverlay;
- (void)_updateVideoPlayerAlpha:(BOOL)alpha;
- (void)_updateVisibleImageOverlayView;
- (void)addOverlay:(id)overlay withIdentifier:(id)identifier style:(int64_t)style;
- (void)didMoveToWindow;
- (void)geometryUpdated;
- (void)installRenderingCompletionBlock:(id)block;
- (void)layoutSubviews;
- (void)playerController:(id)controller didUpdateElapsedTime:(double)time duration:(double)duration;
- (void)playerControllerDidFinishPlaying:(id)playing duration:(double)duration;
- (void)playerControllerFailedToPlayToEnd:(id)end error:(id)error;
- (void)playerControllerIsReadyForPlayback:(id)playback;
- (void)playerRateDidChange:(id)change rate:(float)rate;
- (void)removeOverlayWithIdentifier:(id)identifier;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidZoom:(id)zoom;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view;
- (void)setAlwaysBounceScrollView:(BOOL)view;
- (void)setAngle:(double)angle;
- (void)setCenterContent:(BOOL)content;
- (void)setComposition:(id)composition;
- (void)setDelegate:(id)delegate;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setLoopsVideoPlayback:(BOOL)playback;
- (void)setMaximumZoomScale:(double)scale;
- (void)setMedia:(id)media;
- (void)setMedia:(id)media displayType:(int64_t)type;
- (void)setMinimumZoomScale:(double)scale;
- (void)setMuted:(BOOL)muted;
- (void)setVideoPlayerVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setZoomScale:(double)scale;
- (void)setZoomScaleToFit;
- (void)willMoveToWindow:(id)window;
@end

@implementation NUMediaView

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)_masterSizeWithoutGeometry
{
  width = self->__masterSizeWithoutGeometry.width;
  height = self->__masterSizeWithoutGeometry.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NUMediaViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)playerControllerIsReadyForPlayback:(id)playback
{
  v9 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  if (self->_delegateFlags.hasIsReadyForVideoPlayback)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewIsReadyForVideoPlayback:self];
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v6 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = playbackCopy;
    _os_log_debug_impl(&dword_25BD29000, v6, OS_LOG_TYPE_DEBUG, "<controller: %p> ", &v7, 0xCu);
  }
}

- (void)playerControllerFailedToPlayToEnd:(id)end error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  endCopy = end;
  errorCopy = error;
  if (self->_delegateFlags.hasFailedToPlayToEnd)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewFailedToPlayToEnd:self error:errorCopy];
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v9 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218242;
    v11 = endCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_debug_impl(&dword_25BD29000, v9, OS_LOG_TYPE_DEBUG, "<controller: %p> failed to play to end: %@", &v10, 0x16u);
  }
}

- (void)playerController:(id)controller didUpdateElapsedTime:(double)time duration:(double)duration
{
  v15 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v8 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218496;
    v10 = controllerCopy;
    v11 = 2048;
    timeCopy = time;
    v13 = 2048;
    durationCopy = duration;
    _os_log_debug_impl(&dword_25BD29000, v8, OS_LOG_TYPE_DEBUG, "<controller: %p> %g %g", &v9, 0x20u);
  }
}

- (void)playerControllerDidFinishPlaying:(id)playing duration:(double)duration
{
  v13 = *MEMORY[0x277D85DE8];
  playingCopy = playing;
  if (self->_delegateFlags.hasDidPlayToEnd)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidPlayToEnd:self];
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v8 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218240;
    v10 = playingCopy;
    v11 = 2048;
    durationCopy = duration;
    _os_log_debug_impl(&dword_25BD29000, v8, OS_LOG_TYPE_DEBUG, "<controller: %p> %g", &v9, 0x16u);
  }
}

- (void)playerRateDidChange:(id)change rate:(float)rate
{
  delegate = [(NUMediaView *)self delegate];
  if (rate <= 0.0)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate mediaViewDidEndPlayback:self];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate mediaViewDidStartPlayback:self];
  }
}

- (BOOL)hasOverlayWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_overlayViews objectForKeyedSubscript:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)_updateVisibleImageOverlayView
{
  [(NUMediaView *)self imageFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NUMediaView *)self frame];
  v19.origin.x = v11;
  v19.origin.y = v12;
  v19.size.width = v13;
  v19.size.height = v14;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  v18 = CGRectIntersection(v17, v19);
  visibleImageOverlayView = self->_visibleImageOverlayView;

  [(_NUMediaVisibleImageOverlayView *)visibleImageOverlayView setFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
}

- (void)_updateScreenSpaceOverlay
{
  [(NUMediaView *)self imageFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView frame];
  v18.origin.x = v11;
  v18.origin.y = v12;
  v18.size.width = v13;
  v18.size.height = v14;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  if (!CGRectEqualToRect(v17, v18))
  {
    screenSpaceOverlayView = self->_screenSpaceOverlayView;
    [(NUMediaView *)self imageFrame];

    [(_NUMediaScreenSpaceOverlayView *)screenSpaceOverlayView setFrame:?];
  }
}

- (void)removeOverlayWithIdentifier:(id)identifier
{
  overlayViews = self->_overlayViews;
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)overlayViews objectForKeyedSubscript:identifierCopy];
  [v5 removeFromSuperview];

  [(NSMutableDictionary *)self->_overlayViews setObject:0 forKeyedSubscript:identifierCopy];
}

- (void)addOverlay:(id)overlay withIdentifier:(id)identifier style:(int64_t)style
{
  identifierCopy = identifier;
  overlayCopy = overlay;
  [overlayCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  if (!style)
  {
    v10 = &OBJC_IVAR___NUMediaView__screenSpaceOverlayView;
    goto LABEL_5;
  }

  if (style == 1)
  {
    v10 = &OBJC_IVAR___NUMediaView__visibleImageOverlayView;
LABEL_5:
    v11 = *(&self->super.super.super.isa + *v10);
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v24 = v11;
  [v11 addSubview:overlayCopy];
  topAnchor = [overlayCopy topAnchor];
  topAnchor2 = [v24 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v14 setActive:1];

  leftAnchor = [overlayCopy leftAnchor];
  leftAnchor2 = [v24 leftAnchor];
  v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v17 setActive:1];

  bottomAnchor = [overlayCopy bottomAnchor];
  bottomAnchor2 = [v24 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v20 setActive:1];

  rightAnchor = [overlayCopy rightAnchor];
  rightAnchor2 = [v24 rightAnchor];
  v23 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v23 setActive:1];

  [(NSMutableDictionary *)self->_overlayViews setObject:overlayCopy forKey:identifierCopy];
}

- (void)_updateContentInsets
{
  v36 = *MEMORY[0x277D85DE8];
  [(NUScrollView *)self->_scrollView frame];
  hasTransitionAnimation = [(NURenderView *)self->_renderView hasTransitionAnimation];
  [(NUScrollView *)self->_scrollView contentSize];
  [NUMediaView _edgeInsetsForContentSize:"_edgeInsetsForContentSize:inFrame:" inFrame:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(NUScrollView *)self->_scrollView contentInset];
  v18 = v15 == v7 && v12 == v5 && v14 == v11 && v13 == v9;
  if (!v18 && self->_transitionCount == 0 && !hasTransitionAnimation)
  {
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
    }

    v19 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      scrollView = self->_scrollView;
      v21 = v19;
      v38.top = v5;
      v38.left = v7;
      v38.bottom = v9;
      v38.right = v11;
      v22 = NSStringFromUIEdgeInsets(v38);
      [(NUScrollView *)self->_scrollView contentSize];
      v23 = NSStringFromCGSize(v37);
      v24 = NSStringFromUIEdgeInsets(self->_edgeInsets);
      centerContent = self->_centerContent;
      v26 = 134219010;
      v27 = scrollView;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v34 = 1024;
      v35 = centerContent;
      _os_log_debug_impl(&dword_25BD29000, v21, OS_LOG_TYPE_DEBUG, "[NUMediaView _updateContentInsets] on scrollview %p %@, content size = %@; internal edge insets: %@; center content: %d", &v26, 0x30u);
    }

    [(NUScrollView *)self->_scrollView setContentInset:v5, v7, v9, v11];
  }
}

- (CGSize)_imageSize
{
  v14 = *MEMORY[0x277D85DE8];
  _containerLayer = [(NURenderView *)self->_renderView _containerLayer];
  [_containerLayer bounds];
  v4 = v3;
  v6 = v5;

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v7 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v10 = v7;
    v15.width = v4;
    v15.height = v6;
    v11 = NSStringFromCGSize(v15);
    v12 = 138412290;
    v13 = v11;
    _os_log_debug_impl(&dword_25BD29000, v10, OS_LOG_TYPE_DEBUG, "[NUMediaView _imageSize]: %@", &v12, 0xCu);
  }

  v8 = v4;
  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_updateVideoPlayerAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  isVideoPlayerVisible = [(NUMediaView *)self isVideoPlayerVisible];
  if ((isVideoPlayerVisible & [(NUAVPlayerView *)self->_playerView isReadyForDisplay]) != 0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [(NUAVPlayerView *)self->_playerView alpha];
  if (v6 != v7)
  {
    if (alphaCopy)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __39__NUMediaView__updateVideoPlayerAlpha___block_invoke;
      v9[3] = &unk_279973CF8;
      v9[4] = self;
      *&v9[5] = v6;
      [MEMORY[0x277D75D18] animateWithDuration:v9 animations:0.5];
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __39__NUMediaView__updateVideoPlayerAlpha___block_invoke_2;
      v8[3] = &unk_279973CF8;
      v8[4] = self;
      *&v8[5] = v6;
      [MEMORY[0x277D75D18] performWithoutAnimation:v8];
    }
  }
}

- (void)_rendererDidFinishWithStatistics:(id)statistics
{
  v36 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  [(NURenderView *)self->_renderView frame];
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x277D2D078];
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v10 = MEMORY[0x277D2D088];
  v11 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v26 = v11;
    v37.width = v6;
    v37.height = v8;
    v27 = NSStringFromCGSize(v37);
    v32 = 136315394;
    v33 = "[NUMediaView _rendererDidFinishWithStatistics:]";
    v34 = 2112;
    v35 = v27;
    _os_log_debug_impl(&dword_25BD29000, v26, OS_LOG_TYPE_DEBUG, "%s - setting scroll view content size: %@", &v32, 0x16u);

    if (*v9 != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
    }
  }

  v12 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    width = self->_transitionTargetSize.width;
    height = self->_transitionTargetSize.height;
    v30 = v12;
    v38.width = width;
    v38.height = height;
    v31 = NSStringFromCGSize(v38);
    v32 = 136315394;
    v33 = "[NUMediaView _rendererDidFinishWithStatistics:]";
    v34 = 2112;
    v35 = v31;
    _os_log_debug_impl(&dword_25BD29000, v30, OS_LOG_TYPE_DEBUG, "%s - transitionTargetSize:%@", &v32, 0x16u);
  }

  v13 = self->_transitionTargetSize.width;
  v14 = self->_transitionTargetSize.height;
  v15 = MEMORY[0x277CBF3A8];
  v16 = v13 == *MEMORY[0x277CBF3A8] && v14 == *(MEMORY[0x277CBF3A8] + 8);
  v17 = vabdd_f64(v6, v13);
  v18 = v16 || v17 > 2.0;
  v19 = vabdd_f64(v8, v14);
  if (!v18 && v19 <= 2.0)
  {
    [(NURenderView *)self->_renderView renderFrameReachedTargetSize];
    self->_transitionTargetSize = *v15;
  }

  [(NUScrollView *)self->_scrollView setContentSize:v6, v8];
  [(NUMediaView *)self _updateContentInsets];
  delegate = [(NUMediaView *)self delegate];
  v22 = delegate;
  if (self->_delegateFlags.hasDidFinishRenderingWithStatistics)
  {
    [delegate mediaViewDidFinishRendering:self withStatistics:statisticsCopy];
  }

  else if (self->_delegateFlags.hasDidFinishRendering)
  {
    [delegate mediaViewDidFinishRendering:self];
  }

  renderingCompletionBlock = self->_renderingCompletionBlock;
  if (renderingCompletionBlock)
  {
    v24 = [renderingCompletionBlock copy];
    v24[2]();
    v25 = self->_renderingCompletionBlock;
    self->_renderingCompletionBlock = 0;
  }

  [(NUMediaView *)self _updateScreenSpaceOverlay];
  [(NUMediaView *)self _updateVisibleImageOverlayView];
}

- (void)_rendererDidCreateAVPlayerController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  playerView = self->_playerView;
  if (controllerCopy)
  {
    player = [controllerCopy player];
    [(NUAVPlayerView *)playerView setPlayer:player];

    [v5 setDelegate:self];
  }

  else
  {
    v8 = playerView;
    v9 = self->_playerView;
    self->_playerView = 0;

    v10 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__NUMediaView__rendererDidCreateAVPlayerController___block_invoke;
    v14[3] = &unk_279973E38;
    v15 = v8;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__NUMediaView__rendererDidCreateAVPlayerController___block_invoke_2;
    v12[3] = &unk_279973CD0;
    v13 = v15;
    v11 = v15;
    [v10 animateWithDuration:v14 animations:v12 completion:0.2];
  }
}

- (void)_transitionToInsets:(UIEdgeInsets)insets duration:(double)duration animationCurve:(int64_t)curve updateRenderContent:(BOOL)content
{
  contentCopy = content;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v86 = *MEMORY[0x277D85DE8];
  if (content)
  {
    [(NUMediaViewRenderer *)self->_renderer cancelPendingRenders];
  }

  [(NUMediaView *)self _beginTransition];
  self->_scrollUpdatesSuppressed = 1;
  v14 = MEMORY[0x277D2D078];
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v15 = MEMORY[0x277D2D088];
  v16 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v61 = v16;
    v95.top = top;
    v95.left = left;
    v95.bottom = bottom;
    v95.right = right;
    v62 = NSStringFromUIEdgeInsets(v95);
    v63 = @"NO";
    LODWORD(v85.a) = 138413058;
    WORD2(v85.b) = 2048;
    *(&v85.a + 4) = v62;
    if (contentCopy)
    {
      v63 = @"YES";
    }

    *(&v85.b + 6) = duration;
    HIWORD(v85.c) = 1024;
    LODWORD(v85.d) = curve;
    WORD2(v85.d) = 2112;
    *(&v85.d + 6) = v63;
    _os_log_debug_impl(&dword_25BD29000, v61, OS_LOG_TYPE_DEBUG, "[NUMediaView _transitionToInsets:duration:animationCurve:updateRenderContent:] - insets: %@, duration: %f, animationCurve: %d, updateRenderContent: %@", &v85, 0x26u);
  }

  if ([(NUMediaViewRenderer *)self->_renderer isZoomedToFit])
  {
    durationCopy = duration;
    [(NUMediaView *)self frame];
    v18 = v17;
    v76 = v19;
    v78 = v17;
    v20 = v19;
    v81 = bottom;
    v82 = right;
    v22 = v21;
    v73 = v23;
    v74 = v21;
    v24 = v23;
    [(NURenderView *)self->_renderView frame];
    [(NUMediaView *)self convertRect:self->_scrollView fromView:?];
    v28 = v26;
    v30 = v29;
    v31 = v22 - (v82 + left);
    v32 = v24 - (top + v81);
    v33 = v18 + left + v31 * 0.5;
    if (v31 > 0.0)
    {
      v33 = v18 + left;
    }

    v34 = 0.0;
    if (v31 <= 0.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v22 - (v82 + left);
    }

    if (v32 <= 0.0)
    {
      v36 = v20 + top + v32 * 0.5;
    }

    else
    {
      v36 = v20 + top;
    }

    if (v32 > 0.0)
    {
      v34 = v24 - (top + v81);
    }

    v37 = v25;
    v71 = v27;
    v72 = v25;
    v38 = v27;
    NUFitScaleForImageRectInRect(v25, v26, v30, v27, v33, v36, v35, v34);
    CGAffineTransformMakeScale(&v85, v39, v39);
    v89.origin.x = v37;
    v89.origin.y = v28;
    v89.size.width = v30;
    v89.size.height = v38;
    v90 = CGRectApplyAffineTransform(v89, &v85);
    width = v90.size.width;
    height = v90.size.height;
    v42 = objc_opt_class();
    v70 = v76;
    v69 = v78;
    v77 = top;
    v79 = left;
    v43 = top;
    v44 = height;
    v45 = left;
    v46 = width;
    [v42 _proposedInsetsForInsets:self->_centerContent contentSize:v43 inFrame:v45 centerContent:{v81, v82, width, height, *&v69, *&v70, *&v74, *&v73}];
    v48 = v47;
    v50 = v49;
    v91.origin.x = v72;
    v91.origin.y = v28;
    v91.size.width = v30;
    v91.size.height = v71;
    MidX = CGRectGetMidX(v91);
    v92.origin.x = v72;
    v92.origin.y = v28;
    v92.size.width = v30;
    v51 = v48;
    v92.size.height = v71;
    v52 = v50;
    MidY = CGRectGetMidY(v92);
    v93.origin.x = v50;
    v93.origin.y = v51;
    v93.size.width = v46;
    v93.size.height = height;
    v54 = CGRectGetMidX(v93);
    v94.origin.x = v50;
    v94.origin.y = v51;
    v94.size.width = v46;
    v94.size.height = v44;
    v55 = CGRectGetMidY(v94);
    self->_transitionTargetSize.width = v46;
    self->_transitionTargetSize.height = v44;
    if (*v14 != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
    }

    v56 = v54 - MidX;
    v57 = v55 - MidY;
    v58 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
    {
      v64 = self->_transitionTargetSize.width;
      v65 = self->_transitionTargetSize.height;
      v66 = v58;
      v87.width = v64;
      v87.height = v65;
      v67 = NSStringFromCGSize(v87);
      v88.x = v56;
      v88.y = v57;
      v68 = NSStringFromCGPoint(v88);
      LODWORD(v85.a) = 138412546;
      *(&v85.a + 4) = v67;
      WORD2(v85.b) = 2112;
      *(&v85.b + 6) = v68;
      _os_log_debug_impl(&dword_25BD29000, v66, OS_LOG_TYPE_DEBUG, "[NUMediaView _transitionToInsets:duration:animationCurve:updateRenderContent:] - size: %@, offset: %@", &v85, 0x16u);
    }

    renderView = self->_renderView;
    v60 = NUMediaTimingFunctionForUIAnimationCurve(curve);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __79__NUMediaView__transitionToInsets_duration_animationCurve_updateRenderContent___block_invoke;
    v83[3] = &unk_279973CA8;
    v83[4] = self;
    *&v83[5] = v77;
    *&v83[6] = v79;
    *&v83[7] = v81;
    *&v83[8] = v82;
    v84 = contentCopy;
    [(NURenderView *)renderView transitionToSize:v60 offset:v83 duration:v46 animationCurve:v44 completion:v56, v57, durationCopy];

    [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView setFrame:v52, v51, v46, v44];
    self->_scrollUpdatesSuppressed = 0;
  }

  else
  {
    [(NUMediaView *)self _endTransition];
    self->_edgeInsets.top = top;
    self->_edgeInsets.left = left;
    self->_edgeInsets.bottom = bottom;
    self->_edgeInsets.right = right;
    self->_scrollUpdatesSuppressed = 0;
    if (contentCopy)
    {
      [(NUMediaView *)self _updateRenderContent];
    }
  }
}

uint64_t __79__NUMediaView__transitionToInsets_duration_animationCurve_updateRenderContent___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v2 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(a1 + 32) + 408);
    v7 = v2;
    [v6 frame];
    v14.width = v8;
    v14.height = v9;
    v10 = NSStringFromCGSize(v14);
    v11 = 138412290;
    v12 = v10;
    _os_log_debug_impl(&dword_25BD29000, v7, OS_LOG_TYPE_DEBUG, "[NUMediaView _transitionToInsets:duration:animationCurve:updateRenderContent:] - render view content size: %@", &v11, 0xCu);
  }

  result = [*(a1 + 32) _endTransition];
  v4 = (*(a1 + 32) + 432);
  v5 = *(a1 + 56);
  *v4 = *(a1 + 40);
  v4[1] = v5;
  if (*(a1 + 72) == 1)
  {
    return [*(a1 + 32) _updateRenderContent];
  }

  return result;
}

- (id)_videoPlayerView
{
  playerView = self->_playerView;
  if (!playerView)
  {
    v4 = objc_opt_new();
    v5 = self->_playerView;
    self->_playerView = v4;

    [(NUAVPlayerView *)self->_playerView setAlpha:0.0];
    [(NUAVPlayerView *)self->_playerView setDelegate:self];
    isViewDebugEnabled = [MEMORY[0x277D2CFB8] isViewDebugEnabled];
    playerView = self->_playerView;
    if (isViewDebugEnabled)
    {
      layer = [(NUAVPlayerView *)playerView layer];
      cyanColor = [MEMORY[0x277D75348] cyanColor];
      [layer setBorderColor:{objc_msgSend(cyanColor, "CGColor")}];

      layer2 = [(NUAVPlayerView *)self->_playerView layer];
      [layer2 setBorderWidth:8.0];

      playerView = self->_playerView;
    }
  }

  return playerView;
}

- (id)_livePhotoView
{
  if (!self->_livePhotoView && ([MEMORY[0x277D2CFB8] mediaViewDisableLivePhoto] & 1) == 0)
  {
    v3 = [objc_alloc(NSClassFromString(&cfstr_Phlivephotovie.isa)) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    livePhotoView = self->_livePhotoView;
    self->_livePhotoView = v3;

    if ([MEMORY[0x277D2CFB8] isViewDebugEnabled])
    {
      layer = [(UIView *)self->_livePhotoView layer];
      redColor = [MEMORY[0x277D75348] redColor];
      [layer setBorderColor:{objc_msgSend(redColor, "CGColor")}];

      layer2 = [(UIView *)self->_livePhotoView layer];
      [layer2 setBorderWidth:8.0];
    }
  }

  v8 = self->_livePhotoView;

  return v8;
}

- (void)_setupViews
{
  [MEMORY[0x277D2CFB8] isViewDebugEnabled];
  v3 = objc_opt_new();
  renderView = self->_renderView;
  self->_renderView = v3;

  v5 = objc_opt_new();
  scrollView = self->_scrollView;
  self->_scrollView = v5;

  self->_centerContent = 1;
  self->_alwaysBounceScrollView = 1;
  v7 = [[NUMediaViewRenderer alloc] initWithMediaView:self];
  renderer = self->_renderer;
  self->_renderer = v7;

  [(NUScrollView *)self->_scrollView setAutoresizingMask:18];
  [(NUScrollView *)self->_scrollView setDelegate:self];
  [(NUScrollView *)self->_scrollView setScrollEnabled:1];
  [(NUScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(NUScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(NUScrollView *)self->_scrollView setAlwaysBounceVertical:self->_alwaysBounceScrollView];
  [(NUScrollView *)self->_scrollView setAlwaysBounceHorizontal:self->_alwaysBounceScrollView];
  [(NUScrollView *)self->_scrollView setClipsToBounds:0];
  [(NUScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  v9 = self->_scrollView;
  [(NUMediaView *)self bounds];
  [(NUScrollView *)v9 setFrame:?];
  [(NUScrollView *)self->_scrollView setMinimumZoomScale:1.0];
  [(NUScrollView *)self->_scrollView setZoomScale:1.0];
  if ([MEMORY[0x277D2CFB8] isViewDebugEnabled])
  {
    layer = [(NUScrollView *)self->_scrollView layer];
    [layer setBorderWidth:4.0];

    layer2 = [(NUScrollView *)self->_scrollView layer];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [layer2 setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];

    layer3 = [(NUMediaView *)self layer];
    [layer3 setBorderWidth:1.0];

    layer4 = [(NUMediaView *)self layer];
    greenColor = [MEMORY[0x277D75348] greenColor];
    [layer4 setBorderColor:{objc_msgSend(greenColor, "CGColor")}];
  }

  [(NUMediaView *)self addSubview:self->_scrollView];
  [(NUMediaView *)self setNeedsLayout];
  [(NURenderView *)self->_renderView setUserInteractionEnabled:1];
  [(NUScrollView *)self->_scrollView addSubview:self->_renderView];
  v16 = objc_opt_new();
  overlayViews = self->_overlayViews;
  self->_overlayViews = v16;

  v18 = objc_opt_new();
  screenSpaceOverlayView = self->_screenSpaceOverlayView;
  self->_screenSpaceOverlayView = v18;

  [(NUMediaView *)self addSubview:self->_screenSpaceOverlayView];
  [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView setUserInteractionEnabled:0];
  topAnchor = [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView topAnchor];
  imageTopAnchor = self->_imageTopAnchor;
  self->_imageTopAnchor = topAnchor;

  bottomAnchor = [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView bottomAnchor];
  imageBottomAnchor = self->_imageBottomAnchor;
  self->_imageBottomAnchor = bottomAnchor;

  leftAnchor = [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView leftAnchor];
  imageLeftAnchor = self->_imageLeftAnchor;
  self->_imageLeftAnchor = leftAnchor;

  rightAnchor = [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView rightAnchor];
  imageRightAnchor = self->_imageRightAnchor;
  self->_imageRightAnchor = rightAnchor;

  v28 = objc_opt_new();
  visibleImageOverlayView = self->_visibleImageOverlayView;
  self->_visibleImageOverlayView = v28;

  [(NUMediaView *)self addSubview:self->_visibleImageOverlayView];
  [(_NUMediaVisibleImageOverlayView *)self->_visibleImageOverlayView setUserInteractionEnabled:0];
  self->_renderCoalescer = [MEMORY[0x277D3A840] coalescerWithLabel:@"NUMediaViewRenderer._renderCoalescer" target:self queue:MEMORY[0x277D85CD0] action:&__block_literal_global_74];

  MEMORY[0x2821F96F8]();
}

void __26__NUMediaView__setupViews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D2CFB8];
  v5 = a3;
  v6 = a2;
  [v4 mediaViewRenderCoalescingInterval];
  [v5 delayNextInvocationByTimeInterval:?];

  [v6 _updateRenderContent];
}

- (void)_updateRenderContent
{
  if (!self->_transitionCount)
  {
    media = [(NUMediaView *)self media];

    if (media)
    {
      window = [(NUMediaView *)self window];
      if (window)
      {
      }

      else if (![(NUMediaView *)self loopsVideoPlayback])
      {
        return;
      }

      renderer = self->_renderer;
      media2 = [(NUMediaView *)self media];
      [(NUMediaViewRenderer *)renderer updateMedia:?];
    }

    else
    {
      if (self->_transitionCount)
      {
        return;
      }

      composition = [(NUMediaView *)self composition];

      if (!composition)
      {
        return;
      }

      window2 = [(NUMediaView *)self window];
      if (window2)
      {
      }

      else if (![(NUMediaView *)self loopsVideoPlayback])
      {
        return;
      }

      v8 = self->_renderer;
      media2 = [(NUMediaView *)self composition];
      [(NUMediaViewRenderer *)v8 updateComposition:?];
    }
  }
}

- (void)setCenterContent:(BOOL)content
{
  if (self->_centerContent != content)
  {
    self->_centerContent = content;
  }
}

- (void)setAlwaysBounceScrollView:(BOOL)view
{
  self->_alwaysBounceScrollView = view;
  [(NUScrollView *)self->_scrollView setAlwaysBounceVertical:?];
  scrollView = self->_scrollView;
  alwaysBounceScrollView = self->_alwaysBounceScrollView;

  [(NUScrollView *)scrollView setAlwaysBounceHorizontal:alwaysBounceScrollView];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (![(NUMediaView *)self loopsVideoPlayback]&& ![(NUMediaView *)self isVideoPlayerVisible])
  {
    [(NUMediaViewRenderer *)self->_renderer endPanning];
    if (!self->_scrollUpdatesSuppressed)
    {
      [(NUMediaView *)self _updateRenderContent];
    }
  }

  if (self->_delegateFlags.hasDidEndDecelerating)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidEndDecelerating:self];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  if (![(NUMediaView *)self loopsVideoPlayback]&& ![(NUMediaView *)self isVideoPlayerVisible]&& !decelerateCopy)
  {
    [(NUMediaViewRenderer *)self->_renderer endPanning];
    if (!self->_scrollUpdatesSuppressed)
    {
      [(NUMediaView *)self _updateRenderContent];
    }
  }

  if (self->_delegateFlags.hasDidEndDragging)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidEndDragging:self willDecelerate:decelerateCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (![(NUMediaView *)self loopsVideoPlayback]&& ![(NUMediaView *)self isVideoPlayerVisible]&& !self->_scrollUpdatesSuppressed)
  {
    [(NUMediaView *)self _updateRenderContent];
  }

  [(NUMediaView *)self _updateScreenSpaceOverlay];
  [(NUMediaView *)self _updateVisibleImageOverlayView];
  if (self->_delegateFlags.hasDidScroll)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidScroll:self];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(NUMediaViewRenderer *)self->_renderer beginPanning];
  if (self->_delegateFlags.hasWillBeginDragging)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewWillBeginDragging:self];
  }
}

- (void)scrollViewDidEndZooming:(id)zooming withView:(id)view atScale:(double)scale
{
  if (![(NUMediaView *)self loopsVideoPlayback:zooming]&& ![(NUMediaView *)self isVideoPlayerVisible])
  {
    [(NUMediaViewRenderer *)self->_renderer endZooming];
    if (!self->_scrollUpdatesSuppressed)
    {
      [(NUMediaView *)self _updateRenderContent];
    }
  }

  if (self->_delegateFlags.hasDidEndZooming)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidEndZooming:self];
  }
}

- (void)scrollViewWillBeginZooming:(id)zooming withView:(id)view
{
  if (![(NUMediaView *)self loopsVideoPlayback:zooming]&& ![(NUMediaView *)self isVideoPlayerVisible])
  {
    [(NUMediaViewRenderer *)self->_renderer beginZooming];
  }

  if (self->_delegateFlags.hasWillBeginZooming)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewWillBeginZooming:self];
  }
}

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  [(NUMediaView *)self _updateContentInsets];
  [(NUMediaView *)self _updateScreenSpaceOverlay];
  [(NUMediaView *)self _updateVisibleImageOverlayView];
  if (self->_delegateFlags.hasDidZoom)
  {
    delegate = [(NUMediaView *)self delegate];
    [zoomCopy zoomScale];
    [delegate mediaView:self didZoom:?];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  v16 = *MEMORY[0x277D85DE8];
  p_edgeInsets = &self->_edgeInsets;
  v4.f64[0] = insets.top;
  v4.f64[1] = insets.left;
  v5.f64[0] = insets.bottom;
  v5.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v4), vceqq_f64(*&self->_edgeInsets.bottom, v5)))) & 1) == 0 && !self->_transitionCount)
  {
    v10 = *&insets.top;
    left = insets.left;
    bottom = insets.bottom;
    right = insets.right;
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
    }

    v7 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      *&v17.top = v10;
      v17.left = left;
      v17.bottom = bottom;
      v17.right = right;
      v9 = NSStringFromUIEdgeInsets(v17);
      *buf = 138412290;
      v15 = v9;
      _os_log_debug_impl(&dword_25BD29000, v8, OS_LOG_TYPE_DEBUG, "[NUMediaView setEdgeInsets:] - insets: %@", buf, 0xCu);
    }

    *&p_edgeInsets->top = v10;
    p_edgeInsets->left = left;
    p_edgeInsets->bottom = bottom;
    p_edgeInsets->right = right;
    [(NUMediaView *)self _updateContentInsets:v10];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NUMediaView;
  [(NUMediaView *)&v3 layoutSubviews];
  [(NUMediaView *)self frame];
  if (!CGRectIsEmpty(v4))
  {
    [(NUMediaView *)self _updateContentInsets];
  }
}

- (CGRect)convertViewRect:(CGRect)rect fromSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v78 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  _geometry = [(NUMediaView *)self _geometry];
  if (_geometry)
  {
    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = width;
    v79.size.height = height;
    MinX = CGRectGetMinX(v79);
    v80.origin.x = x;
    v80.origin.y = y;
    v80.size.width = width;
    v80.size.height = height;
    MinY = CGRectGetMinY(v80);
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    v73 = CGRectGetMinX(v81);
    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    MaxY = CGRectGetMaxY(v82);
    v83.origin.x = x;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = height;
    MaxX = CGRectGetMaxX(v83);
    v84.origin.x = x;
    v84.origin.y = y;
    v84.size.width = width;
    v84.size.height = height;
    v13 = CGRectGetMinY(v84);
    v85.origin.x = x;
    v85.origin.y = y;
    v85.size.width = width;
    v85.size.height = height;
    v14 = CGRectGetMaxX(v85);
    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    v15 = CGRectGetMaxY(v86);
    v76 = 0;
    v16 = [_geometry transformWithSourceSpace:spaceCopy destinationSpace:@"/Image" error:&v76];
    v17 = v76;
    if (!v16)
    {
      v60 = NUAssertLogger();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot establish a mapping from space %@ to space %@: %@", spaceCopy, @"/Image", v17];
        *buf = 138543362;
        *&buf[4] = v61;
        _os_log_error_impl(&dword_25BD29000, v60, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v62 = MEMORY[0x277D2CF60];
      specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
      v64 = NUAssertLogger();
      v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v65)
        {
          v68 = dispatch_get_specific(*v62);
          v69 = MEMORY[0x277CCACC8];
          v70 = v68;
          callStackSymbols = [v69 callStackSymbols];
          v72 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v68;
          *&buf[12] = 2114;
          *&buf[14] = v72;
          _os_log_error_impl(&dword_25BD29000, v64, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v65)
      {
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v67 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        *&buf[4] = v67;
        _os_log_error_impl(&dword_25BD29000, v64, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    [v16 transformPoint:{MinX, MinY}];
    v19 = v18;
    v21 = v20;
    [v16 transformPoint:{v73, MaxY}];
    v23 = v22;
    v25 = v24;
    [v16 transformPoint:{MaxX, v13}];
    v27 = v26;
    v29 = v28;
    [v16 transformPoint:{v14, v15}];
    if (v29 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v29;
    }

    if (v29 >= v31)
    {
      v31 = v29;
    }

    if (v21 >= v25)
    {
      v33 = v25;
    }

    else
    {
      v33 = v21;
    }

    if (v21 >= v25)
    {
      v34 = v21;
    }

    else
    {
      v34 = v25;
    }

    if (v27 >= v30)
    {
      v35 = v30;
    }

    else
    {
      v35 = v27;
    }

    if (v27 >= v30)
    {
      v30 = v27;
    }

    if (v19 >= v23)
    {
      v36 = v23;
    }

    else
    {
      v36 = v19;
    }

    if (v19 >= v23)
    {
      v37 = v19;
    }

    else
    {
      v37 = v23;
    }

    if (v36 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v36;
    }

    if (v33 >= v32)
    {
      v39 = v32;
    }

    else
    {
      v39 = v33;
    }

    if (v37 >= v30)
    {
      v30 = v37;
    }

    if (v34 >= v31)
    {
      v31 = v34;
    }

    v40 = v30 - v38;
    v41 = v31 - v39;
    _geometry2 = [(NUMediaView *)self _geometry];
    v43 = _geometry2;
    if (_geometry2)
    {
      [_geometry2 extent];
    }

    else
    {
      memset(buf, 0, 32);
    }

    NUPixelRectToCGRect();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v87.origin.x = v38;
    v87.origin.y = v39;
    v87.size.width = v40;
    v87.size.height = v41;
    v90.origin.x = v49;
    v90.origin.y = v51;
    v90.size.width = v53;
    v90.size.height = v55;
    CGRectIntersection(v87, v90);
    NURectFlipYOrigin();
    v44 = v88.origin.x;
    v45 = v88.origin.y;
    v46 = v88.size.width;
    v47 = v88.size.height;
    if (CGRectIsNull(v88))
    {
      v44 = *MEMORY[0x277CBF3A0];
      v45 = *(MEMORY[0x277CBF3A0] + 8);
      v46 = *(MEMORY[0x277CBF3A0] + 16);
      v47 = *(MEMORY[0x277CBF3A0] + 24);
    }
  }

  else
  {
    v44 = *MEMORY[0x277CBF3A0];
    v45 = *(MEMORY[0x277CBF3A0] + 8);
    v46 = *(MEMORY[0x277CBF3A0] + 16);
    v47 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v56 = v44;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

- (CGRect)convertNormalizedViewRect:(CGRect)rect fromSpace:(id)space
{
  spaceCopy = space;
  [(NUMediaView *)self _masterSizeWithoutGeometry];
  NURectDenormalize();
  [(NUMediaView *)self convertViewRect:spaceCopy fromSpace:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromSpace:(id)space toView:(id)view
{
  y = point.y;
  x = point.x;
  v71 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  viewCopy = view;
  _geometry = [(NUMediaView *)self _geometry];
  v12 = _geometry;
  if (!_geometry)
  {
    v21 = MEMORY[0x277D2D078];
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
    }

    v22 = MEMORY[0x277D2D070];
    v23 = *MEMORY[0x277D2D070];
    if (os_log_type_enabled(*MEMORY[0x277D2D070], OS_LOG_TYPE_DEFAULT))
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = v23;
      v26 = [v24 stringWithFormat:@"Converting point before geometry is valid"];
      *buf = 138543362;
      v68 = v26;
      _os_log_impl(&dword_25BD29000, v25, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v27 = *v21;
      if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
      {
        if (v27 != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
        }

        goto LABEL_15;
      }

      if (v27 != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
    {
LABEL_15:
      v28 = *v22;
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
        v30 = MEMORY[0x277CCACC8];
        v31 = specific;
        v32 = v28;
        callStackSymbols = [v30 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = specific;
        v69 = 2114;
        v70 = v34;
        _os_log_error_impl(&dword_25BD29000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_31:
      _NUAssertContinueHandler();
      goto LABEL_32;
    }

    v42 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v52 = MEMORY[0x277CCACC8];
      v53 = v42;
      callStackSymbols2 = [v52 callStackSymbols];
      v55 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v55;
      _os_log_error_impl(&dword_25BD29000, v53, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v66 = 0;
  v13 = [_geometry transformWithSourceSpace:spaceCopy destinationSpace:@"/Image" error:&v66];
  v14 = v66;
  if (!v13)
  {
    if ([spaceCopy isEqualToString:@"/masterSpace"])
    {
      v65 = 0;
      v13 = [v12 transformWithSourceSpace:@"/Master/Source" destinationSpace:@"/Image" error:&v65];
      v17 = v65;

      if (v13)
      {
        v14 = v17;
        goto LABEL_3;
      }
    }

    else
    {
      v17 = v14;
    }

    if ([spaceCopy isEqualToString:@"/masterSpace"])
    {
      v64 = 0;
      v13 = [v12 transformWithSourceSpace:@"/ShowOriginalSource" destinationSpace:@"/Image" error:&v64];
      v14 = v64;

      if (v13)
      {
        goto LABEL_3;
      }

      v17 = v14;
    }

    v35 = MEMORY[0x277D2D078];
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
    }

    v36 = MEMORY[0x277D2D070];
    v37 = *MEMORY[0x277D2D070];
    if (os_log_type_enabled(*MEMORY[0x277D2D070], OS_LOG_TYPE_DEFAULT))
    {
      v38 = MEMORY[0x277CCACA8];
      v39 = v37;
      v40 = [v38 stringWithFormat:@"Cannot establish a mapping from space %@ to space %@: %@", spaceCopy, @"/Image", v17];
      *buf = 138543362;
      v68 = v40;
      _os_log_impl(&dword_25BD29000, v39, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v41 = *v35;
      if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
      {
        if (v41 != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
        }

        goto LABEL_34;
      }

      if (v41 != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
    {
LABEL_34:
      v45 = *v36;
      if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        v46 = dispatch_get_specific(*MEMORY[0x277D2CF60]);
        v47 = MEMORY[0x277CCACC8];
        v63 = v46;
        v48 = v45;
        callStackSymbols3 = [v47 callStackSymbols];
        v50 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v46;
        v69 = 2114;
        v70 = v50;
        _os_log_error_impl(&dword_25BD29000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_40:
      v61 = @"/Image";
      v62 = v17;
      v60 = spaceCopy;
      _NUAssertContinueHandler();
      goto LABEL_4;
    }

    v51 = *v36;
    if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      v56 = MEMORY[0x277CCACC8];
      v57 = v51;
      callStackSymbols4 = [v56 callStackSymbols];
      v59 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v59;
      _os_log_error_impl(&dword_25BD29000, v57, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_40;
  }

LABEL_3:
  [v13 transformPoint:{x, y}];
  x = v15;
  y = v16;

  v17 = v14;
LABEL_4:
  [(NUMediaView *)self _imageSize:v60];
  [(NUMediaView *)self convertPointFromImage:x, v18 - y];
  [viewCopy convertPoint:self fromView:?];
  x = v19;
  y = v20;

LABEL_32:
  v43 = x;
  v44 = y;
  result.y = v44;
  result.x = v43;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromView:(id)view toSpace:(id)space
{
  y = point.y;
  x = point.x;
  v68 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  spaceCopy = space;
  _geometry = [(NUMediaView *)self _geometry];
  if (!_geometry)
  {
    v21 = MEMORY[0x277D2D078];
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
    }

    v22 = MEMORY[0x277D2D070];
    v23 = *MEMORY[0x277D2D070];
    if (os_log_type_enabled(*MEMORY[0x277D2D070], OS_LOG_TYPE_DEFAULT))
    {
      v24 = MEMORY[0x277CCACA8];
      v25 = v23;
      v26 = [v24 stringWithFormat:@"Converting point before geometry is valid"];
      *buf = 138543362;
      v65 = v26;
      _os_log_impl(&dword_25BD29000, v25, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v27 = *v21;
      if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
      {
        if (v27 != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
        }

        goto LABEL_15;
      }

      if (v27 != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
    {
LABEL_15:
      v28 = *v22;
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
        v30 = MEMORY[0x277CCACC8];
        v31 = specific;
        v32 = v28;
        callStackSymbols = [v30 callStackSymbols];
        v34 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = specific;
        v66 = 2114;
        v67 = v34;
        _os_log_error_impl(&dword_25BD29000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_31:
      _NUAssertContinueHandler();
      goto LABEL_32;
    }

    v42 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v53 = MEMORY[0x277CCACC8];
      v54 = v42;
      callStackSymbols2 = [v53 callStackSymbols];
      v56 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v56;
      _os_log_error_impl(&dword_25BD29000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  [(NUMediaView *)self convertPoint:viewCopy fromView:x, y];
  [(NUMediaView *)self convertPointToImage:?];
  x = v12;
  v14 = v13;
  [(NUMediaView *)self _imageSize];
  y = v15 - v14;
  v63 = 0;
  v16 = [_geometry transformWithSourceSpace:@"/Image" destinationSpace:spaceCopy error:&v63];
  v17 = v63;
  if (!v16)
  {
    if ([spaceCopy isEqualToString:@"/masterSpace"])
    {
      v62 = 0;
      v16 = [_geometry transformWithSourceSpace:@"/Image" destinationSpace:@"/Master/Source" error:&v62];
      v20 = v62;

      if (v16)
      {
        v17 = v20;
        goto LABEL_3;
      }
    }

    else
    {
      v20 = v17;
    }

    if ([spaceCopy isEqualToString:@"/masterSpace"])
    {
      v61 = 0;
      v16 = [_geometry transformWithSourceSpace:@"/Image" destinationSpace:@"/ShowOriginalSource" error:&v61];
      v17 = v61;

      if (v16)
      {
        goto LABEL_3;
      }

      v20 = v17;
    }

    v35 = MEMORY[0x277D2D078];
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
    }

    v36 = MEMORY[0x277D2D070];
    v37 = *MEMORY[0x277D2D070];
    if (os_log_type_enabled(*MEMORY[0x277D2D070], OS_LOG_TYPE_DEFAULT))
    {
      v38 = MEMORY[0x277CCACA8];
      v39 = v37;
      v40 = [v38 stringWithFormat:@"Cannot establish a mapping from space %@ to space %@: %@", @"/Image", spaceCopy, v20];
      *buf = 138543362;
      v65 = v40;
      _os_log_impl(&dword_25BD29000, v39, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);

      v41 = *v35;
      if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
      {
        if (v41 != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
        }

        goto LABEL_34;
      }

      if (v41 != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
    {
LABEL_34:
      v45 = *v36;
      if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        v46 = dispatch_get_specific(*MEMORY[0x277D2CF60]);
        v47 = MEMORY[0x277CCACC8];
        v48 = v46;
        v49 = v45;
        callStackSymbols3 = [v47 callStackSymbols];
        v51 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v46;
        v66 = 2114;
        v67 = v51;
        _os_log_error_impl(&dword_25BD29000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_40:
      _NUAssertContinueHandler();
      goto LABEL_4;
    }

    v52 = *v36;
    if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      v57 = MEMORY[0x277CCACC8];
      v58 = v52;
      callStackSymbols4 = [v57 callStackSymbols];
      v60 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v60;
      _os_log_error_impl(&dword_25BD29000, v58, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_40;
  }

LABEL_3:
  [v16 transformPoint:{x, y}];
  x = v18;
  y = v19;

  v20 = v17;
LABEL_4:

LABEL_32:
  v43 = x;
  v44 = y;
  result.y = v44;
  result.x = v43;
  return result;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  displayEDRMonitorTimer = self->_displayEDRMonitorTimer;
  if (displayEDRMonitorTimer)
  {
    [(NSTimer *)displayEDRMonitorTimer invalidate];
    v5 = self->_displayEDRMonitorTimer;
    self->_displayEDRMonitorTimer = 0;
  }

  displayEDRMonitorLink = self->_displayEDRMonitorLink;
  if (displayEDRMonitorLink)
  {
    [(CADisplayLink *)displayEDRMonitorLink invalidate];
    v7 = self->_displayEDRMonitorLink;
    self->_displayEDRMonitorLink = 0;
  }
}

- (void)_invalidateDisplayEDRHeadroomMonitor
{
  displayEDRMonitorLink = self->_displayEDRMonitorLink;
  if (displayEDRMonitorLink)
  {
    [(CADisplayLink *)displayEDRMonitorLink invalidate];
    v4 = self->_displayEDRMonitorLink;
    self->_displayEDRMonitorLink = 0;
  }
}

- (void)_monitorDisplayEDRHeadroom:(id)headroom
{
  v16 = *MEMORY[0x277D85DE8];
  window = [(NUMediaView *)self window];
  screen = [window screen];

  [NUMediaView currentEDRHeadroomForScreen:screen];
  v7 = v6;
  [(NUMediaViewRenderer *)self->_renderer displayCurrentEDRHeadroom];
  v9 = v8;
  if (vabdd_f64(v7, v8) > 0.01)
  {
    if ([(NUMediaViewRenderer *)self->_renderer canUpdateDisplayHeadroom])
    {
      if (*MEMORY[0x277D2D078] != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
      }

      v10 = *MEMORY[0x277D2D088];
      if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v9;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&dword_25BD29000, v10, OS_LOG_TYPE_DEFAULT, "EDR headroom change %0.3f -> %0.3f", &v12, 0x16u);
      }

      [(NUMediaViewRenderer *)self->_renderer setDisplayCurrentEDRHeadroom:v7];
      [(NUMediaView *)self _updateRenderContent];
    }

    else
    {
      if (*MEMORY[0x277D2D078] != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
      }

      v11 = *MEMORY[0x277D2D088];
      if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = v9;
        v14 = 2048;
        v15 = v7;
        _os_log_impl(&dword_25BD29000, v11, OS_LOG_TYPE_DEFAULT, "EDR headroom change %0.3f -> %0.3f - scrubbing in progress, so not changing the headroom yet", &v12, 0x16u);
      }
    }
  }
}

- (void)_scheduleDisplayEDRHeadroomMonitor
{
  if (!self->_displayEDRMonitorLink)
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__monitorDisplayEDRHeadroom_];
    displayEDRMonitorLink = self->_displayEDRMonitorLink;
    self->_displayEDRMonitorLink = v3;

    v8 = CAFrameRateRangeMake(1.0, 60.0, 10.0);
    [(CADisplayLink *)self->_displayEDRMonitorLink setPreferredFrameRateRange:*&v8.minimum, *&v8.maximum, *&v8.preferred];
    v5 = self->_displayEDRMonitorLink;
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = NUMediaView;
  [(NUMediaView *)&v14 didMoveToWindow];
  window = [(NUMediaView *)self window];

  if (window)
  {
    window2 = [(NUMediaView *)self window];
    screen = [window2 screen];

    renderer = self->_renderer;
    [screen scale];
    [(NUMediaViewRenderer *)renderer setBackingScale:?];
    currentPlatform = [MEMORY[0x277D2CFF8] currentPlatform];
    _displayID = [screen _displayID];
    v9 = [currentPlatform displayWithIdentifier:_displayID];

    v10 = self->_renderer;
    pixelFormat = [v9 pixelFormat];
    [(NUMediaViewRenderer *)v10 setPixelFormat:pixelFormat];

    v12 = self->_renderer;
    colorSpace = [v9 colorSpace];
    [(NUMediaViewRenderer *)v12 setColorSpace:colorSpace];

    if ([(NUMediaView *)self isHDREnabled])
    {
      [NUMediaView maximumEDRHeadroomForScreen:screen];
      [(NUMediaViewRenderer *)self->_renderer setDisplayMaximumEDRHeadroom:?];
      [NUMediaView currentEDRHeadroomForScreen:screen];
      [(NUMediaViewRenderer *)self->_renderer setDisplayCurrentEDRHeadroom:?];
      [(NUMediaView *)self _scheduleDisplayEDRHeadroomMonitor];
    }

    [(NUMediaView *)self _updateRenderContent];
  }
}

- (void)_setLayerFilters:(id)filters
{
  renderView = self->_renderView;
  filtersCopy = filters;
  _backfillLayer = [(NURenderView *)renderView _backfillLayer];
  [_backfillLayer setFilters:filtersCopy];

  _roiLayer = [(NURenderView *)self->_renderView _roiLayer];
  [_roiLayer setFilters:filtersCopy];
}

- (id)snapshotImage
{
  _backfillLayer = [(NURenderView *)self->_renderView _backfillLayer];
  snapshotImage = [_backfillLayer snapshotImage];

  return snapshotImage;
}

- (id)_layerRecursiveDescription
{
  layer = [(NUMediaView *)self layer];
  nu_layerRecursiveDescription = [layer nu_layerRecursiveDescription];

  return nu_layerRecursiveDescription;
}

- (void)setVideoPlayerVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_videoPlayerVisible != visible)
  {
    self->_videoPlayerVisible = visible;
    self->_lastVideoPlayerVisibilityChangeWasAnimated = animated;
    [(NUMediaView *)self _updateVideoPlayerAlpha:animated];
  }
}

- (void)_stopVideoPlayback
{
  player = [(NUMediaView *)self player];
  [player pause];
}

- (void)_startVideoPlayback
{
  player = [(NUMediaView *)self player];
  [player play];
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  player = [(NUMediaView *)self player];
  [player setMuted:mutedCopy];
}

- (BOOL)isMuted
{
  player = [(NUMediaView *)self player];
  isMuted = [player isMuted];

  return isMuted;
}

- (BOOL)loopsVideoPlayback
{
  player = [(NUMediaView *)self player];
  playbackMode = [player playbackMode];

  return playbackMode == 1;
}

- (void)setLoopsVideoPlayback:(BOOL)playback
{
  playbackCopy = playback;
  player = [(NUMediaView *)self player];
  [player setPlaybackMode:playbackCopy];
}

- (void)_livephotoPlaybackDidEnd
{
  if (self->_delegateFlags.hasDidEndLivePhotoPlayback)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidEndLivePhotoPlayback:self];
  }
}

- (void)_livephotoPlaybackWillBegin
{
  if (self->_delegateFlags.hasWillBeginLivePhotoPlayback)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewWillBeginLivePhotoPlayback:self];
  }
}

- (void)_rendererDidFinishPreparingVideo
{
  if (self->_delegateFlags.hasDidFinishPreparingVideo)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidFinishPreparingVideo:self];
  }
}

- (void)_rendererDidStartPreparingVideo
{
  if (self->_delegateFlags.hasDidStartPreparingVideo)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidStartPreparingVideo:self];
  }
}

- (void)_rendererDidUpdateLivePhoto
{
  if (self->_delegateFlags.hasDidUpdateLivePhoto)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidUpdateLivePhoto:self];
  }
}

- (id)_videoPlayerController
{
  _renderer = [(NUMediaView *)self _renderer];
  nuAVPlayerController = [_renderer nuAVPlayerController];

  return nuAVPlayerController;
}

- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)size inFrame:(CGRect)frame alwaysCenterContent:(BOOL)content
{
  v5 = content || self->_centerContent;
  [objc_opt_class() _proposedInsetsForInsets:v5 contentSize:self->_edgeInsets.top inFrame:self->_edgeInsets.left centerContent:{self->_edgeInsets.bottom, self->_edgeInsets.right, size.width, size.height, *&frame.origin.x, *&frame.origin.y, *&frame.size.width, *&frame.size.height}];
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)size inFrame:(CGRect)frame
{
  [(NUMediaView *)self _edgeInsetsForContentSize:0 inFrame:size.width alwaysCenterContent:size.height, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)setMinimumZoomScale:(double)scale
{
  [(NUScrollView *)self->_scrollView setMinimumZoomScale:scale];

  [(NUMediaView *)self _updateRenderContent];
}

- (void)setMaximumZoomScale:(double)scale
{
  [(NUMediaViewRenderer *)self->_renderer setMaximumZoomScale:scale];

  [(NUMediaView *)self _updateRenderContent];
}

- (void)setZoomScaleToFit
{
  _renderer = [(NUMediaView *)self _renderer];
  isZoomedToFit = [_renderer isZoomedToFit];

  if ((isZoomedToFit & 1) == 0)
  {
    [(NUMediaView *)self minimumZoomScale];

    [(NUMediaView *)self setZoomScale:?];
  }
}

- (void)setZoomScale:(double)scale
{
  [(NUScrollView *)self->_scrollView setZoomScale:scale];

  [(NUMediaView *)self _updateRenderContent];
}

- (void)geometryUpdated
{
  if (self->_delegateFlags.hasDidUpdateGeometry)
  {
    delegate = [(NUMediaView *)self delegate];
    [delegate mediaViewDidUpdateGeometry:self];
  }
}

- (void)setAngle:(double)angle
{
  memset(&v6, 0, sizeof(v6));
  CATransform3DMakeRotation(&v6, angle, 0.0, 0.0, 1.0);
  _containerLayer = [(NURenderView *)self->_renderView _containerLayer];
  v5 = v6;
  [_containerLayer setTransform:&v5];
}

- (void)installRenderingCompletionBlock:(id)block
{
  self->_renderingCompletionBlock = [block copy];

  MEMORY[0x2821F96F8]();
}

- (void)_setPipelineFilters:(id)filters shouldUpdateContent:(BOOL)content
{
  contentCopy = content;
  [(NUMediaViewRenderer *)self->_renderer setPipelineFilters:filters];
  if (contentCopy)
  {

    [(NUMediaView *)self _updateRenderContent];
  }
}

- (CGPoint)convertPoint:(CGPoint)point toNormalizedYDownSourceSpaceFromView:(id)view
{
  y = point.y;
  x = point.x;
  v39 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [(NUMediaView *)self _masterSizeWithoutGeometry];
  if (v8 <= 0.0 || (v10 = v9, v9 <= 0.0))
  {
    v14 = MEMORY[0x277D2D078];
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
    }

    v15 = MEMORY[0x277D2D070];
    v16 = *MEMORY[0x277D2D070];
    if (os_log_type_enabled(*MEMORY[0x277D2D070], OS_LOG_TYPE_DEFAULT))
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = v16;
      v19 = [v17 stringWithFormat:@"Invalid masterSize"];
      v35 = 138543362;
      v36 = v19;
      _os_log_impl(&dword_25BD29000, v18, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", &v35, 0xCu);

      v20 = *v14;
      if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
      {
        if (v20 != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
        }

        goto LABEL_11;
      }

      if (v20 != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_437);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
    {
LABEL_11:
      v21 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
        v23 = MEMORY[0x277CCACC8];
        v24 = specific;
        v25 = v21;
        callStackSymbols = [v23 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        v35 = 138543618;
        v36 = specific;
        v37 = 2114;
        v38 = v27;
        _os_log_error_impl(&dword_25BD29000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v35, 0x16u);
      }

LABEL_17:
      _NUAssertContinueHandler();
      goto LABEL_18;
    }

    v28 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v31 = MEMORY[0x277CCACC8];
      v32 = v28;
      callStackSymbols2 = [v31 callStackSymbols];
      v34 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      v35 = 138543362;
      v36 = v34;
      _os_log_error_impl(&dword_25BD29000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v35, 0xCu);
    }

    goto LABEL_17;
  }

  v11 = v8;
  [(NUMediaView *)self convertPoint:viewCopy fromView:@"/masterSpace" toSpace:x, y];
  x = v12 / v11;
  y = 1.0 - v13 / v10;
LABEL_18:

  v29 = x;
  v30 = y;
  result.y = v30;
  result.x = v29;
  return result;
}

- (CGRect)convertRectFromImage:(CGRect)image
{
  [(NUMediaViewRenderer *)self->_renderer convertRect:self fromImageToView:image.origin.x, image.origin.y, image.size.width, image.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)convertRectToImage:(CGRect)image
{
  [(NUMediaViewRenderer *)self->_renderer convertRect:self toImageFromView:image.origin.x, image.origin.y, image.size.width, image.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)convertPointFromImage:(CGPoint)image
{
  [(NUMediaViewRenderer *)self->_renderer convertPoint:self fromImageToView:image.x, image.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)convertPointToImage:(CGPoint)image
{
  [(NUMediaViewRenderer *)self->_renderer convertPoint:self toImageFromView:image.x, image.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)imageFrame
{
  _geometry = [(NUMediaView *)self _geometry];
  [_geometry size];

  renderer = self->_renderer;
  NUPixelSizeToCGRect();

  [(NUMediaViewRenderer *)renderer convertRect:self fromImageToView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)setMedia:(id)media
{
  objc_storeStrong(&self->_media, media);
  if (media)
  {

    [(NUMediaView *)self _updateRenderContent];
  }
}

- (void)setMedia:(id)media displayType:(int64_t)type
{
  mediaCopy = media;
  objc_storeStrong(&self->_media, media);
  v7 = mediaCopy;
  if (mediaCopy)
  {
    [(NUMediaViewRenderer *)self->_renderer updateMedia:mediaCopy displayType:type];
    v7 = mediaCopy;
  }
}

- (void)setComposition:(id)composition
{
  compositionCopy = composition;
  mediaType = [compositionCopy mediaType];
  renderer = self->_renderer;
  if (mediaType == 2)
  {
    composition = [(NUMediaViewRenderer *)renderer composition];

    [(NUMediaViewRenderer *)self->_renderer setComposition:compositionCopy];
    if (composition)
    {
      [(PFCoalescer *)self->_renderCoalescer update];
      goto LABEL_6;
    }
  }

  else
  {
    [(NUMediaViewRenderer *)renderer setComposition:compositionCopy];
  }

  [(NUMediaView *)self _updateRenderContent];
LABEL_6:
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->hasDidFinishRendering = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidFinishRenderingWithStatistics = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidZoom = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasWillBeginZooming = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidEndZooming = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasWillBeginDragging = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidEndDragging = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidEndDecelerating = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidScroll = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidUpdateLivePhoto = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasIsReadyForVideoPlayback = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidStartPreparingVideo = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidFinishPreparingVideo = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidPlayToEnd = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasFailedToPlayToEnd = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasWillBeginLivePhotoPlayback = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidEndLivePhotoPlayback = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->hasDidUpdateGeometry = objc_opt_respondsToSelector() & 1;
  }
}

- (NUMediaView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NUMediaView;
  v3 = [(NUMediaView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(NUMediaView *)v3 _setupViews];
  }

  return v4;
}

- (NUMediaView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NUMediaView;
  v3 = [(NUMediaView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NUMediaView *)v3 _setupViews];
  }

  return v4;
}

+ (UIEdgeInsets)_proposedInsetsForInsets:(UIEdgeInsets)insets contentSize:(CGSize)size inFrame:(CGRect)frame centerContent:(BOOL)content
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v47 = *MEMORY[0x277D85DE8];
  if (CGRectIsEmpty(frame))
  {
    top = *MEMORY[0x277D768C8];
    left = *(MEMORY[0x277D768C8] + 8);
    bottom = *(MEMORY[0x277D768C8] + 16);
    right = *(MEMORY[0x277D768C8] + 24);
    goto LABEL_28;
  }

  if (content)
  {
    v36 = right;
    MinX = CGRectGetMinX(frame);
    v34 = MinX + (CGRectGetWidth(frame) - size.width) * 0.5;
    MinY = CGRectGetMinY(frame);
    Height = CGRectGetHeight(frame);
    v14 = fmax(v34, 0.0);
    v15 = fmax(MinY + (Height - size.height) * 0.5, 0.0);
    v16 = v15 + v15 - bottom;
    if (bottom > v15)
    {
      v17 = bottom;
    }

    else
    {
      v17 = v15;
    }

    if (bottom <= v15)
    {
      v16 = v15;
    }

    if (top > v15)
    {
      v18 = v15 + v15 - top;
    }

    else
    {
      v18 = v17;
    }

    if (top > v15)
    {
      v19 = top;
    }

    else
    {
      v19 = v16;
    }

    v33 = v18;
    v35 = v19;
    if (left <= v14)
    {
      v20 = v36;
      if (v36 <= v14)
      {
        v32 = v14;
      }

      else
      {
        v32 = v14 + v14 - v36;
        v14 = v36;
      }
    }

    else
    {
      v14 = v14 + v14 - left;
      v32 = left;
      v20 = v36;
    }

    v37 = v14;
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
    }

    v24 = *MEMORY[0x277D2D088];
    if (!os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      top = v35;
      right = v37;
      left = v32;
      bottom = v33;
      goto LABEL_28;
    }

    v22 = v24;
    v49.top = top;
    v49.left = left;
    v49.bottom = bottom;
    v49.right = v20;
    v23 = NSStringFromUIEdgeInsets(v49);
    v29 = NSStringFromCGSize(size);
    v30 = NSStringFromCGRect(frame);
    bottom = v33;
    top = v35;
    v50.top = v35;
    left = v32;
    v50.left = v32;
    v50.bottom = v33;
    right = v37;
    v50.right = v37;
    v31 = NSStringFromUIEdgeInsets(v50);
    *buf = 138413058;
    v40 = v23;
    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v30;
    v45 = 2112;
    v46 = v31;
    _os_log_debug_impl(&dword_25BD29000, v22, OS_LOG_TYPE_DEBUG, "+[NUMediaView _proposedInsetsForInsets:contentSize:inFrame:centerContent:] - content is centered. input insets: %@  content size: %@ inFrame: %@ result insets: %@", buf, 0x2Au);

LABEL_30:
    goto LABEL_28;
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v21 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v22 = v21;
    v48.top = top;
    v48.left = left;
    v48.bottom = bottom;
    v48.right = right;
    v23 = NSStringFromUIEdgeInsets(v48);
    *buf = 138412290;
    v40 = v23;
    _os_log_debug_impl(&dword_25BD29000, v22, OS_LOG_TYPE_DEBUG, "+[NUMediaView _proposedInsetsForInsets:contentSize:inFrame:centerContent:] - content is not centered, so returning input insets: %@", buf, 0xCu);
    goto LABEL_30;
  }

LABEL_28:
  v25 = top;
  v26 = left;
  v27 = bottom;
  v28 = right;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

+ (double)currentEDRHeadroomForScreen:(id)screen
{
  [screen currentEDRHeadroom];
  v4 = v3;
  [MEMORY[0x277D2CFB8] overrideDisplayHeadroom];
  if (v5 >= 1.0)
  {
    v4 = v5;
  }

  [MEMORY[0x277D2CFB8] thresholdDisplayHeadroom];
  if (v4 <= v6)
  {
    return 1.0;
  }

  else
  {
    return v4;
  }
}

+ (double)maximumEDRHeadroomForScreen:(id)screen
{
  [screen potentialEDRHeadroom];
  v4 = v3;
  [MEMORY[0x277D2CFB8] overrideDisplayHeadroom];
  if (v5 >= 1.0)
  {
    v4 = v5;
  }

  [MEMORY[0x277D2CFB8] thresholdDisplayHeadroom];
  if (v4 <= v6)
  {
    return 1.0;
  }

  else
  {
    return v4;
  }
}

@end