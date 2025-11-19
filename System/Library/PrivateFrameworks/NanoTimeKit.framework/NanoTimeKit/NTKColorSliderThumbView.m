@interface NTKColorSliderThumbView
- (CGSize)sizeThatFits:(CGSize)result;
- (NTKColorSliderThumbView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation NTKColorSliderThumbView

- (NTKColorSliderThumbView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = NTKColorSliderThumbView;
  v3 = [(NTKColorSliderThumbView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    border = v3->_border;
    v3->_border = v4;

    v6 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v3->_border setBackgroundColor:v6];

    v7 = [MEMORY[0x277D75348] blackColor];
    v8 = [v7 CGColor];
    v9 = [(UIView *)v3->_border layer];
    [v9 setShadowColor:v8];

    v10 = [(UIView *)v3->_border layer];
    LODWORD(v11) = 0.5;
    [v10 setShadowOpacity:v11];

    v12 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
    v14 = [(UIView *)v3->_border layer];
    [v14 setShadowOffset:{v12, v13}];

    v15 = [(UIView *)v3->_border layer];
    [v15 setShadowRadius:10.0];

    [(NTKColorSliderThumbView *)v3 addSubview:v3->_border];
    v16 = objc_opt_new();
    content = v3->_content;
    v3->_content = v16;

    [(NTKColorSliderThumbView *)v3 addSubview:v3->_content];
  }

  return v3;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = NTKColorSliderThumbView;
  [(NTKColorSliderThumbView *)&v22 layoutSubviews];
  [(NTKColorSliderThumbView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_border setFrame:?];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v11 = CGRectGetWidth(v23) * 0.5;
  v12 = [(UIView *)self->_border layer];
  [v12 setCornerRadius:v11];

  v13 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v4, v6, v8, v10}];
  v14 = [v13 CGPath];
  v15 = [(UIView *)self->_border layer];
  [v15 setShadowPath:v14];

  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v25 = CGRectInset(v24, 6.0, 6.0);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  [(UIView *)self->_content setFrame:?];
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v20 = CGRectGetWidth(v26) * 0.5;
  v21 = [(UIView *)self->_content layer];
  [v21 setCornerRadius:v20];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (result.width >= result.height)
  {
    result.width = result.height;
  }

  width = result.width;
  result.height = width;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  if (a3.size.width >= a3.size.height)
  {
    a3.size.width = a3.size.height;
  }

  v3.receiver = self;
  v3.super_class = NTKColorSliderThumbView;
  [(NTKColorSliderThumbView *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.width];
}

- (void)setBounds:(CGRect)a3
{
  if (a3.size.width >= a3.size.height)
  {
    a3.size.width = a3.size.height;
  }

  v3.receiver = self;
  v3.super_class = NTKColorSliderThumbView;
  [(NTKColorSliderThumbView *)&v3 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.width];
}

@end