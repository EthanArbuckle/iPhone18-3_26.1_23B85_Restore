@interface CKAutoloopMovieBalloonView
+ (BOOL)isEnabled;
+ (id)_autoloopAVAudioSessionQueue;
- (BOOL)_shouldAutoPlay;
- (BOOL)_shouldPauseInitialLooping;
- (BOOL)_shouldPresentQuickLookOnTap;
- (BOOL)_thermalStateAcceptableForLooping;
- (CKAutoloopMovieBalloonView)initWithFrame:(CGRect)a3;
- (NSString)description;
- (void)_removeSnapshot;
- (void)_thermalStateDidChange:(id)a3;
- (void)avPlayer:(id)a3 itemDidPlayToEnd:(id)a4;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareForAcknowledgementDisplay;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)previewDidChange:(id)a3;
- (void)setContentAlpha:(double)a3;
- (void)setIsMuted:(BOOL)a3;
- (void)setMediaObject:(id)a3;
- (void)startListeningToVideoPlayer;
- (void)stopListeningToVideoPlayer;
- (void)tapGestureRecognized:(id)a3;
@end

@implementation CKAutoloopMovieBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  -[CKAutoloopMovieBalloonView setIsMultitrackMemoriesVideo:](self, "setIsMultitrackMemoriesVideo:", [v10 isMultitrackMemoriesVideo]);
  v12.receiver = self;
  v12.super_class = CKAutoloopMovieBalloonView;
  [(CKImageBalloonView *)&v12 configureForMediaObject:v10 previewWidth:v7 orientation:v6 hasInvisibleInkEffect:a4];
  [(CKAutoloopMovieBalloonView *)self setMediaObject:v10];
  v11 = [v10 isJellyfishVideo];

  [(CKAutoloopMovieBalloonView *)self setIsJellyfishVideo:v11];
}

+ (BOOL)isEnabled
{
  v2 = NSClassFromString(&cfstr_Iswrappedavpla.isa);
  if (v2)
  {
    LOBYTE(v2) = NSClassFromString(&cfstr_Isvideoplayeru.isa) != 0;
  }

  return v2;
}

+ (id)_autoloopAVAudioSessionQueue
{
  if (_autoloopAVAudioSessionQueue_onceToken != -1)
  {
    +[CKAutoloopMovieBalloonView _autoloopAVAudioSessionQueue];
  }

  v3 = _autoloopAVAudioSessionQueue_queue;

  return v3;
}

void __58__CKAutoloopMovieBalloonView__autoloopAVAudioSessionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.MobileSMS.AutoloopAVAudioSessionQueue", v2);
  v1 = _autoloopAVAudioSessionQueue_queue;
  _autoloopAVAudioSessionQueue_queue = v0;
}

