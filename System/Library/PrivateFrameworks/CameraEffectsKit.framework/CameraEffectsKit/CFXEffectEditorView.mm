@interface CFXEffectEditorView
- (BOOL)CFX_isPreviewingEditEffect;
- (BOOL)CFX_isRemoveAlwaysAvailableInCurrentMode;
- (BOOL)CFX_updateOverlayForTranslation;
- (BOOL)CFX_updateTrackingTypeForTouchLocation;
- (BOOL)CFX_useFaceReticle;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isEditing;
- (BOOL)textEffectEditorView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CFXEffectEditorView)initWithMode:(unint64_t)a3 delegate:(id)a4;
- (CGAffineTransform)editTransform;
- (CGPoint)lastSpacingBetweenTouchAndCenterOfEffect;
- (CGPoint)lastTouchLocation;
- (CGPoint)lastTouchLocationInView;
- (CGRect)CFX_textEditingFrame;
- (CGRect)renderBounds;
- (JFXEffectsPreviewGenerator)previewGenerator;
- (JFXOverlayEffectDebugView)debugOverlayView;
- (id)CFX_getTextEditingProperties;
- (id)CFX_springForTextEditAnimation;
- (id)overlayEffectDebugViewOptions;
- (void)CFX_addBeginEditingCompletionBlock:(id)a3;
- (void)CFX_addEndEditingCompletionBlock:(id)a3;
- (void)CFX_applyEffectAnimationView:(BOOL)a3;
- (void)CFX_applyEffectTransformChanges;
- (void)CFX_beginEditingEffect:(id)a3 isAnimating:(BOOL)a4;
- (void)CFX_beginPreviewingEditEffect;
- (void)CFX_beginTextEditing;
- (void)CFX_effectAnimationDisplayLinkFired:(id)a3;
- (void)CFX_effectPreviewBoundsDidChange;
- (void)CFX_endEditingEffect;
- (void)CFX_endPreviewingEditEffect;
- (void)CFX_endTextEditing:(BOOL)a3;
- (void)CFX_hideEditControls:(BOOL)a3;
- (void)CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock:(id)a3;
- (void)CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock:(id)a3;
- (void)CFX_previewEditEffectIfNeeded;
- (void)CFX_removeEffect;
- (void)CFX_rotateEffect:(double)a3;
- (void)CFX_scaleEffect:(double)a3;
- (void)CFX_setUserInteractionEnabledIfPossible:(BOOL)a3;
- (void)CFX_setupControls;
- (void)CFX_setupGestures;
- (void)CFX_showEditControls;
- (void)CFX_startApplyingEffectAnimationViewDisplayLink;
- (void)CFX_startTrackingExternalEffectChanges;
- (void)CFX_stopApplyingEffectAnimationViewDisplayLink;
- (void)CFX_stopTrackingExternalEffectChanges;
- (void)CFX_updateEditControlsLayout;
- (void)CFX_updateEffectText:(id)a3 updateTextProperties:(BOOL)a4;
- (void)CFX_updateExternalEffectTrackingRunningState;
- (void)CFX_updateSpacingBetweenTouchAndCenterOfEffectWithGesture:(id)a3;
- (void)CFX_updateTextEditFieldLayout;
- (void)beginEditingEffect:(id)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)dealloc;
- (void)didTap:(id)a3;
- (void)endEditingAnimated:(BOOL)a3 withCompletionBlock:(id)a4;
- (void)externalEffectTrackingDisplayLinkFired:(id)a3;
- (void)handlePanGesture:(id)a3;
- (void)handlePinchGesture:(id)a3;
- (void)handleRotateGesture:(id)a3;
- (void)initializeAvailabilityOfFrequentCalledDelegateMethods;
- (void)layoutSubviews;
- (void)notifyEffectTrackingDidChangeToType:(int64_t)a3;
- (void)onDebugDisplayLink:(id)a3;
- (void)setAppliedEditingGestures:(unint64_t)a3;
- (void)setEditTransform:(CGAffineTransform *)a3;
- (void)startUpdatingDebugOverlayView;
- (void)stopUpdatingDebugOverlayView;
@end

@implementation CFXEffectEditorView

- (CFXEffectEditorView)initWithMode:(unint64_t)a3 delegate:(id)a4
{
  v7 = a4;
  v21.receiver = self;
  v21.super_class = CFXEffectEditorView;
  v8 = [(CFXEffectEditorView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, a4);
    v9->_mode = a3;
    [(CFXEffectEditorView *)v9 setBackgroundColor:0];
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 scale];
    [(CFXEffectEditorView *)v9 setDisplayScale:?];

    v11 = MEMORY[0x277CBF2C0];
    v12 = *(MEMORY[0x277CBF2C0] + 16);
    *&v9->_editTransform.a = *MEMORY[0x277CBF2C0];
    *&v9->_editTransform.c = v12;
    *&v9->_editTransform.tx = *(v11 + 32);
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("CFXEffectEditorView.effectUpdateQueue", v13);
    effectRenderingQueue = v9->_effectRenderingQueue;
    v9->_effectRenderingQueue = v14;

    [(CFXEffectEditorView *)v9 setClipsToBounds:1];
    v9->_appliedEditingGestures = 0;
    v9->_lastTouchLocationInView = kInvalidTouchLocation;
    v9->_lastSpacingBetweenTouchAndCenterOfEffect = kInvalidTouchLocation;
    v9->_displayLinkBusyOnRenderQueue = 0;
    v9->_isRenderingEditEffect = 0;
    v9->_isRenderPendingForEditEffect = 0;
    [(CFXEffectEditorView *)v9 CFX_setupGestures];
    [(CFXEffectEditorView *)v9 CFX_setupControls];
    if (a3 == 1)
    {
      [(CFXEffectEditorView *)v9 CFX_setUserInteractionEnabledIfPossible:0];
    }

    if (isDrawEffectsEditorBoundsEnabled())
    {
      v16 = [(CFXEffectEditorView *)v9 layer];
      [v16 setBorderWidth:2.0];

      v17 = [MEMORY[0x277D75348] greenColor];
      v18 = [v17 CGColor];
      v19 = [(CFXEffectEditorView *)v9 layer];
      [v19 setBorderColor:v18];
    }

    [(CFXEffectEditorView *)v9 startUpdatingDebugOverlayView];
    [(CFXEffectEditorView *)v9 initializeAvailabilityOfFrequentCalledDelegateMethods];
  }

  return v9;
}

- (void)initializeAvailabilityOfFrequentCalledDelegateMethods
{
  v3 = [(CFXEffectEditorView *)self delegate];
  self->_delegateSupportsDidMoveEffect = objc_opt_respondsToSelector() & 1;

  v4 = [(CFXEffectEditorView *)self delegate];
  self->_delegateSupportsCalculatingAnimatedFaceTrackingTransform = objc_opt_respondsToSelector() & 1;

  v5 = [(CFXEffectEditorView *)self delegate];
  self->_delegateSupportsApplyAnimationTransformsToEffect = objc_opt_respondsToSelector() & 1;
}

