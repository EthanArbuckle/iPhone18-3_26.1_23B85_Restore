@interface CPSBannerItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBannerItem:(id)item;
- (CPSBannerItem)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier textVariants:(id)variants detailTextVariants:(id)textVariants attributedDetailTextVariants:(id)detailTextVariants imageSet:(id)set isManeuverItem:(BOOL)item;
- (id)description;
@end

@implementation CPSBannerItem

- (CPSBannerItem)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier textVariants:(id)variants detailTextVariants:(id)textVariants attributedDetailTextVariants:(id)detailTextVariants imageSet:(id)set isManeuverItem:(BOOL)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v34 = 0;
  objc_storeStrong(&v34, bundleIdentifier);
  v33 = 0;
  objc_storeStrong(&v33, variants);
  v32 = 0;
  objc_storeStrong(&v32, textVariants);
  v31 = 0;
  objc_storeStrong(&v31, detailTextVariants);
  v30 = 0;
  objc_storeStrong(&v30, set);
  itemCopy = item;
  v9 = selfCopy;
  selfCopy = 0;
  v28.receiver = v9;
  v28.super_class = CPSBannerItem;
  selfCopy = [(CPSBannerItem *)&v28 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_identifier, location[0]);
    v10 = [v34 copy];
    bundleIdentifier = selfCopy->_bundleIdentifier;
    selfCopy->_bundleIdentifier = v10;
    *&v12 = MEMORY[0x277D82BD8](bundleIdentifier).n128_u64[0];
    v13 = [v33 copy];
    textVariants = selfCopy->_textVariants;
    selfCopy->_textVariants = v13;
    *&v15 = MEMORY[0x277D82BD8](textVariants).n128_u64[0];
    v16 = [v32 copy];
    detailTextVariants = selfCopy->_detailTextVariants;
    selfCopy->_detailTextVariants = v16;
    *&v18 = MEMORY[0x277D82BD8](detailTextVariants).n128_u64[0];
    v19 = [v31 copy];
    attributedDetailTextVariants = selfCopy->_attributedDetailTextVariants;
    selfCopy->_attributedDetailTextVariants = v19;
    MEMORY[0x277D82BD8](attributedDetailTextVariants);
    objc_storeStrong(&selfCopy->_imageSet, v30);
    selfCopy->_isManeuverItem = itemCopy;
  }

  v22 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v22;
}