- (CKAutoloopMovieBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34.receiver = self;
  v34.super_class = CKAutoloopMovieBalloonView;
  v7 = [(CKImageBalloonView *)&v34 initWithFrame:?];
  if (v7)
  {
    v8 = [MEMORY[0x1E69C1B18] auxiliarySession];
    v9 = *MEMORY[0x1E6958038];
    v33 = 0;
    [v8 setCategory:v9 error:&v33];
    v10 = v33;
    if (v10 && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v32 = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to change category shared autoloop audio session", v32, 2u);
      }
    }

    [(CKAutoloopMovieBalloonView *)v7 setAudioSession:v8];
    v12 = [objc_alloc(MEMORY[0x1E69C1B08]) initWithFrame:{x, y, width, height}];
    videoPlayer = v7->_videoPlayer;
    v7->_videoPlayer = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69C1B20]);
    avPlayer = v7->_avPlayer;
    v7->_avPlayer = v14;

    [(ISWrappedAVPlayer *)v7->_avPlayer registerChangeObserver:v7 context:playerObservationContext];
    [(ISWrappedAVPlayer *)v7->_avPlayer setLoopingEnabled:1];
    [(ISWrappedAVPlayer *)v7->_avPlayer setPreventsSleepDuringVideoPlayback:0];
    v16 = v7->_avPlayer;
    v17 = [(CKAutoloopMovieBalloonView *)v7 audioSession];
    [(ISWrappedAVPlayer *)v16 setWrappedAudioSession:v17];

    [(ISVideoPlayerUIView *)v7->_videoPlayer setVideoPlayer:v7->_avPlayer];
    v18 = [(ISVideoPlayerUIView *)v7->_videoPlayer subviews];
    v19 = [v18 firstObject];
    v20 = [v19 layer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = [(ISVideoPlayerUIView *)v7->_videoPlayer subviews];
      v23 = [v22 firstObject];
      v24 = [v23 layer];

      [v24 setPreferredDynamicRange:*MEMORY[0x1E6979298]];
      [v24 setVideoGravity:*MEMORY[0x1E69874F0]];
    }

    [(CKAutoloopMovieBalloonView *)v7 startListeningToVideoPlayer];
    [(CKAutoloopMovieBalloonView *)v7 addSubview:v7->_videoPlayer];
    [(ISWrappedAVPlayer *)v7->_avPlayer setDelegate:v7];
    v25 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v26 = [v25 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v27 = +[CKUIBehavior sharedBehaviors];
    v28 = [v27 unmuteButtonImage];
    [v26 setImage:v28];

    [(CKAutoloopMovieBalloonView *)v7 setMuteButton:v26];
    [(CKAutoloopMovieBalloonView *)v7 addSubview:v26];
    [(CKAutoloopMovieBalloonView *)v7 setIsMuted:1];
    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v7 selector:sel__thermalStateDidChange_ name:*MEMORY[0x1E696A7E0] object:0];

    v30 = [MEMORY[0x1E696AD88] defaultCenter];
    [v30 addObserver:v7 selector:sel_previewDidChange_ name:@"CKPreviewDidChangeNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(CKAutoloopMovieBalloonView *)self stopListeningToVideoPlayer];
  v3.receiver = self;
  v3.super_class = CKAutoloopMovieBalloonView;
  [(CKImageBalloonView *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKAutoloopMovieBalloonView;
  v4 = [(CKImageBalloonView *)&v8 description];
  v5 = [(CKAutoloopMovieBalloonView *)self mediaObject];
  v6 = [v3 stringWithFormat:@"%@ mediaObject: %@", v4, v5];

  return v6;
}

- (void)layoutSubviews
{
  v79.receiver = self;
  v79.super_class = CKAutoloopMovieBalloonView;
  [(CKImageBalloonView *)&v79 layoutSubviews];
  v3 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
  [(CKAutoloopMovieBalloonView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CKImageBalloonView *)self imageInsets];
  [v3 setFrame:{v5 + v15, v7 + v12, v9 - (v15 + v13), v11 - (v12 + v14)}];

  v16 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
  if ([(CKImageBalloonView *)self isScheduled])
  {
    v17 = +[CKUIBehavior sharedBehaviors];
    [v17 scheduledImageBalloonAlpha];
    [v16 setAlpha:?];
  }

  else
  {
    [v16 setAlpha:1.0];
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  [(CKBalloonView *)self balloonDescriptor];
  videoPlayerMaskLayer = self->_videoPlayerMaskLayer;
  if (!videoPlayerMaskLayer)
  {
    v19 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
    v67 = v75;
    v68 = v76;
    v69 = v77;
    v70 = v78;
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v66 = v74;
    v20 = [(CKBalloonMaskLayer *)v19 initWithDescriptor:&v63];
    v21 = self->_videoPlayerMaskLayer;
    self->_videoPlayerMaskLayer = v20;

    videoPlayerMaskLayer = self->_videoPlayerMaskLayer;
  }

  v67 = v75;
  v68 = v76;
  v69 = v77;
  v70 = v78;
  v63 = v71;
  v64 = v72;
  v65 = v73;
  v66 = v74;
  [(CKBalloonMaskLayer *)videoPlayerMaskLayer updateDescriptor:&v63];
  v22 = self->_videoPlayerMaskLayer;
  v23 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
  v24 = [v23 layer];
  [v24 setMask:v22];

  [(CKAutoloopMovieBalloonView *)self bounds];
  [(CKBalloonMaskLayer *)self->_videoPlayerMaskLayer setFrame:?];
  v25 = [(CKAutoloopMovieBalloonView *)self muteButton];

  if (v25)
  {
    v26 = [(CKAutoloopMovieBalloonView *)self muteButton];
    [v26 setHidden:{-[CKAutoloopMovieBalloonView isMultitrackMemoriesVideo](self, "isMultitrackMemoriesVideo")}];

    v27 = [(CKAutoloopMovieBalloonView *)self muteButton];
    [v27 sizeToFit];

    v28 = *MEMORY[0x1E695F058];
    v29 = *(MEMORY[0x1E695F058] + 8);
    v30 = [(CKAutoloopMovieBalloonView *)self muteButton];
    [v30 bounds];
    v32 = v31;
    v34 = v33;

    v35 = +[CKUIBehavior sharedBehaviors];
    v36 = [v35 muteButtonImage];
    [v36 size];
    v38 = v37;

    v39 = +[CKUIBehavior sharedBehaviors];
    v40 = [v39 unmuteButtonImage];
    [v40 size];
    v42 = v41;

    if (v38 >= v42)
    {
      v43 = v38;
    }

    else
    {
      v43 = v42;
    }

    v44 = +[CKUIBehavior sharedBehaviors];
    v45 = [v44 muteButtonImage];
    [v45 size];
    v47 = v46;

    v48 = +[CKUIBehavior sharedBehaviors];
    v49 = [v48 unmuteButtonImage];
    [v49 size];
    v51 = v50;

    if (v47 < v51)
    {
      v47 = v51;
    }

    v52 = [(CKAutoloopMovieBalloonView *)self muteButton];
    [v52 setFrame:{v28, v29, v32, v34}];

    v53 = +[CKUIBehavior sharedBehaviors];
    [v53 verticalBalloonBadgeInset];
    v55 = v47 * 0.5 + v54;

    [(CKAutoloopMovieBalloonView *)self bounds];
    v56 = CGRectGetMaxX(v80) - v43 * 0.5;
    v57 = +[CKUIBehavior sharedBehaviors];
    [v57 horizontalBalloonBadgeInset];
    v59 = v56 - v58;

    if ([(CKBalloonView *)self orientation]== 1)
    {
      v60 = +[CKUIBehavior sharedBehaviors];
      [v60 balloonMaskTailSizeForTailShape:2];
      v59 = v59 - v61;
    }

    v62 = [(CKAutoloopMovieBalloonView *)self muteButton];
    [v62 setCenter:{v59, v55}];
  }
}

- (void)setMediaObject:(id)a3
{
  v6 = a3;
  v5 = [(CKAutoloopMovieBalloonView *)self mediaObject];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_mediaObject, a3);
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)startListeningToVideoPlayer
{
  if (![(CKAutoloopMovieBalloonView *)self isListeningToVideoPlayer])
  {
    v3 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
    v4 = [v3 subviews];
    v5 = [v4 firstObject];
    v6 = [v5 layer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(ISVideoPlayerUIView *)self->_videoPlayer subviews];
      v9 = [v8 firstObject];
      v10 = [v9 layer];

      [v10 addObserver:self forKeyPath:@"readyForDisplay" options:1 context:0];
    }

    [(CKAutoloopMovieBalloonView *)self setIsListeningToVideoPlayer:1];
  }
}

- (void)stopListeningToVideoPlayer
{
  if ([(CKAutoloopMovieBalloonView *)self isListeningToVideoPlayer])
  {
    v3 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
    v4 = [v3 subviews];
    v5 = [v4 firstObject];
    v6 = [v5 layer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
      v9 = [v8 subviews];
      v10 = [v9 firstObject];
      v11 = [v10 layer];

      [v11 removeObserver:self forKeyPath:@"readyForDisplay"];
    }

    [(CKAutoloopMovieBalloonView *)self setIsListeningToVideoPlayer:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a5;
  v9 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [v8 objectForKey:@"new"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __77__CKAutoloopMovieBalloonView_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E72EBA18;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __77__CKAutoloopMovieBalloonView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isMultitrackMemoriesVideo];
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "MoviePlayer is ready, adjusting content for memories movie", buf, 2u);
      }
    }

    v5 = [*(a1 + 32) videoPlayer];
    v6 = v5;
    v7 = 0.0;
    if (*(*(a1 + 32) + 892))
    {
      v7 = 1.0;
    }

    [v5 setAlpha:v7];

    v8 = *(a1 + 32);
    v9 = v8[892];
  }

  else
  {
    if (v3)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "MoviePlayer is ready, clearing content", v13, 2u);
      }
    }

    v11 = [*(a1 + 32) layer];
    [v11 setContents:0];

    v8 = *(a1 + 32);
    v9 = 1;
  }

  return [v8 setImageHidden:v9];
}

