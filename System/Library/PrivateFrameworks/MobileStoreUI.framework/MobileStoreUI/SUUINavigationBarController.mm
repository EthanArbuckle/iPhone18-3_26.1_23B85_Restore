@interface SUUINavigationBarController
- (NSArray)existingSearchBarControllers;
- (SUUINavigationBarController)initWithNavigationBarViewElement:(id)a3;
- (SUUINavigationBarControllerDelegate)delegate;
- (UIView)navigationPaletteView;
- (UIViewController)parentViewController;
- (double)_availableWidth;
- (id)_addSearchBarControllerWithViewElement:(id)a3;
- (id)_attributedStringForButton:(id)a3;
- (id)_attributedStringForButtonText:(id)a3 type:(int64_t)a4 style:(id)a5;
- (id)_barButtonItemWithButtonViewElement:(id)a3;
- (id)_barButtonItemWithSearchBarViewElement:(id)a3;
- (id)_barButtonItemWithViewElement:(id)a3;
- (id)_buttonWithElement:(id)a3 width:(double)a4;
- (id)_navigationBarContext;
- (id)_resourceImageForImageElement:(id)a3;
- (id)barButtonItemForElementIdentifier:(id)a3;
- (id)titleViewWithViewElement:(id)a3;
- (id)viewForElementIdentifier:(id)a3;
- (void)_fullyReloadSections:(id)a3 withNavigationItem:(id)a4;
- (void)_titleButtonAction:(id)a3;
- (void)_viewElementEventNotification:(id)a3;
- (void)attachToNavigationItem:(id)a3;
- (void)dealloc;
- (void)detachFromNavigationItem:(id)a3;
- (void)detachNavigationItemControllers;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)layoutCacheDidFinishBatch:(id)a3;
- (void)setReusableSearchBarControllers:(id)a3;
- (void)updateNavigationItem:(id)a3;
@end

@implementation SUUINavigationBarController

- (SUUINavigationBarController)initWithNavigationBarViewElement:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SUUINavigationBarController;
  v6 = [(SUUINavigationBarController *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = v6->_sections;
    v6->_sections = v7;

    objc_storeStrong(&v6->_viewElement, a3);
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v6 selector:sel__viewElementEventNotification_ name:0x286AF1D80 object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:0x286AF1D80 object:0];
  [(SUUINavigationBarButtonsController *)self->_buttonsController disconnectAllButtons];
  v4 = [(SUUINavigationBarContext *)self->_navigationBarContext textLayoutCache];
  [v4 setDelegate:0];

  v5.receiver = self;
  v5.super_class = SUUINavigationBarController;
  [(SUUINavigationBarController *)&v5 dealloc];
}

