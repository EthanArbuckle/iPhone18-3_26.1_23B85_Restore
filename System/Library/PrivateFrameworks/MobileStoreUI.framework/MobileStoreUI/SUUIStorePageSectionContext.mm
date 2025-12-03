@interface SUUIStorePageSectionContext
- (SUUIClientContext)clientContext;
- (SUUIItemOfferButtonAppearance)itemOfferButtonAppearance;
- (SUUIStorePageSectionContext)init;
- (SUUIStorePageSectionsViewController)parentViewController;
- (UIColor)placeholderColor;
- (double)horizontalPadding;
- (void)_setActivePageWidth:(double)width;
- (void)_setCollectionView:(id)view;
- (void)_setColorScheme:(id)scheme;
- (void)_setMetricsController:(id)controller;
- (void)_setParentViewController:(id)controller;
- (void)_setResourceLoader:(id)loader;
- (void)_setTextLayoutCache:(id)cache;
@end

@implementation SUUIStorePageSectionContext

- (SUUIStorePageSectionContext)init
{
  v9.receiver = self;
  v9.super_class = SUUIStorePageSectionContext;
  v2 = [(SUUIStorePageSectionContext *)&v9 init];
  if (v2)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v5 = v4;
    v7 = v6;

    v2->_portraitPageWidth = v5;
    v2->_activePageWidth = v5;
    v2->_landscapePageWidth = v7;
  }

  return v2;
}

- (SUUIClientContext)clientContext
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  clientContext = [WeakRetained clientContext];

  return clientContext;
}

- (double)horizontalPadding
{
  keyWindow = [MEMORY[0x277D75DA0] keyWindow];
  [keyWindow bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SUUIStorePageSectionContext *)self activePageWidth];
  v13 = v12;
  if (v12 < 1024.0 || (v16.origin.x = v5, v16.origin.y = v7, v16.size.width = v9, v16.size.height = v11, Height = CGRectGetHeight(v16), result = 20.0, Height <= 768.0))
  {
    if ([(SUUIStorePageSectionContext *)self layoutStyle]!= 1)
    {
      return 15.0;
    }

    v17.origin.x = v5;
    v17.origin.y = v7;
    v17.size.width = v9;
    v17.size.height = v11;
    if (CGRectGetHeight(v17) >= 1024.0)
    {
      v18.origin.x = v5;
      v18.origin.y = v7;
      v18.size.width = v9;
      v18.size.height = v11;
      if (CGRectGetWidth(v18) >= 1024.0)
      {
        return 35.0;
      }
    }

    result = 20.0;
    if (v13 != 414.0)
    {
      return 15.0;
    }
  }

  return result;
}

- (SUUIItemOfferButtonAppearance)itemOfferButtonAppearance
{
  itemOfferButtonAppearance = self->_itemOfferButtonAppearance;
  if (!itemOfferButtonAppearance)
  {
    v4 = [[SUUIItemOfferButtonAppearance alloc] initWithColorScheme:self->_colorScheme];
    v5 = self->_itemOfferButtonAppearance;
    self->_itemOfferButtonAppearance = v4;

    itemOfferButtonAppearance = self->_itemOfferButtonAppearance;
  }

  return itemOfferButtonAppearance;
}

- (UIColor)placeholderColor
{
  placeholderColor = self->_placeholderColor;
  if (!placeholderColor)
  {
    backgroundColor = [(UICollectionView *)self->_collectionView backgroundColor];
    v5 = backgroundColor;
    if (!backgroundColor)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
LABEL_13:
      v9 = self->_placeholderColor;
      self->_placeholderColor = v7;

      goto LABEL_14;
    }

    v6 = SUUIColorSchemeStyleForColor(backgroundColor);
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        if (v6 != 3)
        {
LABEL_14:

          placeholderColor = self->_placeholderColor;
          goto LABEL_15;
        }

        goto LABEL_10;
      }
    }

    else if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_14;
      }

LABEL_10:
      v8 = 0.25;
LABEL_12:
      v7 = SUUIColorByAdjustingBrightness(v5, v8);
      goto LABEL_13;
    }

    v8 = -0.15;
    goto LABEL_12;
  }

LABEL_15:

  return placeholderColor;
}

- (void)_setActivePageWidth:(double)width
{
  if (self->_activePageWidth != width)
  {
    self->_portraitPageWidth = width;
    self->_activePageWidth = width;
  }
}

- (void)_setCollectionView:(id)view
{
  viewCopy = view;
  p_collectionView = &self->_collectionView;
  if (self->_collectionView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(p_collectionView, view);
    placeholderColor = self->_placeholderColor;
    self->_placeholderColor = 0;

    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](p_collectionView, viewCopy);
}

- (void)_setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  p_colorScheme = &self->_colorScheme;
  if (self->_colorScheme != schemeCopy)
  {
    v8 = schemeCopy;
    objc_storeStrong(p_colorScheme, scheme);
    placeholderColor = self->_placeholderColor;
    self->_placeholderColor = 0;

    schemeCopy = v8;
  }

  MEMORY[0x2821F96F8](p_colorScheme, schemeCopy);
}

- (void)_setMetricsController:(id)controller
{
  controllerCopy = controller;
  metricsController = self->_metricsController;
  p_metricsController = &self->_metricsController;
  if (metricsController != controllerCopy)
  {
    v8 = controllerCopy;
    objc_storeStrong(p_metricsController, controller);
    controllerCopy = v8;
  }
}

- (void)_setParentViewController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_parentViewController, controllerCopy);
}

- (void)_setResourceLoader:(id)loader
{
  loaderCopy = loader;
  resourceLoader = self->_resourceLoader;
  p_resourceLoader = &self->_resourceLoader;
  if (resourceLoader != loaderCopy)
  {
    v8 = loaderCopy;
    objc_storeStrong(p_resourceLoader, loader);
    loaderCopy = v8;
  }
}

- (void)_setTextLayoutCache:(id)cache
{
  cacheCopy = cache;
  textLayoutCache = self->_textLayoutCache;
  p_textLayoutCache = &self->_textLayoutCache;
  if (textLayoutCache != cacheCopy)
  {
    v8 = cacheCopy;
    objc_storeStrong(p_textLayoutCache, cache);
    cacheCopy = v8;
  }
}

- (SUUIStorePageSectionsViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end