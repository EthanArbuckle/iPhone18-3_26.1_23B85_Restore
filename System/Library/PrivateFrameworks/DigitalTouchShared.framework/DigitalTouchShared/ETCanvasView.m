@interface ETCanvasView
- (BOOL)_areRecognizersTrackingMultipleFingers;
- (BOOL)_sendMessageTimerFired;
- (BOOL)_sketchesPaused;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)_normalizedGesturePoint:(id)a3;
- (CGPoint)_viewPointNormalizedInSceneSpace:(CGPoint)a3;
- (ETCanvasView)initWithFrame:(CGRect)a3;
- (ETCanvasViewDelegate)canvasDelegate;
- (ETMessageTimeSource)timeSource;
- (double)_angleOfRotationBetweenTwoFingers:(id)a3;
- (void)_angerRecognized:(id)a3;
- (void)_animateOutSketchView:(id)a3 withCompletion:(id)a4;
- (void)_checkForIdle;
- (void)_clearDoodleViewForMessage:(id)a3;
- (void)_clearSendMessageTimer;
- (void)_configureAngerRecognizer;
- (void)_createSketchViewWithColor:(id)a3 time:(double)a4 message:(id)a5;
- (void)_doodleEndedWithTouches:(id)a3 cancelled:(BOOL)a4;
- (void)_endMessage:(id)a3 withSend:(BOOL)a4;
- (void)_fastTapAllowableMovementTimerFired;
- (void)_heartbeatRecognized:(id)a3;
- (void)_hideAnger;
- (void)_hideHeartbeat;
- (void)_hideHeartbeatTimerFired;
- (void)_kissRecognized:(id)a3;
- (void)_sendAnger;
- (void)_sendHeartbeat;
- (void)_sendKiss;
- (void)_sendSketch;
- (void)_sendTaps;
- (void)_setIsComposingMessageOfType:(unsigned __int16)a3;
- (void)_setSketchesPaused:(BOOL)a3;
- (void)_showAngerAtPoint:(CGPoint)a3;
- (void)_showHeartbeatAtNormalizedPoint:(CGPoint)a3 rotation:(double)a4;
- (void)_startCheckForIdleTimer;
- (void)_startDoodleMessageCompositionAtTime:(double)a3;
- (void)_startFastTapAllowableMovementTimer;
- (void)_startSendMessageTimer;
- (void)_stopCheckForIdleTimer;
- (void)_tapRecognized:(id)a3;
- (void)_updatePhotoViewFrame;
- (void)_updateRecognizersAtEndOfComposition;
- (void)_updateVideoViewFrame;
- (void)clearCanvasAnimated:(BOOL)a3;
- (void)dealloc;
- (void)handleDotAtX:(float)a3 Y:(float)a4 color:(id)a5 time:(double)a6 isRemote:(BOOL)a7;
- (void)handlePanAtX:(float)a3 Y:(float)a4 color:(id)a5 time:(double)a6 state:(int64_t)a7 isRemote:(BOOL)a8;
- (void)handleTapAtX:(float)a3 Y:(float)a4 color:(id)a5 time:(double)a6 isRemote:(BOOL)a7;
- (void)hidePhoto;
- (void)hideVideo;
- (void)layoutSubviews;
- (void)messageDidStopPlaying:(id)a3;
- (void)messageWillReachSizeLimit:(id)a3;
- (void)messageWillStopPlaying:(id)a3;
- (void)playMessage:(id)a3;
- (void)playTestStrokeWithColor:(id)a3 duration:(double)a4;
- (void)sendCurrentMessage;
- (void)setAlwaysPaused:(BOOL)a3;
- (void)setCanComposeHeartbeat:(BOOL)a3;
- (void)setDrawingColor:(id)a3;
- (void)setForceTouchEnabled:(BOOL)a3;
- (void)setPaused:(BOOL)a3;
- (void)setUsesMediaAppearance:(BOOL)a3;
- (void)showPhotoForImage:(id)a3;
- (void)showVideoForPlayer:(id)a3;
- (void)startDoodleMessageComposition;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateIgnoredTouchesRectForStatusBarSize:(CGSize)a3;
- (void)willMoveToWindow:(id)a3;
- (void)wispVisibleSketchViewsWithCompletion:(id)a3;
@end

@implementation ETCanvasView

- (ETCanvasView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v39.receiver = self;
  v39.super_class = ETCanvasView;
  v5 = [(ETCanvasView *)&v39 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x2050000000;
    v6 = getSKSceneClass_softClass;
    v44 = getSKSceneClass_softClass;
    if (!getSKSceneClass_softClass)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __getSKSceneClass_block_invoke;
      v40[3] = &unk_278F7A048;
      v40[4] = &v41;
      __getSKSceneClass_block_invoke(v40);
      v6 = v42[3];
    }

    v7 = v6;
    _Block_object_dispose(&v41, 8);
    v8 = [[v6 alloc] initWithSize:{width, height}];
    scene = v5->_scene;
    v5->_scene = v8;

    v10 = v5->_scene;
    v11 = [MEMORY[0x277D75348] blackColor];
    [(SKScene *)v10 setBackgroundColor:v11];

    [(SKScene *)v5->_scene setAnchorPoint:0.5, 0.5];
    v12 = [[DTSSceneView alloc] initWithSize:width, height];
    sceneView = v5->_sceneView;
    v5->_sceneView = v12;

    [(DTSSceneView *)v5->_sceneView setShouldCullNonVisibleNodes:0];
    [(DTSSceneView *)v5->_sceneView setIgnoresSiblingOrder:1];
    [(DTSSceneView *)v5->_sceneView setAllowsTransparency:1];
    [(DTSSceneView *)v5->_sceneView presentScene:v5->_scene];
    [(DTSSceneView *)v5->_sceneView setPaused:1];
    [(DTSSceneView *)v5->_sceneView setPreferredFramesPerSecond:60];
    v14 = [(DTSSceneView *)v5->_sceneView options];
    [v14 setObject:MEMORY[0x277CBEC38] forKey:@"ignoreBackgroundNotifications"];

    [(DTSSceneView *)v5->_sceneView setUserInteractionEnabled:0];
    [(ETCanvasView *)v5 addSubview:v5->_sceneView];
    v15 = [MEMORY[0x277D75348] blackColor];
    [(ETCanvasView *)v5 setBackgroundColor:v15];

    v16 = [(ETCanvasView *)v5 layer];
    [v16 setMasksToBounds:1];

    v17 = [MEMORY[0x277CBEB38] dictionary];
    messageIdentifierToDoodleView = v5->_messageIdentifierToDoodleView;
    v5->_messageIdentifierToDoodleView = v17;

    v19 = [MEMORY[0x277CBEB58] set];
    playingMessages = v5->_playingMessages;
    v5->_playingMessages = v19;

    v5->_canComposeHeartbeat = 1;
    v21 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v5 action:sel__heartbeatRecognized_];
    heartbeatRecognizer = v5->_heartbeatRecognizer;
    v5->_heartbeatRecognizer = v21;

    [(UILongPressGestureRecognizer *)v5->_heartbeatRecognizer setNumberOfTouchesRequired:2];
    [(UILongPressGestureRecognizer *)v5->_heartbeatRecognizer setMinimumPressDuration:0.2];
    [(ETCanvasView *)v5 addGestureRecognizer:v5->_heartbeatRecognizer];
    v5->_canComposeTap = 1;
    v23 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v5 action:sel__tapRecognized_];
    tapRecognizer = v5->_tapRecognizer;
    v5->_tapRecognizer = v23;

    [(UITapGestureRecognizer *)v5->_tapRecognizer setDelaysTouchesBegan:1];
    [(UITapGestureRecognizer *)v5->_tapRecognizer setAllowableMovement:11.0];
    [(UITapGestureRecognizer *)v5->_tapRecognizer setDelegate:v5];
    [(ETCanvasView *)v5 addGestureRecognizer:v5->_tapRecognizer];
    v5->_canComposeKiss = 1;
    v25 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v5 action:sel__kissRecognized_];
    kissRecognizer = v5->_kissRecognizer;
    v5->_kissRecognizer = v25;

    [(UITapGestureRecognizer *)v5->_kissRecognizer setNumberOfTouchesRequired:2];
    [(UITapGestureRecognizer *)v5->_kissRecognizer setDelegate:v5];
    [(ETCanvasView *)v5 addGestureRecognizer:v5->_kissRecognizer];
    v5->_canComposeAnger = 1;
    v27 = [MEMORY[0x277D759A0] mainScreen];
    v28 = [v27 traitCollection];
    -[ETCanvasView setForceTouchEnabled:](v5, "setForceTouchEnabled:", [v28 forceTouchCapability] == 2);

    [(ETCanvasView *)v5 _configureAngerRecognizer];
    [(ETCanvasView *)v5 setMultipleTouchEnabled:1];
    v29 = [MEMORY[0x277CBEB58] set];
    touchesDown = v5->_touchesDown;
    v5->_touchesDown = v29;

    v31 = [MEMORY[0x277D75348] whiteColor];
    drawingColor = v5->_drawingColor;
    v5->_drawingColor = v31;

    v33 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v34 = [v33 persistentDomainForName:@"com.apple.ET"];
    v35 = [v34 objectForKey:@"ETWispDelay"];
    [v35 doubleValue];
    v5->_wispDelay = v36;

    [(ETCanvasView *)v5 setPaused:1];
    v5->_messageType = -1;
    v37 = v5;
  }

  return v5;
}

