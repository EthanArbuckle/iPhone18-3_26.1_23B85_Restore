@interface INUICKPCardSectionViewProvider
+ (id)_viewConfigurationsFromAllocator:(id)allocator;
+ (void)requestInstanceFromDefaultAllocatorWithCard:(id)card delegate:(id)delegate reply:(id)reply;
+ (void)requestInstanceWithCard:(id)card delegate:(id)delegate allocator:(id)allocator reply:(id)reply;
- (BOOL)vetoDisplayOfCardSection:(id)section;
- (CRKCardSectionViewProviderDelegate)cardSectionViewProviderDelegate;
- (double)boundingWidthForViewControllerAllocator:(id)allocator;
@end

@implementation INUICKPCardSectionViewProvider

- (BOOL)vetoDisplayOfCardSection:(id)section
{
  sectionCopy = section;
  redundantInterfaceSections = [(INUICKPViewControllerAllocating *)self->_allocator redundantInterfaceSections];
  if (redundantInterfaceSections)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__INUICKPCardSectionViewProvider_vetoDisplayOfCardSection___block_invoke;
    v9[3] = &unk_2797EB8C0;
    v10 = sectionCopy;
    v6 = [redundantInterfaceSections indexOfObjectPassingTest:v9];

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

+ (void)requestInstanceFromDefaultAllocatorWithCard:(id)card delegate:(id)delegate reply:(id)reply
{
  replyCopy = reply;
  delegateCopy = delegate;
  cardCopy = card;
  v11 = objc_alloc_init(INUICKPSynchronousRemoteViewControllerAllocator);
  [(INUICKPSynchronousRemoteViewControllerAllocator *)v11 setSynchronousRemoteViewControllerClass:objc_opt_class()];
  [self requestInstanceWithCard:cardCopy delegate:delegateCopy allocator:v11 reply:replyCopy];
}

+ (void)requestInstanceWithCard:(id)card delegate:(id)delegate allocator:(id)allocator reply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  delegateCopy = delegate;
  allocatorCopy = allocator;
  replyCopy = reply;
  v14 = replyCopy;
  if (cardCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      interactions = [cardCopy interactions];
      anyObject = [interactions anyObject];

      if (allocatorCopy && anyObject)
      {
        v17 = objc_alloc_init(objc_opt_class());
        [v17 setCardSectionViewProviderDelegate:delegateCopy];
        if (objc_opt_respondsToSelector())
        {
          v18 = [delegateCopy cardSectionDisplayRequiresUserConsentForProvider:v17];
          v19 = *MEMORY[0x277CF93F0];
          if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
          {
            v20 = MEMORY[0x277CCABB0];
            v21 = v19;
            v22 = [v20 numberWithBool:v18];
            *buf = 138412802;
            selfCopy = self;
            v33 = 2112;
            v34 = delegateCopy;
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
          [allocatorCopy setDelegate:v17];
        }

        [allocatorCopy setRequiresUserConsent:v18];
        v23 = INUICKPInterfaceSectionsFromCard(cardCopy);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __83__INUICKPCardSectionViewProvider_requestInstanceWithCard_delegate_allocator_reply___block_invoke;
        v26[3] = &unk_2797EB8E8;
        selfCopy2 = self;
        v27 = allocatorCopy;
        v28 = v17;
        v29 = v14;
        v24 = v17;
        [v27 performAllocationsFromInteraction:anyObject initialInterfaceSections:v23 completion:v26];

LABEL_17:
        goto LABEL_18;
      }
    }

    else
    {
      anyObject = 0;
    }

    if (v14)
    {
      v14[2](v14, 0);
    }

    goto LABEL_17;
  }

  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, 0);
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

- (double)boundingWidthForViewControllerAllocator:(id)allocator
{
  cardSectionViewProviderDelegate = [(INUICKPCardSectionViewProvider *)self cardSectionViewProviderDelegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  cardSectionViewProviderDelegate2 = [(INUICKPCardSectionViewProvider *)self cardSectionViewProviderDelegate];
  [cardSectionViewProviderDelegate2 boundingWidthForProvider:self];
  v8 = v7;

  return v8;
}

+ (id)_viewConfigurationsFromAllocator:(id)allocator
{
  v30 = *MEMORY[0x277D85DE8];
  allocatorCopy = allocator;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [allocatorCopy allocatedViewControllers];
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
        viewControllersByInitialInterfaceSection = [allocatorCopy viewControllersByInitialInterfaceSection];
        v13 = [viewControllersByInitialInterfaceSection allKeysForObject:v10];
        firstObject = [v13 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          cardSection = [firstObject cardSection];
          [v11 setCardSection:cardSection];
        }

        else
        {
          v16 = *MEMORY[0x277CF93F0];
          if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v28 = firstObject;
            _os_log_error_impl(&dword_255550000, v16, OS_LOG_TYPE_ERROR, "Interface section is not a card interface section\n    Interface section: %@", buf, 0xCu);
          }
        }

        view = [v10 view];
        [v11 setCardSectionView:view];

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