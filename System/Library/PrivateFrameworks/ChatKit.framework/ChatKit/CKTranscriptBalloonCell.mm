@interface CKTranscriptBalloonCell
- (BOOL)_disableRasterizeInAnimations;
- (BOOL)_isCommSafetyRestrictedForChatItem:(id)item;
- (BOOL)_replyLineMaterialsEnabled;
- (BOOL)allowsSwipeToReply;
- (BOOL)isAudioMessage;
- (BOOL)isPointInAllowedSwipingArea:(CGPoint)area;
- (CGRect)_createLineViewFrameForThreadGroupLayoutAttributes:(id)attributes;
- (CGRect)_swipeToReplySafeSwipeRect;
- (CKBalloonSwipeController)balloonSwipeController;
- (CKTranscriptBalloonCell)init;
- (CKTranscriptBalloonCellDelegate)balloonCellDelegate;
- (CKTranscriptBalloonCellTextEffectsDelegate)textEffectsDelegate;
- (NSString)description;
- (UIEdgeInsets)messageDisplayViewTailInsets;
- (double)insertionDurationForInsertionType:(int64_t)type;
- (double)swipeToReplyLayoutOffset;
- (id)_createLinePathForFrame:(CGRect)frame withThreadGroupLayoutAttributes:(id)attributes;
- (id)_drawLowerBracketLoopForPath:(id)path withLayout:(id)layout lineViewMaxY:(double)y;
- (id)_extendPath:(id *)path withFrame:(CGRect)frame;
- (id)_lineDescriptionForThreadGroupLayoutAttributes:(id)attributes setLineType:(BOOL)type;
- (id)animationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue beginTime:(double)time duration:(double)duration timingFunction:(id)function;
- (id)animationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue beginTime:(double)time duration:(double)duration timingFunctionName:(id)name;
- (id)customTextRenderingDisplayLinkForTextBalloonViewTextView:(id)view;
- (id)messageDisplayViewLayoutAttributesForMessageDisplayViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame;
- (int64_t)insertionAnimationType;
- (unint64_t)textBalloonViewAllowedLayoutActionForTextBalloonView:(id)view;
- (void)_addQuickActionButtonIfNeededAnimated:(BOOL)animated;
- (void)_animateLineExtension:(id)extension;
- (void)_animateLowerBracketToLoop:(id)loop;
- (void)_animateReplyContextPreview:(id)preview;
- (void)_animateUpperBracket:(id)bracket;
- (void)_ck_setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)_drawLoopForPath:(id *)path withLayout:(id)layout;
- (void)_drawLowerBracketForPath:(id *)path lineViewMaxX:(double)x lineViewMaxY:(double)y;
- (void)_drawStraightLineForPath:(id *)path withLayout:(id)layout lineViewMaxY:(double)y isTerminal:(BOOL)terminal prevLineSegmentType:(unint64_t)type;
- (void)_drawUpperBracketForPath:(id *)path withLayout:(id)layout lineViewMaxX:(double)x lineViewMaxY:(double)y;
- (void)_fadeInBalloonAlpha:(double)alpha atBeginTime:(double)time;
- (void)_fadeInContactImageAlpha:(double)alpha atBeginTime:(double)time;
- (void)_removeQuickActionButtonIfNeededAnimated:(BOOL)animated;
- (void)_slideContactImageWithTranslate:(double)translate duration:(double)duration beginTime:(double)time;
- (void)_updateLineForThreadGroupLayoutAttributes:(id)attributes;
- (void)addFilter:(id)filter fromTriggeringMessage:(BOOL)message;
- (void)applyLayoutAttributes:(id)attributes;
- (void)clearFilters;
- (void)configureContactImageStrokeView;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)configureQuickActionButtonForChatItem:(id)item;
- (void)dealloc;
- (void)layoutSubviewsForAlignmentContents;
- (void)layoutSubviewsForContents;
- (void)performInsertion:(id)insertion;
- (void)prepareForReuse;
- (void)quickActionButtonAnimationDidEnd:(id)end;
- (void)quickActionButtonWasTapped:(id)tapped;
- (void)setAnimationDelegate:(id)delegate;
- (void)setAnimationPauseReasons:(int64_t)reasons;
- (void)setBalloonView:(id)view;
- (void)setCanShowQuickActionButton:(BOOL)button;
- (void)setSyndicationIdentifiers:(id)identifiers;
- (void)setThreadGroupLayoutAttributes:(id)attributes;
- (void)swipeToReplyGestureHandler:(id)handler;
- (void)textBalloonViewDidLayoutSubviews:(id)subviews;
- (void)textBalloonViewTextView:(id)view didChangeTextEffectPlaybackCandidateStatus:(BOOL)status;
- (void)textBalloonViewTextViewDidChangeRenderBounds:(id)bounds;
- (void)textBalloonViewWillLayoutSubviews:(id)subviews;
- (void)updateQuickActionButtonVisibility;
- (void)willLayoutDrawerLabelFrame:(CGRect *)frame;
@end

@implementation CKTranscriptBalloonCell

- (CKTranscriptBalloonCell)init
{
  v5.receiver = self;
  v5.super_class = CKTranscriptBalloonCell;
  v2 = [(CKTranscriptBalloonCell *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKTranscriptBalloonCell *)v2 setMayReparentPluginViews:1];
  }

  return v3;
}

- (void)dealloc
{
  [(CKBalloonView *)self->_balloonView removeFromSuperview];
  CKBalloonViewReuse(self->_balloonView);
  v3.receiver = self;
  v3.super_class = CKTranscriptBalloonCell;
  [(CKPhoneTranscriptMessageCell *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKTranscriptBalloonCell;
  v4 = [(CKTranscriptMessageCell *)&v8 description];
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  v6 = [v3 stringWithFormat:@"%@ balloonView:%@", v4, balloonView];

  return v6;
}

- (BOOL)isAudioMessage
{
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_ck_setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = CKTranscriptBalloonCell;
  [(CKEditableCollectionViewCell *)&v7 _ck_setEditing:editing animated:animated];
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  [balloonView setUserInteractionEnabled:!editingCopy];
}

- (BOOL)_disableRasterizeInAnimations
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isBalloonMaterialsEnabled = [mEMORY[0x1E69A8070] isBalloonMaterialsEnabled];

  if (isBalloonMaterialsEnabled)
  {
    balloonView = [(CKTranscriptBalloonCell *)self balloonView];
    v6 = balloonView;
    if (balloonView)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      [balloonView balloonDescriptor];
      traitCollection = [(CKTranscriptBalloonCell *)self traitCollection];
      v11[4] = v16;
      v11[5] = v17;
      v11[6] = v18;
      v11[7] = v19;
      v11[0] = v12;
      v11[1] = v13;
      v11[2] = v14;
      v11[3] = v15;
      _disableRasterizeInAnimations = [CKBalloonDescriptorObjcWrapper needsBubbleMaterialForDescriptor:v11 traitCollection:traitCollection];
    }

    else
    {
      v20.receiver = self;
      v20.super_class = CKTranscriptBalloonCell;
      _disableRasterizeInAnimations = [(CKTranscriptBalloonCell *)&v20 _disableRasterizeInAnimations];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CKTranscriptBalloonCell;
    return [(CKTranscriptBalloonCell *)&v10 _disableRasterizeInAnimations];
  }

  return _disableRasterizeInAnimations;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (![(CKTranscriptCollectionViewLayoutAttributes *)self->_layoutAttributes isEqual:attributesCopy])
  {
    v7.receiver = self;
    v7.super_class = CKTranscriptBalloonCell;
    [(CKTranscriptBalloonCell *)&v7 applyLayoutAttributes:attributesCopy];
    [(CKTranscriptBalloonCell *)self setLayoutAttributes:attributesCopy];
    if (attributesCopy)
    {
      v5 = [attributesCopy[81] mutableCopy];
      [v5 addObject:attributesCopy];
      [(CKTranscriptBalloonCell *)self setThreadGroupLayoutAttributes:v5];
    }

    if ([attributesCopy isInsertingReply])
    {
      [(CKTranscriptBalloonCell *)self setInsertingReply:1];
    }

    if ([(CKTranscriptCell *)self suppressesAnimationsForLineUpdates])
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __49__CKTranscriptBalloonCell_applyLayoutAttributes___block_invoke;
      v6[3] = &unk_1E72EBA18;
      v6[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
    }

    else
    {
      [(CKTranscriptBalloonCell *)self _updateLineForThreadGroupLayoutAttributes:self->_threadGroupLayoutAttributes];
    }
  }
}

- (id)messageDisplayViewLayoutAttributesForMessageDisplayViewFrame:(CGRect)frame inContainerFrame:(CGRect)containerFrame
{
  height = containerFrame.size.height;
  width = containerFrame.size.width;
  y = containerFrame.origin.y;
  x = containerFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v22.receiver = self;
  v22.super_class = CKTranscriptBalloonCell;
  v13 = [CKTranscriptMessageContentCell messageDisplayViewLayoutAttributesForMessageDisplayViewFrame:sel_messageDisplayViewLayoutAttributesForMessageDisplayViewFrame_inContainerFrame_ inContainerFrame:?];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled && (v16 = objc_loadWeakRetained(&self->_textEffectsDelegate), v16, v16))
  {
    balloonView = [(CKTranscriptBalloonCell *)self balloonView];
    if (balloonView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = balloonView;
      WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);
      v20 = [WeakRetained transcriptBalloonCell:self layoutAttributesForTextBalloonView:v18 messageDisplayViewFrame:v13 inContainerFrame:v11 proposedAttributes:{v10, v9, v8, x, y, width, height}];
    }

    else
    {
      v20 = v13;
    }
  }

  else
  {
    v20 = v13;
  }

  return v20;
}

- (void)layoutSubviewsForContents
{
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  v6 = v5;
  [(CKTranscriptMessageCell *)self safeAreaInsets];
  v8 = v7;
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  [(CKEditableCollectionViewCell *)self contentAlignmentInsets];
  [(CKTranscriptMessageCell *)self safeAreaInsets];
  v9 = +[CKUIBehavior sharedBehaviors];
  if ([v9 forceMinTranscriptMarginInsets])
  {
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 minTranscriptMarginInsets];
    v12 = v11;
  }

  else
  {
    [(CKEditableCollectionViewCell *)self marginInsets];
    v12 = v13;
  }

  v14 = v4 - (v6 - v8);
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 contactPhotoTranscriptInsets];
  v17 = v12 + v16;

  self->_lineHorizontalOffset = v14 + v17;
  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 transcriptContactImageDiameter];
  v20 = v19;
  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 contactPhotoBalloonMargin];
  v23 = v20 + v22;

  [(CKTranscriptCell *)self drawerPercentRevealed];
  v25 = v24;
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v27 = v26;
  [(CKTranscriptMessageCell *)self safeAreaInsets];
  self->_lineHorizontalOffset = self->_lineHorizontalOffset - v25 * (v23 + v27 - v28);
  v29.receiver = self;
  v29.super_class = CKTranscriptBalloonCell;
  [(CKPhoneTranscriptMessageCell *)&v29 layoutSubviewsForContents];
  [(CKTranscriptBalloonCell *)self _updateLineForThreadGroupLayoutAttributes:self->_threadGroupLayoutAttributes];
}

