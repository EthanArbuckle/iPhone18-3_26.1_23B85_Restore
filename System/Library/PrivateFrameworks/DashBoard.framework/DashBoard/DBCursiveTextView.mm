@interface DBCursiveTextView
- (DBCursiveTextView)initWithTextURL:(id)a3 pointSize:(double)a4;
- (double)duration;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setAccessibilityLanguage:(id)a3;
- (void)setFillColor:(id)a3;
- (void)setTime:(float)a3;
@end

@implementation DBCursiveTextView

- (DBCursiveTextView)initWithTextURL:(id)a3 pointSize:(double)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = DBCursiveTextView;
  v7 = [(DBCursiveTextView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v7)
  {
    v8 = [[DBCursiveTextPath alloc] initWithURL:v6];
    textPath = v7->_textPath;
    v7->_textPath = v8;

    v7->_pointSize = a4;
    v10 = objc_alloc_init(MEMORY[0x277CD9F90]);
    textLayer = v7->_textLayer;
    v7->_textLayer = v10;

    [(CAShapeLayer *)v7->_textLayer setShadowRadius:1.0];
    LODWORD(v12) = 1036831949;
    [(CAShapeLayer *)v7->_textLayer setShadowOpacity:v12];
    [(CAShapeLayer *)v7->_textLayer setShadowOffset:0.0, 1.0];
    v13 = [(DBCursiveTextView *)v7 layer];
    [v13 addSublayer:v7->_textLayer];
  }

  return v7;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = DBCursiveTextView;
  [(DBCursiveTextView *)&v19 layoutSubviews];
  v3 = [(DBCursiveTextView *)self textLayer];
  [(DBCursiveTextView *)self bounds];
  [v3 setFrame:?];

  v4 = [(DBCursiveTextView *)self textPath];

  if (v4)
  {
    v5 = [(DBCursiveTextView *)self textLayer];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(DBCursiveTextView *)self textPath];
    [(DBCursiveTextView *)self pointSize];
    if (v14)
    {
      [v14 transformForRect:1 pointSize:v7 flipped:{v9, v11, v13, v15}];
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
  v2 = [(DBCursiveTextView *)self textPath];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (void)setTime:(float)a3
{
  v5 = [(DBCursiveTextView *)self textPath];
  v6 = [v5 pathForTime:a3];

  v7 = MEMORY[0x24C1CC250](v6, &self->_textTransform);
  if (v7)
  {
    v8 = v7;
    v9 = [(DBCursiveTextView *)self textLayer];
    [v9 setPath:v8];

    v10 = [(DBCursiveTextView *)self textLayer];
    [v10 setShadowPath:v8];

    CGPathRelease(v8);
  }
}

- (void)setFillColor:(id)a3
{
  v4 = a3;
  v6 = [(DBCursiveTextView *)self textLayer];
  v5 = [v4 CGColor];

  [v6 setFillColor:v5];
}

- (void)setAccessibilityLabel:(id)a3
{
  v6.receiver = self;
  v6.super_class = DBCursiveTextView;
  v4 = a3;
  [(DBCursiveTextView *)&v6 setAccessibilityLabel:v4];
  v5 = [(DBCursiveTextView *)self textLayer:v6.receiver];
  [v5 setAccessibilityLabel:v4];
}

- (void)setAccessibilityLanguage:(id)a3
{
  v6.receiver = self;
  v6.super_class = DBCursiveTextView;
  v4 = a3;
  [(DBCursiveTextView *)&v6 setAccessibilityLanguage:v4];
  v5 = [(DBCursiveTextView *)self textLayer:v6.receiver];
  [v5 setAccessibilityLanguage:v4];
}

@end