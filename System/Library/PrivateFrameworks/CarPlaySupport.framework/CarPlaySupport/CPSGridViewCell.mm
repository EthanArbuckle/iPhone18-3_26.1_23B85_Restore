@interface CPSGridViewCell
+ (unint64_t)viewModelImageShapeFor:(id)for;
+ (unint64_t)viewModelStyleFor:(unint64_t)for;
- (void)configureWithListImageRowItem:(id)item action:(id)action titleAction:(id)titleAction bundleIdentifier:(id)identifier;
@end

@implementation CPSGridViewCell

- (void)configureWithListImageRowItem:(id)item action:(id)action titleAction:(id)titleAction bundleIdentifier:(id)identifier
{
  v114 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v110 = 0;
  objc_storeStrong(&v110, action);
  v109 = 0;
  objc_storeStrong(&v109, titleAction);
  v108 = 0;
  objc_storeStrong(&v108, identifier);
  v107 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  elements = [location[0] elements];
  v69 = [elements countByEnumeratingWithState:__b objects:v113 count:16];
  if (v69)
  {
    v62 = *__b[2];
    v63 = 0;
    v64 = v69;
    while (1)
    {
      v61 = v63;
      if (*__b[2] != v62)
      {
        objc_enumerationMutation(elements);
      }

      v106 = *(__b[1] + 8 * v63);
      v104 = 0;
      v103 = [CPSGridViewCell viewModelImageShapeFor:v106];
      if ([v106 isMemberOfClass:objc_opt_class()])
      {
        v6 = objc_opt_class();
        v102 = CPSSafeCast_24(v6, v106);
        v52 = objc_alloc(MEMORY[0x277CF9120]);
        identifier = [v102 identifier];
        title = [v102 title];
        subtitle = [v102 subtitle];
        image = [v102 image];
        v57 = v103;
        tintColor = [v102 tintColor];
        showsImageFullHeight = [v102 showsImageFullHeight];
        isEnabled = 0;
        if ([v102 isEnabled])
        {
          isEnabled = [location[0] isEnabled];
        }

        LOBYTE(v51) = 1;
        if ([v102 isEnabled])
        {
          v51 = [location[0] isEnabled] ^ 1;
        }

        v95 = MEMORY[0x277D85DD0];
        v96 = -1073741824;
        v97 = 0;
        v98 = __85__CPSGridViewCell_configureWithListImageRowItem_action_titleAction_bundleIdentifier___block_invoke;
        v99 = &unk_278D91D20;
        v101 = MEMORY[0x277D82BE0](v110);
        v100 = MEMORY[0x277D82BE0](v106);
        LOBYTE(v21) = showsImageFullHeight;
        LOBYTE(v22) = isEnabled & 1;
        BYTE1(v22) = v51 & 1;
        v7 = [v52 initWithId:identifier title:title subtitle:subtitle image:image imageShape:v57 backgroundColor:tintColor isTallArtwork:v21 accessorySystemImage:0 allowsTouches:v22 disabledAppearance:&v95 action:?];
        v8 = v104;
        v104 = v7;
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](tintColor);
        MEMORY[0x277D82BD8](image);
        MEMORY[0x277D82BD8](subtitle);
        MEMORY[0x277D82BD8](title);
        MEMORY[0x277D82BD8](identifier);
        objc_storeStrong(&v100, 0);
        objc_storeStrong(&v101, 0);
        objc_storeStrong(&v102, 0);
      }

      else if ([v106 isMemberOfClass:objc_opt_class()])
      {
        v9 = objc_opt_class();
        v94 = CPSSafeCast_24(v9, v106);
        v43 = objc_alloc(MEMORY[0x277CF9120]);
        identifier2 = [v94 identifier];
        title2 = [v94 title];
        subtitle2 = [v94 subtitle];
        image2 = [v94 image];
        v48 = v103;
        accessorySymbolName = [v94 accessorySymbolName];
        isEnabled2 = 0;
        if ([v94 isEnabled])
        {
          isEnabled2 = [location[0] isEnabled];
        }

        LOBYTE(v42) = 1;
        if ([v94 isEnabled])
        {
          v42 = [location[0] isEnabled] ^ 1;
        }

        v87 = MEMORY[0x277D85DD0];
        v88 = -1073741824;
        v89 = 0;
        v90 = __85__CPSGridViewCell_configureWithListImageRowItem_action_titleAction_bundleIdentifier___block_invoke_2;
        v91 = &unk_278D91D20;
        v93 = MEMORY[0x277D82BE0](v110);
        v92 = MEMORY[0x277D82BE0](v106);
        LOBYTE(v21) = 0;
        LOBYTE(v22) = isEnabled2 & 1;
        BYTE1(v22) = v42 & 1;
        v10 = [v43 initWithId:identifier2 title:title2 subtitle:subtitle2 image:image2 imageShape:v48 backgroundColor:v21 isTallArtwork:accessorySymbolName accessorySystemImage:v22 allowsTouches:&v87 disabledAppearance:? action:?];
        v11 = v104;
        v104 = v10;
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](accessorySymbolName);
        MEMORY[0x277D82BD8](image2);
        MEMORY[0x277D82BD8](subtitle2);
        MEMORY[0x277D82BD8](title2);
        MEMORY[0x277D82BD8](identifier2);
        objc_storeStrong(&v92, 0);
        objc_storeStrong(&v93, 0);
        objc_storeStrong(&v94, 0);
      }

      else if ([v106 isMemberOfClass:objc_opt_class()])
      {
        v12 = objc_opt_class();
        v86 = CPSSafeCast_24(v12, v106);
        v37 = objc_alloc(MEMORY[0x277CF9120]);
        identifier3 = [v86 identifier];
        image3 = [v86 image];
        v40 = v103;
        isEnabled3 = 0;
        if ([v86 isEnabled])
        {
          isEnabled3 = [location[0] isEnabled];
        }

        LOBYTE(v36) = 1;
        if ([v86 isEnabled])
        {
          v36 = [location[0] isEnabled] ^ 1;
        }

        v78 = MEMORY[0x277D85DD0];
        v79 = -1073741824;
        v80 = 0;
        v81 = __85__CPSGridViewCell_configureWithListImageRowItem_action_titleAction_bundleIdentifier___block_invoke_3;
        v82 = &unk_278D91D48;
        v83 = MEMORY[0x277D82BE0](v104);
        v85 = MEMORY[0x277D82BE0](v110);
        v84 = MEMORY[0x277D82BE0](v106);
        LOBYTE(v21) = 0;
        LOBYTE(v22) = isEnabled3 & 1;
        *(&v22 + 1) = v36 & 1;
        v13 = [v37 initWithId:identifier3 title:0 subtitle:0 image:image3 imageShape:v40 backgroundColor:v21 isTallArtwork:0 accessorySystemImage:v22 allowsTouches:&v78 disabledAppearance:? canStayPressed:? action:?];
        v14 = v104;
        v104 = v13;
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](image3);
        MEMORY[0x277D82BD8](identifier3);
        objc_storeStrong(&v84, 0);
        objc_storeStrong(&v85, 0);
        objc_storeStrong(&v83, 0);
        objc_storeStrong(&v86, 0);
      }

      else if ([v106 isMemberOfClass:objc_opt_class()])
      {
        v15 = objc_opt_class();
        v77 = CPSSafeCast_24(v15, v106);
        v29 = objc_alloc(MEMORY[0x277CF9120]);
        identifier4 = [v77 identifier];
        title3 = [v77 title];
        image4 = [v77 image];
        v33 = v103;
        accessorySymbolName2 = [v77 accessorySymbolName];
        isEnabled4 = 0;
        if ([v77 isEnabled])
        {
          isEnabled4 = [location[0] isEnabled];
        }

        LOBYTE(v28) = 1;
        if ([v77 isEnabled])
        {
          v28 = [location[0] isEnabled] ^ 1;
        }

        v70 = MEMORY[0x277D85DD0];
        v71 = -1073741824;
        v72 = 0;
        v73 = __85__CPSGridViewCell_configureWithListImageRowItem_action_titleAction_bundleIdentifier___block_invoke_4;
        v74 = &unk_278D91D20;
        v76 = MEMORY[0x277D82BE0](v110);
        v75 = MEMORY[0x277D82BE0](v106);
        LOBYTE(v21) = 0;
        LOBYTE(v22) = isEnabled4 & 1;
        BYTE1(v22) = v28 & 1;
        v16 = [v29 initWithId:identifier4 title:title3 subtitle:0 image:image4 imageShape:v33 backgroundColor:v21 isTallArtwork:accessorySymbolName2 accessorySystemImage:v22 allowsTouches:&v70 disabledAppearance:? action:?];
        v17 = v104;
        v104 = v16;
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](accessorySymbolName2);
        MEMORY[0x277D82BD8](image4);
        MEMORY[0x277D82BD8](title3);
        MEMORY[0x277D82BD8](identifier4);
        objc_storeStrong(&v75, 0);
        objc_storeStrong(&v76, 0);
        objc_storeStrong(&v77, 0);
      }

      [v107 addObject:v104];
      objc_storeStrong(&v104, 0);
      ++v63;
      if (v61 + 1 >= v64)
      {
        v63 = 0;
        v64 = [elements countByEnumeratingWithState:__b objects:v113 count:16];
        if (!v64)
        {
          break;
        }
      }
    }
  }

  *&v18 = MEMORY[0x277D82BD8](elements).n128_u64[0];
  v23 = selfCopy;
  text = [location[0] text];
  [(CPUIGridCell *)v23 setTitle:?];
  *&v19 = MEMORY[0x277D82BD8](text).n128_u64[0];
  [(CPUIGridCell *)selfCopy setTitleAction:v109, v19];
  -[CPUIGridViewBaseTableViewCell setGridViewStyle:](selfCopy, "setGridViewStyle:", +[CPSGridViewCell viewModelStyleFor:](CPSGridViewCell, "viewModelStyleFor:", [location[0] style]));
  v26 = selfCopy;
  v25 = objc_alloc(MEMORY[0x277CF9118]);
  v27 = [v25 initWithMaximumNumberOfLines:(objc_msgSend(location[0] condensedOptions:"allowsMultipleLines") & 1) == 0 imageGridOptions:0];
  [(CPUIGridViewBaseTableViewCell *)v26 setGridViewStyleOptions:?];
  *&v20 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  -[CPUIGridCell setItemEnabled:](selfCopy, "setItemEnabled:", [location[0] isEnabled]);
  [(CPUIGridCell *)selfCopy setViewModels:v107];
  objc_storeStrong(&v107, 0);
  objc_storeStrong(&v108, 0);
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&v110, 0);
  objc_storeStrong(location, 0);
}

