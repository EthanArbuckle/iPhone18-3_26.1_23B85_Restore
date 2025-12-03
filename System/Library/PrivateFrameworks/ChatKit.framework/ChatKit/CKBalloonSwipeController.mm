@interface CKBalloonSwipeController
- (CKSwipeActionIndicator)replyIndicator;
- (CKTranscriptBalloonCell)cell;
- (double)initialIndicatorX;
- (id)initForCell:(id)cell swipeCompletionHandler:(id)handler swipeChangedHandler:(id)changedHandler;
- (void)_beginReplyWithSwipeVelocity:(CGPoint)velocity;
- (void)_doPulseAnimationWithHaptic:(BOOL)haptic;
- (void)_gestureBegan:(id)began forCell:(id)cell;
- (void)_gestureChanged:(id)changed forCell:(id)cell;
- (void)_gestureFinished:(id)finished forCell:(id)cell;
- (void)_playHaptic;
- (void)_swipeValueChanged:(double)changed;
- (void)prepareForReuse;
- (void)swipeToReplyGestureHandler:(id)handler;
@end

@implementation CKBalloonSwipeController

- (id)initForCell:(id)cell swipeCompletionHandler:(id)handler swipeChangedHandler:(id)changedHandler
{
  cellCopy = cell;
  handlerCopy = handler;
  changedHandlerCopy = changedHandler;
  v18.receiver = self;
  v18.super_class = CKBalloonSwipeController;
  v11 = [(CKBalloonSwipeController *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_cell, cellCopy);
    v13 = _Block_copy(handlerCopy);
    onSwipeCompletion = v12->_onSwipeCompletion;
    v12->_onSwipeCompletion = v13;

    v15 = _Block_copy(changedHandlerCopy);
    onSwipeChanged = v12->_onSwipeChanged;
    v12->_onSwipeChanged = v15;

    v12->_needsReplyIndicatorRepositioning = 1;
  }

  return v12;
}

- (CKSwipeActionIndicator)replyIndicator
{
  balloonView = [(CKBalloonSwipeController *)self balloonView];
  traitCollection = [balloonView traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  if (self->_wasBackgroundActive != isTranscriptBackgroundActive)
  {
    self->_wasBackgroundActive = isTranscriptBackgroundActive;
    [(CKSwipeActionIndicator *)self->_replyIndicator removeFromSuperview];
    replyIndicator = self->_replyIndicator;
    self->_replyIndicator = 0;

    self->_needsReplyIndicatorRepositioning = 1;
  }

  if (!self->_replyIndicator)
  {
    if (isTranscriptBackgroundActive)
    {
      +[CKSwipeActionIndicator generateMaterialReplyIndicator];
    }

    else
    {
      +[CKSwipeActionIndicator generateReplyIndicator];
    }
    v7 = ;
    [(CKSwipeActionIndicator *)v7 updateAlpha:0.0];
    cell = [(CKBalloonSwipeController *)self cell];
    contentView = [cell contentView];
    [contentView addSubview:v7];

    cell2 = [(CKBalloonSwipeController *)self cell];
    contentView2 = [cell2 contentView];
    [contentView2 sendSubviewToBack:v7];

    v12 = self->_replyIndicator;
    self->_replyIndicator = v7;
  }

  if (self->_needsReplyIndicatorRepositioning)
  {
    balloonView2 = [(CKBalloonSwipeController *)self balloonView];
    [balloonView2 frame];
    [(CKBalloonSwipeController *)self setInitialBalloonX:CGRectGetMinX(v26)];

    [(CKBalloonSwipeController *)self initialIndicatorX];
    v15 = v14;
    balloonView3 = [(CKBalloonSwipeController *)self balloonView];
    [balloonView3 frame];
    MidY = CGRectGetMidY(v27);
    [(CKSwipeActionIndicator *)self->_replyIndicator preferredSize];
    v19 = MidY + v18 * -0.5;

    [(CKSwipeActionIndicator *)self->_replyIndicator setTransformForScale:1.0 horizontalTranslation:0.0];
    [(CKSwipeActionIndicator *)self->_replyIndicator preferredSize];
    v21 = v20;
    [(CKSwipeActionIndicator *)self->_replyIndicator preferredSize];
    [(CKSwipeActionIndicator *)self->_replyIndicator setFrame:v15, v19, v21, v22];
    self->_needsReplyIndicatorRepositioning = 0;
  }

  v23 = self->_replyIndicator;

  return v23;
}

- (double)initialIndicatorX
{
  cell = [(CKBalloonSwipeController *)self cell];
  orientation = [cell orientation];

  if (orientation)
  {

    [(CKBalloonSwipeController *)self initialBalloonX];
  }

  else
  {
    cell2 = [(CKBalloonSwipeController *)self cell];
    [cell2 associatedItemOffset];
    v8 = v7;

    [(CKBalloonSwipeController *)self initialBalloonX];
    v10 = v9;
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 balloonMaskTailWidth];
    v13 = v10 + v12 - v8;

    return v13;
  }

  return result;
}