- (void)showPhotoForImage:(id)a3
{
  v4 = a3;
  photoView = self->_photoView;
  v9 = v4;
  if (!photoView)
  {
    v6 = objc_alloc_init(MEMORY[0x277D755E8]);
    v7 = self->_photoView;
    self->_photoView = v6;

    [(UIImageView *)self->_photoView setContentMode:2];
    v8 = [(UIImageView *)self->_photoView layer];
    [v8 setMasksToBounds:1];

    [(ETCanvasView *)self insertSubview:self->_photoView atIndex:0];
    v4 = v9;
    photoView = self->_photoView;
  }

  [(UIImageView *)photoView setImage:v4];
  [(ETCanvasView *)self _updatePhotoViewFrame];
}

- (void)hidePhoto
{
  [(UIImageView *)self->_photoView removeFromSuperview];
  photoView = self->_photoView;
  self->_photoView = 0;
}

- (void)showVideoForPlayer:(id)a3
{
  if (!self->_videoView)
  {
    v4 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:a3];
    videoLayer = self->_videoLayer;
    self->_videoLayer = v4;

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    videoView = self->_videoView;
    self->_videoView = v6;

    v8 = [(UIView *)self->_videoView layer];
    [v8 addSublayer:self->_videoLayer];
    [v8 setMasksToBounds:1];
    [(ETCanvasView *)self insertSubview:self->_videoView atIndex:0];
    [(ETCanvasView *)self _updateVideoViewFrame];
  }
}

- (void)hideVideo
{
  [(UIView *)self->_videoView removeFromSuperview];
  videoView = self->_videoView;
  self->_videoView = 0;

  [(AVPlayerLayer *)self->_videoLayer removeFromSuperlayer];
  videoLayer = self->_videoLayer;
  self->_videoLayer = 0;
}

- (void)_updateVideoViewFrame
{
  [(ETCanvasView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(AVPlayerLayer *)self->_videoLayer setFrame:0.0, 0.0];
  videoView = self->_videoView;

  [(UIView *)videoView setFrame:0.0, 0.0, v4, v6];
}

- (void)_updatePhotoViewFrame
{
  [(ETCanvasView *)self bounds];
  photoView = self->_photoView;

  [(UIImageView *)photoView setFrame:0.0, 0.0];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = ETCanvasView;
  [(ETCanvasView *)&v12 layoutSubviews];
  [(ETCanvasView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(SKScene *)self->_scene setSize:v3, v5];
  [(DTSSceneView *)self->_sceneView setSize:v4, v6];
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    currentSketchView = self->_currentSketchView;
    v10 = objc_loadWeakRetained(&self->_canvasDelegate);
    -[ETGLSketchView setUseFastVerticalWisp:](currentSketchView, "setUseFastVerticalWisp:", [v10 canvasViewShouldUseFastVerticalWisp:self]);
  }

  v11 = self->_currentSketchView;
  [(ETCanvasView *)self bounds];
  [(ETGLSketchView *)v11 setFrame:?];
  [(ETCanvasView *)self _updateVideoViewFrame];
  [(ETCanvasView *)self _updatePhotoViewFrame];
}

- (void)_startDoodleMessageCompositionAtTime:(double)a3
{
  v7 = objc_alloc_init(ETSketchMessage);
  [(ETSketchMessage *)v7 setHasMultipleColors:1];
  v5 = [(ETCanvasView *)self timeSource];
  [(ETMessage *)v7 setTimeSource:v5];

  [(ETSketchMessage *)v7 setParentMessage:self->_parentMessage];
  v6 = [(ETCanvasView *)self drawingColor];
  [(ETCanvasView *)self _createSketchViewWithColor:v6 time:v7 message:a3];

  [(ETCanvasView *)self _setIsComposingMessageOfType:1];
}

- (void)startDoodleMessageComposition
{
  [(ETCanvasView *)self endMessageComposition];
  Current = CFAbsoluteTimeGetCurrent();

  [(ETCanvasView *)self _startDoodleMessageCompositionAtTime:Current];
}

- (void)_setIsComposingMessageOfType:(unsigned __int16)a3
{
  v3 = a3;
  self->_isComposing = 1;
  self->_messageType = a3;
  if (a3 == 1)
  {
    [(UITapGestureRecognizer *)self->_tapRecognizer setEnabled:0];
    if (!self->_parentMessage)
    {
      [(UITapGestureRecognizer *)self->_kissRecognizer setEnabled:0];
      [(UILongPressGestureRecognizer *)self->_heartbeatRecognizer setEnabled:0];
      [(UILongPressGestureRecognizer *)self->_angerRecognizer setEnabled:0];
    }

    v5 = &OBJC_IVAR___ETCanvasView__currentSketchView;
  }

  else
  {
    v5 = &OBJC_IVAR___ETCanvasView__sceneView;
  }

  [*(&self->super.super.super.isa + *v5) setPaused:0];
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  [WeakRetained canvasView:self didBeginComposingMessageType:v3];

  [(ETCanvasView *)self _startCheckForIdleTimer];
}

- (void)_updateRecognizersAtEndOfComposition
{
  [(UITapGestureRecognizer *)self->_tapRecognizer setEnabled:self->_canComposeTap];
  if (!self->_parentMessage)
  {
    [(UITapGestureRecognizer *)self->_kissRecognizer setEnabled:self->_canComposeKiss];
    [(UILongPressGestureRecognizer *)self->_heartbeatRecognizer setEnabled:self->_canComposeHeartbeat];
    angerRecognizer = self->_angerRecognizer;
    canComposeAnger = self->_canComposeAnger;

    [(UILongPressGestureRecognizer *)angerRecognizer setEnabled:canComposeAnger];
  }
}

- (void)_endMessage:(id)a3 withSend:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&dword_248D00000, v7, OS_LOG_TYPE_INFO, "Ending message: %@. Will send: %d", &v16, 0x12u);
    }
  }

  currentSketchView = self->_currentSketchView;
  messageIdentifierToDoodleView = self->_messageIdentifierToDoodleView;
  v10 = [v6 identifier];
  v11 = [(NSMutableDictionary *)messageIdentifierToDoodleView objectForKey:v10];

  if (!v6 || (messageType = self->_messageType, messageType == [v6 messageType]))
  {
    if (self->_messageType != 1 || currentSketchView == v11)
    {
      self->_isComposing = 0;
      self->_sketchDidReachSizeLimit = 0;
      self->_messageType = -1;
    }
  }

  [(ETCanvasView *)self _updateRecognizersAtEndOfComposition];
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  [WeakRetained canvasView:self didEndComposingMessageType:{objc_msgSend(v6, "messageType")}];

  if (v4)
  {
    v15 = objc_loadWeakRetained(&self->_canvasDelegate);
    [v15 canvasView:self sendMessage:v6];
  }
}

- (void)dealloc
{
  [(ETCanvasView *)self _stopCheckForIdleTimer];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ETCanvasView;
  [(ETCanvasView *)&v4 dealloc];
}