- (void)attachToNavigationItem:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__73;
  v80 = __Block_byref_object_dispose__73;
  v81 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__73;
  v74 = __Block_byref_object_dispose__73;
  v75 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__73;
  v68 = __Block_byref_object_dispose__73;
  v69 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__73;
  v62 = __Block_byref_object_dispose__73;
  v63 = 0;
  viewElement = self->_viewElement;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __54__SUUINavigationBarController_attachToNavigationItem___block_invoke;
  v50[3] = &unk_2798FC470;
  v55 = &v76;
  v56 = &v64;
  v54 = &v70;
  v50[4] = self;
  v41 = v5;
  v51 = v41;
  v9 = v7;
  v52 = v9;
  v40 = v6;
  v53 = v40;
  v57 = &v58;
  [(SUUIViewElement *)viewElement enumerateChildrenUsingBlock:v50];
  if (!v59[5])
  {
    v10 = [(SUUINavigationBarController *)self fallbackTitleView];
    v11 = v59[5];
    v59[5] = v10;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v13 = [WeakRetained additionalLeftBarButtonItemForNavigationBarController:self];
    if (v13)
    {
      [v41 insertObject:v13 atIndex:0];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [WeakRetained additionalRightBarButtonItemForNavigationBarController:self];
    if (v14)
    {
      [v9 insertObject:v14 atIndex:0];
    }
  }

  v15 = [(SUUINavigationBarController *)self _navigationBarContext];
  if (v71[5])
  {
    v16 = [SUUINavigationBarSegmentsController alloc];
    v17 = [(SUUINavigationBarSegmentsController *)v16 initWithViewElement:v71[5]];
    [(SUUINavigationBarSectionController *)v17 setContext:v15];
    [(NSMutableArray *)self->_sections addObject:v17];
    v18 = [(SUUINavigationBarSegmentsController *)v17 view];
    v19 = v59[5];
    v59[5] = v18;
  }

  else
  {
    v17 = 0;
  }

  if (!v59[5] && [v40 count])
  {
    v20 = [[SUUINavigationBarMenusController alloc] initWithMenuViewElements:v40];
    [(SUUINavigationBarSectionController *)v20 setContext:v15];
    [(NSMutableArray *)self->_sections addObject:v20];
    v21 = [(SUUINavigationBarMenusController *)v20 view];
    v22 = v59[5];
    v59[5] = v21;
  }

  if (self->_buttonsController)
  {
    [(NSMutableArray *)self->_sections addObject:?];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = self->_sections;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v46 objects:v83 count:16];
  if (v24)
  {
    v25 = *v47;
    do
    {
      v26 = 0;
      do
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v46 + 1) + 8 * v26++) willAppearInNavigationBar];
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v46 objects:v83 count:16];
    }

    while (v24);
  }

  if (![v65[5] length])
  {
    v27 = objc_loadWeakRetained(&self->_parentViewController);
    v28 = [v27 title];
    v29 = v65[5];
    v65[5] = v28;
  }

  SUUINavigationBarController_SetTitleView(v4, v59[5]);
  v30 = v77[5];
  if (!v30)
  {
    v30 = v65[5];
  }

  [v4 setBackButtonTitle:v30];
  [v4 setLeftItemsSupplementBackButton:1];
  [v4 setLeftBarButtonItems:v41 animated:0];
  [v4 setRightBarButtonItems:v9 animated:0];
  [v4 setTitle:v65[5]];
  v31 = [v15 textLayoutCache];
  [v31 commitLayoutRequests];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = self->_sections;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v42 objects:v82 count:16];
  if (v33)
  {
    v34 = *v43;
    do
    {
      v35 = 0;
      do
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v32);
        }

        [*(*(&v42 + 1) + 8 * v35++) reloadSectionViews];
      }

      while (v33 != v35);
      v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v42 objects:v82 count:16];
    }

    while (v33);
  }

  [(SUUINavigationPaletteController *)self->_paletteController reloadSectionViews];
  if (v17 && (v36 = v59[5], [(SUUINavigationBarSegmentsController *)v17 view], v37 = objc_claimAutoreleasedReturnValue(), LODWORD(v36) = v36 == v37, v37, v36))
  {
    [v59[5] sizeThatFits:{1.79769313e308, 1.79769313e308}];
    [v59[5] frame];
    v39 = v38;
    [v59[5] frame];
    [v59[5] setFrame:v39];
  }

  else
  {
    [v59[5] sizeToFit];
  }

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v76, 8);
}

void __54__SUUINavigationBarController_attachToNavigationItem___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  v4 = [v21 elementType];
  if (v4 == 138)
  {
    v9 = v21;
    v10 = [v9 labelViewStyle];
    if (v10 == 2)
    {
      v11 = 72;
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_18;
      }

      v11 = 80;
    }

    v14 = [v9 text];
    v15 = [v14 string];
    v16 = *(*(a1 + v11) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    goto LABEL_18;
  }

  v5 = v4;
  if (v4 == 109)
  {
    v6 = *(*(a1 + 64) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a2);
    }

    goto LABEL_19;
  }

  v12 = [v21 style];
  v13 = [v12 elementAlignment];

  if (v13 > 2)
  {
    if ((v13 - 4) < 2)
    {
      goto LABEL_15;
    }

    if (v13 != 3)
    {
      goto LABEL_19;
    }

    v9 = [*(a1 + 32) _barButtonItemWithViewElement:v21];
    if (v9)
    {
      [*(a1 + 48) insertObject:v9 atIndex:0];
    }

LABEL_18:

    goto LABEL_19;
  }

  switch(v13)
  {
    case 0:
LABEL_15:
      NSLog(&cfstr_InvalidAlignme.isa, v21);
      break;
    case 1:
      v9 = [*(a1 + 32) _barButtonItemWithViewElement:v21];
      if (v9)
      {
        [*(a1 + 40) addObject:v9];
      }

      goto LABEL_18;
    case 2:
      if (v5 == 69)
      {
        [*(a1 + 56) addObject:v21];
      }

      else if (!*(*(*(a1 + 64) + 8) + 40) && !*(*(*(a1 + 88) + 8) + 40))
      {
        v18 = [*(a1 + 32) titleViewWithViewElement:v21];
        v19 = *(*(a1 + 88) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;
      }

      break;
  }

LABEL_19:
}

