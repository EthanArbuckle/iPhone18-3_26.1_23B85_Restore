@interface CKAttachmentCell
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGImage)_cgImageForUIImage:(id)a3;
- (CKAttachmentCell)initWithFrame:(CGRect)a3;
- (CKAttachmentCellDelegate)delegate;
- (void)animationTimerFired:(double)a3;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)layoutSubviews;
- (void)more:(id)a3;
- (void)prepareForReuse;
- (void)saveAttachment:(id)a3;
- (void)setAnimatedImage:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setIconImage:(id)a3;
- (void)setImage:(id)a3;
- (void)setIsIrisAsset:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)tapGestureRecognized:(id)a3;
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

- (CKAttachmentCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CKAttachmentCell;
  v3 = [(CKAttachmentCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKAttachmentCell *)v3 contentView];
    v6 = [v5 layer];

    if (CKMainScreenScale_once_10 != -1)
    {
      [CKAttachmentCell initWithFrame:];
    }

    v7 = *&CKMainScreenScale_sMainScreenScale_10;
    if (*&CKMainScreenScale_sMainScreenScale_10 == 0.0)
    {
      v7 = 1.0;
    }

    [v6 setBorderWidth:ceil(v7 * 0.5) / v7];
    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_tapGestureRecognized_];
    [v8 setDelegate:v4];
    [(CKAttachmentCell *)v4 addGestureRecognizer:v8];
    [(CKAttachmentCell *)v4 setTapRecognizer:v8];
  }

  return v4;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CKAttachmentCell;
  [(CKAttachmentCell *)&v6 setSelected:?];
  v5 = [(CKAttachmentCell *)self checkmarkView];
  [v5 setHighlighted:v3];
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v6 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"BlueCheckUnselected"];
      v7 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"BlueCheckSelected"];
      v8 = [v5 initWithImage:v6 highlightedImage:v7];

      v9 = [(CKAttachmentCell *)self contentView];
      [v9 addSubview:v8];

      [(CKAttachmentCell *)self setCheckmarkView:v8];
    }

    else
    {
      v10 = [(CKAttachmentCell *)self checkmarkView];
      [v10 removeFromSuperview];

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
  v3 = [(CKAttachmentCell *)self contentView];
  v4 = [v3 layer];

  v5 = [MEMORY[0x1E69DC888] _ckSystemBackgroundColor];
  [v4 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];

  v6 = [MEMORY[0x1E69DC888] _ckSecondarySystemBackgroundColor];
  [v4 setBorderColor:{objc_msgSend(v6, "CGColor")}];

  v7 = [(CKAttachmentCell *)self checkmarkView];
  if (v7)
  {
    [v7 setHighlighted:{-[CKAttachmentCell isSelected](self, "isSelected")}];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v12 = [(CKAttachmentCell *)self contentView];
    [v12 bounds];
    v14 = v13;
    [v7 bounds];
    v16 = v14 - v15;
    v17 = [(CKAttachmentCell *)self contentView];
    [v17 bounds];
    v19 = v18;
    [v7 bounds];
    v21 = v19 - v20;

    [v7 setFrame:{v16, v21, v9, v11}];
  }

  v22 = [(CKAttachmentCell *)self irisBadgeView];

  if (v22)
  {
    v23 = +[CKUIBehavior sharedBehaviors];
    [v23 verticalBalloonBadgeInset];
    v25 = v24;

    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 horizontalBalloonBadgeInset];
    v28 = v27;

    v29 = [(CKAttachmentCell *)self irisBadgeView];
    [v29 sizeToFit];

    v30 = [(CKAttachmentCell *)self irisBadgeView];
    [v30 frame];
    v32 = v31;
    v34 = v33;

    v35 = [(CKAttachmentCell *)self irisBadgeView];
    [v35 setFrame:{v28, v25, v32, v34}];
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

- (void)tapGestureRecognized:(id)a3
{
  v4 = [(CKAttachmentCell *)self delegate];
  [v4 attachmentCellTapped:self];
}

- (void)copy:(id)a3
{
  v5 = [(CKAttachmentCell *)self delegate];
  [v5 performAction:a2 forAttachmentCell:self];
}

- (void)delete:(id)a3
{
  v5 = [(CKAttachmentCell *)self delegate];
  [v5 performAction:a2 forAttachmentCell:self];
}

- (void)more:(id)a3
{
  v5 = [(CKAttachmentCell *)self delegate];
  [v5 performAction:a2 forAttachmentCell:self];
}

- (void)saveAttachment:(id)a3
{
  v5 = [(CKAttachmentCell *)self delegate];
  [v5 performAction:a2 forAttachmentCell:self];
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_image, a3);
    v6 = [(CKAttachmentCell *)self contentView];
    v7 = [v6 layer];

    [v7 setContents:{-[CKAttachmentCell _cgImageForUIImage:](self, "_cgImageForUIImage:", self->_image)}];
    [v7 setContentsGravity:*MEMORY[0x1E6979DF0]];
    [v7 setMasksToBounds:1];

    v5 = v8;
  }
}

