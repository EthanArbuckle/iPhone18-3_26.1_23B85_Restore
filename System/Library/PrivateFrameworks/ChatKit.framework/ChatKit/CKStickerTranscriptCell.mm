@interface CKStickerTranscriptCell
- (CKStickerTranscriptCell)initWithFrame:(CGRect)a3;
- (void)_commitFirstFrameWithAnimationTime:(double)a3;
- (void)animationTimerFired:(double)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setAnimatedImage:(id)a3;
- (void)setCommSafetyState:(int64_t)a3;
- (void)setCurrentFrameIndex:(int64_t)a3;
- (void)setImage:(id)a3;
- (void)setSticker:(id)a3;
- (void)updateAnimationTimerObserving;
@end

@implementation CKStickerTranscriptCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v56.receiver = self;
  v56.super_class = CKStickerTranscriptCell;
  v12 = a3;
  [(CKAssociatedStickerTranscriptCell *)&v56 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 mediaObject];

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 previewMaxWidth];
  v15 = [v13 previewForWidth:0 orientation:?];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKStickerTranscriptCell *)self setAnimatedImage:v15];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CKStickerTranscriptCell *)self setImage:v15];
    }
  }

  v16 = [v13 transfer];
  v17 = [v16 attributionInfo];
  v18 = [v17 objectForKey:*MEMORY[0x1E69A6F98]];

  if ([v18 length])
  {
    v19 = [(CKStickerTranscriptCell *)self imageView];
    [v19 setStickerAccessibilityDescription:v18];
  }

  v20 = [v13 transfer];
  -[CKStickerTranscriptCell setCommSafetyState:](self, "setCommSafetyState:", [v20 commSafetySensitive]);

  v21 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v22 = [v21 isClingEnabled];

  if (!v22)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = v13;
  v24 = [v23 stickerEffectType];
  v25 = [(CKAssociatedStickerTranscriptCell *)self sticker];
  [v25 setStickerEffectType:v24];

  if ([v23 needsAnimation] & 1) != 0 || (IMStickerEffectTypeShouldAvoidEffectView())
  {

LABEL_12:
    v26 = [(CKStickerTranscriptCell *)self imageView];
    v27 = [v26 layer];
    v28 = *(MEMORY[0x1E69792E8] + 80);
    v52 = *(MEMORY[0x1E69792E8] + 64);
    v53 = v28;
    v29 = *(MEMORY[0x1E69792E8] + 112);
    v54 = *(MEMORY[0x1E69792E8] + 96);
    v55 = v29;
    v30 = *(MEMORY[0x1E69792E8] + 16);
    v48 = *MEMORY[0x1E69792E8];
    v49 = v30;
    v31 = *(MEMORY[0x1E69792E8] + 48);
    v50 = *(MEMORY[0x1E69792E8] + 32);
    v51 = v31;
    [v27 setTransform:&v48];

    v32 = [(CKStickerTranscriptCell *)self imageView];
    v33 = [v32 layer];
    [v33 removeAllAnimations];

    v23 = [(CKStickerTranscriptCell *)self imageView];
    [(CKAssociatedStickerTranscriptCell *)self setAssociatedItemView:v23];
    goto LABEL_13;
  }

  v34 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = MTLCreateSystemDefaultDevice();
    v36 = [objc_alloc(MEMORY[0x1E69DFA08]) initWithDevice:v35];

    [v36 setContentMode:1];
    v37 = [v36 layer];
    v38 = *(MEMORY[0x1E69792E8] + 80);
    v52 = *(MEMORY[0x1E69792E8] + 64);
    v53 = v38;
    v39 = *(MEMORY[0x1E69792E8] + 112);
    v54 = *(MEMORY[0x1E69792E8] + 96);
    v55 = v39;
    v40 = *(MEMORY[0x1E69792E8] + 16);
    v48 = *MEMORY[0x1E69792E8];
    v49 = v40;
    v41 = *(MEMORY[0x1E69792E8] + 48);
    v50 = *(MEMORY[0x1E69792E8] + 32);
    v51 = v41;
    [v37 setTransform:&v48];

    v42 = [v36 layer];
    [v42 removeAllAnimations];

    v43 = [(CKStickerTranscriptCell *)self image];
    [v36 setImage:v43];

    v44 = MEMORY[0x1E69DFA00];
    v45 = [(CKAssociatedStickerTranscriptCell *)self sticker];
    v46 = [v44 effectWithType:{objc_msgSend(v45, "stickerEffectType")}];
    [v36 setEffect:v46];

    [(CKAssociatedStickerTranscriptCell *)self setAssociatedItemView:v36];
    v34 = v36;
  }

  v47 = [(CKStickerTranscriptCell *)self imageView];
  [v47 frame];
  [v34 setFrame:?];

