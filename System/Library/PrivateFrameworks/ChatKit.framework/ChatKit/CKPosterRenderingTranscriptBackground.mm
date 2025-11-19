@interface CKPosterRenderingTranscriptBackground
+ (BOOL)shouldShowSalientContentRectangleDebugView;
- (BOOL)_currentBackgroundIsPhotos;
- (BOOL)_isRenderingVFXExtension;
- (BOOL)_shouldBeSendingEventsToBackground;
- (CGRect)didChangeKeyboardFrame;
- (CKPosterRenderingTranscriptBackground)initWithChannel:(id)a3 environment:(id)a4;
- (CKPosterRenderingTranscriptBackgroundBackgroundDelegate)backgroundDelegate;
- (UIEdgeInsets)posterRenderingTranscriptBackgroundView:(id)a3 preferredSafeAreaInsetsForProposedSafeAreaInsets:(UIEdgeInsets)a4;
- (double)luminance;
- (id)snapshotView;
- (int64_t)contentDerivedUserInterfaceStyle;
- (void)_requestVFXExtensionTransitionToActiveState:(BOOL)a3;
- (void)_sendEvent:(id)a3 metadata:(id)a4;
- (void)_updateSaliencyAndOcclusionRects;
- (void)backgroundIsScrolling:(BOOL)a3;
- (void)channelControllerWillUpdate;
- (void)didAddTapbackToChatItemWithGUID:(id)a3;
- (void)didRemoveTapbackFromChatItemWithGUID:(id)a3;
- (void)keyboardFrameDidChange:(CGRect)a3 accountingForSalientRectFrame:(CGRect)a4 duration:(float)a5 curve:(int64_t)a6 isVisible:(BOOL)a7;
- (void)keyboardWillHideFromFrame:(CGRect)a3 toFrame:(CGRect)a4 duration:(float)a5 curve:(int64_t)a6 isVisible:(BOOL)a7;
- (void)keyboardWillShowFromFrame:(CGRect)a3 toFrame:(CGRect)a4 duration:(float)a5 curve:(int64_t)a6 isVisible:(BOOL)a7;
- (void)loadView;
- (void)setNeedsPosterSaliencyAndOcclusionRectUpdate;
- (void)traitCollectionDidChange:(id)a3;
- (void)transcriptDockingStateDidChange:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKPosterRenderingTranscriptBackground

- (CKPosterRenderingTranscriptBackground)initWithChannel:(id)a3 environment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = CKPosterRenderingTranscriptBackground;
  v8 = [(CKPosterRenderingTranscriptBackground *)&v21 init];
  if (v8)
  {
    v9 = objc_alloc_init(_TtC7ChatKit24CKPosterRenderingContext);
    [(CKPosterRenderingTranscriptBackground *)v8 setLayoutEnvironment:v7];
    gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelViewController(v10);
    v12 = [objc_alloc(*(v11 + 168)) initWithChannel:v6 purpose:@"MessagesTranscriptBackground" context:v9];
    [(CKPosterRenderingTranscriptBackground *)v8 setChannelViewController:v12];

    v13 = objc_alloc_init(MEMORY[0x1E698E6D8]);
    [v13 setDuration:1.0];
    [v13 setDelay:2.0];
    v14 = [(CKPosterRenderingTranscriptBackground *)v8 channelViewController];
    [v14 setPosterTransitionAnimationSettings:v13];

    v15 = [_TtC7ChatKit31CKBackgroundMotionEventsManager alloc];
    v16 = [(CKPosterRenderingTranscriptBackground *)v8 channelViewController];
    v17 = [v16 motionEventsGenerator];
    v18 = [(CKPosterRenderingTranscriptBackground *)v8 channelViewController];
    v19 = [(CKBackgroundMotionEventsManager *)v15 initWithManagedMotionEventsGenerator:v17 viewController:v18 delegate:v8];
    [(CKPosterRenderingTranscriptBackground *)v8 setMotionEventsManager:v19];
  }

  return v8;
}

- (void)loadView
{
  v3 = objc_alloc_init(_TtC7ChatKit41CKPosterRenderingTranscriptBackgroundView);
  [(CKPosterRenderingTranscriptBackgroundView *)v3 setDelegate:self];
  [(CKPosterRenderingTranscriptBackground *)self setView:v3];
}

