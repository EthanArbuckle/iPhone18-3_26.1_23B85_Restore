@interface CKTranscriptBalloonCell
- (BOOL)_disableRasterizeInAnimations;
- (BOOL)_isCommSafetyRestrictedForChatItem:(id)a3;
- (BOOL)_replyLineMaterialsEnabled;
- (BOOL)allowsSwipeToReply;
- (BOOL)isAudioMessage;
- (BOOL)isPointInAllowedSwipingArea:(CGPoint)a3;
- (CGRect)_createLineViewFrameForThreadGroupLayoutAttributes:(id)a3;
- (CGRect)_swipeToReplySafeSwipeRect;
- (CKBalloonSwipeController)balloonSwipeController;
- (CKTranscriptBalloonCell)init;
- (CKTranscriptBalloonCellDelegate)balloonCellDelegate;
- (CKTranscriptBalloonCellTextEffectsDelegate)textEffectsDelegate;
- (NSString)description;
- (UIEdgeInsets)messageDisplayViewTailInsets;
- (double)insertionDurationForInsertionType:(int64_t)a3;
- (double)swipeToReplyLayoutOffset;
- (id)_createLinePathForFrame:(CGRect)a3 withThreadGroupLayoutAttributes:(id)a4;
- (id)_drawLowerBracketLoopForPath:(id)a3 withLayout:(id)a4 lineViewMaxY:(double)a5;
- (id)_extendPath:(id *)a3 withFrame:(CGRect)a4;
- (id)_lineDescriptionForThreadGroupLayoutAttributes:(id)a3 setLineType:(BOOL)a4;
- (id)animationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 beginTime:(double)a6 duration:(double)a7 timingFunction:(id)a8;
- (id)animationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 beginTime:(double)a6 duration:(double)a7 timingFunctionName:(id)a8;
- (id)customTextRenderingDisplayLinkForTextBalloonViewTextView:(id)a3;
- (id)messageDisplayViewLayoutAttributesForMessageDisplayViewFrame:(CGRect)a3 inContainerFrame:(CGRect)a4;
- (int64_t)insertionAnimationType;
- (unint64_t)textBalloonViewAllowedLayoutActionForTextBalloonView:(id)a3;
- (void)_addQuickActionButtonIfNeededAnimated:(BOOL)a3;
- (void)_animateLineExtension:(id)a3;
- (void)_animateLowerBracketToLoop:(id)a3;
- (void)_animateReplyContextPreview:(id)a3;
- (void)_animateUpperBracket:(id)a3;
- (void)_ck_setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)_drawLoopForPath:(id *)a3 withLayout:(id)a4;
- (void)_drawLowerBracketForPath:(id *)a3 lineViewMaxX:(double)a4 lineViewMaxY:(double)a5;
- (void)_drawStraightLineForPath:(id *)a3 withLayout:(id)a4 lineViewMaxY:(double)a5 isTerminal:(BOOL)a6 prevLineSegmentType:(unint64_t)a7;
- (void)_drawUpperBracketForPath:(id *)a3 withLayout:(id)a4 lineViewMaxX:(double)a5 lineViewMaxY:(double)a6;
- (void)_fadeInBalloonAlpha:(double)a3 atBeginTime:(double)a4;
- (void)_fadeInContactImageAlpha:(double)a3 atBeginTime:(double)a4;
- (void)_removeQuickActionButtonIfNeededAnimated:(BOOL)a3;
- (void)_slideContactImageWithTranslate:(double)a3 duration:(double)a4 beginTime:(double)a5;
- (void)_updateLineForThreadGroupLayoutAttributes:(id)a3;
- (void)addFilter:(id)a3 fromTriggeringMessage:(BOOL)a4;
- (void)applyLayoutAttributes:(id)a3;
- (void)clearFilters;
- (void)configureContactImageStrokeView;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)configureQuickActionButtonForChatItem:(id)a3;
- (void)dealloc;
- (void)layoutSubviewsForAlignmentContents;
- (void)layoutSubviewsForContents;
- (void)performInsertion:(id)a3;
- (void)prepareForReuse;
- (void)quickActionButtonAnimationDidEnd:(id)a3;
- (void)quickActionButtonWasTapped:(id)a3;
- (void)setAnimationDelegate:(id)a3;
- (void)setAnimationPauseReasons:(int64_t)a3;
- (void)setBalloonView:(id)a3;
- (void)setCanShowQuickActionButton:(BOOL)a3;
- (void)setSyndicationIdentifiers:(id)a3;
- (void)setThreadGroupLayoutAttributes:(id)a3;
- (void)swipeToReplyGestureHandler:(id)a3;
- (void)textBalloonViewDidLayoutSubviews:(id)a3;
- (void)textBalloonViewTextView:(id)a3 didChangeTextEffectPlaybackCandidateStatus:(BOOL)a4;
- (void)textBalloonViewTextViewDidChangeRenderBounds:(id)a3;
- (void)textBalloonViewWillLayoutSubviews:(id)a3;
- (void)updateQuickActionButtonVisibility;
- (void)willLayoutDrawerLabelFrame:(CGRect *)a3;
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
  v5 = [(CKTranscriptBalloonCell *)self balloonView];
  v6 = [v3 stringWithFormat:@"%@ balloonView:%@", v4, v5];

  return v6;
}

