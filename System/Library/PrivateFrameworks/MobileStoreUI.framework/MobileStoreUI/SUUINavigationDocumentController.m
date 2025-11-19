@interface SUUINavigationDocumentController
- (BOOL)isStopPageBagValueOverrideEnabledForTab:(id)a3;
- (BOOL)isStopPageEnabledForTab:(id)a3;
- (SUUINavigationDocumentController)initWithNavigationController:(id)a3;
- (SUUINavigationDocumentDelegate)delegate;
- (id)_activeNavigationController;
- (id)asNilStringIfUndefined:(id)a3;
- (id)documents;
- (void)_applyDocumentReplacementForOldStackItem:(id)a3 atOldIndex:(int64_t)a4 withStackItem:(id)a5;
- (void)_ensureStackConsistencyForNavigationControllerOperation:(int64_t)a3 operationDidComplete:(BOOL)a4;
- (void)_handleStackDidChange;
- (void)_scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator:(id)a3;
- (void)_unloadAllStackItems;
- (void)ensureStackConsistencyForNavigationControllerOperation:(int64_t)a3 operationDidComplete:(BOOL)a4;
- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5;
- (void)popAllDocuments;
- (void)popDocument;
- (void)popToDocument:(id)a3;
- (void)popToRootDocument;
- (void)pushDocument:(id)a3 options:(id)a4;
- (void)removeDocument:(id)a3;
- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5;
- (void)setStackItems:(id)a3 animated:(BOOL)a4;
- (void)showStopPageForTab:(id)a3 replacementAppAdamId:(id)a4 title:(id)a5 subtitle:(id)a6 artwork:(id)a7 deeplinkUrl:(id)a8 force:(BOOL)a9 purchasesUrl:(id)a10 wishlistButtonTitle:(id)a11 showWishlistButton:(BOOL)a12;
@end

@implementation SUUINavigationDocumentController

- (id)_activeNavigationController
{
  moreNavigationController = self->_moreNavigationController;
  if (moreNavigationController)
  {
    return moreNavigationController;
  }

  moreNavigationController = self->_overrideNavigationController;
  if (moreNavigationController)
  {
    return moreNavigationController;
  }

  else
  {
    return self->_navigationController;
  }
}

- (SUUINavigationDocumentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SUUINavigationDocumentController)initWithNavigationController:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SUUINavigationDocumentController;
  v6 = [(SUUINavigationDocumentController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationController, a3);
    v8 = storeSemanticContentAttribute();
    v9 = [(UINavigationController *)v7->_navigationController view];
    [v9 setSemanticContentAttribute:v8];

    v10 = [(UINavigationController *)v7->_navigationController navigationBar];
    [v10 setSemanticContentAttribute:v8];

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackItems = v7->_stackItems;
    v7->_stackItems = v11;
  }

  return v7;
}

- (void)ensureStackConsistencyForNavigationControllerOperation:(int64_t)a3 operationDidComplete:(BOOL)a4
{
  v4 = a4;
  if ([(NSMutableArray *)self->_pendingNavigationStackEnsureConsistencyRequests count])
  {
    v11 = [[SUUINavigationStackEnsureConsistencyRequest alloc] initWithNavigationControllerOperation:a3 operationDidComplete:v4];
    [(NSMutableArray *)self->_pendingNavigationStackEnsureConsistencyRequests addObject:v11];
LABEL_5:

    return;
  }

  v7 = [(UINavigationController *)self->_navigationController transitionCoordinator];
  if (v7)
  {
    v11 = v7;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingNavigationStackEnsureConsistencyRequests = self->_pendingNavigationStackEnsureConsistencyRequests;
    self->_pendingNavigationStackEnsureConsistencyRequests = v8;

    v10 = [[SUUINavigationStackEnsureConsistencyRequest alloc] initWithNavigationControllerOperation:a3 operationDidComplete:v4];
    [(NSMutableArray *)self->_pendingNavigationStackEnsureConsistencyRequests addObject:v10];
    [(SUUINavigationDocumentController *)self _scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator:v11];

    goto LABEL_5;
  }

  [(SUUINavigationDocumentController *)self _ensureStackConsistencyForNavigationControllerOperation:a3 operationDidComplete:v4];
}