- (BOOL)isEqualToBannerItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  textVariants = [(CPSBannerItem *)selfCopy textVariants];
  v49 = 0;
  v47 = 0;
  v45 = 0;
  v43 = 0;
  v41 = 0;
  if (textVariants || (v50 = [location[0] textVariants], v49 = 1, v15 = 1, v50))
  {
    textVariants2 = [(CPSBannerItem *)selfCopy textVariants];
    v47 = 1;
    v14 = 0;
    if (textVariants2)
    {
      textVariants3 = [location[0] textVariants];
      v45 = 1;
      v14 = 0;
      if (textVariants3)
      {
        textVariants4 = [(CPSBannerItem *)selfCopy textVariants];
        v43 = 1;
        textVariants5 = [location[0] textVariants];
        v41 = 1;
        v14 = [(NSArray *)textVariants4 isEqualToArray:?];
      }
    }

    v15 = v14;
  }

  if (v41)
  {
    MEMORY[0x277D82BD8](textVariants5);
  }

  if (v43)
  {
    MEMORY[0x277D82BD8](textVariants4);
  }

  if (v45)
  {
    MEMORY[0x277D82BD8](textVariants3);
  }

  if (v47)
  {
    MEMORY[0x277D82BD8](textVariants2);
  }

  if (v49)
  {
    MEMORY[0x277D82BD8](v50);
  }

  *&v3 = MEMORY[0x277D82BD8](textVariants).n128_u64[0];
  detailTextVariants = [(CPSBannerItem *)selfCopy detailTextVariants];
  v39 = 0;
  v37 = 0;
  v35 = 0;
  v33 = 0;
  v31 = 0;
  if (detailTextVariants || (v40 = [location[0] detailTextVariants], v39 = 1, v12 = 1, v40))
  {
    detailTextVariants2 = [(CPSBannerItem *)selfCopy detailTextVariants];
    v37 = 1;
    v11 = 0;
    if (detailTextVariants2)
    {
      detailTextVariants3 = [location[0] detailTextVariants];
      v35 = 1;
      v11 = 0;
      if (detailTextVariants3)
      {
        detailTextVariants4 = [(CPSBannerItem *)selfCopy detailTextVariants];
        v33 = 1;
        detailTextVariants5 = [location[0] detailTextVariants];
        v31 = 1;
        v11 = [(NSArray *)detailTextVariants4 isEqualToArray:?];
      }
    }

    v12 = v11;
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](detailTextVariants5);
  }

  if (v33)
  {
    MEMORY[0x277D82BD8](detailTextVariants4);
  }

  if (v35)
  {
    MEMORY[0x277D82BD8](detailTextVariants3);
  }

  if (v37)
  {
    MEMORY[0x277D82BD8](detailTextVariants2);
  }

  if (v39)
  {
    MEMORY[0x277D82BD8](v40);
  }

  *&v4 = MEMORY[0x277D82BD8](detailTextVariants).n128_u64[0];
  attributedDetailTextVariants = [(CPSBannerItem *)selfCopy attributedDetailTextVariants];
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  if (attributedDetailTextVariants || (v30 = [location[0] attributedDetailTextVariants], v29 = 1, v9 = 1, v30))
  {
    attributedDetailTextVariants2 = [(CPSBannerItem *)selfCopy attributedDetailTextVariants];
    v27 = 1;
    v8 = 0;
    if (attributedDetailTextVariants2)
    {
      attributedDetailTextVariants3 = [location[0] attributedDetailTextVariants];
      v25 = 1;
      v8 = 0;
      if (attributedDetailTextVariants3)
      {
        attributedDetailTextVariants4 = [(CPSBannerItem *)selfCopy attributedDetailTextVariants];
        v23 = 1;
        attributedDetailTextVariants5 = [location[0] attributedDetailTextVariants];
        v21 = 1;
        v8 = [(NSArray *)attributedDetailTextVariants4 isEqualToArray:?];
      }
    }

    v9 = v8;
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](attributedDetailTextVariants5);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](attributedDetailTextVariants4);
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](attributedDetailTextVariants3);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](attributedDetailTextVariants2);
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](v30);
  }

  *&v5 = MEMORY[0x277D82BD8](attributedDetailTextVariants).n128_u64[0];
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
        identifier = [(CPSBannerItem *)selfCopy identifier];
        v19 = 1;
        identifier2 = [location[0] identifier];
        v17 = 1;
        v7 = [(NSUUID *)identifier isEqual:?];
      }
    }
  }

  v53 = v7 & 1;
  if (v17)
  {
    MEMORY[0x277D82BD8](identifier2);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](identifier);
  }

  objc_storeStrong(location, 0);
  return v53 & 1;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  v4 = 0;
  if (selfCopy == location[0])
  {
    v4 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(CPSBannerItem *)selfCopy isEqualToBannerItem:location[0]];
    }
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)description
{
  selfCopy = self;
  v12 = a2;
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CPSBannerItem;
  v9 = [(CPSBannerItem *)&v11 description];
  textVariants = [(CPSBannerItem *)selfCopy textVariants];
  detailTextVariants = [(CPSBannerItem *)selfCopy detailTextVariants];
  imageSet = [(CPSBannerItem *)selfCopy imageSet];
  identifier = [(CPSBannerItem *)selfCopy identifier];
  bundleIdentifier = [(CPSBannerItem *)selfCopy bundleIdentifier];
  v10 = [v3 stringWithFormat:@"%@<textVariants: %@, detailTextVariants: %@, imageSet: %@, identifier: %@, bundleID: %@>", v9, textVariants, detailTextVariants, imageSet, identifier, bundleIdentifier];
  MEMORY[0x277D82BD8](bundleIdentifier);
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](imageSet);
  MEMORY[0x277D82BD8](detailTextVariants);
  MEMORY[0x277D82BD8](textVariants);
  MEMORY[0x277D82BD8](v9);

  return v10;
}

@end