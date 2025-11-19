@interface BCSLinkItemModel
+ (id)linkItemModelsFromLinkJSONObj:(id)a3;
+ (id)linkItemModelsFromRecords:(id)a3;
- (BCSLinkItemModel)initWithCoder:(id)a3;
- (BCSLinkItemModel)initWithLinkMessage:(id)a3 bucketID:(id)a4;
- (BOOL)matchesItemIdentifying:(id)a3;
- (NSObject)itemIdentifier;
- (NSString)fullHash;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithLinkURL:(void *)a3 bundleID:(void *)a4 heroImageURLString:(void *)a5 iconImageURLString:(void *)a6 redirectURL:(uint64_t)a7 action:(void *)a8 mapIconStyleAttributes:(void *)a9 mapItemMUID:(void *)a10 businessLinkContentItemModels:(char)a11 isPoweredBy:;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)truncatedHash;
- (int64_t)type;
- (void)_linkItemIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSLinkItemModel

- (BCSLinkItemModel)initWithLinkMessage:(id)a3 bucketID:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = [v4 businessLinkContents];
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v57 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [[BCSBusinessLinkContentItemModel alloc] initWithBusinessLinkContent:*(*(&v48 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v8);
  }

  v12 = [v4 muid];

  if (!v12)
  {
    goto LABEL_13;
  }

  *__error() = 0;
  v13 = [v4 muid];
  v14 = strtoull([v13 UTF8String], 0, 0);

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
  v16 = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v17 = [v4 categoryStyleAttributes];
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v54 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v44 + 1) + 8 * v21) dictionaryRepresentation];
        [v16 addObject:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v19);
  }

  if ([v16 count])
  {
    v52 = @"attribute";
    v53 = v16;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x277CBEBC0];
  v40 = [v4 link];
  v39 = [v24 URLWithString:?];
  v25 = [v4 bundleId];
  v26 = [v4 heroImage];
  v27 = [v4 iconImage];
  v28 = MEMORY[0x277CBEBC0];
  v29 = [v4 redirectUrl];
  v30 = [v28 URLWithString:v29];
  v31 = [v4 action];
  v32 = [v4 hasIsPoweredBy];
  v38 = v4;
  if (v32)
  {
    v33 = v4;
    v34 = v23;
    LOBYTE(v32) = [v33 isPoweredBy];
  }

  else
  {
    v34 = v23;
  }

  v43 = [(BCSLinkItemModel *)self initWithLinkURL:v39 bundleID:v25 heroImageURLString:v26 iconImageURLString:v27 redirectURL:v30 action:v31 mapIconStyleAttributes:v34 mapItemMUID:v41 businessLinkContentItemModels:v5 isPoweredBy:v32];

  v35 = *MEMORY[0x277D85DE8];
  return v43;
}

+ (id)linkItemModelsFromLinkJSONObj:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"records"];
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
          v18 = [(BCSBusinessLinkMessage *)v15 link];
          v19 = [v17 stringWithFormat:@"%@", v18];
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

+ (id)linkItemModelsFromRecords:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
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
        v13 = [(BCSBusinessLinkMessage *)v10 link];
        v14 = [v12 stringWithFormat:@"%@", v13];
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

