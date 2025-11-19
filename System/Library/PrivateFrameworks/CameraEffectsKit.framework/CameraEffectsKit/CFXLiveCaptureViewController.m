@interface CFXLiveCaptureViewController
+ (id)instantiate;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentRenderPresentationTime;
- ($F24F406B2B787EFB06265DBA3D28CBD5)normalizedMinimumHitTestArea;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isCapturing;
- (BOOL)livePlayerIsSaturated;
- (CFXLiveCaptureViewController)initWithCoder:(id)a3;
- (CFXLiveCaptureViewControllerDelegate)delegate;
- (CGPoint)locationInCaptureViewForGestureRecognizer:(id)a3;
- (JFXAnimojiTrackingLossDelegate)trackingLossDelegate;
- (JFXImageView)renderImageView;
- (JTImage)renderedImage;
- (UIColor)animojiBackgroundColor;
- (UIView)debugControlsView;
- (UIView)uncroppedCameraViewfinderPlaceholderView;
- (void)CFX_createUncroppedCameraPlaceholderViewIfNecessary;
- (void)CFX_executeRenderCallbacksQueuedBeforeTime:(id *)a3;
- (void)CFX_installGestures;
- (void)CFX_livePreviewDoubleTapped:(id)a3;
- (void)CFX_livePreviewPanned:(id)a3;
- (void)CFX_livePreviewPinched:(id)a3;
- (void)CFX_livePreviewRotated:(id)a3;
- (void)CFX_livePreviewTapped:(id)a3;
- (void)CFX_setAnimationEnabledForOverlays:(BOOL)a3;
- (void)CFX_setupVideoWriterWithAudio:(BOOL)a3 completion:(id)a4;
- (void)CFX_tearDownVideoWriter:(id)a3;
- (void)capturePhotoWithFlashMode:(int64_t)a3 completion:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)executeAfterNextFrameIsRendered:(id)a3;
- (void)flushRenderer;
- (void)pauseRenderingCameraFrames;
- (void)processAudioSample:(opaqueCMSampleBuffer *)a3;
- (void)removeAllEffects:(id)a3;
- (void)removeAllEffectsOfType:(id)a3 completion:(id)a4;
- (void)renderVideoFrame:(id)a3;
- (void)renderer:(id)a3 didPrepareToRenderFrameAtPresentationTime:(id *)a4;
- (void)renderer:(id)a3 didRenderFrame:(id)a4;
- (void)resumeRenderingCameraFrames;
- (void)setAnimojiBackgroundColor:(id)a3;
- (void)setCurrentRenderPresentationTime_renderImageQ:(id *)a3;
- (void)setUseLocalCameraViewfinder:(BOOL)a3;
- (void)startButtonTouchUpInside:(id)a3;
- (void)startRenderingCameraFrames;
- (void)startVideoRecordingWithFlashMode:(int64_t)a3;
- (void)stopButtonTouchUpInside:(id)a3;
- (void)stopRenderingCameraFrames:(id)a3;
- (void)stopVideoRecording:(id)a3;
- (void)toggleDebugControlsView:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willDropCameraFrame;
@end

@implementation CFXLiveCaptureViewController

- (CFXLiveCaptureViewController)initWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = CFXLiveCaptureViewController;
  v3 = [(CFXLiveCaptureViewController *)&v19 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v3->_useLocalCameraViewfinder = 1;
    v5 = JFXCreateDispatchQueue(v3, @"rendererQ", 0);
    renderQ = v4->_renderQ;
    v4->_renderQ = v5;

    v7 = JFXCreateDispatchQueue(v4, @"recordingQ", 0);
    recordingQ = v4->_recordingQ;
    v4->_recordingQ = v7;

    v9 = JFXCreateDispatchQueue(v4, @"renderImageQ", 0);
    renderImageQ = v4->_renderImageQ;
    v4->_renderImageQ = v9;

    v11 = objc_opt_new();
    composition = v4->_composition;
    v4->_composition = v11;

    v13 = objc_opt_new();
    renderFrameCompletionBlocks = v4->_renderFrameCompletionBlocks;
    v4->_renderFrameCompletionBlocks = v13;

    v15 = CACurrentMediaTime();
    CMTimeMakeWithSeconds(&v18, v15, 1000000000);
    v16 = *&v18.value;
    v4->_currentRenderPresentationTime_renderImageQ.epoch = v18.epoch;
    *&v4->_currentRenderPresentationTime_renderImageQ.value = v16;
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CFXLiveCaptureViewController;
  [(CFXLiveCaptureViewController *)&v3 viewDidLoad];
  [(CFXLiveCaptureViewController *)self CFX_installGestures];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CFXLiveCaptureViewController;
  [(CFXLiveCaptureViewController *)&v5 viewWillAppear:a3];
  v4 = [(CFXLiveCaptureViewController *)self debugControlsView];
  [v4 removeFromSuperview];

  [(CFXLiveCaptureViewController *)self setDebugControlsView:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CFXLiveCaptureViewController;
  [(CFXLiveCaptureViewController *)&v4 viewWillDisappear:a3];
  if (!isStreamingMode([(CFXLiveCaptureViewController *)self captureMode]))
  {
    [(CFXLiveCaptureViewController *)self stopRenderingCameraFrames];
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = CFXLiveCaptureViewController;
  [(CFXLiveCaptureViewController *)&v2 didReceiveMemoryWarning];
}

- (BOOL)livePlayerIsSaturated
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CFXLiveCaptureViewController *)self renderQ];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__CFXLiveCaptureViewController_livePlayerIsSaturated__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __53__CFXLiveCaptureViewController_livePlayerIsSaturated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) renderer_renderQ];
  *(*(*(a1 + 40) + 8) + 24) = [v2 livePlayerIsSaturated];
}