- (void)_sendEvent:(id)a3 metadata:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  gotLoadHelper_x8__OBJC_CLASS___PRRenderingEvent(v7);
  v9 = *(v8 + 848);
  v10 = a4;
  v11 = [[v9 alloc] initWithType:v6 metadata:v10];

  channelViewController = self->_channelViewController;
  v16 = 0;
  LOBYTE(v10) = [(PRUISPosterChannelViewController *)channelViewController addEvent:v11 outError:&v16];
  v13 = v16;
  if ((v10 & 1) == 0)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_channelViewController;
      *buf = 138412802;
      v18 = v6;
      v19 = 2048;
      v20 = v15;
      v21 = 2112;
      v22 = v13;
      _os_log_error_impl(&dword_19020E000, v14, OS_LOG_TYPE_ERROR, "Failed to send event of type %@ to channel view controller (%p) due to error: %@", buf, 0x20u);
    }
  }
}

- (void)transcriptDockingStateDidChange:(BOOL)a3
{
  v3 = a3;
  v15[2] = *MEMORY[0x1E69E9840];
  if ([(CKPosterRenderingTranscriptBackground *)self _shouldBeSendingEventsToBackground])
  {
    v14[0] = @"type";
    v14[1] = @"state";
    v15[0] = @"DockStateChanged";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v15[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = @"NO";
        if (v3)
        {
          v9 = @"YES";
        }

        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Sending DockStateChanged event with value %@", &v12, 0xCu);
      }
    }

    Helper_x8__PRRenderingEventTypeTap = gotLoadHelper_x8__PRRenderingEventTypeTap(v7);
    [(CKPosterRenderingTranscriptBackground *)self _sendEvent:**(v11 + 976) metadata:v6, Helper_x8__PRRenderingEventTypeTap];
  }
}

- (void)didAddTapbackToChatItemWithGUID:(id)a3
{
  v33[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CKPosterRenderingTranscriptBackground didAddTapbackToChatItemWithGUID:v6];
    }

    goto LABEL_6;
  }

  if ([(CKPosterRenderingTranscriptBackground *)self _shouldBeSendingEventsToBackground])
  {
    v5 = [(CKTranscriptBackgroundEnvironment *)self->_layoutEnvironment transcriptLayoutDelegate];
    v6 = [v5 transcriptBackground:self balloonAttributesForChatItemGuid:v4];

    v7 = MEMORY[0x1E696ACC8];
    v8 = [v6 bubblePath];
    v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

    v32[0] = @"type";
    v32[1] = @"id";
    v33[0] = @"TapbackAdded";
    v33[1] = v4;
    v32[2] = @"frame";
    v10 = MEMORY[0x1E696B098];
    v11 = [(CKTranscriptBackgroundEnvironment *)self->_layoutEnvironment transcriptLayoutDelegate];
    [v6 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(CKPosterRenderingTranscriptBackground *)self view];
    [v11 transcriptBackground:self convertRect:v20 toView:{v13, v15, v17, v19}];
    v31[0] = v21;
    v31[1] = v22;
    v31[2] = v23;
    v31[3] = v24;
    v25 = [v10 valueWithBytes:v31 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v33[2] = v25;
    v32[3] = @"hasBalloonShape";
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject hasBalloonShape](v6, "hasBalloonShape")}];
    v32[4] = @"bubblePath";
    v33[3] = v26;
    v33[4] = v9;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:5];

    Helper_x8__PRRenderingEventTypeTap = gotLoadHelper_x8__PRRenderingEventTypeTap(v28);
    [(CKPosterRenderingTranscriptBackground *)self _sendEvent:**(v30 + 976) metadata:v27, Helper_x8__PRRenderingEventTypeTap];

LABEL_6:
  }
}

