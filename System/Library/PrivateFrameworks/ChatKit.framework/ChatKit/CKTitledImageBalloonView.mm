@interface CKTitledImageBalloonView
- (CKTitledImageBalloonView)initWithFrame:(CGRect)frame;
- (NSString)title;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size;
- (void)configureForLocatingChatItem:(id)item;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setOrientation:(char)orientation;
- (void)setTitle:(id)title;
- (void)tapGestureRecognized:(id)recognized;
@end

@implementation CKTitledImageBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  effectCopy = effect;
  orientationCopy = orientation;
  v12.receiver = self;
  v12.super_class = CKTitledImageBalloonView;
  objectCopy = object;
  [(CKImageBalloonView *)&v12 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:effectCopy hasInvisibleInkEffect:width];
  title = [objectCopy title];

  [(CKTitledImageBalloonView *)self setTitle:title];
}

- (CKTitledImageBalloonView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = CKTitledImageBalloonView;
  v3 = [(CKImageBalloonView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v6 setOpaque:0];
    [v6 setBackgroundColor:0];
    previewTitleFont = [v4 previewTitleFont];
    [v6 setFont:previewTitleFont];

    [(CKTitledImageBalloonView *)v3 addSubview:v6];
    [(CKTitledImageBalloonView *)v3 setTitleLabel:v6];
    if ([v4 showsBalloonChevron])
    {
      v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v9 = [v4 chevronImageForColorType:0xFFFFFFFFLL];
      imageFlippedForRightToLeftLayoutDirection = [v9 imageFlippedForRightToLeftLayoutDirection];
      v11 = [v8 initWithImage:imageFlippedForRightToLeftLayoutDirection];

      [v11 setContentMode:4];
      [(CKTitledImageBalloonView *)v3 addSubview:v11];
      [(CKTitledImageBalloonView *)v3 setChevron:v11];
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  *&rect.size.width = self;
  *&rect.size.height = CKTitledImageBalloonView;
  [(CGSize *)&rect.size layoutSubviews];
  [(CKTitledImageBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  [(CKTitledImageBalloonView *)self alignmentRectForFrame:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 previewTitleBarHeight];
  v18 = v17;

  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  v19 = CGRectGetMaxY(v38) - v18;
  effectView = [(CKTitledImageBalloonView *)self effectView];
  [effectView setFrame:{0.0, v10 - v18, v8, v18}];

  chevron = [(CKTitledImageBalloonView *)self chevron];
  image = [chevron image];
  [image size];
  rect.origin.y = v23;

  titleLabel = [(CKTitledImageBalloonView *)self titleLabel];
  [titleLabel _capOffsetFromBoundsTop];
  v26 = v25;
  [titleLabel _baselineOffsetFromBottom];
  v28 = v18 - (v26 + v27);
  if (CKMainScreenScale_once_34 != -1)
  {
    [CKTitledImageBalloonView layoutSubviews];
  }

  v29 = *&CKMainScreenScale_sMainScreenScale_34;
  if (*&CKMainScreenScale_sMainScreenScale_34 == 0.0)
  {
    v29 = 1.0;
  }

  rect.origin.x = floor((v13 + (v15 - v15) * 0.5) * v29) / v29;
  v30 = v13;
  v31 = floor((v19 + (v18 - v28) * 0.5) * v29) / v29;
  v32 = +[CKUIBehavior sharedBehaviors];
  showsBalloonChevron = [v32 showsBalloonChevron];

  if (showsBalloonChevron)
  {
    v34 = v15 - (rect.origin.y + 10.0);
  }

  else
  {
    v34 = v15;
  }

  if (userInterfaceLayoutDirection)
  {
    v39.origin.x = v30;
    v39.origin.y = v19;
    v39.size.width = v15;
    v39.size.height = v18;
    MaxX = CGRectGetMaxX(v39);
    v40.origin.x = rect.origin.x;
    v40.origin.y = v31;
    v40.size.width = v34;
    v40.size.height = v28;
    [titleLabel setFrame:{MaxX - CGRectGetWidth(v40), v31, v34, v28}];
    v41.origin.x = v30;
    v41.origin.y = v19;
    v41.size.width = v15;
    v41.size.height = v18;
    MinX = CGRectGetMinX(v41);
  }

  else
  {
    [titleLabel setFrame:{rect.origin.x, v31, v34, v28}];
    v42.origin.x = v30;
    v42.origin.y = v19;
    v42.size.width = v15;
    v42.size.height = v18;
    MinX = CGRectGetMaxX(v42) - rect.origin.y;
  }

  [chevron setFrame:{MinX, v19, rect.origin.y, v18}];
}

- (void)prepareForDisplay
{
  v9.receiver = self;
  v9.super_class = CKTitledImageBalloonView;
  [(CKImageBalloonView *)&v9 prepareForDisplay];
  effectView = [(CKTitledImageBalloonView *)self effectView];

  if (!effectView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v6 = [v4 initWithEffect:v5];
    [(CKTitledImageBalloonView *)self setEffectView:v6];

    effectView2 = [(CKTitledImageBalloonView *)self effectView];
    [(CKTitledImageBalloonView *)self addSubview:effectView2];
  }

  effectView3 = [(CKTitledImageBalloonView *)self effectView];
  [(CKTitledImageBalloonView *)self sendSubviewToBack:effectView3];
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size
{
  v4 = [(CKBalloonView *)self orientation:size.width];
  v5 = +[CKUIBehavior sharedBehaviors];
  [(CKBalloonView *)self balloonDescriptor];
  [v5 balloonMaskAlignmentRectInsetsWithTailShape:v18];
  v9 = v8;
  v11 = v10;
  if (v4)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (v4)
  {
    v13 = v7;
  }

  else
  {
    v13 = v6;
  }

  v14 = v9;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKTitledImageBalloonView;
  [(CKImageBalloonView *)&v4 prepareForReuse];
  chevron = [(CKTitledImageBalloonView *)self chevron];
  [chevron setHidden:0];
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 locationShareBalloonButtonHeight];
  v7 = v6;

  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  [(CKTitledImageBalloonView *)self bounds];
  CGRectDivide(v15, &slice, &remainder, v7, CGRectMaxYEdge);
  [recognizedCopy locationInView:self];
  v14.x = v8;
  v14.y = v9;
  if (CGRectContainsPoint(slice, v14))
  {
    delegate = [(CKBalloonView *)self delegate];
    [delegate balloonViewTitleTapped:self];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CKTitledImageBalloonView;
    [(CKImageBalloonView *)&v11 tapGestureRecognized:recognizedCopy];
  }
}

- (void)setOrientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKBalloonView *)self orientation]!= orientation)
  {
    v5.receiver = self;
    v5.super_class = CKTitledImageBalloonView;
    [(CKBalloonView *)&v5 setOrientation:orientationCopy];
    [(CKTitledImageBalloonView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(CKTitledImageBalloonView *)self title];
  v5 = [title isEqualToString:titleCopy];

  if ((v5 & 1) == 0)
  {
    titleLabel = [(CKTitledImageBalloonView *)self titleLabel];
    [titleLabel setText:titleCopy];

    [(CKTitledImageBalloonView *)self setNeedsLayout];
  }
}

- (NSString)title
{
  titleLabel = [(CKTitledImageBalloonView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)configureForLocatingChatItem:(id)item
{
  itemCopy = item;
  -[CKTitledImageBalloonView setOrientation:](self, "setOrientation:", [itemCopy balloonOrientation]);
  -[CKImageBalloonView setHasTail:](self, "setHasTail:", [itemCopy hasTail]);
  -[CKBalloonView setBalloonCorners:](self, "setBalloonCorners:", [itemCopy balloonCorners]);
  [itemCopy textAlignmentInsets];
  [(CKBalloonView *)self setTextAlignmentInsets:?];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 mapPreviewMaxWidth];
  v8 = +[CKLocationMediaObject placeholderPreviewForWidth:orientation:](CKLocationMediaObject, "placeholderPreviewForWidth:orientation:", [itemCopy balloonOrientation], v6);

  [(CKImageBalloonView *)self setImage:v8];
  locationText = [itemCopy locationText];

  [(CKTitledImageBalloonView *)self setTitle:locationText];
}

@end