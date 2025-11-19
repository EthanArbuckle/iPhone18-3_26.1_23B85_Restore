@interface CKMessagePartHighlightBalloonView
- (CKMessagePartHighlightBalloonView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setGlyphImageColor:(id)a3;
@end

@implementation CKMessagePartHighlightBalloonView

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = CKMessagePartHighlightBalloonView;
  [(CKBalloonView *)&v2 prepareForReuse];
}

- (CKMessagePartHighlightBalloonView)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = CKMessagePartHighlightBalloonView;
  v3 = [(CKBalloonView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v6 = [v5 transcriptBackgroundColor];
    [(CKMessagePartHighlightBalloonView *)v3 setBackgroundColor:v6];

    v7 = objc_alloc(MEMORY[0x1E69DD250]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    colorView = v3->_colorView;
    v3->_colorView = v12;

    [(CKMessagePartHighlightBalloonView *)v3 addSubview:v3->_colorView];
    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v8, v9, v10, v11}];
    imageView = v3->_imageView;
    v3->_imageView = v14;

    v16 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v3->_imageView setBackgroundColor:v16];

    [(CKMessagePartHighlightBalloonView *)v3 addSubview:v3->_imageView];
    v17 = +[CKUIBehavior sharedBehaviors];
    v18 = [v17 messageHighlightGoldColor];
    [(CKMessagePartHighlightBalloonView *)v3 setBalloonColor:v18];

    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = [v19 messageHighlightImage];
    [(CKMessagePartHighlightBalloonView *)v3 setGlyphImage:v20];
  }

  return v3;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = CKMessagePartHighlightBalloonView;
  [(CKBalloonView *)&v31 layoutSubviews];
  [(CKMessagePartHighlightBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v9 * 0.5;
  v12 = [(CKMessagePartHighlightBalloonView *)self layer];
  [v12 setCornerRadius:v11];

  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 messageHighlightTranscriptBalloonBorderWidth];
  v15 = v14;

  v32.origin.x = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  v33 = CGRectInset(v32, v15, v15);
  [(UIView *)self->_colorView setFrame:v33.origin.x, v33.origin.y, v33.size.width, v33.size.height];
  [(UIView *)self->_colorView frame];
  v17 = v16 * 0.5;
  v18 = [(UIView *)self->_colorView layer];
  [v18 setCornerRadius:v17];

  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 messageHighlightGlyphSymbolPointSize];
  v21 = v20;

  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  MidX = CGRectGetMidX(v34);
  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  MidY = CGRectGetMidY(v35);
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v21;
  v36.size.height = v21;
  v24 = MidX - CGRectGetWidth(v36) * 0.5;
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = v21;
  v37.size.height = v21;
  v25 = MidY - CGRectGetHeight(v37) * 0.5;
  v26 = [(CKMessagePartHighlightBalloonView *)self traitCollection];
  [v26 displayScale];
  v28 = round(v24 * v27) / v27;
  v29 = round(v25 * v27) / v27;
  v30 = round(v21 * v27) / v27;

  [(UIImageView *)self->_imageView setFrame:v28, v29, v30, v30];
}

- (void)setGlyphImageColor:(id)a3
{
  v4 = a3;
  v6 = [(CKMessagePartHighlightBalloonView *)self glyphImage];
  v5 = [v6 ckImageWithTintColor:v4];

  [(CKMessagePartHighlightBalloonView *)self setGlyphImage:v5];
}

@end