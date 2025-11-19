@interface NUMediaView
+ (UIEdgeInsets)_proposedInsetsForInsets:(UIEdgeInsets)a3 contentSize:(CGSize)a4 inFrame:(CGRect)a5 centerContent:(BOOL)a6;
+ (double)currentEDRHeadroomForScreen:(id)a3;
+ (double)maximumEDRHeadroomForScreen:(id)a3;
- (BOOL)hasOverlayWithIdentifier:(id)a3;
- (BOOL)isMuted;
- (BOOL)loopsVideoPlayback;
- (CGPoint)convertPoint:(CGPoint)a3 fromSpace:(id)a4 toView:(id)a5;
- (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4 toSpace:(id)a5;
- (CGPoint)convertPoint:(CGPoint)a3 toNormalizedYDownSourceSpaceFromView:(id)a4;
- (CGPoint)convertPointFromImage:(CGPoint)a3;
- (CGPoint)convertPointToImage:(CGPoint)a3;
- (CGRect)convertNormalizedViewRect:(CGRect)a3 fromSpace:(id)a4;
- (CGRect)convertRectFromImage:(CGRect)a3;
- (CGRect)convertRectToImage:(CGRect)a3;
- (CGRect)convertViewRect:(CGRect)a3 fromSpace:(id)a4;
- (CGRect)cropRect;
- (CGRect)imageFrame;
- (CGSize)_imageSize;
- (CGSize)_masterSizeWithoutGeometry;
- (NUMediaView)initWithCoder:(id)a3;
- (NUMediaView)initWithFrame:(CGRect)a3;
- (NUMediaViewDelegate)delegate;
- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)a3 inFrame:(CGRect)a4;
- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)a3 inFrame:(CGRect)a4 alwaysCenterContent:(BOOL)a5;
- (UIEdgeInsets)edgeInsets;
- (id)_layerRecursiveDescription;
- (id)_livePhotoView;
- (id)_videoPlayerController;
- (id)_videoPlayerView;
- (id)snapshotImage;
- (void)_invalidateDisplayEDRHeadroomMonitor;
- (void)_livephotoPlaybackDidEnd;
- (void)_livephotoPlaybackWillBegin;
- (void)_monitorDisplayEDRHeadroom:(id)a3;
- (void)_rendererDidCreateAVPlayerController:(id)a3;
- (void)_rendererDidFinishPreparingVideo;
- (void)_rendererDidFinishWithStatistics:(id)a3;
- (void)_rendererDidStartPreparingVideo;
- (void)_rendererDidUpdateLivePhoto;
- (void)_scheduleDisplayEDRHeadroomMonitor;
- (void)_setLayerFilters:(id)a3;
- (void)_setPipelineFilters:(id)a3 shouldUpdateContent:(BOOL)a4;
- (void)_setupViews;
- (void)_startVideoPlayback;
- (void)_stopVideoPlayback;
- (void)_transitionToInsets:(UIEdgeInsets)a3 duration:(double)a4 animationCurve:(int64_t)a5 updateRenderContent:(BOOL)a6;
- (void)_updateContentInsets;
- (void)_updateRenderContent;
- (void)_updateScreenSpaceOverlay;
- (void)_updateVideoPlayerAlpha:(BOOL)a3;
- (void)_updateVisibleImageOverlayView;
- (void)addOverlay:(id)a3 withIdentifier:(id)a4 style:(int64_t)a5;
- (void)didMoveToWindow;
- (void)geometryUpdated;
- (void)installRenderingCompletionBlock:(id)a3;
- (void)layoutSubviews;
- (void)playerController:(id)a3 didUpdateElapsedTime:(double)a4 duration:(double)a5;
- (void)playerControllerDidFinishPlaying:(id)a3 duration:(double)a4;
- (void)playerControllerFailedToPlayToEnd:(id)a3 error:(id)a4;
- (void)playerControllerIsReadyForPlayback:(id)a3;
- (void)playerRateDidChange:(id)a3 rate:(float)a4;
- (void)removeOverlayWithIdentifier:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)setAlwaysBounceScrollView:(BOOL)a3;
- (void)setAngle:(double)a3;
- (void)setCenterContent:(BOOL)a3;
- (void)setComposition:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setLoopsVideoPlayback:(BOOL)a3;
- (void)setMaximumZoomScale:(double)a3;
- (void)setMedia:(id)a3;
- (void)setMedia:(id)a3 displayType:(int64_t)a4;
- (void)setMinimumZoomScale:(double)a3;
- (void)setMuted:(BOOL)a3;
- (void)setVideoPlayerVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setZoomScale:(double)a3;
- (void)setZoomScaleToFit;
- (void)willMoveToWindow:(id)a3;
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

