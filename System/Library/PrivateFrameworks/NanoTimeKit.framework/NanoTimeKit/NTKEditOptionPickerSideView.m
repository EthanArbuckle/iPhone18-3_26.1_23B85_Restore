@interface NTKEditOptionPickerSideView
- (NTKEditOptionPickerSideView)initWithFrame:(CGRect)a3;
- (void)applyContentTransform:(CGAffineTransform *)a3;
- (void)setOptionView:(id)a3;
@end

@implementation NTKEditOptionPickerSideView

- (NTKEditOptionPickerSideView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = NTKEditOptionPickerSideView;
  v3 = [(NTKEditOptionPickerSideView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    [(NTKEditOptionPickerSideView *)v3 setBackgroundColor:v4];

    v5 = MEMORY[0x277CBF2C0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v3->_contentTransform.a = *MEMORY[0x277CBF2C0];
    *&v3->_contentTransform.c = v6;
    *&v3->_contentTransform.tx = *(v5 + 32);
    v3->_contentAlpha = 1.0;
  }

  return v3;
}

- (void)setOptionView:(id)a3
{
  v5 = a3;
  optionView = self->_optionView;
  if (optionView != v5)
  {
    v7 = [(UIView *)optionView superview];

    if (v7 == self)
    {
      [(UIView *)self->_optionView removeFromSuperview];
    }

    objc_storeStrong(&self->_optionView, a3);
    if (self->_optionView)
    {
      [(NTKEditOptionPickerSideView *)self addSubview:?];
      v8 = self->_optionView;
      v9 = *&self->_contentTransform.c;
      v10[0] = *&self->_contentTransform.a;
      v10[1] = v9;
      v10[2] = *&self->_contentTransform.tx;
      [(UIView *)v8 setTransform:v10];
    }
  }

  [(NTKEditOptionPickerSideView *)self _applyContentAlpha];
}

- (void)applyContentTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_contentTransform.a = *&a3->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
  optionView = self->_optionView;
  v6 = *&a3->c;
  v7[0] = *&a3->a;
  v7[1] = v6;
  v7[2] = *&a3->tx;
  [(UIView *)optionView setTransform:v7];
}

@end