- (void)dealloc
{
  v3 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
  [v3 invalidate];

  v4 = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
  [v4 invalidate];

  [(CFXEffectEditorView *)self stopUpdatingDebugOverlayView];
  v5.receiver = self;
  v5.super_class = CFXEffectEditorView;
  [(CFXEffectEditorView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CFXEffectEditorView;
  [(CFXEffectEditorView *)&v3 layoutSubviews];
  [(CFXEffectEditorView *)self CFX_effectPreviewBoundsDidChange];
}

- (void)CFX_effectPreviewBoundsDidChange
{
  [(CFXEffectEditorView *)self CFX_updateEditControlsLayout];
  [(CFXEffectEditorView *)self CFX_updateTextEditFieldLayout];
  v3 = [(CFXEffectEditorView *)self effectRenderingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CFXEffectEditorView_CFX_effectPreviewBoundsDidChange__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)CFX_setupGestures
{
  v6 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_didTap_];
  [v6 setNumberOfTapsRequired:1];
  [(CFXEffectEditorView *)self addGestureRecognizer:v6];
  v3 = [objc_alloc(MEMORY[0x277D75848]) initWithTarget:self action:sel_didPinch_];
  [v3 setDelegate:self];
  [v3 setScale:1.0];
  [(CFXEffectEditorView *)self addGestureRecognizer:v3];
  v4 = [objc_alloc(MEMORY[0x277D75938]) initWithTarget:self action:sel_didRotate_];
  [v4 setDelegate:self];
  [(CFXEffectEditorView *)self addGestureRecognizer:v4];
  v5 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_didPan_];
  [v5 setDelegate:self];
  [v5 setMinimumNumberOfTouches:1];
  [(CFXEffectEditorView *)self addGestureRecognizer:v5];
}

- (void)didTap:(id)a3
{
  v26 = a3;
  v4 = [v26 state] == 3;
  v5 = v26;
  if (v4)
  {
    [v26 locationInView:self];
    v7 = v6;
    v9 = v8;
    v10 = [(CFXEffectEditorView *)self delegate];
    v11 = [v10 effectEditorView:self effectAtPoint:{v7, v9}];

    v12 = [v11 jtEffect];
    if (v12)
    {
      v13 = v12;
    }

    else if (!-[CFXEffectEditorView CFX_isPreviewingEditEffect](self, "CFX_isPreviewingEditEffect") || (-[CFXEffectEditorView delegate](self, "delegate"), v16 = objc_claimAutoreleasedReturnValue(), -[CFXEffectEditorView editEffect](self, "editEffect"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 effectEditorView:self isEffectAtPoint:v17 effect:{v7, v9}], v17, v16, !v18) || (-[CFXEffectEditorView editEffect](self, "editEffect"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "jtEffect"), v13 = objc_claimAutoreleasedReturnValue(), v19, !v13))
    {
      v20 = [(CFXEffectEditorView *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if ((v21 & 1) == 0)
      {
        [(CFXEffectEditorView *)self endEditingAnimated:1 withCompletionBlock:0];
        goto LABEL_14;
      }

      [(CFXEffectEditorView *)self convertPoint:0 toView:v7, v9];
      v23 = v22;
      v25 = v24;
      [(CFXEffectEditorView *)self endEditingAnimated:1 withCompletionBlock:0];
      v13 = [(CFXEffectEditorView *)self delegate];
      [v13 effectEditorView:self didEndEditingByTappingOutSideEffectAtScreenPoint:{v23, v25}];
LABEL_13:

LABEL_14:
      v5 = v26;
      goto LABEL_15;
    }

    v14 = [(CFXEffectEditorView *)self editEffect];
    v15 = [v14 jtEffect];

    if (v13 == v15)
    {
      [(CFXEffectEditorView *)self beginTextEditing];
    }

    else
    {
      [(CFXEffectEditorView *)self CFX_endEditingEffect];
      [(CFXEffectEditorView *)self CFX_beginEditingEffect:v11 isAnimating:0];
      [(CFXEffectEditorView *)self CFX_beginTextEditing];
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)setAppliedEditingGestures:(unint64_t)a3
{
  if (self->_appliedEditingGestures == a3)
  {
    return;
  }

  v5 = [(CFXEffectEditorView *)self editEffect];
  v9 = [v5 jtEffect];

  appliedEditingGestures = self->_appliedEditingGestures;
  if (a3)
  {
    v7 = appliedEditingGestures == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v7)
  {
    [v9 beginInteractiveEditing];
LABEL_14:
    [MEMORY[0x277D415F8] setInteractiveMode:v8];
    goto LABEL_15;
  }

  if (!a3 && appliedEditingGestures)
  {
    [v9 endInteractiveEditing];
    goto LABEL_14;
  }

LABEL_15:
  self->_appliedEditingGestures = a3;
}

- (void)handlePinchGesture:(id)a3
{
  v6 = a3;
  if (![(CFXEffectEditorView *)self isTextEditing])
  {
    if ([v6 state] == 1)
    {
      [(CFXEffectEditorView *)self CFX_hideEditControls];
      v4 = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v4 | 2];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v4 | 2];
    }

    [v6 scale];
    [(CFXEffectEditorView *)self CFX_scaleEffect:?];
    [v6 setScale:1.0];
    if ([v6 state] == 3 || objc_msgSend(v6, "state") == 4)
    {
      v5 = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v5 & 0xFFFFFFFFFFFFFFFDLL];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v5 & 0xFFFFFFFFFFFFFFFDLL];
      [(CFXEffectEditorView *)self CFX_showEditControls];
    }
  }
}

- (void)handleRotateGesture:(id)a3
{
  v6 = a3;
  if (![(CFXEffectEditorView *)self isTextEditing])
  {
    if ([v6 state] == 1)
    {
      [(CFXEffectEditorView *)self CFX_hideEditControls];
      v4 = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v4 | 4];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v4 | 4];
    }

    [v6 rotation];
    [(CFXEffectEditorView *)self CFX_rotateEffect:?];
    [v6 setRotation:0.0];
    if ([v6 state] == 3 || objc_msgSend(v6, "state") == 4)
    {
      v5 = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v5 & 0xFFFFFFFFFFFFFFFBLL];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v5 & 0xFFFFFFFFFFFFFFFBLL];
      [(CFXEffectEditorView *)self CFX_showEditControls];
    }
  }
}

- (void)handlePanGesture:(id)a3
{
  v7 = a3;
  if (![(CFXEffectEditorView *)self isTextEditing])
  {
    if ([v7 state] == 1)
    {
      [(CFXEffectEditorView *)self CFX_hideEditControls];
      v4 = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v4 | 1];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v4 | 1];
    }

    if ([v7 state] == 3 || objc_msgSend(v7, "state") == 4)
    {
      v5 = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v5 & 0xFFFFFFFFFFFFFFFELL];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:v5 & 0xFFFFFFFFFFFFFFFELL];
      [(CFXEffectEditorView *)self CFX_showEditControls];
    }

    [(CFXEffectEditorView *)self CFX_updateSpacingBetweenTouchAndCenterOfEffectWithGesture:v7];
    v6 = [v7 view];
    [v7 setTranslation:v6 inView:{0.0, 0.0}];
  }
}

- (void)CFX_updateSpacingBetweenTouchAndCenterOfEffectWithGesture:(id)a3
{
  v29 = a3;
  v4 = [v29 state];
  if ((v4 - 3) < 2)
  {
    if ([(CFXEffectEditorView *)self appliedEditingGestures])
    {
      goto LABEL_9;
    }

    [(CFXEffectEditorView *)self setLastTouchLocationInView:1.79769313e308, 1.79769313e308];
    [(CFXEffectEditorView *)self setLastSpacingBetweenTouchAndCenterOfEffect:1.79769313e308, 1.79769313e308];
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_9;
    }

    v5 = [v29 view];
    [v29 locationInView:v5];
    v7 = v6;
    v9 = v8;
    v10 = [v29 view];
    [(CFXEffectEditorView *)self convertPoint:v10 fromView:v7, v9];
    [(CFXEffectEditorView *)self setLastTouchLocationInView:?];

    v11 = [(CFXEffectEditorView *)self delegate];
    v12 = [(CFXEffectEditorView *)self editEffect];
    [(CFXEffectEditorView *)self lastTouchLocation];
    v14 = v13;
    v16 = v15;
    [(CFXEffectEditorView *)self renderBounds];
    [v11 effectEditorView:self spacingBetweenCenterPointOfEffect:v12 point:v14 relativeToBounds:{v16, v17, v18, v19, v20}];
    [(CFXEffectEditorView *)self setLastSpacingBetweenTouchAndCenterOfEffect:?];

LABEL_7:
    [(CFXEffectEditorView *)self CFX_updateExternalEffectTrackingRunningState];
    goto LABEL_9;
  }

  v21 = [v29 view];
  [v29 translationInView:v21];
  v23 = v22;
  v25 = v24;

  [(CFXEffectEditorView *)self lastTouchLocationInView];
  v27 = v23 + v26;
  [(CFXEffectEditorView *)self lastTouchLocationInView];
  [(CFXEffectEditorView *)self setLastTouchLocationInView:v27, v25 + v28];
LABEL_9:
}

- (void)CFX_setUserInteractionEnabledIfPossible:(BOOL)a3
{
  v3 = a3;
  v5 = [(CFXEffectEditorView *)self mode]!= 1 && v3;

  [(CFXEffectEditorView *)self setUserInteractionEnabled:v5];
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

- (BOOL)isEditing
{
  v2 = [(CFXEffectEditorView *)self editEffect];
  v3 = v2 != 0;

  return v3;
}

- (void)beginEditingEffect:(id)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(CFXEffectEditorView *)self isEditing];
  if (v9)
  {
    [(CFXEffectEditorView *)self CFX_addBeginEditingCompletionBlock:v9];
  }

  if (![(CFXEffectEditorView *)self isBeginningEditing])
  {
    [(CFXEffectEditorView *)self setIsBeginningEditing:1];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __71__CFXEffectEditorView_beginEditingEffect_animated_withCompletionBlock___block_invoke;
    v24[3] = &unk_278D79E38;
    v25 = v10;
    v24[4] = self;
    v11 = MEMORY[0x245D22230](v24);
    [(CFXEffectEditorView *)self CFX_setUserInteractionEnabledIfPossible:0];
    v12 = [(CFXEffectEditorView *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(CFXEffectEditorView *)self delegate];
      v15 = [v14 effectEditorView:self shouldDisableEditingAnimationForEffect:v8];

      v6 &= ~v15;
    }

    if ([(CFXEffectEditorView *)self mode]== 2 && v6)
    {
      v16 = [v8 jtEffect];
      [v16 setHidden:1];
      [(CFXEffectEditorView *)self CFX_beginEditingEffect:v8 isAnimating:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __71__CFXEffectEditorView_beginEditingEffect_animated_withCompletionBlock___block_invoke_2;
      v22[3] = &unk_278D7A168;
      v23 = v11;
      [(CFXEffectEditorView *)self CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock:v22];
    }

    else
    {
      [(CFXEffectEditorView *)self CFX_beginEditingEffect:v8 isAnimating:0];
      if ([(CFXEffectEditorView *)self CFX_useFaceReticle])
      {
        v17 = [v8 jtEffect];
        v18 = [v17 type];

        if (v18 == 2)
        {
          v19 = [v8 jtEffect];
          v20 = [(CFXEffectEditorView *)self faceTrackingReticle];
          v21 = [v19 trackingProps];
          [v20 userFeedbackForTrackingType:objc_msgSend(v21 needsHaptics:{"trackingType"), 1}];
        }
      }

      v11[2](v11);
    }
  }
}