- (id)barButtonItemForElementIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_sections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v10 = [*(*(&v13 + 1) + 8 * i) barButtonItemForElementIdentifier:{v4, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)detachFromNavigationItem:(id)a3
{
  v4 = a3;
  [(SUUINavigationBarController *)self detachNavigationItemControllers];
  [v4 setLeftBarButtonItems:0 animated:0];
  [v4 setRightBarButtonItems:0 animated:0];
  [v4 setTitle:0];
  SUUINavigationBarController_SetTitleView(v4, 0);
}

- (void)detachNavigationItemControllers
{
  v16 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_sections removeAllObjects];
  [(SUUINavigationBarButtonsController *)self->_buttonsController disconnectAllButtons];
  buttonsController = self->_buttonsController;
  self->_buttonsController = 0;

  paletteController = self->_paletteController;
  self->_paletteController = 0;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_searchBarControllers;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_searchBarControllers objectForKey:*(*(&v11 + 1) + 8 * v9), v11];
        [v10 setParentViewController:0];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMapTable *)self->_searchBarControllers removeAllObjects];
}

- (NSArray)existingSearchBarControllers
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_searchBarControllers;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMapTable *)self->_searchBarControllers objectForKey:*(*(&v20 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_reusableSearchBarControllers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v3 addObject:{*(*(&v16 + 1) + 8 * j), v16}];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  return v3;
}

- (UIView)navigationPaletteView
{
  paletteController = self->_paletteController;
  if (!paletteController)
  {
    v4 = [(SUUINavigationBarViewElement *)self->_viewElement navigationPalettes];
    v5 = [v4 firstObject];

    if (v5)
    {
      v6 = [v5 flattenedChildren];
      v7 = [v6 count];

      if (v7)
      {
        v8 = [(SUUINavigationBarController *)self _navigationBarContext];
        v9 = [[SUUINavigationPaletteController alloc] initWithPaletteViewElement:v5];
        v10 = self->_paletteController;
        self->_paletteController = v9;

        [(SUUINavigationBarSectionController *)self->_paletteController setContext:v8];
        [(SUUINavigationPaletteController *)self->_paletteController willAppearInNavigationBar];
        v11 = [v8 textLayoutCache];
        [v11 commitLayoutRequests];
      }
    }

    paletteController = self->_paletteController;
  }

  return [(SUUINavigationPaletteController *)paletteController view];
}

- (void)setReusableSearchBarControllers:(id)a3
{
  if (self->_reusableSearchBarControllers != a3)
  {
    v5 = [a3 mutableCopy];
    reusableSearchBarControllers = self->_reusableSearchBarControllers;
    self->_reusableSearchBarControllers = v5;

    MEMORY[0x2821F96F8](v5, reusableSearchBarControllers);
  }
}

