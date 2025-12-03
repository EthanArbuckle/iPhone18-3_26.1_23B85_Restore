@interface CKAttachmentCell
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGImage)_cgImageForUIImage:(id)image;
- (CKAttachmentCell)initWithFrame:(CGRect)frame;
- (CKAttachmentCellDelegate)delegate;
- (void)animationTimerFired:(double)fired;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)layoutSubviews;
- (void)more:(id)more;
- (void)prepareForReuse;
- (void)saveAttachment:(id)attachment;
- (void)setAnimatedImage:(id)image;
- (void)setEditing:(BOOL)editing;
- (void)setIconImage:(id)image;
- (void)setImage:(id)image;
- (void)setIsIrisAsset:(BOOL)asset;
- (void)setSelected:(BOOL)selected;
- (void)tapGestureRecognized:(id)recognized;
- (void)updateAnimationTimerObserving;
@end

@implementation CKAttachmentCell

- (void)dealloc
{
  [(CKAttachmentCell *)self setDelegate:0];
  v3 = +[CKImageAnimationTimer sharedTimer];
  [v3 removeAnimationTimerObserver:self];

  v4.receiver = self;
  v4.super_class = CKAttachmentCell;
  [(CKAttachmentCell *)&v4 dealloc];
}

- (CKAttachmentCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CKAttachmentCell;
  v3 = [(CKAttachmentCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(CKAttachmentCell *)v3 contentView];
    layer = [contentView layer];

    if (CKMainScreenScale_once_10 != -1)
    {
      [CKAttachmentCell initWithFrame:];
    }

    v7 = *&CKMainScreenScale_sMainScreenScale_10;
    if (*&CKMainScreenScale_sMainScreenScale_10 == 0.0)
    {
      v7 = 1.0;
    }

    [layer setBorderWidth:ceil(v7 * 0.5) / v7];
    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_tapGestureRecognized_];
    [v8 setDelegate:v4];
    [(CKAttachmentCell *)v4 addGestureRecognizer:v8];
    [(CKAttachmentCell *)v4 setTapRecognizer:v8];
  }

  return v4;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = CKAttachmentCell;
  [(CKAttachmentCell *)&v6 setSelected:?];
  checkmarkView = [(CKAttachmentCell *)self checkmarkView];
  [checkmarkView setHighlighted:selectedCopy];
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    if (editing)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"BlueCheckUnselected"];
      v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"BlueCheckSelected"];
      v8 = [v5 initWithImage:v6 highlightedImage:v7];

      contentView = [(CKAttachmentCell *)self contentView];
      [contentView addSubview:v8];

      [(CKAttachmentCell *)self setCheckmarkView:v8];
    }

    else
    {
      checkmarkView = [(CKAttachmentCell *)self checkmarkView];
      [checkmarkView removeFromSuperview];

      [(CKAttachmentCell *)self setCheckmarkView:0];
    }

    [(CKAttachmentCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = CKAttachmentCell;
  [(CKAttachmentCell *)&v36 layoutSubviews];
  contentView = [(CKAttachmentCell *)self contentView];
  layer = [contentView layer];

  _ckSystemBackgroundColor = [MEMORY[0x1E69DC888] _ckSystemBackgroundColor];
  [layer setBackgroundColor:{objc_msgSend(_ckSystemBackgroundColor, "CGColor")}];

  _ckSecondarySystemBackgroundColor = [MEMORY[0x1E69DC888] _ckSecondarySystemBackgroundColor];
  [layer setBorderColor:{objc_msgSend(_ckSecondarySystemBackgroundColor, "CGColor")}];

  checkmarkView = [(CKAttachmentCell *)self checkmarkView];
  if (checkmarkView)
  {
    [checkmarkView setHighlighted:{-[CKAttachmentCell isSelected](self, "isSelected")}];
    [checkmarkView frame];
    v9 = v8;
    v11 = v10;
    contentView2 = [(CKAttachmentCell *)self contentView];
    [contentView2 bounds];
    v14 = v13;
    [checkmarkView bounds];
    v16 = v14 - v15;
    contentView3 = [(CKAttachmentCell *)self contentView];
    [contentView3 bounds];
    v19 = v18;
    [checkmarkView bounds];
    v21 = v19 - v20;

    [checkmarkView setFrame:{v16, v21, v9, v11}];
  }

  irisBadgeView = [(CKAttachmentCell *)self irisBadgeView];

  if (irisBadgeView)
  {
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 verticalBalloonBadgeInset];
    v25 = v24;

    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 horizontalBalloonBadgeInset];
    v28 = v27;

    irisBadgeView2 = [(CKAttachmentCell *)self irisBadgeView];
    [irisBadgeView2 sizeToFit];

    irisBadgeView3 = [(CKAttachmentCell *)self irisBadgeView];
    [irisBadgeView3 frame];
    v32 = v31;
    v34 = v33;

    irisBadgeView4 = [(CKAttachmentCell *)self irisBadgeView];
    [irisBadgeView4 setFrame:{v28, v25, v32, v34}];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKAttachmentCell;
  [(CKAttachmentCell *)&v4 prepareForReuse];
  v3 = +[CKImageAnimationTimer sharedTimer];
  [v3 removeAnimationTimerObserver:self];

  [(CKAttachmentCell *)self setImage:0];
  [(CKAttachmentCell *)self setFrames:0];
  [(CKAttachmentCell *)self setAnimatedImage:0];
  [(CKAttachmentCell *)self setAlpha:1.0];
}