uint64_t __71__CFXEffectEditorView_beginEditingEffect_animated_withCompletionBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [*(a1 + 32) delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [*(a1 + 32) delegate];
      [v4 effectEditorViewDidBeginEditing:*(a1 + 32)];
    }
  }

  [*(a1 + 32) setIsBeginningEditing:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(a1 + 32) beginEditingCompletionBlocks];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) setBeginEditingCompletionBlocks:0];
  return [*(a1 + 32) CFX_setUserInteractionEnabledIfPossible:1];
}

- (void)endEditingAnimated:(BOOL)a3 withCompletionBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(CFXEffectEditorView *)self isEditing])
  {
    if (v6)
    {
      [(CFXEffectEditorView *)self CFX_addEndEditingCompletionBlock:v6];
    }

    if (![(CFXEffectEditorView *)self isEndingEditing])
    {
      if ([(CFXEffectEditorView *)self isBeginningEditing])
      {
        objc_initWeak(&location, self);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __62__CFXEffectEditorView_endEditingAnimated_withCompletionBlock___block_invoke;
        v17[3] = &unk_278D7C3D8;
        objc_copyWeak(&v18, &location);
        v19 = v4;
        [(CFXEffectEditorView *)self CFX_addBeginEditingCompletionBlock:v17];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        [(CFXEffectEditorView *)self setIsEndingEditing:1];
        v7 = [(CFXEffectEditorView *)self removeButton];
        [v7 setHidden:1];

        [(CFXEffectEditorView *)self CFX_setUserInteractionEnabledIfPossible:0];
        v8 = [(CFXEffectEditorView *)self delegate];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          v10 = [(CFXEffectEditorView *)self delegate];
          v11 = [(CFXEffectEditorView *)self editEffect];
          v12 = [v10 effectEditorView:self shouldDisableEditingAnimationForEffect:v11];

          v4 &= ~v12;
        }

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __62__CFXEffectEditorView_endEditingAnimated_withCompletionBlock___block_invoke_2;
        v16[3] = &unk_278D79D20;
        v16[4] = self;
        v13 = MEMORY[0x245D22230](v16);
        if ([(CFXEffectEditorView *)self mode]== 2 && v4)
        {
          [(CFXEffectEditorView *)self CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock:v13];
        }

        else if (([(CFXEffectEditorView *)self CFX_useFaceReticle]& v4) == 1 && ([(CFXEffectEditorView *)self faceTrackingReticle], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
        {
          v15 = [(CFXEffectEditorView *)self faceTrackingReticle];
          [v15 fadeOutAndEndHapticWithCompletionBlock:v13];
        }

        else
        {
          v13[2](v13);
        }
      }
    }
  }

  else if (v6)
  {
    v6[2](v6);
  }
}

void __62__CFXEffectEditorView_endEditingAnimated_withCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endEditingAnimated:*(a1 + 40) withCompletionBlock:0];
}

uint64_t __62__CFXEffectEditorView_endEditingAnimated_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) CFX_endEditingEffect];
  [*(a1 + 32) setEditEffect:0];
  [*(a1 + 32) CFX_hideEditControls];
  v2 = [*(a1 + 32) delegate];
  [v2 effectEditorViewDidEndEditing:*(a1 + 32)];

  [*(a1 + 32) CFX_stopTrackingExternalEffectChanges];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(a1 + 32) endEditingCompletionBlocks];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) setEndEditingCompletionBlocks:0];
  [*(a1 + 32) setIsEndingEditing:0];
  return [*(a1 + 32) CFX_setUserInteractionEnabledIfPossible:1];
}

- (void)notifyEffectTrackingDidChangeToType:(int64_t)a3
{
  if ([(CFXEffectEditorView *)self CFX_useFaceReticle])
  {
    v5 = [(CFXEffectEditorView *)self faceTrackingReticle];
    [v5 userFeedbackForTrackingType:a3 needsHaptics:1];
  }
}

- (void)CFX_beginEditingEffect:(id)a3 isAnimating:(BOOL)a4
{
  v6 = a3;
  [(CFXEffectEditorView *)self setEffectWasEdited:0];
  [(CFXEffectEditorView *)self setEditEffect:v6];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  v14[0] = *MEMORY[0x277CBF2C0];
  v14[1] = v7;
  v14[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(CFXEffectEditorView *)self setEditTransform:v14];
  v8 = [v6 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v6 jtEffect];
    [v10 beginInteractiveEditing];
  }

  if (!a4)
  {
    [(CFXEffectEditorView *)self CFX_showEditControls];
  }

  v11 = [(CFXEffectEditorView *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CFXEffectEditorView *)self delegate];
    [v13 effectEditorView:self didBeginEditingEffect:v6];
  }

  [(CFXEffectEditorView *)self CFX_beginPreviewingEditEffect];
}

- (void)CFX_removeEffect
{
  [(CFXEffectEditorView *)self CFX_endPreviewingEditEffect];
  v3 = [(CFXEffectEditorView *)self delegate];
  v4 = [(CFXEffectEditorView *)self editEffect];
  [v3 effectEditorView:self didRemoveEffect:v4];

  [(CFXEffectEditorView *)self endEditingAnimated:1 withCompletionBlock:0];
}

- (void)CFX_endEditingEffect
{
  [(CFXEffectEditorView *)self CFX_endTextEditing:0];
  [(CFXEffectEditorView *)self CFX_hideEditControls];
  [(CFXEffectEditorView *)self CFX_endPreviewingEditEffect];
  v3 = [(CFXEffectEditorView *)self editEffect];
  v4 = [v3 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(CFXEffectEditorView *)self editEffect];
    v7 = [v6 jtEffect];
    [v7 endInteractiveEditing];
  }

  [(CFXEffectEditorView *)self setAppliedEditingGestures:0];
  v8 = [(CFXEffectEditorView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CFXEffectEditorView *)self delegate];
    v11 = [(CFXEffectEditorView *)self editEffect];
    [v10 effectEditorView:self didEndEditingEffect:v11];
  }

  [(CFXEffectEditorView *)self setEffectWasEdited:0];
}

- (void)CFX_addBeginEditingCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CFXEffectEditorView *)self beginEditingCompletionBlocks];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(CFXEffectEditorView *)self setBeginEditingCompletionBlocks:v6];
  }

  v8 = [(CFXEffectEditorView *)self beginEditingCompletionBlocks];
  v7 = [v4 copy];

  [v8 addObject:v7];
}

- (void)CFX_addEndEditingCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CFXEffectEditorView *)self endEditingCompletionBlocks];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(CFXEffectEditorView *)self setEndEditingCompletionBlocks:v6];
  }

  v8 = [(CFXEffectEditorView *)self endEditingCompletionBlocks];
  v7 = [v4 copy];

  [v8 addObject:v7];
}

- (CGPoint)lastTouchLocation
{
  [(CFXEffectEditorView *)self lastTouchLocationInView];
  v5 = v4;
  v6 = 1.79769313e308;
  v7 = v5 == 1.79769313e308 && v3 == 1.79769313e308;
  v8 = 1.79769313e308;
  if (!v7)
  {
    v9 = +[CFXMediaSettings sharedInstance];
    [v9 renderSize];
    v11 = v10;
    v13 = v12;

    [(CFXEffectEditorView *)self lastTouchLocationInView];
    v15 = v14;
    v17 = v16;
    [(CFXEffectEditorView *)self bounds];
    v6 = CGPointConvertToCoordinateSpace(2uLL, 0, v15, v17, v18, v19, v11, v13);
  }

  result.y = v8;
  result.x = v6;
  return result;
}

- (void)CFX_scaleEffect:(double)a3
{
  [(CFXEffectEditorView *)self editTransform];
  CGAffineTransformScale(&v6, &v5, a3, a3);
  v5 = v6;
  [(CFXEffectEditorView *)self setEditTransform:&v5];
  [(CFXEffectEditorView *)self CFX_applyEffectTransformChanges];
}

- (void)CFX_rotateEffect:(double)a3
{
  [(CFXEffectEditorView *)self editTransform];
  CGAffineTransformRotate(&v6, &v5, a3);
  v5 = v6;
  [(CFXEffectEditorView *)self setEditTransform:&v5];
  [(CFXEffectEditorView *)self CFX_applyEffectTransformChanges];
}

- (BOOL)CFX_updateOverlayForTranslation
{
  v3 = [(CFXEffectEditorView *)self delegate];
  v4 = [(CFXEffectEditorView *)self editEffect];
  [(CFXEffectEditorView *)self lastTouchLocation];
  v6 = v5;
  v8 = v7;
  [(CFXEffectEditorView *)self renderBounds];
  [v3 effectEditorView:self spacingBetweenCenterPointOfEffect:v4 point:v6 relativeToBounds:{v8, v9, v10, v11, v12}];
  v14 = v13;
  v16 = v15;

  [(CFXEffectEditorView *)self lastSpacingBetweenTouchAndCenterOfEffect];
  v18 = v14 - v17;
  [(CFXEffectEditorView *)self lastSpacingBetweenTouchAndCenterOfEffect];
  v20 = v16 - v19;
  v21 = v20 != *(MEMORY[0x277CBF348] + 8) || v18 != *MEMORY[0x277CBF348];
  if (v21)
  {
    [(CFXEffectEditorView *)self editTransform];
    CGAffineTransformTranslate(&v24, &v23, v18, v20);
    v23 = v24;
    [(CFXEffectEditorView *)self setEditTransform:&v23];
    [(CFXEffectEditorView *)self CFX_applyEffectTransformChanges];
  }

  return v21;
}

