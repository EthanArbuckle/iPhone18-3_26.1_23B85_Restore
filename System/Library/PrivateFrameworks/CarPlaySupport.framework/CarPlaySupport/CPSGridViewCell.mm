@interface CPSGridViewCell
+ (unint64_t)viewModelImageShapeFor:(id)a3;
+ (unint64_t)viewModelStyleFor:(unint64_t)a3;
- (void)configureWithListImageRowItem:(id)a3 action:(id)a4 titleAction:(id)a5 bundleIdentifier:(id)a6;
@end

@implementation CPSGridViewCell

- (void)configureWithListImageRowItem:(id)a3 action:(id)a4 titleAction:(id)a5 bundleIdentifier:(id)a6
{
  v114 = *MEMORY[0x277D85DE8];
  v112 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v110 = 0;
  objc_storeStrong(&v110, a4);
  v109 = 0;
  objc_storeStrong(&v109, a5);
  v108 = 0;
  objc_storeStrong(&v108, a6);
  v107 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  v68 = [location[0] elements];
  v69 = [v68 countByEnumeratingWithState:__b objects:v113 count:16];
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
        objc_enumerationMutation(v68);
      }

      v106 = *(__b[1] + 8 * v63);
      v104 = 0;
      v103 = [CPSGridViewCell viewModelImageShapeFor:v106];
      if ([v106 isMemberOfClass:objc_opt_class()])
      {
        v6 = objc_opt_class();
        v102 = CPSSafeCast_24(v6, v106);
        v52 = objc_alloc(MEMORY[0x277CF9120]);
        v53 = [v102 identifier];
        v54 = [v102 title];
        v55 = [v102 subtitle];
        v56 = [v102 image];
        v57 = v103;
        v58 = [v102 tintColor];
        v59 = [v102 showsImageFullHeight];
        v60 = 0;
        if ([v102 isEnabled])
        {
          v60 = [location[0] isEnabled];
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
        LOBYTE(v21) = v59;
        LOBYTE(v22) = v60 & 1;
        BYTE1(v22) = v51 & 1;
        v7 = [v52 initWithId:v53 title:v54 subtitle:v55 image:v56 imageShape:v57 backgroundColor:v58 isTallArtwork:v21 accessorySystemImage:0 allowsTouches:v22 disabledAppearance:&v95 action:?];
        v8 = v104;
        v104 = v7;
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v58);
        MEMORY[0x277D82BD8](v56);
        MEMORY[0x277D82BD8](v55);
        MEMORY[0x277D82BD8](v54);
        MEMORY[0x277D82BD8](v53);
        objc_storeStrong(&v100, 0);
        objc_storeStrong(&v101, 0);
        objc_storeStrong(&v102, 0);
      }

      else if ([v106 isMemberOfClass:objc_opt_class()])
      {
        v9 = objc_opt_class();
        v94 = CPSSafeCast_24(v9, v106);
        v43 = objc_alloc(MEMORY[0x277CF9120]);
        v44 = [v94 identifier];
        v45 = [v94 title];
        v46 = [v94 subtitle];
        v47 = [v94 image];
        v48 = v103;
        v49 = [v94 accessorySymbolName];
        v50 = 0;
        if ([v94 isEnabled])
        {
          v50 = [location[0] isEnabled];
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
        LOBYTE(v22) = v50 & 1;
        BYTE1(v22) = v42 & 1;
        v10 = [v43 initWithId:v44 title:v45 subtitle:v46 image:v47 imageShape:v48 backgroundColor:v21 isTallArtwork:v49 accessorySystemImage:v22 allowsTouches:&v87 disabledAppearance:? action:?];
        v11 = v104;
        v104 = v10;
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v49);
        MEMORY[0x277D82BD8](v47);
        MEMORY[0x277D82BD8](v46);
        MEMORY[0x277D82BD8](v45);
        MEMORY[0x277D82BD8](v44);
        objc_storeStrong(&v92, 0);
        objc_storeStrong(&v93, 0);
        objc_storeStrong(&v94, 0);
      }

      else if ([v106 isMemberOfClass:objc_opt_class()])
      {
        v12 = objc_opt_class();
        v86 = CPSSafeCast_24(v12, v106);
        v37 = objc_alloc(MEMORY[0x277CF9120]);
        v38 = [v86 identifier];
        v39 = [v86 image];
        v40 = v103;
        v41 = 0;
        if ([v86 isEnabled])
        {
          v41 = [location[0] isEnabled];
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
        LOBYTE(v22) = v41 & 1;
        *(&v22 + 1) = v36 & 1;
        v13 = [v37 initWithId:v38 title:0 subtitle:0 image:v39 imageShape:v40 backgroundColor:v21 isTallArtwork:0 accessorySystemImage:v22 allowsTouches:&v78 disabledAppearance:? canStayPressed:? action:?];
        v14 = v104;
        v104 = v13;
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v39);
        MEMORY[0x277D82BD8](v38);
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
        v30 = [v77 identifier];
        v31 = [v77 title];
        v32 = [v77 image];
        v33 = v103;
        v34 = [v77 accessorySymbolName];
        v35 = 0;
        if ([v77 isEnabled])
        {
          v35 = [location[0] isEnabled];
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
        LOBYTE(v22) = v35 & 1;
        BYTE1(v22) = v28 & 1;
        v16 = [v29 initWithId:v30 title:v31 subtitle:0 image:v32 imageShape:v33 backgroundColor:v21 isTallArtwork:v34 accessorySystemImage:v22 allowsTouches:&v70 disabledAppearance:? action:?];
        v17 = v104;
        v104 = v16;
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v34);
        MEMORY[0x277D82BD8](v32);
        MEMORY[0x277D82BD8](v31);
        MEMORY[0x277D82BD8](v30);
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
        v64 = [v68 countByEnumeratingWithState:__b objects:v113 count:16];
        if (!v64)
        {
          break;
        }
      }
    }
  }

  *&v18 = MEMORY[0x277D82BD8](v68).n128_u64[0];
  v23 = v112;
  v24 = [location[0] text];
  [(CPUIGridCell *)v23 setTitle:?];
  *&v19 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  [(CPUIGridCell *)v112 setTitleAction:v109, v19];
  -[CPUIGridViewBaseTableViewCell setGridViewStyle:](v112, "setGridViewStyle:", +[CPSGridViewCell viewModelStyleFor:](CPSGridViewCell, "viewModelStyleFor:", [location[0] style]));
  v26 = v112;
  v25 = objc_alloc(MEMORY[0x277CF9118]);
  v27 = [v25 initWithMaximumNumberOfLines:(objc_msgSend(location[0] condensedOptions:"allowsMultipleLines") & 1) == 0 imageGridOptions:0];
  [(CPUIGridViewBaseTableViewCell *)v26 setGridViewStyleOptions:?];
  *&v20 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  -[CPUIGridCell setItemEnabled:](v112, "setItemEnabled:", [location[0] isEnabled]);
  [(CPUIGridCell *)v112 setViewModels:v107];
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

+ (unint64_t)viewModelImageShapeFor:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

+ (unint64_t)viewModelStyleFor:(unint64_t)a3
{
  switch(a3)
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