- (void)_setSketchesPaused:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableDictionary *)self->_messageIdentifierToDoodleView allValues];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setPaused:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)_sketchesPaused
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSMutableDictionary *)self->_messageIdentifierToDoodleView allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPaused])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  self->_paused = a3;
  if (a3)
  {
    [(ETCanvasView *)self _clearSendMessageTimer];
  }

  else if ([(ETCanvasView *)self isComposing])
  {
    [(ETCanvasView *)self _startSendMessageTimer];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableSet *)self->_playingMessages allObjects];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v14 + 1) + 8 * i) setMute:v3];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(DTSSceneView *)self->_sceneView setPaused:v3];
  [(ETCanvasView *)self _setSketchesPaused:v3];
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  if (v3)
  {
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v12 = objc_loadWeakRetained(&self->_canvasDelegate);
    [v12 canvasViewDidPause:self];
  }

  else
  {
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      return;
    }

    v12 = objc_loadWeakRetained(&self->_canvasDelegate);
    [v12 canvasViewDidUnpause:self];
  }
}

- (void)setAlwaysPaused:(BOOL)a3
{
  self->_setAlwaysPaused = a3;
  if (a3)
  {
    [(ETCanvasView *)self clearCanvasAnimated:0];
    [(ETCanvasView *)self setPaused:1];

    [(ETCanvasView *)self _stopCheckForIdleTimer];
  }

  else
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 applicationState];

    if (!v5)
    {
      [(ETCanvasView *)self setPaused:0];

      [(ETCanvasView *)self _startCheckForIdleTimer];
    }
  }
}

- (void)wispVisibleSketchViewsWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ETCanvasView_wispVisibleSketchViewsWithCompletion___block_invoke;
  v16[3] = &unk_278F79F38;
  v16[4] = self;
  v5 = v4;
  v17 = v5;
  v6 = MEMORY[0x24C1E9BB0](v16);
  if ([(NSMutableDictionary *)self->_messageIdentifierToDoodleView count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSMutableDictionary *)self->_messageIdentifierToDoodleView allValues];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(ETCanvasView *)self _animateOutSketchView:*(*(&v12 + 1) + 8 * v11++) withCompletion:v6];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else if (v5)
  {
    v6[2](v6);
  }
}

uint64_t __53__ETCanvasView_wispVisibleSketchViewsWithCompletion___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 600) count];
  if (!result)
  {
    result = *(a1 + 40);
    if (result)
    {
      (*(result + 16))();
      v3 = *(a1 + 32);

      return [v3 _updateRecognizersAtEndOfComposition];
    }
  }

  return result;
}

- (void)_animateOutSketchView:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 messageData];
  v9 = [v8 delayWisp];
  [v8 setDelayWisp:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__ETCanvasView__animateOutSketchView_withCompletion___block_invoke;
  v13[3] = &unk_278F7A270;
  v13[4] = self;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  [v12 animateOutWithCompletion:v13];
}

uint64_t __53__ETCanvasView__animateOutSketchView_withCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) messageData];
  [v2 _clearDoodleViewForMessage:v3];

  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 64);

  return [v5 setDelayWisp:v6];
}

- (void)_clearDoodleViewForMessage:(id)a3
{
  v6 = [a3 identifier];
  v4 = [(NSMutableDictionary *)self->_messageIdentifierToDoodleView objectForKey:v6];
  [(ETGLSketchView *)v4 clear];
  [(ETGLSketchView *)v4 removeFromSuperview];
  if (v6)
  {
    [(NSMutableDictionary *)self->_messageIdentifierToDoodleView removeObjectForKey:v6];
  }

  currentSketchView = self->_currentSketchView;
  if (currentSketchView == v4)
  {
    self->_currentSketchView = 0;
  }
}

- (void)clearCanvasAnimated:(BOOL)a3
{
  v3 = a3;
  v55 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = objc_alloc(MEMORY[0x277D75D18]);
    [(ETCanvasView *)self bounds];
    v6 = [v5 initWithFrame:?];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = [(NSMutableDictionary *)self->_messageIdentifierToDoodleView allValues];
    v8 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v49;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v48 + 1) + 8 * i) snapshotViewAfterScreenUpdates:0];
          [v6 addSubview:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v9);
    }

    v13 = [(DTSSceneView *)self->_sceneView snapshotViewAfterScreenUpdates:0];
    [v6 addSubview:v13];

    [(ETCanvasView *)self addSubview:v6];
  }

  else
  {
    v6 = 0;
  }

  [(NSTimer *)self->_sendMessageTimer invalidate];
  sendMessageTimer = self->_sendMessageTimer;
  self->_sendMessageTimer = 0;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = [(NSMutableDictionary *)self->_messageIdentifierToDoodleView allValues];
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v44 + 1) + 8 * j);
        [v20 clear];
        [v20 removeFromSuperview];
      }

      v17 = [v15 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v17);
  }

  [(NSMutableDictionary *)self->_messageIdentifierToDoodleView removeAllObjects];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = [(NSMutableSet *)self->_playingMessages allObjects];
  v22 = [v21 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v40 + 1) + 8 * k) setMute:1];
      }

      v23 = [v21 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v23);
  }

  [(NSMutableSet *)self->_playingMessages removeAllObjects];
  currentSketchView = self->_currentSketchView;
  self->_currentSketchView = 0;

  drawingTouch = self->_drawingTouch;
  self->_drawingTouch = 0;

  self->_drawingTouchMovedDistance = 0.0;
  currentTaps = self->_currentTaps;
  self->_currentTaps = 0;

  currentKissMessage = self->_currentKissMessage;
  self->_currentKissMessage = 0;

  currentHeartbeat = self->_currentHeartbeat;
  self->_currentHeartbeat = 0;

  currentAnger = self->_currentAnger;
  self->_currentAnger = 0;

  self->_isComposing = 0;
  self->_messageType = -1;
  self->_lastActivityTimestamp = 0.0;
  self->_ignoreTouchesUntilAllTouchesEnded = 0;
  self->_sketchDidReachSizeLimit = 0;
  [(SKScene *)self->_scene removeAllActions];
  [(SKScene *)self->_scene removeAllChildren];
  [(ETCanvasView *)self _startCheckForIdleTimer];
  if (v3)
  {
    v32 = MEMORY[0x277D75D18];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __36__ETCanvasView_clearCanvasAnimated___block_invoke;
    v38[3] = &unk_278F79ED0;
    v39 = v6;
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __36__ETCanvasView_clearCanvasAnimated___block_invoke_2;
    v36 = &unk_278F7A000;
    v37 = v39;
    [v32 animateWithDuration:v38 animations:&v33 completion:0.25];
  }

  [(ETCanvasView *)self _updateRecognizersAtEndOfComposition:v33];
}

- (void)_startCheckForIdleTimer
{
  if (!self->_idleTimer && !self->_setAlwaysPaused)
  {
    self->_idleTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__checkForIdle selector:0 userInfo:1 repeats:1.0];

    MEMORY[0x2821F96F8]();
  }
}

- (void)_stopCheckForIdleTimer
{
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    [(NSTimer *)idleTimer invalidate];
    v4 = self->_idleTimer;
    self->_idleTimer = 0;
  }
}

- (void)_checkForIdle
{
  if (!self->_parentMessage && ([(SKScene *)self->_scene hasActions]& 1) == 0)
  {
    v4 = [(SKScene *)self->_scene children];
    if ([v4 count] || -[NSMutableDictionary count](self->_messageIdentifierToDoodleView, "count"))
    {
    }

    else
    {
      isComposing = self->_isComposing;

      if (!isComposing)
      {
        [(ETCanvasView *)self setPaused:1];

        [(ETCanvasView *)self _stopCheckForIdleTimer];
      }
    }
  }
}

- (void)setDrawingColor:(id)a3
{
  objc_storeStrong(&self->_drawingColor, a3);
  [(ETCanvasView *)self _clearSendMessageTimer];
  if ([(ETCanvasView *)self isComposing])
  {

    [(ETCanvasView *)self _startSendMessageTimer];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_tapRecognizer == v4)
  {
    [(UILongPressGestureRecognizer *)v4 locationOfTouch:0 inView:self];
    v8 = v7;
    v10 = v9;
    v18 = CGRectInset(self->_ignoredTouchesRect, -15.0, -15.0);
    v17.x = v8;
    v17.y = v10;
    v11 = CGRectContainsPoint(v18, v17);
    WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = objc_loadWeakRetained(&self->_canvasDelegate);
      v15 = [v14 canvasView:self tapRecognizerShouldBegin:v5];
    }

    else
    {
      v15 = 1;
    }

    if ([(ETCanvasView *)self _isTapTooRecentAfterKissGesture])
    {
      v6 = 0;
    }

    else
    {
      v6 = (self->_messageType != 1) & v15 & !v11;
    }
  }

  else if (self->_angerRecognizer == v4 || self->_heartbeatRecognizer == v4)
  {
    v6 = [(ETCanvasView *)self _canComposeExclusiveMessage];
  }

  else
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass() ^ 1;
  }

  return v6 & 1;
}