- (BOOL)isAudioMessage
{
  v2 = [(CKTranscriptBalloonCell *)self balloonView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_ck_setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CKTranscriptBalloonCell;
  [(CKEditableCollectionViewCell *)&v7 _ck_setEditing:a3 animated:a4];
  v6 = [(CKTranscriptBalloonCell *)self balloonView];
  [v6 setUserInteractionEnabled:!v4];
}

- (BOOL)_disableRasterizeInAnimations
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isBalloonMaterialsEnabled];

  if (v4)
  {
    v5 = [(CKTranscriptBalloonCell *)self balloonView];
    v6 = v5;
    if (v5)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      [v5 balloonDescriptor];
      v7 = [(CKTranscriptBalloonCell *)self traitCollection];
      v11[4] = v16;
      v11[5] = v17;
      v11[6] = v18;
      v11[7] = v19;
      v11[0] = v12;
      v11[1] = v13;
      v11[2] = v14;
      v11[3] = v15;
      v8 = [CKBalloonDescriptorObjcWrapper needsBubbleMaterialForDescriptor:v11 traitCollection:v7];
    }

    else
    {
      v20.receiver = self;
      v20.super_class = CKTranscriptBalloonCell;
      v8 = [(CKTranscriptBalloonCell *)&v20 _disableRasterizeInAnimations];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CKTranscriptBalloonCell;
    return [(CKTranscriptBalloonCell *)&v10 _disableRasterizeInAnimations];
  }

  return v8;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  if (![(CKTranscriptCollectionViewLayoutAttributes *)self->_layoutAttributes isEqual:v4])
  {
    v7.receiver = self;
    v7.super_class = CKTranscriptBalloonCell;
    [(CKTranscriptBalloonCell *)&v7 applyLayoutAttributes:v4];
    [(CKTranscriptBalloonCell *)self setLayoutAttributes:v4];
    if (v4)
    {
      v5 = [v4[81] mutableCopy];
      [v5 addObject:v4];
      [(CKTranscriptBalloonCell *)self setThreadGroupLayoutAttributes:v5];
    }

    if ([v4 isInsertingReply])
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

- (id)messageDisplayViewLayoutAttributesForMessageDisplayViewFrame:(CGRect)a3 inContainerFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v22.receiver = self;
  v22.super_class = CKTranscriptBalloonCell;
  v13 = [CKTranscriptMessageContentCell messageDisplayViewLayoutAttributesForMessageDisplayViewFrame:sel_messageDisplayViewLayoutAttributesForMessageDisplayViewFrame_inContainerFrame_ inContainerFrame:?];
  v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v15 = [v14 isExpressiveTextEnabled];

  if (v15 && (v16 = objc_loadWeakRetained(&self->_textEffectsDelegate), v16, v16))
  {
    v17 = [(CKTranscriptBalloonCell *)self balloonView];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = v17;
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

    v6 = [(CKEditableCollectionViewCell *)self contentView];
    [v6 bounds];
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

    v13 = [(CKTranscriptBalloonCell *)self balloonView];
    [v13 frame];
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

- (void)performInsertion:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCell *)self insertionType];
  if ([(CKTranscriptMessageCell *)self isReplyContextPreview]&& v5)
  {
    [(CKTranscriptBalloonCell *)self _animateReplyContextPreview:v4];
  }

  else
  {
    switch(v5)
    {
      case 3:
        [(CKTranscriptBalloonCell *)self _animateLowerBracketToLoop:v4];
        break;
      case 2:
        [(CKTranscriptBalloonCell *)self _animateLineExtension:v4];
        break;
      case 1:
        [(CKTranscriptBalloonCell *)self _animateUpperBracket:v4];
        break;
      default:
        [(CKTranscriptBalloonCell *)self setInsertingReply:0];
        v6.receiver = self;
        v6.super_class = CKTranscriptBalloonCell;
        [(CKEditableCollectionViewCell *)&v6 performInsertion:v4];
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

- (double)insertionDurationForInsertionType:(int64_t)a3
{
  v5 = [(CKTranscriptMessageCell *)self isReplyContextPreview];
  result = 0.3;
  if (!v5 && a3 != 1)
  {
    if (a3 == 3)
    {
      return 1.1;
    }

    else if (a3 == 2)
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

- (void)addFilter:(id)a3 fromTriggeringMessage:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [(CKTranscriptBalloonCell *)self balloonView];
  [v6 prepareForDisplayIfNeeded];

  v7 = [(CKTranscriptBalloonCell *)self balloonView];
  if (v7)
  {
    v8 = v7;
    v9 = [(CKTranscriptBalloonCell *)self animatingInDarkEffect];

    if (v9 || v4)
    {
      v10 = [(CKTranscriptBalloonCell *)self balloonView];
      [v10 addFilter:v15];
    }
  }

  v11 = [(CKTranscriptBalloonCell *)self lineView];
  if (v11)
  {
    v12 = v11;
    v13 = [(CKTranscriptBalloonCell *)self animatingInDarkEffect];

    if (v13)
    {
      v14 = [(CKTranscriptBalloonCell *)self lineView];
      [v14 addFilter:v15];
    }
  }
}

- (void)clearFilters
{
  v3 = [(CKTranscriptBalloonCell *)self balloonView];
  [v3 clearFilters];

  v4 = [(CKTranscriptBalloonCell *)self lineView];

  if (v4)
  {
    v5 = [(CKTranscriptBalloonCell *)self lineView];
    [v5 clearFilters];
  }
}

- (void)willLayoutDrawerLabelFrame:(CGRect *)a3
{
  v17 = 0u;
  v5 = [(CKTranscriptBalloonCell *)self balloonView];
  v6 = v5;
  if (v5)
  {
    [v5 balloonDescriptor];
  }

  else
  {
    v17 = 0u;
  }

  if (BYTE9(v17) == 1)
  {
    v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v8 = [v7 isRoundTailedBalloonShapeEnabled];

    if ((v8 & 1) == 0)
    {
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 balloonMaskTailSizeForTailShape:0];
      if (v10 > 0.0)
      {
        v11 = v10;
        v12 = [(CKEditableCollectionViewCell *)self contentView];
        v13 = [v12 layer];
        v14 = v13;
        if (v13)
        {
          [v13 transform];
          v15 = v16;
        }

        else
        {
          v15 = 0.0;
        }

        a3->size.height = a3->size.height - v11 * v15;
      }
    }
  }
}

- (UIEdgeInsets)messageDisplayViewTailInsets
{
  v2 = [(CKTranscriptBalloonCell *)self balloonView];
  [v2 tailInsets];
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

- (void)setAnimationPauseReasons:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CKTranscriptBalloonCell;
  [(CKTranscriptMessageContentCell *)&v7 setAnimationPauseReasons:?];
  v5 = [(CKTranscriptBalloonCell *)self balloonView];
  [v5 setInvisibleInkEffectPaused:a3 != 0];

  v6 = [(CKTranscriptBalloonCell *)self balloonView];
  [v6 setAnimationPaused:(a3 >> 1) & 1];
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

- (void)setBalloonView:(id)a3
{
  v5 = a3;
  if (self->_balloonView != v5)
  {
    v16 = v5;
    v6 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v7 = [v6 isExpressiveTextEnabled];

    if (v7)
    {
      v8 = [(CKBalloonView *)self->_balloonView asTextBalloonView];
      [v8 setTextEffectsDelegate:0];
    }

    [(CKBalloonView *)self->_balloonView removeFromSuperview];
    objc_storeStrong(&self->_balloonView, a3);
    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v10 = [v9 isExpressiveTextEnabled];

    if (v10)
    {
      v11 = [(CKBalloonView *)self->_balloonView asTextBalloonView];
      [v11 setTextEffectsDelegate:self];
    }

    balloonView = self->_balloonView;
    v13 = [(CKTranscriptBalloonCell *)self balloonSwipeController];
    [v13 setBalloonView:balloonView];

    v14 = [(CKEditableCollectionViewCell *)self contentView];
    [v14 addSubview:self->_balloonView];

    v15 = [(CKTranscriptBalloonCell *)self layer];
    [v15 setAllowsGroupOpacity:{-[CKBalloonView needsGroupOpacity](self->_balloonView, "needsGroupOpacity")}];

    [(CKTranscriptBalloonCell *)self setNeedsLayout];
    v5 = v16;
  }
}

- (void)setAnimationDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptCell *)self animationDelegate];

  if (v5 != v4)
  {
    v7.receiver = self;
    v7.super_class = CKTranscriptBalloonCell;
    [(CKTranscriptCell *)&v7 setAnimationDelegate:v4];
    v6 = [(CKTranscriptBalloonCell *)self balloonView];
    [v6 setAnimationDelegate:v4];
  }
}