- (void)popAllDocuments
{
  [(SUUINavigationDocumentController *)self _unloadAllStackItems];
  moreNavigationController = self->_moreNavigationController;
  if (moreNavigationController || (moreNavigationController = self->_overrideNavigationController) != 0)
  {
    v4 = [(UINavigationController *)moreNavigationController popToRootViewControllerAnimated:0];
  }

  else
  {
    [(UINavigationController *)self->_navigationController setViewControllers:MEMORY[0x277CBEBF8] animated:0];
  }

  [(SUUINavigationDocumentController *)self _handleStackDidChange];
}

- (void)setStackItems:(id)a3 animated:(BOOL)a4
{
  v24 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(SUUINavigationDocumentController *)self _unloadAllStackItems];
  v25 = [(SUUINavigationDocumentController *)self clientContext];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 viewController];
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v15 = [SUUIDocumentContainerViewController alloc];
          v16 = [v12 document];
          v17 = [v12 presentationOptions];
          v14 = [(SUUIDocumentContainerViewController *)v15 initWithDocument:v16 options:v17 clientContext:v25];

          [v12 setViewController:v14];
          if (!v14)
          {
            continue;
          }
        }

        [(NSMutableArray *)self->_stackItems addObject:v12];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  moreNavigationController = self->_moreNavigationController;
  if (moreNavigationController || (moreNavigationController = self->_overrideNavigationController) != 0)
  {
    v19 = [(UINavigationController *)moreNavigationController viewControllers];
    v20 = [v19 firstObject];

    if (v20)
    {
      [v6 insertObject:v20 atIndex:0];
    }
  }

  v21 = [(SUUINavigationDocumentController *)self _activeNavigationController];
  v22 = [v6 firstObject];
  if ([v22 conformsToProtocol:&unk_286C12B68])
  {
    [v21 setTransitioningDelegate:v22];
  }

  v23 = [(SUUINavigationDocumentController *)self _activeNavigationController];
  [v23 setViewControllers:v6 animated:v24];

  [(SUUINavigationDocumentController *)self _handleStackDidChange];
}

- (id)documents
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_stackItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) document];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && (v11 = self->_stackItems, v25[0] = MEMORY[0x277D85DD0], v25[1] = 3221225472, v25[2] = __74__SUUINavigationDocumentController_insertDocument_beforeDocument_options___block_invoke, v25[3] = &unk_2798F61E0, v26 = v9, v12 = [(NSMutableArray *)v11 indexOfObjectPassingTest:v25], v26, v12 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v13 = [SUUIDocumentContainerViewController alloc];
    v14 = [(SUUINavigationDocumentController *)self clientContext];
    v15 = [(SUUIDocumentContainerViewController *)v13 initWithDocument:v8 options:v10 clientContext:v14];

    if (v15)
    {
      v16 = [[SUUIDocumentStackItem alloc] initWithDocument:v8 presentationOptions:v10];
      [(SUUIDocumentStackItem *)v16 setViewController:v15];
      v24 = [(SUUINavigationDocumentController *)self _activeNavigationController];
      v17 = [v24 viewControllers];
      v18 = [v17 mutableCopy];

      v23 = [(NSMutableArray *)self->_stackItems objectAtIndex:v12];
      v19 = [v23 viewController];
      v20 = [v18 indexOfObjectIdenticalTo:v19];

      stackItems = self->_stackItems;
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableArray *)stackItems addObject:v16];
        v22 = v24;
        [v24 pushViewController:v15 animated:{-[SUUIDocumentStackItem isAnimated](v16, "isAnimated")}];
      }

      else
      {
        [(NSMutableArray *)stackItems insertObject:v16 atIndex:v12];
        [v18 insertObject:v15 atIndex:v20];
        v22 = v24;
        [v24 setViewControllers:v18 animated:{-[SUUIDocumentStackItem isAnimated](v16, "isAnimated")}];
      }

      [(SUUINavigationDocumentController *)self _handleStackDidChange];
    }

    else
    {
      NSLog(&cfstr_NoViewControll_0.isa, v8, v10);
    }
  }

  else
  {
    [(SUUINavigationDocumentController *)self pushDocument:v8 options:v10];
  }
}

