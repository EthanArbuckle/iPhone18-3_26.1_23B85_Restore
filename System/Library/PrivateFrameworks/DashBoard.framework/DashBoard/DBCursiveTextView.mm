@interface DBCursiveTextView
- (DBCursiveTextView)initWithTextURL:(id)l pointSize:(double)size;
- (double)duration;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setAccessibilityLanguage:(id)language;
- (void)setFillColor:(id)color;
- (void)setTime:(float)time;
@end

@implementation DBCursiveTextView

- (DBCursiveTextView)initWithTextURL:(id)l pointSize:(double)size
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = DBCursiveTextView;
  v7 = [(DBCursiveTextView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v7)
  {
    v8 = [[DBCursiveTextPath alloc] initWithURL:lCopy];
    textPath = v7->_textPath;
    v7->_textPath = v8;

    v7->_pointSize = size;
    v10 = objc_alloc_init(MEMORY[0x277CD9F90]);
    textLayer = v7->_textLayer;
    v7->_textLayer = v10;

    [(CAShapeLayer *)v7->_textLayer setShadowRadius:1.0];
    LODWORD(v12) = 1036831949;
    [(CAShapeLayer *)v7->_textLayer setShadowOpacity:v12];
    [(CAShapeLayer *)v7->_textLayer setShadowOffset:0.0, 1.0];
    layer = [(DBCursiveTextView *)v7 layer];
    [layer addSublayer:v7->_textLayer];
  }

  return v7;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = DBCursiveTextView;
  [(DBCursiveTextView *)&v19 layoutSubviews];
  textLayer = [(DBCursiveTextView *)self textLayer];
  [(DBCursiveTextView *)self bounds];
  [textLayer setFrame:?];

  textPath = [(DBCursiveTextView *)self textPath];

  if (textPath)
  {
    textLayer2 = [(DBCursiveTextView *)self textLayer];
    [textLayer2 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    textPath2 = [(DBCursiveTextView *)self textPath];
    [(DBCursiveTextView *)self pointSize];
    if (textPath2)
    {
      [textPath2 transformForRect:1 pointSize:v7 flipped:{v9, v11, v13, v15}];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    *&self->_textTransform.a = v16;
    *&self->_textTransform.c = v17;
    *&self->_textTransform.tx = v18;
  }
}

- (double)duration
{
  textPath = [(DBCursiveTextView *)self textPath];
  [textPath duration];
  v4 = v3;

  return v4;
}

- (void)setTime:(float)time
{
  textPath = [(DBCursiveTextView *)self textPath];
  v6 = [textPath pathForTime:time];

  v7 = MEMORY[0x24C1CC250](v6, &self->_textTransform);
  if (v7)
  {
    v8 = v7;
    textLayer = [(DBCursiveTextView *)self textLayer];
    [textLayer setPath:v8];

    textLayer2 = [(DBCursiveTextView *)self textLayer];
    [textLayer2 setShadowPath:v8];

    CGPathRelease(v8);
  }
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  textLayer = [(DBCursiveTextView *)self textLayer];
  cGColor = [colorCopy CGColor];

  [textLayer setFillColor:cGColor];
}

- (void)setAccessibilityLabel:(id)label
{
  v6.receiver = self;
  v6.super_class = DBCursiveTextView;
  labelCopy = label;
  [(DBCursiveTextView *)&v6 setAccessibilityLabel:labelCopy];
  v5 = [(DBCursiveTextView *)self textLayer:v6.receiver];
  [v5 setAccessibilityLabel:labelCopy];
}

- (void)setAccessibilityLanguage:(id)language
{
  v6.receiver = self;
  v6.super_class = DBCursiveTextView;
  languageCopy = language;
  [(DBCursiveTextView *)&v6 setAccessibilityLanguage:languageCopy];
  v5 = [(DBCursiveTextView *)self textLayer:v6.receiver];
  [v5 setAccessibilityLanguage:languageCopy];
}

@end