double __85__CPSGridViewCell_configureWithListImageRowItem_action_titleAction_bundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) identifier];
  (*(v2 + 16))();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double __85__CPSGridViewCell_configureWithListImageRowItem_action_titleAction_bundleIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) identifier];
  (*(v2 + 16))();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double __85__CPSGridViewCell_configureWithListImageRowItem_action_titleAction_bundleIdentifier___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) depress];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) identifier];
  (*(v3 + 16))();
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

double __85__CPSGridViewCell_configureWithListImageRowItem_action_titleAction_bundleIdentifier___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) identifier];
  (*(v2 + 16))();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

+ (unint64_t)viewModelImageShapeFor:(id)for
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, for);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277D82BE0](location[0]);
    v8 = [v6 imageShape] != 1;
    v5 = 1;
    objc_storeStrong(&v6, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = MEMORY[0x277D82BE0](location[0]);
      v8 = [v4 imageShape] != 1;
      v5 = 1;
      objc_storeStrong(&v4, 0);
    }

    else
    {
      v8 = 0;
      v5 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v8;
}

+ (unint64_t)viewModelStyleFor:(unint64_t)for
{
  switch(for)
  {
    case 0uLL:
      return 2;
    case 1uLL:
      return 0;
    case 2uLL:
      return 2;
    case 3uLL:
      return 1;
    case 4uLL:
      return 3;
  }

  return v4;
}

@end