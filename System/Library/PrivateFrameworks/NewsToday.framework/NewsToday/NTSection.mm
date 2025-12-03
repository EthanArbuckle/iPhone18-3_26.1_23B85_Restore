@interface NTSection
+ (id)_itemClassesByType;
- (BOOL)isEqual:(id)equal;
- (NSString)actionTitle;
- (NSString)backgroundColorDark;
- (NSString)backgroundColorLight;
- (NSString)name;
- (NSString)nameColorDark;
- (NSString)nameColorLight;
- (NSURL)actionURL;
- (NSURL)nameActionURL;
- (NTSection)init;
- (NTSection)initWithCoder:(id)coder;
- (NTSection)initWithIdentifier:(id)identifier subidentifier:(id)subidentifier actionTitle:(id)title actionURL:(id)l personalizationFeatureID:(id)d items:(id)items rankingFeedback:(id)feedback displayDescriptor:(id)self0 referralBarName:(id)self1 backingTagID:(id)self2;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (NTSection)initWithIdentifier:(id)identifier subidentifier:(id)subidentifier actionTitle:(id)title actionURL:(id)l personalizationFeatureID:(id)d items:(id)items rankingFeedback:(id)feedback displayDescriptor:(id)self0 referralBarName:(id)self1 backingTagID:(id)self2
{
  identifierCopy = identifier;
  subidentifierCopy = subidentifier;
  titleCopy = title;
  lCopy = l;
  dCopy = d;
  itemsCopy = items;
  feedbackCopy = feedback;
  descriptorCopy = descriptor;
  nameCopy = name;
  iDCopy = iD;
  v52 = identifierCopy;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSection initWithIdentifier:subidentifier:actionTitle:actionURL:personalizationFeatureID:items:rankingFeedback:displayDescriptor:referralBarName:backingTagID:];
  }

  v26 = iDCopy;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSection initWithIdentifier:subidentifier:actionTitle:actionURL:personalizationFeatureID:items:rankingFeedback:displayDescriptor:referralBarName:backingTagID:];
  }

  v27 = feedbackCopy;
  if (!descriptorCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
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

    v31 = [subidentifierCopy copy];
    subidentifier = v28->_subidentifier;
    v28->_subidentifier = v31;

    v33 = [titleCopy copy];
    actionTitle = v28->_actionTitle;
    v28->_actionTitle = v33;

    v35 = [lCopy copy];
    actionURL = v28->_actionURL;
    v28->_actionURL = v35;

    v37 = [dCopy copy];
    personalizationFeatureID = v28->_personalizationFeatureID;
    v28->_personalizationFeatureID = v37;

    v39 = [itemsCopy copy];
    items = v28->_items;
    v28->_items = v39;

    v41 = [v27 copy];
    rankingFeedback = v28->_rankingFeedback;
    v28->_rankingFeedback = v41;

    v43 = [descriptorCopy copy];
    displayDescriptor = v28->_displayDescriptor;
    v28->_displayDescriptor = v43;

    v45 = [nameCopy copy];
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
  identifier = [(NTSection *)self identifier];
  [v3 addField:@"identifier" object:identifier];

  name = [(NTSection *)self name];
  [v3 addField:@"name" object:name];

  actionTitle = [(NTSection *)self actionTitle];
  [v3 addField:@"actionTitle" object:actionTitle];

  actionURL = [(NTSection *)self actionURL];
  absoluteString = [actionURL absoluteString];
  [v3 addField:@"actionURL" object:absoluteString];

  items = [(NTSection *)self items];
  [v3 addField:@"items" object:items];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = FCDynamicCast();

  if (v5)
  {
    identifier = [(NTSection *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqual:identifier2])
    {
      v8 = MEMORY[0x277D82BB8];
      subidentifier = [(NTSection *)self subidentifier];
      subidentifier2 = [v5 subidentifier];
      if ([v8 nf_object:subidentifier isEqualToObject:subidentifier2])
      {
        items = [(NTSection *)self items];
        items2 = [v5 items];
        if ([items isEqual:items2])
        {
          v13 = MEMORY[0x277D82BB8];
          rankingFeedback = [(NTSection *)self rankingFeedback];
          rankingFeedback2 = [v5 rankingFeedback];
          v22 = rankingFeedback;
          v16 = rankingFeedback;
          v17 = rankingFeedback2;
          if ([v13 nf_object:v16 isEqualToObject:rankingFeedback2])
          {
            displayDescriptor = [(NTSection *)self displayDescriptor];
            displayDescriptor2 = [v5 displayDescriptor];
            v19 = [displayDescriptor isEqual:displayDescriptor2];
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
  identifier = [(NTSection *)self identifier];
  v4 = [identifier hash];
  subidentifier = [(NTSection *)self subidentifier];
  v6 = [subidentifier hash] ^ v4;
  items = [(NTSection *)self items];
  v8 = [items hash];
  rankingFeedback = [(NTSection *)self rankingFeedback];
  v10 = v6 ^ v8 ^ [rankingFeedback hash];
  displayDescriptor = [(NTSection *)self displayDescriptor];
  v12 = [displayDescriptor hash];

  return v10 ^ v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(NTSection *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  subidentifier = [(NTSection *)self subidentifier];

  if (subidentifier)
  {
    subidentifier2 = [(NTSection *)self subidentifier];
    [coderCopy encodeObject:subidentifier2 forKey:@"subidentifier"];
  }

  personalizationFeatureID = [(NTSection *)self personalizationFeatureID];
  [coderCopy encodeObject:personalizationFeatureID forKey:@"p"];

  displayDescriptor = [(NTSection *)self displayDescriptor];
  [coderCopy encodeObject:displayDescriptor forKey:@"displayDescriptor"];

  actionTitle = [(NTSection *)self actionTitle];

  if (actionTitle)
  {
    actionTitle2 = [(NTSection *)self actionTitle];
    [coderCopy encodeObject:actionTitle2 forKey:@"actionTitle"];
  }

  actionURL = [(NTSection *)self actionURL];

  if (actionURL)
  {
    actionURL2 = [(NTSection *)self actionURL];
    absoluteString = [actionURL2 absoluteString];
    [coderCopy encodeObject:absoluteString forKey:@"actionURL"];
  }

  rankingFeedback = [(NTSection *)self rankingFeedback];
  if (rankingFeedback)
  {
    [coderCopy encodeObject:rankingFeedback forKey:@"rankingFeedback"];
  }

  referralBarName = [(NTSection *)self referralBarName];
  if (referralBarName)
  {
    [coderCopy encodeObject:referralBarName forKey:@"referralBarName"];
  }

  backingTagID = [(NTSection *)self backingTagID];
  if (backingTagID)
  {
    [coderCopy encodeObject:backingTagID forKey:@"btid"];
  }

  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v20 = objc_opt_new();
  items = [(NTSection *)self items];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __29__NTSection_encodeWithCoder___block_invoke;
  v36[3] = &unk_279982C60;
  v37 = v18;
  v38 = v19;
  v22 = v19;
  v23 = v18;
  [items enumerateObjectsUsingBlock:v36];

  items2 = [(NTSection *)self items];
  v25 = [items2 count];

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
  [coderCopy encodeObject:v22 forKey:{@"feedItemIDs", v30, v31, v32, v33}];
  [coderCopy encodeObject:v20 forKey:@"videoPlaylistHeadlineIDs"];
  [coderCopy encodeObject:v28 forKey:@"allItemTypesByID"];
  [coderCopy encodeObject:v29 forKey:@"allItemDataByID"];
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

- (NTSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subidentifier"];
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionTitle"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
  v35 = v5;
  if (v5)
  {
    v34 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v34 = 0;
  }

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rankingFeedback"];
  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayDescriptor"];
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referralBarName"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v27 = [coderCopy decodeObjectOfClasses:v8 forKey:@"feedItemIDs"];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"allItemTypesByID"];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
  v28 = [coderCopy decodeObjectOfClasses:v17 forKey:@"allItemDataByID"];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __27__NTSection_initWithCoder___block_invoke;
  v39[3] = &unk_279982CB0;
  v40 = v13;
  selfCopy = self;
  v41 = selfCopy;
  v29 = v13;
  v19 = [v28 fc_dictionaryByTransformingValuesWithKeyAndValueBlock:v39];
  v20 = MEMORY[0x277CBEB70];
  array = [v27 array];
  v22 = [v19 nf_objectsForKeysWithoutMarker:array];
  v23 = [v20 orderedSetWithArray:v22];

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"btid"];
  v26 = [(NTSection *)selfCopy initWithIdentifier:v38 subidentifier:v37 actionTitle:v36 actionURL:v34 personalizationFeatureID:v33 items:v23 rankingFeedback:v32 displayDescriptor:v31 referralBarName:v30 backingTagID:v24];

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
  displayDescriptor = [(NTSection *)self displayDescriptor];
  name = [displayDescriptor name];

  return name;
}

- (NSString)nameColorLight
{
  displayDescriptor = [(NTSection *)self displayDescriptor];
  nameColorLight = [displayDescriptor nameColorLight];

  return nameColorLight;
}

- (NSString)nameColorDark
{
  displayDescriptor = [(NTSection *)self displayDescriptor];
  nameColorDark = [displayDescriptor nameColorDark];

  return nameColorDark;
}

- (NSString)actionTitle
{
  displayDescriptor = [(NTSection *)self displayDescriptor];
  actionTitle = [displayDescriptor actionTitle];

  return actionTitle;
}

- (NSURL)actionURL
{
  displayDescriptor = [(NTSection *)self displayDescriptor];
  actionURL = [displayDescriptor actionURL];

  return actionURL;
}

- (NSURL)nameActionURL
{
  displayDescriptor = [(NTSection *)self displayDescriptor];
  nameActionURL = [displayDescriptor nameActionURL];

  return nameActionURL;
}

- (NSString)backgroundColorLight
{
  displayDescriptor = [(NTSection *)self displayDescriptor];
  backgroundColorLight = [displayDescriptor backgroundColorLight];

  return backgroundColorLight;
}

- (NSString)backgroundColorDark
{
  displayDescriptor = [(NTSection *)self displayDescriptor];
  backgroundColorDark = [displayDescriptor backgroundColorDark];

  return backgroundColorDark;
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