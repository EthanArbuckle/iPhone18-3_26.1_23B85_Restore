@interface CKSimpleAcknowledgementGlyphView
- (CGPoint)glyphOffset;
- (CKSimpleAcknowledgementGlyphView)initWithFrame:(CGRect)a3 color:(char)a4;
- (id)glyphImageForType:(int64_t)a3 color:(char)a4;
- (void)layoutSubviews;
- (void)setGlyphColor:(id)a3;
@end

@implementation CKSimpleAcknowledgementGlyphView

- (CKSimpleAcknowledgementGlyphView)initWithFrame:(CGRect)a3 color:(char)a4
{
  v4 = a4;
  v10.receiver = self;
  v10.super_class = CKSimpleAcknowledgementGlyphView;
  v5 = [(CKSimpleAcknowledgementGlyphView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKSimpleAcknowledgementGlyphView *)v5 setBackgroundColor:0];
    v7 = [(CKSimpleAcknowledgementGlyphView *)v6 glyphImageForType:[(CKAcknowledgmentGlyphView *)v6 acknowledgmentType] color:v4];
    v8 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:v7];
    [(CKAcknowledgmentGlyphImageView *)v8 setAutoresizingMask:18];
    [(CKSimpleAcknowledgementGlyphView *)v6 setGlyph:v8];
    [(CKSimpleAcknowledgementGlyphView *)v6 addSubview:v8];
  }

  return v6;
}

- (id)glyphImageForType:(int64_t)a3 color:(char)a4
{
  v4 = 0;
  if (a3 > 2001)
  {
    if (a3 != 2002)
    {
      if (a3 != 2003)
      {
        goto LABEL_28;
      }

      if (a4 == 4)
      {
        v5 = +[CKUIBehavior sharedBehaviors];
        v6 = [v5 whiteHaAckImage];
        goto LABEL_27;
      }

      if (a4 == -1)
      {
        v5 = +[CKUIBehavior sharedBehaviors];
        v6 = [v5 grayHaAckImage];
        goto LABEL_27;
      }

LABEL_21:
      v4 = 0;
      goto LABEL_28;
    }

    if (a4 == 4)
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      v6 = [v5 whiteThumbsDownAckImage];
      goto LABEL_27;
    }

    if (a4 != 3)
    {
      if (a4 == -1)
      {
        v5 = +[CKUIBehavior sharedBehaviors];
        v6 = [v5 grayThumbsDownAckImage];
        goto LABEL_27;
      }

      goto LABEL_21;
    }

LABEL_22:
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 redHeartAckImage];
    goto LABEL_27;
  }

  if (a3 == 2000)
  {
    if (a4 == 4)
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      v6 = [v5 whiteHeartAckImage];
      goto LABEL_27;
    }

    if (a4 != 3)
    {
      if (a4 == -1)
      {
        v5 = +[CKUIBehavior sharedBehaviors];
        v6 = [v5 grayHeartAckImage];
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (a3 != 2001)
  {
    goto LABEL_28;
  }

  if (a4 == 4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 whiteThumbsUpAckImage];
    goto LABEL_27;
  }

  if (a4 == 3)
  {
    goto LABEL_22;
  }

  if (a4 != -1)
  {
    goto LABEL_21;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 grayThumbsUpAckImage];
LABEL_27:
  v4 = v6;

LABEL_28:

  return v4;
}

- (CGPoint)glyphOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKSimpleAcknowledgementGlyphView;
  [(CKSimpleAcknowledgementGlyphView *)&v4 layoutSubviews];
  v3 = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  [(CKSimpleAcknowledgementGlyphView *)self bounds];
  [v3 setFrame:?];
}

- (void)setGlyphColor:(id)a3
{
  v11.receiver = self;
  v11.super_class = CKSimpleAcknowledgementGlyphView;
  v4 = a3;
  [(CKAcknowledgmentGlyphView *)&v11 setGlyphColor:v4];
  v5 = [(CKSimpleAcknowledgementGlyphView *)self glyph:v11.receiver];
  v6 = [(CKAcknowledgmentGlyphView *)self acknowledgmentType];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 theme];
  v9 = [v8 ckAcknowledgementColorTypeForColor:v4];

  v10 = [(CKSimpleAcknowledgementGlyphView *)self glyphImageForType:v6 color:v9];
  [v5 setImage:v10];
}

@end