- (void)tapGestureRecognized:(id)recognized
{
  delegate = [(CKAttachmentCell *)self delegate];
  [delegate attachmentCellTapped:self];
}

- (void)copy:(id)copy
{
  delegate = [(CKAttachmentCell *)self delegate];
  [delegate performAction:a2 forAttachmentCell:self];
}

- (void)delete:(id)delete
{
  delegate = [(CKAttachmentCell *)self delegate];
  [delegate performAction:a2 forAttachmentCell:self];
}

- (void)more:(id)more
{
  delegate = [(CKAttachmentCell *)self delegate];
  [delegate performAction:a2 forAttachmentCell:self];
}

- (void)saveAttachment:(id)attachment
{
  delegate = [(CKAttachmentCell *)self delegate];
  [delegate performAction:a2 forAttachmentCell:self];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_image, image);
    contentView = [(CKAttachmentCell *)self contentView];
    layer = [contentView layer];

    [layer setContents:{-[CKAttachmentCell _cgImageForUIImage:](self, "_cgImageForUIImage:", self->_image)}];
    [layer setContentsGravity:*MEMORY[0x1E6979DF0]];
    [layer setMasksToBounds:1];

    imageCopy = v8;
  }
}

- (void)setIconImage:(id)image
{
  [(CKAttachmentCell *)self setImage:image];
  contentView = [(CKAttachmentCell *)self contentView];
  layer = [contentView layer];

  [layer setContentsGravity:*MEMORY[0x1E6979DD0]];
  [layer setMasksToBounds:0];
}

- (void)setAnimatedImage:(id)image
{
  imageCopy = image;
  if (self->_animatedImage != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_animatedImage, image);
    frames = [(CKAnimatedImage *)self->_animatedImage frames];
    [(CKAttachmentCell *)self setFrames:frames];
    if ([frames count])
    {
      [frames objectAtIndex:0];
    }

    else
    {
      [(CKAnimatedImage *)v8 image];
    }
    v7 = ;
    [(CKAttachmentCell *)self setImage:v7];

    [(CKAttachmentCell *)self updateAnimationTimerObserving];
    imageCopy = v8;
  }
}

- (void)setIsIrisAsset:(BOOL)asset
{
  assetCopy = asset;
  v5 = +[CKUIBehavior sharedBehaviors];
  showsBalloonBadges = [v5 showsBalloonBadges];

  if (showsBalloonBadges && self->_isIrisAsset != assetCopy)
  {
    self->_isIrisAsset = assetCopy;
    irisBadgeView = [(CKAttachmentCell *)self irisBadgeView];
    v8 = irisBadgeView;
    if (assetCopy)
    {

      if (!v8)
      {
        v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v10 = +[CKUIBehavior sharedBehaviors];
        livePhotoBadgeImage = [v10 livePhotoBadgeImage];
        v18 = [v9 initWithImage:livePhotoBadgeImage];

        layer = [v18 layer];
        LODWORD(v13) = 0.5;
        [layer setShadowOpacity:v13];

        layer2 = [v18 layer];
        [layer2 setShadowOffset:{0.0, 0.0}];

        layer3 = [v18 layer];
        [layer3 setShadowRadius:1.0];

        contentView = [(CKAttachmentCell *)self contentView];
        [contentView addSubview:v18];

        [(CKAttachmentCell *)self setIrisBadgeView:v18];
        [(CKAttachmentCell *)self setNeedsLayout];
        [(CKAttachmentCell *)self layoutIfNeeded];
      }
    }

    else
    {

      if (v8)
      {
        irisBadgeView2 = [(CKAttachmentCell *)self irisBadgeView];
        [irisBadgeView2 removeFromSuperview];

        [(CKAttachmentCell *)self setIrisBadgeView:0];
      }
    }
  }
}

- (CGImage)_cgImageForUIImage:(id)image
{
  imageCopy = image;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = [imageCopy image];
    cGImage = [image CGImage];
  }

  else
  {
    cGImage = [imageCopy CGImage];
  }

  return cGImage;
}

- (void)updateAnimationTimerObserving
{
  frames = [(CKAttachmentCell *)self frames];
  v4 = [frames count];

  v5 = +[CKImageAnimationTimer sharedTimer];
  v6 = v5;
  if (v4 < 2)
  {
    [v5 removeAnimationTimerObserver:self];
  }

  else
  {
    [v5 addAnimationTimerObserver:self];
  }
}

- (void)animationTimerFired:(double)fired
{
  v4 = [(CKAnimatedImage *)self->_animatedImage frameForAnimationTime:fired];
  [(CKAttachmentCell *)self setImage:v4];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  tapRecognizer = [(CKAttachmentCell *)self tapRecognizer];

  if (tapRecognizer == recognizerCopy)
  {
    return ![(CKAttachmentCell *)self isEditing];
  }

  else
  {
    return 1;
  }
}

- (CKAttachmentCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end