- (void)layoutSubviewsForAlignmentContents
{
  v27.receiver = self;
  v27.super_class = CKTranscriptBalloonCell;
  [(CKTranscriptMessageContentCell *)&v27 layoutSubviewsForAlignmentContents];
  if (self->_quickActionButton)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 transcriptQuickActionButtonDiameter];
    v5 = v4;

    contentView = [(CKEditableCollectionViewCell *)self contentView];
    [contentView bounds];
    v8 = v7;
    v10 = v9;
    if (CKMainScreenScale_once_11 != -1)
    {
      [CKTranscriptBalloonCell layoutSubviewsForAlignmentContents];
    }

    v11 = *&CKMainScreenScale_sMainScreenScale_11;
    if (*&CKMainScreenScale_sMainScreenScale_11 == 0.0)
    {
      v11 = 1.0;
    }

    v12 = floor((v8 + (v10 - v5) * 0.5) * v11) / v11;

    balloonView = [(CKTranscriptBalloonCell *)self balloonView];
    [balloonView frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      v22 = 0.0;
      if ([(CKEditableCollectionViewCell *)self orientation]!= 2)
      {
LABEL_11:
        [(CKQuickActionButton *)self->_quickActionButton setFrame:v22, v12, v5, v5];
        return;
      }

      v23 = +[CKUIBehavior sharedBehaviors];
      [v23 transcriptQuickActionButtonHorizontalSpacing];
      v22 = v15 - v5 - v24;
    }

    else
    {
      v28.origin.x = v15;
      v28.origin.y = v17;
      v28.size.width = v19;
      v28.size.height = v21;
      MaxX = CGRectGetMaxX(v28);
      v23 = +[CKUIBehavior sharedBehaviors];
      [v23 transcriptQuickActionButtonHorizontalSpacing];
      v22 = MaxX + v26;
    }

    goto LABEL_11;
  }
}

- (void)performInsertion:(id)insertion
{
  insertionCopy = insertion;
  insertionType = [(CKTranscriptCell *)self insertionType];
  if ([(CKTranscriptMessageCell *)self isReplyContextPreview]&& insertionType)
  {
    [(CKTranscriptBalloonCell *)self _animateReplyContextPreview:insertionCopy];
  }

  else
  {
    switch(insertionType)
    {
      case 3:
        [(CKTranscriptBalloonCell *)self _animateLowerBracketToLoop:insertionCopy];
        break;
      case 2:
        [(CKTranscriptBalloonCell *)self _animateLineExtension:insertionCopy];
        break;
      case 1:
        [(CKTranscriptBalloonCell *)self _animateUpperBracket:insertionCopy];
        break;
      default:
        [(CKTranscriptBalloonCell *)self setInsertingReply:0];
        v6.receiver = self;
        v6.super_class = CKTranscriptBalloonCell;
        [(CKEditableCollectionViewCell *)&v6 performInsertion:insertionCopy];
        break;
    }
  }
}

- (int64_t)insertionAnimationType
{
  lineType = self->_lineType;
  if (lineType == 1 || self->_lineIsExtended)
  {
    return 2;
  }

  v4 = 3;
  if (lineType != 5)
  {
    v4 = 0;
  }

  if (lineType == 2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (double)insertionDurationForInsertionType:(int64_t)type
{
  isReplyContextPreview = [(CKTranscriptMessageCell *)self isReplyContextPreview];
  result = 0.3;
  if (!isReplyContextPreview && type != 1)
  {
    if (type == 3)
    {
      return 1.1;
    }

    else if (type == 2)
    {
      [(CKTranscriptBalloonCell *)self _createLineViewFrameForThreadGroupLayoutAttributes:self->_threadGroupLayoutAttributes, 0.3];
      return fmax(fmin(v7 * 0.0026 + 0.06868, 0.3), 0.1);
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (void)addFilter:(id)filter fromTriggeringMessage:(BOOL)message
{
  messageCopy = message;
  filterCopy = filter;
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  [balloonView prepareForDisplayIfNeeded];

  balloonView2 = [(CKTranscriptBalloonCell *)self balloonView];
  if (balloonView2)
  {
    v8 = balloonView2;
    animatingInDarkEffect = [(CKTranscriptBalloonCell *)self animatingInDarkEffect];

    if (animatingInDarkEffect || messageCopy)
    {
      balloonView3 = [(CKTranscriptBalloonCell *)self balloonView];
      [balloonView3 addFilter:filterCopy];
    }
  }

  lineView = [(CKTranscriptBalloonCell *)self lineView];
  if (lineView)
  {
    v12 = lineView;
    animatingInDarkEffect2 = [(CKTranscriptBalloonCell *)self animatingInDarkEffect];

    if (animatingInDarkEffect2)
    {
      lineView2 = [(CKTranscriptBalloonCell *)self lineView];
      [lineView2 addFilter:filterCopy];
    }
  }
}

- (void)clearFilters
{
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  [balloonView clearFilters];

  lineView = [(CKTranscriptBalloonCell *)self lineView];

  if (lineView)
  {
    lineView2 = [(CKTranscriptBalloonCell *)self lineView];
    [lineView2 clearFilters];
  }
}

- (void)willLayoutDrawerLabelFrame:(CGRect *)frame
{
  v17 = 0u;
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  v6 = balloonView;
  if (balloonView)
  {
    [balloonView balloonDescriptor];
  }

  else
  {
    v17 = 0u;
  }

  if (BYTE9(v17) == 1)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled];

    if ((isRoundTailedBalloonShapeEnabled & 1) == 0)
    {
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 balloonMaskTailSizeForTailShape:0];
      if (v10 > 0.0)
      {
        v11 = v10;
        contentView = [(CKEditableCollectionViewCell *)self contentView];
        layer = [contentView layer];
        v14 = layer;
        if (layer)
        {
          [layer transform];
          v15 = v16;
        }

        else
        {
          v15 = 0.0;
        }

        frame->size.height = frame->size.height - v11 * v15;
      }
    }
  }
}

- (UIEdgeInsets)messageDisplayViewTailInsets
{
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  [balloonView tailInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setAnimationPauseReasons:(int64_t)reasons
{
  v7.receiver = self;
  v7.super_class = CKTranscriptBalloonCell;
  [(CKTranscriptMessageContentCell *)&v7 setAnimationPauseReasons:?];
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  [balloonView setInvisibleInkEffectPaused:reasons != 0];

  balloonView2 = [(CKTranscriptBalloonCell *)self balloonView];
  [balloonView2 setAnimationPaused:(reasons >> 1) & 1];
}

- (CKBalloonSwipeController)balloonSwipeController
{
  balloonSwipeController = self->_balloonSwipeController;
  if (balloonSwipeController)
  {
    [(CKBalloonSwipeController *)balloonSwipeController setBalloonView:self->_balloonView];
    v4 = self->_balloonSwipeController;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [CKBalloonSwipeController alloc];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__CKTranscriptBalloonCell_balloonSwipeController__block_invoke;
    v11[3] = &unk_1E72ED150;
    objc_copyWeak(&v12, &location);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__CKTranscriptBalloonCell_balloonSwipeController__block_invoke_2;
    v9[3] = &unk_1E72ED178;
    objc_copyWeak(&v10, &location);
    v6 = [(CKBalloonSwipeController *)v5 initForCell:self swipeCompletionHandler:v11 swipeChangedHandler:v9];
    v7 = self->_balloonSwipeController;
    self->_balloonSwipeController = v6;

    [(CKBalloonSwipeController *)self->_balloonSwipeController setBalloonView:self->_balloonView];
    v4 = self->_balloonSwipeController;
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __49__CKTranscriptBalloonCell_balloonSwipeController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained balloonCellDelegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 swipeToReplyLayoutOffset];
  [v2 transcriptBalloonCell:v3 didEndBalloonSwipeWithDelta:? swipeVelocity:?];
}

void __49__CKTranscriptBalloonCell_balloonSwipeController__block_invoke_2(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained balloonCellDelegate];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v5 transcriptBalloonCell:v6 didTranslateBalloonByDelta:a2];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setNeedsLayout];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 layoutIfNeeded];
}

- (void)setBalloonView:(id)view
{
  viewCopy = view;
  if (self->_balloonView != viewCopy)
  {
    v16 = viewCopy;
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

    if (isExpressiveTextEnabled)
    {
      asTextBalloonView = [(CKBalloonView *)self->_balloonView asTextBalloonView];
      [asTextBalloonView setTextEffectsDelegate:0];
    }

    [(CKBalloonView *)self->_balloonView removeFromSuperview];
    objc_storeStrong(&self->_balloonView, view);
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isExpressiveTextEnabled2 = [mEMORY[0x1E69A8070]2 isExpressiveTextEnabled];

    if (isExpressiveTextEnabled2)
    {
      asTextBalloonView2 = [(CKBalloonView *)self->_balloonView asTextBalloonView];
      [asTextBalloonView2 setTextEffectsDelegate:self];
    }

    balloonView = self->_balloonView;
    balloonSwipeController = [(CKTranscriptBalloonCell *)self balloonSwipeController];
    [balloonSwipeController setBalloonView:balloonView];

    contentView = [(CKEditableCollectionViewCell *)self contentView];
    [contentView addSubview:self->_balloonView];

    layer = [(CKTranscriptBalloonCell *)self layer];
    [layer setAllowsGroupOpacity:{-[CKBalloonView needsGroupOpacity](self->_balloonView, "needsGroupOpacity")}];

    [(CKTranscriptBalloonCell *)self setNeedsLayout];
    viewCopy = v16;
  }
}

- (void)setAnimationDelegate:(id)delegate
{
  delegateCopy = delegate;
  animationDelegate = [(CKTranscriptCell *)self animationDelegate];

  if (animationDelegate != delegateCopy)
  {
    v7.receiver = self;
    v7.super_class = CKTranscriptBalloonCell;
    [(CKTranscriptCell *)&v7 setAnimationDelegate:delegateCopy];
    balloonView = [(CKTranscriptBalloonCell *)self balloonView];
    [balloonView setAnimationDelegate:delegateCopy];
  }
}

