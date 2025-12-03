@interface MRURoutingSeparatorHeaderView
- (MRURoutingSeparatorHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setStylingProvider:(id)provider;
- (void)updateVisualStyling;
@end

@implementation MRURoutingSeparatorHeaderView

- (MRURoutingSeparatorHeaderView)initWithReuseIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MRURoutingSeparatorHeaderView;
  v3 = [(MRURoutingSeparatorHeaderView *)&v12 initWithReuseIdentifier:identifier];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MRURoutingSeparatorHeaderView *)v3 setTintColor:clearColor];

    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v3->_separatorView;
    v3->_separatorView = v5;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v3->_separatorView setBackgroundColor:whiteColor];

    contentView = [(MRURoutingSeparatorHeaderView *)v3 contentView];
    [contentView addSubview:v3->_separatorView];

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

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRURoutingSeparatorHeaderView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  separatorView = self->_separatorView;
  traitCollection = [(MRURoutingSeparatorHeaderView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:4 toView:separatorView traitCollection:traitCollection];
}

@end