@interface CKStickerTranscriptCell
- (CKStickerTranscriptCell)initWithFrame:(CGRect)frame;
- (void)_commitFirstFrameWithAnimationTime:(double)time;
- (void)animationTimerFired:(double)fired;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setAnimatedImage:(id)image;
- (void)setCommSafetyState:(int64_t)state;
- (void)setCurrentFrameIndex:(int64_t)index;
- (void)setImage:(id)image;
- (void)setSticker:(id)sticker;
- (void)updateAnimationTimerObserving;
@end

@implementation CKStickerTranscriptCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v56.receiver = self;
  v56.super_class = CKStickerTranscriptCell;
  itemCopy = item;
  [(CKAssociatedStickerTranscriptCell *)&v56 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  mediaObject = [itemCopy mediaObject];

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 previewMaxWidth];
  v15 = [mediaObject previewForWidth:0 orientation:?];

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

  transfer = [mediaObject transfer];
  attributionInfo = [transfer attributionInfo];
  v18 = [attributionInfo objectForKey:*MEMORY[0x1E69A6F98]];

  if ([v18 length])
  {
    imageView = [(CKStickerTranscriptCell *)self imageView];
    [imageView setStickerAccessibilityDescription:v18];
  }

  transfer2 = [mediaObject transfer];
  -[CKStickerTranscriptCell setCommSafetyState:](self, "setCommSafetyState:", [transfer2 commSafetySensitive]);

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isClingEnabled = [mEMORY[0x1E69A8070] isClingEnabled];

  if (!isClingEnabled)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  imageView4 = mediaObject;
  stickerEffectType = [imageView4 stickerEffectType];
  sticker = [(CKAssociatedStickerTranscriptCell *)self sticker];
  [sticker setStickerEffectType:stickerEffectType];

  if ([imageView4 needsAnimation] & 1) != 0 || (IMStickerEffectTypeShouldAvoidEffectView())
  {

LABEL_12:
    imageView2 = [(CKStickerTranscriptCell *)self imageView];
    layer = [imageView2 layer];
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
    [layer setTransform:&v48];

    imageView3 = [(CKStickerTranscriptCell *)self imageView];
    layer2 = [imageView3 layer];
    [layer2 removeAllAnimations];

    imageView4 = [(CKStickerTranscriptCell *)self imageView];
    [(CKAssociatedStickerTranscriptCell *)self setAssociatedItemView:imageView4];
    goto LABEL_13;
  }

  associatedItemView = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = MTLCreateSystemDefaultDevice();
    v36 = [objc_alloc(MEMORY[0x1E69DFA08]) initWithDevice:v35];

    [v36 setContentMode:1];
    layer3 = [v36 layer];
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
    [layer3 setTransform:&v48];

    layer4 = [v36 layer];
    [layer4 removeAllAnimations];

    image = [(CKStickerTranscriptCell *)self image];
    [v36 setImage:image];

    v44 = MEMORY[0x1E69DFA00];
    sticker2 = [(CKAssociatedStickerTranscriptCell *)self sticker];
    v46 = [v44 effectWithType:{objc_msgSend(sticker2, "stickerEffectType")}];
    [v36 setEffect:v46];

    [(CKAssociatedStickerTranscriptCell *)self setAssociatedItemView:v36];
    associatedItemView = v36;
  }

  imageView5 = [(CKStickerTranscriptCell *)self imageView];
  [imageView5 frame];
  [associatedItemView setFrame:?];

LABEL_13:
}

- (CKStickerTranscriptCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CKStickerTranscriptCell;
  v3 = [(CKAssociatedStickerTranscriptCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  imageView = [(CKStickerTranscriptCell *)self imageView];
  layer = [imageView layer];
  [layer removeAllAnimations];

  imageView2 = [(CKStickerTranscriptCell *)self imageView];
  [imageView2 setImage:0];

  imageView3 = [(CKStickerTranscriptCell *)self imageView];
  layer2 = [imageView3 layer];
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
  [layer2 setTransform:v12];

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

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_image, image);
    imageView = [(CKStickerTranscriptCell *)self imageView];
    [imageView setImage:v7];

    imageCopy = v7;
  }
}

- (void)setCurrentFrameIndex:(int64_t)index
{
  imageView = [(CKStickerTranscriptCell *)self imageView];
  [imageView setCurrentFrameIndex:index];
}

