@interface BCSLinkItemModel
+ (id)linkItemModelsFromLinkJSONObj:(id)obj;
+ (id)linkItemModelsFromRecords:(id)records;
- (BCSLinkItemModel)initWithCoder:(id)coder;
- (BCSLinkItemModel)initWithLinkMessage:(id)message bucketID:(id)d;
- (BOOL)matchesItemIdentifying:(id)identifying;
- (NSObject)itemIdentifier;
- (NSString)fullHash;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)initWithLinkURL:(void *)l bundleID:(void *)d heroImageURLString:(void *)string iconImageURLString:(void *)lString redirectURL:(uint64_t)rL action:(void *)action mapIconStyleAttributes:(void *)attributes mapItemMUID:(void *)self0 businessLinkContentItemModels:(char)self1 isPoweredBy:;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)_linkItemIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSLinkItemModel

- (BCSLinkItemModel)initWithLinkMessage:(id)message bucketID:(id)d
{
  v58 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  businessLinkContents = [messageCopy businessLinkContents];
  v7 = [businessLinkContents countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(businessLinkContents);
        }

        v11 = [[BCSBusinessLinkContentItemModel alloc] initWithBusinessLinkContent:*(*(&v48 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [businessLinkContents countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v8);
  }

  muid = [messageCopy muid];

  if (!muid)
  {
    goto LABEL_13;
  }

  *__error() = 0;
  muid2 = [messageCopy muid];
  v14 = strtoull([muid2 UTF8String], 0, 0);

  if (*__error())
  {
    v15 = ABSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v37 = *__error();
      *buf = 67109120;
      v56 = v37;
      _os_log_error_impl(&dword_242072000, v15, OS_LOG_TYPE_ERROR, "BCSLinkItemModel: mapItemMUID could not be converted to a number: %d", buf, 8u);
    }

LABEL_13:
    v41 = 0;
    goto LABEL_15;
  }

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
LABEL_15:
  array = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  categoryStyleAttributes = [messageCopy categoryStyleAttributes];
  v18 = [categoryStyleAttributes countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    do
    {
      v21 = 0;
      do
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(categoryStyleAttributes);
        }

        dictionaryRepresentation = [*(*(&v44 + 1) + 8 * v21) dictionaryRepresentation];
        [array addObject:dictionaryRepresentation];

        ++v21;
      }

      while (v19 != v21);
      v19 = [categoryStyleAttributes countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v19);
  }

  if ([array count])
  {
    v52 = @"attribute";
    v53 = array;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x277CBEBC0];
  link = [messageCopy link];
  v39 = [v24 URLWithString:?];
  bundleId = [messageCopy bundleId];
  heroImage = [messageCopy heroImage];
  iconImage = [messageCopy iconImage];
  v28 = MEMORY[0x277CBEBC0];
  redirectUrl = [messageCopy redirectUrl];
  v30 = [v28 URLWithString:redirectUrl];
  action = [messageCopy action];
  hasIsPoweredBy = [messageCopy hasIsPoweredBy];
  v38 = messageCopy;
  if (hasIsPoweredBy)
  {
    v33 = messageCopy;
    v34 = v23;
    LOBYTE(hasIsPoweredBy) = [v33 isPoweredBy];
  }

  else
  {
    v34 = v23;
  }

  v43 = [(BCSLinkItemModel *)self initWithLinkURL:v39 bundleID:bundleId heroImageURLString:heroImage iconImageURLString:iconImage redirectURL:v30 action:action mapIconStyleAttributes:v34 mapItemMUID:v41 businessLinkContentItemModels:v5 isPoweredBy:hasIsPoweredBy];

  v35 = *MEMORY[0x277D85DE8];
  return v43;
}

