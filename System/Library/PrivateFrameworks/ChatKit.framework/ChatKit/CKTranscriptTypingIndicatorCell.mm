@interface CKTranscriptTypingIndicatorCell
- (BOOL)_disableRasterizeInAnimations;
- (CKTranscriptTypingIndicatorCell)initWithFrame:(CGRect)a3;
- (CKTypingIndicatorLayerProtocol)indicatorLayer;
- (CKTypingView)typingView;
- (void)_updateGroupOpacityOnCellLayer;
- (void)ckLayerDidBecomeVisible:(BOOL)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)a3;
- (void)performRemoval:(id)a3;
- (void)prepareForReuse;
- (void)resetTypingView;
- (void)setIndicatorLayer:(id)a3;
- (void)setOrientation:(char)a3;
- (void)setTraitCollection:(id)a3;
- (void)setTraitCollectionForIndicatorLayer:(id)a3;
- (void)startGrowAnimation;
- (void)startPulseAnimation;
- (void)startShrinkAnimation;
- (void)stopPulseAnimation;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKTranscriptTypingIndicatorCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16.receiver = self;
    v16.super_class = CKTranscriptTypingIndicatorCell;
    [(CKTranscriptCell *)&v16 configureForChatItem:v12 context:v13 animated:v9 animationDuration:a7 animationCurve:a6];
    v14 = [v12 indicatorLayer];
    [(CKTranscriptTypingIndicatorCell *)self setIndicatorLayer:v14];

    v15 = [v12 transcriptTraitCollection];
    [(CKTranscriptTypingIndicatorCell *)self setTraitCollection:v15];
    [(CKTranscriptTypingIndicatorCell *)self startPulseAnimation];
  }

  else
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptTypingIndicatorCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

- (CKTranscriptTypingIndicatorCell)initWithFrame:(CGRect)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CKTranscriptTypingIndicatorCell;
  v3 = [(CKTranscriptCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKTranscriptTypingIndicatorCell *)v3 resetTypingView];
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(CKTranscriptTypingIndicatorCell *)v4 registerForTraitChanges:v5 withTarget:v4 action:sel__updateGroupOpacityOnCellLayer];
  }

  return v4;
}