- (void)swipeToReplyGestureHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  cell = [(CKBalloonSwipeController *)self cell];

  if (cell)
  {
    state = [handlerCopy state];
    if ((state - 3) >= 3)
    {
      if (state == 2)
      {
        cell2 = [(CKBalloonSwipeController *)self cell];
        [(CKBalloonSwipeController *)self _gestureChanged:handlerCopy forCell:cell2];
      }

      else if (state == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            cell3 = [(CKBalloonSwipeController *)self cell];
            cell4 = [(CKBalloonSwipeController *)self cell];
            balloonView = [cell4 balloonView];
            v19 = 134218240;
            v20 = cell3;
            v21 = 2048;
            v22 = balloonView;
            _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "CKBalloonSwipeController detected begin swipe on balloon <%p> in cell <%p>.", &v19, 0x16u);
          }
        }

        cell5 = [(CKBalloonSwipeController *)self cell];
        [(CKBalloonSwipeController *)self _gestureBegan:handlerCopy forCell:cell5];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          cell6 = [(CKBalloonSwipeController *)self cell];
          cell7 = [(CKBalloonSwipeController *)self cell];
          balloonView2 = [cell7 balloonView];
          v19 = 134218240;
          v20 = cell6;
          v21 = 2048;
          v22 = balloonView2;
          _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "CKBalloonSwipeController detected end swipe on balloon <%p> in cell <%p>.", &v19, 0x16u);
        }
      }

      cell8 = [(CKBalloonSwipeController *)self cell];
      [(CKBalloonSwipeController *)self _gestureFinished:handlerCopy forCell:cell8];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "CKBalloonSwipeController's cell was deallocated. Gesture is now a no-op.", &v19, 2u);
    }
  }
}

- (void)_gestureBegan:(id)began forCell:(id)cell
{
  [(CKBalloonSwipeController *)self setIsGestureCommittedToAction:0, cell];
  replyIndicator = [(CKBalloonSwipeController *)self replyIndicator];
  [replyIndicator updateAlpha:0.0];

  replyIndicator2 = [(CKBalloonSwipeController *)self replyIndicator];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 initialReplyIndicatorScale];
  v8 = v7;
  replyIndicator3 = [(CKBalloonSwipeController *)self replyIndicator];
  [replyIndicator3 currentHorizontalTranslation];
  [replyIndicator2 setTransformForScale:v8 horizontalTranslation:v10];
}