- (void)updateIgnoredTouchesRectForStatusBarSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ETCanvasView *)self _shouldReverseLayoutDirection];
  v7 = 0.0;
  if (v6)
  {
    [(ETCanvasView *)self bounds];
    v7 = CGRectGetWidth(v8) - width;
  }

  self->_ignoredTouchesRect.origin.x = v7;
  self->_ignoredTouchesRect.origin.y = 0.0;
  self->_ignoredTouchesRect.size.width = width;
  self->_ignoredTouchesRect.size.height = height;
}

- (void)_startFastTapAllowableMovementTimer
{
  [(NSTimer *)self->_fastTapAllowableMovementTimer invalidate];
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__fastTapAllowableMovementTimerFired selector:0 userInfo:0 repeats:1.0];
  fastTapAllowableMovementTimer = self->_fastTapAllowableMovementTimer;
  self->_fastTapAllowableMovementTimer = v3;

  tapRecognizer = self->_tapRecognizer;

  [(UITapGestureRecognizer *)tapRecognizer setAllowableMovement:30.0];
}

- (void)_fastTapAllowableMovementTimerFired
{
  fastTapAllowableMovementTimer = self->_fastTapAllowableMovementTimer;
  self->_fastTapAllowableMovementTimer = 0;

  if (CFAbsoluteTimeGetCurrent() - self->_lastFastTapTimestamp >= 1.0)
  {
    tapRecognizer = self->_tapRecognizer;

    [(UITapGestureRecognizer *)tapRecognizer setAllowableMovement:11.0];
  }

  else
  {

    [(ETCanvasView *)self _startFastTapAllowableMovementTimer];
  }
}

- (CGPoint)_normalizedGesturePoint:(id)a3
{
  v4 = a3;
  [(ETCanvasView *)self bounds];
  MidX = CGRectGetMidX(v16);
  [(ETCanvasView *)self bounds];
  MidY = CGRectGetMidY(v17);
  if ([(ETMessage *)self->_parentMessage messageType]== 8 || self->_messageType == 10)
  {
    [v4 locationInView:self];
    MidX = v7;
    MidY = v8;
  }

  [(ETCanvasView *)self _viewPointNormalizedInSceneSpace:MidX, MidY];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_angerRecognized:(id)a3
{
  v13 = a3;
  v4 = [v13 state];
  if (v4 > 3)
  {
    if ((v4 - 4) < 2)
    {
      v5 = self->_currentAnger;
      [(ETCanvasView *)self _hideAnger];
      [(ETCanvasView *)self _endMessage:v5 withSend:0];
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        if (!self->_parentMessage && [(ETCanvasView *)self _sketchInProgress]&& self->_drawingTouchMovedDistance < 20.0)
        {
          v6 = [(ETGLSketchView *)self->_currentSketchView messageData];
          [(ETCanvasView *)self _endMessage:v6 withSend:0];
        }

        if ([(ETCanvasView *)self _canComposeExclusiveMessage])
        {
          if (self->_currentAnger)
          {
            [(ETCanvasView *)self _sendAnger];
          }

          [(ETCanvasView *)self _setIsComposingMessageOfType:10];
          [(ETCanvasView *)self _normalizedGesturePoint:v13];
          [(ETCanvasView *)self _showAngerAtPoint:?];
          self->_lastActivityTimestamp = CFAbsoluteTimeGetCurrent();
        }

        break;
      case 2:
        WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
        [WeakRetained canvasView:self didUpdateComposingMessageType:self->_messageType];

        [(ETCanvasView *)self _normalizedGesturePoint:v13];
        v9 = v8;
        v11 = v10;
        Current = CFAbsoluteTimeGetCurrent();
        [(ETAngerMessage *)self->_currentAnger setNormalizedPoint:self->_scene atRelativeTime:v9 inScene:v11, Current - self->_lastActivityTimestamp];
        self->_lastActivityTimestamp = Current;
        break;
      case 3:
        [(ETCanvasView *)self _sendAnger];
        break;
    }
  }
}

- (void)_sendAnger
{
  if (self->_currentAnger)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(ETMessage *)self->_currentAnger timeCreated];
    [(ETAngerMessage *)self->_currentAnger setDuration:fmax(Current - v4, 1.0)];
    v5 = self->_currentAnger;
    [(ETCanvasView *)self _hideAnger];
    [(ETCanvasView *)self _endMessage:v5 withSend:1];
  }
}

- (void)_showAngerAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_opt_new();
  currentAnger = self->_currentAnger;
  self->_currentAnger = v6;

  [(ETAngerMessage *)self->_currentAnger setNormalizedCenter:x, y];
  [(ETMessage *)self->_currentAnger setParentMessage:self->_parentMessage];
  v8 = self->_currentAnger;
  v9 = [(ETCanvasView *)self timeSource];
  [v9 elapsedTimeSinceStartOfMessage:self->_currentAnger];
  [(ETMessage *)v8 setStartDelay:?];

  [(ETAngerMessage *)self->_currentAnger displayInScene:self->_scene];
  self->_angerDurationLimitTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__angerDurationLimitTimerFired selector:0 userInfo:0 repeats:10.0];

  MEMORY[0x2821F96F8]();
}

- (void)_hideAnger
{
  [(NSTimer *)self->_angerDurationLimitTimer invalidate];
  angerDurationLimitTimer = self->_angerDurationLimitTimer;
  self->_angerDurationLimitTimer = 0;

  [(ETAngerMessage *)self->_currentAnger stopPlaying];
  currentAnger = self->_currentAnger;
  self->_currentAnger = 0;
}

- (void)_kissRecognized:(id)a3
{
  v4 = a3;
  currentKissMessage = self->_currentKissMessage;
  v18 = v4;
  if (currentKissMessage)
  {
    v6 = [(ETKissMessage *)currentKissMessage reachedSizeLimit];
    v4 = v18;
    if (v6)
    {
      [(ETCanvasView *)self _sendKiss];
      v4 = v18;
    }
  }

  [v4 locationInView:self];
  [(ETCanvasView *)self _viewPointNormalizedInSceneSpace:?];
  v8 = v7;
  v10 = v9;
  self->_lastActivityTimestamp = CFAbsoluteTimeGetCurrent();
  if (!self->_currentKissMessage)
  {
    v11 = objc_alloc_init(ETKissMessage);
    v12 = self->_currentKissMessage;
    self->_currentKissMessage = v11;

    v13 = self->_currentKissMessage;
    v14 = [(ETCanvasView *)self timeSource];
    [(ETMessage *)v13 setTimeSource:v14];

    v15 = self->_currentKissMessage;
    v16 = [(ETCanvasView *)self timeSource];
    [v16 elapsedTimeSinceStartOfMessage:self->_currentTaps];
    [(ETMessage *)v15 setStartDelay:?];

    [(ETMessage *)self->_currentKissMessage setDelayWisp:self->_parentMessage != 0];
    [(ETKissMessage *)self->_currentKissMessage setParentMessage:self->_parentMessage];
    [(ETCanvasView *)self _setIsComposingMessageOfType:9];
  }

  [(ETCanvasView *)self _angleOfRotationBetweenTwoFingers:v18];
  [(ETKissMessage *)self->_currentKissMessage addKissAtNormalizedPoint:self->_scene angle:v8 time:v10 toScene:v17, self->_lastActivityTimestamp];
  [(ETCanvasView *)self _startSendMessageTimer];
}