- (void)playerControllerIsReadyForPlayback:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_delegateFlags.hasIsReadyForVideoPlayback)
  {
    v5 = [(NUMediaView *)self delegate];
    [v5 mediaViewIsReadyForVideoPlayback:self];
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v6 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_debug_impl(&dword_25BD29000, v6, OS_LOG_TYPE_DEBUG, "<controller: %p> ", &v7, 0xCu);
  }
}

- (void)playerControllerFailedToPlayToEnd:(id)a3 error:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_delegateFlags.hasFailedToPlayToEnd)
  {
    v8 = [(NUMediaView *)self delegate];
    [v8 mediaViewFailedToPlayToEnd:self error:v7];
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v9 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218242;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_debug_impl(&dword_25BD29000, v9, OS_LOG_TYPE_DEBUG, "<controller: %p> failed to play to end: %@", &v10, 0x16u);
  }
}

- (void)playerController:(id)a3 didUpdateElapsedTime:(double)a4 duration:(double)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v8 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218496;
    v10 = v7;
    v11 = 2048;
    v12 = a4;
    v13 = 2048;
    v14 = a5;
    _os_log_debug_impl(&dword_25BD29000, v8, OS_LOG_TYPE_DEBUG, "<controller: %p> %g %g", &v9, 0x20u);
  }
}

- (void)playerControllerDidFinishPlaying:(id)a3 duration:(double)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_delegateFlags.hasDidPlayToEnd)
  {
    v7 = [(NUMediaView *)self delegate];
    [v7 mediaViewDidPlayToEnd:self];
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_439);
  }

  v8 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218240;
    v10 = v6;
    v11 = 2048;
    v12 = a4;
    _os_log_debug_impl(&dword_25BD29000, v8, OS_LOG_TYPE_DEBUG, "<controller: %p> %g", &v9, 0x16u);
  }
}

- (void)playerRateDidChange:(id)a3 rate:(float)a4
{
  v6 = [(NUMediaView *)self delegate];
  if (a4 <= 0.0)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 mediaViewDidEndPlayback:self];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 mediaViewDidStartPlayback:self];
  }
}

- (BOOL)hasOverlayWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_overlayViews objectForKeyedSubscript:a3];
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

- (void)removeOverlayWithIdentifier:(id)a3
{
  overlayViews = self->_overlayViews;
  v6 = a3;
  v5 = [(NSMutableDictionary *)overlayViews objectForKeyedSubscript:v6];
  [v5 removeFromSuperview];

  [(NSMutableDictionary *)self->_overlayViews setObject:0 forKeyedSubscript:v6];
}

