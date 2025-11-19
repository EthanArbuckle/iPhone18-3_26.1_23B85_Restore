@interface SUUINavigationBarButtonsController
- (SUUINavigationBarButtonsController)initWithNavigationBarViewElement:(id)a3;
- (UIEdgeInsets)_imageInsetsForImageViewElement:(id)a3;
- (id)_imageForImageViewElement:(id)a3;
- (id)addButtonItemWithButtonViewElement:(id)a3;
- (id)barButtonItemForElementIdentifier:(id)a3;
- (void)_buttonAction:(id)a3;
- (void)_itemOfferAction:(id)a3;
- (void)_reloadButtonItem:(id)a3 withButtonViewElement:(id)a4;
- (void)_updateButtonItem:(id)a3 withButtonViewElement:(id)a4;
- (void)_updateItemOfferButton:(id)a3 withButtonViewElement:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)dealloc;
- (void)disconnectAllButtons;
- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)a3;
@end

@implementation SUUINavigationBarButtonsController

- (SUUINavigationBarButtonsController)initWithNavigationBarViewElement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUINavigationBarButtonsController;
  v6 = [(SUUINavigationBarButtonsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationBarElement, a3);
  }

  return v7;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_buttonItemElements;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) customView];
        if (objc_opt_isKindOfClass())
        {
          [v8 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = SUUINavigationBarButtonsController;
  [(SUUINavigationBarSectionController *)&v9 dealloc];
}

- (id)addButtonItemWithButtonViewElement:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  if ([v4 buttonViewType] == 2)
  {
    v6 = objc_alloc_init(SUUIItemOfferButton);
    [(SUUIItemOfferButton *)v6 addTarget:self action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
    [(SUUIItemOfferButton *)v6 addTarget:self action:sel__itemOfferAction_ forControlEvents:0x20000];
    [(SUUIItemOfferButton *)v6 addTarget:self action:sel__showConfirmationAction_ forControlEvents:0x40000];
    v7 = [MEMORY[0x277D75348] clearColor];
    [(SUUIItemOfferButton *)v6 setBackgroundColor:v7];

    [(SUUIItemOfferButton *)v6 setDelegate:self];
    [(SUUINavigationBarButtonsController *)self _updateItemOfferButton:v6 withButtonViewElement:v4];
    [v5 setCustomView:v6];
  }

  else
  {
    [v5 setAction:sel__buttonAction_];
    [v5 setTarget:self];
    [(SUUINavigationBarButtonsController *)self _updateButtonItem:v5 withButtonViewElement:v4];
  }

  buttonItemElements = self->_buttonItemElements;
  if (!buttonItemElements)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    v10 = self->_buttonItemElements;
    self->_buttonItemElements = v9;

    buttonItemElements = self->_buttonItemElements;
  }

  [(NSMapTable *)buttonItemElements setObject:v4 forKey:v5];
  v11 = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  v12 = [v11 imageResourceCacheKeyForViewElement:v4];

  if (v12)
  {
    buttonItemToImageResourceCacheKey = self->_buttonItemToImageResourceCacheKey;
    if (!buttonItemToImageResourceCacheKey)
    {
      v14 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:512 capacity:1];
      v15 = self->_buttonItemToImageResourceCacheKey;
      self->_buttonItemToImageResourceCacheKey = v14;

      buttonItemToImageResourceCacheKey = self->_buttonItemToImageResourceCacheKey;
    }

    [(NSMapTable *)buttonItemToImageResourceCacheKey setObject:v12 forKey:v5];
  }

  return v5;
}

- (id)barButtonItemForElementIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_buttonItemElements;
  v5 = [(NSMapTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_buttonItemElements objectForKey:v9];
        v11 = [v10 itmlID];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = v9;

          goto LABEL_11;
        }
      }

      v6 = [(NSMapTable *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)disconnectAllButtons
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_buttonItemElements;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 customView];
        [v8 setTarget:0];
        [v9 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_buttonItemElements removeAllObjects];
  [(NSMapTable *)self->_buttonItemToImageResourceCacheKey removeAllObjects];
}

- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)a3
{
  v40[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 leftBarButtonItems];
  v27 = v4;
  v6 = [v4 rightBarButtonItems];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  navigationBarElement = self->_navigationBarElement;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __82__SUUINavigationBarButtonsController_reloadAfterDocumentUpdateWithNavigationItem___block_invoke;
  v35[3] = &unk_2798F8A80;
  v10 = v7;
  v36 = v10;
  v11 = v8;
  v37 = v11;
  [(SUUIViewElement *)navigationBarElement enumerateChildrenUsingBlock:v35];
  v25 = v6;
  v26 = v5;
  v39[0] = v5;
  v39[1] = v10;
  v23 = v11;
  v24 = v10;
  v12 = v39;
  v40[0] = v6;
  v40[1] = v11;
  v13 = 1;
  do
  {
    v28 = v13;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *v12;
    v14 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v32;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * v18);
        v20 = [(NSMapTable *)self->_buttonItemElements objectForKey:v19, v23, v24, v25, v26];

        v21 = v12[1];
        if (v20)
        {
          v22 = [v12[1] objectAtIndex:v16];
          [(SUUINavigationBarButtonsController *)self _reloadButtonItem:v19 withButtonViewElement:v22];
          [(NSMapTable *)self->_buttonItemElements setObject:v22 forKey:v19];
          ++v16;
        }

        if (v16 == [v21 count])
        {
          break;
        }

        if (v15 == ++v18)
        {
          v15 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
          if (v15)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v13 = 0;
    v12 = v40;
  }

  while ((v28 & 1) != 0);
  v30.receiver = self;
  v30.super_class = SUUINavigationBarButtonsController;
  [(SUUINavigationBarSectionController *)&v30 reloadAfterDocumentUpdateWithNavigationItem:v27];
}

uint64_t __82__SUUINavigationBarButtonsController_reloadAfterDocumentUpdateWithNavigationItem___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  IsButton = SUUIIKViewElementTypeIsButton([v8 elementType]);
  v4 = v8;
  if (IsButton)
  {
    v5 = [v8 style];
    v6 = [v5 elementAlignment];

    if (v6 == 3)
    {
      IsButton = [*(a1 + 40) insertObject:v8 atIndex:0];
    }

    else
    {
      v4 = v8;
      if (v6 != 1)
      {
        goto LABEL_7;
      }

      IsButton = [*(a1 + 32) addObject:v8];
    }

    v4 = v8;
  }

LABEL_7:

  return MEMORY[0x2821F96F8](IsButton, v4);
}

- (void)_buttonAction:(id)a3
{
  v3 = [(NSMapTable *)self->_buttonItemElements objectForKey:a3];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_itemOfferAction:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_buttonItemElements;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 customView];

        if (v11 == v4)
        {
          v12 = [(NSMapTable *)self->_buttonItemElements objectForKey:v10];
          [v12 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];

          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = a4;
  v7 = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  v21 = v6;
  v8 = [v6 requestIdentifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_buttonItemToImageResourceCacheKey;
  v9 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_buttonItemToImageResourceCacheKey objectForKey:v13];
        v15 = [v7 requestIdentifierForResourceCacheKey:v14];
        v16 = v15;
        if (v15 && [v15 unsignedIntegerValue] == v8)
        {
          [v13 setImage:v22];
          v17 = [(SUUINavigationBarSectionController *)self context];
          v18 = [v17 parentViewController];
          v19 = [v18 navigationController];
          v20 = [v19 navigationBar];

          [v20 setNeedsLayout];
          goto LABEL_12;
        }
      }

      v10 = [(NSMapTable *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (id)_imageForImageViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 resourceName];
  v6 = v5;
  if (v5)
  {
    v7 = SUUIImageWithResourceName(v5);
  }

  else
  {
    v8 = [(SUUINavigationBarSectionController *)self viewLayoutContext];
    v9 = [v8 requestIdentifierForViewElement:v4];
    if (!v9 || ([v8 resourceLoader], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "cachedResourceForRequestIdentifier:", objc_msgSend(v9, "unsignedIntegerValue")), v7 = objc_claimAutoreleasedReturnValue(), v10, !v7))
    {
      [v8 loadImageForImageElement:v4 reason:1];
      v7 = 0;
    }
  }

  return v7;
}

