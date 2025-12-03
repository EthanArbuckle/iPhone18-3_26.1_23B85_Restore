@interface CKTruncatedTextBalloonView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKTruncatedTextBalloonView)initWithFrame:(CGRect)frame;
- (void)configureForMessagePart:(id)part;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setWantsChevron:(BOOL)chevron;
@end

@implementation CKTruncatedTextBalloonView

- (CKTruncatedTextBalloonView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CKTruncatedTextBalloonView;
  v3 = [(CKHyperlinkBalloonView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    textView = [(CKTextBalloonView *)v3 textView];
    textContainer = [textView textContainer];
    [textContainer setMaximumNumberOfLines:8];
    [textContainer setLineBreakMode:4];
  }

  return v4;
}

- (void)layoutSubviews
{
  v35[1] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = CKTruncatedTextBalloonView;
  [(CKTextBalloonView *)&v34 layoutSubviews];
  textView = [(CKTextBalloonView *)self textView];
  [textView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  chevron = [(CKTruncatedTextBalloonView *)self chevron];
  [chevron bounds];
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
    textContainer = [textView textContainer];
    v22 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v20, v19, v14, v16}];
    v35[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [textContainer setExclusionPaths:v23];
  }

  [(CKTruncatedTextBalloonView *)self convertRect:textView fromView:v20, v19, v14, v16];
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

  chevron2 = [(CKTruncatedTextBalloonView *)self chevron];
  [chevron2 setFrame:{v25, v27, v29, v31}];
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v23 = *MEMORY[0x1E69DDCE0];
  v24 = v8;
  v21 = v23;
  v22 = v8;
  v20.receiver = self;
  v20.super_class = CKTruncatedTextBalloonView;
  [(CKTextBalloonView *)&v20 sizeThatFits:&v23 textAlignmentInsets:&v21 tailInsets:fits.width, fits.height];
  v10 = v9;
  v12 = v11;
  if ([(CKTruncatedTextBalloonView *)self avoidTextLineBreaks])
  {
    chevron = [(CKTruncatedTextBalloonView *)self chevron];
    image = [chevron image];
    [image size];
    v10 = v10 + v15;
  }

  if (insets)
  {
    v16 = v24;
    *&insets->top = v23;
    *&insets->bottom = v16;
  }

  if (tailInsets)
  {
    v17 = v22;
    *&tailInsets->top = v21;
    *&tailInsets->bottom = v17;
  }

  v18 = v10;
  v19 = v12;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setWantsChevron:(BOOL)chevron
{
  self->_wantsChevron = chevron;
  chevron = self->_chevron;
  if (chevron)
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  v5 = objc_opt_class();
  LOBYTE(v5) = v5 != objc_opt_class();

  return v5;
}

- (void)prepareForDisplay
{
  v6.receiver = self;
  v6.super_class = CKTruncatedTextBalloonView;
  [(CKTextBalloonView *)&v6 prepareForDisplay];
  chevron = [(CKTruncatedTextBalloonView *)self chevron];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 chevronImageForColorType:{-[CKBalloonView color](self, "color")}];
  [chevron setImage:v5];
}

- (void)configureForMessagePart:(id)part
{
  v6.receiver = self;
  v6.super_class = CKTruncatedTextBalloonView;
  partCopy = part;
  [(CKTextBalloonView *)&v6 configureForMessagePart:partCopy];
  -[CKTruncatedTextBalloonView setWantsChevron:](self, "setWantsChevron:", [partCopy isReplyContextPreview] ^ 1);
  isCorrupt = [partCopy isCorrupt];

  [(CKTruncatedTextBalloonView *)self setAvoidTextLineBreaks:isCorrupt];
}

@end