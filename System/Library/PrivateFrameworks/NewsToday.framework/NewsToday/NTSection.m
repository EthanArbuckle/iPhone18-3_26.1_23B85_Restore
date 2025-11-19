@interface NTSection
+ (id)_itemClassesByType;
- (BOOL)isEqual:(id)a3;
- (NSString)actionTitle;
- (NSString)backgroundColorDark;
- (NSString)backgroundColorLight;
- (NSString)name;
- (NSString)nameColorDark;
- (NSString)nameColorLight;
- (NSURL)actionURL;
- (NSURL)nameActionURL;
- (NTSection)init;
- (NTSection)initWithCoder:(id)a3;
- (NTSection)initWithIdentifier:(id)a3 subidentifier:(id)a4 actionTitle:(id)a5 actionURL:(id)a6 personalizationFeatureID:(id)a7 items:(id)a8 rankingFeedback:(id)a9 displayDescriptor:(id)a10 referralBarName:(id)a11 backingTagID:(id)a12;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTSection

- (NTSection)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTSection init]";
    v10 = 2080;
    v11 = "NTTodayResults.m";
    v12 = 1024;
    v13 = 181;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTSection init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTSection)initWithIdentifier:(id)a3 subidentifier:(id)a4 actionTitle:(id)a5 actionURL:(id)a6 personalizationFeatureID:(id)a7 items:(id)a8 rankingFeedback:(id)a9 displayDescriptor:(id)a10 referralBarName:(id)a11 backingTagID:(id)a12
{
  v17 = a3;
  v51 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v52 = v17;
  if (!v17 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSection initWithIdentifier:subidentifier:actionTitle:actionURL:personalizationFeatureID:items:rankingFeedback:displayDescriptor:referralBarName:backingTagID:];
  }

  v26 = v25;
  if (!v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSection initWithIdentifier:subidentifier:actionTitle:actionURL:personalizationFeatureID:items:rankingFeedback:displayDescriptor:referralBarName:backingTagID:];
  }

  v27 = v22;
  if (!v23 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSection initWithIdentifier:subidentifier:actionTitle:actionURL:personalizationFeatureID:items:rankingFeedback:displayDescriptor:referralBarName:backingTagID:];
  }

  v53.receiver = self;
  v53.super_class = NTSection;
  v28 = [(NTSection *)&v53 init];
  if (v28)
  {
    v29 = [v52 copy];
    identifier = v28->_identifier;
    v28->_identifier = v29;

    v31 = [v51 copy];
    subidentifier = v28->_subidentifier;
    v28->_subidentifier = v31;

    v33 = [v18 copy];
    actionTitle = v28->_actionTitle;
    v28->_actionTitle = v33;

    v35 = [v19 copy];
    actionURL = v28->_actionURL;
    v28->_actionURL = v35;

    v37 = [v20 copy];
    personalizationFeatureID = v28->_personalizationFeatureID;
    v28->_personalizationFeatureID = v37;

    v39 = [v21 copy];
    items = v28->_items;
    v28->_items = v39;

    v41 = [v27 copy];
    rankingFeedback = v28->_rankingFeedback;
    v28->_rankingFeedback = v41;

    v43 = [v23 copy];
    displayDescriptor = v28->_displayDescriptor;
    v28->_displayDescriptor = v43;

    v45 = [v24 copy];
    referralBarName = v28->_referralBarName;
    v28->_referralBarName = v45;

    v47 = [v26 copy];
    backingTagID = v28->_backingTagID;
    v28->_backingTagID = v47;
  }

  return v28;
}

+ (id)_itemClassesByType
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = &unk_286D9ED80;
  v6[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277D30F48] descriptionWithObject:self];
  v4 = [(NTSection *)self identifier];
  [v3 addField:@"identifier" object:v4];

  v5 = [(NTSection *)self name];
  [v3 addField:@"name" object:v5];

  v6 = [(NTSection *)self actionTitle];
  [v3 addField:@"actionTitle" object:v6];

  v7 = [(NTSection *)self actionURL];
  v8 = [v7 absoluteString];
  [v3 addField:@"actionURL" object:v8];

  v9 = [(NTSection *)self items];
  [v3 addField:@"items" object:v9];

  v10 = [v3 descriptionString];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    v6 = [(NTSection *)self identifier];
    v7 = [v5 identifier];
    if ([v6 isEqual:v7])
    {
      v8 = MEMORY[0x277D82BB8];
      v9 = [(NTSection *)self subidentifier];
      v10 = [v5 subidentifier];
      if ([v8 nf_object:v9 isEqualToObject:v10])
      {
        v11 = [(NTSection *)self items];
        v12 = [v5 items];
        if ([v11 isEqual:v12])
        {
          v13 = MEMORY[0x277D82BB8];
          v14 = [(NTSection *)self rankingFeedback];
          v15 = [v5 rankingFeedback];
          v22 = v14;
          v16 = v14;
          v17 = v15;
          if ([v13 nf_object:v16 isEqualToObject:v15])
          {
            v21 = [(NTSection *)self displayDescriptor];
            v18 = [v5 displayDescriptor];
            v19 = [v21 isEqual:v18];
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(NTSection *)self identifier];
  v4 = [v3 hash];
  v5 = [(NTSection *)self subidentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(NTSection *)self items];
  v8 = [v7 hash];
  v9 = [(NTSection *)self rankingFeedback];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(NTSection *)self displayDescriptor];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTSection *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(NTSection *)self subidentifier];

  if (v6)
  {
    v7 = [(NTSection *)self subidentifier];
    [v4 encodeObject:v7 forKey:@"subidentifier"];
  }

  v8 = [(NTSection *)self personalizationFeatureID];
  [v4 encodeObject:v8 forKey:@"p"];

  v9 = [(NTSection *)self displayDescriptor];
  [v4 encodeObject:v9 forKey:@"displayDescriptor"];

  v10 = [(NTSection *)self actionTitle];

  if (v10)
  {
    v11 = [(NTSection *)self actionTitle];
    [v4 encodeObject:v11 forKey:@"actionTitle"];
  }

  v12 = [(NTSection *)self actionURL];

  if (v12)
  {
    v13 = [(NTSection *)self actionURL];
    v14 = [v13 absoluteString];
    [v4 encodeObject:v14 forKey:@"actionURL"];
  }

  v15 = [(NTSection *)self rankingFeedback];
  if (v15)
  {
    [v4 encodeObject:v15 forKey:@"rankingFeedback"];
  }

  v16 = [(NTSection *)self referralBarName];
  if (v16)
  {
    [v4 encodeObject:v16 forKey:@"referralBarName"];
  }

  v17 = [(NTSection *)self backingTagID];
  if (v17)
  {
    [v4 encodeObject:v17 forKey:@"btid"];
  }

  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = objc_opt_new();
  v21 = [(NTSection *)self items];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __29__NTSection_encodeWithCoder___block_invoke;
  v36[3] = &unk_279982C60;
  v37 = v18;
  v38 = v19;
  v22 = v19;
  v23 = v18;
  [v21 enumerateObjectsUsingBlock:v36];

  v24 = [(NTSection *)self items];
  v25 = [v24 count];

  v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v25];
  v27 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v25];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __29__NTSection_encodeWithCoder___block_invoke_2;
  v33 = &unk_279982C88;
  v34 = v27;
  v35 = v26;
  v28 = v26;
  v29 = v27;
  [v23 enumerateKeysAndObjectsUsingBlock:&v30];
  [v4 encodeObject:v22 forKey:{@"feedItemIDs", v30, v31, v32, v33}];
  [v4 encodeObject:v20 forKey:@"videoPlaylistHeadlineIDs"];
  [v4 encodeObject:v28 forKey:@"allItemTypesByID"];
  [v4 encodeObject:v29 forKey:@"allItemDataByID"];
}

