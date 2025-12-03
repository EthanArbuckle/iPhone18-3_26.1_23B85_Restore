@interface NTKFaceViewTapControl
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKFaceViewTapControl)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation NTKFaceViewTapControl

- (NTKFaceViewTapControl)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = NTKFaceViewTapControl;
  v3 = [(NTKFaceViewTapControl *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v12.receiver = self;
  v12.super_class = NTKFaceViewTapControl;
  isHighlighted = [(NTKFaceViewTapControl *)&v12 isHighlighted];
  v11.receiver = self;
  v11.super_class = NTKFaceViewTapControl;
  [(NTKFaceViewTapControl *)&v11 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(UIImageView *)self->_highlightImageView setHidden:0];
    v6 = 0.2;
    if (highlightedCopy)
    {
      v6 = 0.0;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__NTKFaceViewTapControl_setHighlighted___block_invoke;
    v9[3] = &unk_27877F7E8;
    v9[4] = self;
    v10 = highlightedCopy;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__NTKFaceViewTapControl_setHighlighted___block_invoke_2;
    v7[3] = &unk_278782CD0;
    v7[4] = self;
    v8 = highlightedCopy;
    [MEMORY[0x277D75D18] animateWithDuration:v9 animations:v7 completion:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIImageView *)self->_highlightImageView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end