- (void)addOverlay:(id)a3 withIdentifier:(id)a4 style:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (!a5)
  {
    v10 = &OBJC_IVAR___NUMediaView__screenSpaceOverlayView;
    goto LABEL_5;
  }

  if (a5 == 1)
  {
    v10 = &OBJC_IVAR___NUMediaView__visibleImageOverlayView;
LABEL_5:
    v11 = *(&self->super.super.super.isa + *v10);
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:
  v24 = v11;
  [v11 addSubview:v9];
  v12 = [v9 topAnchor];
  v13 = [v24 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v9 leftAnchor];
  v16 = [v24 leftAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [v9 bottomAnchor];
  v19 = [v24 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  [v20 setActive:1];

  v21 = [v9 rightAnchor];
  v22 = [v24 rightAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  [(NSMutableDictionary *)self->_overlayViews setObject:v9 forKey:v8];
}

- (void)_updateContentInsets
{
  v36 = *MEMORY[0x277D85DE8];
  [(NUScrollView *)self->_scrollView frame];
  v3 = [(NURenderView *)self->_renderView hasTransitionAnimation];
  [(NUScrollView *)self->_scrollView contentSize];
  [NUMediaView _edgeInsetsForContentSize:"_edgeInsetsForContentSize:inFrame:" inFrame:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(NUScrollView *)self->_scrollView contentInset];
  v18 = v15 == v7 && v12 == v5 && v14 == v11 && v13 == v9;
  if (!v18 && self->_transitionCount == 0 && !v3)
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
  v2 = [(NURenderView *)self->_renderView _containerLayer];
  [v2 bounds];
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

- (void)_updateVideoPlayerAlpha:(BOOL)a3
{
  v3 = a3;
  v5 = [(NUMediaView *)self isVideoPlayerVisible];
  if ((v5 & [(NUAVPlayerView *)self->_playerView isReadyForDisplay]) != 0)
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
    if (v3)
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

- (void)_rendererDidFinishWithStatistics:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v21 = [(NUMediaView *)self delegate];
  v22 = v21;
  if (self->_delegateFlags.hasDidFinishRenderingWithStatistics)
  {
    [v21 mediaViewDidFinishRendering:self withStatistics:v4];
  }

  else if (self->_delegateFlags.hasDidFinishRendering)
  {
    [v21 mediaViewDidFinishRendering:self];
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

- (void)_rendererDidCreateAVPlayerController:(id)a3
{
  v4 = a3;
  v5 = v4;
  playerView = self->_playerView;
  if (v4)
  {
    v7 = [v4 player];
    [(NUAVPlayerView *)playerView setPlayer:v7];

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

- (void)_transitionToInsets:(UIEdgeInsets)a3 duration:(double)a4 animationCurve:(int64_t)a5 updateRenderContent:(BOOL)a6
{
  v6 = a6;
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v86 = *MEMORY[0x277D85DE8];
  if (a6)
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
    if (v6)
    {
      v63 = @"YES";
    }

    *(&v85.b + 6) = a4;
    HIWORD(v85.c) = 1024;
    LODWORD(v85.d) = a5;
    WORD2(v85.d) = 2112;
    *(&v85.d + 6) = v63;
    _os_log_debug_impl(&dword_25BD29000, v61, OS_LOG_TYPE_DEBUG, "[NUMediaView _transitionToInsets:duration:animationCurve:updateRenderContent:] - insets: %@, duration: %f, animationCurve: %d, updateRenderContent: %@", &v85, 0x26u);
  }

  if ([(NUMediaViewRenderer *)self->_renderer isZoomedToFit])
  {
    v80 = a4;
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
    v60 = NUMediaTimingFunctionForUIAnimationCurve(a5);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __79__NUMediaView__transitionToInsets_duration_animationCurve_updateRenderContent___block_invoke;
    v83[3] = &unk_279973CA8;
    v83[4] = self;
    *&v83[5] = v77;
    *&v83[6] = v79;
    *&v83[7] = v81;
    *&v83[8] = v82;
    v84 = v6;
    [(NURenderView *)renderView transitionToSize:v60 offset:v83 duration:v46 animationCurve:v44 completion:v56, v57, v80];

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
    if (v6)
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
    v6 = [MEMORY[0x277D2CFB8] isViewDebugEnabled];
    playerView = self->_playerView;
    if (v6)
    {
      v7 = [(NUAVPlayerView *)playerView layer];
      v8 = [MEMORY[0x277D75348] cyanColor];
      [v7 setBorderColor:{objc_msgSend(v8, "CGColor")}];

      v9 = [(NUAVPlayerView *)self->_playerView layer];
      [v9 setBorderWidth:8.0];

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
      v5 = [(UIView *)self->_livePhotoView layer];
      v6 = [MEMORY[0x277D75348] redColor];
      [v5 setBorderColor:{objc_msgSend(v6, "CGColor")}];

      v7 = [(UIView *)self->_livePhotoView layer];
      [v7 setBorderWidth:8.0];
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
    v10 = [(NUScrollView *)self->_scrollView layer];
    [v10 setBorderWidth:4.0];

    v11 = [(NUScrollView *)self->_scrollView layer];
    v12 = [MEMORY[0x277D75348] whiteColor];
    [v11 setBorderColor:{objc_msgSend(v12, "CGColor")}];

    v13 = [(NUMediaView *)self layer];
    [v13 setBorderWidth:1.0];

    v14 = [(NUMediaView *)self layer];
    v15 = [MEMORY[0x277D75348] greenColor];
    [v14 setBorderColor:{objc_msgSend(v15, "CGColor")}];
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
  v20 = [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView topAnchor];
  imageTopAnchor = self->_imageTopAnchor;
  self->_imageTopAnchor = v20;

  v22 = [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView bottomAnchor];
  imageBottomAnchor = self->_imageBottomAnchor;
  self->_imageBottomAnchor = v22;

  v24 = [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView leftAnchor];
  imageLeftAnchor = self->_imageLeftAnchor;
  self->_imageLeftAnchor = v24;

  v26 = [(_NUMediaScreenSpaceOverlayView *)self->_screenSpaceOverlayView rightAnchor];
  imageRightAnchor = self->_imageRightAnchor;
  self->_imageRightAnchor = v26;

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
    v3 = [(NUMediaView *)self media];

    if (v3)
    {
      v4 = [(NUMediaView *)self window];
      if (v4)
      {
      }

      else if (![(NUMediaView *)self loopsVideoPlayback])
      {
        return;
      }

      renderer = self->_renderer;
      v9 = [(NUMediaView *)self media];
      [(NUMediaViewRenderer *)renderer updateMedia:?];
    }

    else
    {
      if (self->_transitionCount)
      {
        return;
      }

      v5 = [(NUMediaView *)self composition];

      if (!v5)
      {
        return;
      }

      v6 = [(NUMediaView *)self window];
      if (v6)
      {
      }

      else if (![(NUMediaView *)self loopsVideoPlayback])
      {
        return;
      }

      v8 = self->_renderer;
      v9 = [(NUMediaView *)self composition];
      [(NUMediaViewRenderer *)v8 updateComposition:?];
    }
  }
}

- (void)setCenterContent:(BOOL)a3
{
  if (self->_centerContent != a3)
  {
    self->_centerContent = a3;
  }
}

- (void)setAlwaysBounceScrollView:(BOOL)a3
{
  self->_alwaysBounceScrollView = a3;
  [(NUScrollView *)self->_scrollView setAlwaysBounceVertical:?];
  scrollView = self->_scrollView;
  alwaysBounceScrollView = self->_alwaysBounceScrollView;

  [(NUScrollView *)scrollView setAlwaysBounceHorizontal:alwaysBounceScrollView];
}

- (void)scrollViewDidEndDecelerating:(id)a3
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
    v4 = [(NUMediaView *)self delegate];
    [v4 mediaViewDidEndDecelerating:self];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  if (![(NUMediaView *)self loopsVideoPlayback]&& ![(NUMediaView *)self isVideoPlayerVisible]&& !v4)
  {
    [(NUMediaViewRenderer *)self->_renderer endPanning];
    if (!self->_scrollUpdatesSuppressed)
    {
      [(NUMediaView *)self _updateRenderContent];
    }
  }

  if (self->_delegateFlags.hasDidEndDragging)
  {
    v6 = [(NUMediaView *)self delegate];
    [v6 mediaViewDidEndDragging:self willDecelerate:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  if (![(NUMediaView *)self loopsVideoPlayback]&& ![(NUMediaView *)self isVideoPlayerVisible]&& !self->_scrollUpdatesSuppressed)
  {
    [(NUMediaView *)self _updateRenderContent];
  }

  [(NUMediaView *)self _updateScreenSpaceOverlay];
  [(NUMediaView *)self _updateVisibleImageOverlayView];
  if (self->_delegateFlags.hasDidScroll)
  {
    v4 = [(NUMediaView *)self delegate];
    [v4 mediaViewDidScroll:self];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  [(NUMediaViewRenderer *)self->_renderer beginPanning];
  if (self->_delegateFlags.hasWillBeginDragging)
  {
    v4 = [(NUMediaView *)self delegate];
    [v4 mediaViewWillBeginDragging:self];
  }
}

- (void)scrollViewDidEndZooming:(id)a3 withView:(id)a4 atScale:(double)a5
{
  if (![(NUMediaView *)self loopsVideoPlayback:a3]&& ![(NUMediaView *)self isVideoPlayerVisible])
  {
    [(NUMediaViewRenderer *)self->_renderer endZooming];
    if (!self->_scrollUpdatesSuppressed)
    {
      [(NUMediaView *)self _updateRenderContent];
    }
  }

  if (self->_delegateFlags.hasDidEndZooming)
  {
    v6 = [(NUMediaView *)self delegate];
    [v6 mediaViewDidEndZooming:self];
  }
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  if (![(NUMediaView *)self loopsVideoPlayback:a3]&& ![(NUMediaView *)self isVideoPlayerVisible])
  {
    [(NUMediaViewRenderer *)self->_renderer beginZooming];
  }

  if (self->_delegateFlags.hasWillBeginZooming)
  {
    v5 = [(NUMediaView *)self delegate];
    [v5 mediaViewWillBeginZooming:self];
  }
}

- (void)scrollViewDidZoom:(id)a3
{
  v5 = a3;
  [(NUMediaView *)self _updateContentInsets];
  [(NUMediaView *)self _updateScreenSpaceOverlay];
  [(NUMediaView *)self _updateVisibleImageOverlayView];
  if (self->_delegateFlags.hasDidZoom)
  {
    v4 = [(NUMediaView *)self delegate];
    [v5 zoomScale];
    [v4 mediaView:self didZoom:?];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  v16 = *MEMORY[0x277D85DE8];
  p_edgeInsets = &self->_edgeInsets;
  v4.f64[0] = a3.top;
  v4.f64[1] = a3.left;
  v5.f64[0] = a3.bottom;
  v5.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v4), vceqq_f64(*&self->_edgeInsets.bottom, v5)))) & 1) == 0 && !self->_transitionCount)
  {
    v10 = *&a3.top;
    left = a3.left;
    bottom = a3.bottom;
    right = a3.right;
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

- (CGRect)convertViewRect:(CGRect)a3 fromSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v78 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = [(NUMediaView *)self _geometry];
  if (v10)
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
    v16 = [v10 transformWithSourceSpace:v9 destinationSpace:@"/Image" error:&v76];
    v17 = v76;
    if (!v16)
    {
      v60 = NUAssertLogger();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot establish a mapping from space %@ to space %@: %@", v9, @"/Image", v17];
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
          v71 = [v69 callStackSymbols];
          v72 = [v71 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          *&buf[4] = v68;
          *&buf[12] = 2114;
          *&buf[14] = v72;
          _os_log_error_impl(&dword_25BD29000, v64, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v65)
      {
        v66 = [MEMORY[0x277CCACC8] callStackSymbols];
        v67 = [v66 componentsJoinedByString:@"\n"];
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
    v42 = [(NUMediaView *)self _geometry];
    v43 = v42;
    if (v42)
    {
      [v42 extent];
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

- (CGRect)convertNormalizedViewRect:(CGRect)a3 fromSpace:(id)a4
{
  v5 = a4;
  [(NUMediaView *)self _masterSizeWithoutGeometry];
  NURectDenormalize();
  [(NUMediaView *)self convertViewRect:v5 fromSpace:?];
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

- (CGPoint)convertPoint:(CGPoint)a3 fromSpace:(id)a4 toView:(id)a5
{
  y = a3.y;
  x = a3.x;
  v71 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = [(NUMediaView *)self _geometry];
  v12 = v11;
  if (!v11)
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
        v33 = [v30 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
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
      v54 = [v52 callStackSymbols];
      v55 = [v54 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v68 = v55;
      _os_log_error_impl(&dword_25BD29000, v53, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v66 = 0;
  v13 = [v11 transformWithSourceSpace:v9 destinationSpace:@"/Image" error:&v66];
  v14 = v66;
  if (!v13)
  {
    if ([v9 isEqualToString:@"/masterSpace"])
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

    if ([v9 isEqualToString:@"/masterSpace"])
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
      v40 = [v38 stringWithFormat:@"Cannot establish a mapping from space %@ to space %@: %@", v9, @"/Image", v17];
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
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v68 = v46;
        v69 = 2114;
        v70 = v50;
        _os_log_error_impl(&dword_25BD29000, v48, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }

LABEL_40:
      v61 = @"/Image";
      v62 = v17;
      v60 = v9;
      _NUAssertContinueHandler();
      goto LABEL_4;
    }

    v51 = *v36;
    if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      v56 = MEMORY[0x277CCACC8];
      v57 = v51;
      v58 = [v56 callStackSymbols];
      v59 = [v58 componentsJoinedByString:@"\n"];
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
  [v10 convertPoint:self fromView:?];
  x = v19;
  y = v20;

LABEL_32:
  v43 = x;
  v44 = y;
  result.y = v44;
  result.x = v43;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromView:(id)a4 toSpace:(id)a5
{
  y = a3.y;
  x = a3.x;
  v68 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = [(NUMediaView *)self _geometry];
  if (!v11)
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
        v33 = [v30 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
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
      v55 = [v53 callStackSymbols];
      v56 = [v55 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v56;
      _os_log_error_impl(&dword_25BD29000, v54, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  [(NUMediaView *)self convertPoint:v9 fromView:x, y];
  [(NUMediaView *)self convertPointToImage:?];
  x = v12;
  v14 = v13;
  [(NUMediaView *)self _imageSize];
  y = v15 - v14;
  v63 = 0;
  v16 = [v11 transformWithSourceSpace:@"/Image" destinationSpace:v10 error:&v63];
  v17 = v63;
  if (!v16)
  {
    if ([v10 isEqualToString:@"/masterSpace"])
    {
      v62 = 0;
      v16 = [v11 transformWithSourceSpace:@"/Image" destinationSpace:@"/Master/Source" error:&v62];
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

    if ([v10 isEqualToString:@"/masterSpace"])
    {
      v61 = 0;
      v16 = [v11 transformWithSourceSpace:@"/Image" destinationSpace:@"/ShowOriginalSource" error:&v61];
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
      v40 = [v38 stringWithFormat:@"Cannot establish a mapping from space %@ to space %@: %@", @"/Image", v10, v20];
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
        v50 = [v47 callStackSymbols];
        v51 = [v50 componentsJoinedByString:@"\n"];
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
      v59 = [v57 callStackSymbols];
      v60 = [v59 componentsJoinedByString:@"\n"];
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

- (void)willMoveToWindow:(id)a3
{
  v8 = a3;
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

- (void)_monitorDisplayEDRHeadroom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(NUMediaView *)self window];
  v5 = [v4 screen];

  [NUMediaView currentEDRHeadroomForScreen:v5];
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
    v6 = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = NUMediaView;
  [(NUMediaView *)&v14 didMoveToWindow];
  v3 = [(NUMediaView *)self window];

  if (v3)
  {
    v4 = [(NUMediaView *)self window];
    v5 = [v4 screen];

    renderer = self->_renderer;
    [v5 scale];
    [(NUMediaViewRenderer *)renderer setBackingScale:?];
    v7 = [MEMORY[0x277D2CFF8] currentPlatform];
    v8 = [v5 _displayID];
    v9 = [v7 displayWithIdentifier:v8];

    v10 = self->_renderer;
    v11 = [v9 pixelFormat];
    [(NUMediaViewRenderer *)v10 setPixelFormat:v11];

    v12 = self->_renderer;
    v13 = [v9 colorSpace];
    [(NUMediaViewRenderer *)v12 setColorSpace:v13];

    if ([(NUMediaView *)self isHDREnabled])
    {
      [NUMediaView maximumEDRHeadroomForScreen:v5];
      [(NUMediaViewRenderer *)self->_renderer setDisplayMaximumEDRHeadroom:?];
      [NUMediaView currentEDRHeadroomForScreen:v5];
      [(NUMediaViewRenderer *)self->_renderer setDisplayCurrentEDRHeadroom:?];
      [(NUMediaView *)self _scheduleDisplayEDRHeadroomMonitor];
    }

    [(NUMediaView *)self _updateRenderContent];
  }
}

- (void)_setLayerFilters:(id)a3
{
  renderView = self->_renderView;
  v5 = a3;
  v6 = [(NURenderView *)renderView _backfillLayer];
  [v6 setFilters:v5];

  v7 = [(NURenderView *)self->_renderView _roiLayer];
  [v7 setFilters:v5];
}

- (id)snapshotImage
{
  v2 = [(NURenderView *)self->_renderView _backfillLayer];
  v3 = [v2 snapshotImage];

  return v3;
}

- (id)_layerRecursiveDescription
{
  v2 = [(NUMediaView *)self layer];
  v3 = [v2 nu_layerRecursiveDescription];

  return v3;
}

- (void)setVideoPlayerVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_videoPlayerVisible != a3)
  {
    self->_videoPlayerVisible = a3;
    self->_lastVideoPlayerVisibilityChangeWasAnimated = a4;
    [(NUMediaView *)self _updateVideoPlayerAlpha:a4];
  }
}

- (void)_stopVideoPlayback
{
  v2 = [(NUMediaView *)self player];
  [v2 pause];
}

- (void)_startVideoPlayback
{
  v2 = [(NUMediaView *)self player];
  [v2 play];
}

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  v4 = [(NUMediaView *)self player];
  [v4 setMuted:v3];
}

- (BOOL)isMuted
{
  v2 = [(NUMediaView *)self player];
  v3 = [v2 isMuted];

  return v3;
}

- (BOOL)loopsVideoPlayback
{
  v2 = [(NUMediaView *)self player];
  v3 = [v2 playbackMode];

  return v3 == 1;
}

- (void)setLoopsVideoPlayback:(BOOL)a3
{
  v3 = a3;
  v4 = [(NUMediaView *)self player];
  [v4 setPlaybackMode:v3];
}

- (void)_livephotoPlaybackDidEnd
{
  if (self->_delegateFlags.hasDidEndLivePhotoPlayback)
  {
    v4 = [(NUMediaView *)self delegate];
    [v4 mediaViewDidEndLivePhotoPlayback:self];
  }
}

- (void)_livephotoPlaybackWillBegin
{
  if (self->_delegateFlags.hasWillBeginLivePhotoPlayback)
  {
    v4 = [(NUMediaView *)self delegate];
    [v4 mediaViewWillBeginLivePhotoPlayback:self];
  }
}

- (void)_rendererDidFinishPreparingVideo
{
  if (self->_delegateFlags.hasDidFinishPreparingVideo)
  {
    v4 = [(NUMediaView *)self delegate];
    [v4 mediaViewDidFinishPreparingVideo:self];
  }
}

- (void)_rendererDidStartPreparingVideo
{
  if (self->_delegateFlags.hasDidStartPreparingVideo)
  {
    v4 = [(NUMediaView *)self delegate];
    [v4 mediaViewDidStartPreparingVideo:self];
  }
}

- (void)_rendererDidUpdateLivePhoto
{
  if (self->_delegateFlags.hasDidUpdateLivePhoto)
  {
    v4 = [(NUMediaView *)self delegate];
    [v4 mediaViewDidUpdateLivePhoto:self];
  }
}

- (id)_videoPlayerController
{
  v2 = [(NUMediaView *)self _renderer];
  v3 = [v2 nuAVPlayerController];

  return v3;
}

- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)a3 inFrame:(CGRect)a4 alwaysCenterContent:(BOOL)a5
{
  v5 = a5 || self->_centerContent;
  [objc_opt_class() _proposedInsetsForInsets:v5 contentSize:self->_edgeInsets.top inFrame:self->_edgeInsets.left centerContent:{self->_edgeInsets.bottom, self->_edgeInsets.right, a3.width, a3.height, *&a4.origin.x, *&a4.origin.y, *&a4.size.width, *&a4.size.height}];
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (UIEdgeInsets)_edgeInsetsForContentSize:(CGSize)a3 inFrame:(CGRect)a4
{
  [(NUMediaView *)self _edgeInsetsForContentSize:0 inFrame:a3.width alwaysCenterContent:a3.height, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)setMinimumZoomScale:(double)a3
{
  [(NUScrollView *)self->_scrollView setMinimumZoomScale:a3];

  [(NUMediaView *)self _updateRenderContent];
}

- (void)setMaximumZoomScale:(double)a3
{
  [(NUMediaViewRenderer *)self->_renderer setMaximumZoomScale:a3];

  [(NUMediaView *)self _updateRenderContent];
}

- (void)setZoomScaleToFit
{
  v3 = [(NUMediaView *)self _renderer];
  v4 = [v3 isZoomedToFit];

  if ((v4 & 1) == 0)
  {
    [(NUMediaView *)self minimumZoomScale];

    [(NUMediaView *)self setZoomScale:?];
  }
}

- (void)setZoomScale:(double)a3
{
  [(NUScrollView *)self->_scrollView setZoomScale:a3];

  [(NUMediaView *)self _updateRenderContent];
}

- (void)geometryUpdated
{
  if (self->_delegateFlags.hasDidUpdateGeometry)
  {
    v4 = [(NUMediaView *)self delegate];
    [v4 mediaViewDidUpdateGeometry:self];
  }
}

- (void)setAngle:(double)a3
{
  memset(&v6, 0, sizeof(v6));
  CATransform3DMakeRotation(&v6, a3, 0.0, 0.0, 1.0);
  v4 = [(NURenderView *)self->_renderView _containerLayer];
  v5 = v6;
  [v4 setTransform:&v5];
}

- (void)installRenderingCompletionBlock:(id)a3
{
  self->_renderingCompletionBlock = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)_setPipelineFilters:(id)a3 shouldUpdateContent:(BOOL)a4
{
  v4 = a4;
  [(NUMediaViewRenderer *)self->_renderer setPipelineFilters:a3];
  if (v4)
  {

    [(NUMediaView *)self _updateRenderContent];
  }
}

- (CGPoint)convertPoint:(CGPoint)a3 toNormalizedYDownSourceSpaceFromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v39 = *MEMORY[0x277D85DE8];
  v7 = a4;
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
        v26 = [v23 callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
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
      v33 = [v31 callStackSymbols];
      v34 = [v33 componentsJoinedByString:@"\n"];
      v35 = 138543362;
      v36 = v34;
      _os_log_error_impl(&dword_25BD29000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v35, 0xCu);
    }

    goto LABEL_17;
  }

  v11 = v8;
  [(NUMediaView *)self convertPoint:v7 fromView:@"/masterSpace" toSpace:x, y];
  x = v12 / v11;
  y = 1.0 - v13 / v10;
LABEL_18:

  v29 = x;
  v30 = y;
  result.y = v30;
  result.x = v29;
  return result;
}

- (CGRect)convertRectFromImage:(CGRect)a3
{
  [(NUMediaViewRenderer *)self->_renderer convertRect:self fromImageToView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)convertRectToImage:(CGRect)a3
{
  [(NUMediaViewRenderer *)self->_renderer convertRect:self toImageFromView:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)convertPointFromImage:(CGPoint)a3
{
  [(NUMediaViewRenderer *)self->_renderer convertPoint:self fromImageToView:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)convertPointToImage:(CGPoint)a3
{
  [(NUMediaViewRenderer *)self->_renderer convertPoint:self toImageFromView:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)imageFrame
{
  v3 = [(NUMediaView *)self _geometry];
  [v3 size];

  renderer = self->_renderer;
  NUPixelSizeToCGRect();

  [(NUMediaViewRenderer *)renderer convertRect:self fromImageToView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)setMedia:(id)a3
{
  objc_storeStrong(&self->_media, a3);
  if (a3)
  {

    [(NUMediaView *)self _updateRenderContent];
  }
}

- (void)setMedia:(id)a3 displayType:(int64_t)a4
{
  v8 = a3;
  objc_storeStrong(&self->_media, a3);
  v7 = v8;
  if (v8)
  {
    [(NUMediaViewRenderer *)self->_renderer updateMedia:v8 displayType:a4];
    v7 = v8;
  }
}

- (void)setComposition:(id)a3
{
  v7 = a3;
  v4 = [v7 mediaType];
  renderer = self->_renderer;
  if (v4 == 2)
  {
    v6 = [(NUMediaViewRenderer *)renderer composition];

    [(NUMediaViewRenderer *)self->_renderer setComposition:v7];
    if (v6)
    {
      [(PFCoalescer *)self->_renderCoalescer update];
      goto LABEL_6;
    }
  }

  else
  {
    [(NUMediaViewRenderer *)renderer setComposition:v7];
  }

  [(NUMediaView *)self _updateRenderContent];
LABEL_6:
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (NUMediaView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = NUMediaView;
  v3 = [(NUMediaView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(NUMediaView *)v3 _setupViews];
  }

  return v4;
}

- (NUMediaView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NUMediaView;
  v3 = [(NUMediaView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NUMediaView *)v3 _setupViews];
  }

  return v4;
}

+ (UIEdgeInsets)_proposedInsetsForInsets:(UIEdgeInsets)a3 contentSize:(CGSize)a4 inFrame:(CGRect)a5 centerContent:(BOOL)a6
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v47 = *MEMORY[0x277D85DE8];
  if (CGRectIsEmpty(a5))
  {
    top = *MEMORY[0x277D768C8];
    left = *(MEMORY[0x277D768C8] + 8);
    bottom = *(MEMORY[0x277D768C8] + 16);
    right = *(MEMORY[0x277D768C8] + 24);
    goto LABEL_28;
  }

  if (a6)
  {
    v36 = right;
    MinX = CGRectGetMinX(a5);
    v34 = MinX + (CGRectGetWidth(a5) - a4.width) * 0.5;
    MinY = CGRectGetMinY(a5);
    Height = CGRectGetHeight(a5);
    v14 = fmax(v34, 0.0);
    v15 = fmax(MinY + (Height - a4.height) * 0.5, 0.0);
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
    v29 = NSStringFromCGSize(a4);
    v30 = NSStringFromCGRect(a5);
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

+ (double)currentEDRHeadroomForScreen:(id)a3
{
  [a3 currentEDRHeadroom];
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

+ (double)maximumEDRHeadroomForScreen:(id)a3
{
  [a3 potentialEDRHeadroom];
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