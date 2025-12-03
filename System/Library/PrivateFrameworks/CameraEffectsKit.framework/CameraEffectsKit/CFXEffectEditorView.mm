@interface CFXEffectEditorView
- (BOOL)CFX_isPreviewingEditEffect;
- (BOOL)CFX_isRemoveAlwaysAvailableInCurrentMode;
- (BOOL)CFX_updateOverlayForTranslation;
- (BOOL)CFX_updateTrackingTypeForTouchLocation;
- (BOOL)CFX_useFaceReticle;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isEditing;
- (BOOL)textEffectEditorView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (CFXEffectEditorView)initWithMode:(unint64_t)mode delegate:(id)delegate;
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
- (void)CFX_addBeginEditingCompletionBlock:(id)block;
- (void)CFX_addEndEditingCompletionBlock:(id)block;
- (void)CFX_applyEffectAnimationView:(BOOL)view;
- (void)CFX_applyEffectTransformChanges;
- (void)CFX_beginEditingEffect:(id)effect isAnimating:(BOOL)animating;
- (void)CFX_beginPreviewingEditEffect;
- (void)CFX_beginTextEditing;
- (void)CFX_effectAnimationDisplayLinkFired:(id)fired;
- (void)CFX_effectPreviewBoundsDidChange;
- (void)CFX_endEditingEffect;
- (void)CFX_endPreviewingEditEffect;
- (void)CFX_endTextEditing:(BOOL)editing;
- (void)CFX_hideEditControls:(BOOL)controls;
- (void)CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock:(id)block;
- (void)CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock:(id)block;
- (void)CFX_previewEditEffectIfNeeded;
- (void)CFX_removeEffect;
- (void)CFX_rotateEffect:(double)effect;
- (void)CFX_scaleEffect:(double)effect;
- (void)CFX_setUserInteractionEnabledIfPossible:(BOOL)possible;
- (void)CFX_setupControls;
- (void)CFX_setupGestures;
- (void)CFX_showEditControls;
- (void)CFX_startApplyingEffectAnimationViewDisplayLink;
- (void)CFX_startTrackingExternalEffectChanges;
- (void)CFX_stopApplyingEffectAnimationViewDisplayLink;
- (void)CFX_stopTrackingExternalEffectChanges;
- (void)CFX_updateEditControlsLayout;
- (void)CFX_updateEffectText:(id)text updateTextProperties:(BOOL)properties;
- (void)CFX_updateExternalEffectTrackingRunningState;
- (void)CFX_updateSpacingBetweenTouchAndCenterOfEffectWithGesture:(id)gesture;
- (void)CFX_updateTextEditFieldLayout;
- (void)beginEditingEffect:(id)effect animated:(BOOL)animated withCompletionBlock:(id)block;
- (void)dealloc;
- (void)didTap:(id)tap;
- (void)endEditingAnimated:(BOOL)animated withCompletionBlock:(id)block;
- (void)externalEffectTrackingDisplayLinkFired:(id)fired;
- (void)handlePanGesture:(id)gesture;
- (void)handlePinchGesture:(id)gesture;
- (void)handleRotateGesture:(id)gesture;
- (void)initializeAvailabilityOfFrequentCalledDelegateMethods;
- (void)layoutSubviews;
- (void)notifyEffectTrackingDidChangeToType:(int64_t)type;
- (void)onDebugDisplayLink:(id)link;
- (void)setAppliedEditingGestures:(unint64_t)gestures;
- (void)setEditTransform:(CGAffineTransform *)transform;
- (void)startUpdatingDebugOverlayView;
- (void)stopUpdatingDebugOverlayView;
@end

@implementation CFXEffectEditorView

- (CFXEffectEditorView)initWithMode:(unint64_t)mode delegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = CFXEffectEditorView;
  v8 = [(CFXEffectEditorView *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, delegate);
    v9->_mode = mode;
    [(CFXEffectEditorView *)v9 setBackgroundColor:0];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
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
    if (mode == 1)
    {
      [(CFXEffectEditorView *)v9 CFX_setUserInteractionEnabledIfPossible:0];
    }

    if (isDrawEffectsEditorBoundsEnabled())
    {
      layer = [(CFXEffectEditorView *)v9 layer];
      [layer setBorderWidth:2.0];

      greenColor = [MEMORY[0x277D75348] greenColor];
      cGColor = [greenColor CGColor];
      layer2 = [(CFXEffectEditorView *)v9 layer];
      [layer2 setBorderColor:cGColor];
    }

    [(CFXEffectEditorView *)v9 startUpdatingDebugOverlayView];
    [(CFXEffectEditorView *)v9 initializeAvailabilityOfFrequentCalledDelegateMethods];
  }

  return v9;
}

- (void)initializeAvailabilityOfFrequentCalledDelegateMethods
{
  delegate = [(CFXEffectEditorView *)self delegate];
  self->_delegateSupportsDidMoveEffect = objc_opt_respondsToSelector() & 1;

  delegate2 = [(CFXEffectEditorView *)self delegate];
  self->_delegateSupportsCalculatingAnimatedFaceTrackingTransform = objc_opt_respondsToSelector() & 1;

  delegate3 = [(CFXEffectEditorView *)self delegate];
  self->_delegateSupportsApplyAnimationTransformsToEffect = objc_opt_respondsToSelector() & 1;
}

- (void)dealloc
{
  editControlsTrackingDisplayLink = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
  [editControlsTrackingDisplayLink invalidate];

  effectAnimationDisplayLink = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
  [effectAnimationDisplayLink invalidate];

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
  effectRenderingQueue = [(CFXEffectEditorView *)self effectRenderingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CFXEffectEditorView_CFX_effectPreviewBoundsDidChange__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(effectRenderingQueue, block);
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

- (void)didTap:(id)tap
{
  tapCopy = tap;
  v4 = [tapCopy state] == 3;
  v5 = tapCopy;
  if (v4)
  {
    [tapCopy locationInView:self];
    v7 = v6;
    v9 = v8;
    delegate = [(CFXEffectEditorView *)self delegate];
    v11 = [delegate effectEditorView:self effectAtPoint:{v7, v9}];

    jtEffect = [v11 jtEffect];
    if (jtEffect)
    {
      delegate3 = jtEffect;
    }

    else if (!-[CFXEffectEditorView CFX_isPreviewingEditEffect](self, "CFX_isPreviewingEditEffect") || (-[CFXEffectEditorView delegate](self, "delegate"), v16 = objc_claimAutoreleasedReturnValue(), -[CFXEffectEditorView editEffect](self, "editEffect"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 effectEditorView:self isEffectAtPoint:v17 effect:{v7, v9}], v17, v16, !v18) || (-[CFXEffectEditorView editEffect](self, "editEffect"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "jtEffect"), delegate3 = objc_claimAutoreleasedReturnValue(), v19, !delegate3))
    {
      delegate2 = [(CFXEffectEditorView *)self delegate];
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
      delegate3 = [(CFXEffectEditorView *)self delegate];
      [delegate3 effectEditorView:self didEndEditingByTappingOutSideEffectAtScreenPoint:{v23, v25}];
LABEL_13:

LABEL_14:
      v5 = tapCopy;
      goto LABEL_15;
    }

    editEffect = [(CFXEffectEditorView *)self editEffect];
    jtEffect2 = [editEffect jtEffect];

    if (delegate3 == jtEffect2)
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

- (void)setAppliedEditingGestures:(unint64_t)gestures
{
  if (self->_appliedEditingGestures == gestures)
  {
    return;
  }

  editEffect = [(CFXEffectEditorView *)self editEffect];
  jtEffect = [editEffect jtEffect];

  appliedEditingGestures = self->_appliedEditingGestures;
  if (gestures)
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
    [jtEffect beginInteractiveEditing];
LABEL_14:
    [MEMORY[0x277D415F8] setInteractiveMode:v8];
    goto LABEL_15;
  }

  if (!gestures && appliedEditingGestures)
  {
    [jtEffect endInteractiveEditing];
    goto LABEL_14;
  }

LABEL_15:
  self->_appliedEditingGestures = gestures;
}

- (void)handlePinchGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(CFXEffectEditorView *)self isTextEditing])
  {
    if ([gestureCopy state] == 1)
    {
      [(CFXEffectEditorView *)self CFX_hideEditControls];
      appliedEditingGestures = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures | 2];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures | 2];
    }

    [gestureCopy scale];
    [(CFXEffectEditorView *)self CFX_scaleEffect:?];
    [gestureCopy setScale:1.0];
    if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
    {
      appliedEditingGestures2 = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures2 & 0xFFFFFFFFFFFFFFFDLL];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures2 & 0xFFFFFFFFFFFFFFFDLL];
      [(CFXEffectEditorView *)self CFX_showEditControls];
    }
  }
}