- (id)titleViewWithViewElement:(id)a3
{
  v5 = a3;
  [(SUUINavigationBarController *)self _availableWidth];
  v7 = v6;
  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v9 = [v8 keyWindow];
    [v9 bounds];
    v11 = v10;
    v12 = SUUICompactThreshold();

    if (v7 > 314.0 && v11 > v12)
    {
      v7 = 314.0;
    }
  }

  if ([v5 elementType] == 106)
  {
    v14 = [(SUUINavigationBarController *)self _addSearchBarControllerWithViewElement:v5];
    v15 = [v14 searchBar];
    v16 = [v15 searchField];
    if (([v16 isDescendantOfView:v15] & 1) == 0)
    {
      [v15 addSubview:v16];
    }

    [v15 setPretendsIsInBar:1];
    v17 = [v5 style];
    v18 = [v17 itemWidth];

    if (v18)
    {
      v19 = [v5 style];
      v20 = [v19 itemWidth];
      [v20 floatValue];
      v22 = v21;

      v23 = *MEMORY[0x277CBF3A0];
      v24 = *(MEMORY[0x277CBF3A0] + 8);
      [v15 sizeThatFits:{v22, 1.79769313e308}];
      v26 = v25;
      [v15 setFrame:{v23, v24, v22, v25}];
      [v15 setAutoresizingMask:2];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v15 setIntrinsicWidth:v22];
      }

      v27 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v23, v24, v22, v26}];
      [v27 addSubview:v15];
    }

    else
    {
      v27 = v15;
      v36 = *MEMORY[0x277CBF3A0];
      v37 = *(MEMORY[0x277CBF3A0] + 8);
      [v27 sizeThatFits:{v7, 1.79769313e308}];
      [v27 setFrame:{v36, v37, v7, v38}];
    }
  }

  else
  {
    if ([v5 elementType] != 12)
    {
      v27 = 0;
      goto LABEL_20;
    }

    objc_storeStrong(&self->_titleButtonViewElement, a3);
    v28 = [(SUUINavigationBarController *)self _buttonWithElement:self->_titleButtonViewElement width:v7];
    [v28 addTarget:self action:sel__titleButtonAction_ forControlEvents:64];
    v29 = [MEMORY[0x277D75348] clearColor];
    [v28 setBackgroundColor:v29];

    v30 = *MEMORY[0x277CBF3A0];
    v31 = *(MEMORY[0x277CBF3A0] + 8);
    v32 = *MEMORY[0x277CBF3A8];
    v33 = *(MEMORY[0x277CBF3A8] + 8);
    v14 = v28;
    [v14 sizeThatFits:{v32, v33}];
    [v14 setFrame:{v30, v31, v34, v35}];
    v27 = v14;
  }

LABEL_20:

  return v27;
}

