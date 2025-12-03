@interface _CRKDebugOverlayView
- (_CRKDebugOverlayView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setDebugText:(id)text;
@end

@implementation _CRKDebugOverlayView

- (_CRKDebugOverlayView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = _CRKDebugOverlayView;
  v3 = [(_CRKDebugOverlayView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(_CRKDebugOverlayView *)v3 layer];
    [layer setBorderWidth:2.0];

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v4->_label;
    v4->_label = v6;

    [(UILabel *)v4->_label setNumberOfLines:0];
    [(UILabel *)v4->_label setTextAlignment:2];
    v8 = v4->_label;
    v9 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v8 setFont:v9];

    [(_CRKDebugOverlayView *)v4 addSubview:v4->_label];
  }

  return v4;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    layer = [(_CRKDebugOverlayView *)self layer];
    v6 = colorCopy;
    [layer setBorderColor:{objc_msgSend(colorCopy, "CGColor")}];

    [(UILabel *)self->_label setTextColor:colorCopy];
    [(_CRKDebugOverlayView *)self setNeedsLayout];
  }
}

- (void)setDebugText:(id)text
{
  textCopy = text;
  if (([(NSString *)self->_debugText isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_debugText, text);
    [(UILabel *)self->_label setText:textCopy];
    [(_CRKDebugOverlayView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _CRKDebugOverlayView;
  [(_CRKDebugOverlayView *)&v13 layoutSubviews];
  [(UILabel *)self->_label sizeToFit];
  [(_CRKDebugOverlayView *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  label = self->_label;
  MaxX = CGRectGetMaxX(v14);
  [(UILabel *)self->_label bounds];
  v9 = MaxX - CGRectGetWidth(v15) + -2.0 + -1.0;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MaxY = CGRectGetMaxY(v16);
  [(UILabel *)self->_label bounds];
  v11 = MaxY - CGRectGetHeight(v17) + -2.0 + -1.0;
  [(UILabel *)self->_label bounds];
  v12 = CGRectGetWidth(v18);
  [(UILabel *)self->_label bounds];
  [(UILabel *)label setFrame:v9, v11, v12, CGRectGetHeight(v19)];
}

@end