- (void)willDropCameraFrame
{
  v3 = [(CFXLiveCaptureViewController *)self renderQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CFXLiveCaptureViewController_willDropCameraFrame__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v3, block);
}

void __51__CFXLiveCaptureViewController_willDropCameraFrame__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) renderer_renderQ];
  [v1 willDropCameraFrame];
}

- (void)setUseLocalCameraViewfinder:(BOOL)a3
{
  if (self->_useLocalCameraViewfinder != a3)
  {
    v3 = a3;
    v5 = [(CFXLiveCaptureViewController *)self renderImageView];
    [v5 setHidden:!v3];

    self->_useLocalCameraViewfinder = v3;
  }
}

- (UIView)uncroppedCameraViewfinderPlaceholderView
{
  [(CFXLiveCaptureViewController *)self CFX_createUncroppedCameraPlaceholderViewIfNecessary];
  v3 = [(CFXLiveCaptureViewController *)self uncroppedRenderImagePlaceHolderView];

  if (v3)
  {
    [(CFXLiveCaptureViewController *)self uncroppedRenderImagePlaceHolderView];
  }

  else
  {
    [(CFXLiveCaptureViewController *)self renderImageView];
  }
  v4 = ;

  return v4;
}

- (void)CFX_createUncroppedCameraPlaceholderViewIfNecessary
{
  v28 = [MEMORY[0x277D75418] currentDevice];
  if ([v28 userInterfaceIdiom])
  {
    v3 = [(CFXLiveCaptureViewController *)self captureMode];

    if (v3 == 1)
    {
      return;
    }

    v4 = [(CFXLiveCaptureViewController *)self uncroppedRenderImagePlaceHolderView];

    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75D18]);
      [(CFXLiveCaptureViewController *)self setUncroppedRenderImagePlaceHolderView:v5];

      v6 = [(CFXLiveCaptureViewController *)self uncroppedRenderImagePlaceHolderView];
      [v6 setUserInteractionEnabled:0];

      v7 = [(CFXLiveCaptureViewController *)self uncroppedRenderImagePlaceHolderView];
      [v7 setHidden:1];

      v8 = [(CFXLiveCaptureViewController *)self view];
      v9 = [(CFXLiveCaptureViewController *)self uncroppedRenderImagePlaceHolderView];
      [v8 insertSubview:v9 atIndex:0];
    }

    v10 = +[CFXMediaSettings sharedInstance];
    [v10 renderSize];
    v12 = v11;
    v14 = v13;

    v15 = [(CFXLiveCaptureViewController *)self renderImageView];
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    if (v12 != *MEMORY[0x277CBF3A8] || v14 != *(MEMORY[0x277CBF3A8] + 8))
    {
      v17 = CGRectFillRectToAspectInRect(v17, v19, v21, v23, 0.0, 0.0, v12, v14);
      v19 = v25;
      v21 = v26;
      v23 = v27;
    }

    v28 = [(CFXLiveCaptureViewController *)self uncroppedRenderImagePlaceHolderView];
    [v28 setFrame:{v17, v19, v21, v23}];
  }
}

- (void)startButtonTouchUpInside:(id)a3
{
  v3 = +[JFXVideoCameraController sharedInstance];
  [v3 startCameraSession:&__block_literal_global_5];
}

- (void)stopButtonTouchUpInside:(id)a3
{
  v3 = +[JFXVideoCameraController sharedInstance];
  [v3 stopCameraSession:0];
}

- (void)toggleDebugControlsView:(id)a3
{
  v4 = [(CFXLiveCaptureViewController *)self debugControlsView];
  v5 = [v4 isHidden];

  v6 = [(CFXLiveCaptureViewController *)self debugControlsView];
  [v6 setHidden:v5 ^ 1u];
}

- (JTImage)renderedImage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = [(CFXLiveCaptureViewController *)self renderImageQ];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__CFXLiveCaptureViewController_renderedImage__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __45__CFXLiveCaptureViewController_renderedImage__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) renderedImage_renderImageQ];

  return MEMORY[0x2821F96F8]();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentRenderPresentationTime
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3810000000;
  v11 = "";
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = [(CFXLiveCaptureViewController *)self renderImageQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CFXLiveCaptureViewController_currentRenderPresentationTime__block_invoke;
  block[3] = &unk_278D79C60;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(v5, block);

  *retstr = *(v9 + 4);
  _Block_object_dispose(&v8, 8);
  return result;
}