void __29__NTSection_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];

  [*(a1 + 40) addObject:v4];
}

void __29__NTSection_encodeWithCoder___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  if (v6)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "itemType")}];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

- (NTSection)initWithCoder:(id)a3
{
  v4 = a3;
  v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subidentifier"];
  v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionTitle"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
  v35 = v5;
  if (v5)
  {
    v34 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v34 = 0;
  }

  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"p"];
  v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rankingFeedback"];
  v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayDescriptor"];
  v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referralBarName"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v27 = [v4 decodeObjectOfClasses:v8 forKey:@"feedItemIDs"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"allItemTypesByID"];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
  v28 = [v4 decodeObjectOfClasses:v17 forKey:@"allItemDataByID"];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __27__NTSection_initWithCoder___block_invoke;
  v39[3] = &unk_279982CB0;
  v40 = v13;
  v18 = self;
  v41 = v18;
  v29 = v13;
  v19 = [v28 fc_dictionaryByTransformingValuesWithKeyAndValueBlock:v39];
  v20 = MEMORY[0x277CBEB70];
  v21 = [v27 array];
  v22 = [v19 nf_objectsForKeysWithoutMarker:v21];
  v23 = [v20 orderedSetWithArray:v22];

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"btid"];
  v26 = [(NTSection *)v18 initWithIdentifier:v38 subidentifier:v37 actionTitle:v36 actionURL:v34 personalizationFeatureID:v33 items:v23 rankingFeedback:v32 displayDescriptor:v31 referralBarName:v30 backingTagID:v24];

  return v26;
}

id __27__NTSection_initWithCoder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = *(a1 + 40);
  v9 = [objc_opt_class() _itemClassesByType];
  v10 = [v9 objectForKeyedSubscript:v7];

  v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v10 fromData:v6 error:0];

  return v11;
}

- (NSString)name
{
  v2 = [(NTSection *)self displayDescriptor];
  v3 = [v2 name];

  return v3;
}

- (NSString)nameColorLight
{
  v2 = [(NTSection *)self displayDescriptor];
  v3 = [v2 nameColorLight];

  return v3;
}

- (NSString)nameColorDark
{
  v2 = [(NTSection *)self displayDescriptor];
  v3 = [v2 nameColorDark];

  return v3;
}

- (NSString)actionTitle
{
  v2 = [(NTSection *)self displayDescriptor];
  v3 = [v2 actionTitle];

  return v3;
}

- (NSURL)actionURL
{
  v2 = [(NTSection *)self displayDescriptor];
  v3 = [v2 actionURL];

  return v3;
}

- (NSURL)nameActionURL
{
  v2 = [(NTSection *)self displayDescriptor];
  v3 = [v2 nameActionURL];

  return v3;
}

- (NSString)backgroundColorLight
{
  v2 = [(NTSection *)self displayDescriptor];
  v3 = [v2 backgroundColorLight];

  return v3;
}

- (NSString)backgroundColorDark
{
  v2 = [(NTSection *)self displayDescriptor];
  v3 = [v2 backgroundColorDark];

  return v3;
}

- (void)initWithIdentifier:subidentifier:actionTitle:actionURL:personalizationFeatureID:items:rankingFeedback:displayDescriptor:referralBarName:backingTagID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "identifier", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:subidentifier:actionTitle:actionURL:personalizationFeatureID:items:rankingFeedback:displayDescriptor:referralBarName:backingTagID:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "items", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:subidentifier:actionTitle:actionURL:personalizationFeatureID:items:rankingFeedback:displayDescriptor:referralBarName:backingTagID:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "displayDescriptor", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end