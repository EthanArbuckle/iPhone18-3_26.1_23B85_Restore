@interface CKSimpleAcknowledgementGlyphView
- (CGPoint)glyphOffset;
- (CKSimpleAcknowledgementGlyphView)initWithFrame:(CGRect)frame color:(char)color;
- (id)glyphImageForType:(int64_t)type color:(char)color;
- (void)layoutSubviews;
- (void)setGlyphColor:(id)color;
@end

@implementation CKSimpleAcknowledgementGlyphView

- (CKSimpleAcknowledgementGlyphView)initWithFrame:(CGRect)frame color:(char)color
{
  colorCopy = color;
  v10.receiver = self;
  v10.super_class = CKSimpleAcknowledgementGlyphView;
  v5 = [(CKSimpleAcknowledgementGlyphView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKSimpleAcknowledgementGlyphView *)v5 setBackgroundColor:0];
    v7 = [(CKSimpleAcknowledgementGlyphView *)v6 glyphImageForType:[(CKAcknowledgmentGlyphView *)v6 acknowledgmentType] color:colorCopy];
    v8 = [[CKAcknowledgmentGlyphImageView alloc] initWithImage:v7];
    [(CKAcknowledgmentGlyphImageView *)v8 setAutoresizingMask:18];
    [(CKSimpleAcknowledgementGlyphView *)v6 setGlyph:v8];
    [(CKSimpleAcknowledgementGlyphView *)v6 addSubview:v8];
  }

  return v6;
}

- (id)glyphImageForType:(int64_t)type color:(char)color
{
  v4 = 0;
  if (type > 2001)
  {
    if (type != 2002)
    {
      if (type != 2003)
      {
        goto LABEL_28;
      }

      if (color == 4)
      {
        v5 = +[CKUIBehavior sharedBehaviors];
        whiteHaAckImage = [v5 whiteHaAckImage];
        goto LABEL_27;
      }

      if (color == -1)
      {
        v5 = +[CKUIBehavior sharedBehaviors];
        whiteHaAckImage = [v5 grayHaAckImage];
        goto LABEL_27;
      }

LABEL_21:
      v4 = 0;
      goto LABEL_28;
    }

    if (color == 4)
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      whiteHaAckImage = [v5 whiteThumbsDownAckImage];
      goto LABEL_27;
    }

    if (color != 3)
    {
      if (color == -1)
      {
        v5 = +[CKUIBehavior sharedBehaviors];
        whiteHaAckImage = [v5 grayThumbsDownAckImage];
        goto LABEL_27;
      }

      goto LABEL_21;
    }

LABEL_22:
    v5 = +[CKUIBehavior sharedBehaviors];
    whiteHaAckImage = [v5 redHeartAckImage];
    goto LABEL_27;
  }

  if (type == 2000)
  {
    if (color == 4)
    {
      v5 = +[CKUIBehavior sharedBehaviors];
      whiteHaAckImage = [v5 whiteHeartAckImage];
      goto LABEL_27;
    }

    if (color != 3)
    {
      if (color == -1)
      {
        v5 = +[CKUIBehavior sharedBehaviors];
        whiteHaAckImage = [v5 grayHeartAckImage];
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (type != 2001)
  {
    goto LABEL_28;
  }

  if (color == 4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    whiteHaAckImage = [v5 whiteThumbsUpAckImage];
    goto LABEL_27;
  }

  if (color == 3)
  {
    goto LABEL_22;
  }

  if (color != -1)
  {
    goto LABEL_21;
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  whiteHaAckImage = [v5 grayThumbsUpAckImage];
LABEL_27:
  v4 = whiteHaAckImage;

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
  glyph = [(CKSimpleAcknowledgementGlyphView *)self glyph];
  [(CKSimpleAcknowledgementGlyphView *)self bounds];
  [glyph setFrame:?];
}

- (void)setGlyphColor:(id)color
{
  v11.receiver = self;
  v11.super_class = CKSimpleAcknowledgementGlyphView;
  colorCopy = color;
  [(CKAcknowledgmentGlyphView *)&v11 setGlyphColor:colorCopy];
  v5 = [(CKSimpleAcknowledgementGlyphView *)self glyph:v11.receiver];
  acknowledgmentType = [(CKAcknowledgmentGlyphView *)self acknowledgmentType];
  v7 = +[CKUIBehavior sharedBehaviors];
  theme = [v7 theme];
  v9 = [theme ckAcknowledgementColorTypeForColor:colorCopy];

  v10 = [(CKSimpleAcknowledgementGlyphView *)self glyphImageForType:acknowledgmentType color:v9];
  [v5 setImage:v10];
}

@end