double __61__CFXLiveCaptureViewController_currentRenderPresentationTime__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 currentRenderPresentationTime_renderImageQ];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0;
  }

  v3 = *(*(a1 + 40) + 8);
  result = *&v5;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  return result;
}

- (void)renderer:(id)a3 didPrepareToRenderFrameAtPresentationTime:(id *)a4
{
  v6 = [(CFXLiveCaptureViewController *)self renderImageQ];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__CFXLiveCaptureViewController_renderer_didPrepareToRenderFrameAtPresentationTime___block_invoke;
  v7[3] = &unk_278D7A078;
  v7[4] = self;
  v8 = *a4;
  dispatch_sync(v6, v7);
}

uint64_t __83__CFXLiveCaptureViewController_renderer_didPrepareToRenderFrameAtPresentationTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  return [*(a1 + 32) setCurrentRenderPresentationTime_renderImageQ:&v2];
}

- (void)renderer:(id)a3 didRenderFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CFXLiveCaptureViewController *)self delegate];
  [v8 liveCaptureViewController:self didRenderFrame:v7];

  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__CFXLiveCaptureViewController_renderer_didRenderFrame___block_invoke;
  v27[3] = &unk_278D7A0A0;
  objc_copyWeak(&v28, &location);
  v9 = MEMORY[0x245D22230](v27);
  v25 = 0uLL;
  v26 = 0;
  if (v7)
  {
    [v7 timestamp];
  }

  if ([(CFXLiveCaptureViewController *)self useLocalCameraViewfinder])
  {
    v10 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:{objc_msgSend(v7, "pixelBuffer")}];
    v11 = [[JTImage alloc] initWithPVImage:v10];
    v12 = [(CFXLiveCaptureViewController *)self renderImageQ];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CFXLiveCaptureViewController_renderer_didRenderFrame___block_invoke_2;
    block[3] = &unk_278D79C88;
    block[4] = self;
    v24 = v11;
    v13 = v11;
    dispatch_sync(v12, block);

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__CFXLiveCaptureViewController_renderer_didRenderFrame___block_invoke_3;
    v19[3] = &unk_278D7A0C8;
    v19[4] = self;
    v20 = v9;
    v21 = v25;
    v22 = v26;
    v14 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v19);
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__CFXLiveCaptureViewController_renderer_didRenderFrame___block_invoke_4;
    v15[3] = &unk_278D7A0F0;
    v16 = v9;
    v17 = v25;
    v18 = v26;
    v10 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v15);
    v13 = v16;
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __56__CFXLiveCaptureViewController_renderer_didRenderFrame___block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained CFX_executeRenderCallbacksQueuedBeforeTime:&v4];
}

void __56__CFXLiveCaptureViewController_renderer_didRenderFrame___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) renderedImage];
  v3 = [*(a1 + 32) renderImageView];
  [v3 setJtImage:v2];

  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v5(v4, &v7, v6);
}

uint64_t __56__CFXLiveCaptureViewController_renderer_didRenderFrame___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return v2(v1, &v4);
}

- (void)renderVideoFrame:(id)a3
{
  v4 = a3;
  v5 = [(CFXLiveCaptureViewController *)self recordingQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CFXLiveCaptureViewController_renderVideoFrame___block_invoke;
  block[3] = &unk_278D79C88;
  block[4] = self;
  v13 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  v7 = [[CFXFrame alloc] initWithFrameSet:v6];
  v8 = [(CFXLiveCaptureViewController *)self renderQ];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__CFXLiveCaptureViewController_renderVideoFrame___block_invoke_2;
  v10[3] = &unk_278D79C88;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, v10);
}

void __49__CFXLiveCaptureViewController_renderVideoFrame___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCapturingVideo_recordingQ])
  {
    v2 = [*(a1 + 32) videoWriter];
    [v2 writeCameraFrameSet:*(a1 + 40)];
  }
}

void __49__CFXLiveCaptureViewController_renderVideoFrame___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) renderer_renderQ];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) composition];
  [v4 renderFrame:v2 effectComposition:v3];
}

- (void)processAudioSample:(opaqueCMSampleBuffer *)a3
{
  CFRetain(a3);
  v5 = [(CFXLiveCaptureViewController *)self recordingQ];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CFXLiveCaptureViewController_processAudioSample___block_invoke;
  v6[3] = &unk_278D7A118;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __51__CFXLiveCaptureViewController_processAudioSample___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCapturingVideo_recordingQ])
  {
    v2 = [*(a1 + 32) videoWriter];
    [v2 writeAudioBuffer:*(a1 + 40)];
  }

  v3 = *(a1 + 40);

  CFRelease(v3);
}

+ (id)instantiate
{
  v2 = [MEMORY[0x277CCA8D8] jfxBundle];
  v3 = [MEMORY[0x277D75AC8] storyboardWithName:@"CFXLiveCapture" bundle:v2];
  v4 = [v3 instantiateViewControllerWithIdentifier:@"CFXLiveCaptureViewController"];

  return v4;
}