- (void)updateNavigationItem:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUINavigationBarViewElement *)self->_viewElement updateType];
  switch(v5)
  {
    case 1:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v16 = self->_searchBarControllers;
      v17 = [(NSMapTable *)v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v53;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v53 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [(NSMapTable *)self->_searchBarControllers objectForKey:*(*(&v52 + 1) + 8 * i)];
            [v21 reloadAfterDocumentUpdate];
          }

          v18 = [(NSMapTable *)v16 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v18);
      }

      v22 = [(NSMutableArray *)self->_sections mutableCopy];
      v6 = v22;
      if (self->_paletteController)
      {
        [v22 addObject:?];
      }

      [(SUUINavigationBarController *)self _fullyReloadSections:v6 withNavigationItem:v4];
      if (self->_titleButtonViewElement)
      {
        [(SUUINavigationBarController *)self _availableWidth];
        v24 = v23;
        if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
        {
          v25 = [MEMORY[0x277D75128] sharedApplication];
          v26 = [v25 keyWindow];
          [v26 bounds];
          v28 = v27;
          v29 = SUUICompactThreshold();

          if (v24 > 314.0 && v28 > v29)
          {
            v24 = 314.0;
          }
        }

        v31 = [(SUUINavigationBarController *)self _buttonWithElement:self->_titleButtonViewElement width:v24];
        [v31 addTarget:self action:sel__titleButtonAction_ forControlEvents:64];
        v32 = [MEMORY[0x277D75348] clearColor];
        [v31 setBackgroundColor:v32];

        v33 = *MEMORY[0x277CBF3A0];
        v34 = *(MEMORY[0x277CBF3A0] + 8);
        v35 = *MEMORY[0x277CBF3A8];
        v36 = *(MEMORY[0x277CBF3A8] + 8);
        v37 = v31;
        [v37 sizeThatFits:{v35, v36}];
        [v37 setFrame:{v33, v34, v38, v39}];
        SUUINavigationBarController_SetTitleView(v4, v37);
      }

      WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
      v41 = [WeakRetained navigationController];
      v42 = [v41 navigationBar];
      [v42 setNeedsLayout];

      goto LABEL_47;
    case 4:
      [(SUUINavigationBarController *)self detachFromNavigationItem:v4];
      v11 = [(SUUINavigationBarController *)self parentViewController];
      v12 = [v11 presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = [(SUUINavigationBarController *)self parentViewController];
        v15 = [v14 presentedViewController];
        [v15 dismissViewControllerAnimated:0 completion:0];
      }

      [(SUUINavigationBarController *)self attachToNavigationItem:v4];
      break;
    case 3:
      v6 = [(SUUIViewElement *)self->_viewElement firstChildForElementType:106];
      v7 = [(SUUIViewElement *)self->_viewElement firstChildForElementType:75];
      v8 = [(SUUIViewElement *)self->_viewElement firstChildForElementType:138];
      if ([(NSMapTable *)self->_searchBarControllers count]!= 1)
      {
LABEL_45:
        [(SUUINavigationBarController *)self detachFromNavigationItem:v4];
        [(SUUINavigationBarController *)self attachToNavigationItem:v4];
LABEL_46:

LABEL_47:
        break;
      }

      v9 = [(SUUIViewElement *)self->_viewElement flattenedChildren];
      v10 = [v9 count];

      if (v10 == 3)
      {
        if (!v6 || !v7 || !v8)
        {
          goto LABEL_45;
        }
      }

      else if (v10 == 2)
      {
        if (!v6 || !(v7 | v8))
        {
          goto LABEL_45;
        }
      }

      else if (v10 != 1 || !v6)
      {
        goto LABEL_45;
      }

      v51 = v8;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v43 = self->_searchBarControllers;
      v44 = [(NSMapTable *)v43 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = 0;
        v47 = *v57;
        do
        {
          v48 = 0;
          v49 = v46;
          do
          {
            if (*v57 != v47)
            {
              objc_enumerationMutation(v43);
            }

            v46 = [(NSMapTable *)self->_searchBarControllers objectForKey:*(*(&v56 + 1) + 8 * v48)];

            ++v48;
            v49 = v46;
          }

          while (v45 != v48);
          v45 = [(NSMapTable *)v43 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v45);
      }

      else
      {
        v46 = 0;
      }

      [v46 setSearchBarViewElement:v6];
      [(NSMapTable *)self->_searchBarControllers removeAllObjects];
      [(NSMapTable *)self->_searchBarControllers setObject:v46 forKey:v6];
      paletteController = self->_paletteController;
      if (v7)
      {
        v8 = v51;
        if (!paletteController)
        {
LABEL_55:

          goto LABEL_46;
        }

        paletteController = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{self->_paletteController, 0}];
        [(SUUINavigationBarController *)self _fullyReloadSections:paletteController withNavigationItem:v4];
      }

      else
      {
        self->_paletteController = 0;
        v8 = v51;
      }

      goto LABEL_55;
  }
}

- (id)viewForElementIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  paletteController = self->_paletteController;
  if (!paletteController || ([(SUUINavigationPaletteController *)paletteController viewForElementIdentifier:v4], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = self->_sections;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) viewForElementIdentifier:{v4, v14}];
          if (v12)
          {
            v6 = v12;
            goto LABEL_13;
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  return v6;
}

- (void)itemOfferButtonWillAnimateTransition:(id)a3
{
  v6 = a3;
  v3 = [v6 superview];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v5 = [v4 superview];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    [v6 sizeToFit];
    [v4 layoutSubviews];
  }

LABEL_7:
}

- (void)layoutCacheDidFinishBatch:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_sections;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) reloadSectionViews];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(SUUINavigationPaletteController *)self->_paletteController reloadSectionViews];
}

- (void)_viewElementEventNotification:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUUINavigationBarController *)self navigationPaletteView];
  v6 = [v4 object];

  if (v5 && [v6 isDescendantOfView:v5])
  {
    memset(v9, 0, sizeof(v9));
    v7 = self->_searchBarControllers;
    if ([(NSMapTable *)v7 countByEnumeratingWithState:v9 objects:v10 count:16])
    {
      v8 = [(NSMapTable *)self->_searchBarControllers objectForKey:**(&v9[0] + 1), *&v9[0]];
      [v8 resignActive:1];
    }
  }
}