BOOL __74__SUUINavigationDocumentController_insertDocument_beforeDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)popDocument
{
  if ([(NSMutableArray *)self->_stackItems count])
  {
    v7 = [(NSMutableArray *)self->_stackItems lastObject];
    v3 = [v7 isAnimated];
    v4 = [v7 document];
    [v4 onUnload];

    [(NSMutableArray *)self->_stackItems removeLastObject];
    v5 = [(SUUINavigationDocumentController *)self _activeNavigationController];
    v6 = [v5 popViewControllerAnimated:v3];

    [(SUUINavigationDocumentController *)self _handleStackDidChange];
  }
}

- (void)popToRootDocument
{
  v3 = [(NSMutableArray *)self->_stackItems count];
  if (v3 >= 2)
  {
    v4 = v3 + 1;
    do
    {
      v5 = [(NSMutableArray *)self->_stackItems objectAtIndex:v4 - 2];
      v6 = [v5 document];
      [v6 onUnload];

      [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v4 - 2];
      --v4;
    }

    while (v4 > 2);
  }

  if ([(NSMutableArray *)self->_stackItems count])
  {
    v7 = [(NSMutableArray *)self->_stackItems firstObject];
    v8 = [(SUUINavigationDocumentController *)self _activeNavigationController];
    v9 = [v7 viewController];
    v10 = [v8 popToViewController:v9 animated:1];
  }

  [(SUUINavigationDocumentController *)self _handleStackDidChange];
}

- (void)showStopPageForTab:(id)a3 replacementAppAdamId:(id)a4 title:(id)a5 subtitle:(id)a6 artwork:(id)a7 deeplinkUrl:(id)a8 force:(BOOL)a9 purchasesUrl:(id)a10 wishlistButtonTitle:(id)a11 showWishlistButton:(BOOL)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a10;
  v25 = a11;
  objc_initWeak(location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __169__SUUINavigationDocumentController_showStopPageForTab_replacementAppAdamId_title_subtitle_artwork_deeplinkUrl_force_purchasesUrl_wishlistButtonTitle_showWishlistButton___block_invoke;
  block[3] = &unk_2798FA748;
  block[4] = self;
  v44 = a9;
  objc_copyWeak(&v43, location);
  v35 = v23;
  v36 = v24;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = v25;
  v45 = a12;
  v26 = v25;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  v31 = v18;
  v32 = v24;
  v33 = v23;
  dispatch_sync(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v43);
  objc_destroyWeak(location);
}