- (UIColor)animojiBackgroundColor
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  v3 = [(CFXLiveCaptureViewController *)self renderQ];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CFXLiveCaptureViewController_animojiBackgroundColor__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__CFXLiveCaptureViewController_animojiBackgroundColor__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) renderer_renderQ];
  v2 = [v5 animojiBackgroundColor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setAnimojiBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(CFXLiveCaptureViewController *)self renderQ];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CFXLiveCaptureViewController_setAnimojiBackgroundColor___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __58__CFXLiveCaptureViewController_setAnimojiBackgroundColor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) renderer_renderQ];
  [v2 setAnimojiBackgroundColor:v1];
}

- (void)executeAfterNextFrameIsRendered:(id)a3
{
  memset(&v13, 0, sizeof(v13));
  v4 = a3;
  v5 = +[CFXMediaSettings sharedInstance];
  CMTimeMake(&v13, 1, [v5 frameRate]);

  memset(&v12, 0, sizeof(v12));
  [(CFXLiveCaptureViewController *)self currentRenderPresentationTime];
  memset(&v11, 0, sizeof(v11));
  lhs = v12;
  v9 = v13;
  CMTimeAdd(&v11, &lhs, &v9);
  v6 = [CFXNextRenderedFrameCallback alloc];
  lhs = v11;
  v7 = [(CFXNextRenderedFrameCallback *)v6 initWithBlock:v4 sendAfterRenderTime:&lhs];

  v8 = [(CFXLiveCaptureViewController *)self renderFrameCompletionBlocks];
  [v8 addObject:v7];
}

- (void)startRenderingCameraFrames
{
  [(CFXLiveCaptureViewController *)self loadViewIfNeeded];
  v3 = [(CFXLiveCaptureViewController *)self renderQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CFXLiveCaptureViewController_startRenderingCameraFrames__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__CFXLiveCaptureViewController_startRenderingCameraFrames__block_invoke(uint64_t a1)
{
  v2 = -[CFXRenderer initWithDelegate:captureMode:]([CFXRenderer alloc], "initWithDelegate:captureMode:", *(a1 + 32), [*(a1 + 32) captureMode]);
  [*(a1 + 32) setRenderer_renderQ:v2];

  v3 = [*(a1 + 32) trackingLossDelegate];
  v4 = [*(a1 + 32) renderer_renderQ];
  [v4 setTrackingLossDelegate:v3];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [*(a1 + 32) renderer_renderQ];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v15 = [v5 stringWithFormat:@"%@/%@", v7, v10];

  v11 = [*(a1 + 32) renderer_renderQ];
  v12 = [v11 fpsCalc];
  [v12 setName:v15];

  v13 = +[JFXVideoCameraController sharedInstance];
  [v13 addVideoRenderDelegate:*(a1 + 32)];

  v14 = +[JFXVideoCameraController sharedInstance];
  [v14 addAudioRenderDelegate:*(a1 + 32)];
}

- (void)stopRenderingCameraFrames:(id)a3
{
  v4 = a3;
  v5 = [(CFXLiveCaptureViewController *)self renderQ];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__CFXLiveCaptureViewController_stopRenderingCameraFrames___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __58__CFXLiveCaptureViewController_stopRenderingCameraFrames___block_invoke(uint64_t a1)
{
  v2 = +[JFXVideoCameraController sharedInstance];
  [v2 removeVideoRenderDelegate:*(a1 + 32) async:0];

  v3 = +[JFXVideoCameraController sharedInstance];
  [v3 removeAudioRenderDelegate:*(a1 + 32) async:0];

  [*(a1 + 32) setRenderer_renderQ:0];
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)pauseRenderingCameraFrames
{
  v3 = [(CFXLiveCaptureViewController *)self renderQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CFXLiveCaptureViewController_pauseRenderingCameraFrames__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v3, block);
}

void __58__CFXLiveCaptureViewController_pauseRenderingCameraFrames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) renderer_renderQ];
  [v1 pause];
}

- (void)resumeRenderingCameraFrames
{
  v3 = [(CFXLiveCaptureViewController *)self renderQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CFXLiveCaptureViewController_resumeRenderingCameraFrames__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v3, block);
}

void __59__CFXLiveCaptureViewController_resumeRenderingCameraFrames__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) renderer_renderQ];
  [v1 resume];
}

- (void)flushRenderer
{
  v3 = [(CFXLiveCaptureViewController *)self renderQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CFXLiveCaptureViewController_flushRenderer__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v3, block);
}

void __45__CFXLiveCaptureViewController_flushRenderer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) renderer_renderQ];
  [v1 flush];
}

- (void)removeAllEffectsOfType:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__CFXLiveCaptureViewController_removeAllEffectsOfType_completion___block_invoke;
  v17[3] = &unk_278D7A168;
  v8 = v7;
  v18 = v8;
  v9 = MEMORY[0x245D22230](v17);
  v10 = [(CFXLiveCaptureViewController *)self composition];
  v11 = [v10 hasEffectOfType:v6];

  if (v11)
  {
    v12 = [(CFXLiveCaptureViewController *)self composition];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__CFXLiveCaptureViewController_removeAllEffectsOfType_completion___block_invoke_2;
    v13[3] = &unk_278D7A190;
    v14 = v6;
    v15 = self;
    v16 = v9;
    [v12 removeAllEffectsOfType:v14 completion:v13];
  }

  else
  {
    v9[2](v9);
  }
}

