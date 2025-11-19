@interface CKTruncatedTextBalloonView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKTruncatedTextBalloonView)initWithFrame:(CGRect)a3;
- (void)configureForMessagePart:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setWantsChevron:(BOOL)a3;
@end

@implementation CKTruncatedTextBalloonView

- (CKTruncatedTextBalloonView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CKTruncatedTextBalloonView;
  v3 = [(CKHyperlinkBalloonView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKTextBalloonView *)v3 textView];
    v6 = [v5 textContainer];
    [v6 setMaximumNumberOfLines:8];
    [v6 setLineBreakMode:4];
  }

  return v4;
}

- (void)layoutSubviews
{
  v35[1] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = CKTruncatedTextBalloonView;
  [(CKTextBalloonView *)&v34 layoutSubviews];
  v3 = [(CKTextBalloonView *)self textView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CKTruncatedTextBalloonView *)self chevron];
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  MaxY = CGRectGetMaxY(v36);
  [(CKBalloonView *)self textAlignmentInsets];
  v19 = MaxY - v18 - v16;
  v37.origin.x = v5;
  v37.origin.y = v7;
  v37.size.width = v9;
  v37.size.height = v11;
  v20 = CGRectGetMaxX(v37) - v14;
  if (![(CKTruncatedTextBalloonView *)self avoidTextLineBreaks])
  {
    v21 = [v3 textContainer];
    v22 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v20, v19, v14, v16}];
    v35[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [v21 setExclusionPaths:v23];
  }

  [(CKTruncatedTextBalloonView *)self convertRect:v3 fromView:v20, v19, v14, v16];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  if ([(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    [(CKBalloonView *)self suggestedActionsMenuAdditionalHeight];
    v25 = v25 + 0.0;
    v27 = v27 - v32;
  }

  v33 = [(CKTruncatedTextBalloonView *)self chevron];
  [v33 setFrame:{v25, v27, v29, v31}];
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v23 = *MEMORY[0x1E69DDCE0];
  v24 = v8;
  v21 = v23;
  v22 = v8;
  v20.receiver = self;
  v20.super_class = CKTruncatedTextBalloonView;
  [(CKTextBalloonView *)&v20 sizeThatFits:&v23 textAlignmentInsets:&v21 tailInsets:a3.width, a3.height];
  v10 = v9;
  v12 = v11;
  if ([(CKTruncatedTextBalloonView *)self avoidTextLineBreaks])
  {
    v13 = [(CKTruncatedTextBalloonView *)self chevron];
    v14 = [v13 image];
    [v14 size];
    v10 = v10 + v15;
  }

  if (a4)
  {
    v16 = v24;
    *&a4->top = v23;
    *&a4->bottom = v16;
  }

  if (a5)
  {
    v17 = v22;
    *&a5->top = v21;
    *&a5->bottom = v17;
  }

  v18 = v10;
  v19 = v12;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setWantsChevron:(BOOL)a3
{
  self->_wantsChevron = a3;
  chevron = self->_chevron;
  if (a3)
  {
    if (chevron)
    {
      return;
    }

    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 chevronImageForColorType:0xFFFFFFFFLL];
    v8 = [v5 initWithImage:v7];

    [(UIImageView *)v8 setContentMode:4];
    [(CKTruncatedTextBalloonView *)self addSubview:v8];
  }

  else
  {
    if (!chevron)
    {
      return;
    }

    [(UIImageView *)chevron removeFromSuperview];
    v8 = 0;
  }

  v9 = self->_chevron;
  self->_chevron = v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  v5 = objc_opt_class();
  LOBYTE(v5) = v5 != objc_opt_class();

  return v5;
}

- (void)prepareForDisplay
{
  v6.receiver = self;
  v6.super_class = CKTruncatedTextBalloonView;
  [(CKTextBalloonView *)&v6 prepareForDisplay];
  v3 = [(CKTruncatedTextBalloonView *)self chevron];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 chevronImageForColorType:{-[CKBalloonView color](self, "color")}];
  [v3 setImage:v5];
}

- (void)configureForMessagePart:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKTruncatedTextBalloonView;
  v4 = a3;
  [(CKTextBalloonView *)&v6 configureForMessagePart:v4];
  -[CKTruncatedTextBalloonView setWantsChevron:](self, "setWantsChevron:", [v4 isReplyContextPreview] ^ 1);
  v5 = [v4 isCorrupt];

  [(CKTruncatedTextBalloonView *)self setAvoidTextLineBreaks:v5];
}

@end