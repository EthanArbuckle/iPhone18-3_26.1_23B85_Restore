@interface SUUIScrollingTabBarPalette
- (SUUIScrollingTabBarPalette)initWithFrame:(CGRect)a3;
- (SUUIScrollingTabBarPaletteDelegate)_delegate;
- (void)layoutSubviews;
- (void)setTabBarBackgroundExtendsBehindPalette:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SUUIScrollingTabBarPalette

- (SUUIScrollingTabBarPalette)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21.receiver = self;
  v21.super_class = SUUIScrollingTabBarPalette;
  v7 = [(SUUIScrollingTabBarPalette *)&v21 initWithFrame:?];
  if (v7)
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v7->_paletteHeight = CGRectGetHeight(v22);
    [(SUUIScrollingTabBarPalette *)v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [[SUUIScrollingTabBarBackgroundView alloc] initWithFrame:v8, v10, v12, v14];
    backgroundView = v7->_backgroundView;
    v7->_backgroundView = v16;

    [(SUUIScrollingTabBarPalette *)v7 addSubview:v7->_backgroundView];
    v18 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v9, v11, v13, v15}];
    contentView = v7->_contentView;
    v7->_contentView = v18;

    [(SUUIScrollingTabBarPalette *)v7 addSubview:v7->_contentView];
    v7->_tabBarBackgroundExtendsBehindPalette = 1;
  }

  return v7;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = SUUIScrollingTabBarPalette;
  [(SUUIScrollingTabBarPalette *)&v16 layoutSubviews];
  [(SUUIScrollingTabBarPalette *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SUUIScrollingTabBarPalette *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  if (v13 < 0.00000011920929)
  {
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 scale];
    v13 = v15;
  }

  [(SUUIScrollingTabBarBackgroundView *)self->_backgroundView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10 + -1.0 / v13];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = SUUIScrollingTabBarPalette;
  v4 = a3;
  [(SUUIScrollingTabBarPalette *)&v10 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;

  v7 = [(SUUIScrollingTabBarPalette *)self traitCollection];
  [v7 displayScale];
  v9 = vabdd_f64(v6, v8);

  if (v9 > 0.00000011920929)
  {
    [(SUUIScrollingTabBarPalette *)self setNeedsLayout];
  }
}

- (void)setTabBarBackgroundExtendsBehindPalette:(BOOL)a3
{
  if (self->_tabBarBackgroundExtendsBehindPalette != a3)
  {
    self->_tabBarBackgroundExtendsBehindPalette = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained tabBarBackgroundExtendsBehindPaletteDidChangeForPalette:self];
    }
  }
}

- (SUUIScrollingTabBarPaletteDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end