- (void)handleRotateGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(CFXEffectEditorView *)self isTextEditing])
  {
    if ([gestureCopy state] == 1)
    {
      [(CFXEffectEditorView *)self CFX_hideEditControls];
      appliedEditingGestures = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures | 4];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures | 4];
    }

    [gestureCopy rotation];
    [(CFXEffectEditorView *)self CFX_rotateEffect:?];
    [gestureCopy setRotation:0.0];
    if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
    {
      appliedEditingGestures2 = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures2 & 0xFFFFFFFFFFFFFFFBLL];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures2 & 0xFFFFFFFFFFFFFFFBLL];
      [(CFXEffectEditorView *)self CFX_showEditControls];
    }
  }
}

- (void)handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  if (![(CFXEffectEditorView *)self isTextEditing])
  {
    if ([gestureCopy state] == 1)
    {
      [(CFXEffectEditorView *)self CFX_hideEditControls];
      appliedEditingGestures = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures | 1];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures | 1];
    }

    if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
    {
      appliedEditingGestures2 = [(CFXEffectEditorView *)self appliedEditingGestures];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures2 & 0xFFFFFFFFFFFFFFFELL];
      [(CFXEffectEditorView *)self setAppliedEditingGestures:appliedEditingGestures2 & 0xFFFFFFFFFFFFFFFELL];
      [(CFXEffectEditorView *)self CFX_showEditControls];
    }

    [(CFXEffectEditorView *)self CFX_updateSpacingBetweenTouchAndCenterOfEffectWithGesture:gestureCopy];
    view = [gestureCopy view];
    [gestureCopy setTranslation:view inView:{0.0, 0.0}];
  }
}

- (void)CFX_updateSpacingBetweenTouchAndCenterOfEffectWithGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ((state - 3) < 2)
  {
    if ([(CFXEffectEditorView *)self appliedEditingGestures])
    {
      goto LABEL_9;
    }

    [(CFXEffectEditorView *)self setLastTouchLocationInView:1.79769313e308, 1.79769313e308];
    [(CFXEffectEditorView *)self setLastSpacingBetweenTouchAndCenterOfEffect:1.79769313e308, 1.79769313e308];
    goto LABEL_7;
  }

  if (state != 2)
  {
    if (state != 1)
    {
      goto LABEL_9;
    }

    view = [gestureCopy view];
    [gestureCopy locationInView:view];
    v7 = v6;
    v9 = v8;
    view2 = [gestureCopy view];
    [(CFXEffectEditorView *)self convertPoint:view2 fromView:v7, v9];
    [(CFXEffectEditorView *)self setLastTouchLocationInView:?];

    delegate = [(CFXEffectEditorView *)self delegate];
    editEffect = [(CFXEffectEditorView *)self editEffect];
    [(CFXEffectEditorView *)self lastTouchLocation];
    v14 = v13;
    v16 = v15;
    [(CFXEffectEditorView *)self renderBounds];
    [delegate effectEditorView:self spacingBetweenCenterPointOfEffect:editEffect point:v14 relativeToBounds:{v16, v17, v18, v19, v20}];
    [(CFXEffectEditorView *)self setLastSpacingBetweenTouchAndCenterOfEffect:?];

LABEL_7:
    [(CFXEffectEditorView *)self CFX_updateExternalEffectTrackingRunningState];
    goto LABEL_9;
  }

  view3 = [gestureCopy view];
  [gestureCopy translationInView:view3];
  v23 = v22;
  v25 = v24;

  [(CFXEffectEditorView *)self lastTouchLocationInView];
  v27 = v23 + v26;
  [(CFXEffectEditorView *)self lastTouchLocationInView];
  [(CFXEffectEditorView *)self setLastTouchLocationInView:v27, v25 + v28];
LABEL_9:
}

- (void)CFX_setUserInteractionEnabledIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  v5 = [(CFXEffectEditorView *)self mode]!= 1 && possibleCopy;

  [(CFXEffectEditorView *)self setUserInteractionEnabled:v5];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
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
  editEffect = [(CFXEffectEditorView *)self editEffect];
  v3 = editEffect != 0;

  return v3;
}

