@interface MRURoutingSeparatorHeaderView
- (MRURoutingSeparatorHeaderView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
- (void)setStylingProvider:(id)a3;
- (void)updateVisualStyling;
@end

@implementation MRURoutingSeparatorHeaderView

- (MRURoutingSeparatorHeaderView)initWithReuseIdentifier:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MRURoutingSeparatorHeaderView;
  v3 = [(MRURoutingSeparatorHeaderView *)&v12 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(MRURoutingSeparatorHeaderView *)v3 setTintColor:v4];

    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v3->_separatorView;
    v3->_separatorView = v5;

    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v3->_separatorView setBackgroundColor:v7];

    v8 = [(MRURoutingSeparatorHeaderView *)v3 contentView];
    [v8 addSubview:v3->_separatorView];

    v13[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(MRURoutingSeparatorHeaderView *)v3 registerForTraitChanges:v9 withAction:sel_updateVisualStyling];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRURoutingSeparatorHeaderView;
  [(MRURoutingSeparatorHeaderView *)&v3 layoutSubviews];
  [(MRURoutingSeparatorHeaderView *)self bounds];
  [(UIView *)self->_separatorView setFrame:?];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRURoutingSeparatorHeaderView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  separatorView = self->_separatorView;
  v4 = [(MRURoutingSeparatorHeaderView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:4 toView:separatorView traitCollection:v4];
}

@end