- (void)_tapRecognized:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 touches];
  v6 = [v5 objectAtIndex:0];
  [v6 locationInNode:self->_scene];
  v8 = v7;
  v10 = v9;

  self->_lastActivityTimestamp = CFAbsoluteTimeGetCurrent();
  if ([(ETCanvasView *)self _tapsInProgress])
  {
    WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
    [WeakRetained canvasView:self didUpdateComposingMessageType:self->_messageType];
  }

  else
  {
    [(ETCanvasView *)self _setIsComposingMessageOfType:0];
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [MEMORY[0x277CBEAA8] date];
      v14 = [ETUtility dateFormatWithMilliseconds:v13];
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_248D00000, v12, OS_LOG_TYPE_INFO, "(%@) Got tap!", &v19, 0xCu);
    }
  }

  v15 = [(ETCanvasView *)self drawingColor];
  Current = CFAbsoluteTimeGetCurrent();
  v17 = Current;
  *&Current = v8;
  *&v18 = v10;
  [(ETCanvasView *)self handleTapAtX:v15 Y:0 color:Current time:v18 isRemote:v17];

  self->_lastFastTapTimestamp = CFAbsoluteTimeGetCurrent();
  if (!self->_fastTapAllowableMovementTimer)
  {
    [(ETCanvasView *)self _startFastTapAllowableMovementTimer];
  }

  [(ETCanvasView *)self _startSendMessageTimer];
}

- (BOOL)_areRecognizersTrackingMultipleFingers
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(ETCanvasView *)self gestureRecognizers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) numberOfTouches] > 1)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NSMutableSet *)self->_touchesDown unionSet:v6];
  v8 = !self->_isComposing && [(NSMutableSet *)self->_touchesDown count]> 1;
  self->_ignoreTouchesUntilAllTouchesEnded = v8;
  if (self->_drawingTouch || [(ETCanvasView *)self _areRecognizersTrackingMultipleFingers]|| self->_ignoreTouchesUntilAllTouchesEnded)
  {
    v9 = [(UILongPressGestureRecognizer *)self->_heartbeatRecognizer touches];
    v10 = [v9 count];

    if (v10 == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
      [WeakRetained canvasView:self didUpdateComposingMessageType:2];
    }
  }

  else
  {
    v12 = [v6 anyObject];
    drawingTouch = self->_drawingTouch;
    self->_drawingTouch = v12;

    self->_drawingTouchStartedStroke = 0;
    self->_drawingTouchMovedDistance = 0.0;
    [(ETCanvasView *)self _clearSendMessageTimer];
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [MEMORY[0x277CBEAA8] date];
        v16 = [ETUtility dateFormatWithMilliseconds:v15];
        v21 = 138412290;
        v22 = v16;
        _os_log_impl(&dword_248D00000, v14, OS_LOG_TYPE_INFO, "(%@) UITouchPhaseBegan", &v21, 0xCu);
      }
    }

    self->_touchesBeganTimestamp = CFAbsoluteTimeGetCurrent();
    [(UITouch *)self->_drawingTouch locationInNode:self->_scene];
    self->_lastPt.x = v17;
    self->_lastPt.y = v18;
    [(UITouch *)self->_drawingTouch locationInView:self];
    v24.x = v19;
    v24.y = v20;
    self->_didIgnoreTouchesBegan = CGRectContainsPoint(self->_ignoredTouchesRect, v24);
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if ([a3 containsObject:{self->_drawingTouch, a4}] && !self->_ignoreTouchesUntilAllTouchesEnded)
  {
    if ([(ETCanvasView *)self _sketchInProgress])
    {
      WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
      [WeakRetained canvasView:self didUpdateComposingMessageType:self->_messageType];
    }

    [(UITouch *)self->_drawingTouch locationInNode:self->_scene];
    v7 = v6;
    v9 = v8;
    p_lastPt = &self->_lastPt;
    *&v6 = self->_lastPt.x - v6;
    *&v8 = self->_lastPt.y - v8;
    v11 = hypotf(*&v6, *&v8);
    self->_drawingTouchMovedDistance = self->_drawingTouchMovedDistance + v11;
    if (!self->_drawingTouchStartedStroke)
    {
      if (v11 < 3.0)
      {
        return;
      }

      [(UITouch *)self->_drawingTouch locationInView:self];
      v28.x = v26;
      v28.y = v27;
      if (CGRectContainsPoint(self->_ignoredTouchesRect, v28))
      {
        return;
      }

      if (self->_didIgnoreTouchesBegan)
      {
        p_lastPt->x = v7;
        self->_lastPt.y = v9;
        self->_touchesBeganTimestamp = CFAbsoluteTimeGetCurrent();
      }
    }

    if (!self->_drawingTouchStartedStroke)
    {
      if ([(ETCanvasView *)self _tapsInProgress])
      {
        v12 = self->_drawingTouch;
        [(ETCanvasView *)self _sendTaps];
        drawingTouch = self->_drawingTouch;
        self->_drawingTouch = v12;
      }

      if (!self->_parentMessage && self->_currentKissMessage)
      {
        [(ETCanvasView *)self _sendKiss];
      }

      self->_lastActivityTimestamp = self->_touchesBeganTimestamp;
      if (![(ETCanvasView *)self _sketchInProgress]&& (self->_parentMessage || !self->_isComposing))
      {
        [(ETCanvasView *)self _startDoodleMessageCompositionAtTime:self->_touchesBeganTimestamp];
      }

      x = p_lastPt->x;
      y = self->_lastPt.y;
      v16 = [(ETCanvasView *)self drawingColor];
      *&v17 = x;
      *&v18 = y;
      [(ETCanvasView *)self handlePanAtX:v16 Y:1 color:0 time:v17 state:v18 isRemote:self->_touchesBeganTimestamp];

      self->_drawingTouchStartedStroke = 1;
      v19 = objc_loadWeakRetained(&self->_canvasDelegate);
      [v19 canvasViewDidBeginStroke:self];
    }

    v22 = [(ETCanvasView *)self drawingColor];
    Current = CFAbsoluteTimeGetCurrent();
    v24 = Current;
    v20 = v7;
    *&Current = v20;
    v21 = v9;
    *&v25 = v21;
    [(ETCanvasView *)self handlePanAtX:v22 Y:2 color:0 time:Current state:v25 isRemote:v24];

    p_lastPt->x = v7;
    self->_lastPt.y = v9;
  }
}

- (void)_doodleEndedWithTouches:(id)a3 cancelled:(BOOL)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(NSMutableSet *)self->_touchesDown minusSet:v6];
  if (![v6 containsObject:self->_drawingTouch] || self->_sketchDidReachSizeLimit)
  {
    v7 = [(NSMutableSet *)self->_touchesDown count];
    ignoreTouchesUntilAllTouchesEnded = self->_ignoreTouchesUntilAllTouchesEnded;
    if (!v7)
    {
      ignoreTouchesUntilAllTouchesEnded = 0;
    }

    self->_ignoreTouchesUntilAllTouchesEnded = ignoreTouchesUntilAllTouchesEnded;
    goto LABEL_17;
  }

  v9 = !self->_drawingTouchStartedStroke && [(ETCanvasView *)self _isTapTooRecentAfterKissGesture];
  if ([(ETCanvasView *)self isComposingHeartbeat]|| ![(ETCanvasView *)self _sketchInProgress]|| self->_ignoreTouchesUntilAllTouchesEnded || v9)
  {
    if (self->_drawingTouch)
    {
      [(ETCanvasView *)self _startSendMessageTimer];
    }

    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x277CBEAA8] date];
      v15 = [ETUtility dateFormatWithMilliseconds:v14];
      v27 = 138412290;
      v28 = v15;
      _os_log_impl(&dword_248D00000, v13, OS_LOG_TYPE_INFO, "(%@) UITouchPhaseEnded", &v27, 0xCu);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(UITouch *)self->_drawingTouch locationInNode:self->_scene];
  v18 = v17;
  v20 = v19;
  if (self->_drawingTouchStartedStroke)
  {
    v21 = [(ETCanvasView *)self drawingColor];
    *&v22 = v18;
    *&v23 = v20;
    [(ETCanvasView *)self handlePanAtX:v21 Y:3 color:0 time:v22 state:v23 isRemote:Current];
LABEL_26:

    goto LABEL_27;
  }

  if (!a4)
  {
    v21 = [(ETCanvasView *)self drawingColor];
    *&v24 = v18;
    *&v25 = v20;
    [(ETCanvasView *)self handleDotAtX:v21 Y:0 color:v24 time:v25 isRemote:Current];
    goto LABEL_26;
  }

