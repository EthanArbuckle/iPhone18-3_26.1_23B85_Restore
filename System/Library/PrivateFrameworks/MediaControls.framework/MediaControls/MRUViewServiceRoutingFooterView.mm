@interface MRUViewServiceRoutingFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUViewServiceRoutingFooterView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)setStylingProvider:(id)a3;
- (void)updateContentSizeCategory;
- (void)updateVisualStyling;
@end

@implementation MRUViewServiceRoutingFooterView

- (MRUViewServiceRoutingFooterView)initWithFrame:(CGRect)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = MRUViewServiceRoutingFooterView;
  v3 = [(MRUViewServiceRoutingFooterView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    separatorView = v3->_separatorView;
    v3->_separatorView = v5;

    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v3->_separatorView setBackgroundColor:v7];

    [(MRUViewServiceRoutingFooterView *)v3 addSubview:v3->_separatorView];
    v8 = [MEMORY[0x1E69DC738] buttonWithType:1];
    button = v3->_button;
    v3->_button = v8;

    v10 = [(UIButton *)v3->_button titleLabel];
    [v10 setNumberOfLines:2];

    v11 = [(UIButton *)v3->_button titleLabel];
    [v11 setTextAlignment:1];

    [(UIButton *)v3->_button setTitleEdgeInsets:0.0, 15.0, 0.0, 15.0];
    v12 = v3->_button;
    v13 = +[MRUStringsProvider controlOtherSpeakers];
    [(UIButton *)v12 setTitle:v13 forState:0];

    [(MRUViewServiceRoutingFooterView *)v3 addSubview:v3->_button];
    v14 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
    [(MRUViewServiceRoutingFooterView *)v3 addInteraction:v14];
    v22[0] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v16 = [(MRUViewServiceRoutingFooterView *)v3 registerForTraitChanges:v15 withAction:sel_updateVisualStyling];

    v21 = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v18 = [(MRUViewServiceRoutingFooterView *)v3 registerForTraitChanges:v17 withAction:sel_updateContentSizeCategory];

    [(MRUViewServiceRoutingFooterView *)v3 updateContentSizeCategory];
  }

  return v3;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = MRUViewServiceRoutingFooterView;
  [(MRUViewServiceRoutingFooterView *)&v16 layoutSubviews];
  [(MRUViewServiceRoutingFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MRUViewServiceRoutingFooterView *)self traitCollection];
  [v11 displayScale];
  v13 = 1.0 / v12;

  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  MinX = CGRectGetMinX(v17);
  [(MRUViewServiceRoutingFooterView *)self bounds];
  MinY = CGRectGetMinY(v18);
  [(MRUViewServiceRoutingFooterView *)self bounds];
  [(UIView *)self->_separatorView setFrame:MinX, MinY, CGRectGetWidth(v19), v13];
  UIRectInset();
  [(UIButton *)self->_button setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MRUViewServiceRoutingFooterView *)self traitCollection];
  [v6 displayScale];
  v8 = 1.0 / v7;

  v9 = v8 + 15.0 + 15.0;
  [(UIButton *)self->_button sizeThatFits:width, height - v9];
  v11 = v9 + v10;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUViewServiceRoutingFooterView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v5 = [MEMORY[0x1E69DCDB8] effectWithPreview:v4];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:0];

  return v6;
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  separatorView = self->_separatorView;
  v5 = [(MRUViewServiceRoutingFooterView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:4 toView:separatorView traitCollection:v5];

  v6 = self->_stylingProvider;
  v8 = [(MRUViewServiceRoutingFooterView *)self traitCollection];
  v7 = [(MRUVisualStylingProvider *)v6 colorForStyle:0 traitCollection:v8];
  [(UIButton *)self->_button setTintColor:v7];
}

- (void)updateContentSizeCategory
{
  v4 = [MEMORY[0x1E69DB878] mru_titleFont];
  v3 = [(UIButton *)self->_button titleLabel];
  [v3 setFont:v4];
}

@end