void __66__CFXLiveCaptureViewController_removeAllEffectsOfType_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    dispatch_async(MEMORY[0x277D85CD0], *(a1 + 32));
  }
}

void __66__CFXLiveCaptureViewController_removeAllEffectsOfType_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 isEqualToString:@"Animoji"];

  if (v3)
  {
    v4 = [*(a1 + 40) renderQ];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__CFXLiveCaptureViewController_removeAllEffectsOfType_completion___block_invoke_3;
    v7[3] = &unk_278D7A140;
    v5 = *(a1 + 48);
    v7[4] = *(a1 + 40);
    v8 = v5;
    dispatch_async(v4, v7);
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

uint64_t __66__CFXLiveCaptureViewController_removeAllEffectsOfType_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) renderer_renderQ];
  v3 = [v2 animojiRenderer];
  [v3 clear];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)removeAllEffects:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__CFXLiveCaptureViewController_removeAllEffects___block_invoke;
  v11[3] = &unk_278D7A168;
  v12 = v4;
  v5 = v4;
  v6 = MEMORY[0x245D22230](v11);
  v7 = [(CFXLiveCaptureViewController *)self composition];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CFXLiveCaptureViewController_removeAllEffects___block_invoke_2;
  v9[3] = &unk_278D7A140;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 removeAllEffects:v9];
}

void __49__CFXLiveCaptureViewController_removeAllEffects___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    dispatch_async(MEMORY[0x277D85CD0], *(a1 + 32));
  }
}

void __49__CFXLiveCaptureViewController_removeAllEffects___block_invoke_2(uint64_t a1)
{
  v2 = +[JFXVideoCameraController sharedInstance];
  [v2 clear];

  v3 = [*(a1 + 32) renderQ];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CFXLiveCaptureViewController_removeAllEffects___block_invoke_3;
  v5[3] = &unk_278D7A140;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

uint64_t __49__CFXLiveCaptureViewController_removeAllEffects___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) renderer_renderQ];
  v3 = [v2 animojiRenderer];
  [v3 clear];

  v4 = [*(a1 + 32) renderer_renderQ];
  [v4 resetMetadataValidation];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (BOOL)isCapturing
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CFXLiveCaptureViewController *)self recordingQ];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__CFXLiveCaptureViewController_isCapturing__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __43__CFXLiveCaptureViewController_isCapturing__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCapturingVideo_recordingQ])
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCapturingPhoto_recordingQ];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)startVideoRecordingWithFlashMode:(int64_t)a3
{
  v4 = [(CFXLiveCaptureViewController *)self thermalPolicyManager];
  [v4 setRecordingPolicy:1];

  [(CFXLiveCaptureViewController *)self CFX_setupVideoWriterWithAudio:1 completion:0];

  [(CFXLiveCaptureViewController *)self CFX_setAnimationEnabledForOverlays:1];
}

- (void)stopVideoRecording:(id)a3
{
  v4 = a3;
  [(CFXLiveCaptureViewController *)self CFX_setAnimationEnabledForOverlays:0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CFXLiveCaptureViewController_stopVideoRecording___block_invoke;
  v6[3] = &unk_278D7A1B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CFXLiveCaptureViewController *)self CFX_tearDownVideoWriter:v6];
}

void __51__CFXLiveCaptureViewController_stopVideoRecording___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) thermalPolicyManager];
  [v6 setRecordingPolicy:0];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (void)capturePhotoWithFlashMode:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(CFXLiveCaptureViewController *)self recordingQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v7, block);

  v8 = +[JFXVideoCameraController sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_2;
  v10[3] = &unk_278D7A2A8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 capturePhotoWithFlash:a3 completion:v10];
}

void __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_3;
  v34[3] = &unk_278D7A208;
  v10 = *(a1 + 40);
  v34[4] = *(a1 + 32);
  v35 = v10;
  v11 = MEMORY[0x245D22230](v34);
  v12 = v11;
  if (v9)
  {
    (*(v11 + 16))(v11, 0, 0, v9);
  }

  else
  {
    v13 = [v8 metadataDict];
    v14 = [v13 objectForKeyedSubscript:@"PVFrameSetMetadataARMetadataKey"];

    if (v14)
    {
      v15 = [*(a1 + 32) composition];
      v16 = [v15 jtEffectsForType:7];

      if ([v16 count])
      {
        v28 = 0;
        v29 = &v28;
        v30 = 0x3032000000;
        v31 = __Block_byref_object_copy__3;
        v32 = __Block_byref_object_dispose__3;
        v33 = 0;
        v17 = [*(a1 + 32) renderQ];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_6;
        block[3] = &unk_278D7A230;
        v18 = *(a1 + 32);
        v27 = &v28;
        block[4] = v18;
        v19 = v14;
        v26 = v19;
        dispatch_sync(v17, block);

        [v19 setAnimojiPhysicsBlendShapes:v29[5]];
        _Block_object_dispose(&v28, 8);
      }

      v20 = *(a1 + 32);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_7;
      v21[3] = &unk_278D7A280;
      v21[4] = v20;
      v22 = v8;
      v24 = v12;
      v23 = v7;
      [v20 CFX_setupVideoWriterWithAudio:0 completion:v21];
    }

    else
    {
      (v12)[2](v12, v7, 0, 0);
    }
  }
}