+ (id)linkItemModelsFromLinkJSONObj:(id)obj
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [obj objectForKeyedSubscript:@"records"];
  v24 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    v7 = 0x277CBE000uLL;
    v25 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v28 + 1) + 8 * v8) objectForKeyedSubscript:@"fields"];
        v10 = [v9 objectForKeyedSubscript:@"message"];
        if (v10 && (v11 = *(v7 + 2752), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v12 = v5;
          v13 = [v10 objectForKeyedSubscript:@"value"];
          v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v13 options:0];
          v15 = [[BCSBusinessLinkMessage alloc] initWithData:v14];
          v16 = [BCSLinkItemModel alloc];
          v17 = MEMORY[0x277CCACA8];
          link = [(BCSBusinessLinkMessage *)v15 link];
          v19 = [v17 stringWithFormat:@"%@", link];
          v20 = [(BCSLinkItemModel *)v16 initWithLinkMessage:v15 bucketID:v19];

          if (v20)
          {
            [v24 addObject:v20];
            v5 = v12;
          }

          else
          {
            v21 = ABSLogCommon();
            v5 = v12;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_242072000, v21, OS_LOG_TYPE_ERROR, "BCSLinkItemModelFromLinkJSONObj: LinkItemModel object didn't initialize correctly", buf, 2u);
            }
          }

          v6 = v25;

          v7 = 0x277CBE000;
        }

        else
        {
          v13 = ABSLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_242072000, v13, OS_LOG_TYPE_ERROR, "BCSLinkItemFromLinkJSONObj: Message object is not a dictionary or not initialized", buf, 2u);
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)linkItemModelsFromRecords:(id)records
{
  v27 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = recordsCopy;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v22 + 1) + 8 * v8) objectForKeyedSubscript:@"message"];
        v10 = [[BCSBusinessLinkMessage alloc] initWithData:v9];
        v11 = [BCSLinkItemModel alloc];
        v12 = MEMORY[0x277CCACA8];
        link = [(BCSBusinessLinkMessage *)v10 link];
        v14 = [v12 stringWithFormat:@"%@", link];
        v15 = [(BCSLinkItemModel *)v11 initWithLinkMessage:v10 bucketID:v14];

        if (v15)
        {
          [v4 addObject:v15];
        }

        else
        {
          v16 = ABSLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "BCSLinkItemModelFromRecords: LinkItemModel object didn't initialize correctly", buf, 2u);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v17 = [v4 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)initWithLinkURL:(void *)l bundleID:(void *)d heroImageURLString:(void *)string iconImageURLString:(void *)lString redirectURL:(uint64_t)rL action:(void *)action mapIconStyleAttributes:(void *)attributes mapItemMUID:(void *)self0 businessLinkContentItemModels:(char)self1 isPoweredBy:
{
  v18 = a2;
  lCopy = l;
  dCopy = d;
  stringCopy = string;
  lStringCopy = lString;
  actionCopy = action;
  attributesCopy = attributes;
  iDCopy = iD;
  if (self && (v43.receiver = self, v43.super_class = BCSLinkItemModel, (self = objc_msgSendSuper2(&v43, sel_init)) != 0))
  {
    v23 = v18;
    v24 = [v18 copy];
    v25 = *(self + 1);
    *(self + 1) = v24;

    v26 = lCopy;
    v27 = [lCopy copy];
    v28 = *(self + 2);
    *(self + 2) = v27;

    v29 = [dCopy copy];
    v30 = *(self + 3);
    *(self + 3) = v29;

    v31 = [stringCopy copy];
    v32 = *(self + 4);
    *(self + 4) = v31;

    v33 = lStringCopy;
    v34 = [lStringCopy copy];
    v35 = *(self + 5);
    *(self + 5) = v34;

    v36 = 1;
    if (rL == 2)
    {
      v36 = 2;
    }

    if (rL == 3)
    {
      v36 = 3;
    }

    *(self + 6) = v36;
    objc_storeStrong(self + 9, action);
    objc_storeStrong(self + 10, attributes);
    v37 = [iDCopy copy];
    v38 = *(self + 11);
    *(self + 11) = v37;

    *(self + 64) = models;
  }

  else
  {
    v23 = v18;
    v26 = lCopy;
    v33 = lStringCopy;
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    linkURL = [(BCSLinkItemModel *)self linkURL];
    v7 = [linkURL copyWithZone:zone];
    v8 = *(v5 + 8);
    *(v5 + 8) = v7;

    bundleID = [(BCSLinkItemModel *)self bundleID];
    v10 = [bundleID copyWithZone:zone];
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;

    heroImageURLString = [(BCSLinkItemModel *)self heroImageURLString];
    v13 = [heroImageURLString copyWithZone:zone];
    v14 = *(v5 + 24);
    *(v5 + 24) = v13;

    iconImageURLString = [(BCSLinkItemModel *)self iconImageURLString];
    v16 = [iconImageURLString copyWithZone:zone];
    v17 = *(v5 + 32);
    *(v5 + 32) = v16;

    redirectURL = [(BCSLinkItemModel *)self redirectURL];
    v19 = [redirectURL copyWithZone:zone];
    v20 = *(v5 + 40);
    *(v5 + 40) = v19;

    mapIconStyleAttributes = [(BCSLinkItemModel *)self mapIconStyleAttributes];
    v22 = [mapIconStyleAttributes copyWithZone:zone];
    v23 = *(v5 + 72);
    *(v5 + 72) = v22;

    mapItemMUID = [(BCSLinkItemModel *)self mapItemMUID];
    v25 = [mapItemMUID copyWithZone:zone];
    v26 = *(v5 + 80);
    *(v5 + 80) = v25;

    *(v5 + 48) = [(BCSLinkItemModel *)self action];
    if (self)
    {
      businessLinkContentItemModels = self->_businessLinkContentItemModels;
    }

    else
    {
      businessLinkContentItemModels = 0;
    }

    v28 = businessLinkContentItemModels;
    v29 = [(NSArray *)v28 copyWithZone:zone];
    v30 = *(v5 + 88);
    *(v5 + 88) = v29;

    *(v5 + 64) = [(BCSLinkItemModel *)self isPoweredBy];
    if (self)
    {
      debugInfo = self->_debugInfo;
    }

    else
    {
      debugInfo = 0;
    }

    objc_storeStrong((v5 + 96), debugInfo);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  linkURL = self->_linkURL;
  coderCopy = coder;
  [coderCopy encodeObject:linkURL forKey:@"kBCSLinkItemModelLinkURLCodingKey"];
  [coderCopy encodeObject:self->_bundleID forKey:@"kBCSLinkItemModelBundleIDCodingKey"];
  [coderCopy encodeObject:self->_heroImageURLString forKey:@"kBCSLinkItemModelHeroImageURLStringCodingKey"];
  [coderCopy encodeObject:self->_iconImageURLString forKey:@"kBCSLinkItemModelIconImageURLStringCodingKey"];
  [coderCopy encodeObject:self->_redirectURL forKey:@"kBCSLinkItemModelRedirectURLCodingKey"];
  [coderCopy encodeInteger:self->_action forKey:@"kBCSLinkItemModelActionCodingKey"];
  [coderCopy encodeObject:self->_businessLinkContentItemModels forKey:@"kBCSLinkItemModelContentItemCodingKey"];
  [coderCopy encodeBool:self->_isPoweredBy forKey:@"kBCSLinkItemModelIsPoweredByCodingKey"];
  [coderCopy encodeObject:self->_mapIconStyleAttributes forKey:@"kBCSLinkItemModelIconStyleAttributesCodingKey"];
  [coderCopy encodeObject:self->_mapItemMUID forKey:@"kBCSLinkItemModelMapItemMUIDCodingKey"];
  [coderCopy encodeObject:self->_debugInfo forKey:@"kBCSLinkItemModelDebugInfoCodingKey"];
}

- (BCSLinkItemModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = BCSLinkItemModel;
  v5 = [(BCSLinkItemModel *)&v36 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelLinkURLCodingKey"];
    linkURL = v5->_linkURL;
    v5->_linkURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelBundleIDCodingKey"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelHeroImageURLStringCodingKey"];
    heroImageURLString = v5->_heroImageURLString;
    v5->_heroImageURLString = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelIconImageURLStringCodingKey"];
    iconImageURLString = v5->_iconImageURLString;
    v5->_iconImageURLString = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelRedirectURLCodingKey"];
    redirectURL = v5->_redirectURL;
    v5->_redirectURL = v14;

    v5->_action = [coderCopy decodeIntegerForKey:@"kBCSLinkItemModelActionCodingKey"];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kBCSLinkItemModelContentItemCodingKey"];
    businessLinkContentItemModels = v5->_businessLinkContentItemModels;
    v5->_businessLinkContentItemModels = v19;

    v5->_isPoweredBy = [coderCopy decodeBoolForKey:@"kBCSLinkItemModelIsPoweredByCodingKey"];
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelMapItemMUIDCodingKey"];
    mapItemMUID = v5->_mapItemMUID;
    v5->_mapItemMUID = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v23 setWithObjects:{v24, v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"kBCSLinkItemModelIconStyleAttributesCodingKey"];
    mapIconStyleAttributes = v5->_mapIconStyleAttributes;
    v5->_mapIconStyleAttributes = v28;

    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"kBCSLinkItemModelDebugInfoCodingKey"];
    debugInfo = v5->_debugInfo;
    v5->_debugInfo = v33;
  }

  return v5;
}