- (void)prepareForReuse
{
  [(CKAutoloopMovieBalloonView *)self setIsMultitrackMemoriesVideo:0];
  [(CKAutoloopMovieBalloonView *)self setIsPlayingMultitrackMemory:0];
  v8.receiver = self;
  v8.super_class = CKAutoloopMovieBalloonView;
  [(CKImageBalloonView *)&v8 prepareForReuse];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CKAutoloopMovieBalloonView *)self stopListeningToVideoPlayer];
  v4 = [(CKAutoloopMovieBalloonView *)self avPlayer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__CKAutoloopMovieBalloonView_prepareForReuse__block_invoke;
  v7[3] = &unk_1E72EBA18;
  v7[4] = self;
  [v4 replaceCurrentItemWithPlayerItem:0 thenCall:v7];

  [(CKImageBalloonView *)self setImage:0];
  v5 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
  [v5 setMaskView:0];

  v6 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
  [v6 setAlpha:1.0];

  [(CKAutoloopMovieBalloonView *)self setIsMuted:1];
  [(CKAutoloopMovieBalloonView *)self _removeSnapshot];
}

- (void)prepareForDisplay
{
  v30.receiver = self;
  v30.super_class = CKAutoloopMovieBalloonView;
  [(CKImageBalloonView *)&v30 prepareForDisplay];
  [(CKAutoloopMovieBalloonView *)self stopListeningToVideoPlayer];
  v3 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
  [v3 removeFromSuperview];

  v4 = [(CKAutoloopMovieBalloonView *)self mediaObject];

  if (v4)
  {
    v5 = [(CKAutoloopMovieBalloonView *)self mediaObject];
    v6 = [v5 fileURL];
    v7 = CKAVURLAssetForURL(v6);

    v8 = [MEMORY[0x1E69880B0] playerItemWithAsset:v7];
    v9 = [(CKAutoloopMovieBalloonView *)self _shouldAutoPlay];
    v10 = 0.0;
    if (![(CKAutoloopMovieBalloonView *)self _shouldPauseInitialLooping])
    {
      if ([(CKAutoloopMovieBalloonView *)self _thermalStateAcceptableForLooping])
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }
    }

    v11 = [(CKAutoloopMovieBalloonView *)self isMultitrackMemoriesVideo];
    if (v11)
    {
      if ([(CKAutoloopMovieBalloonView *)self isPlayingMultitrackMemory])
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      v12 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
      v13 = v12;
      v14 = 0.0;
      if (self->_isPlayingMultitrackMemory)
      {
        v14 = 1.0;
      }

      [v12 setAlpha:v14];
    }

    v15 = [(CKAutoloopMovieBalloonView *)self avPlayer];
    [v15 setLoopingEnabled:v9];

    [(ISWrappedAVPlayer *)self->_avPlayer setSuppressesAudioRendering:!v11];
    v16 = [(CKAutoloopMovieBalloonView *)self avPlayer];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __47__CKAutoloopMovieBalloonView_prepareForDisplay__block_invoke;
    v28[3] = &unk_1E72F3768;
    v28[4] = self;
    v29 = v10;
    [v16 replaceCurrentItemWithPlayerItem:v8 thenCall:v28];

    v17 = [(CKBalloonView *)self invisibleInkEffectController];
    v18 = [v17 effectView];

    v19 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
    if (v18)
    {
      [(CKAutoloopMovieBalloonView *)self insertSubview:v19 belowSubview:v18];
    }

    else
    {
      [(CKAutoloopMovieBalloonView *)self addSubview:v19];
    }

    [(CKAutoloopMovieBalloonView *)self startListeningToVideoPlayer];
  }

  v20 = [(CKAutoloopMovieBalloonView *)self muteButton];

  if (v20)
  {
    v21 = [(CKAutoloopMovieBalloonView *)self isJellyfishVideo];
    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 theme];
    v24 = v23;
    if (v21)
    {
      [v23 jellyfishMuteButtonColor];
    }

    else
    {
      [v23 autoloopMuteButtonColor];
    }
    v25 = ;

    v26 = [(CKAutoloopMovieBalloonView *)self muteButton];
    [v26 setTintColor:v25];

    v27 = [(CKAutoloopMovieBalloonView *)self muteButton];
    [(CKAutoloopMovieBalloonView *)self bringSubviewToFront:v27];
  }
}

