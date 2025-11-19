@interface CRKCardSectionViewLoader
@end

@implementation CRKCardSectionViewLoader

void __117___CRKCardSectionViewLoader__loadIdentifiedCardSectionViewProvidersFromCard_identifiedProviders_delegate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v31 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (!v5 && v6 && WeakRetained)
  {
    v29 = WeakRetained;
    [WeakRetained[3] addObject:v6];
    v9 = [v6 viewConfigurations];
    v10 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v9 count];
      v13 = *(v31 + 32);
      *buf = 134218242;
      v38 = v12;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_243247000, v11, OS_LOG_TYPE_DEFAULT, "Successfully loaded %lu card section views configurations from provider\n    Provider: %@", buf, 0x16u);
    }

    v30 = v6;
    v14 = [v6 providerIdentifier];
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          [v21 _setProviderIdentifier:v14];
          v22 = [CRKCardSectionViewController cardSectionViewControllerForViewConfiguration:v21];
          [v21 _setCardKitCardSectionViewController:v22];

          v23 = [v21 cardSection];

          if (v23)
          {
            v24 = [v21 cardSection];
            v25 = [v24 cardSectionIdentifier];
            [v15 setObject:v21 forKey:v25];
          }

          else
          {
            v26 = *MEMORY[0x277CF93F0];
            if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
            {
              v27 = *(v31 + 32);
              *buf = 138412546;
              v38 = v21;
              v39 = 2112;
              v40 = v27;
              _os_log_error_impl(&dword_243247000, v26, OS_LOG_TYPE_ERROR, "Card section view configuration does not have a card section; dropping\n    Configuration: %@\n    Provider: %@", buf, 0x16u);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v18);
    }

    v8 = v29;
    [v29[1] setObject:v15 forKey:v14];

    v6 = v30;
  }

  else
  {
    v28 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __117___CRKCardSectionViewLoader__loadIdentifiedCardSectionViewProvidersFromCard_identifiedProviders_delegate_completion___block_invoke_cold_1(v31, v28);
    }
  }

  *(*(*(v31 + 48) + 8) + 24) |= v5 == 0;
  dispatch_group_leave(*(v31 + 40));
}

void __117___CRKCardSectionViewLoader__loadIdentifiedCardSectionViewProvidersFromCard_identifiedProviders_delegate_completion___block_invoke_5(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = a1;
    obj = [*(a1 + 32) resolvedCardSections];
    v3 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v3)
    {
      v4 = v3;
      v22 = *v28;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v27 + 1) + 8 * i);
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v7 = WeakRetained[3];
          v8 = [v7 countByEnumeratingWithState:&v23 objects:v37 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v24;
            while (2)
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v24 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v23 + 1) + 8 * j);
                if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 vetoDisplayOfCardSection:v6])
                {
                  v13 = *MEMORY[0x277CF93F0];
                  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT))
                  {
                    v14 = v13;
                    v15 = [v12 providerIdentifier];
                    *buf = 138412802;
                    v32 = v6;
                    v33 = 2112;
                    v34 = v12;
                    v35 = 2112;
                    v36 = v15;
                    _os_log_impl(&dword_243247000, v14, OS_LOG_TYPE_DEFAULT, "Vetoing card section view display on behalf of provider\n    Card section: %@\n    Provider: %@\n    Provider identifier: %@", buf, 0x20u);
                  }

                  v16 = WeakRetained[2];
                  v17 = [v12 providerIdentifier];
                  v18 = [v6 cardSectionIdentifier];
                  [v16 setObject:v17 forKey:v18];

                  goto LABEL_20;
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v23 objects:v37 count:16];
              if (v9)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
        }

        v4 = [obj countByEnumeratingWithState:&v27 objects:v38 count:16];
      }

      while (v4);
    }

    objc_storeStrong(WeakRetained + 5, *(v20 + 32));
    v19 = *(v20 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, *(*(*(v20 + 48) + 8) + 24));
    }
  }
}

uint64_t __61___CRKCardSectionViewLoader_viewConfigurationForCardSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 32) delegate];
    v9 = [v8 cardSectionViewLoader:*(a1 + 32) compareCardSectionViewProviderOne:v5 providerTwo:v6];

    if (v9)
    {
      v10 = *MEMORY[0x277CF93F0];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (v9 == -1)
        {
          v11 = v6;
        }

        else
        {
          v11 = v5;
        }

        if (v9 == -1)
        {
          v12 = v5;
        }

        else
        {
          v12 = v6;
        }

        v13 = [v11 providerIdentifier];
        v14 = [v12 providerIdentifier];
        v15 = *(a1 + 40);
        v20 = 138412802;
        v21 = v13;
        v22 = 2112;
        v23 = v14;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_243247000, v10, OS_LOG_TYPE_DEFAULT, "Delegate prefers %@ to %@ in terms of display priority for card section: %@", &v20, 0x20u);
      }

      goto LABEL_24;
    }
  }

  else
  {
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [v5 displayPriorityForCardSection:*(a1 + 40)];
  }

  else
  {
    v16 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v6 displayPriorityForCardSection:*(a1 + 40)];
  }

  else
  {
    v17 = 0;
  }

  v18 = 1;
  if (v16 <= v17)
  {
    v18 = -1;
  }

  if (v16 == v17)
  {
    v9 = 0;
  }

  else
  {
    v9 = v18;
  }

LABEL_24:

  return v9;
}

BOOL __61___CRKCardSectionViewLoader_viewConfigurationForCardSection___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = [a2 providerIdentifier];
  v5 = [v3 objectForKey:v4];

  v6 = [*(a1 + 40) cardSectionIdentifier];
  v7 = [v5 objectForKey:v6];

  return v7 != 0;
}

void __117___CRKCardSectionViewLoader__loadIdentifiedCardSectionViewProvidersFromCard_identifiedProviders_delegate_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_243247000, a2, OS_LOG_TYPE_ERROR, "Failed to load card section views from provider\n    Provider: %@", &v3, 0xCu);
}

@end