@interface CKTranscriptTypingIndicatorCell
- (BOOL)_disableRasterizeInAnimations;
- (CKTranscriptTypingIndicatorCell)initWithFrame:(CGRect)frame;
- (CKTypingIndicatorLayerProtocol)indicatorLayer;
- (CKTypingView)typingView;
- (void)_updateGroupOpacityOnCellLayer;
- (void)ckLayerDidBecomeVisible:(BOOL)visible;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)performInsertion:(id)insertion;
- (void)performRemoval:(id)removal;
- (void)prepareForReuse;
- (void)resetTypingView;
- (void)setIndicatorLayer:(id)layer;
- (void)setOrientation:(char)orientation;
- (void)setTraitCollection:(id)collection;
- (void)setTraitCollectionForIndicatorLayer:(id)layer;
- (void)startGrowAnimation;
- (void)startPulseAnimation;
- (void)startShrinkAnimation;
- (void)stopPulseAnimation;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKTranscriptTypingIndicatorCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16.receiver = self;
    v16.super_class = CKTranscriptTypingIndicatorCell;
    [(CKTranscriptCell *)&v16 configureForChatItem:itemCopy context:contextCopy animated:animatedCopy animationDuration:curve animationCurve:duration];
    indicatorLayer = [itemCopy indicatorLayer];
    [(CKTranscriptTypingIndicatorCell *)self setIndicatorLayer:indicatorLayer];

    transcriptTraitCollection = [itemCopy transcriptTraitCollection];
    [(CKTranscriptTypingIndicatorCell *)self setTraitCollection:transcriptTraitCollection];
    [(CKTranscriptTypingIndicatorCell *)self startPulseAnimation];
  }

  else
  {
    transcriptTraitCollection = IMLogHandleForCategory();
    if (os_log_type_enabled(transcriptTraitCollection, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptTypingIndicatorCell(CKChatItem) configureForChatItem:context:animated:animationDuration:animationCurve:];
    }
  }
}

- (CKTranscriptTypingIndicatorCell)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CKTranscriptTypingIndicatorCell;
  v3 = [(CKTranscriptCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    baseLayer = [(CKTypingView *)v5 baseLayer];
    [baseLayer setCkLayerDelegate:self];

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

  contentView = [(CKEditableCollectionViewCell *)self contentView];
  typingView = [(CKTranscriptTypingIndicatorCell *)self typingView];
  [contentView addSubview:typingView];

  [(CKTranscriptTypingIndicatorCell *)self setPulsingInProgress:0];
}

- (void)_updateGroupOpacityOnCellLayer
{
  traitCollection = [(CKTranscriptTypingIndicatorCell *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  layer = [(CKTranscriptTypingIndicatorCell *)self layer];
  [layer setAllowsGroupOpacity:isTranscriptBackgroundActive ^ 1u];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKTranscriptTypingIndicatorCell;
  [(CKTranscriptMessageCell *)&v3 prepareForReuse];
  [(CKTranscriptTypingIndicatorCell *)self resetTypingView];
}

- (void)setOrientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKEditableCollectionViewCell *)self orientation]!= orientation)
  {
    v16.receiver = self;
    v16.super_class = CKTranscriptTypingIndicatorCell;
    [(CKEditableCollectionViewCell *)&v16 setOrientation:orientationCopy];
    if (orientationCopy == 2)
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

    typingView = [(CKTranscriptTypingIndicatorCell *)self typingView];
    layer = [typingView layer];
    v10 = v6;
    v11 = v15;
    v12 = v5;
    v13 = v14;
    [layer setAffineTransform:&v10];

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
  typingView = [(CKTranscriptTypingIndicatorCell *)self typingView];
  layer = [typingView layer];
  [layer frame];
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

  typingView2 = [(CKTranscriptTypingIndicatorCell *)self typingView];
  layer2 = [typingView2 layer];
  [layer2 setFrame:{v22, (v19 - v21) * 0.5, v15, v17}];
}