- (id)_addSearchBarControllerWithViewElement:(id)a3
{
  v4 = a3;
  if (![(NSMutableArray *)self->_reusableSearchBarControllers count]|| ([(NSMutableArray *)self->_reusableSearchBarControllers firstObject], v5 = objc_claimAutoreleasedReturnValue(), [(SUUISearchBarController *)v5 setSearchBarViewElement:v4], [(NSMutableArray *)self->_reusableSearchBarControllers removeObjectAtIndex:0], !v5))
  {
    v5 = [[SUUISearchBarController alloc] initWithSearchBarViewElement:v4];
  }

  [(SUUISearchBarController *)v5 setClientContext:self->_clientContext];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  [(SUUISearchBarController *)v5 setParentViewController:WeakRetained];

  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v7 = [MEMORY[0x277D75128] sharedApplication];
    v8 = [v7 keyWindow];
    [v8 bounds];
    if (v9 <= SUUICompactThreshold())
    {
    }

    else
    {
      v10 = [(SUUIClientContext *)self->_clientContext shouldForceTransientSearchControllerBahavior];

      if (!v10)
      {
        [(SUUISearchBarController *)v5 setShowsResultsForEmptyField:1];
        goto LABEL_10;
      }
    }
  }

  [(SUUISearchBarController *)v5 setDisplaysSearchBarInNavigationBar:1];
LABEL_10:
  searchBarControllers = self->_searchBarControllers;
  if (!searchBarControllers)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    v13 = self->_searchBarControllers;
    self->_searchBarControllers = v12;

    searchBarControllers = self->_searchBarControllers;
  }

  [(NSMapTable *)searchBarControllers setObject:v5 forKey:v4];

  return v5;
}

- (id)_attributedStringForButton:(id)a3
{
  v4 = a3;
  v5 = [v4 buttonText];
  v6 = [v4 buttonViewType];
  v7 = [v4 buttonTitleStyle];
  if (v7)
  {
    v8 = [(SUUINavigationBarController *)self _attributedStringForButtonText:v5 type:v6 style:v7];
  }

  else
  {
    v9 = [v4 style];
    v8 = [(SUUINavigationBarController *)self _attributedStringForButtonText:v5 type:v6 style:v9];
  }

  return v8;
}

- (id)_attributedStringForButtonText:(id)a3 type:(int64_t)a4 style:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = SUUIViewElementFontWithStyle(v8);
  if (!v10)
  {
    if (a4)
    {
      v11 = 5;
    }

    else
    {
      v11 = 1;
    }

    v10 = SUUIFontPreferredFontForTextStyle(v11);
  }

  v12 = [(SUUINavigationBarViewElement *)self->_viewElement tintColor];
  v13 = SUUIViewElementPlainColorWithStyle(v8, v12);

  v14 = [v9 attributedStringWithDefaultFont:v10 foregroundColor:v13 style:v8];

  return v14;
}

- (double)_availableWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  v4 = [WeakRetained isViewLoaded];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_parentViewController);
    v6 = [v5 view];
    [v6 bounds];
    v8 = v7;
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
    v8 = v9;
  }

  return v8;
}

- (id)_barButtonItemWithButtonViewElement:(id)a3
{
  v4 = a3;
  buttonsController = self->_buttonsController;
  if (!buttonsController)
  {
    v6 = [[SUUINavigationBarButtonsController alloc] initWithNavigationBarViewElement:self->_viewElement];
    v7 = self->_buttonsController;
    self->_buttonsController = v6;

    v8 = self->_buttonsController;
    v9 = [(SUUINavigationBarController *)self _navigationBarContext];
    [(SUUINavigationBarSectionController *)v8 setContext:v9];

    buttonsController = self->_buttonsController;
  }

  v10 = [(SUUINavigationBarButtonsController *)buttonsController addButtonItemWithButtonViewElement:v4];

  return v10;
}

- (id)_barButtonItemWithSearchBarViewElement:(id)a3
{
  v4 = MEMORY[0x277D751E0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(SUUINavigationBarController *)self _addSearchBarControllerWithViewElement:v5];

  [(SUUINavigationBarController *)self _availableWidth];
  if (v8 <= 1000.0)
  {
    v9 = 150.0;
  }

  else
  {
    v9 = 200.0;
  }

  v10 = [v7 searchBar];
  [v10 setPretendsIsInBar:1];
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  [v10 sizeThatFits:{v9, 1.79769313e308}];
  [v10 setFrame:{v11, v12, v9, v13}];
  [v6 setCustomView:v10];

  return v6;
}