LABEL_27:
  [(ETCanvasView *)self _startSendMessageTimer];
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  [WeakRetained canvasViewDidEndStroke:self];

LABEL_14:
  v10 = [(NSMutableSet *)self->_touchesDown count];
  v11 = self->_ignoreTouchesUntilAllTouchesEnded;
  if (!v10)
  {
    v11 = 0;
  }

  self->_ignoreTouchesUntilAllTouchesEnded = v11;
  drawingTouch = self->_drawingTouch;
  self->_drawingTouch = 0;

LABEL_17:
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  if (!self->_isComposing)
  {
    [(ETCanvasView *)self clearCanvasAnimated:0];
  }

  [(ETCanvasView *)self _doodleEndedWithTouches:v5 cancelled:1];
}

- (void)_createSketchViewWithColor:(id)a3 time:(double)a4 message:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [ETGLSketchView alloc];
  [(ETCanvasView *)self bounds];
  v10 = [(ETGLSketchView *)v9 initWithFrame:?];
  currentSketchView = self->_currentSketchView;
  self->_currentSketchView = v10;

  if (self->_currentSketchView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = self->_currentSketchView;
      v15 = objc_loadWeakRetained(&self->_canvasDelegate);
      -[ETGLSketchView setUseFastVerticalWisp:](v14, "setUseFastVerticalWisp:", [v15 canvasViewShouldUseFastVerticalWisp:self]);
    }

    [(ETGLSketchView *)self->_currentSketchView setWispDelay:self->_wispDelay];
    [(ETGLSketchView *)self->_currentSketchView setMessageData:v8];
    [v8 setDelegate:self];
    [v8 setColor:v7];
    messageIdentifierToDoodleView = self->_messageIdentifierToDoodleView;
    v17 = self->_currentSketchView;
    v18 = [v8 identifier];
    [(NSMutableDictionary *)messageIdentifierToDoodleView setObject:v17 forKey:v18];

    v19 = self->_currentSketchView;
    if (self->_usesMediaAppearance)
    {
      [(ETCanvasView *)self insertSubview:v19 belowSubview:self->_sceneView];
    }

    else
    {
      [(ETCanvasView *)self addSubview:v19];
    }

    [(ETGLSketchView *)self->_currentSketchView layoutIfNeeded];
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&dword_248D00000, v20, OS_LOG_TYPE_INFO, "ERROR: Failed to allocate ETGLSketchView for message: %@", &v21, 0xCu);
    }
  }
}

- (void)handleTapAtX:(float)a3 Y:(float)a4 color:(id)a5 time:(double)a6 isRemote:(BOOL)a7
{
  v12 = a5;
  if (!a7)
  {
    v21 = v12;
    currentTaps = self->_currentTaps;
    if (!currentTaps)
    {
      goto LABEL_6;
    }

    if ([(ETTapMessage *)currentTaps reachedSizeLimit])
    {
      [(ETCanvasView *)self sendCurrentMessage];
    }

    if (!self->_currentTaps)
    {
LABEL_6:
      v14 = objc_alloc_init(ETTapMessage);
      v15 = self->_currentTaps;
      self->_currentTaps = v14;

      [(ETMessage *)self->_currentTaps setDelegate:self];
      [(ETMessage *)self->_currentTaps setColor:v21];
      [(ETMessage *)self->_currentTaps setParentMessage:self->_parentMessage];
      [(ETTapMessage *)self->_currentTaps preVisualizeInScene:self->_scene];
      v16 = self->_currentTaps;
      v17 = [(ETCanvasView *)self timeSource];
      [v17 elapsedTimeSinceStartOfMessage:self->_currentTaps];
      [(ETMessage *)v16 setStartDelay:?];
    }

    self->_lastActivityTimestamp = a6;
    [(SKScene *)self->_scene size];
    v19 = a3 / v18 + a3 / v18;
    [(SKScene *)self->_scene size];
    [(ETTapMessage *)self->_currentTaps addTapAtPoint:v21 time:v19 color:a4 / v20 + a4 / v20, a6];
    v12 = v21;
  }
}

- (void)handlePanAtX:(float)a3 Y:(float)a4 color:(id)a5 time:(double)a6 state:(int64_t)a7 isRemote:(BOOL)a8
{
  v41 = a5;
  if (a7 == 1)
  {
    [(ETGLSketchView *)self->_currentSketchView beginStrokeWithColor:v41];
  }

  self->_lastActivityTimestamp = a6;
  [(SKScene *)self->_scene size];
  v35 = v13;
  v36 = v12;
  UIRoundToViewScale();
  v15 = v14;
  v16 = a7 - 5;
  if ((a7 - 5) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [(UITouch *)self->_drawingTouch locationInNode:self->_scene];
    *&v17 = self->_lastPt.x - v17;
    *&v18 = self->_lastPt.y - v18;
    if (hypotf(*&v17, *&v18) < 3.0)
    {
      p_currentSketchView = &self->_currentSketchView;
LABEL_9:
      [(ETGLSketchView *)*p_currentSketchView didCompleteStroke];
      goto LABEL_10;
    }
  }

  v19.f64[0] = v36;
  v20 = vcvtq_f64_f32(__PAIR64__(LODWORD(a4), LODWORD(a3)));
  *&v19.f64[1] = v35;
  __asm { FMOV            V2.2D, #0.5 }

  v26 = vsubq_f64(vmulq_f64(v19, _Q2), vdupq_lane_s64(COERCE__INT64(v15 * fmax(v36 / 156.0, 1.0)), 0));
  v27 = vnegq_f64(v26);
  v28 = vbslq_s8(vcgtq_f64(v20, v26), v26, v20);
  p_currentSketchView = &self->_currentSketchView;
  currentSketchView = self->_currentSketchView;
  v40 = vcvtq_f64_f32(vcvt_f32_f64(vbslq_s8(vcgtq_f64(v28, v27), v28, v27)));
  [(SKScene *)self->_scene size];
  v38 = v31;
  [(SKScene *)self->_scene size];
  v32.f64[0] = v38;
  v32.f64[1] = v33;
  v34 = vdivq_f64(v40, v32);
  [(ETGLSketchView *)currentSketchView handleSketchAtPosition:vaddq_f64(v34, v34)];
  if (v16 >= 0xFFFFFFFFFFFFFFFELL && !a8)
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (void)handleDotAtX:(float)a3 Y:(float)a4 color:(id)a5 time:(double)a6 isRemote:(BOOL)a7
{
  if (!a7)
  {
    self->_lastActivityTimestamp = a6;
    [(ETGLSketchView *)self->_currentSketchView beginStrokeWithColor:a5];
    currentSketchView = self->_currentSketchView;
    [(SKScene *)self->_scene size];
    v13 = a3 / v12 + a3 / v12;
    [(SKScene *)self->_scene size];
    v15 = a4 / v14 + a4 / v14;

    [(ETGLSketchView *)currentSketchView handleTapAtPosition:v13, v15];
  }
}

- (void)_startSendMessageTimer
{
  v3 = [(ETCanvasView *)self canvasDelegate];
  v4 = [v3 canvasViewShouldSendWithTimer:self];

  if (v4)
  {
    [(NSTimer *)self->_sendMessageTimer invalidate];
    self->_sendMessageTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__sendMessageTimerFired selector:0 userInfo:0 repeats:2.0];

    MEMORY[0x2821F96F8]();
  }
}

- (void)_clearSendMessageTimer
{
  [(NSTimer *)self->_sendMessageTimer invalidate];
  sendMessageTimer = self->_sendMessageTimer;
  self->_sendMessageTimer = 0;
}

- (BOOL)_sendMessageTimerFired
{
  sendMessageTimer = self->_sendMessageTimer;
  self->_sendMessageTimer = 0;

  v4 = CFAbsoluteTimeGetCurrent() - self->_lastActivityTimestamp;
  if (v4 > 2.0)
  {
    [(ETCanvasView *)self sendCurrentMessage];
  }

  return v4 > 2.0;
}

- (void)_sendSketch
{
  v3 = [(ETGLSketchView *)self->_currentSketchView messageData];
  [(ETCanvasView *)self _endMessage:v3 withSend:1];

  if ([(ETGLSketchView *)self->_currentSketchView isPaused])
  {
    v4 = [(ETGLSketchView *)self->_currentSketchView messageData];
    [(ETCanvasView *)self _clearDoodleViewForMessage:v4];
  }

  else if (!self->_usesMediaAppearance)
  {
    [(ETCanvasView *)self _animateOutSketchView:self->_currentSketchView withCompletion:0];
  }

  currentSketchView = self->_currentSketchView;
  self->_currentSketchView = 0;

  self->_sketchDidReachSizeLimit = 0;
}

- (void)_sendTaps
{
  currentTaps = self->_currentTaps;
  if (currentTaps)
  {
    [(ETCanvasView *)self _endMessage:currentTaps withSend:1];
    v4 = self->_currentTaps;
    self->_currentTaps = 0;
  }
}

- (void)sendCurrentMessage
{
  [(ETCanvasView *)self _clearSendMessageTimer];
  if (self->_currentHeartbeat)
  {
    [(ETCanvasView *)self _sendHeartbeat];
  }

  if (self->_currentTaps)
  {
    [(ETCanvasView *)self _sendTaps];
  }

  if (self->_currentSketchView)
  {
    [(ETCanvasView *)self _sendSketch];
  }

  if (self->_currentKissMessage)
  {
    [(ETCanvasView *)self _sendKiss];
  }

  if (self->_currentAnger)
  {
    [(ETCanvasView *)self _sendAnger];
  }

  drawingTouch = self->_drawingTouch;
  self->_drawingTouch = 0;

  self->_lastActivityTimestamp = 0.0;
}

- (void)setCanComposeHeartbeat:(BOOL)a3
{
  if (self->_canComposeHeartbeat != a3)
  {
    self->_canComposeHeartbeat = a3;
    [(UILongPressGestureRecognizer *)self->_heartbeatRecognizer setEnabled:?];
  }
}

- (double)_angleOfRotationBetweenTwoFingers:(id)a3
{
  v4 = a3;
  [v4 locationOfTouch:0 inView:self];
  v6 = v5;
  v8 = v7;
  [v4 locationOfTouch:1 inView:self];
  v10 = v9;
  v12 = v11;

  if (v6 <= v10)
  {
    v13 = v6;
    v14 = v8;
    v6 = v10;
    v8 = v12;
  }

  else
  {
    v13 = v10;
    v14 = v12;
  }

  v15 = atan2(-(v14 - v8), v13 - v6);
  result = fmod(v15, 6.28318531);
  v17 = 3.14159265;
  if (result <= 3.14159265)
  {
    if (result >= 3.14159265)
    {
      return result;
    }
  }

  else
  {
    v17 = -3.14159265;
  }

  return result + v17;
}

- (CGPoint)_viewPointNormalizedInSceneSpace:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SKScene *)self->_scene size];
  v7 = v6;
  v9 = v8;
  [(SKScene *)self->_scene convertPointFromView:x, y];
  v11 = v10 / v7;
  v13 = v12 / v9;
  result.y = v13;
  result.x = v11;
  return result;
}