void __47__CKAutoloopMovieBalloonView_prepareForDisplay__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) avPlayer];
  LODWORD(v2) = *(a1 + 40);
  [v3 setRate:v2];
}

- (void)prepareForAcknowledgementDisplay
{
  if ([(CKAutoloopMovieBalloonView *)self isJellyfishVideo])
  {

    [(CKAutoloopMovieBalloonView *)self setHidden:1];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CKAutoloopMovieBalloonView;
  [(CKImageBalloonView *)&v5 didMoveToWindow];
  v3 = [(CKAutoloopMovieBalloonView *)self window];

  if (v3)
  {
    [(CKAutoloopMovieBalloonView *)self prepareForDisplay];
  }

  else
  {
    v4 = [(CKAutoloopMovieBalloonView *)self avPlayer];
    [v4 replaceCurrentItemWithPlayerItem:0];
  }
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  [v4 locationInView:self];
  v6 = v5;
  v8 = v7;
  v9 = [(CKAutoloopMovieBalloonView *)self muteButton];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if ([(CKAutoloopMovieBalloonView *)self isMultitrackMemoriesVideo])
  {
    v18 = +[CKUIBehavior sharedBehaviors];
    v19 = [v18 playButtonImage];

    [(CKAutoloopMovieBalloonView *)self bounds];
    [(CKAutoloopMovieBalloonView *)self alignmentRectForFrame:?];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [v19 size];
    v29 = v28;
    v31 = v30;
    if (CKMainScreenScale_once_64 != -1)
    {
      [CKAutoloopMovieBalloonView tapGestureRecognized:];
    }

    v32 = *&CKMainScreenScale_sMainScreenScale_64;
    if ([(CKObscurableBalloonView *)self isObscured])
    {
      v33 = 0;
    }

    else
    {
      v36 = 1.0;
      if (v32 != 0.0)
      {
        v36 = v32;
      }

      v37 = floor((v21 + (v25 - v29) * 0.5) * v36) / v36;
      v38 = floor((v23 + (v27 - v31) * 0.5) * v36) / v36;
      [v4 locationInView:self];
      v48.x = v39;
      v48.y = v40;
      v51.origin.x = v37;
      v51.origin.y = v38;
      v51.size.width = v29;
      v51.size.height = v31;
      v33 = CGRectContainsPoint(v51, v48);
    }

    if (self->_isPlayingMultitrackMemory || v33)
    {
      [(CKAutoloopMovieBalloonView *)self _removeSnapshot];
      v41 = [(CKAutoloopMovieBalloonView *)self avPlayer];
      [v41 rate];
      self->_isPlayingMultitrackMemory = v42 == 0.0;

      [(CKBalloonImageView *)self setImageHidden:self->_isPlayingMultitrackMemory];
      [(CKAutoloopMovieBalloonView *)self prepareForDisplay];
    }

    else
    {
      v46.receiver = self;
      v46.super_class = CKAutoloopMovieBalloonView;
      [(CKImageBalloonView *)&v46 tapGestureRecognized:v4];
    }
  }

  else if ([(CKAutoloopMovieBalloonView *)self _thermalStateAcceptableForLooping])
  {
    if ([(CKAutoloopMovieBalloonView *)self _shouldPauseInitialLooping])
    {
      kInitialAutoloopWasSuppressed = 1;
      if ([(CKAutoloopMovieBalloonView *)self _shouldPresentQuickLookOnTap])
      {
        v50.origin.x = v11 + -10.0;
        v50.origin.y = v13 + -10.0;
        v50.size.width = v15 + 20.0;
        v50.size.height = v17 + 20.0;
        v47.x = v6;
        v47.y = v8;
        if (!CGRectContainsPoint(v50, v47))
        {
          [(CKImageBalloonView *)&v45 tapGestureRecognized:v4, v43.receiver, v43.super_class, v44.receiver, v44.super_class, self, CKAutoloopMovieBalloonView];
          goto LABEL_23;
        }
      }

      [(CKAutoloopMovieBalloonView *)self prepareForDisplay];
      v34 = self;
      v35 = 0;
    }

    else
    {
      v52.origin.x = v11 + -10.0;
      v52.origin.y = v13 + -10.0;
      v52.size.width = v15 + 20.0;
      v52.size.height = v17 + 20.0;
      v49.x = v6;
      v49.y = v8;
      if (!CGRectContainsPoint(v52, v49))
      {
        [(CKImageBalloonView *)&v44 tapGestureRecognized:v4, v43.receiver, v43.super_class, self, CKAutoloopMovieBalloonView, v45.receiver, v45.super_class];
        goto LABEL_23;
      }

      v35 = [(CKAutoloopMovieBalloonView *)self isMuted]^ 1;
      v34 = self;
    }

    [(CKAutoloopMovieBalloonView *)v34 setIsMuted:v35];
  }

  else
  {
    [(CKImageBalloonView *)&v43 tapGestureRecognized:v4, self, CKAutoloopMovieBalloonView, v44.receiver, v44.super_class, v45.receiver, v45.super_class];
  }

LABEL_23:
}

- (void)setIsMuted:(BOOL)a3
{
  if (self->_isMuted == a3)
  {
    return;
  }

  v3 = a3;
  self->_isMuted = a3;
  v5 = [(CKAutoloopMovieBalloonView *)self audioSession];
  v6 = [v5 category];
  v7 = v6;
  if (!v3)
  {

    v13 = *MEMORY[0x1E6958068];
    if (([v7 isEqualToString:*MEMORY[0x1E6958068]] & 1) == 0)
    {
      v14 = [(CKAutoloopMovieBalloonView *)self audioSession];
      v41 = 0;
      [v14 setCategory:v13 error:&v41];
      v15 = v41;

      if (v15 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Failed to change category shared autoloop audio session to AVAudioSessionCategoryPlayback", buf, 2u);
        }
      }
    }

    v12 = [(CKAutoloopMovieBalloonView *)self audioSession];
    v17 = [v12 audioSession];
    [v17 setActive:1 error:0];

    goto LABEL_18;
  }

  v8 = *MEMORY[0x1E6958038];
  v9 = [v6 isEqualToString:*MEMORY[0x1E6958038]];

  if ((v9 & 1) == 0)
  {
    v10 = [(CKAutoloopMovieBalloonView *)self audioSession];
    v43 = 0;
    [v10 setCategory:v8 error:&v43];
    v7 = v43;

    if (v7 && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to change category shared autoloop audio session to AVAudioSessionCategoryAmbient", buf, 2u);
      }
    }

    v12 = [objc_opt_class() _autoloopAVAudioSessionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__CKAutoloopMovieBalloonView_setIsMuted___block_invoke;
    block[3] = &unk_1E72EBA18;
    block[4] = self;
    dispatch_async(v12, block);
LABEL_18:
  }

  [(ISWrappedAVPlayer *)self->_avPlayer setSuppressesAudioRendering:v3];
  [(ISWrappedAVPlayer *)self->_avPlayer setActionAtItemEnd:v3 ^ 1];
  isMuted = self->_isMuted;
  v19 = +[CKUIBehavior sharedBehaviors];
  v20 = v19;
  if (isMuted)
  {
    [v19 muteButtonImage];
  }

  else
  {
    [v19 unmuteButtonImage];
  }
  v21 = ;

  v22 = [MEMORY[0x1E69DD558] transition];
  [v22 setStyle:3];
  v23 = [(CKAutoloopMovieBalloonView *)self muteButton];
  [v23 _setSymbolImage:v21 withSymbolTransition:v22];

  if (!self->_isMuted)
  {
    [(CKAutoloopMovieBalloonView *)self _removeSnapshot];
    v24 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
    v25 = [v24 snapshotViewAfterScreenUpdates:0];

    [(CKAutoloopMovieBalloonView *)self setSnapshotView:v25];
    v26 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
    [(CKAutoloopMovieBalloonView *)self insertSubview:v25 aboveSubview:v26];

    v27 = MEMORY[0x193AF5ED0]("kCMTimeZero", @"CoreMedia");
    v40 = *(v27 + 16);
    *buf = *v27;
    avPlayer = self->_avPlayer;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __41__CKAutoloopMovieBalloonView_setIsMuted___block_invoke_246;
    v36[3] = &unk_1E72ECCA8;
    v37 = v25;
    v38 = self;
    v34 = *buf;
    v35 = v40;
    v32 = *buf;
    v33 = v40;
    v30 = *buf;
    v31 = v40;
    v29 = v25;
    [(ISWrappedAVPlayer *)avPlayer seekToTime:&v34 toleranceBefore:&v32 toleranceAfter:&v30 completionHandler:v36];
  }

  [(CKAutoloopMovieBalloonView *)self setNeedsLayout:v30];
}

