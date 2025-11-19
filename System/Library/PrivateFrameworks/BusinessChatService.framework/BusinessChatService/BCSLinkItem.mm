@interface BCSLinkItem
+ (id)linkItemsFromLinkItemModels:(id)a3;
- (BCSBusinessLinkContentItem)businessLinkContentItem;
- (BCSLinkItem)initWithLinkItemModel:(id)a3 expirationDate:(id)a4 localeHelper:(id)a5;
- (BCSLinkItem)initWithLinkItemModel:(id)a3 localeHelper:(id)a4;
- (BOOL)isPoweredBy;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSDictionary)debugInfo;
- (NSDictionary)mapIconStyleAttributes;
- (NSNumber)mapItemMUID;
- (NSString)bundleID;
- (NSString)fullHash;
- (NSString)heroImageURLString;
- (NSString)iconImageURLString;
- (NSString)language;
- (NSString)subtitle;
- (NSString)title;
- (NSURL)heroImageURL;
- (NSURL)iconImageURL;
- (NSURL)linkURL;
- (NSURL)redirectURL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)heroImageURLForSpecifier:(id *)a3;
- (id)iconImageURLForSpecifier:(id *)a3;
- (id)itemIdentifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)action;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)setDebugInfo:(id)a3;
@end

@implementation BCSLinkItem

+ (id)linkItemsFromLinkItemModels:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [BCSLinkItem alloc];
        v12 = objc_alloc_init(BCSLocaleHelper);
        v13 = [(BCSLinkItem *)v11 initWithLinkItemModel:v10 localeHelper:v12, v17];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BCSLinkItem)initWithLinkItemModel:(id)a3 localeHelper:(id)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 distantPast];
  v10 = [(BCSLinkItem *)self initWithLinkItemModel:v8 expirationDate:v9 localeHelper:v7];

  return v10;
}

- (BCSLinkItem)initWithLinkItemModel:(id)a3 expirationDate:(id)a4 localeHelper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BCSLinkItem;
  v12 = [(BCSItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_model, a3);
    objc_storeStrong(&v13->_localeHelper, a5);
    [(BCSItem *)v13 setExpirationDate:v10];
  }

  return v13;
}

- (NSDictionary)debugInfo
{
  v2 = [(BCSLinkItem *)self model];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 96);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setDebugInfo:(id)a3
{
  v4 = a3;
  selfa = [(BCSLinkItem *)self model];
  if (selfa)
  {
    objc_setProperty_nonatomic_copy(selfa, v5, v4, 96);
  }
}

- (id)heroImageURLForSpecifier:(id *)a3
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = [(BCSLinkItem *)self heroImageURLString];
  v6 = *&a3->var2;
  v9[0] = *&a3->var0;
  v9[1] = v6;
  v7 = [(NSURL *)v4 bcs_templatedImageURLWithString:v5 imageSpecifier:v9];

  return v7;
}

- (id)iconImageURLForSpecifier:(id *)a3
{
  v4 = MEMORY[0x277CBEBC0];
  v5 = [(BCSLinkItem *)self iconImageURLString];
  v6 = *&a3->var2;
  v9[0] = *&a3->var0;
  v9[1] = v6;
  v7 = [(NSURL *)v4 bcs_templatedImageURLWithString:v5 imageSpecifier:v9];

  return v7;
}

- (id)itemIdentifier
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 itemIdentifier];

  return v3;
}

- (int64_t)truncatedHash
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 truncatedHash];

  return v3;
}

- (int64_t)type
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 type];

  return v3;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSLinkItem *)self model];
  v6 = [v5 matchesItemIdentifying:v4];

  return v6;
}

