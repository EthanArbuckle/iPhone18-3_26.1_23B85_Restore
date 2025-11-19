@interface MRUActivityNowPlayingHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUActivityNowPlayingHeaderView)init;
- (double)labelInset;
- (void)layoutSubviews;
- (void)setStylingProvider:(id)a3;
- (void)updateVisibilty;
@end

@implementation MRUActivityNowPlayingHeaderView

- (MRUActivityNowPlayingHeaderView)init
{
  v6.receiver = self;
  v6.super_class = MRUActivityNowPlayingHeaderView;
  v2 = [(MRUActivityNowPlayingHeaderView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MRUNowPlayingLabelView);
    labelView = v2->_labelView;
    v2->_labelView = v3;

    [(MRUNowPlayingLabelView *)v2->_labelView setLayout:2];
    [(MRUNowPlayingLabelView *)v2->_labelView setShowRoute:1];
    [(MRUNowPlayingLabelView *)v2->_labelView setShowSubtitle:1];
    [(MRUActivityNowPlayingHeaderView *)v2 addSubview:v2->_labelView];
  }

  return v2;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = MRUActivityNowPlayingHeaderView;
  [(MRUActivityNowPlayingHeaderView *)&v17 layoutSubviews];
  [(MRUActivityNowPlayingHeaderView *)self updateVisibilty];
  [(MRUActivityNowPlayingHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MRUActivityNowPlayingHeaderView *)self SBUISA_layoutMode];
  labelView = self->_labelView;
  if (v11 == 4)
  {
    [(MRUNowPlayingLabelView *)labelView sizeThatFits:v8, v10];
    v18.origin.x = v4;
    v18.origin.y = v6;
    v18.size.width = v8;
    v18.size.height = v10;
    CGRectGetMinX(v18);
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    CGRectGetWidth(v19);
    UIRectCenteredYInRect();
    v4 = v13;
    v6 = v14;
    v8 = v15;
    v10 = v16;
    labelView = self->_labelView;
  }

  [(MRUNowPlayingLabelView *)labelView setFrame:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(MRUNowPlayingLabelView *)self->_labelView sizeThatFits:a3.width, a3.height];
  if (v4 < 66.0)
  {
    v4 = 66.0;
  }

  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUNowPlayingLabelView *)self->_labelView setStylingProvider:v6];
    v5 = v6;
  }
}

- (double)labelInset
{
  v3 = [(MRUNowPlayingLabelView *)self->_labelView viewForFirstBaselineLayout];
  [(MRUNowPlayingLabelView *)self->_labelView sizeThatFits:1.79769313e308, 1.79769313e308];
  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 mr_tightBoundingRectOfFirstLine];
    v5 = v5 - CGRectGetMinY(v7);
  }

  return (66.0 - v5) * 0.5;
}

- (void)updateVisibilty
{
  if ([(MRUActivityNowPlayingHeaderView *)self SBUISA_layoutMode]== 4)
  {
    p_labelView = &self->_labelView;
    v4 = *p_labelView;
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v9.a = *MEMORY[0x1E695EFD0];
    *&v9.c = v5;
    *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v4 setTransform:&v9];
    v6 = 1.0;
  }

  else
  {
    CGAffineTransformMakeScale(&v8, 0.5, 0.5);
    p_labelView = &self->_labelView;
    v7 = *p_labelView;
    v9 = v8;
    [v7 setTransform:&v9];
    v6 = 0.0;
  }

  [*p_labelView setAlpha:v6];
}

@end