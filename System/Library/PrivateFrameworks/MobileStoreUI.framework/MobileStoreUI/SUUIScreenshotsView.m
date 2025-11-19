@interface SUUIScreenshotsView
- (SUUIScreenshotsView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setPrimaryView:(id)a3;
@end

@implementation SUUIScreenshotsView

- (SUUIScreenshotsView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SUUIScreenshotsView;
  v3 = [(SUUIScreenshotsView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v3->_separatorView;
    v3->_separatorView = v4;

    v6 = v3->_separatorView;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v6 setBackgroundColor:v7];

    [(SUUIScreenshotsView *)v3 addSubview:v3->_separatorView];
  }

  return v3;
}

- (void)setPrimaryView:(id)a3
{
  v5 = a3;
  primaryView = self->_primaryView;
  if (primaryView != v5)
  {
    v7 = v5;
    [(UIView *)primaryView removeFromSuperview];
    objc_storeStrong(&self->_primaryView, a3);
    [(SUUIScreenshotsView *)self addSubview:self->_primaryView];
    primaryView = [(SUUIScreenshotsView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](primaryView, v5);
}

- (void)layoutSubviews
{
  [(SUUIScreenshotsView *)self bounds];
  v4 = v3;
  v6 = v5;
  primaryView = self->_primaryView;
  if (primaryView)
  {
    [(UIView *)primaryView setFrame:?];
  }

  if (self->_separatorView)
  {
    [(SUUIScreenshotsView *)self bringSubviewToFront:?];
    separatorView = self->_separatorView;
    v13 = [MEMORY[0x277D759A0] mainScreen];
    [v13 scale];
    v10 = v6 - 1.0 / v9;
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    [(UIView *)separatorView setFrame:15.0, v10, v4 + -15.0, 1.0 / v12];
  }
}

@end