- (CKTypingView)typingView
{
  typingView = self->_typingView;
  if (!typingView)
  {
    v4 = [CKTypingView alloc];
    v5 = [(CKTypingView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = [(CKTypingView *)v5 baseLayer];
    [v6 setCkLayerDelegate:self];

    v7 = self->_typingView;
    self->_typingView = v5;

    typingView = self->_typingView;
  }

  return typingView;
}

- (void)resetTypingView
{
  [(CKTypingView *)self->_typingView removeFromSuperview];
  typingView = self->_typingView;
  self->_typingView = 0;

  v4 = [(CKEditableCollectionViewCell *)self contentView];
  v5 = [(CKTranscriptTypingIndicatorCell *)self typingView];
  [v4 addSubview:v5];

  [(CKTranscriptTypingIndicatorCell *)self setPulsingInProgress:0];
}

- (void)_updateGroupOpacityOnCellLayer
{
  v3 = [(CKTranscriptTypingIndicatorCell *)self traitCollection];
  v4 = [v3 isTranscriptBackgroundActive];

  v5 = [(CKTranscriptTypingIndicatorCell *)self layer];
  [v5 setAllowsGroupOpacity:v4 ^ 1u];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKTranscriptTypingIndicatorCell;
  [(CKTranscriptMessageCell *)&v3 prepareForReuse];
  [(CKTranscriptTypingIndicatorCell *)self resetTypingView];
}

- (void)setOrientation:(char)a3
{
  v3 = a3;
  if ([(CKEditableCollectionViewCell *)self orientation]!= a3)
  {
    v16.receiver = self;
    v16.super_class = CKTranscriptTypingIndicatorCell;
    [(CKEditableCollectionViewCell *)&v16 setOrientation:v3];
    if (v3 == 2)
    {
      v15 = 0uLL;
      v5 = 1.0;
      v6 = -1.0;
      v14 = 0uLL;
    }

    else
    {
      v6 = *MEMORY[0x1E695EFD0];
      v7 = *(MEMORY[0x1E695EFD0] + 8);
      v5 = *(MEMORY[0x1E695EFD0] + 24);
      v14 = *(MEMORY[0x1E695EFD0] + 32);
      v15 = v7;
    }

    v8 = [(CKTranscriptTypingIndicatorCell *)self typingView];
    v9 = [v8 layer];
    v10 = v6;
    v11 = v15;
    v12 = v5;
    v13 = v14;
    [v9 setAffineTransform:&v10];

    [(CKTranscriptTypingIndicatorCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v30.receiver = self;
  v30.super_class = CKTranscriptTypingIndicatorCell;
  [(CKEditableCollectionViewCell *)&v30 layoutSubviewsForAlignmentContents];
  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[_TtC7ChatKit36CKTypingIndicatorVisualConfiguration platformConfiguration];
  v12 = [(CKTranscriptTypingIndicatorCell *)self typingView];
  v13 = [v12 layer];
  [v13 frame];
  v15 = v14;
  v17 = v16;

  [(CKTranscriptTypingIndicatorCell *)self bounds];
  v19 = v18;
  [v11 defaultSize];
  v21 = v20;
  if ([(CKEditableCollectionViewCell *)self orientation])
  {
    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    v22 = CGRectGetMaxX(v31) - v15;
  }

  else
  {
    [v11 largeBubbleFrame];
    v24 = v23;
    v26 = v25;
    [v11 largeBubbleAnchorPoint];
    v22 = v4 - (v24 - v26 * v27);
  }

  v28 = [(CKTranscriptTypingIndicatorCell *)self typingView];
  v29 = [v28 layer];
  [v29 setFrame:{v22, (v19 - v21) * 0.5, v15, v17}];
}

- (void)performInsertion:(id)a3
{
  v4 = a3;
  [(CKTranscriptTypingIndicatorCell *)self startGrowAnimation];
  v5 = v4;
  im_dispatch_after();
}

uint64_t __52__CKTranscriptTypingIndicatorCell_performInsertion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)performRemoval:(id)a3
{
  v5 = a3;
  [(CKTranscriptTypingIndicatorCell *)self stopPulseAnimation];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 1);
    v4 = v5;
  }
}

- (void)ckLayerDidBecomeVisible:(BOOL)a3
{
  if (a3)
  {
    [(CKTranscriptTypingIndicatorCell *)self startPulseAnimation];
  }

  else
  {
    [(CKTranscriptTypingIndicatorCell *)self stopPulseAnimation];
  }
}

- (void)setIndicatorLayer:(id)a3
{
  v7 = a3;
  if (!-[CKTranscriptTypingIndicatorCell pulsingInProgress](self, "pulsingInProgress") || (-[CKTranscriptTypingIndicatorCell typingView](self, "typingView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 indicatorLayer], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = [(CKTranscriptTypingIndicatorCell *)self typingView];
    [v6 setIndicatorLayer:v7];

    [(CKTranscriptTypingIndicatorCell *)self setNeedsLayout];
  }
}

- (void)setTraitCollection:(id)a3
{
  [(CKTranscriptTypingIndicatorCell *)self setTraitCollectionForIndicatorLayer:a3];

  [(CKTranscriptTypingIndicatorCell *)self _updateGroupOpacityOnCellLayer];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKTranscriptTypingIndicatorCell;
  [(CKTranscriptTypingIndicatorCell *)&v5 traitCollectionDidChange:a3];
  v4 = [(CKTranscriptTypingIndicatorCell *)self traitCollection];
  [(CKTranscriptTypingIndicatorCell *)self setTraitCollectionForIndicatorLayer:v4];
}

- (void)setTraitCollectionForIndicatorLayer:(id)a3
{
  v5 = a3;
  v4 = [(CKTranscriptTypingIndicatorCell *)self indicatorLayer];
  if (objc_opt_respondsToSelector())
  {
    [v4 setTraitCollection:v5];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 transcriptBackgroundLuminosity];
    [v4 setTranscriptBackgroundLuminance:?];
  }
}

- (CKTypingIndicatorLayerProtocol)indicatorLayer
{
  v2 = [(CKTranscriptTypingIndicatorCell *)self typingView];
  v3 = [v2 indicatorLayer];

  return v3;
}

- (void)startGrowAnimation
{
  v3 = [(CKTranscriptTypingIndicatorCell *)self typingView];
  v2 = [v3 indicatorLayer];
  [v2 startGrowAnimation];
}

- (void)startPulseAnimation
{
  if (![(CKTranscriptTypingIndicatorCell *)self pulsingInProgress])
  {
    v3 = [(CKTranscriptTypingIndicatorCell *)self typingView];
    v4 = [v3 indicatorLayer];
    [v4 startPulseAnimation];

    [(CKTranscriptTypingIndicatorCell *)self setPulsingInProgress:1];
  }
}

- (void)stopPulseAnimation
{
  v3 = [(CKTranscriptTypingIndicatorCell *)self typingView];
  v4 = [v3 indicatorLayer];
  [v4 stopPulseAnimation];

  [(CKTranscriptTypingIndicatorCell *)self setPulsingInProgress:0];
}

- (void)startShrinkAnimation
{
  v3 = [(CKTranscriptTypingIndicatorCell *)self typingView];
  v2 = [v3 indicatorLayer];
  [v2 startShrinkAnimationWithCompletionBlock:0];
}

- (BOOL)_disableRasterizeInAnimations
{
  v2 = [(CKTranscriptTypingIndicatorCell *)self traitCollection];
  v3 = [v2 isTranscriptBackgroundActive];

  return v3;
}

@end