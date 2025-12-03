@interface BCSLinkItem
+ (id)linkItemsFromLinkItemModels:(id)models;
- (BCSBusinessLinkContentItem)businessLinkContentItem;
- (BCSLinkItem)initWithLinkItemModel:(id)model expirationDate:(id)date localeHelper:(id)helper;
- (BCSLinkItem)initWithLinkItemModel:(id)model localeHelper:(id)helper;
- (BOOL)isPoweredBy;
- (BOOL)matchesItemIdentifying:(id)identifying;
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
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)heroImageURLForSpecifier:(id *)specifier;
- (id)iconImageURLForSpecifier:(id *)specifier;
- (id)itemIdentifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)action;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)setDebugInfo:(id)info;
@end

@implementation BCSLinkItem

+ (id)linkItemsFromLinkItemModels:(id)models
{
  v22 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = modelsCopy;
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

- (BCSLinkItem)initWithLinkItemModel:(id)model localeHelper:(id)helper
{
  v6 = MEMORY[0x277CBEAA8];
  helperCopy = helper;
  modelCopy = model;
  distantPast = [v6 distantPast];
  v10 = [(BCSLinkItem *)self initWithLinkItemModel:modelCopy expirationDate:distantPast localeHelper:helperCopy];

  return v10;
}

- (BCSLinkItem)initWithLinkItemModel:(id)model expirationDate:(id)date localeHelper:(id)helper
{
  modelCopy = model;
  dateCopy = date;
  helperCopy = helper;
  v15.receiver = self;
  v15.super_class = BCSLinkItem;
  v12 = [(BCSItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_model, model);
    objc_storeStrong(&v13->_localeHelper, helper);
    [(BCSItem *)v13 setExpirationDate:dateCopy];
  }

  return v13;
}

- (NSDictionary)debugInfo
{
  model = [(BCSLinkItem *)self model];
  v3 = model;
  if (model)
  {
    v4 = *(model + 96);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setDebugInfo:(id)info
{
  infoCopy = info;
  selfa = [(BCSLinkItem *)self model];
  if (selfa)
  {
    objc_setProperty_nonatomic_copy(selfa, v5, infoCopy, 96);
  }
}

- (id)heroImageURLForSpecifier:(id *)specifier
{
  v4 = MEMORY[0x277CBEBC0];
  heroImageURLString = [(BCSLinkItem *)self heroImageURLString];
  v6 = *&specifier->var2;
  v9[0] = *&specifier->var0;
  v9[1] = v6;
  v7 = [(NSURL *)v4 bcs_templatedImageURLWithString:heroImageURLString imageSpecifier:v9];

  return v7;
}

- (id)iconImageURLForSpecifier:(id *)specifier
{
  v4 = MEMORY[0x277CBEBC0];
  iconImageURLString = [(BCSLinkItem *)self iconImageURLString];
  v6 = *&specifier->var2;
  v9[0] = *&specifier->var0;
  v9[1] = v6;
  v7 = [(NSURL *)v4 bcs_templatedImageURLWithString:iconImageURLString imageSpecifier:v9];

  return v7;
}

- (id)itemIdentifier
{
  model = [(BCSLinkItem *)self model];
  itemIdentifier = [model itemIdentifier];

  return itemIdentifier;
}

- (int64_t)truncatedHash
{
  model = [(BCSLinkItem *)self model];
  truncatedHash = [model truncatedHash];

  return truncatedHash;
}

- (int64_t)type
{
  model = [(BCSLinkItem *)self model];
  type = [model type];

  return type;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  model = [(BCSLinkItem *)self model];
  v6 = [model matchesItemIdentifying:identifyingCopy];

  return v6;
}

- (BCSBusinessLinkContentItem)businessLinkContentItem
{
  selfCopy = self;
  v54 = *MEMORY[0x277D85DE8];
  localeHelper = [(BCSLinkItem *)self localeHelper];
  currentLocale = [localeHelper currentLocale];
  language = [(NSLocale *)currentLocale language];
  if (selfCopy)
  {
    cachedContentItemLanguage = selfCopy->_cachedContentItemLanguage;
  }

  else
  {
    cachedContentItemLanguage = 0;
  }

  v7 = cachedContentItemLanguage;
  if ([language isEqualToString:v7])
  {
    if (selfCopy)
    {
      cachedContentItem = selfCopy->_cachedContentItem;
    }

    else
    {
      cachedContentItem = 0;
    }

    if (cachedContentItem)
    {
      if (selfCopy)
      {
        v9 = selfCopy->_cachedContentItem;
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
  if (selfCopy)
  {
    v11 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    model = [(BCSLinkItem *)selfCopy model];
    v13 = model;
    if (model)
    {
      v14 = *(model + 88);
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
      language2 = [v26 language];
      v28 = selfCopy;
      localeHelper2 = [(BCSLinkItem *)selfCopy localeHelper];
      currentLocale2 = [localeHelper2 currentLocale];
      language3 = [(NSLocale *)currentLocale2 language];
      v32 = [language2 isEqualToString:language3];

      if (v32)
      {
        break;
      }

      if ([v26 isDefault])
      {
        v33 = v26;

        v43 = v33;
      }

      selfCopy = v28;
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

    selfCopy = v28;
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
    if (selfCopy)
    {
      objc_storeStrong(&selfCopy->_cachedContentItem, v34);
    }

    localeHelper3 = [(BCSLinkItem *)selfCopy localeHelper];
    currentLocale3 = [localeHelper3 currentLocale];
    language4 = [(NSLocale *)currentLocale3 language];
    if (selfCopy)
    {
      objc_storeStrong(&selfCopy->_cachedContentItemLanguage, language4);
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
  model = [(BCSLinkItem *)self model];
  linkURL = [model linkURL];

  return linkURL;
}

- (NSString)fullHash
{
  model = [(BCSLinkItem *)self model];
  fullHash = [model fullHash];

  return fullHash;
}

- (NSString)bundleID
{
  model = [(BCSLinkItem *)self model];
  bundleID = [model bundleID];

  return bundleID;
}

- (NSString)heroImageURLString
{
  model = [(BCSLinkItem *)self model];
  heroImageURLString = [model heroImageURLString];

  return heroImageURLString;
}

- (NSString)iconImageURLString
{
  model = [(BCSLinkItem *)self model];
  iconImageURLString = [model iconImageURLString];

  return iconImageURLString;
}

- (NSURL)redirectURL
{
  model = [(BCSLinkItem *)self model];
  redirectURL = [model redirectURL];

  return redirectURL;
}

- (int64_t)action
{
  model = [(BCSLinkItem *)self model];
  action = [model action];

  return action;
}

- (BOOL)isPoweredBy
{
  model = [(BCSLinkItem *)self model];
  isPoweredBy = [model isPoweredBy];

  return isPoweredBy;
}

- (NSDictionary)mapIconStyleAttributes
{
  model = [(BCSLinkItem *)self model];
  mapIconStyleAttributes = [model mapIconStyleAttributes];

  return mapIconStyleAttributes;
}

- (NSNumber)mapItemMUID
{
  model = [(BCSLinkItem *)self model];
  mapItemMUID = [model mapItemMUID];

  return mapItemMUID;
}

- (NSString)title
{
  businessLinkContentItem = [(BCSLinkItem *)self businessLinkContentItem];
  title = [businessLinkContentItem title];

  return title;
}

- (NSString)subtitle
{
  businessLinkContentItem = [(BCSLinkItem *)self businessLinkContentItem];
  subtitle = [businessLinkContentItem subtitle];

  return subtitle;
}

- (NSString)language
{
  businessLinkContentItem = [(BCSLinkItem *)self businessLinkContentItem];
  language = [businessLinkContentItem language];

  return language;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(BCSLinkItemModel *)self->_model copyWithZone:zone];
    v7 = v5[2];
    v5[2] = v6;

    expirationDate = [(BCSItem *)self expirationDate];
    v9 = [expirationDate copyWithZone:zone];
    [v5 setExpirationDate:v9];

    localeHelper = [(BCSLinkItem *)self localeHelper];
    v11 = v5[3];
    v5[3] = localeHelper;
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BCSLinkItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  model = [(BCSLinkItem *)self model];
  v5 = [v3 appendObject:model withName:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BCSLinkItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v17 = *MEMORY[0x277D85DE8];
  succinctDescriptionBuilder = [(BCSLinkItem *)self succinctDescriptionBuilder];
  debugInfo = [(BCSLinkItem *)self debugInfo];
  v6 = [succinctDescriptionBuilder appendObject:debugInfo withName:@"Debug Info"];

  expirationDate = [(BCSItem *)self expirationDate];
  v8 = [succinctDescriptionBuilder appendObject:expirationDate withName:@"expirationDate"];

  localeHelper = [(BCSLinkItem *)self localeHelper];
  v10 = [succinctDescriptionBuilder appendObject:localeHelper withName:@"localeHelper"];

  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    debugInfo2 = [(BCSLinkItem *)self debugInfo];
    v15 = 138412290;
    v16 = debugInfo2;
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "Debug Info: %@", &v15, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return succinctDescriptionBuilder;
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