- (void)setSticker:(id)sticker
{
  stickerCopy = sticker;
  sticker = [(CKAssociatedStickerTranscriptCell *)self sticker];
  v6 = [stickerCopy isEqual:sticker];

  if ((v6 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = CKStickerTranscriptCell;
    [(CKAssociatedStickerTranscriptCell *)&v8 setSticker:stickerCopy];
    sticker2 = [(CKAssociatedStickerTranscriptCell *)self sticker];
    -[CKStickerTranscriptCell setInitialFrameIndex:](self, "setInitialFrameIndex:", [sticker2 initialFrameIndex]);

    [(CKStickerTranscriptCell *)self updateAnimationTimerObserving];
  }
}

- (void)setAnimatedImage:(id)image
{
  imageCopy = image;
  if (self->_animatedImage != imageCopy)
  {
    v9 = imageCopy;
    objc_storeStrong(&self->_animatedImage, image);
    frames = [(CKAnimatedImage *)self->_animatedImage frames];
    [(CKStickerTranscriptCell *)self setFrames:frames];
    [(CKStickerTranscriptCell *)self updateAnimationTimerObserving];
    if (+[CKImageAnimationTimer accessibilityAnimatedImagesDisabled])
    {
      frames2 = [(CKStickerTranscriptCell *)self frames];
      v8 = [frames2 objectAtIndex:0];

      [(CKStickerTranscriptCell *)self setImage:v8];
    }

    imageCopy = v9;
  }
}

- (void)setCommSafetyState:(int64_t)state
{
  if (self->_commSafetyState != state)
  {
    self->_commSafetyState = state;
    v4 = state == 1;
    contentView = [(CKEditableCollectionViewCell *)self contentView];
    [contentView setHidden:v4];
  }
}

- (void)animationTimerFired:(double)fired
{
  if (([(CKTranscriptMessageContentCell *)self animationPauseReasons]& 2) == 0)
  {
    if ([(CKStickerTranscriptCell *)self hasCommittedFirstFrame])
    {
      v5 = [(CKAnimatedImage *)self->_animatedImage frameIndexForAnimationTime:fired];
      frames = [(CKStickerTranscriptCell *)self frames];
      v7 = [frames count];

      if (v7 >= 2)
      {
        v8 = [(CKStickerTranscriptCell *)self initialFrameIndex]+ v5;
        frames2 = [(CKStickerTranscriptCell *)self frames];
        v5 = v8 % [frames2 count];
      }

      frames3 = [(CKStickerTranscriptCell *)self frames];
      v11 = [frames3 objectAtIndex:v5];

      [(CKStickerTranscriptCell *)self setImage:v11];
      [(CKStickerTranscriptCell *)self setCurrentFrameIndex:v5];
    }

    else
    {

      [(CKStickerTranscriptCell *)self _commitFirstFrameWithAnimationTime:fired];
    }
  }
}

- (void)_commitFirstFrameWithAnimationTime:(double)time
{
  sticker = [(CKAssociatedStickerTranscriptCell *)self sticker];
  initialFrameIndex = [sticker initialFrameIndex];

  animatedImage = [(CKStickerTranscriptCell *)self animatedImage];
  frames = [animatedImage frames];
  v8 = [frames count];

  animatedImage2 = [(CKStickerTranscriptCell *)self animatedImage];
  frames2 = [animatedImage2 frames];
  v11 = frames2;
  if (initialFrameIndex >= v8)
  {
    [frames2 firstObject];
  }

  else
  {
    [frames2 objectAtIndex:initialFrameIndex];
  }
  v12 = ;

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  imageView = [(CKStickerTranscriptCell *)self imageView];
  [imageView setImage:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__CKStickerTranscriptCell__commitFirstFrameWithAnimationTime___block_invoke;
  v14[3] = &unk_1E72ED810;
  v14[4] = self;
  v14[5] = initialFrameIndex;
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
  frames = [(CKStickerTranscriptCell *)self frames];
  if ([frames count] <= 1)
  {

    goto LABEL_5;
  }

  window = [(CKStickerTranscriptCell *)self window];
  if (!window)
  {
    associatedItemView = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
    window2 = [associatedItemView window];

    if (window2)
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