- (BOOL)CFX_updateTrackingTypeForTouchLocation
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  [(CFXEffectEditorView *)self lastEffectMovedNotifyTime];
  if (v4 - v5 < 0.1)
  {
    return 0;
  }

  [(CFXEffectEditorView *)self setLastEffectMovedNotifyTime:v4];
  v7 = [(CFXEffectEditorView *)self editEffect];
  v8 = [v7 jtEffect];
  if ([v8 type] == 2)
  {
    v9 = [v7 jtEffect];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 trackingProps];
  v11 = [v10 trackingType];

  if ([(CFXEffectEditorView *)self delegateSupportsDidMoveEffect])
  {
    v12 = [(CFXEffectEditorView *)self delegate];
    [(CFXEffectEditorView *)self lastTouchLocationInView];
    [v12 effectEditorView:self didMoveEffect:v7 withTouchPoint:?];
  }

  if ([(CFXEffectEditorView *)self CFX_useFaceReticle]&& v9)
  {
    v13 = [(CFXEffectEditorView *)self faceTrackingReticle];
    v14 = [v9 trackingProps];
    [v13 userFeedbackForTrackingType:objc_msgSend(v14 needsHaptics:{"trackingType"), 0}];
  }

  v15 = [v9 trackingProps];
  v16 = [v15 trackingType];

  v17 = v11 == v16;
  v6 = v11 != v16;
  if (!v17)
  {
    [(CFXEffectEditorView *)self lastSpacingBetweenTouchAndCenterOfEffect];
    if (v19 != 1.79769313e308 || v18 != 1.79769313e308)
    {
      v20 = [(CFXEffectEditorView *)self delegate];
      v21 = [(CFXEffectEditorView *)self editEffect];
      [(CFXEffectEditorView *)self lastTouchLocation];
      v23 = v22;
      v25 = v24;
      [(CFXEffectEditorView *)self renderBounds];
      [v20 effectEditorView:self spacingBetweenCenterPointOfEffect:v21 point:v23 relativeToBounds:{v25, v26, v27, v28, v29}];
      [(CFXEffectEditorView *)self setLastSpacingBetweenTouchAndCenterOfEffect:?];
    }
  }

  return v6;
}

- (void)CFX_applyEffectTransformChanges
{
  [(CFXEffectEditorView *)self editTransform];
  if (!CGAffineTransformIsIdentity(&v8))
  {
    v3 = [(CFXEffectEditorView *)self delegate];
    v4 = [(CFXEffectEditorView *)self editEffect];
    [(CFXEffectEditorView *)self editTransform];
    [(CFXEffectEditorView *)self renderBounds];
    [v3 effectEditorView:self didTransformEffect:v4 transform:&v8 relativeToBounds:?];

    v5 = [(CFXEffectEditorView *)self effectRenderingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__CFXEffectEditorView_CFX_applyEffectTransformChanges__block_invoke;
    block[3] = &unk_278D79D20;
    block[4] = self;
    dispatch_async(v5, block);

    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v8.a = *MEMORY[0x277CBF2C0];
    *&v8.c = v6;
    *&v8.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(CFXEffectEditorView *)self setEditTransform:&v8];
    [(CFXEffectEditorView *)self setEffectWasEdited:1];
  }
}

- (void)CFX_setupControls
{
  if ([(CFXEffectEditorView *)self CFX_isRemoveAvailableInCurrentMode])
  {
    v3 = objc_opt_new();
    [(CFXEffectEditorView *)self setRemoveButton:v3];

    v4 = [(CFXEffectEditorView *)self removeButton];
    [v4 addTarget:self action:sel_tapRemoveButton_ forControlEvents:64];

    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
    v6 = [(CFXEffectEditorView *)self removeButton];
    [v6 setImage:v5 forState:0];

    v7 = [(CFXEffectEditorView *)self removeButton];
    [(CFXEffectEditorView *)self addSubview:v7];

    v8 = [(CFXEffectEditorView *)self removeButton];
    [v8 sizeToFit];

    v9 = [(CFXEffectEditorView *)self removeButton];
    [v9 setHidden:1];

    v10 = [MEMORY[0x277D75348] whiteColor];
    v11 = [(CFXEffectEditorView *)self removeButton];
    [v11 setTintColor:v10];

    v12 = [MEMORY[0x277D75348] blackColor];
    v13 = [v12 CGColor];
    v14 = [(CFXEffectEditorView *)self removeButton];
    v15 = [v14 layer];
    [v15 setShadowColor:v13];

    v16 = [(CFXEffectEditorView *)self removeButton];
    v17 = [v16 layer];
    LODWORD(v18) = 0.25;
    [v17 setShadowOpacity:v18];

    v19 = [(CFXEffectEditorView *)self removeButton];
    v20 = [v19 layer];
    [v20 setShadowRadius:1.0];

    v21 = [(CFXEffectEditorView *)self removeButton];
    v22 = [v21 layer];
    [v22 setShadowOffset:{1.0, 1.0}];
  }

  if ([(CFXEffectEditorView *)self CFX_useFaceReticle])
  {
    v23 = [CFXFaceReticleView alloc];
    [(CFXEffectEditorView *)self bounds];
    v24 = [(CFXFaceReticleView *)v23 initWithFrame:0 reticleType:?];
    [(CFXEffectEditorView *)self setFaceTrackingReticle:v24];

    v25 = [(CFXEffectEditorView *)self faceTrackingReticle];
    [(CFXEffectEditorView *)self addSubview:v25];
  }
}

- (void)CFX_hideEditControls:(BOOL)a3
{
  if (a3 || ![(CFXEffectEditorView *)self CFX_isRemoveAlwaysAvailableInCurrentMode])
  {
    v4 = [(CFXEffectEditorView *)self removeButton];
    [v4 setHidden:1];
  }

  [(CFXEffectEditorView *)self CFX_updateExternalEffectTrackingRunningState];
}

- (CGRect)renderBounds
{
  v2 = +[CFXMediaSettings sharedInstance];
  [v2 renderSize];
  v4 = v3;
  v6 = v5;

  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)CFX_updateEditControlsLayout
{
  if (![(CFXEffectEditorView *)self CFX_isRemoveAvailableInCurrentMode])
  {
    return;
  }

  v3 = [(CFXEffectEditorView *)self removeButton];
  v4 = [v3 isHidden];

  if (v4)
  {
    return;
  }

  v5 = [(CFXEffectEditorView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [(CFXEffectEditorView *)self delegate];
  v7 = [v6 removeButtonRelativeBoundsIsViewSpace];

  if (v7)
  {
LABEL_8:
    v29 = [(CFXEffectEditorView *)self delegate];
    v23 = [(CFXEffectEditorView *)self editEffect];
    [(CFXEffectEditorView *)self bounds];
    [v29 effectEditorView:self removeButtonPositionForEffect:v23 relativeToBounds:?];
    v25 = v24;
    v27 = v26;
    v28 = [(CFXEffectEditorView *)self removeButton];
    [v28 setCenter:{v25, v27}];

    goto LABEL_9;
  }

  v8 = [(CFXEffectEditorView *)self delegate];
  v9 = [(CFXEffectEditorView *)self editEffect];
  [(CFXEffectEditorView *)self renderBounds];
  [v8 effectEditorView:self removeButtonPositionForEffect:v9 relativeToBounds:?];
  v11 = v10;
  v13 = v12;

  [(CFXEffectEditorView *)self renderBounds];
  v15 = v14;
  v17 = v16;
  [(CFXEffectEditorView *)self bounds];
  v20 = CGPointConvertToCoordinateSpace(1uLL, 0, v11, v13, v15, v17, v18, v19);
  v22 = v21;
  v29 = [(CFXEffectEditorView *)self removeButton];
  [v29 setCenter:{v20, v22}];
LABEL_9:
}

- (BOOL)CFX_isRemoveAlwaysAvailableInCurrentMode
{
  if ([(CFXEffectEditorView *)self mode]!= 2)
  {
    return 0;
  }

  return [(CFXEffectEditorView *)self isEditing];
}

- (void)CFX_showEditControls
{
  if ([(CFXEffectEditorView *)self CFX_isRemoveAvailableInCurrentMode])
  {
    v3 = [(CFXEffectEditorView *)self removeButton];
    [v3 setHidden:0];

    [(CFXEffectEditorView *)self CFX_updateEditControlsLayout];
  }

  [(CFXEffectEditorView *)self CFX_updateExternalEffectTrackingRunningState];
}

- (void)CFX_startTrackingExternalEffectChanges
{
  v3 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];

  if (!v3)
  {
    v4 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
    [v4 invalidate];

    v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_externalEffectTrackingDisplayLinkFired_];
    [(CFXEffectEditorView *)self setEditControlsTrackingDisplayLink:v5];

    v6 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
    [v6 setPreferredFramesPerSecond:60];

    v8 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
    v7 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v8 addToRunLoop:v7 forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)CFX_stopTrackingExternalEffectChanges
{
  v3 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];

  if (v3)
  {
    v4 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
    [v4 invalidate];

    [(CFXEffectEditorView *)self setEditControlsTrackingDisplayLink:0];
  }
}

