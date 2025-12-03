@interface CPSImageRowCell
- (void)configureWithImageRowItem:(id)item selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator bundleIdentifier:(id)identifier;
@end

@implementation CPSImageRowCell

- (void)configureWithImageRowItem:(id)item selectGridItemBlock:(id)block selectTitleBlock:(id)titleBlock showActivityIndicator:(BOOL)indicator bundleIdentifier:(id)identifier
{
  v46 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v42 = 0;
  objc_storeStrong(&v42, block);
  v41 = 0;
  objc_storeStrong(&v41, titleBlock);
  indicatorCopy = indicator;
  v39 = 0;
  objc_storeStrong(&v39, identifier);
  v38 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  elements = [location[0] elements];
  v33 = [elements countByEnumeratingWithState:__b objects:v45 count:16];
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
        objc_enumerationMutation(elements);
      }

      v37 = *(__b[1] + 8 * v26);
      v19 = objc_alloc(MEMORY[0x277CF9130]);
      image = [v37 image];
      title = [v37 title];
      subtitle = [v37 subtitle];
      isEnabled = 0;
      if ([v37 isEnabled])
      {
        isEnabled = [location[0] isEnabled];
      }

      LOBYTE(v18) = 1;
      if ([v37 isEnabled])
      {
        v18 = [location[0] isEnabled] ^ 1;
      }

      v35 = [v19 initWithImage:image title:title subtitle:subtitle allowsTouches:isEnabled & 1 disabledAppearance:v18 & 1];
      MEMORY[0x277D82BD8](subtitle);
      MEMORY[0x277D82BD8](title);
      *&v7 = MEMORY[0x277D82BD8](image).n128_u64[0];
      [v38 addObject:{v35, v7}];
      objc_storeStrong(&v35, 0);
      ++v26;
      if (v24 + 1 >= v27)
      {
        v26 = 0;
        v27 = [elements countByEnumeratingWithState:__b objects:v45 count:16];
        if (!v27)
        {
          break;
        }
      }
    }
  }

  *&v8 = MEMORY[0x277D82BD8](elements).n128_u64[0];
  v16 = MEMORY[0x277CF9128];
  text = [location[0] text];
  v11 = v38;
  allowsMultipleLines = [location[0] allowsMultipleLines];
  v13 = v42;
  v14 = v41;
  v15 = indicatorCopy;
  LOBYTE(v10) = [location[0] isEnabled];
  v34 = [v16 configurationWithText:text itemsConfigurations:v11 allowsMultipleLines:allowsMultipleLines selectGridItemBlock:v13 selectTitleBlock:v14 showActivityIndicator:v15 enabled:v10 bundleIdentifier:v39];
  *&v9 = MEMORY[0x277D82BD8](text).n128_u64[0];
  [(CPUIImageRowCell *)selfCopy applyConfiguration:v34, v9];
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

@end