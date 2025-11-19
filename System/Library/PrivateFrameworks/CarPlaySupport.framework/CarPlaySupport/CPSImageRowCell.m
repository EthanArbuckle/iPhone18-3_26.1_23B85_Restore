@interface CPSImageRowCell
- (void)configureWithImageRowItem:(id)a3 selectGridItemBlock:(id)a4 selectTitleBlock:(id)a5 showActivityIndicator:(BOOL)a6 bundleIdentifier:(id)a7;
@end

@implementation CPSImageRowCell

- (void)configureWithImageRowItem:(id)a3 selectGridItemBlock:(id)a4 selectTitleBlock:(id)a5 showActivityIndicator:(BOOL)a6 bundleIdentifier:(id)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = a6;
  v39 = 0;
  objc_storeStrong(&v39, a7);
  v38 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  v32 = [location[0] elements];
  v33 = [v32 countByEnumeratingWithState:__b objects:v45 count:16];
  if (v33)
  {
    v25 = *__b[2];
    v26 = 0;
    v27 = v33;
    while (1)
    {
      v24 = v26;
      if (*__b[2] != v25)
      {
        objc_enumerationMutation(v32);
      }

      v37 = *(__b[1] + 8 * v26);
      v19 = objc_alloc(MEMORY[0x277CF9130]);
      v20 = [v37 image];
      v21 = [v37 title];
      v22 = [v37 subtitle];
      v23 = 0;
      if ([v37 isEnabled])
      {
        v23 = [location[0] isEnabled];
      }

      LOBYTE(v18) = 1;
      if ([v37 isEnabled])
      {
        v18 = [location[0] isEnabled] ^ 1;
      }

      v35 = [v19 initWithImage:v20 title:v21 subtitle:v22 allowsTouches:v23 & 1 disabledAppearance:v18 & 1];
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v21);
      *&v7 = MEMORY[0x277D82BD8](v20).n128_u64[0];
      [v38 addObject:{v35, v7}];
      objc_storeStrong(&v35, 0);
      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [v32 countByEnumeratingWithState:__b objects:v45 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  *&v8 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  v16 = MEMORY[0x277CF9128];
  v17 = [location[0] text];
  v11 = v38;
  v12 = [location[0] allowsMultipleLines];
  v13 = v42;
  v14 = v41;
  v15 = v40;
  LOBYTE(v10) = [location[0] isEnabled];
  v34 = [v16 configurationWithText:v17 itemsConfigurations:v11 allowsMultipleLines:v12 selectGridItemBlock:v13 selectTitleBlock:v14 showActivityIndicator:v15 enabled:v10 bundleIdentifier:v39];
  *&v9 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [(CPUIImageRowCell *)v44 applyConfiguration:v34, v9];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

@end