void __41__CKAutoloopMovieBalloonView_setIsMuted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) audioSession];
  v1 = [v2 audioSession];
  [v1 setActive:0 withOptions:1 error:0];
}

void __41__CKAutoloopMovieBalloonView_setIsMuted___block_invoke_246(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__CKAutoloopMovieBalloonView_setIsMuted___block_invoke_2;
  v4[3] = &unk_1E72EB8D0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __41__CKAutoloopMovieBalloonView_setIsMuted___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__CKAutoloopMovieBalloonView_setIsMuted___block_invoke_3;
  v4[3] = &unk_1E72EBA18;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CKAutoloopMovieBalloonView_setIsMuted___block_invoke_4;
  v3[3] = &unk_1E72EB9C8;
  v3[4] = *(a1 + 40);
  [v2 animateWithDuration:v4 animations:v3 completion:0.3];
}

- (BOOL)_thermalStateAcceptableForLooping
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 thermalState];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134218240;
      v7 = v3;
      v8 = 1024;
      v9 = v3 < 2;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "thermalState: %ld is acceptable: %{BOOL}d.", &v6, 0x12u);
    }
  }

  return v3 < 2;
}

- (void)_thermalStateDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CKAutoloopMovieBalloonView__thermalStateDidChange___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __53__CKAutoloopMovieBalloonView__thermalStateDidChange___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [MEMORY[0x1E696AE30] processInfo];
      v4 = [v3 thermalState];
      v5 = [*(a1 + 32) _thermalStateAcceptableForLooping];
      v6 = @"NO";
      if (v5)
      {
        v6 = @"YES";
      }

      v8 = 134218242;
      v9 = v4;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Thermal state changed to %lu, setting loop playback to paused:%@", &v8, 0x16u);
    }
  }

  return [*(a1 + 32) prepareForDisplay];
}