void __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_4;
  block[3] = &unk_278D7A1E0;
  v10 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v11 = *(a1 + 32);
  v20 = v9;
  v21 = v11;
  v22 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v15 = [*(a1 + 32) recordingQ];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_5;
  v16[3] = &unk_278D79D20;
  v16[4] = *(a1 + 32);
  dispatch_async(v15, v16);
}

uint64_t __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = *(a1 + 56);

  return [v2 stopRenderingCameraFrames];
}

void __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_6(uint64_t a1)
{
  v9 = [*(a1 + 32) renderer_renderQ];
  v2 = [v9 animojiRenderer];
  v3 = [*(a1 + 40) arFrame];
  v4 = +[JFXOrientationMonitor interfaceOrientation];
  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [v2 preRecordedBlendShapesForFrame:v3 captureOrientation:4 interfaceOrientation:v4 backgroundColor:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setIsCapturingVideo_recordingQ:0];
  v2 = [*(a1 + 32) videoWriter];
  [v2 writeCameraFrameSet:*(a1 + 40)];

  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__CFXLiveCaptureViewController_capturePhotoWithFlashMode_completion___block_invoke_8;
  v4[3] = &unk_278D7A258;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v3 CFX_tearDownVideoWriter:v4];
}

- (void)CFX_setupVideoWriterWithAudio:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = dispatch_group_create();
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__3;
  v32[4] = __Block_byref_object_dispose__3;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__3;
  v30[4] = __Block_byref_object_dispose__3;
  v31 = 0;
  dispatch_group_enter(v7);
  v8 = +[JFXVideoCameraController sharedInstance];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__CFXLiveCaptureViewController_CFX_setupVideoWriterWithAudio_completion___block_invoke;
  v26[3] = &unk_278D7A2D0;
  v28 = v32;
  v29 = v30;
  v9 = v7;
  v27 = v9;
  [v8 videoAndAudioOutputSettings:v26];

  dispatch_group_enter(v9);
  v10 = +[JFXVideoCameraController sharedInstance];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__CFXLiveCaptureViewController_CFX_setupVideoWriterWithAudio_completion___block_invoke_2;
  v24[3] = &unk_278D79D20;
  v11 = v9;
  v25 = v11;
  [v10 enableRecordingMovieMode:1 completion:v24];

  v23 = 0;
  v12 = [JFXMediaURLManager videoRecordingFolderURL:&v23];
  v13 = v23;
  v14 = [(CFXLiveCaptureViewController *)self recordingQ];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CFXLiveCaptureViewController_CFX_setupVideoWriterWithAudio_completion___block_invoke_3;
  block[3] = &unk_278D7A2F8;
  block[4] = self;
  v18 = v12;
  v22 = a3;
  v20 = v32;
  v21 = v30;
  v19 = v6;
  v15 = v6;
  v16 = v12;
  dispatch_group_notify(v11, v14, block);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);
}

void __73__CFXLiveCaptureViewController_CFX_setupVideoWriterWithAudio_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void __73__CFXLiveCaptureViewController_CFX_setupVideoWriterWithAudio_completion___block_invoke_3(uint64_t a1)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v2 = [JFXVideoWriter alloc];
  if (*(a1 + 72) == 1)
  {
    v3 = *(*(*(a1 + 64) + 8) + 40);
  }

  else
  {
    v3 = 0;
  }

  v4 = [(JFXVideoWriter *)v2 initWithFolderURL:*(a1 + 40) videoOutputSettings:*(*(*(a1 + 56) + 8) + 40) audioOutputSettings:v3 audioFormatHint:0];
  [*(a1 + 32) setVideoWriter:v4];

  v5 = [MEMORY[0x277D75418] currentDevice];
  if ([v5 jfx_hasDepthCapableCamera])
  {
    v6 = +[JFXVideoCameraController sharedInstance];
    v7 = [v6 depthEnabled];

    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = +[JFXVideoCameraController sharedInstance];
    v9 = [v8 depthDimensions];
    v10 = [*(a1 + 32) videoWriter];
    [v10 setDepthDimensions:v9];

    v5 = [*(a1 + 32) videoWriter];
    [v5 setStoreDepthDataAsVideoTrack:1];
  }