- (double)swipeToReplyLayoutOffset
{
  v3 = [(CKTranscriptBalloonCell *)self layoutAttributes];
  v4 = v3;
  if (!v3 || (v5 = *(v3 + 448), v5 <= 0.0))
  {
    v6 = [(CKTranscriptBalloonCell *)self balloonSwipeController];
    [v6 offsetDelta];
    v5 = v7;
  }

  return v5;
}

- (BOOL)allowsSwipeToReply
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isTextSelectionEnabled];

  if (v4)
  {
    v5 = [(CKTranscriptBalloonCell *)self balloonView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 textView];
      if ([v6 isSelectable])
      {
        [v6 selectedRange];
        if (v7)
        {

          LOBYTE(v8) = 0;
          return v8 & 1;
        }
      }
    }
  }

  v9 = [(CKTranscriptBalloonCell *)self canInlineReply];
  v10 = [(CKTranscriptMessageCell *)self isReplyContextPreview];
  v11 = [(CKEditableCollectionViewCell *)self isInReplyContext];
  v8 = (v11 | [(CKTranscriptBalloonCell *)self isAudioMessage]) ^ 1;
  if (v10)
  {
    LOBYTE(v8) = 0;
  }

  if (!v9)
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (BOOL)isPointInAllowedSwipingArea:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v11 = [(CKTranscriptBalloonCell *)self _shouldReverseLayoutDirection];
  v12 = [(CKEditableCollectionViewCell *)self orientation];
  v13 = v4 + -28.0;
  if (!v12)
  {
    v13 = v4;
  }

  v14 = v4 + 28.0;
  if (v12)
  {
    v14 = v4;
  }

  if (v11)
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

- (void)swipeToReplyGestureHandler:(id)a3
{
  v6 = a3;
  [(CKTranscriptCell *)self drawerPercentRevealed];
  if (v4 <= 0.0)
  {
    v5 = [(CKTranscriptBalloonCell *)self balloonSwipeController];
    [v5 swipeToReplyGestureHandler:v6];
  }
}

- (void)prepareForReuse
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isExpressiveTextEnabled];

  if (v4)
  {
    v5 = [(CKTranscriptBalloonCell *)self balloonView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(CKTranscriptBalloonCell *)self balloonView];
      v8 = [v7 textView];
      if ([v8 allowsTextAnimations])
      {
        [v8 ck_invalidateAllAnimators];
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
  v9 = [(CKPhoneTranscriptMessageCell *)self contactImageView];
  v10 = [v9 layer];

  LODWORD(v11) = 1.0;
  [v10 setOpacity:v11];
  [v10 removeAllAnimations];
  v12 = [(CKTranscriptBalloonCell *)self balloonView];
  v13 = [v12 layer];

  LODWORD(v14) = 1.0;
  [v13 setOpacity:v14];
  [v13 removeAllAnimations];
  v15 = [(CKTranscriptBalloonCell *)self quickActionButton];
  [v15 removeFromSuperview];

  quickActionButton = self->_quickActionButton;
  self->_quickActionButton = 0;

  v17 = [MEMORY[0x1E69A5C30] sharedInstance];
  [v17 unregisterPhotoLibraryPersistenceManagerListener:self];

  [(CKTranscriptBalloonCell *)self setHasQueuedQuickActionButtonRemoval:0];
  v18 = [(CKTranscriptBalloonCell *)self balloonView];
  [v18 setHidden:0];

  v19 = [(CKTranscriptBalloonCell *)self balloonSwipeController];
  [v19 prepareForReuse];

  [(CKTranscriptBalloonCell *)self setBalloonCellDelegate:0];
}

- (BOOL)_replyLineMaterialsEnabled
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v3 isBalloonMaterialsEnabled])
  {
    v4 = [(CKTranscriptBalloonCell *)self traitCollection];
    v5 = [v4 isTranscriptBackgroundActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setThreadGroupLayoutAttributes:(id)a3
{
  v23 = a3;
  v5 = [(CKTranscriptBalloonCell *)self _replyLineMaterialsEnabled];
  v6 = [(CKTranscriptBalloonCell *)self threadGroupLayoutAttributes];
  v7 = [v23 isEqualToArray:v6];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_threadGroupLayoutAttributes, a3);
    threadGroupLayoutAttributes = self->_threadGroupLayoutAttributes;
    v9 = [(CKTranscriptBalloonCell *)self lineView];
    v10 = v9;
    if (threadGroupLayoutAttributes)
    {

      if (!v10)
      {
        v11 = [CKLineView alloc];
        v12 = [(CKLineView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v13 = [(CKLineView *)v12 lineShapeLayer];
        [v13 setFillColor:0];

        v14 = [(CKLineView *)v12 lineShapeLayer];
        if (v5)
        {
          v15 = [MEMORY[0x1E69DC888] blackColor];
          [v14 setStrokeColor:{objc_msgSend(v15, "CGColor")}];

          [(CKLineView *)v12 setMaterialsEnabled:1];
        }

        else
        {
          v16 = +[CKUIBehavior sharedBehaviors];
          v17 = [v16 theme];
          v18 = [v17 replyLineColor];
          [v14 setStrokeColor:{objc_msgSend(v18, "CGColor")}];
        }

        v19 = [(CKLineView *)v12 lineShapeLayer];
        v20 = +[CKUIBehavior sharedBehaviors];
        [v20 replyLineWidth];
        [v19 setLineWidth:?];

        v21 = [(CKLineView *)v12 lineShapeLayer];
        [v21 setLineCap:*MEMORY[0x1E6979E78]];

        v22 = [(CKLineView *)v12 lineShapeLayer];
        [v22 setLineJoin:*MEMORY[0x1E6979E98]];

        [(CKTranscriptBalloonCell *)self setLineView:v12];
        [(CKTranscriptBalloonCell *)self addSubview:v12];
      }
    }

    else
    {
      [v9 removeFromSuperview];

      [(CKTranscriptBalloonCell *)self setLineView:0];
    }

    [(CKTranscriptBalloonCell *)self setNeedsLayout];
  }
}

- (void)_updateLineForThreadGroupLayoutAttributes:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (!self->_insertingReply)
    {
      v17 = v4;
      v5 = [(CKTranscriptCell *)self shouldFreezeReplyDecorationsForTimestampReveal];
      v4 = v17;
      if (!v5)
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
          v15 = [(CKTranscriptBalloonCell *)self traitCollection];
          [v15 transcriptBackgroundLuminosity];
          -[CKLineView _updateMaterialWithLuminance:interfaceStyle:](self->_lineView, "_updateMaterialWithLuminance:interfaceStyle:", [v15 userInterfaceStyle], v16);
        }

        v4 = v17;
      }
    }
  }
}

