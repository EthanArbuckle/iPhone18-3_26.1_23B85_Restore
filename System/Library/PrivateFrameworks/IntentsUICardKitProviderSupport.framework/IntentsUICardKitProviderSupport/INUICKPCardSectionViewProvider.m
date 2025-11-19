@interface INUICKPCardSectionViewProvider
+ (id)_viewConfigurationsFromAllocator:(id)a3;
+ (void)requestInstanceFromDefaultAllocatorWithCard:(id)a3 delegate:(id)a4 reply:(id)a5;
+ (void)requestInstanceWithCard:(id)a3 delegate:(id)a4 allocator:(id)a5 reply:(id)a6;
- (BOOL)vetoDisplayOfCardSection:(id)a3;
- (CRKCardSectionViewProviderDelegate)cardSectionViewProviderDelegate;
- (double)boundingWidthForViewControllerAllocator:(id)a3;
@end

@implementation INUICKPCardSectionViewProvider

- (BOOL)vetoDisplayOfCardSection:(id)a3
{
  v4 = a3;
  v5 = [(INUICKPViewControllerAllocating *)self->_allocator redundantInterfaceSections];
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__INUICKPCardSectionViewProvider_vetoDisplayOfCardSection___block_invoke;
    v9[3] = &unk_2797EB8C0;
    v10 = v4;
    v6 = [v5 indexOfObjectPassingTest:v9];

    v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __59__INUICKPCardSectionViewProvider_vetoDisplayOfCardSection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 cardSection];
    v8 = [v7 cardSectionIdentifier];
    v9 = [*(a1 + 32) cardSectionIdentifier];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;

  return v10;
}

+ (void)requestInstanceFromDefaultAllocatorWithCard:(id)a3 delegate:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(INUICKPSynchronousRemoteViewControllerAllocator);
  [(INUICKPSynchronousRemoteViewControllerAllocator *)v11 setSynchronousRemoteViewControllerClass:objc_opt_class()];
  [a1 requestInstanceWithCard:v10 delegate:v9 allocator:v11 reply:v8];
}

+ (void)requestInstanceWithCard:(id)a3 delegate:(id)a4 allocator:(id)a5 reply:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [v10 interactions];
      v16 = [v15 anyObject];

      if (v12 && v16)
      {
        v17 = objc_alloc_init(objc_opt_class());
        [v17 setCardSectionViewProviderDelegate:v11];
        if (objc_opt_respondsToSelector())
        {
          v18 = [v11 cardSectionDisplayRequiresUserConsentForProvider:v17];
          v19 = *MEMORY[0x277CF93F0];
          if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
          {
            v20 = MEMORY[0x277CCABB0];
            v21 = v19;
            v22 = [v20 numberWithBool:v18];
            *buf = 138412802;
            v32 = a1;
            v33 = 2112;
            v34 = v11;
            v35 = 2112;
            v36 = v22;
            _os_log_impl(&dword_255550000, v21, OS_LOG_TYPE_INFO, "%@ respecting delegate %@ preference to require user consent: %@", buf, 0x20u);
          }
        }

        else
        {
          v18 = 1;
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 setDelegate:v17];
        }

        [v12 setRequiresUserConsent:v18];
        v23 = INUICKPInterfaceSectionsFromCard(v10);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __83__INUICKPCardSectionViewProvider_requestInstanceWithCard_delegate_allocator_reply___block_invoke;
        v26[3] = &unk_2797EB8E8;
        v30 = a1;
        v27 = v12;
        v28 = v17;
        v29 = v14;
        v24 = v17;
        [v27 performAllocationsFromInteraction:v16 initialInterfaceSections:v23 completion:v26];

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      v16 = 0;
    }

    if (v14)
    {
      v14[2](v14, 0);
    }

    goto LABEL_17;
  }

  if (v13)
  {
    (*(v13 + 2))(v13, 0);
  }

LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __83__INUICKPCardSectionViewProvider_requestInstanceWithCard_delegate_allocator_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 56) _viewConfigurationsFromAllocator:*(a1 + 32)];
  v3 = *(a1 + 48);
  if (v3)
  {
    if (v2)
    {
      [*(a1 + 40) setViewConfigurations:v2];
      [*(a1 + 40) setAllocator:*(a1 + 32)];
      v4 = *(a1 + 40);
      v5 = *(*(a1 + 48) + 16);
    }

    else
    {
      v5 = *(v3 + 16);
    }

    v5();
  }

  return MEMORY[0x2821F9730]();
}

- (double)boundingWidthForViewControllerAllocator:(id)a3
{
  v4 = [(INUICKPCardSectionViewProvider *)self cardSectionViewProviderDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  v6 = [(INUICKPCardSectionViewProvider *)self cardSectionViewProviderDelegate];
  [v6 boundingWidthForProvider:self];
  v8 = v7;

  return v8;
}

+ (id)_viewConfigurationsFromAllocator:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v3 allocatedViewControllers];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412290;
    v21 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = objc_alloc_init(MEMORY[0x277CF93B8]);
        v12 = [v3 viewControllersByInitialInterfaceSection];
        v13 = [v12 allKeysForObject:v10];
        v14 = [v13 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 cardSection];
          [v11 setCardSection:v15];
        }

        else
        {
          v16 = *MEMORY[0x277CF93F0];
          if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v28 = v14;
            _os_log_error_impl(&dword_255550000, v16, OS_LOG_TYPE_ERROR, "Interface section is not a card interface section\n    Interface section: %@", buf, 0xCu);
          }
        }

        v17 = [v10 view];
        [v11 setCardSectionView:v17];

        if ([v10 conformsToProtocol:&unk_2867795B8])
        {
          v18 = v10;
        }

        else
        {
          v18 = 0;
        }

        [v11 setCardSectionViewController:v18];
        [v4 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (CRKCardSectionViewProviderDelegate)cardSectionViewProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSectionViewProviderDelegate);

  return WeakRetained;
}

@end