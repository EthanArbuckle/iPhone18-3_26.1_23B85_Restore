@interface NTKEditOptionPickerSideView
- (NTKEditOptionPickerSideView)initWithFrame:(CGRect)frame;
- (void)applyContentTransform:(CGAffineTransform *)transform;
- (void)setOptionView:(id)view;
@end

@implementation NTKEditOptionPickerSideView

- (NTKEditOptionPickerSideView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = NTKEditOptionPickerSideView;
  v3 = [(NTKEditOptionPickerSideView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(NTKEditOptionPickerSideView *)v3 setBackgroundColor:blackColor];

    v5 = MEMORY[0x277CBF2C0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v3->_contentTransform.a = *MEMORY[0x277CBF2C0];
    *&v3->_contentTransform.c = v6;
    *&v3->_contentTransform.tx = *(v5 + 32);
    v3->_contentAlpha = 1.0;
  }

  return v3;
}

- (void)setOptionView:(id)view
{
  viewCopy = view;
  optionView = self->_optionView;
  if (optionView != viewCopy)
  {
    superview = [(UIView *)optionView superview];

    if (superview == self)
    {
      [(UIView *)self->_optionView removeFromSuperview];
    }

    objc_storeStrong(&self->_optionView, view);
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

- (void)applyContentTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_contentTransform.a = *&transform->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
  optionView = self->_optionView;
  v6 = *&transform->c;
  v7[0] = *&transform->a;
  v7[1] = v6;
  v7[2] = *&transform->tx;
  [(UIView *)optionView setTransform:v7];
}

@end