- (CGRect)_createLineViewFrameForThreadGroupLayoutAttributes:(id)a3
{
  if (self->_lineView)
  {
    v4 = a3;
    [(CKEditableCollectionViewCell *)self contentAlignmentRect];
    v73.origin.x = v5;
    v73.origin.y = v6;
    v73.size.width = v7;
    v73.size.height = v8;
    v9 = [v4 firstObject];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v70.origin.x = v9[44];
    v70.origin.y = v9[45];
    v70.size.width = v9[46];
    v70.size.height = v9[47];
    v18 = [v9 chatItem];
    v19 = [v4 lastObject];

    [v19 frame];
    v71.origin.x = v20;
    v71.origin.y = v21;
    v71.size.width = v22;
    v71.size.height = v23;
    v72.origin.x = v19[44];
    v72.origin.y = v19[45];
    v72.size.width = v19[46];
    v72.size.height = v19[47];
    v24 = [v19 chatItem];
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

    v37 = [v18 itemIsFromMe];
    v38 = v11;
    v39 = v13;
    v40 = v15;
    v41 = v17;
    if (v37)
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
    if ([v24 itemIsFromMe])
    {
      v50 = v36 + 1.0;
      v51 = v50 + CGRectGetMidY(v71);
      v52 = v50 + CGRectGetMidY(v72);
      v53 = v50 + CGRectGetMidY(v73);
      v54 = [(CKTranscriptMessageCell *)self chatEligibleForContactImage];
      v55 = 0.0;
      if (v54)
      {
        v55 = 1.0;
      }

      v56 = v53 + v55;
    }

    else
    {
      v57 = [(CKPhoneTranscriptMessageCell *)self contactImageView];

      if (v57)
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

- (id)_createLinePathForFrame:(CGRect)a3 withThreadGroupLayoutAttributes:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
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
  v16 = [MEMORY[0x1E69DC728] bezierPath];
  [v16 moveToPoint:{v13, v13}];
  v17 = [(CKTranscriptBalloonCell *)self _lineDescriptionForThreadGroupLayoutAttributes:v9 setLineType:1];
  threadLineDescription = self->_threadLineDescription;
  self->_threadLineDescription = v17;

  if ([(NSArray *)self->_threadLineDescription count])
  {
    v19 = 0;
    v20 = v14 - v13;
    v21 = v15 - v13;
    do
    {
      v22 = [v9 objectAtIndex:v19];
      v23 = [(NSArray *)self->_threadLineDescription objectAtIndex:v19];
      v24 = [v23 unsignedIntegerValue];

      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v35 = v16;
          v25 = &v35;
          [(CKTranscriptBalloonCell *)self _drawLowerBracketForPath:&v35 lineViewMaxX:v21 lineViewMaxY:v20];
          goto LABEL_17;
        }

        if (v24 == 4)
        {
          v34 = v16;
          v25 = &v34;
          [(CKTranscriptBalloonCell *)self _drawLoopForPath:&v34 withLayout:v22];
          goto LABEL_17;
        }
      }

      else
      {
        if (v24 == 1)
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
            v30 = [v29 unsignedIntegerValue];
          }

          else
          {
            v30 = 0;
          }

          v31 = v19 + 1 == [(NSArray *)self->_threadLineDescription count];
          v37 = v16;
          v25 = &v37;
          [(CKTranscriptBalloonCell *)self _drawStraightLineForPath:&v37 withLayout:v22 lineViewMaxY:v31 isTerminal:v30 prevLineSegmentType:v20];
          goto LABEL_17;
        }

        if (v24 == 2)
        {
          v36 = v16;
          v25 = &v36;
          [(CKTranscriptBalloonCell *)self _drawUpperBracketForPath:&v36 withLayout:v22 lineViewMaxX:v21 lineViewMaxY:v20];
LABEL_17:
          v32 = *v25;

          v16 = v32;
        }
      }

LABEL_18:

      ++v19;
    }

    while (v19 < [(NSArray *)self->_threadLineDescription count]);
  }

  return v16;
}

- (id)_lineDescriptionForThreadGroupLayoutAttributes:(id)a3 setLineType:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 count])
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
    v23[3] = [v6 count];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__7;
    v21 = __Block_byref_object_dispose__7;
    v22 = [MEMORY[0x1E695DF70] array];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__CKTranscriptBalloonCell__lineDescriptionForThreadGroupLayoutAttributes_setLineType___block_invoke;
    v9[3] = &unk_1E72ED1A0;
    v11 = v23;
    v10 = v6;
    v12 = v25;
    v13 = &v31;
    v14 = &v27;
    v15 = v24;
    v16 = &v17;
    [v10 enumerateObjectsUsingBlock:v9];
    if (v4)
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
    if (v4)
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