- (id)_barButtonItemWithViewElement:(id)a3
{
  v4 = a3;
  v5 = [v4 elementType];
  if (SUUIIKViewElementTypeIsButton(v5))
  {
    v6 = [(SUUINavigationBarController *)self _barButtonItemWithButtonViewElement:v4];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  if (v5 == 106)
  {
    v6 = [(SUUINavigationBarController *)self _barButtonItemWithSearchBarViewElement:v4];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)_buttonWithElement:(id)a3 width:(double)a4
{
  v6 = a3;
  v7 = [v6 buttonViewType];
  if (v7 == 9)
  {
    v9 = objc_alloc_init(SUUIStyledButton);
    [(SUUIStyledButton *)v9 setAlpha:1.0];
    [(SUUIStyledButton *)v9 setBorderStyle:0];
    v37 = 1;
    [(SUUIStyledButton *)v9 setButtonType:1];
    v38 = [(SUUINavigationBarController *)self _attributedStringForButton:v6];
    v39 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:v38];
    [(SUUIAttributedStringLayoutRequest *)v39 setWidth:a4];
    v40 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v39];
    [(SUUIStyledButton *)v9 setTitleLayout:v40];
    if (![(SUUIStyledButton *)v9 isUsingItemOfferAppearance])
    {
      v37 = [v6 isEnabled];
    }

    [(SUUIStyledButton *)v9 setEnabled:v37];
    v41 = [v6 style];
    v42 = SUUIViewElementPlainColorWithStyle(v41, 0);

    [(SUUIStyledButton *)v9 setTintColor:v42];
    goto LABEL_29;
  }

  v8 = v7;
  if (v7 != 6)
  {
    if (v7 == 5)
    {
      v9 = objc_alloc_init(SUUIStyledImageButton);
      v10 = [(SUUIStyledButton *)v9 imageView];
      v11 = [v6 buttonImage];
      v12 = [(SUUINavigationBarController *)self _resourceImageForImageElement:v11];
      [v10 setImage:v12];
      [v12 size];
      [v10 setImageSize:?];
      v13 = [v11 accessibilityText];
      if (!v13)
      {
        v13 = [v6 accessibilityText];
      }

      [(SUUIStyledButton *)v9 setAccessibilityLabel:v13];
      v14 = [v6 isEnabled];
      v15 = 0.4;
      if (v14)
      {
        v15 = 1.0;
      }

      [(SUUIStyledButton *)v9 setAlpha:v15];
      [(SUUIStyledButton *)v9 setEnabled:v14];
      v16 = [v6 style];
      v17 = SUUIViewElementPlainColorWithStyle(v16, 0);
      [(SUUIStyledButton *)v9 setTintColor:v17];

      goto LABEL_30;
    }

    v9 = objc_alloc_init(SUUIStyledButton);
    v38 = [(SUUINavigationBarController *)self _attributedStringForButton:v6];
    v39 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:v38];
    [(SUUIAttributedStringLayoutRequest *)v39 setWidth:a4];
    v43 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v39];
    [(SUUIStyledButton *)v9 setTitleLayout:v43];
    if (v8 == 13)
    {
      v44 = 7;
    }

    else
    {
      v44 = 0;
    }

    [(SUUIStyledButton *)v9 setButtonType:v44];
    v45 = [SUUIButtonBorderStyle alloc];
    v46 = [v6 style];
    v47 = [(SUUIButtonBorderStyle *)v45 initWithElementStyle:v46];

    [(SUUIStyledButton *)v9 setBorderStyle:v47];
    v48 = [v6 isEnabled];
    [(SUUIStyledButton *)v9 setEnabled:v48];
    v49 = 0.4;
    if (v48)
    {
      v49 = 1.0;
    }

    [(SUUIStyledButton *)v9 setAlpha:v49];

