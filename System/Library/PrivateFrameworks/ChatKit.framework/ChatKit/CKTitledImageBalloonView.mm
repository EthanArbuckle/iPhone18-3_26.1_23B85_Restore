@interface CKTitledImageBalloonView
- (CKTitledImageBalloonView)initWithFrame:(CGRect)a3;
- (NSString)title;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3;
- (void)configureForLocatingChatItem:(id)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setOrientation:(char)a3;
- (void)setTitle:(id)a3;
- (void)tapGestureRecognized:(id)a3;
@end

@implementation CKTitledImageBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v12.receiver = self;
  v12.super_class = CKTitledImageBalloonView;
  v10 = a3;
  [(CKImageBalloonView *)&v12 configureForMediaObject:v10 previewWidth:v7 orientation:v6 hasInvisibleInkEffect:a4];
  v11 = [v10 title];

  [(CKTitledImageBalloonView *)self setTitle:v11];
}

- (CKTitledImageBalloonView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = CKTitledImageBalloonView;
  v3 = [(CKImageBalloonView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v6 setOpaque:0];
    [v6 setBackgroundColor:0];
    v7 = [v4 previewTitleFont];
    [v6 setFont:v7];

    [(CKTitledImageBalloonView *)v3 addSubview:v6];
    [(CKTitledImageBalloonView *)v3 setTitleLabel:v6];
    if ([v4 showsBalloonChevron])
    {
      v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v9 = [v4 chevronImageForColorType:0xFFFFFFFFLL];
      v10 = [v9 imageFlippedForRightToLeftLayoutDirection];
      v11 = [v8 initWithImage:v10];

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
  v11 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
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
  v20 = [(CKTitledImageBalloonView *)self effectView];
  [v20 setFrame:{0.0, v10 - v18, v8, v18}];

  v21 = [(CKTitledImageBalloonView *)self chevron];
  v22 = [v21 image];
  [v22 size];
  rect.origin.y = v23;

  v24 = [(CKTitledImageBalloonView *)self titleLabel];
  [v24 _capOffsetFromBoundsTop];
  v26 = v25;
  [v24 _baselineOffsetFromBottom];
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
  v33 = [v32 showsBalloonChevron];

  if (v33)
  {
    v34 = v15 - (rect.origin.y + 10.0);
  }

  else
  {
    v34 = v15;
  }

  if (v11)
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
    [v24 setFrame:{MaxX - CGRectGetWidth(v40), v31, v34, v28}];
    v41.origin.x = v30;
    v41.origin.y = v19;
    v41.size.width = v15;
    v41.size.height = v18;
    MinX = CGRectGetMinX(v41);
  }

  else
  {
    [v24 setFrame:{rect.origin.x, v31, v34, v28}];
    v42.origin.x = v30;
    v42.origin.y = v19;
    v42.size.width = v15;
    v42.size.height = v18;
    MinX = CGRectGetMaxX(v42) - rect.origin.y;
  }

  [v21 setFrame:{MinX, v19, rect.origin.y, v18}];
}

- (void)prepareForDisplay
{
  v9.receiver = self;
  v9.super_class = CKTitledImageBalloonView;
  [(CKImageBalloonView *)&v9 prepareForDisplay];
  v3 = [(CKTitledImageBalloonView *)self effectView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v6 = [v4 initWithEffect:v5];
    [(CKTitledImageBalloonView *)self setEffectView:v6];

    v7 = [(CKTitledImageBalloonView *)self effectView];
    [(CKTitledImageBalloonView *)self addSubview:v7];
  }

  v8 = [(CKTitledImageBalloonView *)self effectView];
  [(CKTitledImageBalloonView *)self sendSubviewToBack:v8];
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3
{
  v4 = [(CKBalloonView *)self orientation:a3.width];
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
  v3 = [(CKTitledImageBalloonView *)self chevron];
  [v3 setHidden:0];
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 locationShareBalloonButtonHeight];
  v7 = v6;

  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  [(CKTitledImageBalloonView *)self bounds];
  CGRectDivide(v15, &slice, &remainder, v7, CGRectMaxYEdge);
  [v4 locationInView:self];
  v14.x = v8;
  v14.y = v9;
  if (CGRectContainsPoint(slice, v14))
  {
    v10 = [(CKBalloonView *)self delegate];
    [v10 balloonViewTitleTapped:self];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CKTitledImageBalloonView;
    [(CKImageBalloonView *)&v11 tapGestureRecognized:v4];
  }
}

- (void)setOrientation:(char)a3
{
  v3 = a3;
  if ([(CKBalloonView *)self orientation]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CKTitledImageBalloonView;
    [(CKBalloonView *)&v5 setOrientation:v3];
    [(CKTitledImageBalloonView *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  v4 = [(CKTitledImageBalloonView *)self title];
  v5 = [v4 isEqualToString:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(CKTitledImageBalloonView *)self titleLabel];
    [v6 setText:v7];

    [(CKTitledImageBalloonView *)self setNeedsLayout];
  }
}

- (NSString)title
{
  v2 = [(CKTitledImageBalloonView *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)configureForLocatingChatItem:(id)a3
{
  v4 = a3;
  -[CKTitledImageBalloonView setOrientation:](self, "setOrientation:", [v4 balloonOrientation]);
  -[CKImageBalloonView setHasTail:](self, "setHasTail:", [v4 hasTail]);
  -[CKBalloonView setBalloonCorners:](self, "setBalloonCorners:", [v4 balloonCorners]);
  [v4 textAlignmentInsets];
  [(CKBalloonView *)self setTextAlignmentInsets:?];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 mapPreviewMaxWidth];
  v8 = +[CKLocationMediaObject placeholderPreviewForWidth:orientation:](CKLocationMediaObject, "placeholderPreviewForWidth:orientation:", [v4 balloonOrientation], v6);

  [(CKImageBalloonView *)self setImage:v8];
  v7 = [v4 locationText];

  [(CKTitledImageBalloonView *)self setTitle:v7];
}

@end