- (void)_removeSnapshot
{
  v3 = [(CKAutoloopMovieBalloonView *)self snapshotView];
  [v3 removeFromSuperview];

  [(CKAutoloopMovieBalloonView *)self setSnapshotView:0];
}

- (BOOL)_shouldAutoPlay
{
  if (self->_mediaObject)
  {
    v3 = [(CKAutoloopMovieBalloonView *)self mediaObject];
    v4 = [v3 messageContext];
    v5 = [v4 isSenderUnknown];

    if (v5)
    {
      v6 = IMOSLoggingEnabled();
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v22 = 0;
          v8 = "_shouldAutoPlay: NO because media object of view has context with unknown sender.";
          v9 = &v22;
LABEL_17:
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      return v6;
    }

    v10 = [(CKAutoloopMovieBalloonView *)self window];

    if (!v10)
    {
      v6 = IMOSLoggingEnabled();
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v8 = "_shouldAutoPlay: NO because view is not in a window.";
          v9 = buf;
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      return v6;
    }

    v11 = [(CKAutoloopMovieBalloonView *)self mediaObject];
    v12 = [v11 messageContext];
    v13 = [v12 isSenderUnauthenticated];

    v14 = IMOSLoggingEnabled();
    if (v13)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v20 = 0;
          v16 = "_shouldAutoPlay: NO because media object of view has context with unauthenticated sender.";
          v17 = &v20;
LABEL_22:
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, v16, v17, 2u);
          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    else if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v19 = 0;
        v16 = "_shouldAutoPlay: YES because everything seems to be fine.";
        v17 = &v19;
        goto LABEL_22;
      }