- (void)_drawStraightLineForPath:(id *)a3 withLayout:(id)a4 lineViewMaxY:(double)a5 isTerminal:(BOOL)a6 prevLineSegmentType:(unint64_t)a7
{
  v8 = a6;
  v16 = a4;
  if (a3)
  {
    [*a3 currentPoint];
    v14 = v13;
    v15 = v12;
    if (!v8)
    {
      [v16 frame];
      a5 = fmin(CGRectGetMidY(v18) - self->_lineViewReferenceY, a5);
      if (a5 <= v15)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (a7 != 2 || v12 + 5.0 < a5)
    {
LABEL_7:
      [*a3 addLineToPoint:{v14, a5}];
    }
  }

LABEL_8:
}

- (void)_drawUpperBracketForPath:(id *)a3 withLayout:(id)a4 lineViewMaxX:(double)a5 lineViewMaxY:(double)a6
{
  v10 = a4;
  if (a3)
  {
    v23 = v10;
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 replyLineBracketRadius];
    v13 = v12;

    [*a3 currentPoint];
    v15 = v14;
    v17 = v16;
    [*a3 moveToPoint:a5];
    [*a3 addCurveToPoint:v15 + v13 * 0.631494 controlPoint1:v17 + v13 * 0.0749114 controlPoint2:{v15 + v13 * 1.08849, v17, v15 + v13 * 0.868407, v17}];
    [*a3 addCurveToPoint:v15 + v13 * 0.0749114 controlPoint1:v17 + v13 * 0.631494 controlPoint2:{v15 + v13 * 0.372824, v17 + v13 * 0.16906, v15 + v13 * 0.16906, v17 + v13 * 0.372824}];
    v18 = fmin(a6, v17 + v13 * 1.52866);
    v19 = CKIsRunningInMacCatalyst();
    v10 = v23;
    if (v18 <= a6)
    {
      v20 = fmax(v18, v17 + v13 * 1.08849);
      v21 = 4.0;
      if (!v19)
      {
        v21 = 1.0;
      }

      if (v20 <= v21 + a6)
      {
        [*a3 addCurveToPoint:v15 controlPoint1:v18 controlPoint2:{v15, v17 + v13 * 0.868407, v15}];
        [v23 frame];
        MaxY = CGRectGetMaxY(v25);
        v10 = v23;
        if (fmin(a6, MaxY - self->_lineViewReferenceY) > v18)
        {
          [*a3 addLineToPoint:v15];
          v10 = v23;
        }
      }
    }
  }
}

- (void)_drawLowerBracketForPath:(id *)a3 lineViewMaxX:(double)a4 lineViewMaxY:(double)a5
{
  if (a3)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 replyLineBracketRadius];
    v10 = v9;

    [*a3 currentPoint];
    v12 = v11;
    v14 = fmax(v13, a5 + v10 * -1.52866);
    [*a3 addLineToPoint:{v11, v14}];
    [*a3 addCurveToPoint:v12 + v10 * 0.0749114 controlPoint1:a5 - v10 * 0.631494 controlPoint2:{v12, fmax(v14, a5 - v10 * 1.08849), v12, a5 - v10 * 0.868407}];
    [*a3 addCurveToPoint:v12 + v10 * 0.631494 controlPoint1:a5 - v10 * 0.0749114 controlPoint2:{v12 + v10 * 0.16906, a5 - v10 * 0.372824, v12 + v10 * 0.372824, a5 - v10 * 0.16906}];
    v15 = *a3;

    [v15 addCurveToPoint:a4 controlPoint1:a5 controlPoint2:{v12 + v10 * 0.868407, a5, v12 + v10 * 1.08849, a5}];
  }
}

- (void)_drawLoopForPath:(id *)a3 withLayout:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 textBalloonMinHeight];
    v9 = v8;

    lineViewExpansionFactor = self->_lineViewExpansionFactor;
    v11 = fmax(lineViewExpansionFactor * -2.77777778 + 9.37777778, 3.5);
    [v6 frame];
    v12 = CGRectGetMidY(v31) - self->_lineViewReferenceY;
    v13 = fmax(lineViewExpansionFactor * -1.11111111 + 4.41111111, 2.0);
    v14 = v13 * 0.3333;
    [*a3 currentPoint];
    v16 = v15;
    v29 = v13 * 0.8333 + v15;
    v17 = v11 + v13 + v15;
    [v6 frame];
    v18 = CGRectGetMinY(v32) - self->_lineViewReferenceY;
    [v6 frame];
    v19 = fmax(v18, CGRectGetMidY(v33) - self->_lineViewReferenceY - v9 * 0.5);
    [*a3 addLineToPoint:{v16, v19}];
    [*a3 addCurveToPoint:v29 controlPoint1:v12 controlPoint2:{v16, v19 + (v12 - v11 - v19) * 0.552285}];
    [*a3 addCurveToPoint:v17 controlPoint1:v11 + v12 controlPoint2:?];
    [*a3 addCurveToPoint:? controlPoint1:? controlPoint2:?];
    [*a3 addCurveToPoint:v17 controlPoint1:? controlPoint2:?];
    [*a3 addCurveToPoint:v29 controlPoint1:v12 controlPoint2:{v17 - v11 * 0.552285, v12 - v11, v14 + v29, v12 - v11 * 0.552285}];
    [v6 frame];
    CGRectGetMaxY(v34);
    [v6 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v35.origin.x = v21;
    v35.origin.y = v23;
    v35.size.width = v25;
    v35.size.height = v27;
    CGRectGetMidY(v35);
    v28 = *a3;

    [v28 addCurveToPoint:? controlPoint1:? controlPoint2:?];
  }
}

- (void)_animateReplyContextPreview:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E6979518] begin];
  v5 = [(CKTranscriptBalloonCell *)self layer];
  [(CKTranscriptCell *)self insertionBeginTime];
  [v5 convertTime:0 fromLayer:?];
  v7 = v6;

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 transcriptReplyPreviewContextContactAlpha];
  [CKTranscriptBalloonCell _fadeInContactImageAlpha:"_fadeInContactImageAlpha:atBeginTime:" atBeginTime:?];

  v9 = [(CKTranscriptBalloonCell *)self balloonView];
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
  v13 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v14 = [v13 fullTranscriptLoggingEnabled];

  if (v14 && IMOSLoggingEnabled())
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
  if (v4)
  {
    v4[2](v4, 1);
  }
}

- (void)_animateUpperBracket:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CKTranscriptCell *)self insertionDuration];
  v6 = v5;
  [MEMORY[0x1E6979518] begin];
  v7 = [(NSArray *)self->_threadGroupLayoutAttributes subarrayWithRange:0, [(NSArray *)self->_threadGroupLayoutAttributes count]- 1];
  v8 = [v7 lastObject];
  v9 = [v8 chatItem];

  v10 = [(CKTranscriptBalloonCell *)self balloonCellDelegate];
  v11 = [v10 cellForChatItem:v9];

  v12 = [v7 lastObject];
  [v12 frame];
  v14 = v13;
  v15 = [v11 layer];
  v16 = [v15 presentationLayer];
  [v16 frame];
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

  v29 = [(CKTranscriptBalloonCell *)self layer];
  [(CKTranscriptCell *)self insertionBeginTime];
  [v29 convertTime:0 fromLayer:?];
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
  v35 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v36 = [v35 fullTranscriptLoggingEnabled];

  if (v36)
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
  if (v4)
  {
    v4[2](v4, 1);
  }
}

