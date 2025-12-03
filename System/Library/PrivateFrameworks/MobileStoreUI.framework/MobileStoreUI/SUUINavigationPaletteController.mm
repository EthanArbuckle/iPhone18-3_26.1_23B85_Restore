@interface SUUINavigationPaletteController
- (SUUINavigationPaletteController)initWithPaletteViewElement:(id)element;
- (id)view;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)reloadSectionViews;
- (void)willAppearInNavigationBar;
@end

@implementation SUUINavigationPaletteController

- (SUUINavigationPaletteController)initWithPaletteViewElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUINavigationPaletteController;
  v6 = [(SUUINavigationPaletteController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewElement, element);
  }

  return v7;
}

- (void)reloadSectionViews
{
  context = [(SUUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v5 = v4;

  paletteView = self->_paletteView;
  viewElement = self->_viewElement;
  viewLayoutContext = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  [(SUUINavigationPaletteView *)paletteView reloadWithViewElement:viewElement width:viewLayoutContext context:v5];

  v9.receiver = self;
  v9.super_class = SUUINavigationPaletteController;
  [(SUUINavigationBarSectionController *)&v9 reloadSectionViews];
}

- (id)view
{
  paletteView = self->_paletteView;
  if (!paletteView)
  {
    context = [(SUUINavigationBarSectionController *)self context];
    clientContext = [context clientContext];
    v6 = SUUIUserInterfaceIdiom(clientContext);

    [context maximumNavigationBarWidth];
    v8 = v7;
    v9 = *MEMORY[0x277CBF3A0];
    v10 = *(MEMORY[0x277CBF3A0] + 8);
    viewElement = self->_viewElement;
    viewLayoutContext = [(SUUINavigationBarSectionController *)self viewLayoutContext];
    [SUUINavigationPaletteView sizeThatFitsWidth:viewElement viewElement:viewLayoutContext context:v8];
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIViewReuseView *)v21 setBackgroundColor:clearColor];

    [(SUUINavigationPaletteView *)self->_paletteView setContentInset:0.0, 15.0, 0.0, 15.0];
    if (v6 == 1)
    {
      [(SUUINavigationPaletteView *)self->_paletteView setVerticalAlignment:1];
    }

    v23 = self->_paletteView;
    v24 = self->_viewElement;
    viewLayoutContext2 = [(SUUINavigationBarSectionController *)self viewLayoutContext];
    [(SUUINavigationPaletteView *)v23 reloadWithViewElement:v24 width:viewLayoutContext2 context:v8];

    paletteView = self->_paletteView;
  }

  return paletteView;
}

- (void)willAppearInNavigationBar
{
  viewLayoutContext = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  context = [(SUUINavigationBarSectionController *)self context];
  [context maximumNavigationBarWidth];
  v6 = v5;

  [SUUINavigationPaletteView requestLayoutForViewElement:self->_viewElement width:viewLayoutContext context:v6];
  [SUUINavigationPaletteView prefetchResourcesForViewElement:self->_viewElement reason:0 context:viewLayoutContext];
  v7.receiver = self;
  v7.super_class = SUUINavigationPaletteController;
  [(SUUINavigationBarSectionController *)&v7 willAppearInNavigationBar];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  paletteView = self->_paletteView;
  imageCopy = image;
  requestCopy = request;
  viewLayoutContext = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  [(SUUINavigationPaletteView *)paletteView setImage:imageCopy forArtworkRequest:requestCopy context:viewLayoutContext];
}

@end