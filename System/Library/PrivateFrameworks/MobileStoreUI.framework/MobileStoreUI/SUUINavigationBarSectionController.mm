@interface SUUINavigationBarSectionController
- (SUUIViewElementLayoutContext)viewLayoutContext;
- (void)dealloc;
@end

@implementation SUUINavigationBarSectionController

- (void)dealloc
{
  [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setArtworkRequestDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUINavigationBarSectionController;
  [(SUUINavigationBarSectionController *)&v3 dealloc];
}

- (SUUIViewElementLayoutContext)viewLayoutContext
{
  viewLayoutContext = self->_viewLayoutContext;
  if (!viewLayoutContext)
  {
    v4 = objc_alloc_init(SUUIViewElementLayoutContext);
    v5 = self->_viewLayoutContext;
    self->_viewLayoutContext = v4;

    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setArtworkRequestDelegate:self];
    v6 = self->_viewLayoutContext;
    clientContext = [(SUUINavigationBarContext *)self->_navigationBarContext clientContext];
    [(SUUIViewElementLayoutContext *)v6 setClientContext:clientContext];

    v8 = self->_viewLayoutContext;
    parentViewController = [(SUUINavigationBarContext *)self->_navigationBarContext parentViewController];
    [(SUUIViewElementLayoutContext *)v8 setParentViewController:parentViewController];

    v10 = self->_viewLayoutContext;
    resourceLoader = [(SUUINavigationBarContext *)self->_navigationBarContext resourceLoader];
    [(SUUIViewElementLayoutContext *)v10 setResourceLoader:resourceLoader];

    v12 = [SUUIViewElementTextLayoutCache alloc];
    textLayoutCache = [(SUUINavigationBarContext *)self->_navigationBarContext textLayoutCache];
    v14 = [(SUUIViewElementTextLayoutCache *)v12 initWithLayoutCache:textLayoutCache];

    [(SUUIViewElementLayoutContext *)self->_viewLayoutContext setLabelLayoutCache:v14];
    viewLayoutContext = self->_viewLayoutContext;
  }

  return viewLayoutContext;
}

@end