- (void)CFX_updateExternalEffectTrackingRunningState
{
  if (-[CFXEffectEditorView mode](self, "mode") == 2 || ((-[CFXEffectEditorView lastTouchLocation](self, "lastTouchLocation"), v4 == 1.79769313e308) ? (v5 = v3 == 1.79769313e308) : (v5 = 0), v5 && (-[CFXEffectEditorView mode](self, "mode") || (-[CFXEffectEditorView removeButton](self, "removeButton"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHidden], v7, (v8 & 1) != 0))))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];

    if (v6)
    {
      v6 = 0;
    }

    else
    {
      [(CFXEffectEditorView *)self CFX_startTrackingExternalEffectChanges];
    }
  }

  v9 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
  [v9 setPaused:v6];
}

- (void)externalEffectTrackingDisplayLinkFired:(id)a3
{
  [(CFXEffectEditorView *)self lastTouchLocationInView];
  v6 = v5 == 1.79769313e308 && v4 == 1.79769313e308;
  if (!v6 && [(CFXEffectEditorView *)self CFX_updateOverlayForTranslation]&& [(CFXEffectEditorView *)self CFX_updateTrackingTypeForTouchLocation])
  {
    [(CFXEffectEditorView *)self CFX_updateOverlayForTranslation];
  }

  [(CFXEffectEditorView *)self CFX_updateEditControlsLayout];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7;
  [(CFXEffectEditorView *)self lastFaceRectacleUpdateTime];
  if (v8 - v9 >= 0.0333333333)
  {
    v10 = [(CFXEffectEditorView *)self CFX_useFaceReticle];
    v11 = [(CFXEffectEditorView *)self faceTrackingReticle];
    v13 = v11;
    if (v10)
    {
      [v11 setHidden:0];

      v12 = [(CFXEffectEditorView *)self faceTrackingReticle];
      [(CFXEffectEditorView *)self bounds];
      [v12 updateFrameForDisplayRelativeToBounds:?];

      [(CFXEffectEditorView *)self setLastFaceRectacleUpdateTime:v8];
    }

    else
    {
      [v11 setHidden:1];
    }
  }
}

- (void)CFX_beginTextEditing
{
  if (![(CFXEffectEditorView *)self isTextEditing])
  {
    v3 = [(CFXEffectEditorView *)self delegate];
    v4 = [(CFXEffectEditorView *)self editEffect];
    v5 = [v3 effectEditorView:self shouldEditTextForEffect:v4];

    if (v5)
    {
      v6 = [(CFXEffectEditorView *)self CFX_getTextEditingProperties];
      if (v6)
      {
        v7 = [(CFXEffectEditorView *)self delegate];
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0 || (-[CFXEffectEditorView delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), -[CFXEffectEditorView editEffect](self, "editEffect"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 effectEditorView:self presentCustomTextEditingUI:v10], v10, v9, (v11 & 1) == 0))
        {
          [(CFXEffectEditorView *)self CFX_hideEditControls];
          [(CFXEffectEditorView *)self setIsTextEditing:1];
          v12 = [(CFXEffectEditorView *)self delegate];
          v13 = [(CFXEffectEditorView *)self editEffect];
          v14 = [v12 effectEditorView:self textForEffect:v13];
          [(CFXEffectEditorView *)self setOldEditText:v14];

          v15 = [(CFXEffectEditorView *)self delegate];
          v16 = [(CFXEffectEditorView *)self editEffect];
          [v15 effectEditorView:self didBeginEditingTextForEffect:v16];

          v17 = [(CFXEffectEditorView *)self effectRenderingQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __43__CFXEffectEditorView_CFX_beginTextEditing__block_invoke;
          block[3] = &unk_278D79D20;
          block[4] = self;
          dispatch_async(v17, block);

          v18 = [(CFXEffectEditorView *)self delegate];
          LOBYTE(v16) = objc_opt_respondsToSelector();

          if (v16)
          {
            v19 = [(CFXEffectEditorView *)self delegate];
            v20 = [(CFXEffectEditorView *)self editEffect];
            -[CFXEffectEditorView setMaximumTextLength:](self, "setMaximumTextLength:", [v19 effectEditorView:self maximumTextLengthForEffect:v20]);
          }

          else
          {
            [(CFXEffectEditorView *)self setMaximumTextLength:-1];
          }

          [(CFXEffectEditorView *)self bounds];
          v21 = [CFXTextEffectEditorView viewWithFrame:v6 textEditingProperties:?];
          [(CFXEffectEditorView *)self setTextEditorView:v21];

          v22 = [(CFXEffectEditorView *)self textEditorView];
          [v22 setDelegate:self];

          [(CFXEffectEditorView *)self setTruncateTextToMaximumLength:0];
          v23 = [MEMORY[0x277D75128] sharedApplication];
          [v23 setApplicationSupportsShakeToEdit:0];

          v24 = [(CFXEffectEditorView *)self textEditorView];
          [(CFXEffectEditorView *)self addSubview:v24];

          if ([(CFXEffectEditorView *)self CFX_isRemoveAvailableInCurrentMode])
          {
            v25 = [(CFXEffectEditorView *)self removeButton];
            [(CFXEffectEditorView *)self bringSubviewToFront:v25];
          }

          v26 = [(CFXEffectEditorView *)self textEditorView];
          [v26 applyTextEditingProperties:v6];

          v27 = [(CFXEffectEditorView *)self textEditorView];
          [v27 selectAll];
        }
      }
    }
  }
}

- (id)CFX_getTextEditingProperties
{
  v3 = [(CFXEffectEditorView *)self delegate];
  v4 = [(CFXEffectEditorView *)self editEffect];
  [(CFXEffectEditorView *)self bounds];
  v5 = [v3 effectEditorView:self textEditingPropertiesForEffect:v4 relativeToBounds:?];

  return v5;
}

- (void)CFX_updateTextEditFieldLayout
{
  if ([(CFXEffectEditorView *)self isTextEditing])
  {
    v4 = [(CFXEffectEditorView *)self CFX_getTextEditingProperties];
    v3 = [(CFXEffectEditorView *)self textEditorView];
    [v3 applyTextEditingProperties:v4];
  }
}

- (void)CFX_endTextEditing:(BOOL)a3
{
  v3 = a3;
  if ([(CFXEffectEditorView *)self isTextEditing])
  {
    if (v3)
    {
      v12 = [(CFXEffectEditorView *)self oldEditText];
    }

    else
    {
      v5 = [(CFXEffectEditorView *)self delegate];
      v6 = [(CFXEffectEditorView *)self editEffect];
      v12 = [v5 effectEditorView:self textForEffect:v6];
    }

    [(CFXEffectEditorView *)self CFX_updateEffectText:v12 updateTextProperties:0];
    v7 = [(CFXEffectEditorView *)self textEditorView];
    [v7 endTextEditing];

    v8 = [(CFXEffectEditorView *)self textEditorView];
    [v8 removeFromSuperview];

    [(CFXEffectEditorView *)self setTextEditorView:0];
    v9 = [MEMORY[0x277D75128] sharedApplication];
    [v9 setApplicationSupportsShakeToEdit:1];

    [(CFXEffectEditorView *)self setIsTextEditing:0];
    v10 = [(CFXEffectEditorView *)self delegate];
    v11 = [(CFXEffectEditorView *)self editEffect];
    [v10 effectEditorView:self didEndEditingTextForEffect:v11 wasCancelled:v3];

    [(CFXEffectEditorView *)self CFX_showEditControls];
  }
}

- (void)CFX_updateEffectText:(id)a3 updateTextProperties:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ((CFX_updateEffectText_updateTextProperties__applyingEffectAttributes & 1) == 0)
  {
    CFX_updateEffectText_updateTextProperties__applyingEffectAttributes = 1;
    if ([(CFXEffectEditorView *)self truncateTextToMaximumLength])
    {
      v7 = [v6 substringWithRange:{0, fmin(objc_msgSend(v6, "length"), -[CFXEffectEditorView maximumTextLength](self, "maximumTextLength"))}];

      [(CFXEffectEditorView *)self setTruncateTextToMaximumLength:0];
      v6 = v7;
    }

    v8 = [(CFXEffectEditorView *)self delegate];
    v9 = [(CFXEffectEditorView *)self editEffect];
    [v8 effectEditorView:self didEditTextForEffect:v9 newText:v6];

    if (v4)
    {
      v10 = [(CFXEffectEditorView *)self CFX_getTextEditingProperties];
      v11 = [(CFXEffectEditorView *)self textEditorView];
      [v11 applyTextEditingProperties:v10];
    }

    [(CFXEffectEditorView *)self CFX_updateEditControlsLayout];
    v12 = [(CFXEffectEditorView *)self effectRenderingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CFXEffectEditorView_CFX_updateEffectText_updateTextProperties___block_invoke;
    block[3] = &unk_278D79D20;
    block[4] = self;
    dispatch_async(v12, block);

    CFX_updateEffectText_updateTextProperties__applyingEffectAttributes = 0;
  }
}