LABEL_23:
    }

    LOBYTE(v6) = v13 ^ 1;
    return v6;
  }

  v6 = IMOSLoggingEnabled();
  if (v6)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v23 = 0;
      v8 = "_shouldAutoPlay: NO because view has no media object at all.";
      v9 = &v23;
      goto LABEL_17;
    }

LABEL_18:

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_shouldPauseInitialLooping
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 stringForKey:@"DisableLoopingFilenameKey"];

  if (v4)
  {
    v5 = [(CKAutoloopMovieBalloonView *)self mediaObject];
    v6 = [v5 fileURL];
    v7 = [v6 lastPathComponent];

    if (kInitialAutoloopWasSuppressed)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v7 isEqualToString:v4];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_shouldPresentQuickLookOnTap
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DisableAutoloopTapToQuicklookKey"];

  return v3 ^ 1;
}

- (void)setContentAlpha:(double)a3
{
  v5 = [(CKAutoloopMovieBalloonView *)self videoPlayer];
  [v5 setAlpha:a3];

  v6 = [(CKAutoloopMovieBalloonView *)self snapshotView];
  [v6 setAlpha:a3];

  v7 = [(CKAutoloopMovieBalloonView *)self muteButton];
  [v7 setAlpha:a3];
}

- (void)avPlayer:(id)a3 itemDidPlayToEnd:(id)a4
{
  if ([(CKAutoloopMovieBalloonView *)self isMultitrackMemoriesVideo:a3])
  {

    [(CKAutoloopMovieBalloonView *)self setIsPlayingMultitrackMemory:0];
  }

  else if (![(CKAutoloopMovieBalloonView *)self isMuted])
  {

    [(CKAutoloopMovieBalloonView *)self setIsMuted:1];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if ((v6 & 2) != 0 && playerObservationContext == a5)
  {
    v19 = v8;
    v9 = [(CKAutoloopMovieBalloonView *)self _shouldAutoPlay];
    v8 = v19;
    if (v9)
    {
      v10 = [(CKAutoloopMovieBalloonView *)self _shouldPauseInitialLooping];
      v8 = v19;
      if (!v10)
      {
        v11 = [(CKAutoloopMovieBalloonView *)self _thermalStateAcceptableForLooping];
        v8 = v19;
        if (v11)
        {
          v12 = [(CKAutoloopMovieBalloonView *)self _applicationStateAcceptableForLooping];
          v8 = v19;
          if (v12)
          {
            v13 = [(CKAutoloopMovieBalloonView *)self isMultitrackMemoriesVideo];
            v8 = v19;
            if (!v13)
            {
              v14 = [(CKAutoloopMovieBalloonView *)self avPlayer];
              [v14 rate];
              v16 = v15;

              v8 = v19;
              if (v16 == 0.0)
              {
                v17 = [(CKAutoloopMovieBalloonView *)self avPlayer];
                LODWORD(v18) = 1.0;
                [v17 setRate:v18];

                v8 = v19;
              }
            }
          }
        }
      }
    }
  }
}

- (void)previewDidChange:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    v8 = [(CKMediaObject *)self->_mediaObject transferGUID];
    v9 = [v7 transferGUID];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [(CKMediaObject *)self->_mediaObject transferGUID];
          v15 = 138412546;
          v16 = v7;
          v17 = 2112;
          v18 = v12;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Got updated preview %@ for %@", &v15, 0x16u);
        }
      }

      mediaObject = self->_mediaObject;
      v14 = +[CKUIBehavior sharedBehaviors];
      [v14 previewMaxWidth];
      [(CKImageBalloonView *)self configureForMediaObject:mediaObject previewWidth:1 orientation:?];
    }
  }
}

@end