void __169__SUUINavigationDocumentController_showStopPageForTab_replacementAppAdamId_title_subtitle_artwork_deeplinkUrl_force_purchasesUrl_wishlistButtonTitle_showWishlistButton___block_invoke(uint64_t a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _activeNavigationController];
  v3 = [v2 viewControllers];

  if (*(a1 + 112) & 1) == 0 && [v3 count] && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass))
  {
    v6 = [*(a1 + 32) _activeNavigationController];
    v7 = [v6 popToRootViewControllerAnimated:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    v9 = [WeakRetained asNilStringIfUndefined:*(a1 + 40)];

    if (v9)
    {
      v30 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v9];
    }

    else
    {
      v30 = 0;
    }

    v10 = objc_loadWeakRetained((a1 + 104));
    v11 = [v10 asNilStringIfUndefined:*(a1 + 48)];

    v31 = v9;
    v32 = v3;
    v29 = v11;
    if (v11)
    {
      v33 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];
    }

    else
    {
      v33 = 0;
    }

    v12 = [_TtC13MobileStoreUI26SUUIStopPageViewController alloc];
    v27 = *(a1 + 56);
    v28 = objc_loadWeakRetained((a1 + 104));
    v13 = [v28 asNilStringIfUndefined:*(a1 + 64)];
    v14 = objc_loadWeakRetained((a1 + 104));
    v15 = [v14 asNilStringIfUndefined:*(a1 + 72)];
    v16 = objc_loadWeakRetained((a1 + 104));
    v17 = [v16 asNilStringIfUndefined:*(a1 + 80)];
    v18 = *(a1 + 88);
    v19 = objc_loadWeakRetained((a1 + 104));
    v20 = [v19 asNilStringIfUndefined:*(a1 + 96)];
    LOBYTE(v26) = *(a1 + 113);
    v21 = [(SUUIStopPageViewController *)v12 initForTabIdentifier:v27 replacementAppAdamId:v13 title:v15 subtitle:v17 artworkDictionary:v18 deeplinkUrl:v30 purchasesUrl:v33 wishlistButtonTitle:v20 showWishlistButton:v26 clientContext:*(*(a1 + 32) + 32)];

    v22 = [*(a1 + 32) _activeNavigationController];
    v23 = [v22 tabBarItem];
    [v21 setTabBarItem:v23];

    v24 = [*(a1 + 32) _activeNavigationController];
    v34[0] = v21;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [v24 setViewControllers:v25];

    v3 = v32;
  }
}

- (id)asNilStringIfUndefined:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"undefined"] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (BOOL)isStopPageEnabledForTab:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isStopPageEnabledForTabIdentifier:v3];

  return v4;
}

- (BOOL)isStopPageBagValueOverrideEnabledForTab:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() isStopPageBagValueOverrideEnabledForTabIdentifier:v3];

  return v4;
}

- (void)popToDocument:(id)a3
{
  v4 = a3;
  stackItems = self->_stackItems;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__SUUINavigationDocumentController_popToDocument___block_invoke;
  v16[3] = &unk_2798F61E0;
  v6 = v4;
  v17 = v6;
  v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v16];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    for (i = [(NSMutableArray *)self->_stackItems count]- 1; i > v8; --i)
    {
      v10 = [(NSMutableArray *)self->_stackItems objectAtIndex:i];
      v11 = [v10 document];
      [v11 onUnload];

      [(NSMutableArray *)self->_stackItems removeObjectAtIndex:i];
    }

    v12 = [(NSMutableArray *)self->_stackItems objectAtIndex:v8];
    v13 = [(SUUINavigationDocumentController *)self _activeNavigationController];
    v14 = [v12 viewController];
    v15 = [v13 popToViewController:v14 animated:{objc_msgSend(v12, "isAnimated")}];

    [(SUUINavigationDocumentController *)self _handleStackDidChange];
  }
}

BOOL __50__SUUINavigationDocumentController_popToDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)pushDocument:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [SUUIDocumentContainerViewController alloc];
  v9 = [(SUUINavigationDocumentController *)self clientContext];
  v10 = [(SUUIDocumentContainerViewController *)v8 initWithDocument:v6 options:v7 clientContext:v9];

  if (v10)
  {
    v11 = [[SUUIDocumentStackItem alloc] initWithDocument:v6 presentationOptions:v7];
    [(SUUIDocumentStackItem *)v11 setViewController:v10];
    [(NSMutableArray *)self->_stackItems addObject:v11];
    v12 = [(SUUINavigationDocumentController *)self _activeNavigationController];
    [(SUUIDocumentContainerViewController *)v10 preferredContentSize];
    if (*MEMORY[0x277CBF3A8] == v14 && *(MEMORY[0x277CBF3A8] + 8) == v13)
    {
      [v12 preferredContentSize];
      [(SUUIDocumentContainerViewController *)v10 setPreferredContentSize:?];
    }

    v16 = [v12 viewControllers];
    v17 = [v16 count];

    v18 = [v12 transitionCoordinator];
    [v12 pushViewController:v10 animated:{-[SUUIDocumentStackItem isAnimated](v11, "isAnimated")}];
    if (!v17)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__SUUINavigationDocumentController_pushDocument_options___block_invoke;
      aBlock[3] = &unk_2798F5AF8;
      v24 = v12;
      v25 = v10;
      v19 = _Block_copy(aBlock);
      v20 = v19;
      if (v18)
      {
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __57__SUUINavigationDocumentController_pushDocument_options___block_invoke_4;
        v21[3] = &unk_2798FA770;
        v22 = v19;
        [v18 animateAlongsideTransition:0 completion:v21];
      }

      else
      {
        v19[2](v19);
      }
    }

    [(SUUINavigationDocumentController *)self _handleStackDidChange];
  }

  else
  {
    NSLog(&cfstr_NoViewControll_0.isa, v6, v7);
  }
}