- (double)swipeToReplyLayoutOffset
{
  layoutAttributes = [(CKTranscriptBalloonCell *)self layoutAttributes];
  v4 = layoutAttributes;
  if (!layoutAttributes || (v5 = *(layoutAttributes + 448), v5 <= 0.0))
  {
    balloonSwipeController = [(CKTranscriptBalloonCell *)self balloonSwipeController];
    [balloonSwipeController offsetDelta];
    v5 = v7;
  }

  return v5;
}

- (BOOL)allowsSwipeToReply
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTextSelectionEnabled = [mEMORY[0x1E69A8070] isTextSelectionEnabled];

  if (isTextSelectionEnabled)
  {
    balloonView = [(CKTranscriptBalloonCell *)self balloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      textView = [balloonView textView];
      if ([textView isSelectable])
      {
        [textView selectedRange];
        if (v7)
        {

          LOBYTE(v8) = 0;
          return v8 & 1;
        }
      }
    }
  }

  canInlineReply = [(CKTranscriptBalloonCell *)self canInlineReply];
  isReplyContextPreview = [(CKTranscriptMessageCell *)self isReplyContextPreview];
  isInReplyContext = [(CKEditableCollectionViewCell *)self isInReplyContext];
  v8 = (isInReplyContext | [(CKTranscriptBalloonCell *)self isAudioMessage]) ^ 1;
  if (isReplyContextPreview)
  {
    LOBYTE(v8) = 0;
  }

  if (!canInlineReply)
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (BOOL)isPointInAllowedSwipingArea:(CGPoint)area
{
  y = area.y;
  x = area.x;
  [(CKTranscriptBalloonCell *)self _swipeToReplySafeSwipeRect];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (CGRect)_swipeToReplySafeSwipeRect
{
  [(CKBalloonView *)self->_balloonView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shouldReverseLayoutDirection = [(CKTranscriptBalloonCell *)self _shouldReverseLayoutDirection];
  orientation = [(CKEditableCollectionViewCell *)self orientation];
  v13 = v4 + -28.0;
  if (!orientation)
  {
    v13 = v4;
  }

  v14 = v4 + 28.0;
  if (orientation)
  {
    v14 = v4;
  }

  if (_shouldReverseLayoutDirection)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v8 < 156.0)
  {
    v16 = 156.0 - v8;
    if ([(CKEditableCollectionViewCell *)self orientation])
    {
      v15 = v15 - v16;
    }

    v8 = v8 + v16;
  }

  v17 = v15;
  v18 = v6;
  v19 = v8;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)swipeToReplyGestureHandler:(id)handler
{
  handlerCopy = handler;
  [(CKTranscriptCell *)self drawerPercentRevealed];
  if (v4 <= 0.0)
  {
    balloonSwipeController = [(CKTranscriptBalloonCell *)self balloonSwipeController];
    [balloonSwipeController swipeToReplyGestureHandler:handlerCopy];
  }
}

- (void)prepareForReuse
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    balloonView = [(CKTranscriptBalloonCell *)self balloonView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      balloonView2 = [(CKTranscriptBalloonCell *)self balloonView];
      textView = [balloonView2 textView];
      if ([textView allowsTextAnimations])
      {
        [textView ck_invalidateAllAnimators];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = CKTranscriptBalloonCell;
  [(CKTranscriptMessageCell *)&v20 prepareForReuse];
  [(CKTranscriptBalloonCell *)self setLayoutAttributes:0];
  [(CKTranscriptBalloonCell *)self setThreadGroupLayoutAttributes:0];
  [(CKTranscriptBalloonCell *)self setInsertingReply:0];
  [(CKTranscriptBalloonCell *)self setLineType:0];
  contactImageView = [(CKPhoneTranscriptMessageCell *)self contactImageView];
  layer = [contactImageView layer];

  LODWORD(v11) = 1.0;
  [layer setOpacity:v11];
  [layer removeAllAnimations];
  balloonView3 = [(CKTranscriptBalloonCell *)self balloonView];
  layer2 = [balloonView3 layer];

  LODWORD(v14) = 1.0;
  [layer2 setOpacity:v14];
  [layer2 removeAllAnimations];
  quickActionButton = [(CKTranscriptBalloonCell *)self quickActionButton];
  [quickActionButton removeFromSuperview];

  quickActionButton = self->_quickActionButton;
  self->_quickActionButton = 0;

  mEMORY[0x1E69A5C30] = [MEMORY[0x1E69A5C30] sharedInstance];
  [mEMORY[0x1E69A5C30] unregisterPhotoLibraryPersistenceManagerListener:self];

  [(CKTranscriptBalloonCell *)self setHasQueuedQuickActionButtonRemoval:0];
  balloonView4 = [(CKTranscriptBalloonCell *)self balloonView];
  [balloonView4 setHidden:0];

  balloonSwipeController = [(CKTranscriptBalloonCell *)self balloonSwipeController];
  [balloonSwipeController prepareForReuse];

  [(CKTranscriptBalloonCell *)self setBalloonCellDelegate:0];
}

- (BOOL)_replyLineMaterialsEnabled
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([mEMORY[0x1E69A8070] isBalloonMaterialsEnabled])
  {
    traitCollection = [(CKTranscriptBalloonCell *)self traitCollection];
    isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];
  }

  else
  {
    isTranscriptBackgroundActive = 0;
  }

  return isTranscriptBackgroundActive;
}

- (void)setThreadGroupLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  _replyLineMaterialsEnabled = [(CKTranscriptBalloonCell *)self _replyLineMaterialsEnabled];
  threadGroupLayoutAttributes = [(CKTranscriptBalloonCell *)self threadGroupLayoutAttributes];
  v7 = [attributesCopy isEqualToArray:threadGroupLayoutAttributes];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_threadGroupLayoutAttributes, attributes);
    threadGroupLayoutAttributes = self->_threadGroupLayoutAttributes;
    lineView = [(CKTranscriptBalloonCell *)self lineView];
    v10 = lineView;
    if (threadGroupLayoutAttributes)
    {

      if (!v10)
      {
        v11 = [CKLineView alloc];
        v12 = [(CKLineView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        lineShapeLayer = [(CKLineView *)v12 lineShapeLayer];
        [lineShapeLayer setFillColor:0];

        lineShapeLayer2 = [(CKLineView *)v12 lineShapeLayer];
        if (_replyLineMaterialsEnabled)
        {
          blackColor = [MEMORY[0x1E69DC888] blackColor];
          [lineShapeLayer2 setStrokeColor:{objc_msgSend(blackColor, "CGColor")}];

          [(CKLineView *)v12 setMaterialsEnabled:1];
        }

        else
        {
          v16 = +[CKUIBehavior sharedBehaviors];
          theme = [v16 theme];
          replyLineColor = [theme replyLineColor];
          [lineShapeLayer2 setStrokeColor:{objc_msgSend(replyLineColor, "CGColor")}];
        }

        lineShapeLayer3 = [(CKLineView *)v12 lineShapeLayer];
        v20 = +[CKUIBehavior sharedBehaviors];
        [v20 replyLineWidth];
        [lineShapeLayer3 setLineWidth:?];

        lineShapeLayer4 = [(CKLineView *)v12 lineShapeLayer];
        [lineShapeLayer4 setLineCap:*MEMORY[0x1E6979E78]];

        lineShapeLayer5 = [(CKLineView *)v12 lineShapeLayer];
        [lineShapeLayer5 setLineJoin:*MEMORY[0x1E6979E98]];

        [(CKTranscriptBalloonCell *)self setLineView:v12];
        [(CKTranscriptBalloonCell *)self addSubview:v12];
      }
    }

    else
    {
      [lineView removeFromSuperview];

      [(CKTranscriptBalloonCell *)self setLineView:0];
    }

    [(CKTranscriptBalloonCell *)self setNeedsLayout];
  }
}

- (void)_updateLineForThreadGroupLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (attributesCopy)
  {
    if (!self->_insertingReply)
    {
      v17 = attributesCopy;
      shouldFreezeReplyDecorationsForTimestampReveal = [(CKTranscriptCell *)self shouldFreezeReplyDecorationsForTimestampReveal];
      attributesCopy = v17;
      if (!shouldFreezeReplyDecorationsForTimestampReveal)
      {
        [(CKTranscriptBalloonCell *)self _createLineViewFrameForThreadGroupLayoutAttributes:v17];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;
        [(CKLineView *)self->_lineView setFrame:?];
        v14 = [(CKTranscriptBalloonCell *)self _createLinePathForFrame:v17 withThreadGroupLayoutAttributes:v7, v9, v11, v13];
        -[CKLineView setLineViewPath:](self->_lineView, "setLineViewPath:", [v14 CGPath]);
        if ([(CKTranscriptBalloonCell *)self _replyLineMaterialsEnabled])
        {
          traitCollection = [(CKTranscriptBalloonCell *)self traitCollection];
          [traitCollection transcriptBackgroundLuminosity];
          -[CKLineView _updateMaterialWithLuminance:interfaceStyle:](self->_lineView, "_updateMaterialWithLuminance:interfaceStyle:", [traitCollection userInterfaceStyle], v16);
        }

        attributesCopy = v17;
      }
    }
  }
}