- (BCSBusinessLinkContentItem)businessLinkContentItem
{
  v2 = self;
  v54 = *MEMORY[0x277D85DE8];
  v3 = [(BCSLinkItem *)self localeHelper];
  v4 = [v3 currentLocale];
  v5 = [(NSLocale *)v4 language];
  if (v2)
  {
    cachedContentItemLanguage = v2->_cachedContentItemLanguage;
  }

  else
  {
    cachedContentItemLanguage = 0;
  }

  v7 = cachedContentItemLanguage;
  if ([v5 isEqualToString:v7])
  {
    if (v2)
    {
      cachedContentItem = v2->_cachedContentItem;
    }

    else
    {
      cachedContentItem = 0;
    }

    if (cachedContentItem)
    {
      if (v2)
      {
        v9 = v2->_cachedContentItem;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      goto LABEL_46;
    }
  }

  else
  {
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  if (v2)
  {
    v11 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v12 = [(BCSLinkItem *)v2 model];
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 88);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v49;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [[BCSBusinessLinkContentItem alloc] initWithBusinessLinkContentItemModel:?];
          [v11 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v17);
    }

    v21 = [v11 copy];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v21 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v22)
  {
    v23 = v22;
    obj = v21;
    v43 = 0;
    v24 = *v45;
LABEL_24:
    v25 = 0;
    while (1)
    {
      if (*v45 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v44 + 1) + 8 * v25);
      v27 = [v26 language];
      v28 = v2;
      v29 = [(BCSLinkItem *)v2 localeHelper];
      v30 = [v29 currentLocale];
      v31 = [(NSLocale *)v30 language];
      v32 = [v27 isEqualToString:v31];

      if (v32)
      {
        break;
      }

      if ([v26 isDefault])
      {
        v33 = v26;

        v43 = v33;
      }

      v2 = v28;
      if (v23 == ++v25)
      {
        v21 = obj;
        v23 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v23)
        {
          goto LABEL_24;
        }

        goto LABEL_36;
      }
    }

    v34 = v26;

    v2 = v28;
    if (v34)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v43 = 0;
LABEL_36:
  }

  v35 = v43;
  v34 = v35;
  if (v35)
  {
    v43 = v35;
LABEL_39:
    if (v2)
    {
      objc_storeStrong(&v2->_cachedContentItem, v34);
    }

    v36 = [(BCSLinkItem *)v2 localeHelper];
    v37 = [v36 currentLocale];
    v38 = [(NSLocale *)v37 language];
    if (v2)
    {
      objc_storeStrong(&v2->_cachedContentItemLanguage, v38);
    }

    v39 = v43;
  }

  else
  {
    v39 = 0;
  }

  v10 = v34;

LABEL_46:
  v40 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSURL)linkURL
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 linkURL];

  return v3;
}

- (NSString)fullHash
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 fullHash];

  return v3;
}

- (NSString)bundleID
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 bundleID];

  return v3;
}

- (NSString)heroImageURLString
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 heroImageURLString];

  return v3;
}

- (NSString)iconImageURLString
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 iconImageURLString];

  return v3;
}

- (NSURL)redirectURL
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 redirectURL];

  return v3;
}

- (int64_t)action
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 action];

  return v3;
}

- (BOOL)isPoweredBy
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 isPoweredBy];

  return v3;
}

- (NSDictionary)mapIconStyleAttributes
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 mapIconStyleAttributes];

  return v3;
}

- (NSNumber)mapItemMUID
{
  v2 = [(BCSLinkItem *)self model];
  v3 = [v2 mapItemMUID];

  return v3;
}

- (NSString)title
{
  v2 = [(BCSLinkItem *)self businessLinkContentItem];
  v3 = [v2 title];

  return v3;
}

- (NSString)subtitle
{
  v2 = [(BCSLinkItem *)self businessLinkContentItem];
  v3 = [v2 subtitle];

  return v3;
}

- (NSString)language
{
  v2 = [(BCSLinkItem *)self businessLinkContentItem];
  v3 = [v2 language];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSLinkItemModel *)self->_model copyWithZone:a3];
    v7 = v5[2];
    v5[2] = v6;

    v8 = [(BCSItem *)self expirationDate];
    v9 = [v8 copyWithZone:a3];
    [v5 setExpirationDate:v9];

    v10 = [(BCSLinkItem *)self localeHelper];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(BCSLinkItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(BCSLinkItem *)self model];
  v5 = [v3 appendObject:v4 withName:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BCSLinkItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(BCSLinkItem *)self succinctDescriptionBuilder];
  v5 = [(BCSLinkItem *)self debugInfo];
  v6 = [v4 appendObject:v5 withName:@"Debug Info"];

  v7 = [(BCSItem *)self expirationDate];
  v8 = [v4 appendObject:v7 withName:@"expirationDate"];

  v9 = [(BCSLinkItem *)self localeHelper];
  v10 = [v4 appendObject:v9 withName:@"localeHelper"];

  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(BCSLinkItem *)self debugInfo];
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "Debug Info: %@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSURL)heroImageURL
{
  v4 = vdupq_n_s64(0x400uLL);
  v5 = "bb";
  v6 = "png";
  v2 = [(BCSLinkItem *)self heroImageURLForSpecifier:&v4];

  return v2;
}

- (NSURL)iconImageURL
{
  v4 = vdupq_n_s64(0xB4uLL);
  v5 = "bb";
  v6 = "png";
  v2 = [(BCSLinkItem *)self iconImageURLForSpecifier:&v4];

  return v2;
}

@end