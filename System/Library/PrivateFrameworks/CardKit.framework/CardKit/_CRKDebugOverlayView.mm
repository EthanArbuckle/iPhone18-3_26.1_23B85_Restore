@interface _CRKDebugOverlayView
- (_CRKDebugOverlayView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setDebugText:(id)a3;
@end

@implementation _CRKDebugOverlayView

- (_CRKDebugOverlayView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = _CRKDebugOverlayView;
  v3 = [(_CRKDebugOverlayView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_CRKDebugOverlayView *)v3 layer];
    [v5 setBorderWidth:2.0];

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

- (void)setColor:(id)a3
{
  v7 = a3;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, a3);
    v5 = [(_CRKDebugOverlayView *)self layer];
    v6 = v7;
    [v5 setBorderColor:{objc_msgSend(v7, "CGColor")}];

    [(UILabel *)self->_label setTextColor:v7];
    [(_CRKDebugOverlayView *)self setNeedsLayout];
  }
}

- (void)setDebugText:(id)a3
{
  v5 = a3;
  if (([(NSString *)self->_debugText isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_debugText, a3);
    [(UILabel *)self->_label setText:v5];
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