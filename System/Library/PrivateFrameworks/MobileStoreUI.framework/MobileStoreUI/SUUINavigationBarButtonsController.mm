@interface SUUINavigationBarButtonsController
- (SUUINavigationBarButtonsController)initWithNavigationBarViewElement:(id)element;
- (UIEdgeInsets)_imageInsetsForImageViewElement:(id)element;
- (id)_imageForImageViewElement:(id)element;
- (id)addButtonItemWithButtonViewElement:(id)element;
- (id)barButtonItemForElementIdentifier:(id)identifier;
- (void)_buttonAction:(id)action;
- (void)_itemOfferAction:(id)action;
- (void)_reloadButtonItem:(id)item withButtonViewElement:(id)element;
- (void)_updateButtonItem:(id)item withButtonViewElement:(id)element;
- (void)_updateItemOfferButton:(id)button withButtonViewElement:(id)element;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
- (void)disconnectAllButtons;
- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)item;
@end

@implementation SUUINavigationBarButtonsController

- (SUUINavigationBarButtonsController)initWithNavigationBarViewElement:(id)element
{
  elementCopy = element;
  v9.receiver = self;
  v9.super_class = SUUINavigationBarButtonsController;
  v6 = [(SUUINavigationBarButtonsController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationBarElement, element);
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

        customView = [*(*(&v10 + 1) + 8 * v7) customView];
        if (objc_opt_isKindOfClass())
        {
          [customView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
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

- (id)addButtonItemWithButtonViewElement:(id)element
{
  elementCopy = element;
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  if ([elementCopy buttonViewType] == 2)
  {
    v6 = objc_alloc_init(SUUIItemOfferButton);
    [(SUUIItemOfferButton *)v6 addTarget:self action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
    [(SUUIItemOfferButton *)v6 addTarget:self action:sel__itemOfferAction_ forControlEvents:0x20000];
    [(SUUIItemOfferButton *)v6 addTarget:self action:sel__showConfirmationAction_ forControlEvents:0x40000];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIItemOfferButton *)v6 setBackgroundColor:clearColor];

    [(SUUIItemOfferButton *)v6 setDelegate:self];
    [(SUUINavigationBarButtonsController *)self _updateItemOfferButton:v6 withButtonViewElement:elementCopy];
    [v5 setCustomView:v6];
  }

  else
  {
    [v5 setAction:sel__buttonAction_];
    [v5 setTarget:self];
    [(SUUINavigationBarButtonsController *)self _updateButtonItem:v5 withButtonViewElement:elementCopy];
  }

  buttonItemElements = self->_buttonItemElements;
  if (!buttonItemElements)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    v10 = self->_buttonItemElements;
    self->_buttonItemElements = v9;

    buttonItemElements = self->_buttonItemElements;
  }

  [(NSMapTable *)buttonItemElements setObject:elementCopy forKey:v5];
  viewLayoutContext = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  v12 = [viewLayoutContext imageResourceCacheKeyForViewElement:elementCopy];

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

- (id)barButtonItemForElementIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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
        itmlID = [v10 itmlID];
        v12 = [itmlID isEqualToString:identifierCopy];

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
        customView = [v8 customView];
        [v8 setTarget:0];
        [customView removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_buttonItemElements removeAllObjects];
  [(NSMapTable *)self->_buttonItemToImageResourceCacheKey removeAllObjects];
}

- (void)reloadAfterDocumentUpdateWithNavigationItem:(id)item
{
  v40[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  leftBarButtonItems = [itemCopy leftBarButtonItems];
  v27 = itemCopy;
  rightBarButtonItems = [itemCopy rightBarButtonItems];
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
  v25 = rightBarButtonItems;
  v26 = leftBarButtonItems;
  v39[0] = leftBarButtonItems;
  v39[1] = v10;
  v23 = v11;
  v24 = v10;
  v12 = v39;
  v40[0] = rightBarButtonItems;
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

- (void)_buttonAction:(id)action
{
  v3 = [(NSMapTable *)self->_buttonItemElements objectForKey:action];
  [v3 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_itemOfferAction:(id)action
{
  v18 = *MEMORY[0x277D85DE8];
  actionCopy = action;
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
        customView = [v10 customView];

        if (customView == actionCopy)
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

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  imageCopy = image;
  viewLayoutContext = [(SUUINavigationBarSectionController *)self viewLayoutContext];
  v21 = requestCopy;
  requestIdentifier = [requestCopy requestIdentifier];
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
        v15 = [viewLayoutContext requestIdentifierForResourceCacheKey:v14];
        v16 = v15;
        if (v15 && [v15 unsignedIntegerValue] == requestIdentifier)
        {
          [v13 setImage:imageCopy];
          context = [(SUUINavigationBarSectionController *)self context];
          parentViewController = [context parentViewController];
          navigationController = [parentViewController navigationController];
          navigationBar = [navigationController navigationBar];

          [navigationBar setNeedsLayout];
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

- (id)_imageForImageViewElement:(id)element
{
  elementCopy = element;
  resourceName = [elementCopy resourceName];
  v6 = resourceName;
  if (resourceName)
  {
    v7 = SUUIImageWithResourceName(resourceName);
  }

  else
  {
    viewLayoutContext = [(SUUINavigationBarSectionController *)self viewLayoutContext];
    v9 = [viewLayoutContext requestIdentifierForViewElement:elementCopy];
    if (!v9 || ([viewLayoutContext resourceLoader], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "cachedResourceForRequestIdentifier:", objc_msgSend(v9, "unsignedIntegerValue")), v7 = objc_claimAutoreleasedReturnValue(), v10, !v7))
    {
      [viewLayoutContext loadImageForImageElement:elementCopy reason:1];
      v7 = 0;
    }
  }

  return v7;
}

- (UIEdgeInsets)_imageInsetsForImageViewElement:(id)element
{
  elementCopy = element;
  style = [elementCopy style];
  [style elementPadding];
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
    resourceName = [elementCopy resourceName];
    v13 = [resourceName isEqualToString:@"previewHistory"];

    if (v13)
    {
      context = [(SUUINavigationBarSectionController *)self context];
      clientContext = [context clientContext];
      v16 = SUUIUserInterfaceIdiom(clientContext);

      v17 = 2.0;
      if (v16 == 1)
      {
        v17 = 3.0;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom])
      {

        goto LABEL_10;
      }

      resourceName2 = [elementCopy resourceName];
      v20 = [resourceName2 isEqualToString:@"share"];

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

- (void)_reloadButtonItem:(id)item withButtonViewElement:(id)element
{
  itemCopy = item;
  elementCopy = element;
  if ([elementCopy updateType])
  {
    if ([elementCopy buttonViewType] == 2)
    {
      customView = [itemCopy customView];
      [(SUUINavigationBarButtonsController *)self _updateItemOfferButton:customView withButtonViewElement:elementCopy];
    }

    else
    {
      [(SUUINavigationBarButtonsController *)self _updateButtonItem:itemCopy withButtonViewElement:elementCopy];
    }
  }
}

- (void)_updateButtonItem:(id)item withButtonViewElement:(id)element
{
  itemCopy = item;
  elementCopy = element;
  [itemCopy setEnabled:{objc_msgSend(elementCopy, "isEnabled")}];
  [itemCopy setStyle:{2 * (objc_msgSend(elementCopy, "buttonViewType") == 8)}];
  buttonImage = [elementCopy buttonImage];
  if (buttonImage)
  {
    accessibilityText = [elementCopy accessibilityText];

    [itemCopy setAccessibilityLabel:accessibilityText];
    v9 = [(SUUINavigationBarButtonsController *)self _imageForImageViewElement:buttonImage];
    [itemCopy setImage:v9];

    [(SUUINavigationBarButtonsController *)self _imageInsetsForImageViewElement:buttonImage];
    [itemCopy setImageInsets:?];
  }

  else
  {
    buttonText = [elementCopy buttonText];

    string = [buttonText string];
    [itemCopy setTitle:string];
  }
}

- (void)_updateItemOfferButton:(id)button withButtonViewElement:(id)element
{
  elementCopy = element;
  buttonCopy = button;
  confirmationText = [elementCopy confirmationText];
  [buttonCopy setConfirmationTitle:confirmationText];
  [buttonCopy setEnabled:{objc_msgSend(elementCopy, "isEnabled")}];
  [buttonCopy setShowsConfirmationState:confirmationText != 0];
  buttonText = [elementCopy buttonText];

  string = [buttonText string];
  [buttonCopy setTitle:string];

  [buttonCopy sizeToFit];
}

@end