- (void)_gestureChanged:(id)changed forCell:(id)cell
{
  cellCopy = cell;
  changedCopy = changed;
  contentView = [cellCopy contentView];
  [changedCopy velocityInView:contentView];
  v10 = v9;

  contentView2 = [cellCopy contentView];

  [changedCopy translationInView:contentView2];
  v13 = v12;

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 swipeToReplyShowIndicatorThreshold];
  v16 = v15;

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 swipeToReplyConfirmThreshold];
  v19 = v18;

  if (v13 >= v19)
  {
    v13 = v19 * (log10(v13 / v19) * 0.7 + 1.0);
  }

  v20 = 0.0;
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  [(CKBalloonSwipeController *)self setOffsetDelta:v13];
  [(CKBalloonSwipeController *)self _swipeValueChanged:v13];
  if (![(CKBalloonSwipeController *)self isGestureCommittedToAction])
  {
    v21 = fmax(v13 - v16, 0.0) / (v19 - v16);
    v22 = fmin(fmax(v21, 0.0), 1.0);
    cell = [(CKBalloonSwipeController *)self cell];
    orientation = [cell orientation];

    if (orientation == 2)
    {
      v25 = +[CKUIBehavior sharedBehaviors];
      [v25 replyToSelfButtonOffset];
      v20 = 0.0 - v26;
    }

    v27 = +[CKUIBehavior sharedBehaviors];
    [v27 initialReplyIndicatorScale];
    v29 = v28;
    v30 = +[CKUIBehavior sharedBehaviors];
    [v30 finalReplyIndicatorScale];
    v32 = v29 + (v31 - v29) * v22;

    v33 = +[CKUIBehavior sharedBehaviors];
    [v33 initialReplyIndicatorBlurRadius];
    v35 = v34 + (0.0 - v34) * v22;

    [(CKSwipeActionIndicator *)self->_replyIndicator setTransformForScale:v32 horizontalTranslation:v20 * v22 + 0.0];
    [(CKSwipeActionIndicator *)self->_replyIndicator setBlurRadius:v35];
    replyIndicator = [(CKBalloonSwipeController *)self replyIndicator];
    v37 = replyIndicator;
    if (v21 == 0.0)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = v22;
    }

    [replyIndicator updateAlpha:v38];
  }

  if (v13 <= v19 || v10 <= 0.0 || [(CKBalloonSwipeController *)self isGestureCommittedToAction])
  {
    if ([(CKBalloonSwipeController *)self isGestureCommittedToAction]&& v13 < v19 && v10 < 0.0)
    {
      [(CKBalloonSwipeController *)self _playHaptic];

      [(CKBalloonSwipeController *)self setIsGestureCommittedToAction:0];
    }
  }

  else
  {
    [(CKBalloonSwipeController *)self setIsGestureCommittedToAction:1];

    [(CKBalloonSwipeController *)self _doPulseAnimationWithHaptic:1];
  }
}

- (void)_gestureFinished:(id)finished forCell:(id)cell
{
  finishedCopy = finished;
  cellCopy = cell;
  contentView = [cellCopy contentView];
  [finishedCopy velocityInView:contentView];
  v10 = v9;
  v12 = v11;

  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 replyIndicatorResetAnimationDuration];
  v15 = v14;

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __53__CKBalloonSwipeController__gestureFinished_forCell___block_invoke;
  v31[3] = &unk_1E72EBA18;
  v31[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v31 options:0 animations:v15 completion:0.0];
  LODWORD(v13) = [(CKBalloonSwipeController *)self isGestureCommittedToAction];
  v16 = IMOSLoggingEnabled();
  if (v13)
  {
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "CKBalloonSwipeController detected full swipe on release and will show reply overlay.", &buf, 2u);
      }
    }

    [(CKBalloonSwipeController *)self _beginReplyWithSwipeVelocity:v10, v12];
  }

  else if (v16)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "CKBalloonSwipeController did not detect full swipe on release. No further action taken.", &buf, 2u);
    }
  }

  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 balloonResetAnimationDuration];
  v21 = v20;

  [(CKBalloonSwipeController *)self initialBalloonX];
  v23 = v22;
  objc_initWeak(&buf, self);
  v24 = MEMORY[0x1E69DD250];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __53__CKBalloonSwipeController__gestureFinished_forCell___block_invoke_203;
  v28 = &unk_1E72F13B8;
  objc_copyWeak(v29, &buf);
  v29[1] = v23;
  [v24 animateWithDuration:0x20000 delay:&v25 options:0 animations:v21 completion:0.0];
  [(CKBalloonSwipeController *)self setIsGestureCommittedToAction:0, v25, v26, v27, v28];
  objc_destroyWeak(v29);
  objc_destroyWeak(&buf);
}

void __53__CKBalloonSwipeController__gestureFinished_forCell___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) replyIndicator];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 initialReplyIndicatorScale];
  v5 = v4;
  v6 = [*(a1 + 32) replyIndicator];
  [v6 currentHorizontalTranslation];
  [v2 setTransformForScale:v5 horizontalTranslation:v7];

  v8 = [*(a1 + 32) replyIndicator];
  [v8 updateAlpha:0.0];
}