- (UIEdgeInsets)_imageInsetsForImageViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 style];
  [v5 elementPadding];
  v27 = v7;
  v28 = v6;
  v8.f64[0] = v6;
  v25 = v9;
  v26 = v10;
  v8.f64[1] = v9;
  v11.f64[0] = v10;
  v11.f64[1] = v7;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, *MEMORY[0x277D768C8]), vceqq_f64(v11, *(MEMORY[0x277D768C8] + 16))))))
  {
    v12 = [v4 resourceName];
    v13 = [v12 isEqualToString:@"previewHistory"];

    if (v13)
    {
      v14 = [(SUUINavigationBarSectionController *)self context];
      v15 = [v14 clientContext];
      v16 = SUUIUserInterfaceIdiom(v15);

      v17 = 2.0;
      if (v16 == 1)
      {
        v17 = 3.0;
      }
    }

    else
    {
      v18 = [MEMORY[0x277D75418] currentDevice];
      if ([v18 userInterfaceIdiom])
      {

        goto LABEL_10;
      }

      v19 = [v4 resourceName];
      v20 = [v19 isEqualToString:@"share"];

      if (!v20)
      {
        goto LABEL_10;
      }

      v17 = -3.0;
    }

    v28 = v17;
    v27 = 0.0;
    v26 = 0.0;
    v25 = 0.0;
  }

LABEL_10:

  v22 = v27;
  v21 = v28;
  v23 = v25;
  v24 = v26;
  result.right = v22;
  result.bottom = v24;
  result.left = v23;
  result.top = v21;
  return result;
}

- (void)_reloadButtonItem:(id)a3 withButtonViewElement:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v6 updateType])
  {
    if ([v6 buttonViewType] == 2)
    {
      v7 = [v8 customView];
      [(SUUINavigationBarButtonsController *)self _updateItemOfferButton:v7 withButtonViewElement:v6];
    }

    else
    {
      [(SUUINavigationBarButtonsController *)self _updateButtonItem:v8 withButtonViewElement:v6];
    }
  }
}

- (void)_updateButtonItem:(id)a3 withButtonViewElement:(id)a4
{
  v12 = a3;
  v6 = a4;
  [v12 setEnabled:{objc_msgSend(v6, "isEnabled")}];
  [v12 setStyle:{2 * (objc_msgSend(v6, "buttonViewType") == 8)}];
  v7 = [v6 buttonImage];
  if (v7)
  {
    v8 = [v6 accessibilityText];

    [v12 setAccessibilityLabel:v8];
    v9 = [(SUUINavigationBarButtonsController *)self _imageForImageViewElement:v7];
    [v12 setImage:v9];

    [(SUUINavigationBarButtonsController *)self _imageInsetsForImageViewElement:v7];
    [v12 setImageInsets:?];
  }

  else
  {
    v10 = [v6 buttonText];

    v11 = [v10 string];
    [v12 setTitle:v11];
  }
}

- (void)_updateItemOfferButton:(id)a3 withButtonViewElement:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v5 confirmationText];
  [v6 setConfirmationTitle:v9];
  [v6 setEnabled:{objc_msgSend(v5, "isEnabled")}];
  [v6 setShowsConfirmationState:v9 != 0];
  v7 = [v5 buttonText];

  v8 = [v7 string];
  [v6 setTitle:v8];

  [v6 sizeToFit];
}

@end