- (void)_heartbeatRecognized:(id)a3
{
  v14 = a3;
  if ([v14 state] == 1)
  {
    if (!self->_parentMessage)
    {
      if ([(ETCanvasView *)self _sketchInProgress]&& self->_drawingTouchMovedDistance < 20.0)
      {
        v4 = [(ETGLSketchView *)self->_currentSketchView messageData];
        [(ETCanvasView *)self _endMessage:v4 withSend:0];
      }

      if (!self->_parentMessage && self->_currentKissMessage)
      {
        [(ETCanvasView *)self _sendKiss];
      }
    }

    if ([(ETCanvasView *)self _canComposeExclusiveMessage])
    {
      if (self->_currentHeartbeat)
      {
        [(ETCanvasView *)self _sendHeartbeat];
      }

      [(ETCanvasView *)self _setIsComposingMessageOfType:2];
      [(ETCanvasView *)self _normalizedGesturePoint:v14];
      v6 = v5;
      v8 = v7;
      [(ETCanvasView *)self _angleOfRotationBetweenTwoFingers:v14];
      [(ETCanvasView *)self _showHeartbeatAtNormalizedPoint:v6 rotation:v8, v9];
      [v14 locationInView:self];
      self->_heartbeatStartCenter.x = v10;
      self->_heartbeatStartCenter.y = v11;
    }
  }

  else if ([v14 state] == 2)
  {
    if ([(ETCanvasView *)self isComposingHeartbeat])
    {
      WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
      [WeakRetained canvasView:self didUpdateComposingMessageType:self->_messageType];

      if (![(ETHeartbeatMessage *)self->_currentHeartbeat isBroken])
      {
        [v14 locationInView:self];
        if (v13 - self->_heartbeatStartCenter.y > 20.0)
        {
          [(ETHeartbeatMessage *)self->_currentHeartbeat breakHeart];
        }
      }
    }
  }

  else if (([v14 state] == 3 || objc_msgSend(v14, "state") == 4) && -[ETCanvasView isComposingHeartbeat](self, "isComposingHeartbeat"))
  {
    [(ETCanvasView *)self _sendHeartbeat];
  }
}

- (void)_sendKiss
{
  currentKissMessage = self->_currentKissMessage;
  if (currentKissMessage)
  {
    [(ETKissMessage *)currentKissMessage stopPlaying];
    [(ETCanvasView *)self _endMessage:self->_currentKissMessage withSend:1];
    v4 = self->_currentKissMessage;
    self->_currentKissMessage = 0;
  }
}

- (void)_sendHeartbeat
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(ETCanvasView *)self isComposingHeartbeat])
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(ETMessage *)self->_currentHeartbeat timeCreated];
    v5 = Current - v4;
    if (v5 > 10)
    {
      v5 = 10;
    }

    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    [(ETHeartbeatMessage *)self->_currentHeartbeat setDuration:v6];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        currentHeartbeat = self->_currentHeartbeat;
        v10 = 138412546;
        v11 = currentHeartbeat;
        v12 = 1024;
        v13 = v6 > 0.7;
        _os_log_impl(&dword_248D00000, v7, OS_LOG_TYPE_INFO, "Ending %@, will send: %d", &v10, 0x12u);
      }
    }

    v9 = self->_currentHeartbeat;
    [(ETCanvasView *)self _hideHeartbeat];
    [(ETCanvasView *)self _endMessage:v9 withSend:v6 > 0.7];
  }
}

- (void)_showHeartbeatAtNormalizedPoint:(CGPoint)a3 rotation:(double)a4
{
  y = a3.y;
  x = a3.x;
  v7 = objc_opt_new();
  currentHeartbeat = self->_currentHeartbeat;
  self->_currentHeartbeat = v7;

  [(ETHeartbeatMessage *)self->_currentHeartbeat setNormalizedCenter:x, y];
  objc_initWeak(&location, self->_currentHeartbeat);
  v9 = +[HeartRateStore sharedStore];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __57__ETCanvasView__showHeartbeatAtNormalizedPoint_rotation___block_invoke;
  v17 = &unk_278F7A298;
  objc_copyWeak(&v18, &location);
  [v9 recentHeartRateWithCompletion:&v14];

  [(ETMessage *)self->_currentHeartbeat setParentMessage:self->_parentMessage, v14, v15, v16, v17];
  [(ETHeartbeatMessage *)self->_currentHeartbeat startHeartbeat:self->_scene];
  v10 = self->_currentHeartbeat;
  v11 = [(ETCanvasView *)self timeSource];
  [v11 elapsedTimeSinceStartOfMessage:self->_currentHeartbeat];
  [(ETMessage *)v10 setStartDelay:?];

  v12 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__hideHeartbeatTimerFired selector:0 userInfo:0 repeats:10];
  heartbeatDurationTimer = self->_heartbeatDurationTimer;
  self->_heartbeatDurationTimer = v12;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __57__ETCanvasView__showHeartbeatAtNormalizedPoint_rotation___block_invoke(uint64_t a1, unint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v3 = a2;
  [WeakRetained setBeatsPerMinute:v3];
}

- (void)_hideHeartbeat
{
  [(NSTimer *)self->_heartbeatDurationTimer invalidate];
  heartbeatDurationTimer = self->_heartbeatDurationTimer;
  self->_heartbeatDurationTimer = 0;

  [(ETHeartbeatMessage *)self->_currentHeartbeat stopPlaying];
  currentHeartbeat = self->_currentHeartbeat;
  self->_currentHeartbeat = 0;
}