- (CGRect)_createLineViewFrameForThreadGroupLayoutAttributes:(id)attributes
{
  if (self->_lineView)
  {
    attributesCopy = attributes;
    [(CKEditableCollectionViewCell *)self contentAlignmentRect];
    v73.origin.x = v5;
    v73.origin.y = v6;
    v73.size.width = v7;
    v73.size.height = v8;
    firstObject = [attributesCopy firstObject];
    [firstObject frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v70.origin.x = firstObject[44];
    v70.origin.y = firstObject[45];
    v70.size.width = firstObject[46];
    v70.size.height = firstObject[47];
    chatItem = [firstObject chatItem];
    lastObject = [attributesCopy lastObject];

    [lastObject frame];
    v71.origin.x = v20;
    v71.origin.y = v21;
    v71.size.width = v22;
    v71.size.height = v23;
    v72.origin.x = lastObject[44];
    v72.origin.y = lastObject[45];
    v72.size.width = lastObject[46];
    v72.size.height = lastObject[47];
    chatItem2 = [lastObject chatItem];
    v25 = +[CKUIBehavior sharedBehaviors];
    [v25 transcriptContactImageDiameter];
    v27 = v26;

    v28 = +[CKUIBehavior sharedBehaviors];
    [v28 balloonMaskTailHeight];
    v30 = v29;

    v31 = +[CKUIBehavior sharedBehaviors];
    [v31 replyLineViewVerticalPadding];
    v33 = v32;

    v34 = +[CKUIBehavior sharedBehaviors];
    [v34 replyLineWidth];
    v36 = v35;

    itemIsFromMe = [chatItem itemIsFromMe];
    v38 = v11;
    v39 = v13;
    v40 = v15;
    v41 = v17;
    if (itemIsFromMe)
    {
      MidY = CGRectGetMidY(*&v38);
      v43 = CGRectGetMidY(v70);
    }

    else
    {
      MidY = v33 + v30 + CGRectGetMaxY(*&v38);
      v43 = v33 + v30 + CGRectGetMaxY(v70);
    }

    self->_lineViewReferenceY = MidY;
    v48 = v27;
    v49 = v36;
    if ([chatItem2 itemIsFromMe])
    {
      v50 = v36 + 1.0;
      v51 = v50 + CGRectGetMidY(v71);
      v52 = v50 + CGRectGetMidY(v72);
      v53 = v50 + CGRectGetMidY(v73);
      chatEligibleForContactImage = [(CKTranscriptMessageCell *)self chatEligibleForContactImage];
      v55 = 0.0;
      if (chatEligibleForContactImage)
      {
        v55 = 1.0;
      }

      v56 = v53 + v55;
    }

    else
    {
      contactImageView = [(CKPhoneTranscriptMessageCell *)self contactImageView];

      if (contactImageView)
      {
        v58 = v27 + v33;
        v51 = CGRectGetMaxY(v71) - v58;
        v52 = CGRectGetMaxY(v72) - v58;
        v56 = CGRectGetMaxY(v73) - v58 + 1.0;
      }

      else
      {
        v51 = CGRectGetMinY(v71) - v33;
        v52 = CGRectGetMinY(v72) - v33;
        v56 = CGRectGetMinY(v73) - v33;
      }
    }

    v59 = v51 - MidY;
    self->_lineViewExpansionFactor = (v51 - MidY) / (v52 - v43);
    v60 = v56 - (v51 - MidY);
    v61 = self->_lineHorizontalOffset + v48 * 0.5 - v49 * 0.5;
    v62 = +[CKUIBehavior sharedBehaviors];
    [v62 replyLineViewMaxWidth];
    v64 = v63;

    if (CKMainScreenScale_once_11 != -1)
    {
      [CKTranscriptBalloonCell _createLineViewFrameForThreadGroupLayoutAttributes:];
    }

    v65 = *&CKMainScreenScale_sMainScreenScale_11;
    if (*&CKMainScreenScale_sMainScreenScale_11 == 0.0)
    {
      v65 = 1.0;
    }

    v44 = round(v61 * v65) / v65;
    v45 = round(v60 * v65) / v65;
    v46 = round(v64 * v65) / v65;
    v47 = round(v59 * v65) / v65;
  }

  else
  {
    v44 = *MEMORY[0x1E695F058];
    v45 = *(MEMORY[0x1E695F058] + 8);
    v46 = *(MEMORY[0x1E695F058] + 16);
    v47 = *(MEMORY[0x1E695F058] + 24);
  }

  v66 = v44;
  v67 = v45;
  v68 = v46;
  v69 = v47;
  result.size.height = v69;
  result.size.width = v68;
  result.origin.y = v67;
  result.origin.x = v66;
  return result;
}

- (id)_createLinePathForFrame:(CGRect)frame withThreadGroupLayoutAttributes:(id)attributes
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  attributesCopy = attributes;
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 replyLineWidth];
  v12 = v11;

  v13 = v12 * 0.5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v14 = CGRectGetHeight(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v15 = CGRectGetWidth(v40);
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [bezierPath moveToPoint:{v13, v13}];
  v17 = [(CKTranscriptBalloonCell *)self _lineDescriptionForThreadGroupLayoutAttributes:attributesCopy setLineType:1];
  threadLineDescription = self->_threadLineDescription;
  self->_threadLineDescription = v17;

  if ([(NSArray *)self->_threadLineDescription count])
  {
    v19 = 0;
    v20 = v14 - v13;
    v21 = v15 - v13;
    do
    {
      v22 = [attributesCopy objectAtIndex:v19];
      v23 = [(NSArray *)self->_threadLineDescription objectAtIndex:v19];
      unsignedIntegerValue = [v23 unsignedIntegerValue];

      if (unsignedIntegerValue > 2)
      {
        if (unsignedIntegerValue == 3)
        {
          v35 = bezierPath;
          v25 = &v35;
          [(CKTranscriptBalloonCell *)self _drawLowerBracketForPath:&v35 lineViewMaxX:v21 lineViewMaxY:v20];
          goto LABEL_17;
        }

        if (unsignedIntegerValue == 4)
        {
          v34 = bezierPath;
          v25 = &v34;
          [(CKTranscriptBalloonCell *)self _drawLoopForPath:&v34 withLayout:v22];
          goto LABEL_17;
        }
      }

      else
      {
        if (unsignedIntegerValue == 1)
        {
          if (self->_lineType == 3)
          {
            v26 = +[CKUIBehavior sharedBehaviors];
            [v26 replyLineBracketRadius];
            v28 = v27 * 1.52866;

            if (v28 > height)
            {
              goto LABEL_18;
            }
          }

          if (v19)
          {
            v29 = [(NSArray *)self->_threadLineDescription objectAtIndex:v19 - 1];
            unsignedIntegerValue2 = [v29 unsignedIntegerValue];
          }

          else
          {
            unsignedIntegerValue2 = 0;
          }

          v31 = v19 + 1 == [(NSArray *)self->_threadLineDescription count];
          v37 = bezierPath;
          v25 = &v37;
          [(CKTranscriptBalloonCell *)self _drawStraightLineForPath:&v37 withLayout:v22 lineViewMaxY:v31 isTerminal:unsignedIntegerValue2 prevLineSegmentType:v20];
          goto LABEL_17;
        }

        if (unsignedIntegerValue == 2)
        {
          v36 = bezierPath;
          v25 = &v36;
          [(CKTranscriptBalloonCell *)self _drawUpperBracketForPath:&v36 withLayout:v22 lineViewMaxX:v21 lineViewMaxY:v20];
LABEL_17:
          v32 = *v25;

          bezierPath = v32;
        }
      }

LABEL_18:

      ++v19;
    }

    while (v19 < [(NSArray *)self->_threadLineDescription count]);
  }

  return bezierPath;
}

- (id)_lineDescriptionForThreadGroupLayoutAttributes:(id)attributes setLineType:(BOOL)type
{
  typeCopy = type;
  attributesCopy = attributes;
  if ([attributesCopy count])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 1;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__7;
    v25[4] = __Block_byref_object_dispose__7;
    v26 = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = [attributesCopy count];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__7;
    v21 = __Block_byref_object_dispose__7;
    array = [MEMORY[0x1E695DF70] array];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__CKTranscriptBalloonCell__lineDescriptionForThreadGroupLayoutAttributes_setLineType___block_invoke;
    v9[3] = &unk_1E72ED1A0;
    v11 = v23;
    v10 = attributesCopy;
    v12 = v25;
    v13 = &v31;
    v14 = &v27;
    v15 = v24;
    v16 = &v17;
    [v10 enumerateObjectsUsingBlock:v9];
    if (typeCopy)
    {
      self->_lineType = v32[3];
      self->_lineIsExtended = *(v28 + 24);
    }

    v7 = v18[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v25, 8);

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    if (typeCopy)
    {
      self->_lineType = 0;
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

void __86__CKTranscriptBalloonCell__lineDescriptionForThreadGroupLayoutAttributes_setLineType___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 chatItem];
  if (!v7)
  {
    *a4 = 1;
    goto LABEL_34;
  }

  obj = v7;
  if ((a3 + 1) >= *(*(*(a1 + 40) + 8) + 24))
  {
    v9 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) objectAtIndex:?];
    v9 = [v8 chatItem];
  }

  if (*(*(*(a1 + 48) + 8) + 40) || ![obj itemIsFromMe])
  {
    if (v9)
    {
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ([obj itemIsFromMe] && (isKindOfClass & 1) == 0 && (objc_msgSend(v9, "itemIsFromMe") & 1) == 0)
        {
          *(*(*(a1 + 56) + 8) + 24) = 5;
          *(*(*(a1 + 64) + 8) + 24) = 0;
          v10 = 4;
          goto LABEL_33;
        }

        v12 = *(*(*(a1 + 72) + 8) + 24);
        v10 = 1;
        if (v12 != 4 && v12 != 2)
        {
          if (v12 != 1)
          {
            goto LABEL_33;
          }

          v14 = *(*(a1 + 64) + 8);
          v10 = 1;
LABEL_30:
          *(v14 + 24) = 1;
          goto LABEL_33;
        }

LABEL_19:
        v14 = *(*(a1 + 64) + 8);
        goto LABEL_30;
      }
    }

    else
    {
      if ([obj itemIsFromMe])
      {
        v15 = *(*(a1 + 56) + 8);
        v10 = 3;
        if (*(v15 + 24) == 2)
        {
          v16 = 4;
        }

        else
        {
          v16 = 3;
        }

        *(v15 + 24) = v16;
        *(*(*(a1 + 64) + 8) + 24) = 0;
        goto LABEL_33;
      }

      if (*(*(*(a1 + 48) + 8) + 40) && ([obj itemIsFromMe] & 1) == 0)
      {
        v10 = 1;
        if (*(*(*(a1 + 72) + 8) + 24) != 1)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }
    }

    v10 = 0;
    goto LABEL_33;
  }

  v10 = 2;
  *(*(*(a1 + 56) + 8) + 24) = 2;
LABEL_33:
  v17 = *(*(*(a1 + 80) + 8) + 40);
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
  [v17 addObject:v18];

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  *(*(*(a1 + 72) + 8) + 24) = v10;

  v7 = obj;
LABEL_34:
}