- (id)initWithLinkURL:(void *)a3 bundleID:(void *)a4 heroImageURLString:(void *)a5 iconImageURLString:(void *)a6 redirectURL:(uint64_t)a7 action:(void *)a8 mapIconStyleAttributes:(void *)a9 mapItemMUID:(void *)a10 businessLinkContentItemModels:(char)a11 isPoweredBy:
{
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v41 = a6;
  v42 = a8;
  v40 = a9;
  v22 = a10;
  if (a1 && (v43.receiver = a1, v43.super_class = BCSLinkItemModel, (a1 = objc_msgSendSuper2(&v43, sel_init)) != 0))
  {
    v23 = v18;
    v24 = [v18 copy];
    v25 = *(a1 + 1);
    *(a1 + 1) = v24;

    v26 = v19;
    v27 = [v19 copy];
    v28 = *(a1 + 2);
    *(a1 + 2) = v27;

    v29 = [v20 copy];
    v30 = *(a1 + 3);
    *(a1 + 3) = v29;

    v31 = [v21 copy];
    v32 = *(a1 + 4);
    *(a1 + 4) = v31;

    v33 = v41;
    v34 = [v41 copy];
    v35 = *(a1 + 5);
    *(a1 + 5) = v34;

    v36 = 1;
    if (a7 == 2)
    {
      v36 = 2;
    }

    if (a7 == 3)
    {
      v36 = 3;
    }

    *(a1 + 6) = v36;
    objc_storeStrong(a1 + 9, a8);
    objc_storeStrong(a1 + 10, a9);
    v37 = [v22 copy];
    v38 = *(a1 + 11);
    *(a1 + 11) = v37;

    *(a1 + 64) = a11;
  }

  else
  {
    v23 = v18;
    v26 = v19;
    v33 = v41;
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(BCSLinkItemModel *)self linkURL];
    v7 = [v6 copyWithZone:a3];
    v8 = *(v5 + 8);
    *(v5 + 8) = v7;

    v9 = [(BCSLinkItemModel *)self bundleID];
    v10 = [v9 copyWithZone:a3];
    v11 = *(v5 + 16);
    *(v5 + 16) = v10;

    v12 = [(BCSLinkItemModel *)self heroImageURLString];
    v13 = [v12 copyWithZone:a3];
    v14 = *(v5 + 24);
    *(v5 + 24) = v13;

    v15 = [(BCSLinkItemModel *)self iconImageURLString];
    v16 = [v15 copyWithZone:a3];
    v17 = *(v5 + 32);
    *(v5 + 32) = v16;

    v18 = [(BCSLinkItemModel *)self redirectURL];
    v19 = [v18 copyWithZone:a3];
    v20 = *(v5 + 40);
    *(v5 + 40) = v19;

    v21 = [(BCSLinkItemModel *)self mapIconStyleAttributes];
    v22 = [v21 copyWithZone:a3];
    v23 = *(v5 + 72);
    *(v5 + 72) = v22;

    v24 = [(BCSLinkItemModel *)self mapItemMUID];
    v25 = [v24 copyWithZone:a3];
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
    v29 = [(NSArray *)v28 copyWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  linkURL = self->_linkURL;
  v5 = a3;
  [v5 encodeObject:linkURL forKey:@"kBCSLinkItemModelLinkURLCodingKey"];
  [v5 encodeObject:self->_bundleID forKey:@"kBCSLinkItemModelBundleIDCodingKey"];
  [v5 encodeObject:self->_heroImageURLString forKey:@"kBCSLinkItemModelHeroImageURLStringCodingKey"];
  [v5 encodeObject:self->_iconImageURLString forKey:@"kBCSLinkItemModelIconImageURLStringCodingKey"];
  [v5 encodeObject:self->_redirectURL forKey:@"kBCSLinkItemModelRedirectURLCodingKey"];
  [v5 encodeInteger:self->_action forKey:@"kBCSLinkItemModelActionCodingKey"];
  [v5 encodeObject:self->_businessLinkContentItemModels forKey:@"kBCSLinkItemModelContentItemCodingKey"];
  [v5 encodeBool:self->_isPoweredBy forKey:@"kBCSLinkItemModelIsPoweredByCodingKey"];
  [v5 encodeObject:self->_mapIconStyleAttributes forKey:@"kBCSLinkItemModelIconStyleAttributesCodingKey"];
  [v5 encodeObject:self->_mapItemMUID forKey:@"kBCSLinkItemModelMapItemMUIDCodingKey"];
  [v5 encodeObject:self->_debugInfo forKey:@"kBCSLinkItemModelDebugInfoCodingKey"];
}

- (BCSLinkItemModel)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BCSLinkItemModel;
  v5 = [(BCSLinkItemModel *)&v36 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelLinkURLCodingKey"];
    linkURL = v5->_linkURL;
    v5->_linkURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelBundleIDCodingKey"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelHeroImageURLStringCodingKey"];
    heroImageURLString = v5->_heroImageURLString;
    v5->_heroImageURLString = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelIconImageURLStringCodingKey"];
    iconImageURLString = v5->_iconImageURLString;
    v5->_iconImageURLString = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelRedirectURLCodingKey"];
    redirectURL = v5->_redirectURL;
    v5->_redirectURL = v14;

    v5->_action = [v4 decodeIntegerForKey:@"kBCSLinkItemModelActionCodingKey"];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kBCSLinkItemModelContentItemCodingKey"];
    businessLinkContentItemModels = v5->_businessLinkContentItemModels;
    v5->_businessLinkContentItemModels = v19;

    v5->_isPoweredBy = [v4 decodeBoolForKey:@"kBCSLinkItemModelIsPoweredByCodingKey"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBCSLinkItemModelMapItemMUIDCodingKey"];
    mapItemMUID = v5->_mapItemMUID;
    v5->_mapItemMUID = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v23 setWithObjects:{v24, v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"kBCSLinkItemModelIconStyleAttributesCodingKey"];
    mapIconStyleAttributes = v5->_mapIconStyleAttributes;
    v5->_mapIconStyleAttributes = v28;

    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"kBCSLinkItemModelDebugInfoCodingKey"];
    debugInfo = v5->_debugInfo;
    v5->_debugInfo = v33;
  }

  return v5;
}

- (NSString)fullHash
{
  v2 = [(BCSLinkItemModel *)self _linkItemIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = [*(v2 + 8) copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_linkItemIdentifier
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[7];
    if (!v3)
    {
      v4 = [a1 linkURL];
      v5 = [BCSLinkItemIdentifier identifierWithNormalizedURL:v4];
      v6 = v2[7];
      v2[7] = v5;

      v3 = v2[7];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (NSObject)itemIdentifier
{
  v2 = [(BCSLinkItemModel *)self _linkItemIdentifier];
  v3 = [v2 itemIdentifier];

  return v3;
}

- (int64_t)truncatedHash
{
  v2 = [(BCSLinkItemModel *)self _linkItemIdentifier];
  v3 = [v2 truncatedHash];

  return v3;
}

- (int64_t)type
{
  v2 = [(BCSLinkItemModel *)self _linkItemIdentifier];
  v3 = [v2 type];

  return v3;
}

- (BOOL)matchesItemIdentifying:(id)a3
{
  v4 = a3;
  v5 = [(BCSLinkItemModel *)self _linkItemIdentifier];
  v6 = [v5 matchesItemIdentifying:v4];

  return v6;
}

- (id)succinctDescription
{
  v2 = [(BCSLinkItemModel *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_linkURL withName:@"linkURL" skipIfNil:1];
  [v3 appendString:self->_bundleID withName:@"bundleID"];
  v5 = [(BCSLinkItemModel *)self fullHash];
  [v3 appendString:v5 withName:@"fullHash"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BCSLinkItemModel *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__BCSLinkItemModel_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_278D38930;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

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