- (void)_hideHeartbeatTimerFired
{
  if ([(ETCanvasView *)self isComposingHeartbeat])
  {

    [(ETCanvasView *)self _sendHeartbeat];
  }
}

- (void)playTestStrokeWithColor:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = dispatch_time(0, (a4 * 0.3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ETCanvasView_playTestStrokeWithColor_duration___block_invoke;
  block[3] = &unk_278F7A2C0;
  block[4] = self;
  v8 = v6;
  v23 = v8;
  v24 = a4;
  v9 = MEMORY[0x277D85CD0];
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
  v10 = dispatch_time(0, (a4 * 0.6 * 1000000000.0));
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __49__ETCanvasView_playTestStrokeWithColor_duration___block_invoke_2;
  v20[3] = &unk_278F79FB0;
  v20[4] = self;
  v11 = v8;
  v21 = v11;
  dispatch_after(v10, v9, v20);

  v12 = dispatch_time(0, (a4 * 0.88 * 1000000000.0));
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__ETCanvasView_playTestStrokeWithColor_duration___block_invoke_3;
  v18[3] = &unk_278F79FB0;
  v18[4] = self;
  v13 = v11;
  v19 = v13;
  dispatch_after(v12, v9, v18);

  v14 = dispatch_time(0, (a4 * 1000000000.0));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__ETCanvasView_playTestStrokeWithColor_duration___block_invoke_4;
  v16[3] = &unk_278F79FB0;
  v16[4] = self;
  v17 = v13;
  v15 = v13;
  dispatch_after(v14, v9, v16);
}

uint64_t __49__ETCanvasView_playTestStrokeWithColor_duration___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 48);
  v4 = Current + v3 * -0.300000012;
  LODWORD(v3) = -1035468800;
  [*(a1 + 32) handlePanAtX:*(a1 + 40) Y:1 color:0 time:v3 state:-0.300000014 isRemote:v4];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  LODWORD(v7) = -30.0;

  return [v5 handlePanAtX:v6 Y:2 color:0 time:0.0 state:v7 isRemote:Current];
}

uint64_t __49__ETCanvasView_playTestStrokeWithColor_duration___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  Current = CFAbsoluteTimeGetCurrent();
  v3 = Current;
  LODWORD(Current) = 1112014848;
  LODWORD(v5) = 1109393408;

  return [v1 handlePanAtX:v2 Y:3 color:0 time:Current state:v5 isRemote:v3];
}

uint64_t __49__ETCanvasView_playTestStrokeWithColor_duration___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  Current = CFAbsoluteTimeGetCurrent();
  v3 = Current;
  LODWORD(v4) = 1110704128;
  LODWORD(Current) = -25.0;

  return [v1 handleDotAtX:v2 Y:0 color:Current time:v4 isRemote:v3];
}

uint64_t __49__ETCanvasView_playTestStrokeWithColor_duration___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  Current = CFAbsoluteTimeGetCurrent();
  v3 = Current;
  LODWORD(v4) = 1110704128;
  LODWORD(Current) = 25.0;

  return [v1 handleDotAtX:v2 Y:0 color:Current time:v4 isRemote:v3];
}

- (void)playMessage:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      scene = self->_scene;
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = scene;
      _os_log_impl(&dword_248D00000, v5, OS_LOG_TYPE_INFO, "Displaying message %@ in scene %@", &v9, 0x16u);
    }
  }

  if ([v4 messageType] == 1)
  {
    v7 = [v4 color];
    [(ETCanvasView *)self _createSketchViewWithColor:v7 time:v4 message:0.0];

    [(ETGLSketchView *)self->_currentSketchView setPlaying:1];
  }

  else if ([v4 messageType] != 8)
  {
    [v4 displayInScene:self->_scene];
  }

  [v4 setDelegate:self];
  [(ETCanvasView *)self setPaused:self->_setAlwaysPaused];
  [(ETCanvasView *)self _startCheckForIdleTimer];
  [(NSMutableSet *)self->_playingMessages addObject:v4];
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  [WeakRetained canvasView:self didBeginPlayingMessage:v4];
}

- (void)messageWillReachSizeLimit:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  [WeakRetained canvasViewWillReachComposingSizeLimit:self];

  self->_sketchDidReachSizeLimit = 1;
}

- (void)messageWillStopPlaying:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  [WeakRetained canvasView:self willEndPlayingMessage:v4];
}

- (void)messageDidStopPlaying:(id)a3
{
  v4 = a3;
  [(ETCanvasView *)self _clearDoodleViewForMessage:v4];
  [(NSMutableSet *)self->_playingMessages removeObject:v4];
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  [WeakRetained canvasView:self didEndPlayingMessage:v4];
}

- (void)setUsesMediaAppearance:(BOOL)a3
{
  if (self->_usesMediaAppearance != a3)
  {
    self->_usesMediaAppearance = a3;
    [(ETCanvasView *)self setPaused:0];
    sceneView = self->_sceneView;
    if (self->_usesMediaAppearance)
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v5 = ;
    [(DTSSceneView *)sceneView setBackgroundColor:v5];

    scene = self->_scene;
    if (self->_usesMediaAppearance)
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v7 = ;
    [(SKScene *)scene setBackgroundColor:v7];

    [(DTSSceneView *)self->_sceneView setAllowsTransparency:self->_usesMediaAppearance];
    [(DTSSceneView *)self->_sceneView setNeedsLayout];
    [(SKScene *)self->_scene _setNeedsUpdate];
    [(ETCanvasView *)self _startCheckForIdleTimer];
    LODWORD(v7) = self->_usesMediaAppearance;
    WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
    if (v7 == 1)
    {
      v9 = objc_opt_respondsToSelector();

      if ((v9 & 1) == 0)
      {
        return;
      }

      v11 = objc_loadWeakRetained(&self->_canvasDelegate);
      [v11 canvasViewDidStartMediaAppearance:self];
    }

    else
    {
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
        return;
      }

      v11 = objc_loadWeakRetained(&self->_canvasDelegate);
      [v11 canvasViewDidEndMediaAppearance:self];
    }
  }
}

- (void)willMoveToWindow:(id)a3
{
  drawingTouch = self->_drawingTouch;
  self->_drawingTouch = 0;

  self->_drawingTouchStartedStroke = 0;
  [(NSMutableSet *)self->_touchesDown removeAllObjects];
  self->_sketchDidReachSizeLimit = 0;
}

- (void)setForceTouchEnabled:(BOOL)a3
{
  if (self->_angerUsesForceTouch != a3)
  {
    self->_angerUsesForceTouch = a3;
    [(ETCanvasView *)self _configureAngerRecognizer];
  }
}

- (void)_configureAngerRecognizer
{
  if (self->_angerRecognizer)
  {
    [(ETCanvasView *)self removeGestureRecognizer:?];
  }

  if (self->_angerUsesForceTouch)
  {
    v3 = off_278F799D8;
  }

  else
  {
    v3 = 0x277D75708;
  }

  v4 = [objc_alloc(*v3) initWithTarget:self action:sel__angerRecognized_];
  angerRecognizer = self->_angerRecognizer;
  self->_angerRecognizer = v4;

  [(UILongPressGestureRecognizer *)self->_angerRecognizer setNumberOfTouchesRequired:1];
  [(UILongPressGestureRecognizer *)self->_angerRecognizer setMinimumPressDuration:0.2];
  [(UILongPressGestureRecognizer *)self->_angerRecognizer setDelegate:self];
  [(ETCanvasView *)self addGestureRecognizer:self->_angerRecognizer];
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_canvasDelegate);
    [v8 canvasView:self angerUsesForceTouch:self->_angerUsesForceTouch];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = [MEMORY[0x277D759A0] mainScreen];
  v4 = [v5 traitCollection];
  -[ETCanvasView setForceTouchEnabled:](self, "setForceTouchEnabled:", [v4 forceTouchCapability] == 2);
}

- (ETCanvasViewDelegate)canvasDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_canvasDelegate);

  return WeakRetained;
}

- (ETMessageTimeSource)timeSource
{
  WeakRetained = objc_loadWeakRetained(&self->_timeSource);

  return WeakRetained;
}

@end