- (void)_drawStraightLineForPath:(id *)path withLayout:(id)layout lineViewMaxY:(double)y isTerminal:(BOOL)terminal prevLineSegmentType:(unint64_t)type
{
  terminalCopy = terminal;
  layoutCopy = layout;
  if (path)
  {
    [*path currentPoint];
    v14 = v13;
    v15 = v12;
    if (!terminalCopy)
    {
      [layoutCopy frame];
      y = fmin(CGRectGetMidY(v18) - self->_lineViewReferenceY, y);
      if (y <= v15)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (type != 2 || v12 + 5.0 < y)
    {
LABEL_7:
      [*path addLineToPoint:{v14, y}];
    }
  }

LABEL_8:
}

- (void)_drawUpperBracketForPath:(id *)path withLayout:(id)layout lineViewMaxX:(double)x lineViewMaxY:(double)y
{
  layoutCopy = layout;
  if (path)
  {
    v23 = layoutCopy;
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 replyLineBracketRadius];
    v13 = v12;

    [*path currentPoint];
    v15 = v14;
    v17 = v16;
    [*path moveToPoint:x];
    [*path addCurveToPoint:v15 + v13 * 0.631494 controlPoint1:v17 + v13 * 0.0749114 controlPoint2:{v15 + v13 * 1.08849, v17, v15 + v13 * 0.868407, v17}];
    [*path addCurveToPoint:v15 + v13 * 0.0749114 controlPoint1:v17 + v13 * 0.631494 controlPoint2:{v15 + v13 * 0.372824, v17 + v13 * 0.16906, v15 + v13 * 0.16906, v17 + v13 * 0.372824}];
    v18 = fmin(y, v17 + v13 * 1.52866);
    v19 = CKIsRunningInMacCatalyst();
    layoutCopy = v23;
    if (v18 <= y)
    {
      v20 = fmax(v18, v17 + v13 * 1.08849);
      v21 = 4.0;
      if (!v19)
      {
        v21 = 1.0;
      }

      if (v20 <= v21 + y)
      {
        [*path addCurveToPoint:v15 controlPoint1:v18 controlPoint2:{v15, v17 + v13 * 0.868407, v15}];
        [v23 frame];
        MaxY = CGRectGetMaxY(v25);
        layoutCopy = v23;
        if (fmin(y, MaxY - self->_lineViewReferenceY) > v18)
        {
          [*path addLineToPoint:v15];
          layoutCopy = v23;
        }
      }
    }
  }
}

- (void)_drawLowerBracketForPath:(id *)path lineViewMaxX:(double)x lineViewMaxY:(double)y
{
  if (path)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 replyLineBracketRadius];
    v10 = v9;

    [*path currentPoint];
    v12 = v11;
    v14 = fmax(v13, y + v10 * -1.52866);
    [*path addLineToPoint:{v11, v14}];
    [*path addCurveToPoint:v12 + v10 * 0.0749114 controlPoint1:y - v10 * 0.631494 controlPoint2:{v12, fmax(v14, y - v10 * 1.08849), v12, y - v10 * 0.868407}];
    [*path addCurveToPoint:v12 + v10 * 0.631494 controlPoint1:y - v10 * 0.0749114 controlPoint2:{v12 + v10 * 0.16906, y - v10 * 0.372824, v12 + v10 * 0.372824, y - v10 * 0.16906}];
    v15 = *path;

    [v15 addCurveToPoint:x controlPoint1:y controlPoint2:{v12 + v10 * 0.868407, y, v12 + v10 * 1.08849, y}];
  }
}

- (void)_drawLoopForPath:(id *)path withLayout:(id)layout
{
  if (path)
  {
    layoutCopy = layout;
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 textBalloonMinHeight];
    v9 = v8;

    lineViewExpansionFactor = self->_lineViewExpansionFactor;
    v11 = fmax(lineViewExpansionFactor * -2.77777778 + 9.37777778, 3.5);
    [layoutCopy frame];
    v12 = CGRectGetMidY(v31) - self->_lineViewReferenceY;
    v13 = fmax(lineViewExpansionFactor * -1.11111111 + 4.41111111, 2.0);
    v14 = v13 * 0.3333;
    [*path currentPoint];
    v16 = v15;
    v29 = v13 * 0.8333 + v15;
    v17 = v11 + v13 + v15;
    [layoutCopy frame];
    v18 = CGRectGetMinY(v32) - self->_lineViewReferenceY;
    [layoutCopy frame];
    v19 = fmax(v18, CGRectGetMidY(v33) - self->_lineViewReferenceY - v9 * 0.5);
    [*path addLineToPoint:{v16, v19}];
    [*path addCurveToPoint:v29 controlPoint1:v12 controlPoint2:{v16, v19 + (v12 - v11 - v19) * 0.552285}];
    [*path addCurveToPoint:v17 controlPoint1:v11 + v12 controlPoint2:?];
    [*path addCurveToPoint:? controlPoint1:? controlPoint2:?];
    [*path addCurveToPoint:v17 controlPoint1:? controlPoint2:?];
    [*path addCurveToPoint:v29 controlPoint1:v12 controlPoint2:{v17 - v11 * 0.552285, v12 - v11, v14 + v29, v12 - v11 * 0.552285}];
    [layoutCopy frame];
    CGRectGetMaxY(v34);
    [layoutCopy frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v35.origin.x = v21;
    v35.origin.y = v23;
    v35.size.width = v25;
    v35.size.height = v27;
    CGRectGetMidY(v35);
    v28 = *path;

    [v28 addCurveToPoint:? controlPoint1:? controlPoint2:?];
  }
}

- (void)_animateReplyContextPreview:(id)preview
{
  v18 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  [MEMORY[0x1E6979518] begin];
  layer = [(CKTranscriptBalloonCell *)self layer];
  [(CKTranscriptCell *)self insertionBeginTime];
  [layer convertTime:0 fromLayer:?];
  v7 = v6;

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 transcriptReplyPreviewContextContactAlpha];
  [CKTranscriptBalloonCell _fadeInContactImageAlpha:"_fadeInContactImageAlpha:atBeginTime:" atBeginTime:?];

  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  objc_opt_class();
  v10 = 1.0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 replyPreviewBalloonAlpha];
    v10 = v12;
  }

  [(CKTranscriptBalloonCell *)self _fadeInBalloonAlpha:v10 atBeginTime:v7];
  [MEMORY[0x1E6979518] commit];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  fullTranscriptLoggingEnabled = [mEMORY[0x1E69A8070] fullTranscriptLoggingEnabled];

  if (fullTranscriptLoggingEnabled && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = v7;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "INSERTION: Reply Preview: Begin:%f", &v16, 0xCu);
    }
  }

  [(CKTranscriptBalloonCell *)self setInsertingReply:0];
  if (previewCopy)
  {
    previewCopy[2](previewCopy, 1);
  }
}

- (void)_animateUpperBracket:(id)bracket
{
  v49 = *MEMORY[0x1E69E9840];
  bracketCopy = bracket;
  [(CKTranscriptCell *)self insertionDuration];
  v6 = v5;
  [MEMORY[0x1E6979518] begin];
  v7 = [(NSArray *)self->_threadGroupLayoutAttributes subarrayWithRange:0, [(NSArray *)self->_threadGroupLayoutAttributes count]- 1];
  lastObject = [v7 lastObject];
  chatItem = [lastObject chatItem];

  balloonCellDelegate = [(CKTranscriptBalloonCell *)self balloonCellDelegate];
  v11 = [balloonCellDelegate cellForChatItem:chatItem];

  lastObject2 = [v7 lastObject];
  [lastObject2 frame];
  v14 = v13;
  layer = [v11 layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer frame];
  v18 = v14 - v17;

  [(CKTranscriptBalloonCell *)self _createLineViewFrameForThreadGroupLayoutAttributes:self->_threadGroupLayoutAttributes];
  v23 = v22;
  if (v18 >= 0.0)
  {
    v26 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v25 = *(MEMORY[0x1E695F058] + 16);
    v24 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v24 = v21;
    v25 = v20;
    v26 = v19;
  }

  [(CKLineView *)self->_lineView setFrame:?];
  [(CKLineView *)self->_lineView frame];
  v27 = [(CKTranscriptBalloonCell *)self _createLinePathForFrame:self->_threadGroupLayoutAttributes withThreadGroupLayoutAttributes:?];
  -[CKLineView setLineViewPath:](self->_lineView, "setLineViewPath:", [v27 CGPath]);
  [(CKLineView *)self->_lineView setLineViewStrokeEnd:0.0];
  if ([(CKTranscriptCell *)self insertingWithReplyPreview])
  {
    v28 = 0.3;
  }

  else
  {
    v28 = 0.0;
  }

  layer2 = [(CKTranscriptBalloonCell *)self layer];
  [(CKTranscriptCell *)self insertionBeginTime];
  [layer2 convertTime:0 fromLayer:?];
  v31 = v30;

  if (v18 < 0.0)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __48__CKTranscriptBalloonCell__animateUpperBracket___block_invoke;
    v40[3] = &unk_1E72EC7B0;
    v40[4] = self;
    v40[5] = v26;
    v40[6] = v23;
    v40[7] = v25;
    v40[8] = v24;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v40 options:0 animations:0.3 completion:0.0];
  }

  v32 = v28 + v31;
  v33 = [(CKTranscriptBalloonCell *)self animationWithKeyPath:@"strokeEnd" fromValue:&unk_1F04E8708 toValue:&unk_1F04E8718 beginTime:*MEMORY[0x1E6979EB0] duration:v28 + v31 timingFunctionName:v6];
  [(CKLineView *)self->_lineView addLineViewAnimation:v33 forKey:@"lineStrokeEnd"];
  [(CKLineView *)self->_lineView setLineViewStrokeEnd:1.0];
  v34 = v6 + v32;
  [(CKTranscriptBalloonCell *)self _fadeInContactImageAlpha:1.0 atBeginTime:v6 + v32];
  [(CKTranscriptBalloonCell *)self _fadeInBalloonAlpha:1.0 atBeginTime:v6 + v32];
  [MEMORY[0x1E6979518] commit];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  fullTranscriptLoggingEnabled = [mEMORY[0x1E69A8070] fullTranscriptLoggingEnabled];

  if (fullTranscriptLoggingEnabled)
  {
    [(CKTranscriptCell *)self insertionBeginTime];
    v38 = v37;
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 134218752;
        v42 = v32;
        v43 = 2048;
        v44 = v6;
        v45 = 2048;
        v46 = v34 - v32;
        v47 = 2048;
        v48 = v34 + 0.3 - v38;
        _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "INSERTION: Upper Bracket: Begin:%f, Duration:%f, Fade:%f, Total:%f", buf, 0x2Au);
      }
    }
  }

  [(CKTranscriptBalloonCell *)self setInsertingReply:0];
  if (bracketCopy)
  {
    bracketCopy[2](bracketCopy, 1);
  }
}