void __57__SUUINavigationDocumentController_pushDocument_options___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SUUINavigationDocumentController_pushDocument_options___block_invoke_2;
  v3[3] = &unk_2798F5AF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 _performBlockAfterCATransactionCommits:v3];
}

void __57__SUUINavigationDocumentController_pushDocument_options___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SUUINavigationDocumentController_pushDocument_options___block_invoke_3;
  v3[3] = &unk_2798F5AF8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 performWithoutAnimation:v3];
}

uint64_t __57__SUUINavigationDocumentController_pushDocument_options___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutSubviews];

  v3 = *(a1 + 40);

  return [v3 reloadData];
}

- (void)removeDocument:(id)a3
{
  v4 = a3;
  stackItems = self->_stackItems;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__SUUINavigationDocumentController_removeDocument___block_invoke;
  v15[3] = &unk_2798F61E0;
  v6 = v4;
  v16 = v6;
  v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v15];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [(NSMutableArray *)self->_stackItems objectAtIndex:v7];
    v10 = [(SUUINavigationDocumentController *)self _activeNavigationController];
    v11 = [v10 viewControllers];
    v12 = [v11 mutableCopy];

    v13 = [v9 viewController];
    [v12 removeObjectIdenticalTo:v13];

    v14 = [v9 document];
    [v14 onUnload];

    [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v8];
    [v10 setViewControllers:v12 animated:0];
    [(SUUINavigationDocumentController *)self _handleStackDidChange];
  }
}

BOOL __51__SUUINavigationDocumentController_removeDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && (stackItems = self->_stackItems, v31[0] = MEMORY[0x277D85DD0], v31[1] = 3221225472, v31[2] = __73__SUUINavigationDocumentController_replaceDocument_withDocument_options___block_invoke, v31[3] = &unk_2798F61E0, v32 = v8, v12 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v31], v32, v12 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v13 = [SUUIDocumentContainerViewController alloc];
    v14 = [(SUUINavigationDocumentController *)self clientContext];
    v15 = [(SUUIDocumentContainerViewController *)v13 initWithDocument:v9 options:v10 clientContext:v14];

    if (v15)
    {
      v26 = [[SUUIDocumentStackItem alloc] initWithDocument:v9 presentationOptions:v10];
      [(SUUIDocumentStackItem *)v26 setViewController:v15];
      v16 = [(NSMutableArray *)self->_stackItems objectAtIndex:v12];
      v17 = [(SUUINavigationDocumentController *)self _activeNavigationController];
      v18 = [v17 viewControllers];
      v19 = [v16 viewController];
      v25 = v18;
      v20 = [v18 indexOfObjectIdenticalTo:v19];

      if (v20 == 0x7FFFFFFFFFFFFFFFLL && ([v17 transitionCoordinator], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v22 = v21;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __73__SUUINavigationDocumentController_replaceDocument_withDocument_options___block_invoke_2;
        v27[3] = &unk_2798FA798;
        v27[4] = self;
        v28 = v16;
        v30 = v12;
        v23 = v26;
        v29 = v26;
        [v22 animateAlongsideTransition:0 completion:v27];
      }

      else
      {
        v24 = self;
        v23 = v26;
        [(SUUINavigationDocumentController *)v24 _applyDocumentReplacementForOldStackItem:v16 atOldIndex:v12 withStackItem:v26];
      }
    }

    else
    {
      NSLog(&cfstr_NoViewControll_0.isa, v9, v10);
    }
  }

  else
  {
    [(SUUINavigationDocumentController *)self pushDocument:v9 options:v10];
  }
}