- (NSString)fullHash
{
  _linkItemIdentifier = [(BCSLinkItemModel *)self _linkItemIdentifier];
  v3 = _linkItemIdentifier;
  if (_linkItemIdentifier)
  {
    v4 = [*(_linkItemIdentifier + 8) copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_linkItemIdentifier
{
  if (self)
  {
    selfCopy = self;
    v3 = self[7];
    if (!v3)
    {
      linkURL = [self linkURL];
      v5 = [BCSLinkItemIdentifier identifierWithNormalizedURL:linkURL];
      v6 = selfCopy[7];
      selfCopy[7] = v5;

      v3 = selfCopy[7];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (NSObject)itemIdentifier
{
  _linkItemIdentifier = [(BCSLinkItemModel *)self _linkItemIdentifier];
  itemIdentifier = [_linkItemIdentifier itemIdentifier];

  return itemIdentifier;
}

- (int64_t)truncatedHash
{
  _linkItemIdentifier = [(BCSLinkItemModel *)self _linkItemIdentifier];
  truncatedHash = [_linkItemIdentifier truncatedHash];

  return truncatedHash;
}

- (int64_t)type
{
  _linkItemIdentifier = [(BCSLinkItemModel *)self _linkItemIdentifier];
  type = [_linkItemIdentifier type];

  return type;
}

- (BOOL)matchesItemIdentifying:(id)identifying
{
  identifyingCopy = identifying;
  _linkItemIdentifier = [(BCSLinkItemModel *)self _linkItemIdentifier];
  v6 = [_linkItemIdentifier matchesItemIdentifying:identifyingCopy];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BCSLinkItemModel *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_linkURL withName:@"linkURL" skipIfNil:1];
  [v3 appendString:self->_bundleID withName:@"bundleID"];
  fullHash = [(BCSLinkItemModel *)self fullHash];
  [v3 appendString:fullHash withName:@"fullHash"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BCSLinkItemModel *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__BCSLinkItemModel_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_278D38930;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

id __58__BCSLinkItemModel_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"linkURL" skipIfNil:1];
  [*(a1 + 32) appendString:*(*(a1 + 40) + 16) withName:@"bundleID"];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) fullHash];
  [v3 appendString:v4 withName:@"fullHash"];

  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"heroImageURLString"];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"iconImageURLString"];
  v7 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"redirectURL"];
  v8 = *(*(a1 + 40) + 48) - 1;
  if (v8 > 2)
  {
    v9 = @"???";
  }

  else
  {
    v9 = off_278D3A210[v8];
  }

  v10 = [*(a1 + 32) appendObject:v9 withName:@"action"];
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(v11 + 88);
  }

  else
  {
    v12 = 0;
  }

  [*(a1 + 32) appendArraySection:v12 withName:@"businessContentItemModels" skipIfEmpty:0];
  v13 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 64) withName:@"isPoweredBy"];
  v14 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"mapItemMUID"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"mapIconStyleAttributes"];
}

@end