- (void)_animateLineExtension:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CKTranscriptCell *)self insertionDuration];
  v6 = v5;
  [MEMORY[0x1E6979518] begin];
  v7 = [(NSArray *)self->_threadGroupLayoutAttributes subarrayWithRange:0, [(NSArray *)self->_threadGroupLayoutAttributes count]- 1];
  v8 = [v7 lastObject];
  v9 = [v8 chatItem];

  v10 = [(CKTranscriptBalloonCell *)self balloonCellDelegate];
  v11 = [v10 cellForChatItem:v9];

  v12 = [v7 lastObject];
  [v12 frame];
  v14 = v13;
  v15 = [v11 layer];
  v16 = [v15 presentationLayer];
  [v16 frame];
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

  v41 = [(CKTranscriptBalloonCell *)self layer];
  [(CKTranscriptCell *)self insertionBeginTime];
  [v41 convertTime:0 fromLayer:?];
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
  v49 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v50 = [v49 fullTranscriptLoggingEnabled];

  if (v50)
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
  if (v4)
  {
    v4[2](v4, 1);
  }
}

- (void)_animateLowerBracketToLoop:(id)a3
{
  v67 = a3;
  [(CKTranscriptCell *)self insertionDuration];
  v65 = v4;
  [MEMORY[0x1E6979518] begin];
  v5 = [(NSArray *)self->_threadGroupLayoutAttributes subarrayWithRange:0, [(NSArray *)self->_threadGroupLayoutAttributes count]- 1];
  [(CKTranscriptBalloonCell *)self _createLineViewFrameForThreadGroupLayoutAttributes:v5];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 lastObject];
  v15 = [v14 chatItem];

  v16 = [(CKTranscriptBalloonCell *)self balloonCellDelegate];
  v68 = v15;
  v17 = [v16 cellForChatItem:v15];

  v18 = [v5 lastObject];
  [v18 frame];
  v20 = v19;
  v66 = v17;
  v21 = [v17 layer];
  v22 = [v21 presentationLayer];
  [v22 frame];
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

  v40 = [v5 lastObject];
  v72.origin.x = v35;
  v72.origin.y = v39;
  v72.size.width = v37;
  v72.size.height = v38;
  Height = CGRectGetHeight(v72);
  v42 = +[CKUIBehavior sharedBehaviors];
  [v42 replyLineWidth];
  v44 = Height + v43 * -0.5;

  v64 = v40;
  v45 = [(CKTranscriptBalloonCell *)self _drawLowerBracketLoopForPath:v26 withLayout:v40 lineViewMaxY:v44];
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

  v48 = [(CKTranscriptBalloonCell *)self layer];
  [(CKTranscriptCell *)self insertionBeginTime];
  [v48 convertTime:0 fromLayer:?];
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
  v70 = v67;
  v60 = v67;
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

- (void)_slideContactImageWithTranslate:(double)a3 duration:(double)a4 beginTime:(double)a5
{
  v9 = [(CKPhoneTranscriptMessageCell *)self contactImageView];
  v10 = [v9 layer];
  v11 = v10;
  v12 = 0uLL;
  memset(&v18, 0, sizeof(v18));
  if (v10)
  {
    [v10 transform];
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
  CATransform3DTranslate(&v17, &v16, 0.0, a3, 0.0);
  v16 = v17;
  v13 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  v16 = v18;
  v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v16];
  v15 = [(CKTranscriptBalloonCell *)self animationWithKeyPath:@"transform" fromValue:v13 toValue:v14 beginTime:*MEMORY[0x1E6979ED8] duration:a5 timingFunctionName:a4];

  [v11 addAnimation:v15 forKey:@"contactImageSlide"];
}

- (void)_fadeInContactImageAlpha:(double)a3 atBeginTime:(double)a4
{
  v11 = [(CKPhoneTranscriptMessageCell *)self contactImageView];
  v7 = [v11 layer];
  [v7 setOpacity:0.0];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v9 = [(CKTranscriptBalloonCell *)self animationWithKeyPath:@"opacity" fromValue:&unk_1F04E8708 toValue:v8 beginTime:*MEMORY[0x1E6979EA0] duration:a4 timingFunctionName:0.3];

  [v7 addAnimation:v9 forKey:@"contactImageFadeIn"];
  *&v10 = a3;
  [v7 setOpacity:v10];
}

- (void)_fadeInBalloonAlpha:(double)a3 atBeginTime:(double)a4
{
  v11 = [(CKTranscriptBalloonCell *)self balloonView];
  v7 = [v11 layer];
  [v7 setOpacity:0.0];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v9 = [(CKTranscriptBalloonCell *)self animationWithKeyPath:@"opacity" fromValue:&unk_1F04E8708 toValue:v8 beginTime:*MEMORY[0x1E6979EA0] duration:a4 timingFunctionName:0.3];

  [v7 addAnimation:v9 forKey:@"balloonFadeIn"];
  *&v10 = a3;
  [v7 setOpacity:v10];
}

- (id)animationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 beginTime:(double)a6 duration:(double)a7 timingFunctionName:(id)a8
{
  v13 = MEMORY[0x1E6979318];
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = [v13 animationWithKeyPath:a3];
  [v17 setFromValue:v16];

  [v17 setToValue:v15];
  [v17 setFillMode:*MEMORY[0x1E69797E0]];
  [v17 setRemovedOnCompletion:1];
  v18 = [MEMORY[0x1E69793D0] functionWithName:v14];

  [v17 setTimingFunction:v18];
  [v17 setBeginTime:a6];
  [v17 setDuration:a7];

  return v17;
}

- (id)animationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 beginTime:(double)a6 duration:(double)a7 timingFunction:(id)a8
{
  v13 = MEMORY[0x1E6979318];
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = [v13 animationWithKeyPath:a3];
  [v17 setFromValue:v16];

  [v17 setToValue:v15];
  [v17 setFillMode:*MEMORY[0x1E69797E0]];
  [v17 setRemovedOnCompletion:1];
  [v17 setTimingFunction:v14];

  [v17 setBeginTime:a6];
  [v17 setDuration:a7];

  return v17;
}

