@interface SUUIStorePageSectionContext
- (SUUIClientContext)clientContext;
- (SUUIItemOfferButtonAppearance)itemOfferButtonAppearance;
- (SUUIStorePageSectionContext)init;
- (SUUIStorePageSectionsViewController)parentViewController;
- (UIColor)placeholderColor;
- (double)horizontalPadding;
- (void)_setActivePageWidth:(double)a3;
- (void)_setCollectionView:(id)a3;
- (void)_setColorScheme:(id)a3;
- (void)_setMetricsController:(id)a3;
- (void)_setParentViewController:(id)a3;
- (void)_setResourceLoader:(id)a3;
- (void)_setTextLayoutCache:(id)a3;
@end

@implementation SUUIStorePageSectionContext

- (SUUIStorePageSectionContext)init
{
  v9.receiver = self;
  v9.super_class = SUUIStorePageSectionContext;
  v2 = [(SUUIStorePageSectionContext *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 bounds];
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
  v3 = [WeakRetained clientContext];

  return v3;
}

- (double)horizontalPadding
{
  v3 = [MEMORY[0x277D75DA0] keyWindow];
  [v3 bounds];
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
    v4 = [(UICollectionView *)self->_collectionView backgroundColor];
    v5 = v4;
    if (!v4)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
LABEL_13:
      v9 = self->_placeholderColor;
      self->_placeholderColor = v7;

      goto LABEL_14;
    }

    v6 = SUUIColorSchemeStyleForColor(v4);
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

- (void)_setActivePageWidth:(double)a3
{
  if (self->_activePageWidth != a3)
  {
    self->_portraitPageWidth = a3;
    self->_activePageWidth = a3;
  }
}

- (void)_setCollectionView:(id)a3
{
  v5 = a3;
  p_collectionView = &self->_collectionView;
  if (self->_collectionView != v5)
  {
    v8 = v5;
    objc_storeStrong(p_collectionView, a3);
    placeholderColor = self->_placeholderColor;
    self->_placeholderColor = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_collectionView, v5);
}

- (void)_setColorScheme:(id)a3
{
  v5 = a3;
  p_colorScheme = &self->_colorScheme;
  if (self->_colorScheme != v5)
  {
    v8 = v5;
    objc_storeStrong(p_colorScheme, a3);
    placeholderColor = self->_placeholderColor;
    self->_placeholderColor = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_colorScheme, v5);
}

- (void)_setMetricsController:(id)a3
{
  v5 = a3;
  metricsController = self->_metricsController;
  p_metricsController = &self->_metricsController;
  if (metricsController != v5)
  {
    v8 = v5;
    objc_storeStrong(p_metricsController, a3);
    v5 = v8;
  }
}

- (void)_setParentViewController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_parentViewController, v4);
}

- (void)_setResourceLoader:(id)a3
{
  v5 = a3;
  resourceLoader = self->_resourceLoader;
  p_resourceLoader = &self->_resourceLoader;
  if (resourceLoader != v5)
  {
    v8 = v5;
    objc_storeStrong(p_resourceLoader, a3);
    v5 = v8;
  }
}

- (void)_setTextLayoutCache:(id)a3
{
  v5 = a3;
  textLayoutCache = self->_textLayoutCache;
  p_textLayoutCache = &self->_textLayoutCache;
  if (textLayoutCache != v5)
  {
    v8 = v5;
    objc_storeStrong(p_textLayoutCache, a3);
    v5 = v8;
  }
}

- (SUUIStorePageSectionsViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end