BOOL __73__SUUINavigationDocumentController_replaceDocument_withDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_applyDocumentReplacementForOldStackItem:(id)a3 atOldIndex:(int64_t)a4 withStackItem:(id)a5
{
  v16 = a3;
  v8 = a5;
  v9 = [(SUUINavigationDocumentController *)self _activeNavigationController];
  v10 = [v9 viewControllers];
  v11 = [v10 mutableCopy];

  v12 = [v16 viewController];
  v13 = [v11 indexOfObjectIdenticalTo:v12];

  v14 = [v8 viewController];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_stackItems addObject:v8];
    [v9 pushViewController:v14 animated:{objc_msgSend(v8, "isAnimated")}];
  }

  else
  {
    v15 = [v16 document];
    [v15 onUnload];

    [(NSMutableArray *)self->_stackItems replaceObjectAtIndex:a4 withObject:v8];
    [v11 replaceObjectAtIndex:v13 withObject:v14];
    [v9 setViewControllers:v11 animated:{objc_msgSend(v8, "isAnimated")}];
  }

  [(SUUINavigationDocumentController *)self _handleStackDidChange];
}

- (void)_ensureStackConsistencyForNavigationControllerOperation:(int64_t)a3 operationDidComplete:(BOOL)a4
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = (a3 & 0xFFFFFFFFFFFFFFFDLL) == 1 && !a4;
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1 || a4)
  {
    v6 = a4;
    v8 = [(SUUINavigationDocumentController *)self _activeNavigationController];
    v9 = [v8 viewControllers];

    v28 = v6;
    if (v6)
    {
      v10 = [(NSMutableArray *)self->_stackItems count];
      if (v10)
      {
        v11 = v10 - 1;
        do
        {
          v12 = [(NSMutableArray *)self->_stackItems objectAtIndex:v11];
          v13 = [v12 viewController];
          v14 = [v9 indexOfObjectIdenticalTo:v13];

          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = [v12 document];
            [v15 onUnload];

            [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v11];
          }

          --v11;
        }

        while (v11 != -1);
      }
    }

    if (v4)
    {
      v16 = [(SUUINavigationDocumentController *)self delegate];
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        v27 = v16;
        v29 = [v9 count];
        v17 = 0;
        if (v29)
        {
          for (i = 0; i != v29; ++i)
          {
            v19 = [v9 objectAtIndex:i];
            if (i >= [(NSMutableArray *)self->_stackItems count])
            {
              v20 = 0;
            }

            else
            {
              v20 = [(NSMutableArray *)self->_stackItems objectAtIndex:i];
            }

            v21 = [v20 viewController];

            if (v19 != v21)
            {
              v22 = [[SUUIDocumentStackItem alloc] initWithDocument:0 presentationOptions:0];
              [(SUUIDocumentStackItem *)v22 setViewController:v19];
              [(NSMutableArray *)self->_stackItems insertObject:v22 atIndex:i];
              if (!v17)
              {
                v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              v34[0] = @"stackItem";
              v34[1] = @"viewControllerClass";
              v35[0] = v22;
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              v35[1] = v24;
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
              v26 = [v25 mutableCopy];
              [v17 addObject:v26];
            }
          }
        }

        v16 = v27;
        if ([v17 count])
        {
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __113__SUUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke;
          v30[3] = &unk_2798FA810;
          v31 = v27;
          v32 = self;
          v33 = v17;
          [v31 navigationDocumentController:self requestsAccessToAppContextUsingBlock:v30];
        }
      }
    }

    if (v28)
    {
      [(SUUINavigationDocumentController *)self _handleStackDidChange];
    }
  }
}