- (void)_animateLineExtension:(id)extension
{
  v70 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  [(CKTranscriptCell *)self insertionDuration];
  v6 = v5;
  [MEMORY[0x1E6979518] begin];
  v7 = [(NSArray *)self->_threadGroupLayoutAttributes subarrayWithRange:0, [(NSArray *)self->_threadGroupLayoutAttributes count]- 1];
  lastObject = [v7 lastObject];
  chatItem = [lastObject chatItem];

  balloonCellDelegate = [(CKTranscriptBalloonCell *)self balloonCellDelegate];
  v11 = [balloonCellDelegate cellForChatItem:chatItem];

  lastObject2 = [v7 lastObject];
  [lastObject2 frame];
  v14 = v13;
  layer = [v11 layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer frame];
  v18 = v14 - v17;

  [(CKTranscriptBalloonCell *)self _createLineViewFrameForThreadGroupLayoutAttributes:v7];
  v54 = v19;
  v20 = [(CKTranscriptBalloonCell *)self _createLinePathForFrame:v7 withThreadGroupLayoutAttributes:?];
  [v20 currentPoint];
  v22 = v21;
  v58 = v23;
  [(CKTranscriptBalloonCell *)self _createLineViewFrameForThreadGroupLayoutAttributes:self->_threadGroupLayoutAttributes];
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  if (v18 >= 0.0)
  {
    v32 = v25;
    v29 = *(MEMORY[0x1E695F058] + 8);
    v55 = *MEMORY[0x1E695F058];
    v56 = *(MEMORY[0x1E695F058] + 16);
    v57 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v32 = v25 - v18;
    v56 = v26;
    v57 = v27;
    v55 = v24;
  }

  [(CKLineView *)self->_lineView setFrame:v24, v32, v26, v27];
  v61 = v20;
  v33 = [(CKTranscriptBalloonCell *)self _extendPath:&v61 withFrame:v28, v32, v30, v31];
  v59 = v61;

  lineView = self->_lineView;
  v35 = v33;
  -[CKLineView setLineViewPath:](lineView, "setLineViewPath:", [v33 CGPath]);
  v36 = [(NSArray *)self->_threadLineDescription count];
  v37 = 0.0;
  if (v36 >= 2)
  {
    v38 = v33;
    v37 = calculateLengthPercentageToPointInLine([v33 CGPath], v22, v58);
  }

  v39 = v18 < 0.0;
  if ([(CKTranscriptCell *)self insertingWithReplyPreview])
  {
    v40 = 0.15;
  }

  else
  {
    v40 = 0.0;
  }

  layer2 = [(CKTranscriptBalloonCell *)self layer];
  [(CKTranscriptCell *)self insertionBeginTime];
  [layer2 convertTime:0 fromLayer:?];
  v43 = v42;

  if (v39)
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __49__CKTranscriptBalloonCell__animateLineExtension___block_invoke;
    v60[3] = &unk_1E72EC7B0;
    v60[4] = self;
    *&v60[5] = v55;
    *&v60[6] = v29;
    *&v60[7] = v56;
    *&v60[8] = v57;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v60 options:0 animations:0.3 completion:0.0];
  }

  v44 = v36 < 2;
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
  v46 = v40 + v43;
  v47 = [(CKTranscriptBalloonCell *)self animationWithKeyPath:@"strokeEnd" fromValue:v45 toValue:&unk_1F04E8718 beginTime:*MEMORY[0x1E6979ED8] duration:v40 + v43 timingFunctionName:v6];

  [(CKLineView *)self->_lineView addLineViewAnimation:v47 forKey:@"lineStrokeEnd"];
  v48 = v6 + v40 + v43;
  if (v44)
  {
    [(CKTranscriptBalloonCell *)self _fadeInBalloonAlpha:1.0 atBeginTime:v6 + v46];
    [(CKTranscriptBalloonCell *)self _fadeInContactImageAlpha:1.0 atBeginTime:v6 + v46];
  }

  else
  {
    v48 = v48 + -0.1;
    [(CKTranscriptBalloonCell *)self _fadeInBalloonAlpha:1.0 atBeginTime:v48];
    [(CKTranscriptBalloonCell *)self _slideContactImageWithTranslate:v54 - v31 duration:v6 beginTime:v46];
  }

  [MEMORY[0x1E6979518] commit];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  fullTranscriptLoggingEnabled = [mEMORY[0x1E69A8070] fullTranscriptLoggingEnabled];

  if (fullTranscriptLoggingEnabled)
  {
    [(CKTranscriptCell *)self insertionBeginTime];
    v52 = v51;
    if (IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 134218752;
        v63 = v46;
        v64 = 2048;
        v65 = v6;
        v66 = 2048;
        v67 = v48 - v46;
        v68 = 2048;
        v69 = v48 + 0.3 - v52;
        _os_log_impl(&dword_19020E000, v53, OS_LOG_TYPE_INFO, "INSERTION: Line Extension: Begin:%f, Duration:%f, Fade:%f, Total:%f", buf, 0x2Au);
      }
    }
  }

  [(CKTranscriptBalloonCell *)self setInsertingReply:0];
  if (extensionCopy)
  {
    extensionCopy[2](extensionCopy, 1);
  }
}

- (void)_animateLowerBracketToLoop:(id)loop
{
  loopCopy = loop;
  [(CKTranscriptCell *)self insertionDuration];
  v65 = v4;
  [MEMORY[0x1E6979518] begin];
  v5 = [(NSArray *)self->_threadGroupLayoutAttributes subarrayWithRange:0, [(NSArray *)self->_threadGroupLayoutAttributes count]- 1];
  [(CKTranscriptBalloonCell *)self _createLineViewFrameForThreadGroupLayoutAttributes:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  lastObject = [v5 lastObject];
  chatItem = [lastObject chatItem];

  balloonCellDelegate = [(CKTranscriptBalloonCell *)self balloonCellDelegate];
  v68 = chatItem;
  v17 = [balloonCellDelegate cellForChatItem:chatItem];

  lastObject2 = [v5 lastObject];
  [lastObject2 frame];
  v20 = v19;
  v66 = v17;
  layer = [v17 layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer frame];
  v24 = v20 - v23;

  if (v24 >= 0.0)
  {
    v25 = v13 - v24;
  }

  else
  {
    v25 = v13;
  }

  v26 = [(CKTranscriptBalloonCell *)self _createLinePathForFrame:v5 withThreadGroupLayoutAttributes:v7, v9, v11, v25];
  [v26 currentPoint];
  v28 = v27;
  v30 = v29;
  [(CKTranscriptBalloonCell *)self _createLineViewFrameForThreadGroupLayoutAttributes:self->_threadGroupLayoutAttributes];
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  if (v24 >= 0.0)
  {
    v39 = v32;
    v36 = *(MEMORY[0x1E695F058] + 8);
    [(CKLineView *)self->_lineView setFrame:v31, v32, v33, v34, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  else
  {
    v39 = v32 - v24;
    [(CKLineView *)self->_lineView setFrame:v31, v32 - v24, v33, v34, *&v31, *&v33, *&v34];
  }

  lastObject3 = [v5 lastObject];
  v72.origin.x = v35;
  v72.origin.y = v39;
  v72.size.width = v37;
  v72.size.height = v38;
  Height = CGRectGetHeight(v72);
  v42 = +[CKUIBehavior sharedBehaviors];
  [v42 replyLineWidth];
  v44 = Height + v43 * -0.5;

  v64 = lastObject3;
  v45 = [(CKTranscriptBalloonCell *)self _drawLowerBracketLoopForPath:v26 withLayout:lastObject3 lineViewMaxY:v44];
  v46 = calculateLengthPercentageToPointInLine([v45 CGPath], v28, v30);
  [(CKLineView *)self->_lineView frame];
  v47 = [(CKTranscriptBalloonCell *)self _createLinePathForFrame:self->_threadGroupLayoutAttributes withThreadGroupLayoutAttributes:?];
  if (v24 < 0.0)
  {
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __54__CKTranscriptBalloonCell__animateLowerBracketToLoop___block_invoke;
    v71[3] = &unk_1E72EC7B0;
    v71[4] = self;
    v71[5] = v61;
    *&v71[6] = v36;
    v71[7] = v62;
    v71[8] = v63;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v71 options:0 animations:0.3 completion:0.0];
  }

  layer2 = [(CKTranscriptBalloonCell *)self layer];
  [(CKTranscriptCell *)self insertionBeginTime];
  [layer2 convertTime:0 fromLayer:?];
  v50 = v49;

  LODWORD(v51) = 1060424070;
  LODWORD(v52) = 995640528;
  LODWORD(v53) = 1047918333;
  LODWORD(v54) = 1065366638;
  v55 = [MEMORY[0x1E69793D0] functionWithControlPoints:v51 :v52 :v53 :v54];
  v56 = -[CKTranscriptBalloonCell animationWithKeyPath:fromValue:toValue:beginTime:duration:timingFunction:](self, "animationWithKeyPath:fromValue:toValue:beginTime:duration:timingFunction:", @"path", [v45 CGPath], objc_msgSend(v47, "CGPath"), v55, v50, v65);
  [(CKLineView *)self->_lineView addLineViewAnimation:v56 forKey:@"linePath"];
  -[CKLineView setLineViewPath:](self->_lineView, "setLineViewPath:", [v47 CGPath]);
  v57 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
  v58 = [(CKTranscriptBalloonCell *)self animationWithKeyPath:@"strokeEnd" fromValue:v57 toValue:&unk_1F04E8718 beginTime:v55 duration:v50 timingFunction:v65];

  [(CKLineView *)self->_lineView addLineViewAnimation:v58 forKey:@"lineStrokeEnd"];
  [(CKLineView *)self->_lineView setLineViewStrokeEnd:1.0];
  [(CKTranscriptBalloonCell *)self _fadeInContactImageAlpha:1.0 atBeginTime:v65 + v50 + -0.25];
  [(CKTranscriptBalloonCell *)self _fadeInBalloonAlpha:1.0 atBeginTime:v65 + v50 + -0.25];
  [MEMORY[0x1E6979518] commit];
  v59 = dispatch_time(0, (v65 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CKTranscriptBalloonCell__animateLowerBracketToLoop___block_invoke_2;
  block[3] = &unk_1E72ED1C8;
  block[4] = self;
  v70 = loopCopy;
  v60 = loopCopy;
  dispatch_after(v59, MEMORY[0x1E69E96A0], block);
}

uint64_t __54__CKTranscriptBalloonCell__animateLowerBracketToLoop___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setInsertingReply:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_slideContactImageWithTranslate:(double)translate duration:(double)duration beginTime:(double)time
{
  contactImageView = [(CKPhoneTranscriptMessageCell *)self contactImageView];
  layer = [contactImageView layer];
  v11 = layer;
  v12 = 0uLL;
  memset(&v18, 0, sizeof(v18));
  if (layer)
  {
    [layer transform];
    v12 = 0uLL;
  }

  *&v17.m41 = v12;
  *&v17.m43 = v12;
  *&v17.m31 = v12;
  *&v17.m33 = v12;
  *&v17.m21 = v12;
  *&v17.m23 = v12;
  *&v17.m11 = v12;
  *&v17.m13 = v12;
  v16 = v18;
  CATransform3DTranslate(&v17, &v16, 0.0, translate, 0.0);
  v16 = v17;
  v13 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  v16 = v18;
  v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  v15 = [(CKTranscriptBalloonCell *)self animationWithKeyPath:@"transform" fromValue:v13 toValue:v14 beginTime:*MEMORY[0x1E6979ED8] duration:time timingFunctionName:duration];

  [v11 addAnimation:v15 forKey:@"contactImageSlide"];
}

- (void)_fadeInContactImageAlpha:(double)alpha atBeginTime:(double)time
{
  contactImageView = [(CKPhoneTranscriptMessageCell *)self contactImageView];
  layer = [contactImageView layer];
  [layer setOpacity:0.0];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:alpha];
  v9 = [(CKTranscriptBalloonCell *)self animationWithKeyPath:@"opacity" fromValue:&unk_1F04E8708 toValue:v8 beginTime:*MEMORY[0x1E6979EA0] duration:time timingFunctionName:0.3];

  [layer addAnimation:v9 forKey:@"contactImageFadeIn"];
  *&v10 = alpha;
  [layer setOpacity:v10];
}

- (void)_fadeInBalloonAlpha:(double)alpha atBeginTime:(double)time
{
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  layer = [balloonView layer];
  [layer setOpacity:0.0];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:alpha];
  v9 = [(CKTranscriptBalloonCell *)self animationWithKeyPath:@"opacity" fromValue:&unk_1F04E8708 toValue:v8 beginTime:*MEMORY[0x1E6979EA0] duration:time timingFunctionName:0.3];

  [layer addAnimation:v9 forKey:@"balloonFadeIn"];
  *&v10 = alpha;
  [layer setOpacity:v10];
}

- (id)animationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue beginTime:(double)time duration:(double)duration timingFunctionName:(id)name
{
  v13 = MEMORY[0x1E6979318];
  nameCopy = name;
  toValueCopy = toValue;
  valueCopy = value;
  v17 = [v13 animationWithKeyPath:path];
  [v17 setFromValue:valueCopy];

  [v17 setToValue:toValueCopy];
  [v17 setFillMode:*MEMORY[0x1E69797E0]];
  [v17 setRemovedOnCompletion:1];
  v18 = [MEMORY[0x1E69793D0] functionWithName:nameCopy];

  [v17 setTimingFunction:v18];
  [v17 setBeginTime:time];
  [v17 setDuration:duration];

  return v17;
}

- (id)animationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue beginTime:(double)time duration:(double)duration timingFunction:(id)function
{
  v13 = MEMORY[0x1E6979318];
  functionCopy = function;
  toValueCopy = toValue;
  valueCopy = value;
  v17 = [v13 animationWithKeyPath:path];
  [v17 setFromValue:valueCopy];

  [v17 setToValue:toValueCopy];
  [v17 setFillMode:*MEMORY[0x1E69797E0]];
  [v17 setRemovedOnCompletion:1];
  [v17 setTimingFunction:functionCopy];

  [v17 setBeginTime:time];
  [v17 setDuration:duration];

  return v17;
}

- (id)_drawLowerBracketLoopForPath:(id)path withLayout:(id)layout lineViewMaxY:(double)y
{
  pathCopy = path;
  lineView = self->_lineView;
  layoutCopy = layout;
  [(CKLineView *)lineView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 replyLineWidth];
  v21 = v20;

  v22 = v21 * 0.5;
  v42.origin.x = v12;
  v42.origin.y = v14;
  v42.size.width = v16;
  v42.size.height = v18;
  v23 = v22 + CGRectGetWidth(v42) * 0.5;
  v24 = pathCopy;
  [v24 currentPoint];
  v26 = v25 + -30.0;
  [v24 addCurveToPoint:v23 controlPoint1:v25 + -30.0 controlPoint2:v27 + 15.0];
  v28 = v26 + 5.0;
  [layoutCopy frame];
  v29 = CGRectGetMidY(v43) - self->_lineViewReferenceY + -10.0;
  [layoutCopy frame];
  [v24 addCurveToPoint:v22 controlPoint1:CGRectGetMidY(v44) - self->_lineViewReferenceY controlPoint2:{v22, v28, v22, v29}];
  [layoutCopy frame];
  v30 = CGRectGetMidY(v45) - self->_lineViewReferenceY + 15.0;
  [layoutCopy frame];
  v31 = CGRectGetMaxY(v46) - self->_lineViewReferenceY + -15.0;
  [layoutCopy frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v47.origin.x = v33;
  v47.origin.y = v35;
  v47.size.width = v37;
  v47.size.height = v39;
  [v24 addCurveToPoint:v22 controlPoint1:CGRectGetMaxY(v47) - self->_lineViewReferenceY controlPoint2:{v22, v30, v22, v31}];
  [v24 addLineToPoint:{v22, y}];

  return v24;
}

- (id)_extendPath:(id *)path withFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 replyLineWidth];
  v11 = v10;

  v12 = v11 * -0.5;
  v13 = [*path copy];
  [v13 currentPoint];
  v15 = v14;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  [v13 addLineToPoint:{v15, CGRectGetHeight(v18) + v12}];

  return v13;
}

- (void)_removeQuickActionButtonIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CKQuickActionButton *)self->_quickActionButton isAnimating])
  {

    [(CKTranscriptBalloonCell *)self setHasQueuedQuickActionButtonRemoval:1];
  }

  else if (self->_quickActionButton)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__CKTranscriptBalloonCell__removeQuickActionButtonIfNeededAnimated___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    v6 = v5;
    if (animatedCopy)
    {
      v7 = MEMORY[0x1E69DD250];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__CKTranscriptBalloonCell__removeQuickActionButtonIfNeededAnimated___block_invoke_2;
      v10[3] = &unk_1E72EBA18;
      v10[4] = self;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __68__CKTranscriptBalloonCell__removeQuickActionButtonIfNeededAnimated___block_invoke_3;
      v8[3] = &unk_1E72ED1F0;
      v9 = v5;
      [v7 animateWithDuration:v10 animations:v8 completion:0.300000012];
    }

    else
    {
      v5[2](v5);
    }
  }
}

