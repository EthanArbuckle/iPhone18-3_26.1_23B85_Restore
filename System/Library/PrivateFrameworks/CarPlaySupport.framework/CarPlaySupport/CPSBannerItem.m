@interface CPSBannerItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBannerItem:(id)a3;
- (CPSBannerItem)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 textVariants:(id)a5 detailTextVariants:(id)a6 attributedDetailTextVariants:(id)a7 imageSet:(id)a8 isManeuverItem:(BOOL)a9;
- (id)description;
@end

@implementation CPSBannerItem

- (CPSBannerItem)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 textVariants:(id)a5 detailTextVariants:(id)a6 attributedDetailTextVariants:(id)a7 imageSet:(id)a8 isManeuverItem:(BOOL)a9
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = 0;
  objc_storeStrong(&v33, a5);
  v32 = 0;
  objc_storeStrong(&v32, a6);
  v31 = 0;
  objc_storeStrong(&v31, a7);
  v30 = 0;
  objc_storeStrong(&v30, a8);
  v29 = a9;
  v9 = v36;
  v36 = 0;
  v28.receiver = v9;
  v28.super_class = CPSBannerItem;
  v36 = [(CPSBannerItem *)&v28 init];
  objc_storeStrong(&v36, v36);
  if (v36)
  {
    objc_storeStrong(&v36->_identifier, location[0]);
    v10 = [v34 copy];
    bundleIdentifier = v36->_bundleIdentifier;
    v36->_bundleIdentifier = v10;
    *&v12 = MEMORY[0x277D82BD8](bundleIdentifier).n128_u64[0];
    v13 = [v33 copy];
    textVariants = v36->_textVariants;
    v36->_textVariants = v13;
    *&v15 = MEMORY[0x277D82BD8](textVariants).n128_u64[0];
    v16 = [v32 copy];
    detailTextVariants = v36->_detailTextVariants;
    v36->_detailTextVariants = v16;
    *&v18 = MEMORY[0x277D82BD8](detailTextVariants).n128_u64[0];
    v19 = [v31 copy];
    attributedDetailTextVariants = v36->_attributedDetailTextVariants;
    v36->_attributedDetailTextVariants = v19;
    MEMORY[0x277D82BD8](attributedDetailTextVariants);
    objc_storeStrong(&v36->_imageSet, v30);
    v36->_isManeuverItem = v29;
  }

  v22 = MEMORY[0x277D82BE0](v36);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v36, 0);
  return v22;
}

- (BOOL)isEqualToBannerItem:(id)a3
{
  v52 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [(CPSBannerItem *)v52 textVariants];
  v49 = 0;
  v47 = 0;
  v45 = 0;
  v43 = 0;
  v41 = 0;
  if (v16 || (v50 = [location[0] textVariants], v49 = 1, v15 = 1, v50))
  {
    v48 = [(CPSBannerItem *)v52 textVariants];
    v47 = 1;
    v14 = 0;
    if (v48)
    {
      v46 = [location[0] textVariants];
      v45 = 1;
      v14 = 0;
      if (v46)
      {
        v44 = [(CPSBannerItem *)v52 textVariants];
        v43 = 1;
        v42 = [location[0] textVariants];
        v41 = 1;
        v14 = [(NSArray *)v44 isEqualToArray:?];
      }
    }

    v15 = v14;
  }

  if (v41)
  {
    MEMORY[0x277D82BD8](v42);
  }

  if (v43)
  {
    MEMORY[0x277D82BD8](v44);
  }

  if (v45)
  {
    MEMORY[0x277D82BD8](v46);
  }

  if (v47)
  {
    MEMORY[0x277D82BD8](v48);
  }

  if (v49)
  {
    MEMORY[0x277D82BD8](v50);
  }

  *&v3 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v13 = [(CPSBannerItem *)v52 detailTextVariants];
  v39 = 0;
  v37 = 0;
  v35 = 0;
  v33 = 0;
  v31 = 0;
  if (v13 || (v40 = [location[0] detailTextVariants], v39 = 1, v12 = 1, v40))
  {
    v38 = [(CPSBannerItem *)v52 detailTextVariants];
    v37 = 1;
    v11 = 0;
    if (v38)
    {
      v36 = [location[0] detailTextVariants];
      v35 = 1;
      v11 = 0;
      if (v36)
      {
        v34 = [(CPSBannerItem *)v52 detailTextVariants];
        v33 = 1;
        v32 = [location[0] detailTextVariants];
        v31 = 1;
        v11 = [(NSArray *)v34 isEqualToArray:?];
      }
    }

    v12 = v11;
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](v32);
  }

  if (v33)
  {
    MEMORY[0x277D82BD8](v34);
  }

  if (v35)
  {
    MEMORY[0x277D82BD8](v36);
  }

  if (v37)
  {
    MEMORY[0x277D82BD8](v38);
  }

  if (v39)
  {
    MEMORY[0x277D82BD8](v40);
  }

  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v10 = [(CPSBannerItem *)v52 attributedDetailTextVariants];
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  if (v10 || (v30 = [location[0] attributedDetailTextVariants], v29 = 1, v9 = 1, v30))
  {
    v28 = [(CPSBannerItem *)v52 attributedDetailTextVariants];
    v27 = 1;
    v8 = 0;
    if (v28)
    {
      v26 = [location[0] attributedDetailTextVariants];
      v25 = 1;
      v8 = 0;
      if (v26)
      {
        v24 = [(CPSBannerItem *)v52 attributedDetailTextVariants];
        v23 = 1;
        v22 = [location[0] attributedDetailTextVariants];
        v21 = 1;
        v8 = [(NSArray *)v24 isEqualToArray:?];
      }
    }

    v9 = v8;
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](v30);
  }

  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v19 = 0;
  v17 = 0;
  v7 = 0;
  if (v15)
  {
    v7 = 0;
    if (v12)
    {
      v7 = 0;
      if (v9)
      {
        v20 = [(CPSBannerItem *)v52 identifier];
        v19 = 1;
        v18 = [location[0] identifier];
        v17 = 1;
        v7 = [(NSUUID *)v20 isEqual:?];
      }
    }
  }

  v53 = v7 & 1;
  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  objc_storeStrong(location, 0);
  return v53 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = 0;
  if (v6 == location[0])
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(CPSBannerItem *)v6 isEqualToBannerItem:location[0]];
    }
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)description
{
  v13 = self;
  v12 = a2;
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CPSBannerItem;
  v9 = [(CPSBannerItem *)&v11 description];
  v8 = [(CPSBannerItem *)v13 textVariants];
  v7 = [(CPSBannerItem *)v13 detailTextVariants];
  v6 = [(CPSBannerItem *)v13 imageSet];
  v5 = [(CPSBannerItem *)v13 identifier];
  v4 = [(CPSBannerItem *)v13 bundleIdentifier];
  v10 = [v3 stringWithFormat:@"%@<textVariants: %@, detailTextVariants: %@, imageSet: %@, identifier: %@, bundleID: %@>", v9, v8, v7, v6, v5, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

  return v10;
}

@end