void __113__SUUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __113__SUUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke_2;
  v8[3] = &unk_2798FA7E8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v7 = v3;
  [v7 evaluate:v8 completionBlock:0];
}

void __113__SUUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) jsNavigationDocumentForNavigationDocumentController:*(a1 + 40) inContext:a2];
  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = *(a1 + 48);
    v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 objectForKey:@"viewControllerClass"];
          v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<document><nativeViewPlaceholderTemplate viewControllerClass=%@></nativeViewPlaceholderTemplate></document>", v9];
          v11 = [objc_alloc(MEMORY[0x277D1B078]) initWithAppContext:*(a1 + 56) xmlStr:v10 error:0];
          [v11 setNavigationDocument:v3];
          v12 = [objc_alloc(MEMORY[0x277D1B038]) initWithAppContext:*(a1 + 56) document:v11 owner:v3];
          [v8 setObject:v12 forKey:@"placeholderTemplateDocument"];
        }

        v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __113__SUUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke_3;
    v15[3] = &unk_2798FA7C0;
    v13 = *(a1 + 56);
    v16 = *(a1 + 48);
    [v13 evaluateDelegateBlockSync:v15];
  }
}

void __113__SUUINavigationDocumentController__ensureStackConsistencyForNavigationControllerOperation_operationDidComplete___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 objectForKey:{@"stackItem", v9}];
        v8 = [v6 objectForKey:@"placeholderTemplateDocument"];
        [v7 _setDocument:v8];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

- (void)_handleStackDidChange
{
  v6 = [(NSMutableArray *)self->_stackItems firstObject];
  v3 = [v6 viewController];
  v4 = [(UINavigationController *)self->_navigationController tabBarItem];
  [v3 setTabBarItem:v4];

  v5 = [(SUUINavigationDocumentController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 navigationDocumentStackDidChange:self];
  }
}

- (void)_scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __126__SUUINavigationDocumentController__scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator___block_invoke;
  v3[3] = &unk_2798F5A88;
  v3[4] = self;
  [a3 animateAlongsideTransition:0 completion:v3];
}

void __126__SUUINavigationDocumentController__scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __126__SUUINavigationDocumentController__scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator___block_invoke_2;
  v3[3] = &unk_2798F5BE8;
  v3[4] = *(a1 + 32);
  [v2 _performBlockAfterCATransactionCommits:v3];
}

void __126__SUUINavigationDocumentController__scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) transitionCoordinator];
  v3 = *(a1 + 32);
  v8 = v2;
  if (v2)
  {
    [v3 _scheduleFlushingPendingNavigationStackEnsureConsistencyRequestsWithTransitionCoordinator:v2];
  }

  else
  {
    for (i = v3[1]; [i count]; i = *(*(a1 + 32) + 8))
    {
      v5 = [*(*(a1 + 32) + 8) objectAtIndex:0];
      [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
      [*(a1 + 32) _ensureStackConsistencyForNavigationControllerOperation:objc_msgSend(v5 operationDidComplete:{"navigationControllerOperation"), objc_msgSend(v5, "operationDidComplete")}];
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;
  }
}

- (void)_unloadAllStackItems
{
  v3 = [(NSMutableArray *)self->_stackItems count];
  if (v3 >= 1)
  {
    v4 = v3 + 1;
    do
    {
      v5 = [(NSMutableArray *)self->_stackItems objectAtIndex:v4 - 2];
      v6 = [v5 document];
      [v6 onUnload];

      --v4;
    }

    while (v4 > 1);
  }

  stackItems = self->_stackItems;

  [(NSMutableArray *)stackItems removeAllObjects];
}

@end