void __68__CKTranscriptBalloonCell__removeQuickActionButtonIfNeededAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1048) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1048);
  *(v2 + 1048) = 0;
}

- (void)_addQuickActionButtonIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CKTranscriptBalloonCell *)self hasQueuedQuickActionButtonRemoval])
  {
    [(CKTranscriptBalloonCell *)self setHasQueuedQuickActionButtonRemoval:0];
  }

  if (!self->_quickActionButton)
  {
    isRichLink = [(CKTranscriptBalloonCell *)self isRichLink];
    v6 = off_1E72E5540;
    if (!isRichLink)
    {
      v6 = off_1E72E5548;
    }

    v7 = objc_alloc_init(*v6);
    quickActionButton = self->_quickActionButton;
    self->_quickActionButton = v7;

    [(CKQuickActionButton *)self->_quickActionButton setAnimationDelegate:self];
    [(CKQuickActionButton *)self->_quickActionButton setDelegate:self];
    if (animatedCopy)
    {
      [(CKQuickActionButton *)self->_quickActionButton setAlpha:0.0];
      contentView = [(CKEditableCollectionViewCell *)self contentView];
      [contentView addSubview:self->_quickActionButton];

      contentView2 = [(CKEditableCollectionViewCell *)self contentView];
      [contentView2 sendSubviewToBack:self->_quickActionButton];

      [(CKTranscriptBalloonCell *)self setNeedsLayout];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __65__CKTranscriptBalloonCell__addQuickActionButtonIfNeededAnimated___block_invoke;
      v13[3] = &unk_1E72EBA18;
      v13[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:0.300000012];
    }

    else
    {
      contentView3 = [(CKEditableCollectionViewCell *)self contentView];
      [contentView3 addSubview:self->_quickActionButton];

      contentView4 = [(CKEditableCollectionViewCell *)self contentView];
      [contentView4 sendSubviewToBack:self->_quickActionButton];

      [(CKTranscriptBalloonCell *)self setNeedsLayout];
    }
  }
}

- (void)setCanShowQuickActionButton:(BOOL)button
{
  buttonCopy = button;
  if (![(CKEditableCollectionViewCell *)self isInReplyContext]&& self->_canShowQuickActionButton != buttonCopy)
  {
    self->_canShowQuickActionButton = buttonCopy;

    [(CKTranscriptBalloonCell *)self updateQuickActionButtonVisibility];
  }
}

- (void)setSyndicationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (self->_syndicationIdentifiers != identifiersCopy)
  {
    v6 = identifiersCopy;
    objc_storeStrong(&self->_syndicationIdentifiers, identifiers);
    [(CKTranscriptBalloonCell *)self updateQuickActionButtonVisibility];
    identifiersCopy = v6;
  }
}

- (void)updateQuickActionButtonVisibility
{
  if (![(CKTranscriptBalloonCell *)self canShowQuickActionButton])
  {
    goto LABEL_11;
  }

  if ([(CKTranscriptBalloonCell *)self isRichLink])
  {
    v3 = 1;
  }

  else
  {
    v14 = 0;
    numberOfMomentSharePhotos = [(CKTranscriptBalloonCell *)self numberOfMomentSharePhotos];
    v5 = [(CKTranscriptBalloonCell *)self numberOfMomentShareVideos]+ numberOfMomentSharePhotos;
    if (v5)
    {
      if ([(CKTranscriptBalloonCell *)self numberOfMomentShareSavedAssets]== v5)
      {
LABEL_11:
        [(CKTranscriptBalloonCell *)self _removeQuickActionButtonIfNeededAnimated:1];
        return;
      }

LABEL_8:
      [(CKTranscriptBalloonCell *)self _addQuickActionButtonIfNeededAnimated:0];
      return;
    }

    mEMORY[0x1E69A5C30] = [MEMORY[0x1E69A5C30] sharedInstance];
    [mEMORY[0x1E69A5C30] registerPhotoLibraryPersistenceManagerListener:self];
    syndicationIdentifiers = [(CKTranscriptBalloonCell *)self syndicationIdentifiers];
    v8 = [syndicationIdentifiers count];

    mEMORY[0x1E69A5C30]2 = [MEMORY[0x1E69A5C30] sharedInstance];
    v10 = MEMORY[0x1E695DFD8];
    syndicationIdentifiers2 = [(CKTranscriptBalloonCell *)self syndicationIdentifiers];
    v12 = [v10 setWithArray:syndicationIdentifiers2];
    v13 = [mEMORY[0x1E69A5C30]2 cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:v12 shouldFetchAndNotifyAsNeeded:1 didStartFetch:&v14];

    v3 = v13 != v8;
    if ((v14 & 1) == 0)
    {
LABEL_10:
      if (!v3)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  if ([(CKTranscriptBalloonCell *)self isRichLink])
  {
    goto LABEL_10;
  }
}

- (void)quickActionButtonWasTapped:(id)tapped
{
  tappedCopy = tapped;
  quickActionButtonTappedCallback = [(CKTranscriptBalloonCell *)self quickActionButtonTappedCallback];

  if (quickActionButtonTappedCallback)
  {
    quickActionButtonTappedCallback2 = [(CKTranscriptBalloonCell *)self quickActionButtonTappedCallback];
    (*(quickActionButtonTappedCallback2 + 16))(quickActionButtonTappedCallback2, tappedCopy);
  }

  else
  {
    quickActionButtonTappedCallback2 = IMLogHandleForCategory();
    if (os_log_type_enabled(quickActionButtonTappedCallback2, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptBalloonCell quickActionButtonWasTapped:quickActionButtonTappedCallback2];
    }
  }
}

- (void)quickActionButtonAnimationDidEnd:(id)end
{
  if ([(CKTranscriptBalloonCell *)self hasQueuedQuickActionButtonRemoval])
  {

    [(CKTranscriptBalloonCell *)self _removeQuickActionButtonIfNeededAnimated:1];
  }
}

- (void)textBalloonViewWillLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v5 transcriptBalloonCell:self willLayoutTextBalloonView:subviewsCopy];
  }
}