- (CGRect)CFX_textEditingFrame
{
  v3 = [(CFXEffectEditorView *)self textEditorView];
  [v3 textEditingFrameRelativeToView:self];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)textEffectEditorView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  v8 = a3;
  v9 = a5;
  if ([(CFXEffectEditorView *)self maximumTextLength]!= -1)
  {
    v10 = [v8 text];
    v11 = [v10 length];
    v12 = v11 - length + [v9 length];
    if (v12 > [(CFXEffectEditorView *)self maximumTextLength])
    {
      [(CFXEffectEditorView *)self setTruncateTextToMaximumLength:1];
    }
  }

  return 1;
}

- (JFXEffectsPreviewGenerator)previewGenerator
{
  previewGenerator = self->_previewGenerator;
  if (!previewGenerator)
  {
    v4 = objc_alloc_init(JFXEffectsPreviewGenerator);
    v5 = self->_previewGenerator;
    self->_previewGenerator = v4;

    [(JFXEffectsPreviewGenerator *)self->_previewGenerator trackStats:0];
    [(JFXEffectsPreviewGenerator *)self->_previewGenerator setName:@"EffectEditorPreview"];
    previewGenerator = self->_previewGenerator;
  }

  return previewGenerator;
}

- (void)CFX_beginPreviewingEditEffect
{
  v3 = [(CFXEffectEditorView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CFXEffectEditorView *)self delegate];
    v6 = [v5 effectEditorViewShouldPreviewEditEffect:self];

    if (v6)
    {
      v7 = objc_alloc_init(JFXImageView);
      [(CFXEffectEditorView *)self setEditEffectPreview:v7];

      v8 = [(CFXEffectEditorView *)self editEffectPreview];
      [v8 setUserInteractionEnabled:0];

      v9 = [MEMORY[0x277D75348] clearColor];
      v10 = [(CFXEffectEditorView *)self editEffectPreview];
      [v10 setBackgroundColor:v9];

      v11 = [(CFXEffectEditorView *)self editEffectPreview];
      [v11 setContentMode:2];

      v12 = [(CFXEffectEditorView *)self editEffectPreview];
      [v12 setPreferIOSurfaceForYUV:1];

      v13 = [(CFXEffectEditorView *)self editEffectPreview];
      [v13 setPreferMetalKit:1];

      v14 = [(CFXEffectEditorView *)self editEffectPreview];
      [(CFXEffectEditorView *)self addSubview:v14];

      if ([(CFXEffectEditorView *)self CFX_isRemoveAvailableInCurrentMode])
      {
        v15 = [(CFXEffectEditorView *)self removeButton];
        [(CFXEffectEditorView *)self bringSubviewToFront:v15];
      }

      v16 = [(CFXEffectEditorView *)self editEffectPreview];
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

      v17 = [(CFXEffectEditorView *)self editEffectPreview];
      v18 = [v17 leftAnchor];
      v19 = [(CFXEffectEditorView *)self leftAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];
      [v20 setActive:1];

      v21 = [(CFXEffectEditorView *)self editEffectPreview];
      v22 = [v21 rightAnchor];
      v23 = [(CFXEffectEditorView *)self rightAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      [v24 setActive:1];

      v25 = [(CFXEffectEditorView *)self editEffectPreview];
      v26 = [v25 topAnchor];
      v27 = [(CFXEffectEditorView *)self topAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      [v28 setActive:1];

      v29 = [(CFXEffectEditorView *)self editEffectPreview];
      v30 = [v29 bottomAnchor];
      v31 = [(CFXEffectEditorView *)self bottomAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];
      [v32 setActive:1];

      v33 = [(CFXEffectEditorView *)self delegate];
      LOBYTE(v30) = objc_opt_respondsToSelector();

      if (v30)
      {
        v34 = [(CFXEffectEditorView *)self delegate];
        [v34 effectEditorViewWillBeginPreviewingEditEffect:self];
      }

      v35 = [(CFXEffectEditorView *)self effectRenderingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__CFXEffectEditorView_CFX_beginPreviewingEditEffect__block_invoke;
      block[3] = &unk_278D79D20;
      block[4] = self;
      dispatch_async(v35, block);
    }
  }
}

- (BOOL)CFX_isPreviewingEditEffect
{
  v2 = [(CFXEffectEditorView *)self editEffectPreview];
  v3 = v2 != 0;

  return v3;
}

- (void)CFX_previewEditEffectIfNeeded
{
  if ([(CFXEffectEditorView *)self CFX_isPreviewingEditEffect])
  {
    if (self->_isRenderingEditEffect)
    {
      self->_isRenderPendingForEditEffect = 1;
      kdebug_trace();
      v3 = CFXLog_DebugEffectEditorRenderer();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        [CFXEffectEditorView CFX_previewEditEffectIfNeeded];
      }
    }

    else
    {
      self->_isRenderPendingForEditEffect = 0;
      self->_isRenderingEditEffect = 1;
      v4 = [(CFXEffectEditorView *)self editEffect];
      v3 = [v4 jtEffect];

      v5 = +[CFXMediaSettings sharedInstance];
      [v5 renderSize];
      v7 = v6;
      v9 = v8;

      v10 = +[CFXMediaSettings sharedInstance];
      [v10 frameSize];
      v12 = v11;
      v14 = v13;

      v15 = [(CFXEffectEditorView *)self delegate];
      v16 = objc_opt_respondsToSelector();

      v17 = 0;
      if (v16)
      {
        v18 = [(CFXEffectEditorView *)self delegate];
        v19 = [(CFXEffectEditorView *)self editEffect];
        v17 = [v18 effectEditorView:self shouldDisableEditingAnimationForEffect:v19];
      }

      v20 = [MEMORY[0x277D75418] currentDevice];
      v21 = [v20 userInterfaceIdiom];

      if (v17 && v21 == 1)
      {
        v22 = [v3 copy];

        [JFXEffectEditingUtilities beginTextEditingForEffect:v22];
        [v22 renderSize];
        v24 = v23;
        v26 = v25;
        [v22 setRenderSize:?];
        if (v7 >= v9)
        {
          v27 = v7;
        }

        else
        {
          v27 = v9;
        }

        if (v7 >= v9)
        {
          v28 = v9;
        }

        else
        {
          v28 = v7;
        }

        if (v12 >= v14)
        {
          v29 = v12;
        }

        else
        {
          v29 = v14;
        }

        if (v12 >= v14)
        {
          v30 = v14;
        }

        else
        {
          v30 = v12;
        }

        if (v7 >= v9)
        {
          v31 = v9;
        }

        else
        {
          v31 = v7;
        }

        if (v7 >= v9)
        {
          v32 = v7;
        }

        else
        {
          v32 = v9;
        }

        if (v12 >= v14)
        {
          v33 = v14;
        }

        else
        {
          v33 = v12;
        }

        if (v12 >= v14)
        {
          v34 = v12;
        }

        else
        {
          v34 = v14;
        }

        if (v26 > v24)
        {
          v14 = v34;
        }

        else
        {
          v14 = v30;
        }

        if (v26 > v24)
        {
          v12 = v33;
        }

        else
        {
          v12 = v29;
        }

        if (v26 > v24)
        {
          v9 = v32;
        }

        else
        {
          v9 = v28;
        }

        if (v26 > v24)
        {
          v7 = v31;
        }

        else
        {
          v7 = v27;
        }

        v3 = v22;
      }

      *location = kDefaultEffectPreviewRenderTime;
      v40 = 0;
      v35 = [[JFXEffectsPreviewGenerationRequest alloc] initWithInputGenerator:v3 effectStack:0 outputSize:location frameSize:v7 renderTime:v9, v12, v14];
      [(JFXEffectsPreviewGenerationRequest *)v35 setPriority:2];
      kdebug_trace();
      objc_initWeak(location, self);
      v36 = [(CFXEffectEditorView *)self previewGenerator];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __52__CFXEffectEditorView_CFX_previewEditEffectIfNeeded__block_invoke;
      v37[3] = &unk_278D7BE48;
      objc_copyWeak(&v38, location);
      v37[4] = self;
      [v36 generatePreviewRequest:v35 completionHandler:v37];

      objc_destroyWeak(&v38);
      objc_destroyWeak(location);
    }
  }
}

void __52__CFXEffectEditorView_CFX_previewEditEffectIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(a1 + 32) + 409) = 0;
  v5 = [WeakRetained editEffectPreview];

  if (v5)
  {
    if (v3)
    {
      v6 = [v3 objectEnumerator];
      v7 = [v6 nextObject];

      if (v7)
      {
        v8 = [[JTImage alloc] initWithPVImage:v7];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    kdebug_trace();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__CFXEffectEditorView_CFX_previewEditEffectIfNeeded__block_invoke_2;
    block[3] = &unk_278D7A600;
    v11 = v8;
    v12 = WeakRetained;
    v13 = *(a1 + 32);
    v9 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __52__CFXEffectEditorView_CFX_previewEditEffectIfNeeded__block_invoke_2(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) editEffectPreview];
    [v3 setJtImage:v2];
  }

  v4 = CFXLog_DebugEffectEditorRenderer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__CFXEffectEditorView_CFX_previewEditEffectIfNeeded__block_invoke_2_cold_1();
  }

  if (*(*(a1 + 48) + 410) == 1)
  {
    v5 = CFXLog_DebugEffectEditorRenderer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __52__CFXEffectEditorView_CFX_previewEditEffectIfNeeded__block_invoke_2_cold_2();
    }

    [*(a1 + 40) CFX_previewEditEffectIfNeeded];
  }
}