- (void)didRemoveTapbackFromChatItemWithGUID:(id)a3
{
  v33[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CKPosterRenderingTranscriptBackground didRemoveTapbackFromChatItemWithGUID:v6];
    }

    goto LABEL_6;
  }

  if ([(CKPosterRenderingTranscriptBackground *)self _shouldBeSendingEventsToBackground])
  {
    v5 = [(CKTranscriptBackgroundEnvironment *)self->_layoutEnvironment transcriptLayoutDelegate];
    v6 = [v5 transcriptBackground:self balloonAttributesForChatItemGuid:v4];

    v7 = MEMORY[0x1E696ACC8];
    v8 = [v6 bubblePath];
    v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

    v32[0] = @"type";
    v32[1] = @"id";
    v33[0] = @"TapbackRemoved";
    v33[1] = v4;
    v32[2] = @"frame";
    v10 = MEMORY[0x1E696B098];
    v11 = [(CKTranscriptBackgroundEnvironment *)self->_layoutEnvironment transcriptLayoutDelegate];
    [v6 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(CKPosterRenderingTranscriptBackground *)self view];
    [v11 transcriptBackground:self convertRect:v20 toView:{v13, v15, v17, v19}];
    v31[0] = v21;
    v31[1] = v22;
    v31[2] = v23;
    v31[3] = v24;
    v25 = [v10 valueWithBytes:v31 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    v33[2] = v25;
    v32[3] = @"hasBalloonShape";
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[NSObject hasBalloonShape](v6, "hasBalloonShape")}];
    v32[4] = @"bubblePath";
    v33[3] = v26;
    v33[4] = v9;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:5];

    Helper_x8__PRRenderingEventTypeTap = gotLoadHelper_x8__PRRenderingEventTypeTap(v28);
    [(CKPosterRenderingTranscriptBackground *)self _sendEvent:**(v30 + 976) metadata:v27, Helper_x8__PRRenderingEventTypeTap];

LABEL_6:
  }
}

- (void)_requestVFXExtensionTransitionToActiveState:(BOOL)a3
{
  v3 = a3;
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(CKPosterRenderingTranscriptBackground *)self _isRenderingVFXExtension])
  {
    if (![(CKPosterRenderingTranscriptBackground *)self _shouldNeverBeSendingEventsToBackground])
    {
      v10[0] = @"type";
      v10[1] = @"active";
      v11[0] = @"UpdateActiveState";
      v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v11[1] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

      Helper_x8__PRRenderingEventTypeTap = gotLoadHelper_x8__PRRenderingEventTypeTap(v7);
      [(CKPosterRenderingTranscriptBackground *)self _sendEvent:**(v9 + 976) metadata:v6, Helper_x8__PRRenderingEventTypeTap];
    }
  }
}