LABEL_8:
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v11 = +[JFXVideoCameraController sharedInstance];
  v12 = [v11 cameraPosition];
  v13 = +[JFXVideoCameraController sharedInstance];
  +[JFXRotationTransforms transformFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:](JFXRotationTransforms, "transformFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:", v12, [v13 captureVideoOrientation], +[JFXOrientationMonitor deviceInterfaceOrientation](JFXOrientationMonitor, "deviceInterfaceOrientation"));

  v14 = [*(a1 + 32) composition];
  v15 = [v14 jtEffectsForType:7];

  if ([v15 count])
  {
    v16 = [v15 firstObject];
    v38[0] = @"JFXAnimojiEffectDataRepresentationKey";
    v17 = [v16 dataRepresentation];
    v39[0] = v17;
    v38[1] = @"JFXAnimojiEffectAvatarVersionNumberKey";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "avatarVersionNumber")}];
    v39[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

    v32 = 0;
    v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v32];
    v21 = v32;
    v22 = [*(a1 + 32) videoWriter];
    [v22 setAnimojiMetadata:v20];
  }

  v23 = [*(a1 + 32) videoWriter];
  v31 = 0;
  *buf = v33;
  *&buf[16] = v34;
  v37 = v35;
  v24 = [v23 startWriterWithVideoTransform:buf error:&v31];
  v25 = v31;

  if (!v24 || v25)
  {
    v26 = JFXLog_writer();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(*(*(a1 + 56) + 8) + 40);
      if (*(a1 + 72) == 1)
      {
        v30 = *(*(*(a1 + 64) + 8) + 40);
      }

      else
      {
        v30 = 0;
      }

      *buf = 138412802;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      *&buf[22] = 2112;
      *&buf[24] = v30;
      _os_log_debug_impl(&dword_242A3B000, v26, OS_LOG_TYPE_DEBUG, "error starting video writer: %@\n\tvideo settings: %@\n\taudio settings: %@", buf, 0x20u);
    }

    [*(a1 + 32) setVideoWriter:0];
  }

  v27 = [*(a1 + 32) videoWriter];
  [*(a1 + 32) setIsCapturingVideo_recordingQ:v27 != 0];

  v28 = *(a1 + 48);
  if (v28)
  {
    (*(v28 + 16))();
  }
}

- (void)CFX_tearDownVideoWriter:(id)a3
{
  v4 = a3;
  v5 = [(CFXLiveCaptureViewController *)self recordingQ];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CFXLiveCaptureViewController_CFX_tearDownVideoWriter___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__CFXLiveCaptureViewController_CFX_tearDownVideoWriter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) videoWriter];
  [*(a1 + 32) setVideoWriter:0];
  [*(a1 + 32) setIsCapturingVideo_recordingQ:0];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__CFXLiveCaptureViewController_CFX_tearDownVideoWriter___block_invoke_2;
  v3[3] = &unk_278D7A348;
  v4 = *(a1 + 40);
  [v2 finishWritingWithCompletionHandler:v3];
}

void __56__CFXLiveCaptureViewController_CFX_tearDownVideoWriter___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[JFXVideoCameraController sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__CFXLiveCaptureViewController_CFX_tearDownVideoWriter___block_invoke_3;
  v11[3] = &unk_278D7A320;
  v8 = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 enableRecordingMovieMode:0 completion:v11];
}

- (void)CFX_installGestures
{
  v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_CFX_livePreviewTapped_];
  [v12 setDelegate:self];
  [v12 setNumberOfTapsRequired:1];
  v3 = [(CFXLiveCaptureViewController *)self containerView];
  [v3 addGestureRecognizer:v12];

  v4 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_CFX_livePreviewPanned_];
  [v4 setDelegate:self];
  [v4 setMinimumNumberOfTouches:1];
  v5 = [(CFXLiveCaptureViewController *)self containerView];
  [v5 addGestureRecognizer:v4];

  v6 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_CFX_livePreviewPinched_];
  [v6 setDelegate:self];
  [v6 setScale:1.0];
  v7 = [(CFXLiveCaptureViewController *)self containerView];
  [v7 addGestureRecognizer:v6];

  v8 = [objc_alloc(MEMORY[0x277D75938]) initWithTarget:self action:sel_CFX_livePreviewRotated_];
  [v8 setDelegate:self];
  v9 = [(CFXLiveCaptureViewController *)self containerView];
  [v9 addGestureRecognizer:v8];

  v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_CFX_livePreviewDoubleTapped_];
  [v10 setDelegate:self];
  [v10 setNumberOfTapsRequired:2];
  v11 = [(CFXLiveCaptureViewController *)self containerView];
  [v11 addGestureRecognizer:v10];
}

- (CGPoint)locationInCaptureViewForGestureRecognizer:(id)a3
{
  v4 = a3;
  [(CFXLiveCaptureViewController *)self CFX_createUncroppedCameraPlaceholderViewIfNecessary];
  v5 = [(CFXLiveCaptureViewController *)self renderImageView];
  v6 = [(CFXLiveCaptureViewController *)self uncroppedRenderImagePlaceHolderView];

  if (v6)
  {
    v7 = [(CFXLiveCaptureViewController *)self uncroppedRenderImagePlaceHolderView];

    v5 = v7;
  }

  [v4 locationInView:v5];
  v9 = v8;
  v11 = v10;
  [v5 bounds];
  v13 = v12;
  v15 = v14;
  +[JFXMediaSettings renderSize];
  v18 = CGPointConvertToNormalizedCoordinateSpace(2uLL, 0, v9, v11, v13, v15, v16, v17);
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.y = v22;
  result.x = v21;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)normalizedMinimumHitTestArea
{
  +[JFXMediaSettings renderSize];
  v3 = 44.0 / v2;
  v5 = 44.0 / v4;
  result.var1 = v5;
  result.var0 = v3;
  return result;
}