- (void)textBalloonViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v5 transcriptBalloonCell:self didLayoutTextBalloonView:subviewsCopy];
  }
}

- (unint64_t)textBalloonViewAllowedLayoutActionForTextBalloonView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    v7 = [v6 transcriptBalloonCell:self allowedLayoutActionForTextBalloonView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)textBalloonViewTextViewDidChangeRenderBounds:(id)bounds
{
  boundsCopy = bounds;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v5 transcriptBalloonCell:self didChangeRenderBoundsOfTextBalloonView:boundsCopy];
  }
}

- (id)customTextRenderingDisplayLinkForTextBalloonViewTextView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    v7 = [v6 transcriptBalloonCell:self customTextRenderingDisplayLinkForTextBalloonViewTextView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)textBalloonViewTextView:(id)view didChangeTextEffectPlaybackCandidateStatus:(BOOL)status
{
  statusCopy = status;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v7 transcriptBalloonCell:self textBalloonView:viewCopy didChangeTextEffectPlaybackCandidateStatus:statusCopy];
  }
}

- (CKTranscriptBalloonCellDelegate)balloonCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_balloonCellDelegate);

  return WeakRetained;
}

- (CKTranscriptBalloonCellTextEffectsDelegate)textEffectsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  return WeakRetained;
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v67 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextCopy = context;
  v64.receiver = self;
  v64.super_class = CKTranscriptBalloonCell;
  [(CKTranscriptMessageContentCell *)&v64 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([itemCopy itemIsReplyContextPreview] & 1) == 0)
    {
      -[CKTranscriptMessageCell setFailed:](self, "setFailed:", [itemCopy failed]);
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

      if (stewieEnabled)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          stewieConversationID = [itemCopy stewieConversationID];
          failed = [itemCopy failed];
          v18 = stewieConversationID >= 0 ? failed : 0;
          if (v18 == 1)
          {
            message = [itemCopy message];
            messageSubject = [message messageSubject];
            v21 = [messageSubject length] == 0;

            if (!v21)
            {
              if (IMOSLoggingEnabled())
              {
                v22 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  v66 = stewieConversationID;
                  _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Disable failure button on initial Stewie start message for conversation ID: %ld", buf, 0xCu);
                }
              }

              [(CKTranscriptMessageCell *)self setFailed:0];
            }
          }
        }
      }

      if ([itemCopy isBlackholed])
      {
        failureButton = [(CKTranscriptMessageCell *)self failureButton];
        v24 = +[CKUIBehavior sharedBehaviors];
        theme = [v24 theme];
        statusTextColor = [theme statusTextColor];
        [failureButton setTintColor:statusTextColor];
      }
    }

    balloonViewClass = [itemCopy balloonViewClass];
    balloonView = [(CKTranscriptBalloonCell *)self balloonView];
    if (balloonView && objc_opt_class() == balloonViewClass)
    {
      balloonView2 = balloonView;
    }

    else
    {
      balloonView2 = CKBalloonViewForClass(balloonViewClass);
      [(CKTranscriptBalloonCell *)self setBalloonView:balloonView2];
      if (balloonView)
      {
        [balloonView frame];
        [balloonView2 setFrame:?];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [balloonView2 configureForLocatingChatItem:itemCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = balloonView2;
            mayReparentPluginViews = [v53 mayReparentPluginViews];
            [v53 setMayReparentPluginViews:{-[CKTranscriptBalloonCell mayReparentPluginViews](self, "mayReparentPluginViews")}];
            [v53 configureForTranscriptPlugin:itemCopy context:contextCopy];
            [v53 setMayReparentPluginViews:mayReparentPluginViews];

            [(CKTranscriptBalloonCell *)self configureQuickActionButtonForChatItem:itemCopy];
            goto LABEL_31;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [balloonView2 configureForTUConversationChatItem:itemCopy];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v55 = itemCopy;
                [balloonView2 configureForMessagePart:v55];
                [(CKTranscriptBalloonCell *)self configureQuickActionButtonForChatItem:v55];
              }

              else
              {
                [balloonView2 configureForChatItem:itemCopy];
              }
            }

            goto LABEL_31;
          }
        }

        [balloonView2 configureForTranscriptPlugin:itemCopy];
        goto LABEL_31;
      }

      [balloonView2 configureForLocationShareOfferChatItem:itemCopy];
    }

LABEL_31:
    [balloonView2 frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [itemCopy size];
    v40 = v39;
    v42 = v41;
    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070]2 isCAShapeLayerBalloonsEnabled];

    if (isCAShapeLayerBalloonsEnabled)
    {
      [balloonView2 tailInsetsForPillSize:{v40, v42}];
      v42 = v46 + v42 + v45;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      layoutRecipe = [itemCopy layoutRecipe];
      v48 = layoutRecipe;
      if (layoutRecipe)
      {
        [layoutRecipe targetSize];
        v40 = v49;
        v42 = v50;
      }
    }

    if (v36 != v40 || v38 != v42)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __110__CKTranscriptBalloonCell_CKChatItem__configureForChatItem_context_animated_animationDuration_animationCurve___block_invoke;
      aBlock[3] = &unk_1E72F4548;
      v59 = v32;
      v60 = v34;
      v61 = v40;
      v62 = v42;
      v57 = balloonView2;
      selfCopy = self;
      v63 = animatedCopy;
      v51 = _Block_copy(aBlock);
      v52 = v51;
      if (animatedCopy)
      {
        [MEMORY[0x1E69DD250] animateWithDuration:curve << 16 delay:v51 options:0 animations:duration completion:0.0];
      }

      else
      {
        (*(v51 + 2))(v51);
      }
    }

    -[CKTranscriptBalloonCell setCanInlineReply:](self, "setCanInlineReply:", [itemCopy canInlineReply]);
    goto LABEL_47;
  }

  v30 = IMLogHandleForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [CKTranscriptBalloonCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
  }

  balloonView2 = [(CKTranscriptBalloonCell *)self balloonView];
  [balloonView2 prepareForReuse];
LABEL_47:
}

uint64_t __110__CKTranscriptBalloonCell_CKChatItem__configureForChatItem_context_animated_animationDuration_animationCurve___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  result = [*(a1 + 40) setNeedsLayout];
  if (*(a1 + 80) == 1)
  {
    v3 = *(a1 + 40);

    return [v3 layoutIfNeeded];
  }

  return result;
}

- (void)configureQuickActionButtonForChatItem:(id)item
{
  itemCopy = item;
  mEMORY[0x1E6994658] = [MEMORY[0x1E6994658] sharedSystemShellSwitcher];
  isClarityBoardEnabled = [mEMORY[0x1E6994658] isClarityBoardEnabled];

  if (CKIsRunningInMessagesViewService() || CKIsRunningInMessagesNotificationExtension() || CKIsRunningInRemoteIntentClient())
  {
    v6 = 0;
  }

  else
  {
    v6 = [itemCopy canPerformQuickAction] & (isClarityBoardEnabled ^ 1);
  }

  iMChatItem = [itemCopy IMChatItem];
  if (objc_opt_respondsToSelector())
  {
    type = [iMChatItem type];
  }

  else
  {
    type = 0;
  }

  if ([type isEqualToString:@"com.apple.messages.URLBalloonProvider"])
  {
    [(CKTranscriptBalloonCell *)self setIsRichLink:1];
    [(CKTranscriptBalloonCell *)self updateQuickActionButtonVisibility];
    if ((v6 & 1) == 0)
    {
LABEL_10:
      v9 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    iMChatItem2 = [itemCopy IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      iMChatItem3 = [itemCopy IMChatItem];
      [(CKTranscriptBalloonCell *)self setIsRichLink:0];
      -[CKTranscriptBalloonCell setNumberOfMomentShareSavedAssets:](self, "setNumberOfMomentShareSavedAssets:", [iMChatItem3 numberOfMomentShareSavedAssets]);
      -[CKTranscriptBalloonCell setNumberOfMomentSharePhotos:](self, "setNumberOfMomentSharePhotos:", [iMChatItem3 numberOfMomentSharePhotos]);
      -[CKTranscriptBalloonCell setNumberOfMomentShareVideos:](self, "setNumberOfMomentShareVideos:", [iMChatItem3 numberOfMomentShareVideos]);
    }

    objc_opt_class();
    v13 = objc_opt_isKindOfClass();
    if (v13 & v6)
    {
      layoutRecipe = [itemCopy layoutRecipe];
      isLastItem = [layoutRecipe isLastItem];
    }

    else
    {
      isLastItem = (v13 ^ 1) & v6;
    }

    v16 = MEMORY[0x1E69A5C30];
    message = [itemCopy message];
    iMChatItem4 = [itemCopy IMChatItem];
    v19 = [v16 photosSyndicationIdentifiersForMessage:message transcriptChatItem:iMChatItem4];

    [(CKTranscriptBalloonCell *)self setSyndicationIdentifiers:v19];
    if ((isLastItem & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v9 = [(CKTranscriptBalloonCell *)self _isCommSafetyRestrictedForChatItem:itemCopy]^ 1;
LABEL_18:
  [(CKTranscriptBalloonCell *)self setCanShowQuickActionButton:v9];
}

- (BOOL)_isCommSafetyRestrictedForChatItem:(id)item
{
  itemCopy = item;
  if ([itemCopy supportsCommunicationSafety] && (objc_msgSend(itemCopy, "commSafetyTransferGUID"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    mEMORY[0x1E69A5B80] = [MEMORY[0x1E69A5B80] sharedInstance];
    commSafetyTransferGUID = [itemCopy commSafetyTransferGUID];
    v8 = [mEMORY[0x1E69A5B80] transferForGUID:commSafetyTransferGUID];

    v9 = [CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForFileTransfer:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)configureContactImageStrokeView
{
  selfCopy = self;
  CKTranscriptBalloonCell.configureContactImageStrokeView()();
}

@end