- (void)performInsertion:(id)insertion
{
  insertionCopy = insertion;
  [(CKTranscriptTypingIndicatorCell *)self startGrowAnimation];
  v5 = insertionCopy;
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

- (void)performRemoval:(id)removal
{
  removalCopy = removal;
  [(CKTranscriptTypingIndicatorCell *)self stopPulseAnimation];
  v4 = removalCopy;
  if (removalCopy)
  {
    (*(removalCopy + 2))(removalCopy, 1);
    v4 = removalCopy;
  }
}

- (void)ckLayerDidBecomeVisible:(BOOL)visible
{
  if (visible)
  {
    [(CKTranscriptTypingIndicatorCell *)self startPulseAnimation];
  }

  else
  {
    [(CKTranscriptTypingIndicatorCell *)self stopPulseAnimation];
  }
}

- (void)setIndicatorLayer:(id)layer
{
  layerCopy = layer;
  if (!-[CKTranscriptTypingIndicatorCell pulsingInProgress](self, "pulsingInProgress") || (-[CKTranscriptTypingIndicatorCell typingView](self, "typingView"), v4 = objc_claimAutoreleasedReturnValue(), [v4 indicatorLayer], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    typingView = [(CKTranscriptTypingIndicatorCell *)self typingView];
    [typingView setIndicatorLayer:layerCopy];

    [(CKTranscriptTypingIndicatorCell *)self setNeedsLayout];
  }
}

- (void)setTraitCollection:(id)collection
{
  [(CKTranscriptTypingIndicatorCell *)self setTraitCollectionForIndicatorLayer:collection];

  [(CKTranscriptTypingIndicatorCell *)self _updateGroupOpacityOnCellLayer];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = CKTranscriptTypingIndicatorCell;
  [(CKTranscriptTypingIndicatorCell *)&v5 traitCollectionDidChange:change];
  traitCollection = [(CKTranscriptTypingIndicatorCell *)self traitCollection];
  [(CKTranscriptTypingIndicatorCell *)self setTraitCollectionForIndicatorLayer:traitCollection];
}

- (void)setTraitCollectionForIndicatorLayer:(id)layer
{
  layerCopy = layer;
  indicatorLayer = [(CKTranscriptTypingIndicatorCell *)self indicatorLayer];
  if (objc_opt_respondsToSelector())
  {
    [indicatorLayer setTraitCollection:layerCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [layerCopy transcriptBackgroundLuminosity];
    [indicatorLayer setTranscriptBackgroundLuminance:?];
  }
}

- (CKTypingIndicatorLayerProtocol)indicatorLayer
{
  typingView = [(CKTranscriptTypingIndicatorCell *)self typingView];
  indicatorLayer = [typingView indicatorLayer];

  return indicatorLayer;
}

- (void)startGrowAnimation
{
  typingView = [(CKTranscriptTypingIndicatorCell *)self typingView];
  indicatorLayer = [typingView indicatorLayer];
  [indicatorLayer startGrowAnimation];
}

- (void)startPulseAnimation
{
  if (![(CKTranscriptTypingIndicatorCell *)self pulsingInProgress])
  {
    typingView = [(CKTranscriptTypingIndicatorCell *)self typingView];
    indicatorLayer = [typingView indicatorLayer];
    [indicatorLayer startPulseAnimation];

    [(CKTranscriptTypingIndicatorCell *)self setPulsingInProgress:1];
  }
}

- (void)stopPulseAnimation
{
  typingView = [(CKTranscriptTypingIndicatorCell *)self typingView];
  indicatorLayer = [typingView indicatorLayer];
  [indicatorLayer stopPulseAnimation];

  [(CKTranscriptTypingIndicatorCell *)self setPulsingInProgress:0];
}

- (void)startShrinkAnimation
{
  typingView = [(CKTranscriptTypingIndicatorCell *)self typingView];
  indicatorLayer = [typingView indicatorLayer];
  [indicatorLayer startShrinkAnimationWithCompletionBlock:0];
}

- (BOOL)_disableRasterizeInAnimations
{
  traitCollection = [(CKTranscriptTypingIndicatorCell *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  return isTranscriptBackgroundActive;
}

@end