LABEL_13:
}

- (CKStickerTranscriptCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CKStickerTranscriptCell;
  v3 = [(CKAssociatedStickerTranscriptCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [CKBalloonImageView alloc];
    v5 = [(CKBalloonImageView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    imageView = v3->_imageView;
    v3->_imageView = v5;

    [(CKBalloonImageView *)v3->_imageView setContentMode:1];
    [(CKAssociatedStickerTranscriptCell *)v3 setAssociatedItemView:v3->_imageView];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[CKImageAnimationTimer sharedTimer];
  [v3 removeAnimationTimerObserver:self];

  v4.receiver = self;
  v4.super_class = CKStickerTranscriptCell;
  [(CKPhoneTranscriptMessageCell *)&v4 dealloc];
}

- (void)prepareForReuse
{
  v13.receiver = self;
  v13.super_class = CKStickerTranscriptCell;
  [(CKAssociatedStickerTranscriptCell *)&v13 prepareForReuse];
  v3 = [(CKStickerTranscriptCell *)self imageView];
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  v5 = [(CKStickerTranscriptCell *)self imageView];
  [v5 setImage:0];

  v6 = [(CKStickerTranscriptCell *)self imageView];
  v7 = [v6 layer];
  v8 = *(MEMORY[0x1E69792E8] + 80);
  v12[4] = *(MEMORY[0x1E69792E8] + 64);
  v12[5] = v8;
  v9 = *(MEMORY[0x1E69792E8] + 112);
  v12[6] = *(MEMORY[0x1E69792E8] + 96);
  v12[7] = v9;
  v10 = *(MEMORY[0x1E69792E8] + 16);
  v12[0] = *MEMORY[0x1E69792E8];
  v12[1] = v10;
  v11 = *(MEMORY[0x1E69792E8] + 48);
  v12[2] = *(MEMORY[0x1E69792E8] + 32);
  v12[3] = v11;
  [v7 setTransform:v12];

  [(CKStickerTranscriptCell *)self setImage:0];
  [(CKStickerTranscriptCell *)self setAnimatedImage:0];
  [(CKStickerTranscriptCell *)self setCommSafetyState:0];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CKStickerTranscriptCell;
  [(CKStickerTranscriptCell *)&v3 didMoveToWindow];
  [(CKStickerTranscriptCell *)self updateAnimationTimerObserving];
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_image, a3);
    v6 = [(CKStickerTranscriptCell *)self imageView];
    [v6 setImage:v7];

    v5 = v7;
  }
}

- (void)setCurrentFrameIndex:(int64_t)a3
{
  v4 = [(CKStickerTranscriptCell *)self imageView];
  [v4 setCurrentFrameIndex:a3];
}

- (void)setSticker:(id)a3
{
  v4 = a3;
  v5 = [(CKAssociatedStickerTranscriptCell *)self sticker];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = CKStickerTranscriptCell;
    [(CKAssociatedStickerTranscriptCell *)&v8 setSticker:v4];
    v7 = [(CKAssociatedStickerTranscriptCell *)self sticker];
    -[CKStickerTranscriptCell setInitialFrameIndex:](self, "setInitialFrameIndex:", [v7 initialFrameIndex]);

    [(CKStickerTranscriptCell *)self updateAnimationTimerObserving];
  }
}

- (void)setAnimatedImage:(id)a3
{
  v5 = a3;
  if (self->_animatedImage != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_animatedImage, a3);
    v6 = [(CKAnimatedImage *)self->_animatedImage frames];
    [(CKStickerTranscriptCell *)self setFrames:v6];
    [(CKStickerTranscriptCell *)self updateAnimationTimerObserving];
    if (+[CKImageAnimationTimer accessibilityAnimatedImagesDisabled])
    {
      v7 = [(CKStickerTranscriptCell *)self frames];
      v8 = [v7 objectAtIndex:0];

      [(CKStickerTranscriptCell *)self setImage:v8];
    }

    v5 = v9;
  }
}

