@interface HUNameItemModule
- (HUNameItemModule)init;
- (HUNameItemModule)initWithItemUpdater:(id)a3 sourceServiceLikeItem:(id)a4 itemBuilder:(id)a5;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)itemProviders;
@end

@implementation HUNameItemModule

- (HUNameItemModule)initWithItemUpdater:(id)a3 sourceServiceLikeItem:(id)a4 itemBuilder:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HUNameItemModule;
  v10 = [(HFItemModule *)&v13 initWithItemUpdater:a3];
  v11 = v10;
  if (v10)
  {
    [(HUNameItemModule *)v10 setSourceItem:v8];
    [(HUNameItemModule *)v11 setSourceItemBuilder:v9];
  }

  return v11;
}

- (HUNameItemModule)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithItemUpdater_sourceServiceLikeItem_itemBuilder_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUNameItemModule.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HUNameItemModule init]", v5}];

  return 0;
}

- (id)itemProviders
{
  v3 = [(HUNameItemModule *)self itemProvider];
  if (!v3 || (v4 = v3, [(HUNameItemModule *)self nameAndIconItem], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = objc_alloc(MEMORY[0x277D14C30]);
    v7 = [(HUNameItemModule *)self sourceItem];
    v8 = [v7 copy];
    v9 = [v6 initWithSourceItem:v8 transformationBlock:&__block_literal_global_172];
    [(HUNameItemModule *)self setNameAndIconItem:v9];

    v10 = MEMORY[0x277CBEB98];
    v11 = [(HUNameItemModule *)self nameAndIconItem];
    v12 = [v10 na_setWithSafeObject:v11];
    [(HUNameItemModule *)self setItems:v12];

    v13 = objc_alloc(MEMORY[0x277D14B40]);
    v14 = [(HUNameItemModule *)self items];
    v15 = [v13 initWithItems:v14];
    [(HUNameItemModule *)self setItemProvider:v15];
  }

  v16 = MEMORY[0x277CBEB98];
  v17 = [(HUNameItemModule *)self itemProvider];
  v18 = [v16 na_setWithSafeObject:v17];

  return v18;
}

id __33__HUNameItemModule_itemProviders__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *MEMORY[0x277D13DA8];
  v19[0] = *MEMORY[0x277D13F60];
  v19[1] = v4;
  v5 = *MEMORY[0x277D13EA0];
  v19[2] = *MEMORY[0x277D13E88];
  v19[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:{4, 0}];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v2 objectForKeyedSubscript:v11];
        [v3 na_safeSetObject:v12 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v2 objectForKeyedSubscript:*MEMORY[0x277D14148]];
  [v3 na_safeSetObject:v13 forKey:*MEMORY[0x277D13EA8]];

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:@"HUNameItemModuleSectionIdentifier"];
  v7 = [(HUNameItemModule *)self nameAndIconItem];
  v16[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v6 setItems:v8];

  v9 = [(HUNameItemModule *)self sourceItem];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  if (v7)
  {
    v10 = HULocalizedWiFiString(@"HUNetworkRouterNameSectionFooter");
    [v6 setFooterTitle:v10];
  }

  v11 = MEMORY[0x277D14778];
  v15 = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v13 = [v11 filterSections:v12 toDisplayedItems:v5];

  return v13;
}

@end