- (void)CFX_endPreviewingEditEffect
{
  if ([(CFXEffectEditorView *)self CFX_isPreviewingEditEffect])
  {
    v3 = [(CFXEffectEditorView *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(CFXEffectEditorView *)self delegate];
      [v5 effectEditorViewDidEndPreviewingEditingEffect:self];
    }

    self->_isRenderingEditEffect = 0;
    v6 = [(CFXEffectEditorView *)self editEffectPreview];
    [v6 removeFromSuperview];

    [(CFXEffectEditorView *)self setEditEffectPreview:0];
  }
}

- (BOOL)CFX_useFaceReticle
{
  v3 = [(CFXEffectEditorView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CFXEffectEditorView *)self delegate];
  v6 = [v5 effectEditorViewShouldShowFaceReticle:self];

  return v6;
}

- (id)CFX_springForTextEditAnimation
{
  v2 = [MEMORY[0x277CD9FA0] animation];
  [v2 setDamping:40.0];
  [v2 setStiffness:400.0];
  [v2 setMass:1.0];
  [v2 setStiffness:400.0];
  [v2 setDamping:40.0];
  [v2 setInitialVelocity:0.0];
  [v2 settlingDuration];
  [v2 setDuration:?];

  return v2;
}

- (void)CFX_startApplyingEffectAnimationViewDisplayLink
{
  v3 = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
  [v3 invalidate];

  v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_CFX_effectAnimationDisplayLinkFired_];
  [(CFXEffectEditorView *)self setEffectAnimationDisplayLink:v4];

  v5 = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
  [v5 setPreferredFramesPerSecond:60];

  v7 = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
  v6 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v7 addToRunLoop:v6 forMode:*MEMORY[0x277CBE738]];
}

- (void)CFX_stopApplyingEffectAnimationViewDisplayLink
{
  v3 = [(CFXEffectEditorView *)self effectAnimationDisplayLink];

  if (v3)
  {
    v4 = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
    [v4 invalidate];

    [(CFXEffectEditorView *)self setEffectAnimationDisplayLink:0];
  }
}

- (void)CFX_effectAnimationDisplayLinkFired:(id)a3
{
  v4 = a3;
  if (self->_isRenderingEditEffect)
  {
    kdebug_trace();
    v5 = CFXLog_DebugEffectEditorRenderer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CFXEffectEditorView CFX_effectAnimationDisplayLinkFired:];
    }
  }

  else if (self->_displayLinkBusyOnRenderQueue)
  {
    v6 = CFXLog_DebugEffectEditorRenderer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CFXEffectEditorView CFX_effectAnimationDisplayLinkFired:];
    }

    kdebug_trace();
  }

  else
  {
    kdebug_trace();
    [(CFXEffectEditorView *)self CFX_applyEffectAnimationView:[(CFXEffectEditorView *)self isEndingEditing]];
  }
}

- (void)CFX_applyEffectAnimationView:(BOOL)a3
{
  v3 = a3;
  v5 = [(CFXEffectEditorView *)self effectAnimationView];
  v6 = [v5 currentEffectTransforms];

  if (v3)
  {
    v7 = [(CFXEffectEditorView *)self delegate];
    v8 = [(CFXEffectEditorView *)self editEffect];
    v9 = [v7 effectEditorView:self isFaceTrackingEffect:v8];

    if (v9)
    {
      if ([(CFXEffectEditorView *)self delegateSupportsCalculatingAnimatedFaceTrackingTransform])
      {
        v10 = [(CFXEffectEditorView *)self delegate];
        v26 = [(CFXEffectEditorView *)self effectAnimationView];
        v11 = [v26 fromEffectFrame];
        v12 = [v11 trackingType];
        v13 = [v6 faceTrackingTransform];
        v14 = [(CFXEffectEditorView *)self effectAnimationView];
        v15 = [v14 toEffectFrame];
        v16 = [v15 trackingType];
        v17 = [(CFXEffectEditorView *)self effectAnimationView];
        [v17 fractionComplete];
        *&v18 = v18;
        v19 = [v10 effectEditorView:self calculateAnimatedFaceTrackingTransformWithCurrentFaceTrackingDataFromTrackingType:v12 interpolatedWithFaceTrackingTransform:v13 toTrackingType:v16 atAnimationProgress:v18];

        v20 = [(CFXEffectEditorView *)self editEffectPreview];
        v21 = v20;
        if (!v19)
        {
          [v20 setHidden:1];

          goto LABEL_7;
        }

        [v20 setHidden:0];

        v22 = [v6 transform];
        v23 = [v6 transformAnimation];
        v24 = [JFXOverlayEffectTransforms transformsWithTransform:v22 transformAnimation:v23 faceTrackingTransform:v19];

        v6 = v24;
      }
    }
  }

  v25 = [(CFXEffectEditorView *)self effectRenderingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CFXEffectEditorView_CFX_applyEffectAnimationView___block_invoke;
  block[3] = &unk_278D79C88;
  block[4] = self;
  v6 = v6;
  v28 = v6;
  dispatch_async(v25, block);

LABEL_7:
}

uint64_t __52__CFXEffectEditorView_CFX_applyEffectAnimationView___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 408) = 1;
  kdebug_trace();
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 editEffect];
  [v2 effectEditorView:v3 applyAnimationTransformsToEffect:v4 transforms:*(a1 + 40)];

  kdebug_trace();
  result = [*(a1 + 32) CFX_previewEditEffectIfNeeded];
  *(*(a1 + 32) + 408) = 0;
  return result;
}

- (void)CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CFXEffectEditorView *)self effectAnimationView];

  if (!v5)
  {
    v6 = [(CFXEffectEditorView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7 & 1) != 0 && (-[CFXEffectEditorView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), -[CFXEffectEditorView editEffect](self, "editEffect"), v9 = objc_claimAutoreleasedReturnValue(), [v8 effectEditorView:self durationForBeginEditingAnimationForEffect:v9], v11 = v10, v9, v8, v11 > 0.0) && (-[CFXEffectEditorView delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, -[CFXEffectEditorView delegate](self, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, -[CFXEffectEditorView delegate](self, "delegate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, -[CFXEffectEditorView delegate](self, "delegate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_opt_respondsToSelector(), v18, -[CFXEffectEditorView delegate](self, "delegate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_opt_respondsToSelector(), v20, (v13) && (v19 & 1) != 0 && (v15 & 1) != 0 && (v17 & 1) != 0 && (v21)
    {
      v22 = [(CFXEffectEditorView *)self delegate];
      v23 = [(CFXEffectEditorView *)self editEffect];
      [v22 effectEditorView:self willBeginAnimationBeforeEditingEffect:v23];

      v24 = [(CFXEffectEditorView *)self editEffect];
      v25 = [v24 jtEffect];
      v26 = [v25 renderEffect];
      [v26 outputSize];
      v28 = v27;
      v30 = v29;

      v31 = [(CFXEffectEditorView *)self delegate];
      v32 = [(CFXEffectEditorView *)self editEffect];
      v33 = [v31 effectEditorView:self beginEditingAnimationFromFrameForEffect:v32 relativeToBounds:{0.0, 0.0, v28, v30}];

      v34 = [(CFXEffectEditorView *)self delegate];
      v35 = [(CFXEffectEditorView *)self editEffect];
      v36 = [v34 effectEditorView:self beginEditingAnimationToFrameForEffect:v35 relativeToBounds:{0.0, 0.0, v28, v30}];

      v37 = [(CFXEffectEditorView *)self editEffect];
      v38 = [v37 jtEffect];

      v39 = [(CFXEffectEditorView *)self delegate];
      v40 = [(CFXEffectEditorView *)self editEffect];
      v41 = [v39 effectEditorView:self isFaceTrackingEffect:v40];

      v42 = [(CFXEffectEditorView *)self delegate];
      v43 = [(CFXEffectEditorView *)self editEffect];
      v44 = [v42 effectEditorView:self isFaceTrackingDataAvailableForEffect:v43];

      if (v41 && (v44 & 1) == 0)
      {
        v45 = v36;

        v33 = v45;
      }

      v46 = [[JFXOverlayEffectAnimationView alloc] initWithEffectFrame:v33 toEffectFrame:v36];
      [(CFXEffectEditorView *)self setEffectAnimationView:v46];

      v47 = [(CFXEffectEditorView *)self effectAnimationView];
      [(CFXEffectEditorView *)self addSubview:v47];

      [v38 setHidden:0];
      [v38 beginEditingFaceTrackingTransforms];
      [(CFXEffectEditorView *)self CFX_applyEffectAnimationView:1];
      v48 = [(CFXEffectEditorView *)self delegate];
      v49 = [(CFXEffectEditorView *)self editEffect];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __84__CFXEffectEditorView_CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock___block_invoke;
      v51[3] = &unk_278D7A190;
      v51[4] = self;
      v52 = v38;
      v53 = v4;
      v50 = v38;
      [v48 effectEditorView:self didStartBeginEditingAnimationForEffect:v49 completion:v51];
    }

    else
    {
      v4[2](v4);
    }
  }
}

void __84__CFXEffectEditorView_CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) CFX_startApplyingEffectAnimationViewDisplayLink];
  v2 = [*(a1 + 32) CFX_springForTextEditAnimation];
  v3 = [*(a1 + 32) effectAnimationView];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__CFXEffectEditorView_CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock___block_invoke_2;
  v5[3] = &unk_278D7B090;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 animate:v2 completion:v5];
}

uint64_t __84__CFXEffectEditorView_CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) CFX_stopApplyingEffectAnimationViewDisplayLink];
  [*(a1 + 32) CFX_applyEffectAnimationView:{objc_msgSend(*(a1 + 32), "isEndingEditing")}];
  [*(a1 + 32) CFX_showEditControls];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 editEffect];
  [v2 effectEditorView:v3 didCompleteBeginEditingAnimationForEffect:v4];

  v5 = [*(a1 + 32) effectAnimationView];
  [v5 removeFromSuperview];

  [*(a1 + 32) setEffectAnimationView:0];
  [*(a1 + 40) endEditingFaceTrackingTransforms];
  v6 = *(*(a1 + 48) + 16);

  return v6();
}