- (id)_drawLowerBracketLoopForPath:(id)a3 withLayout:(id)a4 lineViewMaxY:(double)a5
{
  v8 = a3;
  lineView = self->_lineView;
  v10 = a4;
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
  v24 = v8;
  [v24 currentPoint];
  v26 = v25 + -30.0;
  [v24 addCurveToPoint:v23 controlPoint1:v25 + -30.0 controlPoint2:v27 + 15.0];
  v28 = v26 + 5.0;
  [v10 frame];
  v29 = CGRectGetMidY(v43) - self->_lineViewReferenceY + -10.0;
  [v10 frame];
  [v24 addCurveToPoint:v22 controlPoint1:CGRectGetMidY(v44) - self->_lineViewReferenceY controlPoint2:{v22, v28, v22, v29}];
  [v10 frame];
  v30 = CGRectGetMidY(v45) - self->_lineViewReferenceY + 15.0;
  [v10 frame];
  v31 = CGRectGetMaxY(v46) - self->_lineViewReferenceY + -15.0;
  [v10 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v47.origin.x = v33;
  v47.origin.y = v35;
  v47.size.width = v37;
  v47.size.height = v39;
  [v24 addCurveToPoint:v22 controlPoint1:CGRectGetMaxY(v47) - self->_lineViewReferenceY controlPoint2:{v22, v30, v22, v31}];
  [v24 addLineToPoint:{v22, a5}];

  return v24;
}

- (id)_extendPath:(id *)a3 withFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 replyLineWidth];
  v11 = v10;

  v12 = v11 * -0.5;
  v13 = [*a3 copy];
  [v13 currentPoint];
  v15 = v14;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  [v13 addLineToPoint:{v15, CGRectGetHeight(v18) + v12}];

  return v13;
}

- (void)_removeQuickActionButtonIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
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
    if (v3)
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

- (void)_addQuickActionButtonIfNeededAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CKTranscriptBalloonCell *)self hasQueuedQuickActionButtonRemoval])
  {
    [(CKTranscriptBalloonCell *)self setHasQueuedQuickActionButtonRemoval:0];
  }

  if (!self->_quickActionButton)
  {
    v5 = [(CKTranscriptBalloonCell *)self isRichLink];
    v6 = off_1E72E5540;
    if (!v5)
    {
      v6 = off_1E72E5548;
    }

    v7 = objc_alloc_init(*v6);
    quickActionButton = self->_quickActionButton;
    self->_quickActionButton = v7;

    [(CKQuickActionButton *)self->_quickActionButton setAnimationDelegate:self];
    [(CKQuickActionButton *)self->_quickActionButton setDelegate:self];
    if (v3)
    {
      [(CKQuickActionButton *)self->_quickActionButton setAlpha:0.0];
      v9 = [(CKEditableCollectionViewCell *)self contentView];
      [v9 addSubview:self->_quickActionButton];

      v10 = [(CKEditableCollectionViewCell *)self contentView];
      [v10 sendSubviewToBack:self->_quickActionButton];

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
      v11 = [(CKEditableCollectionViewCell *)self contentView];
      [v11 addSubview:self->_quickActionButton];

      v12 = [(CKEditableCollectionViewCell *)self contentView];
      [v12 sendSubviewToBack:self->_quickActionButton];

      [(CKTranscriptBalloonCell *)self setNeedsLayout];
    }
  }
}

- (void)setCanShowQuickActionButton:(BOOL)a3
{
  v3 = a3;
  if (![(CKEditableCollectionViewCell *)self isInReplyContext]&& self->_canShowQuickActionButton != v3)
  {
    self->_canShowQuickActionButton = v3;

    [(CKTranscriptBalloonCell *)self updateQuickActionButtonVisibility];
  }
}

- (void)setSyndicationIdentifiers:(id)a3
{
  v5 = a3;
  if (self->_syndicationIdentifiers != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_syndicationIdentifiers, a3);
    [(CKTranscriptBalloonCell *)self updateQuickActionButtonVisibility];
    v5 = v6;
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
    v4 = [(CKTranscriptBalloonCell *)self numberOfMomentSharePhotos];
    v5 = [(CKTranscriptBalloonCell *)self numberOfMomentShareVideos]+ v4;
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

    v6 = [MEMORY[0x1E69A5C30] sharedInstance];
    [v6 registerPhotoLibraryPersistenceManagerListener:self];
    v7 = [(CKTranscriptBalloonCell *)self syndicationIdentifiers];
    v8 = [v7 count];

    v9 = [MEMORY[0x1E69A5C30] sharedInstance];
    v10 = MEMORY[0x1E695DFD8];
    v11 = [(CKTranscriptBalloonCell *)self syndicationIdentifiers];
    v12 = [v10 setWithArray:v11];
    v13 = [v9 cachedCountOfSyndicationIdentifiersSavedToSystemPhotoLibrary:v12 shouldFetchAndNotifyAsNeeded:1 didStartFetch:&v14];

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

- (void)quickActionButtonWasTapped:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptBalloonCell *)self quickActionButtonTappedCallback];

  if (v5)
  {
    v6 = [(CKTranscriptBalloonCell *)self quickActionButtonTappedCallback];
    (*(v6 + 16))(v6, v4);
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptBalloonCell quickActionButtonWasTapped:v6];
    }
  }
}

- (void)quickActionButtonAnimationDidEnd:(id)a3
{
  if ([(CKTranscriptBalloonCell *)self hasQueuedQuickActionButtonRemoval])
  {

    [(CKTranscriptBalloonCell *)self _removeQuickActionButtonIfNeededAnimated:1];
  }
}

- (void)textBalloonViewWillLayoutSubviews:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v5 transcriptBalloonCell:self willLayoutTextBalloonView:v6];
  }
}

- (void)textBalloonViewDidLayoutSubviews:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v5 transcriptBalloonCell:self didLayoutTextBalloonView:v6];
  }
}

- (unint64_t)textBalloonViewAllowedLayoutActionForTextBalloonView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    v7 = [v6 transcriptBalloonCell:self allowedLayoutActionForTextBalloonView:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)textBalloonViewTextViewDidChangeRenderBounds:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v5 transcriptBalloonCell:self didChangeRenderBoundsOfTextBalloonView:v6];
  }
}

