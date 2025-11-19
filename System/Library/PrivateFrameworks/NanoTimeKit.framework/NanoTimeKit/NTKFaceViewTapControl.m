@interface NTKFaceViewTapControl
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKFaceViewTapControl)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation NTKFaceViewTapControl

- (NTKFaceViewTapControl)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = NTKFaceViewTapControl;
  v3 = [(NTKFaceViewTapControl *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    [(NTKFaceViewTapControl *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    highlightImageView = v3->_highlightImageView;
    v3->_highlightImageView = v5;

    [(UIImageView *)v3->_highlightImageView setHidden:1];
    [(UIImageView *)v3->_highlightImageView setAlpha:0.0];
    [(NTKFaceViewTapControl *)v3 addSubview:v3->_highlightImageView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKFaceViewTapControl;
  [(NTKFaceViewTapControl *)&v4 layoutSubviews];
  highlightImageView = self->_highlightImageView;
  [(NTKFaceViewTapControl *)self bounds];
  [(UIImageView *)highlightImageView setFrame:?];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = NTKFaceViewTapControl;
  v5 = [(NTKFaceViewTapControl *)&v12 isHighlighted];
  v11.receiver = self;
  v11.super_class = NTKFaceViewTapControl;
  [(NTKFaceViewTapControl *)&v11 setHighlighted:v3];
  if (v5 != v3)
  {
    [(UIImageView *)self->_highlightImageView setHidden:0];
    v6 = 0.2;
    if (v3)
    {
      v6 = 0.0;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__NTKFaceViewTapControl_setHighlighted___block_invoke;
    v9[3] = &unk_27877F7E8;
    v9[4] = self;
    v10 = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__NTKFaceViewTapControl_setHighlighted___block_invoke_2;
    v7[3] = &unk_278782CD0;
    v7[4] = self;
    v8 = v3;
    [MEMORY[0x277D75D18] animateWithDuration:v9 animations:v7 completion:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIImageView *)self->_highlightImageView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end