- (void)CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(CFXEffectEditorView *)self effectAnimationView];

  if (!v5)
  {
    v6 = [(CFXEffectEditorView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7 & 1) != 0 && (-[CFXEffectEditorView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), -[CFXEffectEditorView editEffect](self, "editEffect"), v9 = objc_claimAutoreleasedReturnValue(), [v8 effectEditorView:self durationForEndEditingAnimationForEffect:v9], v11 = v10, v9, v8, v11 > 0.0) && (-[CFXEffectEditorView delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, -[CFXEffectEditorView delegate](self, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, -[CFXEffectEditorView delegate](self, "delegate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, (v13) && (v15 & 1) != 0 && (v17)
    {
      [(CFXEffectEditorView *)self CFX_endTextEditing:0];
      v18 = [(CFXEffectEditorView *)self delegate];
      v19 = [(CFXEffectEditorView *)self editEffect];
      [v18 effectEditorView:self willBeginAnimationAfterEditingEffect:v19];

      v20 = [(CFXEffectEditorView *)self editEffect];
      v21 = [v20 jtEffect];
      v22 = [v21 renderEffect];
      [v22 outputSize];
      v24 = v23;
      v26 = v25;

      v27 = [(CFXEffectEditorView *)self delegate];
      v28 = [(CFXEffectEditorView *)self editEffect];
      v29 = [v27 effectEditorView:self endEditingAnimationFromFrameForEffect:v28 relativeToBounds:{0.0, 0.0, v24, v26}];

      v30 = [(CFXEffectEditorView *)self delegate];
      v31 = [(CFXEffectEditorView *)self editEffect];
      v32 = [v30 effectEditorView:self endEditingAnimationToFrameForEffect:v31 relativeToBounds:{0.0, 0.0, v24, v26}];

      v33 = [[JFXOverlayEffectAnimationView alloc] initWithEffectFrame:v29 toEffectFrame:v32];
      [(CFXEffectEditorView *)self setEffectAnimationView:v33];

      v34 = [(CFXEffectEditorView *)self effectAnimationView];
      [(CFXEffectEditorView *)self addSubview:v34];

      v35 = [(CFXEffectEditorView *)self editEffect];
      v36 = [v35 jtEffect];

      [v36 beginEditingFaceTrackingTransforms];
      [(CFXEffectEditorView *)self CFX_applyEffectAnimationView:[(CFXEffectEditorView *)self isEndingEditing]];
      [(CFXEffectEditorView *)self CFX_startApplyingEffectAnimationViewDisplayLink];
      v37 = [(CFXEffectEditorView *)self CFX_springForTextEditAnimation];
      v38 = [(CFXEffectEditorView *)self effectAnimationView];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __83__CFXEffectEditorView_CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock___block_invoke;
      v44[3] = &unk_278D7B090;
      v44[4] = self;
      v39 = v36;
      v45 = v39;
      v46 = v4;
      [v38 animate:v37 completion:v44];

      v40 = [(CFXEffectEditorView *)self delegate];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        v42 = [(CFXEffectEditorView *)self delegate];
        v43 = [(CFXEffectEditorView *)self editEffect];
        [v42 effectEditorView:self didStartEndEditingAnimationForEffect:v43];
      }

      [(CFXEffectEditorView *)self CFX_forceHideEditControls];
    }

    else
    {
      v4[2](v4);
    }
  }
}

void __83__CFXEffectEditorView_CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock___block_invoke(uint64_t a1)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__CFXEffectEditorView_CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock___block_invoke_2;
  v11[3] = &unk_278D7A190;
  v2 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v2;
  v13 = *(a1 + 48);
  v3 = MEMORY[0x245D22230](v11);
  [*(a1 + 32) CFX_stopApplyingEffectAnimationViewDisplayLink];
  [*(a1 + 32) CFX_applyEffectAnimationView:{objc_msgSend(*(a1 + 32), "isEndingEditing")}];
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    v7 = *(a1 + 32);
    v8 = [v7 editEffect];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__CFXEffectEditorView_CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock___block_invoke_3;
    v9[3] = &unk_278D7A168;
    v10 = v3;
    [v6 effectEditorView:v7 didCompleteEndEditingAnimationForEffect:v8 completion:v9];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __83__CFXEffectEditorView_CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) effectAnimationView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setEffectAnimationView:0];
  [*(a1 + 40) endEditingFaceTrackingTransforms];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (JFXOverlayEffectDebugView)debugOverlayView
{
  if (JFX_isDrawOverlayBoundsEnabled() && !self->_debugOverlayView)
  {
    v3 = [JFXOverlayEffectDebugView alloc];
    v4 = [(JFXOverlayEffectDebugView *)v3 initWithFrame:self delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    debugOverlayView = self->_debugOverlayView;
    self->_debugOverlayView = v4;

    [(CFXEffectEditorView *)self addSubview:self->_debugOverlayView];
  }

  v6 = self->_debugOverlayView;

  return v6;
}

- (void)startUpdatingDebugOverlayView
{
  if (JFX_isDrawOverlayBoundsEnabled())
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_onDebugDisplayLink_];
    [(CFXEffectEditorView *)self setDebugDisplayLink:v3];

    v5 = [(CFXEffectEditorView *)self debugDisplayLink];
    v4 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v5 addToRunLoop:v4 forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)stopUpdatingDebugOverlayView
{
  if (JFX_isDrawOverlayBoundsEnabled())
  {
    v3 = [(CFXEffectEditorView *)self debugDisplayLink];
    [v3 invalidate];

    [(CFXEffectEditorView *)self setDebugDisplayLink:0];
  }
}

- (void)onDebugDisplayLink:(id)a3
{
  if (JFX_isDrawOverlayBoundsEnabled())
  {
    v4 = [(CFXEffectEditorView *)self editEffect];

    if (v4)
    {
      [(CFXEffectEditorView *)self bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      [(CFXEffectEditorView *)self renderBounds];
      v17 = CGRectFillRectToAspectInRect(v6, v8, v10, v12, v13, v14, v15, v16);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = [(CFXEffectEditorView *)self delegate];
      v25 = [(CFXEffectEditorView *)self editEffect];
      v33 = [v24 effectEditorView:self overlayEffectFrameForEffect:v25 relativeToBounds:{v17, v19, v21, v23}];

      v26 = [(CFXEffectEditorView *)self debugOverlayView];
      [v26 updateWithEffectFrame:v33];

      v27 = [(CFXEffectEditorView *)self debugOverlayView];
      [v27 frame];
      v29 = v28;
      v31 = v30;

      v32 = [(CFXEffectEditorView *)self debugOverlayView];
      [v32 setFrame:{v17, v19, v29, v31}];
    }
  }
}

- (id)overlayEffectDebugViewOptions
{
  v2 = JFX_getDrawOverlayBoundsOptionsDictionary();
  v3 = [JFXOverlayEffectDebugViewOptions debugViewOptionsWithDictionary:v2];

  return v3;
}

- (CGAffineTransform)editTransform
{
  v3 = *&self[13].d;
  *&retstr->a = *&self[13].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[13].ty;
  return self;
}

- (void)setEditTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_editTransform.a = *&a3->a;
  *&self->_editTransform.c = v4;
  *&self->_editTransform.tx = v3;
}

- (CGPoint)lastTouchLocationInView
{
  x = self->_lastTouchLocationInView.x;
  y = self->_lastTouchLocationInView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastSpacingBetweenTouchAndCenterOfEffect
{
  x = self->_lastSpacingBetweenTouchAndCenterOfEffect.x;
  y = self->_lastSpacingBetweenTouchAndCenterOfEffect.y;
  result.y = y;
  result.x = x;
  return result;
}

@end