void __53__CKBalloonSwipeController__gestureFinished_forCell___block_invoke_203(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained balloonView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = *(a1 + 40);
  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 balloonView];
  [v12 setFrame:{v10, v5, v7, v9}];

  v13 = objc_loadWeakRetained((a1 + 32));
  v16 = [v13 replyIndicator];

  [v16 updateAlpha:0.0];
  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 setOffsetDelta:0.0];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 _swipeValueChanged:0.0];
}

- (void)_doPulseAnimationWithHaptic:(BOOL)haptic
{
  hapticCopy = haptic;
  v5 = MEMORY[0x1E69DD250];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 replyIndicatorPulseAnimationDuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__CKBalloonSwipeController__doPulseAnimationWithHaptic___block_invoke;
  v12[3] = &unk_1E72EBA18;
  v12[4] = self;
  [v5 animateKeyframesWithDuration:4 delay:v12 options:0 animations:? completion:?];

  if (hapticCopy)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 replyIndicatorPulseAnimationDuration];
    v9 = v8 * 0.25;

    v10 = dispatch_time(0, (v9 * 1000000000.0));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__CKBalloonSwipeController__doPulseAnimationWithHaptic___block_invoke_4;
    v11[3] = &unk_1E72EBA18;
    v11[4] = self;
    dispatch_after(v10, MEMORY[0x1E69E96A0], v11);
  }
}

uint64_t __56__CKBalloonSwipeController__doPulseAnimationWithHaptic___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__CKBalloonSwipeController__doPulseAnimationWithHaptic___block_invoke_2;
  v4[3] = &unk_1E72EBA18;
  v4[4] = *(a1 + 32);
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.25];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CKBalloonSwipeController__doPulseAnimationWithHaptic___block_invoke_3;
  v3[3] = &unk_1E72EBA18;
  v3[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v3 relativeDuration:0.25 animations:0.75];
}

void __56__CKBalloonSwipeController__doPulseAnimationWithHaptic___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) replyIndicator];
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 maxPulseReplyIndicatorScale];
  v4 = v3;
  v5 = [*(a1 + 32) replyIndicator];
  [v5 currentHorizontalTranslation];
  [v7 setTransformForScale:v4 horizontalTranslation:v6];
}

void __56__CKBalloonSwipeController__doPulseAnimationWithHaptic___block_invoke_3(uint64_t a1)
{
  v7 = [*(a1 + 32) replyIndicator];
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 finalReplyIndicatorScale];
  v4 = v3;
  v5 = [*(a1 + 32) replyIndicator];
  [v5 currentHorizontalTranslation];
  [v7 setTransformForScale:v4 horizontalTranslation:v6];
}

- (void)prepareForReuse
{
  v11 = *MEMORY[0x1E69E9840];
  [(CKBalloonSwipeController *)self setIsGestureCommittedToAction:0];
  [(CKSwipeActionIndicator *)self->_replyIndicator setTransformForScale:1.0 horizontalTranslation:0.0];
  [(CKBalloonSwipeController *)self setNeedsReplyIndicatorRepositioning:1];
  [(CKBalloonSwipeController *)self offsetDelta];
  if (v3 > 0.1 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      cell = [(CKBalloonSwipeController *)self cell];
      [(CKBalloonSwipeController *)self offsetDelta];
      v7 = 134218240;
      v8 = cell;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "CKBalloonSwipeController hit prepareForReuse for cell <%p> but had a non-zero offset {%g}.", &v7, 0x16u);
    }
  }
}

- (void)_beginReplyWithSwipeVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  onSwipeCompletion = [(CKBalloonSwipeController *)self onSwipeCompletion];

  if (onSwipeCompletion)
  {
    onSwipeCompletion2 = [(CKBalloonSwipeController *)self onSwipeCompletion];
    onSwipeCompletion2[2](self->_offsetDelta, x, y);
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CKBalloonSwipeController _beginReplyWithSwipeVelocity:v7];
    }
  }
}

- (void)_swipeValueChanged:(double)changed
{
  onSwipeChanged = [(CKBalloonSwipeController *)self onSwipeChanged];

  if (onSwipeChanged)
  {
    onSwipeChanged2 = [(CKBalloonSwipeController *)self onSwipeChanged];
    onSwipeChanged2[2](changed);
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CKBalloonSwipeController _swipeValueChanged:v6];
    }
  }
}

- (void)_playHaptic
{
  v2 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:3];
  [v2 impactOccurred];
}

- (CKTranscriptBalloonCell)cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end