LABEL_29:
    goto LABEL_30;
  }

  v9 = objc_alloc_init(SUUIStyledButton);
  [(SUUIStyledButton *)v9 setBorderStyle:0];
  v18 = [v6 children];
  v19 = [v18 firstObject];

  v55 = v19;
  v20 = [v19 elementType];
  if (v20 == 138)
  {
    v21 = 5;
  }

  else
  {
    v21 = 6;
  }

  [(SUUIStyledButton *)v9 setButtonType:v21];
  v22 = [(SUUINavigationBarController *)self _attributedStringForButton:v6];
  v23 = [[SUUIAttributedStringLayoutRequest alloc] initWithAttributedString:v22];
  [(SUUIAttributedStringLayoutRequest *)v23 setWidth:a4];
  v24 = [[SUUIAttributedStringLayout alloc] initWithLayoutRequest:v23];
  [(SUUIStyledButton *)v9 setTitleLayout:v24];
  v25 = [v6 isEnabled];
  [(SUUIStyledButton *)v9 setEnabled:v25];
  v26 = 0.4;
  if (v25)
  {
    v26 = 1.0;
  }

  [(SUUIStyledButton *)v9 setAlpha:v26];
  v27 = [(SUUIStyledButton *)v9 imageView];
  v28 = [v6 buttonImage];
  v29 = [(SUUINavigationBarController *)self _resourceImageForImageElement:v28];
  [v27 setImage:v29];
  [v29 size];
  [v27 setImageSize:?];
  v56 = 0;
  v30 = [v28 style];
  v31 = SUUIViewElementMarginForStyle(v30, &v56);
  v33 = v32;
  v35 = v34;

  if (v56 == 1)
  {
    if (v20 == 138)
    {
      v36 = v33;
    }

    else
    {
      v36 = v35;
    }

    [(SUUIStyledButton *)v9 setImageTextPaddingInterior:v36];
    [(SUUIStyledButton *)v9 setImageYAdjustment:v31];
  }

LABEL_30:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = v9;
    v51 = [v6 buttonTitleStyle];
    v52 = v51;
    if (!v51)
    {
      v52 = [v6 style];
    }

    v53 = [v52 ikColor];
    -[SUUIStyledButton setUsesTintColor:](v50, "setUsesTintColor:", [v53 colorType] == 1);

    if (!v51)
    {
    }
  }

  return v9;
}

- (void)_fullyReloadSections:(id)a3 withNavigationItem:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        [v12 reloadAfterDocumentUpdateWithNavigationItem:v7];
        [v12 willAppearInNavigationBar];
      }

      v9 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v13 = [(SUUINavigationBarController *)self _navigationBarContext];
  v14 = [v13 textLayoutCache];
  [v14 commitLayoutRequests];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * j) reloadSectionViews];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (id)_navigationBarContext
{
  navigationBarContext = self->_navigationBarContext;
  if (!navigationBarContext)
  {
    v4 = objc_alloc_init(SUUINavigationBarContext);
    v5 = self->_navigationBarContext;
    self->_navigationBarContext = v4;

    [(SUUINavigationBarContext *)self->_navigationBarContext setClientContext:self->_clientContext];
    v6 = self->_navigationBarContext;
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 bounds];
    [(SUUINavigationBarContext *)v6 setMaximumNavigationBarWidth:v8];

    v9 = self->_navigationBarContext;
    WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
    [(SUUINavigationBarContext *)v9 setParentViewController:WeakRetained];

    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(SUUINavigationBarContext *)self->_navigationBarContext setOperationQueue:v11];
    v12 = [[SUUIResourceLoader alloc] initWithClientContext:self->_clientContext];
    [(SUUINavigationBarContext *)self->_navigationBarContext setResourceLoader:v12];
    v13 = objc_alloc_init(SUUILayoutCache);
    [(SUUILayoutCache *)v13 setDelegate:self];
    [(SUUINavigationBarContext *)self->_navigationBarContext setTextLayoutCache:v13];

    navigationBarContext = self->_navigationBarContext;
  }

  return navigationBarContext;
}

- (id)_resourceImageForImageElement:(id)a3
{
  v3 = a3;
  v4 = [v3 resourceName];
  v5 = v4;
  if (v4)
  {
    v6 = SUUIImageWithResourceName(v4);
    v7 = [v3 style];
    v8 = [v7 imageMaskColor];

    if (v8)
    {
      v9 = [v8 color];

      if (v9)
      {
        v10 = [v8 color];
        v11 = [v6 _flatImageWithColor:v10];

        v6 = v11;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_titleButtonAction:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:0x286AF1D80 object:self];
  [(SUUIButtonViewElement *)self->_titleButtonViewElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (SUUINavigationBarControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end