- (void)keyboardFrameDidChange:(CGRect)a3 accountingForSalientRectFrame:(CGRect)a4 duration:(float)a5 curve:(int64_t)a6 isVisible:(BOOL)a7
{
  v7 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3.size.height;
  v14 = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  v45[8] = *MEMORY[0x1E69E9840];
  if ([(CKPosterRenderingTranscriptBackground *)self _shouldBeSendingEventsToBackground])
  {
    if (!-[CKPosterRenderingTranscriptBackground _currentBackgroundIsPhotos](self, "_currentBackgroundIsPhotos") || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isPhotoBackgroundKeyboardInteractionEnabled"), v18, v19))
    {
      v46.origin.x = v16;
      v46.origin.y = v15;
      v46.size.width = v14;
      v46.size.height = v13;
      if (!CGRectEqualToRect(self->_didChangeKeyboardFrame, v46))
      {
        v20 = [(PRUISPosterChannelViewController *)self->_channelViewController view];
        [v20 convertRect:0 fromView:{x, y, width, height}];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v45[0] = @"KeyboardFrameDidChange";
        v44[0] = @"type";
        v44[1] = @"isVisible";
        v29 = [MEMORY[0x1E696AD98] numberWithBool:v7];
        v45[1] = v29;
        v44[2] = @"frame";
        v43[0] = v22;
        v43[1] = v24;
        v43[2] = v26;
        v43[3] = v28;
        v30 = [MEMORY[0x1E696B098] valueWithBytes:v43 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v45[2] = v30;
        v44[3] = @"accountingForSalientRectFrame";
        v42[0] = v22;
        v42[1] = v24;
        v42[2] = v26;
        v42[3] = v28;
        v31 = [MEMORY[0x1E696B098] valueWithBytes:v42 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v45[3] = v31;
        v44[4] = @"inViewCoordinatesFrame";
        *v41 = v16;
        *&v41[1] = v15;
        *&v41[2] = v14;
        *&v41[3] = v13;
        v32 = [MEMORY[0x1E696B098] valueWithBytes:v41 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
        v45[4] = v32;
        v44[5] = @"duration";
        *&v33 = a5;
        v34 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
        v45[5] = v34;
        v44[6] = @"curve";
        v35 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
        v45[6] = v35;
        v44[7] = @"fromTapbackContext";
        v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_keyboardWasUpBeforeTapbackContext];
        v45[7] = v36;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:8];

        Helper_x8__PRRenderingEventTypeTap = gotLoadHelper_x8__PRRenderingEventTypeTap(v38);
        [(CKPosterRenderingTranscriptBackground *)self _sendEvent:**(v40 + 976) metadata:v37, Helper_x8__PRRenderingEventTypeTap];
        self->_didChangeKeyboardFrame.origin.x = v16;
        self->_didChangeKeyboardFrame.origin.y = v15;
        self->_didChangeKeyboardFrame.size.width = v14;
        self->_didChangeKeyboardFrame.size.height = v13;
      }
    }
  }
}

- (void)keyboardWillShowFromFrame:(CGRect)a3 toFrame:(CGRect)a4 duration:(float)a5 curve:(int64_t)a6 isVisible:(BOOL)a7
{
  v7 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3.size.height;
  v14 = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  v46[7] = *MEMORY[0x1E69E9840];
  if ([(CKPosterRenderingTranscriptBackground *)self _shouldBeSendingEventsToBackground])
  {
    if (!-[CKPosterRenderingTranscriptBackground _currentBackgroundIsPhotos](self, "_currentBackgroundIsPhotos") || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isPhotoBackgroundKeyboardInteractionEnabled"), v18, v19))
    {
      v46[0] = @"KeyboardWillShow";
      v45[0] = @"type";
      v45[1] = @"isVisible";
      v42 = [MEMORY[0x1E696AD98] numberWithBool:v7];
      v46[1] = v42;
      v45[2] = @"fromFrame";
      v20 = MEMORY[0x1E696B098];
      v21 = [(PRUISPosterChannelViewController *)self->_channelViewController view];
      [v21 convertRect:0 fromView:{v16, v15, v14, v13}];
      v44[0] = v22;
      v44[1] = v23;
      v44[2] = v24;
      v44[3] = v25;
      v26 = [v20 valueWithBytes:v44 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v46[2] = v26;
      v45[3] = @"toFrame";
      v27 = MEMORY[0x1E696B098];
      v28 = [(PRUISPosterChannelViewController *)self->_channelViewController view];
      [v28 convertRect:0 fromView:{x, y, width, height}];
      v43[0] = v29;
      v43[1] = v30;
      v43[2] = v31;
      v43[3] = v32;
      v33 = [v27 valueWithBytes:v43 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v46[3] = v33;
      v45[4] = @"duration";
      *&v34 = a5;
      v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
      v46[4] = v35;
      v45[5] = @"curve";
      v36 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
      v46[5] = v36;
      v45[6] = @"fromTapbackContext";
      v37 = [MEMORY[0x1E696AD98] numberWithBool:self->_keyboardWasUpBeforeTapbackContext];
      v46[6] = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:7];

      Helper_x8__PRRenderingEventTypeTap = gotLoadHelper_x8__PRRenderingEventTypeTap(v39);
      [(CKPosterRenderingTranscriptBackground *)self _sendEvent:**(v41 + 976) metadata:v38, Helper_x8__PRRenderingEventTypeTap];
      self->_keyboardWasUpBeforeTapbackContext = 0;
    }
  }
}

- (void)keyboardWillHideFromFrame:(CGRect)a3 toFrame:(CGRect)a4 duration:(float)a5 curve:(int64_t)a6 isVisible:(BOOL)a7
{
  v7 = a7;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3.size.height;
  v14 = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  v46[7] = *MEMORY[0x1E69E9840];
  if ([(CKPosterRenderingTranscriptBackground *)self _shouldBeSendingEventsToBackground])
  {
    if (!-[CKPosterRenderingTranscriptBackground _currentBackgroundIsPhotos](self, "_currentBackgroundIsPhotos") || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isPhotoBackgroundKeyboardInteractionEnabled"), v18, v19))
    {
      v46[0] = @"KeyboardWillHide";
      v45[0] = @"type";
      v45[1] = @"isVisible";
      v20 = [MEMORY[0x1E696AD98] numberWithBool:v7];
      v46[1] = v20;
      v45[2] = @"fromFrame";
      v21 = MEMORY[0x1E696B098];
      v22 = [(PRUISPosterChannelViewController *)self->_channelViewController view];
      [v22 convertRect:0 fromView:{v16, v15, v14, v13}];
      v44[0] = v23;
      v44[1] = v24;
      v44[2] = v25;
      v44[3] = v26;
      v27 = [v21 valueWithBytes:v44 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v46[2] = v27;
      v45[3] = @"toFrame";
      v28 = MEMORY[0x1E696B098];
      v29 = [(PRUISPosterChannelViewController *)self->_channelViewController view];
      [v29 convertRect:0 fromView:{x, y, width, height}];
      v43[0] = v30;
      v43[1] = v31;
      v43[2] = v32;
      v43[3] = v33;
      v34 = [v28 valueWithBytes:v43 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v46[3] = v34;
      v45[4] = @"duration";
      *&v35 = a5;
      v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
      v46[4] = v36;
      v45[5] = @"curve";
      v37 = [MEMORY[0x1E696AD98] numberWithInteger:a6];
      v46[5] = v37;
      v45[6] = @"fromTapbackContext";
      v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_keyboardWasUpBeforeTapbackContext];
      v46[6] = v38;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:7];

      Helper_x8__PRRenderingEventTypeTap = gotLoadHelper_x8__PRRenderingEventTypeTap(v40);
      [(CKPosterRenderingTranscriptBackground *)self _sendEvent:**(v42 + 976) metadata:v39, Helper_x8__PRRenderingEventTypeTap];
    }
  }
}

- (void)backgroundIsScrolling:(BOOL)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"type";
  v9[1] = @"isScrolling";
  v10[0] = @"IsScrolling";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  Helper_x8__PRRenderingEventTypeTap = gotLoadHelper_x8__PRRenderingEventTypeTap(v6);
  [(CKPosterRenderingTranscriptBackground *)self _sendEvent:**(v8 + 976) metadata:v5, Helper_x8__PRRenderingEventTypeTap];
}

- (void)viewDidLayoutSubviews
{
  v20.receiver = self;
  v20.super_class = CKPosterRenderingTranscriptBackground;
  [(CKPosterRenderingTranscriptBackground *)&v20 viewDidLayoutSubviews];
  [(CKPosterRenderingTranscriptBackground *)self _updateSaliencyAndOcclusionRects];
  v3 = [(CKPosterRenderingTranscriptBackground *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKPosterRenderingTranscriptBackground *)self backgroundExtensionView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(CKPosterRenderingTranscriptBackground *)self channelViewController];
  v14 = [v13 view];
  v15 = [(CKPosterRenderingTranscriptBackground *)self backgroundExtensionContainerView];
  [v15 bounds];
  [v14 setFrame:?];

  if ([objc_opt_class() shouldShowSalientContentRectangleDebugView])
  {
    if (!self->_salientContentRectangleDebugView)
    {
      v16 = objc_opt_new();
      salientContentRectangleDebugView = self->_salientContentRectangleDebugView;
      self->_salientContentRectangleDebugView = v16;

      [(CKSalientContentRectangleDebugView *)self->_salientContentRectangleDebugView setUserInteractionEnabled:0];
      v18 = [(CKPosterRenderingTranscriptBackground *)self view];
      [v18 addSubview:self->_salientContentRectangleDebugView];
    }

    v19 = [(CKPosterRenderingTranscriptBackground *)self view];
    [v19 bounds];
    [(CKSalientContentRectangleDebugView *)self->_salientContentRectangleDebugView setFrame:?];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKPosterRenderingTranscriptBackground;
  [(CKPosterRenderingTranscriptBackground *)&v4 traitCollectionDidChange:a3];
  [(CKPosterRenderingTranscriptBackground *)self setNeedsPosterSaliencyAndOcclusionRectUpdate];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = CKPosterRenderingTranscriptBackground;
  [(CKPosterRenderingTranscriptBackground *)&v19 viewDidLoad];
  v3 = [(CKPosterRenderingTranscriptBackground *)self channelViewController];
  [(CKPosterRenderingTranscriptBackground *)self addChildViewController:v3];

  v4 = objc_alloc(MEMORY[0x1E69DC6F0]);
  v5 = [(CKPosterRenderingTranscriptBackground *)self view];
  [v5 bounds];
  v6 = [v4 initWithFrame:?];
  [(CKPosterRenderingTranscriptBackground *)self setBackgroundExtensionView:v6];

  v7 = objc_alloc(MEMORY[0x1E69DD250]);
  v8 = [(CKPosterRenderingTranscriptBackground *)self view];
  [v8 bounds];
  v9 = [v7 initWithFrame:?];
  [(CKPosterRenderingTranscriptBackground *)self setBackgroundExtensionContainerView:v9];

  v10 = [(CKPosterRenderingTranscriptBackground *)self backgroundExtensionContainerView];
  v11 = [(CKPosterRenderingTranscriptBackground *)self channelViewController];
  v12 = [v11 view];
  [v10 addSubview:v12];

  v13 = [(CKPosterRenderingTranscriptBackground *)self backgroundExtensionContainerView];
  v14 = [(CKPosterRenderingTranscriptBackground *)self backgroundExtensionView];
  [v14 setContentView:v13];

  v15 = [(CKPosterRenderingTranscriptBackground *)self backgroundExtensionContainerView];
  [v15 setClipsToBounds:1];

  v16 = [(CKPosterRenderingTranscriptBackground *)self view];
  v17 = [(CKPosterRenderingTranscriptBackground *)self backgroundExtensionView];
  [v16 addSubview:v17];

  v18 = [(CKPosterRenderingTranscriptBackground *)self channelViewController];
  [v18 didMoveToParentViewController:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKPosterRenderingTranscriptBackground;
  [(CKPosterRenderingTranscriptBackground *)&v4 viewDidAppear:a3];
  [(CKBackgroundMotionEventsManager *)self->_motionEventsManager configureIfNeeded];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKPosterRenderingTranscriptBackground;
  [(CKPosterRenderingTranscriptBackground *)&v4 viewDidDisappear:a3];
  [(CKBackgroundMotionEventsManager *)self->_motionEventsManager stopSendingMotionEvents];
}

- (id)snapshotView
{
  [(CKPosterRenderingTranscriptBackground *)self pauseBackgroundAnimationsIfNeeded];
  v3 = [(CKPosterRenderingTranscriptBackground *)self view];
  v4 = [v3 snapshotViewAfterScreenUpdates:0];

  [(CKPosterRenderingTranscriptBackground *)self resumeBackgroundAnimationsIfNeeded];

  return v4;
}

- (double)luminance
{
  v2 = [(PRUISPosterChannelViewController *)self->_channelViewController channel];
  v3 = [v2 posterConfiguration];

  [CKPRSPosterConfiguration ck_luminanceInConfiguration:v3];
  v5 = v4;

  return v5;
}

- (int64_t)contentDerivedUserInterfaceStyle
{
  [(CKPosterRenderingTranscriptBackground *)self luminance];
  v3 = v2;
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 contentDerivedUserInterfaceStyleForLuminance:v3];

  return v5;
}

+ (BOOL)shouldShowSalientContentRectangleDebugView
{
  if (shouldShowSalientContentRectangleDebugView_onceToken != -1)
  {
    +[CKPosterRenderingTranscriptBackground shouldShowSalientContentRectangleDebugView];
  }

  return shouldShowSalientContentRectangleDebugView_result;
}

void __83__CKPosterRenderingTranscriptBackground_shouldShowSalientContentRectangleDebugView__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  shouldShowSalientContentRectangleDebugView_result = [v0 BOOLForKey:@"TranscriptBackgroundsShowSalientContentRectangle"];
}

- (void)_updateSaliencyAndOcclusionRects
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_backgroundDelegate);
    [v4 salientTranscriptBackgroundRectForPosterRenderingTranscriptBackground:self];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if ([objc_opt_class() shouldShowSalientContentRectangleDebugView])
    {
      [(CKSalientContentRectangleDebugView *)self->_salientContentRectangleDebugView setSalientContentRectangle:v6, v8, v10, v12];
    }

    v13 = [(CKPosterRenderingTranscriptBackground *)self view];
    v14 = [(CKPosterRenderingTranscriptBackground *)self backgroundExtensionContainerView];
    [v13 convertRect:v14 toView:{v6, v8, v10, v12}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [(PRUISPosterChannelViewController *)self->_channelViewController setSalientContentRectangle:v16, v18, v20, v22];
    if (![(CKPosterRenderingTranscriptBackground *)self _currentBackgroundIsPhotos])
    {
      v23 = objc_loadWeakRetained(&self->_backgroundDelegate);
      v24 = [v23 occlusionRectSetForPosterRenderingTranscriptBackground:self];

      [(PRUISPosterChannelViewController *)self->_channelViewController setContentOcclusionRectangles:v24];
    }
  }
}

- (void)setNeedsPosterSaliencyAndOcclusionRectUpdate
{
  v2 = [(CKPosterRenderingTranscriptBackground *)self view];
  [v2 setNeedsLayout];
}

- (BOOL)_isRenderingVFXExtension
{
  v2 = [(PRUISPosterChannelViewController *)self->_channelViewController channel];
  v3 = [v2 posterConfiguration];

  if (v3)
  {
    v4 = [v3 providerBundleIdentifier];
    if ([v4 isEqualToString:@"com.apple.transcriptBackgroundPoster.DynamicExtension"])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 isEqualToString:@"com.apple.transcriptBackgroundPoster.GradientExtension"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldBeSendingEventsToBackground
{
  if ([(CKPosterRenderingTranscriptBackground *)self _shouldNeverBeSendingEventsToBackground])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(CKPosterRenderingTranscriptBackground *)self traitCollection];
    v5 = v4;
    if (v4 && ((v6 = [v4 activeAppearance], v6 == 1) || v6 == -1))
    {
      v7 = [(CKPosterRenderingTranscriptBackground *)self view];
      v8 = [v7 window];
      v9 = [v8 windowScene];

      if (v9)
      {
        v10 = [v9 activationState];
        if ((v10 + 1) <= 3)
        {
          v3 = 2u >> ((v10 + 1) & 0xF);
        }

        else
        {
          v3 = 0;
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

- (BOOL)_currentBackgroundIsPhotos
{
  v3 = [(CKPosterRenderingTranscriptBackground *)self channelViewController];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CKPosterRenderingTranscriptBackground *)self channelViewController];
  v5 = [v4 channel];
  v6 = [v5 posterConfiguration];
  v7 = [v6 providerBundleIdentifier];

  LOBYTE(v4) = [v7 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
  return v4;
}

- (void)channelControllerWillUpdate
{
  v3 = [(CKPosterRenderingTranscriptBackground *)self _currentBackgroundIsPhotos];

  [(CKPosterRenderingTranscriptBackground *)self setPreviousBackgroundWasPhotos:v3];
}

- (UIEdgeInsets)posterRenderingTranscriptBackgroundView:(id)a3 preferredSafeAreaInsetsForProposedSafeAreaInsets:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  if (![(CKPosterRenderingTranscriptBackground *)self _currentBackgroundIsPhotos]&& ![(CKPosterRenderingTranscriptBackground *)self previousBackgroundWasPhotos])
  {
    top = *MEMORY[0x1E69DDCE0];
    left = *(MEMORY[0x1E69DDCE0] + 8);
    bottom = *(MEMORY[0x1E69DDCE0] + 16);
    right = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v9 = top;
  v10 = left;
  v11 = bottom;
  v12 = right;
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (CKPosterRenderingTranscriptBackgroundBackgroundDelegate)backgroundDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundDelegate);

  return WeakRetained;
}

- (CGRect)didChangeKeyboardFrame
{
  x = self->_didChangeKeyboardFrame.origin.x;
  y = self->_didChangeKeyboardFrame.origin.y;
  width = self->_didChangeKeyboardFrame.size.width;
  height = self->_didChangeKeyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end