- (void)setCommSafetyState:(int64_t)a3
{
  if (self->_commSafetyState != a3)
  {
    self->_commSafetyState = a3;
    v4 = a3 == 1;
    v5 = [(CKEditableCollectionViewCell *)self contentView];
    [v5 setHidden:v4];
  }
}

- (void)animationTimerFired:(double)a3
{
  if (([(CKTranscriptMessageContentCell *)self animationPauseReasons]& 2) == 0)
  {
    if ([(CKStickerTranscriptCell *)self hasCommittedFirstFrame])
    {
      v5 = [(CKAnimatedImage *)self->_animatedImage frameIndexForAnimationTime:a3];
      v6 = [(CKStickerTranscriptCell *)self frames];
      v7 = [v6 count];

      if (v7 >= 2)
      {
        v8 = [(CKStickerTranscriptCell *)self initialFrameIndex]+ v5;
        v9 = [(CKStickerTranscriptCell *)self frames];
        v5 = v8 % [v9 count];
      }

      v10 = [(CKStickerTranscriptCell *)self frames];
      v11 = [v10 objectAtIndex:v5];

      [(CKStickerTranscriptCell *)self setImage:v11];
      [(CKStickerTranscriptCell *)self setCurrentFrameIndex:v5];
    }

    else
    {

      [(CKStickerTranscriptCell *)self _commitFirstFrameWithAnimationTime:a3];
    }
  }
}

- (void)_commitFirstFrameWithAnimationTime:(double)a3
{
  v4 = [(CKAssociatedStickerTranscriptCell *)self sticker];
  v5 = [v4 initialFrameIndex];

  v6 = [(CKStickerTranscriptCell *)self animatedImage];
  v7 = [v6 frames];
  v8 = [v7 count];

  v9 = [(CKStickerTranscriptCell *)self animatedImage];
  v10 = [v9 frames];
  v11 = v10;
  if (v5 >= v8)
  {
    [v10 firstObject];
  }

  else
  {
    [v10 objectAtIndex:v5];
  }
  v12 = ;

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v13 = [(CKStickerTranscriptCell *)self imageView];
  [v13 setImage:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__CKStickerTranscriptCell__commitFirstFrameWithAnimationTime___block_invoke;
  v14[3] = &unk_1E72ED810;
  v14[4] = self;
  v14[5] = v5;
  [MEMORY[0x1E6979518] setCompletionBlock:v14];
  [MEMORY[0x1E6979518] commit];
}

void __62__CKStickerTranscriptCell__commitFirstFrameWithAnimationTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasCommittedFirstFrame:1];
  v2 = [*(a1 + 32) animatedImage];
  v3 = [v2 durations];
  v4 = [v3 objectAtIndex:*(a1 + 40)];
  [v4 doubleValue];
  v6 = v5;

  v7 = +[CKImageAnimationTimer sharedTimer];
  [v7 animationTime];
  v9 = v8;

  v10 = [*(a1 + 32) animatedImage];
  [v10 setAnimationStartTimeOffset:v6 + v9];
}

- (void)updateAnimationTimerObserving
{
  v3 = [(CKStickerTranscriptCell *)self frames];
  if ([v3 count] <= 1)
  {

    goto LABEL_5;
  }

  v4 = [(CKStickerTranscriptCell *)self window];
  if (!v4)
  {
    v5 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
    v6 = [v5 window];

    if (v6)
    {
      goto LABEL_7;
    }

LABEL_5:
    v7 = +[CKImageAnimationTimer sharedTimer];
    [v7 removeAnimationTimerObserver:self];
    goto LABEL_8;
  }

LABEL_7:
  [(CKStickerTranscriptCell *)self setHasCommittedFirstFrame:0];
  v7 = +[CKImageAnimationTimer sharedTimer];
  [v7 addAnimationTimerObserver:self];
LABEL_8:
}

@end