- (id)customTextRenderingDisplayLinkForTextBalloonViewTextView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    v7 = [v6 transcriptBalloonCell:self customTextRenderingDisplayLinkForTextBalloonViewTextView:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)textBalloonViewTextView:(id)a3 didChangeTextEffectPlaybackCandidateStatus:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsDelegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_textEffectsDelegate);
    [v7 transcriptBalloonCell:self textBalloonView:v8 didChangeTextEffectPlaybackCandidateStatus:v4];
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

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v67 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v64.receiver = self;
  v64.super_class = CKTranscriptBalloonCell;
  [(CKTranscriptMessageContentCell *)&v64 configureForChatItem:v12 context:v13 animated:v9 animationDuration:a7 animationCurve:a6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v12 itemIsReplyContextPreview] & 1) == 0)
    {
      -[CKTranscriptMessageCell setFailed:](self, "setFailed:", [v12 failed]);
      v14 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v15 = [v14 stewieEnabled];

      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v12 stewieConversationID];
          v17 = [v12 failed];
          v18 = v16 >= 0 ? v17 : 0;
          if (v18 == 1)
          {
            v19 = [v12 message];
            v20 = [v19 messageSubject];
            v21 = [v20 length] == 0;

            if (!v21)
            {
              if (IMOSLoggingEnabled())
              {
                v22 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  *buf = 134217984;
                  v66 = v16;
                  _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Disable failure button on initial Stewie start message for conversation ID: %ld", buf, 0xCu);
                }
              }

              [(CKTranscriptMessageCell *)self setFailed:0];
            }
          }
        }
      }

      if ([v12 isBlackholed])
      {
        v23 = [(CKTranscriptMessageCell *)self failureButton];
        v24 = +[CKUIBehavior sharedBehaviors];
        v25 = [v24 theme];
        v26 = [v25 statusTextColor];
        [v23 setTintColor:v26];
      }
    }

    v27 = [v12 balloonViewClass];
    v28 = [(CKTranscriptBalloonCell *)self balloonView];
    if (v28 && objc_opt_class() == v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = CKBalloonViewForClass(v27);
      [(CKTranscriptBalloonCell *)self setBalloonView:v29];
      if (v28)
      {
        [v28 frame];
        [v29 setFrame:?];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v29 configureForLocatingChatItem:v12];
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
            v53 = v29;
            v54 = [v53 mayReparentPluginViews];
            [v53 setMayReparentPluginViews:{-[CKTranscriptBalloonCell mayReparentPluginViews](self, "mayReparentPluginViews")}];
            [v53 configureForTranscriptPlugin:v12 context:v13];
            [v53 setMayReparentPluginViews:v54];

            [(CKTranscriptBalloonCell *)self configureQuickActionButtonForChatItem:v12];
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
              [v29 configureForTUConversationChatItem:v12];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v55 = v12;
                [v29 configureForMessagePart:v55];
                [(CKTranscriptBalloonCell *)self configureQuickActionButtonForChatItem:v55];
              }

              else
              {
                [v29 configureForChatItem:v12];
              }
            }

            goto LABEL_31;
          }
        }

        [v29 configureForTranscriptPlugin:v12];
        goto LABEL_31;
      }

      [v29 configureForLocationShareOfferChatItem:v12];
    }

LABEL_31:
    [v29 frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [v12 size];
    v40 = v39;
    v42 = v41;
    v43 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v44 = [v43 isCAShapeLayerBalloonsEnabled];

    if (v44)
    {
      [v29 tailInsetsForPillSize:{v40, v42}];
      v42 = v46 + v42 + v45;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [v12 layoutRecipe];
      v48 = v47;
      if (v47)
      {
        [v47 targetSize];
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
      v57 = v29;
      v58 = self;
      v63 = v9;
      v51 = _Block_copy(aBlock);
      v52 = v51;
      if (v9)
      {
        [MEMORY[0x1E69DD250] animateWithDuration:a7 << 16 delay:v51 options:0 animations:a6 completion:0.0];
      }

      else
      {
        (*(v51 + 2))(v51);
      }
    }

    -[CKTranscriptBalloonCell setCanInlineReply:](self, "setCanInlineReply:", [v12 canInlineReply]);
    goto LABEL_47;
  }

  v30 = IMLogHandleForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [CKTranscriptBalloonCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
  }

  v29 = [(CKTranscriptBalloonCell *)self balloonView];
  [v29 prepareForReuse];
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

- (void)configureQuickActionButtonForChatItem:(id)a3
{
  v20 = a3;
  v4 = [MEMORY[0x1E6994658] sharedSystemShellSwitcher];
  v5 = [v4 isClarityBoardEnabled];

  if (CKIsRunningInMessagesViewService() || CKIsRunningInMessagesNotificationExtension() || CKIsRunningInRemoteIntentClient())
  {
    v6 = 0;
  }

  else
  {
    v6 = [v20 canPerformQuickAction] & (v5 ^ 1);
  }

  v7 = [v20 IMChatItem];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 type];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 isEqualToString:@"com.apple.messages.URLBalloonProvider"])
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
    v10 = [v20 IMChatItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v20 IMChatItem];
      [(CKTranscriptBalloonCell *)self setIsRichLink:0];
      -[CKTranscriptBalloonCell setNumberOfMomentShareSavedAssets:](self, "setNumberOfMomentShareSavedAssets:", [v12 numberOfMomentShareSavedAssets]);
      -[CKTranscriptBalloonCell setNumberOfMomentSharePhotos:](self, "setNumberOfMomentSharePhotos:", [v12 numberOfMomentSharePhotos]);
      -[CKTranscriptBalloonCell setNumberOfMomentShareVideos:](self, "setNumberOfMomentShareVideos:", [v12 numberOfMomentShareVideos]);
    }

    objc_opt_class();
    v13 = objc_opt_isKindOfClass();
    if (v13 & v6)
    {
      v14 = [v20 layoutRecipe];
      v15 = [v14 isLastItem];
    }

    else
    {
      v15 = (v13 ^ 1) & v6;
    }

    v16 = MEMORY[0x1E69A5C30];
    v17 = [v20 message];
    v18 = [v20 IMChatItem];
    v19 = [v16 photosSyndicationIdentifiersForMessage:v17 transcriptChatItem:v18];

    [(CKTranscriptBalloonCell *)self setSyndicationIdentifiers:v19];
    if ((v15 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v9 = [(CKTranscriptBalloonCell *)self _isCommSafetyRestrictedForChatItem:v20]^ 1;
LABEL_18:
  [(CKTranscriptBalloonCell *)self setCanShowQuickActionButton:v9];
}

- (BOOL)_isCommSafetyRestrictedForChatItem:(id)a3
{
  v3 = a3;
  if ([v3 supportsCommunicationSafety] && (objc_msgSend(v3, "commSafetyTransferGUID"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    v6 = [MEMORY[0x1E69A5B80] sharedInstance];
    v7 = [v3 commSafetyTransferGUID];
    v8 = [v6 transferForGUID:v7];

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
  v2 = self;
  CKTranscriptBalloonCell.configureContactImageStrokeView()();
}

@end