@interface _CRKCardSectionViewLoader
- (BOOL)cardSectionShouldBeDisplayed:(id)displayed;
- (_CRKCardSectionViewLoader)init;
- (_CRKCardSectionViewLoaderDelegate)delegate;
- (id)_allViewConfigurations;
- (id)_viewConfigurationForCardSection:(id)section providerIdentifier:(id)identifier;
- (id)viewConfigurationForCardSection:(id)section;
- (void)_loadIdentifiedCardSectionViewProvidersFromCard:(id)card identifiedProviders:(id)providers delegate:(id)delegate completion:(id)completion;
@end

@implementation _CRKCardSectionViewLoader

- (_CRKCardSectionViewLoader)init
{
  v10.receiver = self;
  v10.super_class = _CRKCardSectionViewLoader;
  v2 = [(_CRKCardSectionViewLoader *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cardSectionViewConfigurationsByCardSectionIdentifiersByProviderIdentifiers = v2->_cardSectionViewConfigurationsByCardSectionIdentifiersByProviderIdentifiers;
    v2->_cardSectionViewConfigurationsByCardSectionIdentifiersByProviderIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    identifiedCardSectionViewProviders = v2->_identifiedCardSectionViewProviders;
    v2->_identifiedCardSectionViewProviders = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    vetoingProviderIdentifiersByVetoedCardSectionIdentifiers = v2->_vetoingProviderIdentifiersByVetoedCardSectionIdentifiers;
    v2->_vetoingProviderIdentifiersByVetoedCardSectionIdentifiers = v7;
  }

  return v2;
}

- (void)_loadIdentifiedCardSectionViewProvidersFromCard:(id)card identifiedProviders:(id)providers delegate:(id)delegate completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  providersCopy = providers;
  delegateCopy = delegate;
  completionCopy = completion;
  v12 = completionCopy;
  v23 = cardCopy;
  if (cardCopy)
  {
    v20 = completionCopy;
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 0;
    objc_initWeak(&location, self);
    v13 = dispatch_group_create();
    v14 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = cardCopy;
      _os_log_impl(&dword_243247000, v14, OS_LOG_TYPE_DEFAULT, "Loading card section view providers for card\n    Card: %@", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = providersCopy;
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v16)
    {
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            dispatch_group_enter(v13);
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __117___CRKCardSectionViewLoader__loadIdentifiedCardSectionViewProvidersFromCard_identifiedProviders_delegate_completion___block_invoke;
            v29[3] = &unk_278DA38D0;
            objc_copyWeak(&v32, &location);
            v29[4] = v19;
            v31 = v38;
            v30 = v13;
            [v19 requestIdentifiedCardSectionViewProviderForCard:v23 delegate:delegateCopy reply:v29];

            objc_destroyWeak(&v32);
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v16);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __117___CRKCardSectionViewLoader__loadIdentifiedCardSectionViewProvidersFromCard_identifiedProviders_delegate_completion___block_invoke_5;
    block[3] = &unk_278DA38F8;
    objc_copyWeak(&v28, &location);
    v25 = v23;
    v26 = v20;
    v27 = v38;
    dispatch_group_notify(v13, MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    _Block_object_dispose(v38, 8);
    v12 = v20;
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (id)viewConfigurationForCardSection:(id)section
{
  v32 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  if (sectionCopy && [(_CRKCardSectionViewLoader *)self cardSectionShouldBeDisplayed:sectionCopy])
  {
    allObjects = [(NSMutableSet *)self->_identifiedCardSectionViewProviders allObjects];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __61___CRKCardSectionViewLoader_viewConfigurationForCardSection___block_invoke;
    v24[3] = &unk_278DA3920;
    v24[4] = self;
    v6 = sectionCopy;
    v25 = v6;
    v7 = [allObjects sortedArrayUsingComparator:v24];

    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __61___CRKCardSectionViewLoader_viewConfigurationForCardSection___block_invoke_14;
    v21 = &unk_278DA3948;
    selfCopy = self;
    v8 = v6;
    v23 = v8;
    v9 = [v7 indexOfObjectWithOptions:2 passingTest:&v18];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
      {
        [(_CRKCardSectionViewLoader *)v8 viewConfigurationForCardSection:v10];
      }

      v11 = 0;
    }

    else
    {
      v12 = [v7 objectAtIndex:{v9, v18, v19, v20, v21, selfCopy}];
      providerIdentifier = [v12 providerIdentifier];

      v14 = [(NSMutableDictionary *)self->_cardSectionViewConfigurationsByCardSectionIdentifiersByProviderIdentifiers objectForKey:providerIdentifier];
      cardSectionIdentifier = [v8 cardSectionIdentifier];
      v11 = [v14 objectForKey:cardSectionIdentifier];

      v16 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v27 = v11;
        v28 = 2112;
        v29 = v8;
        v30 = 2112;
        v31 = providerIdentifier;
        _os_log_impl(&dword_243247000, v16, OS_LOG_TYPE_DEFAULT, "Found highest priority view configuration for card section\n    View configuration: %@\n    Card section: %@\n    Provider identifier: %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)cardSectionShouldBeDisplayed:(id)displayed
{
  vetoingProviderIdentifiersByVetoedCardSectionIdentifiers = self->_vetoingProviderIdentifiersByVetoedCardSectionIdentifiers;
  cardSectionIdentifier = [displayed cardSectionIdentifier];
  v5 = [(NSMutableDictionary *)vetoingProviderIdentifiersByVetoedCardSectionIdentifiers objectForKey:cardSectionIdentifier];
  LOBYTE(vetoingProviderIdentifiersByVetoedCardSectionIdentifiers) = v5 == 0;

  return vetoingProviderIdentifiersByVetoedCardSectionIdentifiers;
}

- (id)_allViewConfigurations
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_cardSectionViewConfigurationsByCardSectionIdentifiersByProviderIdentifiers allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        allValues2 = [*(*(&v11 + 1) + 8 * i) allValues];
        [v3 addObjectsFromArray:allValues2];
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_viewConfigurationForCardSection:(id)section providerIdentifier:(id)identifier
{
  v4 = 0;
  if (section && identifier)
  {
    cardSectionViewConfigurationsByCardSectionIdentifiersByProviderIdentifiers = self->_cardSectionViewConfigurationsByCardSectionIdentifiersByProviderIdentifiers;
    sectionCopy = section;
    v8 = [(NSMutableDictionary *)cardSectionViewConfigurationsByCardSectionIdentifiersByProviderIdentifiers objectForKey:identifier];
    cardSectionIdentifier = [sectionCopy cardSectionIdentifier];

    v4 = [v8 objectForKey:cardSectionIdentifier];
  }

  return v4;
}

- (_CRKCardSectionViewLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewConfigurationForCardSection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_243247000, a2, OS_LOG_TYPE_ERROR, "Couldn't find a view configuration for card section\n    Card section: %@", &v2, 0xCu);
}

@end