- (void)setIconImage:(id)a3
{
  [(CKAttachmentCell *)self setImage:a3];
  v4 = [(CKAttachmentCell *)self contentView];
  v5 = [v4 layer];

  [v5 setContentsGravity:*MEMORY[0x1E6979DD0]];
  [v5 setMasksToBounds:0];
}

- (void)setAnimatedImage:(id)a3
{
  v5 = a3;
  if (self->_animatedImage != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_animatedImage, a3);
    v6 = [(CKAnimatedImage *)self->_animatedImage frames];
    [(CKAttachmentCell *)self setFrames:v6];
    if ([v6 count])
    {
      [v6 objectAtIndex:0];
    }

    else
    {
      [(CKAnimatedImage *)v8 image];
    }
    v7 = ;
    [(CKAttachmentCell *)self setImage:v7];

    [(CKAttachmentCell *)self updateAnimationTimerObserving];
    v5 = v8;
  }
}

- (void)setIsIrisAsset:(BOOL)a3
{
  v3 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 showsBalloonBadges];

  if (v6 && self->_isIrisAsset != v3)
  {
    self->_isIrisAsset = v3;
    v7 = [(CKAttachmentCell *)self irisBadgeView];
    v8 = v7;
    if (v3)
    {

      if (!v8)
      {
        v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v10 = +[CKUIBehavior sharedBehaviors];
        v11 = [v10 livePhotoBadgeImage];
        v18 = [v9 initWithImage:v11];

        v12 = [v18 layer];
        LODWORD(v13) = 0.5;
        [v12 setShadowOpacity:v13];

        v14 = [v18 layer];
        [v14 setShadowOffset:{0.0, 0.0}];

        v15 = [v18 layer];
        [v15 setShadowRadius:1.0];

        v16 = [(CKAttachmentCell *)self contentView];
        [v16 addSubview:v18];

        [(CKAttachmentCell *)self setIrisBadgeView:v18];
        [(CKAttachmentCell *)self setNeedsLayout];
        [(CKAttachmentCell *)self layoutIfNeeded];
      }
    }

    else
    {

      if (v8)
      {
        v17 = [(CKAttachmentCell *)self irisBadgeView];
        [v17 removeFromSuperview];

        [(CKAttachmentCell *)self setIrisBadgeView:0];
      }
    }
  }
}

- (CGImage)_cgImageForUIImage:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 image];
    v5 = [v4 CGImage];
  }

  else
  {
    v5 = [v3 CGImage];
  }

  return v5;
}

- (void)updateAnimationTimerObserving
{
  v3 = [(CKAttachmentCell *)self frames];
  v4 = [v3 count];

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

- (void)animationTimerFired:(double)a3
{
  v4 = [(CKAnimatedImage *)self->_animatedImage frameForAnimationTime:a3];
  [(CKAttachmentCell *)self setImage:v4];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a3;
  v6 = [(CKAttachmentCell *)self tapRecognizer];

  if (v6 == v5)
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