- (void)CFX_livePreviewTapped:(id)a3
{
  [(CFXLiveCaptureViewController *)self locationInCaptureViewForGestureRecognizer:a3];
  v5 = v4;
  v7 = v6;
  v8 = [(CFXLiveCaptureViewController *)self delegate];
  [v8 liveCaptureViewController:self livePreviewTappedAtNormalizedPoint:{v5, v7}];
}

- (void)CFX_livePreviewPanned:(id)a3
{
  v4 = a3;
  [(CFXLiveCaptureViewController *)self locationInCaptureViewForGestureRecognizer:v4];
  v6 = v5;
  v8 = v7;
  v9 = [(CFXLiveCaptureViewController *)self delegate];
  [v9 liveCaptureViewController:self livePreviewPannedAtNormalizedPoint:v4 gesture:{v6, v8}];
}

- (void)CFX_livePreviewPinched:(id)a3
{
  v4 = a3;
  [(CFXLiveCaptureViewController *)self locationInCaptureViewForGestureRecognizer:v4];
  v6 = v5;
  v8 = v7;
  v9 = [(CFXLiveCaptureViewController *)self delegate];
  [v9 liveCaptureViewController:self livePreviewPinchedAtNormalizedCenterPoint:v4 gesture:{v6, v8}];
}

- (void)CFX_livePreviewRotated:(id)a3
{
  v4 = a3;
  [(CFXLiveCaptureViewController *)self locationInCaptureViewForGestureRecognizer:v4];
  v6 = v5;
  v8 = v7;
  v9 = [(CFXLiveCaptureViewController *)self delegate];
  [v9 liveCaptureViewController:self livePreviewRotatedAtNormalizedCenterPoint:v4 gesture:{v6, v8}];
}

- (void)CFX_livePreviewDoubleTapped:(id)a3
{
  v4 = a3;
  [(CFXLiveCaptureViewController *)self locationInCaptureViewForGestureRecognizer:v4];
  v6 = v5;
  v8 = v7;
  v9 = [(CFXLiveCaptureViewController *)self delegate];
  [v9 liveCaptureViewController:self livePreviewDoubleTappedAtNormalizedCenterPoint:v4 gesture:{v6, v8}];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();
  }

  v9 = isKindOfClass & v8;

  return v9 & 1;
}

- (void)CFX_setAnimationEnabledForOverlays:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x277D85DE8];
  v4 = [(CFXLiveCaptureViewController *)self composition];
  v5 = [v4 jtEffectsForType:2];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = MEMORY[0x277CC08F0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        [v12 enablePresentationState:!v3];
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        v13 = [v12 renderEffect];
        v14 = v13;
        if (v13)
        {
          [v13 effectRange];
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
          v21 = 0u;
        }

        if (v3)
        {
          v21 = CFXEffectPreviewStartAtNextRenderTime;
          v15 = 0;
        }

        else
        {
          v21 = *v10;
          v15 = *(v10 + 16);
        }

        *&v22 = v15;
        v18 = v21;
        v19 = v22;
        v20 = v23;
        v16 = [v12 renderEffect];
        v17[0] = v18;
        v17[1] = v19;
        v17[2] = v20;
        [v16 setEffectRange:v17];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)CFX_executeRenderCallbacksQueuedBeforeTime:(id *)a3
{
  v5 = objc_opt_new();
  v6 = [(CFXLiveCaptureViewController *)self renderFrameCompletionBlocks];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __75__CFXLiveCaptureViewController_CFX_executeRenderCallbacksQueuedBeforeTime___block_invoke;
  v12 = &unk_278D7A370;
  v14 = *a3;
  v13 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:&v9];

  v8 = [(CFXLiveCaptureViewController *)self renderFrameCompletionBlocks:v9];
  [v8 removeObjectsInArray:v7];

  [v7 enumerateObjectsUsingBlock:&__block_literal_global_89];
}

void __75__CFXLiveCaptureViewController_CFX_executeRenderCallbacksQueuedBeforeTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  memset(&v7, 0, sizeof(v7));
  if (v3)
  {
    [v3 sendAfterRenderTime];
  }

  time1 = *(a1 + 40);
  v5 = v7;
  if (CMTimeCompare(&time1, &v5) >= 1)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __75__CFXLiveCaptureViewController_CFX_executeRenderCallbacksQueuedBeforeTime___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 block];
  v2[2]();
}

- (JFXAnimojiTrackingLossDelegate)trackingLossDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trackingLossDelegate);

  return WeakRetained;
}

- (CFXLiveCaptureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (JFXImageView)renderImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_renderImageView);

  return WeakRetained;
}

- (UIView)debugControlsView
{
  WeakRetained = objc_loadWeakRetained(&self->_debugControlsView);

  return WeakRetained;
}

- (void)setCurrentRenderPresentationTime_renderImageQ:(id *)a3
{
  var3 = a3->var3;
  *&self->_currentRenderPresentationTime_renderImageQ.value = *&a3->var0;
  self->_currentRenderPresentationTime_renderImageQ.epoch = var3;
}

@end