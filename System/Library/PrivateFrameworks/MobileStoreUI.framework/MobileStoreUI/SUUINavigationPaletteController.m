@interface SUUINavigationPaletteController
- (SUUINavigationPaletteController)initWithPaletteViewElement:(id)a3;
- (id)view;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)reloadSectionViews;
- (void)willAppearInNavigationBar;
@end

@implementation SUUINavigationPaletteController

- (SUUINavigationPaletteController)initWithPaletteViewElement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUINavigationPaletteController;
  v6 = [(SUUINavigationPaletteController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, a3);
  }

  return v7;
}

- (void)reloadSectionViews
{
  v3 = [(SUUINavigationBarSectionController *)self context];
  [v3 maximumNavigationBarWidth];
  v5 = v4;

  paletteView = self->_paletteView;
  viewElement = self->_viewElement;
  v8 = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  [(SUUINavigationPaletteView *)paletteView reloadWithViewElement:viewElement width:v8 context:v5];

  v9.receiver = self;
  v9.super_class = SUUINavigationPaletteController;
  [(SUUINavigationBarSectionController *)&v9 reloadSectionViews];
}

- (id)view
{
  paletteView = self->_paletteView;
  if (!paletteView)
  {
    v4 = [(SUUINavigationBarSectionController *)self context];
    v5 = [v4 clientContext];
    v6 = SUUIUserInterfaceIdiom(v5);

    [v4 maximumNavigationBarWidth];
    v8 = v7;
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    viewElement = self->_viewElement;
    v12 = [(SUUINavigationBarSectionController *)self viewLayoutContext];
    [SUUINavigationPaletteView sizeThatFitsWidth:viewElement viewElement:v12 context:v8];
    v14 = v13;
    v16 = v15;

    v17 = v16 + 14.0;
    if (v16 + 14.0 < 36.0)
    {
      v17 = 36.0;
    }

    if (v6 == 1)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16 + 9.0;
    }

    v19 = [[SUUINavigationPaletteView alloc] initWithFrame:v9, v10, v14, v18];
    v20 = self->_paletteView;
    self->_paletteView = v19;

    [(SUUINavigationPaletteView *)self->_paletteView setAutoresizingMask:2];
    v21 = self->_paletteView;
    v22 = [MEMORY[0x277D75348] clearColor];
    [(SUUIViewReuseView *)v21 setBackgroundColor:v22];

    [(SUUINavigationPaletteView *)self->_paletteView setContentInset:0.0, 15.0, 0.0, 15.0];
    if (v6 == 1)
    {
      [(SUUINavigationPaletteView *)self->_paletteView setVerticalAlignment:1];
    }

    v23 = self->_paletteView;
    v24 = self->_viewElement;
    v25 = [(SUUINavigationBarSectionController *)self viewLayoutContext];
    [(SUUINavigationPaletteView *)v23 reloadWithViewElement:v24 width:v25 context:v8];

    paletteView = self->_paletteView;
  }

  return paletteView;
}

- (void)willAppearInNavigationBar
{
  v3 = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  v4 = [(SUUINavigationBarSectionController *)self context];
  [v4 maximumNavigationBarWidth];
  v6 = v5;

  [SUUINavigationPaletteView requestLayoutForViewElement:self->_viewElement width:v3 context:v6];
  [SUUINavigationPaletteView prefetchResourcesForViewElement:self->_viewElement reason:0 context:v3];
  v7.receiver = self;
  v7.super_class = SUUINavigationPaletteController;
  [(SUUINavigationBarSectionController *)&v7 willAppearInNavigationBar];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  paletteView = self->_paletteView;
  v7 = a4;
  v8 = a3;
  v9 = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  [(SUUINavigationPaletteView *)paletteView setImage:v7 forArtworkRequest:v8 context:v9];
}

@end