- (void)beginEditingEffect:(id)effect animated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  effectCopy = effect;
  blockCopy = block;
  isEditing = [(CFXEffectEditorView *)self isEditing];
  if (blockCopy)
  {
    [(CFXEffectEditorView *)self CFX_addBeginEditingCompletionBlock:blockCopy];
  }

  if (![(CFXEffectEditorView *)self isBeginningEditing])
  {
    [(CFXEffectEditorView *)self setIsBeginningEditing:1];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __71__CFXEffectEditorView_beginEditingEffect_animated_withCompletionBlock___block_invoke;
    v24[3] = &unk_278D79E38;
    v25 = isEditing;
    v24[4] = self;
    v11 = MEMORY[0x245D22230](v24);
    [(CFXEffectEditorView *)self CFX_setUserInteractionEnabledIfPossible:0];
    delegate = [(CFXEffectEditorView *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate2 = [(CFXEffectEditorView *)self delegate];
      v15 = [delegate2 effectEditorView:self shouldDisableEditingAnimationForEffect:effectCopy];

      animatedCopy &= ~v15;
    }

    if ([(CFXEffectEditorView *)self mode]== 2 && animatedCopy)
    {
      jtEffect = [effectCopy jtEffect];
      [jtEffect setHidden:1];
      [(CFXEffectEditorView *)self CFX_beginEditingEffect:effectCopy isAnimating:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __71__CFXEffectEditorView_beginEditingEffect_animated_withCompletionBlock___block_invoke_2;
      v22[3] = &unk_278D7A168;
      v23 = v11;
      [(CFXEffectEditorView *)self CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock:v22];
    }

    else
    {
      [(CFXEffectEditorView *)self CFX_beginEditingEffect:effectCopy isAnimating:0];
      if ([(CFXEffectEditorView *)self CFX_useFaceReticle])
      {
        jtEffect2 = [effectCopy jtEffect];
        type = [jtEffect2 type];

        if (type == 2)
        {
          jtEffect3 = [effectCopy jtEffect];
          faceTrackingReticle = [(CFXEffectEditorView *)self faceTrackingReticle];
          trackingProps = [jtEffect3 trackingProps];
          [faceTrackingReticle userFeedbackForTrackingType:objc_msgSend(trackingProps needsHaptics:{"trackingType"), 1}];
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

- (void)endEditingAnimated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  if ([(CFXEffectEditorView *)self isEditing])
  {
    if (blockCopy)
    {
      [(CFXEffectEditorView *)self CFX_addEndEditingCompletionBlock:blockCopy];
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
        v19 = animatedCopy;
        [(CFXEffectEditorView *)self CFX_addBeginEditingCompletionBlock:v17];
        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }

      else
      {
        [(CFXEffectEditorView *)self setIsEndingEditing:1];
        removeButton = [(CFXEffectEditorView *)self removeButton];
        [removeButton setHidden:1];

        [(CFXEffectEditorView *)self CFX_setUserInteractionEnabledIfPossible:0];
        delegate = [(CFXEffectEditorView *)self delegate];
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          delegate2 = [(CFXEffectEditorView *)self delegate];
          editEffect = [(CFXEffectEditorView *)self editEffect];
          v12 = [delegate2 effectEditorView:self shouldDisableEditingAnimationForEffect:editEffect];

          animatedCopy &= ~v12;
        }

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __62__CFXEffectEditorView_endEditingAnimated_withCompletionBlock___block_invoke_2;
        v16[3] = &unk_278D79D20;
        v16[4] = self;
        v13 = MEMORY[0x245D22230](v16);
        if ([(CFXEffectEditorView *)self mode]== 2 && animatedCopy)
        {
          [(CFXEffectEditorView *)self CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock:v13];
        }

        else if (([(CFXEffectEditorView *)self CFX_useFaceReticle]& animatedCopy) == 1 && ([(CFXEffectEditorView *)self faceTrackingReticle], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
        {
          faceTrackingReticle = [(CFXEffectEditorView *)self faceTrackingReticle];
          [faceTrackingReticle fadeOutAndEndHapticWithCompletionBlock:v13];
        }

        else
        {
          v13[2](v13);
        }
      }
    }
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
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

- (void)notifyEffectTrackingDidChangeToType:(int64_t)type
{
  if ([(CFXEffectEditorView *)self CFX_useFaceReticle])
  {
    faceTrackingReticle = [(CFXEffectEditorView *)self faceTrackingReticle];
    [faceTrackingReticle userFeedbackForTrackingType:type needsHaptics:1];
  }
}

- (void)CFX_beginEditingEffect:(id)effect isAnimating:(BOOL)animating
{
  effectCopy = effect;
  [(CFXEffectEditorView *)self setEffectWasEdited:0];
  [(CFXEffectEditorView *)self setEditEffect:effectCopy];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  v14[0] = *MEMORY[0x277CBF2C0];
  v14[1] = v7;
  v14[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(CFXEffectEditorView *)self setEditTransform:v14];
  jtEffect = [effectCopy jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    jtEffect2 = [effectCopy jtEffect];
    [jtEffect2 beginInteractiveEditing];
  }

  if (!animating)
  {
    [(CFXEffectEditorView *)self CFX_showEditControls];
  }

  delegate = [(CFXEffectEditorView *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(CFXEffectEditorView *)self delegate];
    [delegate2 effectEditorView:self didBeginEditingEffect:effectCopy];
  }

  [(CFXEffectEditorView *)self CFX_beginPreviewingEditEffect];
}

- (void)CFX_removeEffect
{
  [(CFXEffectEditorView *)self CFX_endPreviewingEditEffect];
  delegate = [(CFXEffectEditorView *)self delegate];
  editEffect = [(CFXEffectEditorView *)self editEffect];
  [delegate effectEditorView:self didRemoveEffect:editEffect];

  [(CFXEffectEditorView *)self endEditingAnimated:1 withCompletionBlock:0];
}

- (void)CFX_endEditingEffect
{
  [(CFXEffectEditorView *)self CFX_endTextEditing:0];
  [(CFXEffectEditorView *)self CFX_hideEditControls];
  [(CFXEffectEditorView *)self CFX_endPreviewingEditEffect];
  editEffect = [(CFXEffectEditorView *)self editEffect];
  jtEffect = [editEffect jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    editEffect2 = [(CFXEffectEditorView *)self editEffect];
    jtEffect2 = [editEffect2 jtEffect];
    [jtEffect2 endInteractiveEditing];
  }

  [(CFXEffectEditorView *)self setAppliedEditingGestures:0];
  delegate = [(CFXEffectEditorView *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CFXEffectEditorView *)self delegate];
    editEffect3 = [(CFXEffectEditorView *)self editEffect];
    [delegate2 effectEditorView:self didEndEditingEffect:editEffect3];
  }

  [(CFXEffectEditorView *)self setEffectWasEdited:0];
}

- (void)CFX_addBeginEditingCompletionBlock:(id)block
{
  blockCopy = block;
  beginEditingCompletionBlocks = [(CFXEffectEditorView *)self beginEditingCompletionBlocks];

  if (!beginEditingCompletionBlocks)
  {
    v6 = objc_opt_new();
    [(CFXEffectEditorView *)self setBeginEditingCompletionBlocks:v6];
  }

  beginEditingCompletionBlocks2 = [(CFXEffectEditorView *)self beginEditingCompletionBlocks];
  v7 = [blockCopy copy];

  [beginEditingCompletionBlocks2 addObject:v7];
}

- (void)CFX_addEndEditingCompletionBlock:(id)block
{
  blockCopy = block;
  endEditingCompletionBlocks = [(CFXEffectEditorView *)self endEditingCompletionBlocks];

  if (!endEditingCompletionBlocks)
  {
    v6 = objc_opt_new();
    [(CFXEffectEditorView *)self setEndEditingCompletionBlocks:v6];
  }

  endEditingCompletionBlocks2 = [(CFXEffectEditorView *)self endEditingCompletionBlocks];
  v7 = [blockCopy copy];

  [endEditingCompletionBlocks2 addObject:v7];
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

- (void)CFX_scaleEffect:(double)effect
{
  [(CFXEffectEditorView *)self editTransform];
  CGAffineTransformScale(&v6, &v5, effect, effect);
  v5 = v6;
  [(CFXEffectEditorView *)self setEditTransform:&v5];
  [(CFXEffectEditorView *)self CFX_applyEffectTransformChanges];
}

- (void)CFX_rotateEffect:(double)effect
{
  [(CFXEffectEditorView *)self editTransform];
  CGAffineTransformRotate(&v6, &v5, effect);
  v5 = v6;
  [(CFXEffectEditorView *)self setEditTransform:&v5];
  [(CFXEffectEditorView *)self CFX_applyEffectTransformChanges];
}

- (BOOL)CFX_updateOverlayForTranslation
{
  delegate = [(CFXEffectEditorView *)self delegate];
  editEffect = [(CFXEffectEditorView *)self editEffect];
  [(CFXEffectEditorView *)self lastTouchLocation];
  v6 = v5;
  v8 = v7;
  [(CFXEffectEditorView *)self renderBounds];
  [delegate effectEditorView:self spacingBetweenCenterPointOfEffect:editEffect point:v6 relativeToBounds:{v8, v9, v10, v11, v12}];
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
  editEffect = [(CFXEffectEditorView *)self editEffect];
  jtEffect = [editEffect jtEffect];
  if ([jtEffect type] == 2)
  {
    jtEffect2 = [editEffect jtEffect];
  }

  else
  {
    jtEffect2 = 0;
  }

  trackingProps = [jtEffect2 trackingProps];
  trackingType = [trackingProps trackingType];

  if ([(CFXEffectEditorView *)self delegateSupportsDidMoveEffect])
  {
    delegate = [(CFXEffectEditorView *)self delegate];
    [(CFXEffectEditorView *)self lastTouchLocationInView];
    [delegate effectEditorView:self didMoveEffect:editEffect withTouchPoint:?];
  }

  if ([(CFXEffectEditorView *)self CFX_useFaceReticle]&& jtEffect2)
  {
    faceTrackingReticle = [(CFXEffectEditorView *)self faceTrackingReticle];
    trackingProps2 = [jtEffect2 trackingProps];
    [faceTrackingReticle userFeedbackForTrackingType:objc_msgSend(trackingProps2 needsHaptics:{"trackingType"), 0}];
  }

  trackingProps3 = [jtEffect2 trackingProps];
  trackingType2 = [trackingProps3 trackingType];

  v17 = trackingType == trackingType2;
  v6 = trackingType != trackingType2;
  if (!v17)
  {
    [(CFXEffectEditorView *)self lastSpacingBetweenTouchAndCenterOfEffect];
    if (v19 != 1.79769313e308 || v18 != 1.79769313e308)
    {
      delegate2 = [(CFXEffectEditorView *)self delegate];
      editEffect2 = [(CFXEffectEditorView *)self editEffect];
      [(CFXEffectEditorView *)self lastTouchLocation];
      v23 = v22;
      v25 = v24;
      [(CFXEffectEditorView *)self renderBounds];
      [delegate2 effectEditorView:self spacingBetweenCenterPointOfEffect:editEffect2 point:v23 relativeToBounds:{v25, v26, v27, v28, v29}];
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
    delegate = [(CFXEffectEditorView *)self delegate];
    editEffect = [(CFXEffectEditorView *)self editEffect];
    [(CFXEffectEditorView *)self editTransform];
    [(CFXEffectEditorView *)self renderBounds];
    [delegate effectEditorView:self didTransformEffect:editEffect transform:&v8 relativeToBounds:?];

    effectRenderingQueue = [(CFXEffectEditorView *)self effectRenderingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__CFXEffectEditorView_CFX_applyEffectTransformChanges__block_invoke;
    block[3] = &unk_278D79D20;
    block[4] = self;
    dispatch_async(effectRenderingQueue, block);

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

    removeButton = [(CFXEffectEditorView *)self removeButton];
    [removeButton addTarget:self action:sel_tapRemoveButton_ forControlEvents:64];

    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle.fill"];
    removeButton2 = [(CFXEffectEditorView *)self removeButton];
    [removeButton2 setImage:v5 forState:0];

    removeButton3 = [(CFXEffectEditorView *)self removeButton];
    [(CFXEffectEditorView *)self addSubview:removeButton3];

    removeButton4 = [(CFXEffectEditorView *)self removeButton];
    [removeButton4 sizeToFit];

    removeButton5 = [(CFXEffectEditorView *)self removeButton];
    [removeButton5 setHidden:1];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    removeButton6 = [(CFXEffectEditorView *)self removeButton];
    [removeButton6 setTintColor:whiteColor];

    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
    removeButton7 = [(CFXEffectEditorView *)self removeButton];
    layer = [removeButton7 layer];
    [layer setShadowColor:cGColor];

    removeButton8 = [(CFXEffectEditorView *)self removeButton];
    layer2 = [removeButton8 layer];
    LODWORD(v18) = 0.25;
    [layer2 setShadowOpacity:v18];

    removeButton9 = [(CFXEffectEditorView *)self removeButton];
    layer3 = [removeButton9 layer];
    [layer3 setShadowRadius:1.0];

    removeButton10 = [(CFXEffectEditorView *)self removeButton];
    layer4 = [removeButton10 layer];
    [layer4 setShadowOffset:{1.0, 1.0}];
  }

  if ([(CFXEffectEditorView *)self CFX_useFaceReticle])
  {
    v23 = [CFXFaceReticleView alloc];
    [(CFXEffectEditorView *)self bounds];
    v24 = [(CFXFaceReticleView *)v23 initWithFrame:0 reticleType:?];
    [(CFXEffectEditorView *)self setFaceTrackingReticle:v24];

    faceTrackingReticle = [(CFXEffectEditorView *)self faceTrackingReticle];
    [(CFXEffectEditorView *)self addSubview:faceTrackingReticle];
  }
}

- (void)CFX_hideEditControls:(BOOL)controls
{
  if (controls || ![(CFXEffectEditorView *)self CFX_isRemoveAlwaysAvailableInCurrentMode])
  {
    removeButton = [(CFXEffectEditorView *)self removeButton];
    [removeButton setHidden:1];
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

  removeButton = [(CFXEffectEditorView *)self removeButton];
  isHidden = [removeButton isHidden];

  if (isHidden)
  {
    return;
  }

  delegate = [(CFXEffectEditorView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_8;
  }

  delegate2 = [(CFXEffectEditorView *)self delegate];
  removeButtonRelativeBoundsIsViewSpace = [delegate2 removeButtonRelativeBoundsIsViewSpace];

  if (removeButtonRelativeBoundsIsViewSpace)
  {
LABEL_8:
    delegate3 = [(CFXEffectEditorView *)self delegate];
    editEffect = [(CFXEffectEditorView *)self editEffect];
    [(CFXEffectEditorView *)self bounds];
    [delegate3 effectEditorView:self removeButtonPositionForEffect:editEffect relativeToBounds:?];
    v25 = v24;
    v27 = v26;
    removeButton2 = [(CFXEffectEditorView *)self removeButton];
    [removeButton2 setCenter:{v25, v27}];

    goto LABEL_9;
  }

  delegate4 = [(CFXEffectEditorView *)self delegate];
  editEffect2 = [(CFXEffectEditorView *)self editEffect];
  [(CFXEffectEditorView *)self renderBounds];
  [delegate4 effectEditorView:self removeButtonPositionForEffect:editEffect2 relativeToBounds:?];
  v11 = v10;
  v13 = v12;

  [(CFXEffectEditorView *)self renderBounds];
  v15 = v14;
  v17 = v16;
  [(CFXEffectEditorView *)self bounds];
  v20 = CGPointConvertToCoordinateSpace(1uLL, 0, v11, v13, v15, v17, v18, v19);
  v22 = v21;
  delegate3 = [(CFXEffectEditorView *)self removeButton];
  [delegate3 setCenter:{v20, v22}];
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
    removeButton = [(CFXEffectEditorView *)self removeButton];
    [removeButton setHidden:0];

    [(CFXEffectEditorView *)self CFX_updateEditControlsLayout];
  }

  [(CFXEffectEditorView *)self CFX_updateExternalEffectTrackingRunningState];
}

- (void)CFX_startTrackingExternalEffectChanges
{
  editControlsTrackingDisplayLink = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];

  if (!editControlsTrackingDisplayLink)
  {
    editControlsTrackingDisplayLink2 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
    [editControlsTrackingDisplayLink2 invalidate];

    v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_externalEffectTrackingDisplayLinkFired_];
    [(CFXEffectEditorView *)self setEditControlsTrackingDisplayLink:v5];

    editControlsTrackingDisplayLink3 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
    [editControlsTrackingDisplayLink3 setPreferredFramesPerSecond:60];

    editControlsTrackingDisplayLink4 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [editControlsTrackingDisplayLink4 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)CFX_stopTrackingExternalEffectChanges
{
  editControlsTrackingDisplayLink = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];

  if (editControlsTrackingDisplayLink)
  {
    editControlsTrackingDisplayLink2 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
    [editControlsTrackingDisplayLink2 invalidate];

    [(CFXEffectEditorView *)self setEditControlsTrackingDisplayLink:0];
  }
}

- (void)CFX_updateExternalEffectTrackingRunningState
{
  if (-[CFXEffectEditorView mode](self, "mode") == 2 || ((-[CFXEffectEditorView lastTouchLocation](self, "lastTouchLocation"), v4 == 1.79769313e308) ? (v5 = v3 == 1.79769313e308) : (v5 = 0), v5 && (-[CFXEffectEditorView mode](self, "mode") || (-[CFXEffectEditorView removeButton](self, "removeButton"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHidden], v7, (v8 & 1) != 0))))
  {
    editControlsTrackingDisplayLink = 1;
  }

  else
  {
    editControlsTrackingDisplayLink = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];

    if (editControlsTrackingDisplayLink)
    {
      editControlsTrackingDisplayLink = 0;
    }

    else
    {
      [(CFXEffectEditorView *)self CFX_startTrackingExternalEffectChanges];
    }
  }

  editControlsTrackingDisplayLink2 = [(CFXEffectEditorView *)self editControlsTrackingDisplayLink];
  [editControlsTrackingDisplayLink2 setPaused:editControlsTrackingDisplayLink];
}

- (void)externalEffectTrackingDisplayLinkFired:(id)fired
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
    cFX_useFaceReticle = [(CFXEffectEditorView *)self CFX_useFaceReticle];
    faceTrackingReticle = [(CFXEffectEditorView *)self faceTrackingReticle];
    v13 = faceTrackingReticle;
    if (cFX_useFaceReticle)
    {
      [faceTrackingReticle setHidden:0];

      faceTrackingReticle2 = [(CFXEffectEditorView *)self faceTrackingReticle];
      [(CFXEffectEditorView *)self bounds];
      [faceTrackingReticle2 updateFrameForDisplayRelativeToBounds:?];

      [(CFXEffectEditorView *)self setLastFaceRectacleUpdateTime:v8];
    }

    else
    {
      [faceTrackingReticle setHidden:1];
    }
  }
}

- (void)CFX_beginTextEditing
{
  if (![(CFXEffectEditorView *)self isTextEditing])
  {
    delegate = [(CFXEffectEditorView *)self delegate];
    editEffect = [(CFXEffectEditorView *)self editEffect];
    v5 = [delegate effectEditorView:self shouldEditTextForEffect:editEffect];

    if (v5)
    {
      cFX_getTextEditingProperties = [(CFXEffectEditorView *)self CFX_getTextEditingProperties];
      if (cFX_getTextEditingProperties)
      {
        delegate2 = [(CFXEffectEditorView *)self delegate];
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0 || (-[CFXEffectEditorView delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), -[CFXEffectEditorView editEffect](self, "editEffect"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 effectEditorView:self presentCustomTextEditingUI:v10], v10, v9, (v11 & 1) == 0))
        {
          [(CFXEffectEditorView *)self CFX_hideEditControls];
          [(CFXEffectEditorView *)self setIsTextEditing:1];
          delegate3 = [(CFXEffectEditorView *)self delegate];
          editEffect2 = [(CFXEffectEditorView *)self editEffect];
          v14 = [delegate3 effectEditorView:self textForEffect:editEffect2];
          [(CFXEffectEditorView *)self setOldEditText:v14];

          delegate4 = [(CFXEffectEditorView *)self delegate];
          editEffect3 = [(CFXEffectEditorView *)self editEffect];
          [delegate4 effectEditorView:self didBeginEditingTextForEffect:editEffect3];

          effectRenderingQueue = [(CFXEffectEditorView *)self effectRenderingQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __43__CFXEffectEditorView_CFX_beginTextEditing__block_invoke;
          block[3] = &unk_278D79D20;
          block[4] = self;
          dispatch_async(effectRenderingQueue, block);

          delegate5 = [(CFXEffectEditorView *)self delegate];
          LOBYTE(editEffect3) = objc_opt_respondsToSelector();

          if (editEffect3)
          {
            delegate6 = [(CFXEffectEditorView *)self delegate];
            editEffect4 = [(CFXEffectEditorView *)self editEffect];
            -[CFXEffectEditorView setMaximumTextLength:](self, "setMaximumTextLength:", [delegate6 effectEditorView:self maximumTextLengthForEffect:editEffect4]);
          }

          else
          {
            [(CFXEffectEditorView *)self setMaximumTextLength:-1];
          }

          [(CFXEffectEditorView *)self bounds];
          v21 = [CFXTextEffectEditorView viewWithFrame:cFX_getTextEditingProperties textEditingProperties:?];
          [(CFXEffectEditorView *)self setTextEditorView:v21];

          textEditorView = [(CFXEffectEditorView *)self textEditorView];
          [textEditorView setDelegate:self];

          [(CFXEffectEditorView *)self setTruncateTextToMaximumLength:0];
          mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
          [mEMORY[0x277D75128] setApplicationSupportsShakeToEdit:0];

          textEditorView2 = [(CFXEffectEditorView *)self textEditorView];
          [(CFXEffectEditorView *)self addSubview:textEditorView2];

          if ([(CFXEffectEditorView *)self CFX_isRemoveAvailableInCurrentMode])
          {
            removeButton = [(CFXEffectEditorView *)self removeButton];
            [(CFXEffectEditorView *)self bringSubviewToFront:removeButton];
          }

          textEditorView3 = [(CFXEffectEditorView *)self textEditorView];
          [textEditorView3 applyTextEditingProperties:cFX_getTextEditingProperties];

          textEditorView4 = [(CFXEffectEditorView *)self textEditorView];
          [textEditorView4 selectAll];
        }
      }
    }
  }
}

- (id)CFX_getTextEditingProperties
{
  delegate = [(CFXEffectEditorView *)self delegate];
  editEffect = [(CFXEffectEditorView *)self editEffect];
  [(CFXEffectEditorView *)self bounds];
  v5 = [delegate effectEditorView:self textEditingPropertiesForEffect:editEffect relativeToBounds:?];

  return v5;
}

- (void)CFX_updateTextEditFieldLayout
{
  if ([(CFXEffectEditorView *)self isTextEditing])
  {
    cFX_getTextEditingProperties = [(CFXEffectEditorView *)self CFX_getTextEditingProperties];
    textEditorView = [(CFXEffectEditorView *)self textEditorView];
    [textEditorView applyTextEditingProperties:cFX_getTextEditingProperties];
  }
}

- (void)CFX_endTextEditing:(BOOL)editing
{
  editingCopy = editing;
  if ([(CFXEffectEditorView *)self isTextEditing])
  {
    if (editingCopy)
    {
      oldEditText = [(CFXEffectEditorView *)self oldEditText];
    }

    else
    {
      delegate = [(CFXEffectEditorView *)self delegate];
      editEffect = [(CFXEffectEditorView *)self editEffect];
      oldEditText = [delegate effectEditorView:self textForEffect:editEffect];
    }

    [(CFXEffectEditorView *)self CFX_updateEffectText:oldEditText updateTextProperties:0];
    textEditorView = [(CFXEffectEditorView *)self textEditorView];
    [textEditorView endTextEditing];

    textEditorView2 = [(CFXEffectEditorView *)self textEditorView];
    [textEditorView2 removeFromSuperview];

    [(CFXEffectEditorView *)self setTextEditorView:0];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setApplicationSupportsShakeToEdit:1];

    [(CFXEffectEditorView *)self setIsTextEditing:0];
    delegate2 = [(CFXEffectEditorView *)self delegate];
    editEffect2 = [(CFXEffectEditorView *)self editEffect];
    [delegate2 effectEditorView:self didEndEditingTextForEffect:editEffect2 wasCancelled:editingCopy];

    [(CFXEffectEditorView *)self CFX_showEditControls];
  }
}

- (void)CFX_updateEffectText:(id)text updateTextProperties:(BOOL)properties
{
  propertiesCopy = properties;
  textCopy = text;
  if ((CFX_updateEffectText_updateTextProperties__applyingEffectAttributes & 1) == 0)
  {
    CFX_updateEffectText_updateTextProperties__applyingEffectAttributes = 1;
    if ([(CFXEffectEditorView *)self truncateTextToMaximumLength])
    {
      v7 = [textCopy substringWithRange:{0, fmin(objc_msgSend(textCopy, "length"), -[CFXEffectEditorView maximumTextLength](self, "maximumTextLength"))}];

      [(CFXEffectEditorView *)self setTruncateTextToMaximumLength:0];
      textCopy = v7;
    }

    delegate = [(CFXEffectEditorView *)self delegate];
    editEffect = [(CFXEffectEditorView *)self editEffect];
    [delegate effectEditorView:self didEditTextForEffect:editEffect newText:textCopy];

    if (propertiesCopy)
    {
      cFX_getTextEditingProperties = [(CFXEffectEditorView *)self CFX_getTextEditingProperties];
      textEditorView = [(CFXEffectEditorView *)self textEditorView];
      [textEditorView applyTextEditingProperties:cFX_getTextEditingProperties];
    }

    [(CFXEffectEditorView *)self CFX_updateEditControlsLayout];
    effectRenderingQueue = [(CFXEffectEditorView *)self effectRenderingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CFXEffectEditorView_CFX_updateEffectText_updateTextProperties___block_invoke;
    block[3] = &unk_278D79D20;
    block[4] = self;
    dispatch_async(effectRenderingQueue, block);

    CFX_updateEffectText_updateTextProperties__applyingEffectAttributes = 0;
  }
}

- (CGRect)CFX_textEditingFrame
{
  textEditorView = [(CFXEffectEditorView *)self textEditorView];
  [textEditorView textEditingFrameRelativeToView:self];
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

- (BOOL)textEffectEditorView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  viewCopy = view;
  textCopy = text;
  if ([(CFXEffectEditorView *)self maximumTextLength]!= -1)
  {
    text = [viewCopy text];
    v11 = [text length];
    v12 = v11 - length + [textCopy length];
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
  delegate = [(CFXEffectEditorView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CFXEffectEditorView *)self delegate];
    v6 = [delegate2 effectEditorViewShouldPreviewEditEffect:self];

    if (v6)
    {
      v7 = objc_alloc_init(JFXImageView);
      [(CFXEffectEditorView *)self setEditEffectPreview:v7];

      editEffectPreview = [(CFXEffectEditorView *)self editEffectPreview];
      [editEffectPreview setUserInteractionEnabled:0];

      clearColor = [MEMORY[0x277D75348] clearColor];
      editEffectPreview2 = [(CFXEffectEditorView *)self editEffectPreview];
      [editEffectPreview2 setBackgroundColor:clearColor];

      editEffectPreview3 = [(CFXEffectEditorView *)self editEffectPreview];
      [editEffectPreview3 setContentMode:2];

      editEffectPreview4 = [(CFXEffectEditorView *)self editEffectPreview];
      [editEffectPreview4 setPreferIOSurfaceForYUV:1];

      editEffectPreview5 = [(CFXEffectEditorView *)self editEffectPreview];
      [editEffectPreview5 setPreferMetalKit:1];

      editEffectPreview6 = [(CFXEffectEditorView *)self editEffectPreview];
      [(CFXEffectEditorView *)self addSubview:editEffectPreview6];

      if ([(CFXEffectEditorView *)self CFX_isRemoveAvailableInCurrentMode])
      {
        removeButton = [(CFXEffectEditorView *)self removeButton];
        [(CFXEffectEditorView *)self bringSubviewToFront:removeButton];
      }

      editEffectPreview7 = [(CFXEffectEditorView *)self editEffectPreview];
      [editEffectPreview7 setTranslatesAutoresizingMaskIntoConstraints:0];

      editEffectPreview8 = [(CFXEffectEditorView *)self editEffectPreview];
      leftAnchor = [editEffectPreview8 leftAnchor];
      leftAnchor2 = [(CFXEffectEditorView *)self leftAnchor];
      v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      [v20 setActive:1];

      editEffectPreview9 = [(CFXEffectEditorView *)self editEffectPreview];
      rightAnchor = [editEffectPreview9 rightAnchor];
      rightAnchor2 = [(CFXEffectEditorView *)self rightAnchor];
      v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      [v24 setActive:1];

      editEffectPreview10 = [(CFXEffectEditorView *)self editEffectPreview];
      topAnchor = [editEffectPreview10 topAnchor];
      topAnchor2 = [(CFXEffectEditorView *)self topAnchor];
      v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v28 setActive:1];

      editEffectPreview11 = [(CFXEffectEditorView *)self editEffectPreview];
      bottomAnchor = [editEffectPreview11 bottomAnchor];
      bottomAnchor2 = [(CFXEffectEditorView *)self bottomAnchor];
      v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v32 setActive:1];

      delegate3 = [(CFXEffectEditorView *)self delegate];
      LOBYTE(bottomAnchor) = objc_opt_respondsToSelector();

      if (bottomAnchor)
      {
        delegate4 = [(CFXEffectEditorView *)self delegate];
        [delegate4 effectEditorViewWillBeginPreviewingEditEffect:self];
      }

      effectRenderingQueue = [(CFXEffectEditorView *)self effectRenderingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__CFXEffectEditorView_CFX_beginPreviewingEditEffect__block_invoke;
      block[3] = &unk_278D79D20;
      block[4] = self;
      dispatch_async(effectRenderingQueue, block);
    }
  }
}

- (BOOL)CFX_isPreviewingEditEffect
{
  editEffectPreview = [(CFXEffectEditorView *)self editEffectPreview];
  v3 = editEffectPreview != 0;

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
      jtEffect = CFXLog_DebugEffectEditorRenderer();
      if (os_log_type_enabled(jtEffect, OS_LOG_TYPE_DEBUG))
      {
        [CFXEffectEditorView CFX_previewEditEffectIfNeeded];
      }
    }

    else
    {
      self->_isRenderPendingForEditEffect = 0;
      self->_isRenderingEditEffect = 1;
      editEffect = [(CFXEffectEditorView *)self editEffect];
      jtEffect = [editEffect jtEffect];

      v5 = +[CFXMediaSettings sharedInstance];
      [v5 renderSize];
      v7 = v6;
      v9 = v8;

      v10 = +[CFXMediaSettings sharedInstance];
      [v10 frameSize];
      v12 = v11;
      v14 = v13;

      delegate = [(CFXEffectEditorView *)self delegate];
      v16 = objc_opt_respondsToSelector();

      v17 = 0;
      if (v16)
      {
        delegate2 = [(CFXEffectEditorView *)self delegate];
        editEffect2 = [(CFXEffectEditorView *)self editEffect];
        v17 = [delegate2 effectEditorView:self shouldDisableEditingAnimationForEffect:editEffect2];
      }

      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (v17 && userInterfaceIdiom == 1)
      {
        v22 = [jtEffect copy];

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

        jtEffect = v22;
      }

      *location = kDefaultEffectPreviewRenderTime;
      v40 = 0;
      v35 = [[JFXEffectsPreviewGenerationRequest alloc] initWithInputGenerator:jtEffect effectStack:0 outputSize:location frameSize:v7 renderTime:v9, v12, v14];
      [(JFXEffectsPreviewGenerationRequest *)v35 setPriority:2];
      kdebug_trace();
      objc_initWeak(location, self);
      previewGenerator = [(CFXEffectEditorView *)self previewGenerator];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __52__CFXEffectEditorView_CFX_previewEditEffectIfNeeded__block_invoke;
      v37[3] = &unk_278D7BE48;
      objc_copyWeak(&v38, location);
      v37[4] = self;
      [previewGenerator generatePreviewRequest:v35 completionHandler:v37];

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
    delegate = [(CFXEffectEditorView *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(CFXEffectEditorView *)self delegate];
      [delegate2 effectEditorViewDidEndPreviewingEditingEffect:self];
    }

    self->_isRenderingEditEffect = 0;
    editEffectPreview = [(CFXEffectEditorView *)self editEffectPreview];
    [editEffectPreview removeFromSuperview];

    [(CFXEffectEditorView *)self setEditEffectPreview:0];
  }
}

- (BOOL)CFX_useFaceReticle
{
  delegate = [(CFXEffectEditorView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(CFXEffectEditorView *)self delegate];
  v6 = [delegate2 effectEditorViewShouldShowFaceReticle:self];

  return v6;
}

- (id)CFX_springForTextEditAnimation
{
  animation = [MEMORY[0x277CD9FA0] animation];
  [animation setDamping:40.0];
  [animation setStiffness:400.0];
  [animation setMass:1.0];
  [animation setStiffness:400.0];
  [animation setDamping:40.0];
  [animation setInitialVelocity:0.0];
  [animation settlingDuration];
  [animation setDuration:?];

  return animation;
}

- (void)CFX_startApplyingEffectAnimationViewDisplayLink
{
  effectAnimationDisplayLink = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
  [effectAnimationDisplayLink invalidate];

  v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_CFX_effectAnimationDisplayLinkFired_];
  [(CFXEffectEditorView *)self setEffectAnimationDisplayLink:v4];

  effectAnimationDisplayLink2 = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
  [effectAnimationDisplayLink2 setPreferredFramesPerSecond:60];

  effectAnimationDisplayLink3 = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [effectAnimationDisplayLink3 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
}

- (void)CFX_stopApplyingEffectAnimationViewDisplayLink
{
  effectAnimationDisplayLink = [(CFXEffectEditorView *)self effectAnimationDisplayLink];

  if (effectAnimationDisplayLink)
  {
    effectAnimationDisplayLink2 = [(CFXEffectEditorView *)self effectAnimationDisplayLink];
    [effectAnimationDisplayLink2 invalidate];

    [(CFXEffectEditorView *)self setEffectAnimationDisplayLink:0];
  }
}

- (void)CFX_effectAnimationDisplayLinkFired:(id)fired
{
  firedCopy = fired;
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

- (void)CFX_applyEffectAnimationView:(BOOL)view
{
  viewCopy = view;
  effectAnimationView = [(CFXEffectEditorView *)self effectAnimationView];
  currentEffectTransforms = [effectAnimationView currentEffectTransforms];

  if (viewCopy)
  {
    delegate = [(CFXEffectEditorView *)self delegate];
    editEffect = [(CFXEffectEditorView *)self editEffect];
    v9 = [delegate effectEditorView:self isFaceTrackingEffect:editEffect];

    if (v9)
    {
      if ([(CFXEffectEditorView *)self delegateSupportsCalculatingAnimatedFaceTrackingTransform])
      {
        delegate2 = [(CFXEffectEditorView *)self delegate];
        effectAnimationView2 = [(CFXEffectEditorView *)self effectAnimationView];
        fromEffectFrame = [effectAnimationView2 fromEffectFrame];
        trackingType = [fromEffectFrame trackingType];
        faceTrackingTransform = [currentEffectTransforms faceTrackingTransform];
        effectAnimationView3 = [(CFXEffectEditorView *)self effectAnimationView];
        toEffectFrame = [effectAnimationView3 toEffectFrame];
        trackingType2 = [toEffectFrame trackingType];
        effectAnimationView4 = [(CFXEffectEditorView *)self effectAnimationView];
        [effectAnimationView4 fractionComplete];
        *&v18 = v18;
        v19 = [delegate2 effectEditorView:self calculateAnimatedFaceTrackingTransformWithCurrentFaceTrackingDataFromTrackingType:trackingType interpolatedWithFaceTrackingTransform:faceTrackingTransform toTrackingType:trackingType2 atAnimationProgress:v18];

        editEffectPreview = [(CFXEffectEditorView *)self editEffectPreview];
        v21 = editEffectPreview;
        if (!v19)
        {
          [editEffectPreview setHidden:1];

          goto LABEL_7;
        }

        [editEffectPreview setHidden:0];

        transform = [currentEffectTransforms transform];
        transformAnimation = [currentEffectTransforms transformAnimation];
        v24 = [JFXOverlayEffectTransforms transformsWithTransform:transform transformAnimation:transformAnimation faceTrackingTransform:v19];

        currentEffectTransforms = v24;
      }
    }
  }

  effectRenderingQueue = [(CFXEffectEditorView *)self effectRenderingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CFXEffectEditorView_CFX_applyEffectAnimationView___block_invoke;
  block[3] = &unk_278D79C88;
  block[4] = self;
  currentEffectTransforms = currentEffectTransforms;
  v28 = currentEffectTransforms;
  dispatch_async(effectRenderingQueue, block);

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

- (void)CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock:(id)block
{
  blockCopy = block;
  effectAnimationView = [(CFXEffectEditorView *)self effectAnimationView];

  if (!effectAnimationView)
  {
    delegate = [(CFXEffectEditorView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7 & 1) != 0 && (-[CFXEffectEditorView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), -[CFXEffectEditorView editEffect](self, "editEffect"), v9 = objc_claimAutoreleasedReturnValue(), [v8 effectEditorView:self durationForBeginEditingAnimationForEffect:v9], v11 = v10, v9, v8, v11 > 0.0) && (-[CFXEffectEditorView delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, -[CFXEffectEditorView delegate](self, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, -[CFXEffectEditorView delegate](self, "delegate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, -[CFXEffectEditorView delegate](self, "delegate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_opt_respondsToSelector(), v18, -[CFXEffectEditorView delegate](self, "delegate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_opt_respondsToSelector(), v20, (v13) && (v19 & 1) != 0 && (v15 & 1) != 0 && (v17 & 1) != 0 && (v21)
    {
      delegate2 = [(CFXEffectEditorView *)self delegate];
      editEffect = [(CFXEffectEditorView *)self editEffect];
      [delegate2 effectEditorView:self willBeginAnimationBeforeEditingEffect:editEffect];

      editEffect2 = [(CFXEffectEditorView *)self editEffect];
      jtEffect = [editEffect2 jtEffect];
      renderEffect = [jtEffect renderEffect];
      [renderEffect outputSize];
      v28 = v27;
      v30 = v29;

      delegate3 = [(CFXEffectEditorView *)self delegate];
      editEffect3 = [(CFXEffectEditorView *)self editEffect];
      v33 = [delegate3 effectEditorView:self beginEditingAnimationFromFrameForEffect:editEffect3 relativeToBounds:{0.0, 0.0, v28, v30}];

      delegate4 = [(CFXEffectEditorView *)self delegate];
      editEffect4 = [(CFXEffectEditorView *)self editEffect];
      v36 = [delegate4 effectEditorView:self beginEditingAnimationToFrameForEffect:editEffect4 relativeToBounds:{0.0, 0.0, v28, v30}];

      editEffect5 = [(CFXEffectEditorView *)self editEffect];
      jtEffect2 = [editEffect5 jtEffect];

      delegate5 = [(CFXEffectEditorView *)self delegate];
      editEffect6 = [(CFXEffectEditorView *)self editEffect];
      v41 = [delegate5 effectEditorView:self isFaceTrackingEffect:editEffect6];

      delegate6 = [(CFXEffectEditorView *)self delegate];
      editEffect7 = [(CFXEffectEditorView *)self editEffect];
      v44 = [delegate6 effectEditorView:self isFaceTrackingDataAvailableForEffect:editEffect7];

      if (v41 && (v44 & 1) == 0)
      {
        v45 = v36;

        v33 = v45;
      }

      v46 = [[JFXOverlayEffectAnimationView alloc] initWithEffectFrame:v33 toEffectFrame:v36];
      [(CFXEffectEditorView *)self setEffectAnimationView:v46];

      effectAnimationView2 = [(CFXEffectEditorView *)self effectAnimationView];
      [(CFXEffectEditorView *)self addSubview:effectAnimationView2];

      [jtEffect2 setHidden:0];
      [jtEffect2 beginEditingFaceTrackingTransforms];
      [(CFXEffectEditorView *)self CFX_applyEffectAnimationView:1];
      delegate7 = [(CFXEffectEditorView *)self delegate];
      editEffect8 = [(CFXEffectEditorView *)self editEffect];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __84__CFXEffectEditorView_CFX_performTextEditOnlyModeEnterAnimationWithCompletionBlock___block_invoke;
      v51[3] = &unk_278D7A190;
      v51[4] = self;
      v52 = jtEffect2;
      v53 = blockCopy;
      v50 = jtEffect2;
      [delegate7 effectEditorView:self didStartBeginEditingAnimationForEffect:editEffect8 completion:v51];
    }

    else
    {
      blockCopy[2](blockCopy);
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

- (void)CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock:(id)block
{
  blockCopy = block;
  effectAnimationView = [(CFXEffectEditorView *)self effectAnimationView];

  if (!effectAnimationView)
  {
    delegate = [(CFXEffectEditorView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7 & 1) != 0 && (-[CFXEffectEditorView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), -[CFXEffectEditorView editEffect](self, "editEffect"), v9 = objc_claimAutoreleasedReturnValue(), [v8 effectEditorView:self durationForEndEditingAnimationForEffect:v9], v11 = v10, v9, v8, v11 > 0.0) && (-[CFXEffectEditorView delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, -[CFXEffectEditorView delegate](self, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_opt_respondsToSelector(), v14, -[CFXEffectEditorView delegate](self, "delegate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_opt_respondsToSelector(), v16, (v13) && (v15 & 1) != 0 && (v17)
    {
      [(CFXEffectEditorView *)self CFX_endTextEditing:0];
      delegate2 = [(CFXEffectEditorView *)self delegate];
      editEffect = [(CFXEffectEditorView *)self editEffect];
      [delegate2 effectEditorView:self willBeginAnimationAfterEditingEffect:editEffect];

      editEffect2 = [(CFXEffectEditorView *)self editEffect];
      jtEffect = [editEffect2 jtEffect];
      renderEffect = [jtEffect renderEffect];
      [renderEffect outputSize];
      v24 = v23;
      v26 = v25;

      delegate3 = [(CFXEffectEditorView *)self delegate];
      editEffect3 = [(CFXEffectEditorView *)self editEffect];
      v29 = [delegate3 effectEditorView:self endEditingAnimationFromFrameForEffect:editEffect3 relativeToBounds:{0.0, 0.0, v24, v26}];

      delegate4 = [(CFXEffectEditorView *)self delegate];
      editEffect4 = [(CFXEffectEditorView *)self editEffect];
      v32 = [delegate4 effectEditorView:self endEditingAnimationToFrameForEffect:editEffect4 relativeToBounds:{0.0, 0.0, v24, v26}];

      v33 = [[JFXOverlayEffectAnimationView alloc] initWithEffectFrame:v29 toEffectFrame:v32];
      [(CFXEffectEditorView *)self setEffectAnimationView:v33];

      effectAnimationView2 = [(CFXEffectEditorView *)self effectAnimationView];
      [(CFXEffectEditorView *)self addSubview:effectAnimationView2];

      editEffect5 = [(CFXEffectEditorView *)self editEffect];
      jtEffect2 = [editEffect5 jtEffect];

      [jtEffect2 beginEditingFaceTrackingTransforms];
      [(CFXEffectEditorView *)self CFX_applyEffectAnimationView:[(CFXEffectEditorView *)self isEndingEditing]];
      [(CFXEffectEditorView *)self CFX_startApplyingEffectAnimationViewDisplayLink];
      cFX_springForTextEditAnimation = [(CFXEffectEditorView *)self CFX_springForTextEditAnimation];
      effectAnimationView3 = [(CFXEffectEditorView *)self effectAnimationView];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __83__CFXEffectEditorView_CFX_performTextEditOnlyModeExitAnimationWithCompletionBlock___block_invoke;
      v44[3] = &unk_278D7B090;
      v44[4] = self;
      v39 = jtEffect2;
      v45 = v39;
      v46 = blockCopy;
      [effectAnimationView3 animate:cFX_springForTextEditAnimation completion:v44];

      delegate5 = [(CFXEffectEditorView *)self delegate];
      v41 = objc_opt_respondsToSelector();

      if (v41)
      {
        delegate6 = [(CFXEffectEditorView *)self delegate];
        editEffect6 = [(CFXEffectEditorView *)self editEffect];
        [delegate6 effectEditorView:self didStartEndEditingAnimationForEffect:editEffect6];
      }

      [(CFXEffectEditorView *)self CFX_forceHideEditControls];
    }

    else
    {
      blockCopy[2](blockCopy);
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

    debugDisplayLink = [(CFXEffectEditorView *)self debugDisplayLink];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [debugDisplayLink addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
  }
}

- (void)stopUpdatingDebugOverlayView
{
  if (JFX_isDrawOverlayBoundsEnabled())
  {
    debugDisplayLink = [(CFXEffectEditorView *)self debugDisplayLink];
    [debugDisplayLink invalidate];

    [(CFXEffectEditorView *)self setDebugDisplayLink:0];
  }
}

- (void)onDebugDisplayLink:(id)link
{
  if (JFX_isDrawOverlayBoundsEnabled())
  {
    editEffect = [(CFXEffectEditorView *)self editEffect];

    if (editEffect)
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
      delegate = [(CFXEffectEditorView *)self delegate];
      editEffect2 = [(CFXEffectEditorView *)self editEffect];
      v33 = [delegate effectEditorView:self overlayEffectFrameForEffect:editEffect2 relativeToBounds:{v17, v19, v21, v23}];

      debugOverlayView = [(CFXEffectEditorView *)self debugOverlayView];
      [debugOverlayView updateWithEffectFrame:v33];

      debugOverlayView2 = [(CFXEffectEditorView *)self debugOverlayView];
      [debugOverlayView2 frame];
      v29 = v28;
      v31 = v30;

      debugOverlayView3 = [(CFXEffectEditorView *)self debugOverlayView];
      [debugOverlayView3 setFrame:{v17, v19, v29, v31}];
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

- (void)setEditTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_editTransform.a = *&transform->a;
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