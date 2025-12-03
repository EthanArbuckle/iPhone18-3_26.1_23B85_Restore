@interface HUServicePlaceholderItemModule
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUServicePlaceholderItemModule

- (id)buildItemProviders
{
  v23[6] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = +[HUAddAccessoryUtilities addAccessoryLocalizationStringKey];
  v5 = [v3 stringWithFormat:@"HFStaticItem-%@", v4];

  v6 = objc_alloc(MEMORY[0x277D14B38]);
  v22[0] = *MEMORY[0x277D13F60];
  v7 = +[HUAddAccessoryUtilities addAccessoryString];
  v8 = *MEMORY[0x277D13FD8];
  v23[0] = v7;
  v23[1] = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277D13E88];
  v22[1] = v8;
  v22[2] = v9;
  v10 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"plus"];
  v11 = *MEMORY[0x277D13FB8];
  v23[2] = v10;
  v23[3] = MEMORY[0x277CBEC28];
  v12 = *MEMORY[0x277D14058];
  v22[3] = v11;
  v22[4] = v12;
  v23[4] = v5;
  v22[5] = *MEMORY[0x277D13D48];
  v23[5] = objc_opt_class();
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  v14 = [v6 initWithResults:v13];

  v15 = objc_alloc(MEMORY[0x277D14B40]);
  v16 = [MEMORY[0x277CBEB98] setWithObject:v14];
  v17 = [v15 initWithItems:v16];
  [(HUServicePlaceholderItemModule *)self setPlaceholderItemProvider:v17];

  v18 = MEMORY[0x277CBEB98];
  placeholderItemProvider = [(HUServicePlaceholderItemModule *)self placeholderItemProvider];
  v20 = [v18 setWithObject:placeholderItemProvider];

  return v20;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"servicePlaceholder"];
  placeholderItemProvider = [(HUServicePlaceholderItemModule *)self placeholderItemProvider];
  items = [placeholderItemProvider items];
  allObjects = [items allObjects];

  [v6 setItems:allObjects];
  v10 = MEMORY[0x277D14778];
  v14[0] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [v10 filterSections:v11 toDisplayedItems:itemsCopy];

  return v12;
}

@end