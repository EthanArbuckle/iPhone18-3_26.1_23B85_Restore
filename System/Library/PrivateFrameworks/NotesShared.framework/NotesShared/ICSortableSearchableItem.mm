@interface ICSortableSearchableItem
+ (id)sortDescriptorsForRankingStrategy:(unint64_t)strategy;
- (BOOL)isEqual:(id)equal;
- (ICSortableSearchableItem)initWithSearchableItem:(id)item highlightInfo:(id)info rankingScore:(double)score attachmentUniqueIdentifiers:(id)identifiers;
- (ICSortableSearchableItem)initWithSearchableItem:(id)item searchString:(id)string rankingQueriesDefinition:(id)definition rankingScore:(double)score attachmentUniqueIdentifiers:(id)identifiers language:(id)language;
- (NSDictionary)highlightInfo;
- (unint64_t)hash;
- (void)lazilyInitializeHighlightInfoAndIsPrefixMatchIfNecessary;
@end

@implementation ICSortableSearchableItem

- (ICSortableSearchableItem)initWithSearchableItem:(id)item highlightInfo:(id)info rankingScore:(double)score attachmentUniqueIdentifiers:(id)identifiers
{
  itemCopy = item;
  infoCopy = info;
  identifiersCopy = identifiers;
  v24.receiver = self;
  v24.super_class = ICSortableSearchableItem;
  v14 = [(ICSortableSearchableItem *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_searchableItem, item);
    v15->_rankingScore = score;
    objc_storeStrong(&v15->_attachmentUniqueIdentifiers, identifiers);
    objc_storeStrong(&v15->_highlightInfo, info);
    v15->_isPrefixMatch = [MEMORY[0x277CBEAC0] highlightInfoContainsPrefixMatch:infoCopy];
    v15->_relevanceBitField = [ICRankingQueriesDefinition relevanceBitFieldForSearchableItem:itemCopy];
    v15->_modificationDateBucket = [ICRankingQueriesDefinition modificationDateBucketForSearchableItem:itemCopy];
    attributeSet = [itemCopy attributeSet];
    contentModificationDate = [attributeSet contentModificationDate];
    modificationDate = v15->_modificationDate;
    v15->_modificationDate = contentModificationDate;

    attributeSet2 = [itemCopy attributeSet];
    contentCreationDate = [attributeSet2 contentCreationDate];
    creationDate = v15->_creationDate;
    v15->_creationDate = contentCreationDate;

    attributeSet3 = [itemCopy attributeSet];
    v15->_searchResultType = [attributeSet3 ic_searchResultType];
  }

  return v15;
}

- (ICSortableSearchableItem)initWithSearchableItem:(id)item searchString:(id)string rankingQueriesDefinition:(id)definition rankingScore:(double)score attachmentUniqueIdentifiers:(id)identifiers language:(id)language
{
  itemCopy = item;
  stringCopy = string;
  definitionCopy = definition;
  identifiersCopy = identifiers;
  languageCopy = language;
  v30.receiver = self;
  v30.super_class = ICSortableSearchableItem;
  v19 = [(ICSortableSearchableItem *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_searchableItem, item);
    objc_storeStrong(&v20->_searchString, string);
    objc_storeStrong(&v20->_rankingQueriesDefinition, definition);
    v20->_rankingScore = score;
    objc_storeStrong(&v20->_attachmentUniqueIdentifiers, identifiers);
    objc_storeStrong(&v20->_language, language);
    v20->_needsLazyInitialization = 1;
    v20->_relevanceBitField = [ICRankingQueriesDefinition relevanceBitFieldForSearchableItem:itemCopy];
    v20->_modificationDateBucket = [ICRankingQueriesDefinition modificationDateBucketForSearchableItem:itemCopy];
    attributeSet = [itemCopy attributeSet];
    contentModificationDate = [attributeSet contentModificationDate];
    modificationDate = v20->_modificationDate;
    v20->_modificationDate = contentModificationDate;

    attributeSet2 = [itemCopy attributeSet];
    contentCreationDate = [attributeSet2 contentCreationDate];
    creationDate = v20->_creationDate;
    v20->_creationDate = contentCreationDate;

    attributeSet3 = [itemCopy attributeSet];
    v20->_searchResultType = [attributeSet3 ic_searchResultType];
  }

  return v20;
}

- (void)lazilyInitializeHighlightInfoAndIsPrefixMatchIfNecessary
{
  if (self->_needsLazyInitialization)
  {
    rankingQueriesDefinition = [(ICSortableSearchableItem *)self rankingQueriesDefinition];
    searchableItem = [(ICSortableSearchableItem *)self searchableItem];
    v5 = [rankingQueriesDefinition highlightInfoForSearchableItem:searchableItem];

    if (!v5 || ![(NSDictionary *)v5 count])
    {
      v6 = MEMORY[0x277CBEAC0];
      searchString = [(ICSortableSearchableItem *)self searchString];
      language = [(ICSortableSearchableItem *)self language];
      v9 = [v6 highlightInfoForSearchStringWithPrefixMatchInAllFields:searchString language:language];

      v5 = v9;
    }

    highlightInfo = self->_highlightInfo;
    self->_highlightInfo = v5;
    v11 = v5;

    LOBYTE(highlightInfo) = [MEMORY[0x277CBEAC0] highlightInfoContainsPrefixMatch:v11];
    self->_isPrefixMatch = highlightInfo;
    self->_needsLazyInitialization = 0;
  }
}

- (NSDictionary)highlightInfo
{
  [(ICSortableSearchableItem *)self lazilyInitializeHighlightInfoAndIsPrefixMatchIfNecessary];
  highlightInfo = self->_highlightInfo;

  return highlightInfo;
}

- (unint64_t)hash
{
  v41 = *MEMORY[0x277D85DE8];
  result = self->_hash;
  if (!result)
  {
    attachmentUniqueIdentifiers = [(ICSortableSearchableItem *)self attachmentUniqueIdentifiers];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v6 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = attachmentUniqueIdentifiers;
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v7 = ICHashWithObject(*(*(&v36 + 1) + 8 * i)) - v7 + 32 * v7;
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v10);
    }

    searchableItem = [(ICSortableSearchableItem *)self searchableItem];
    v34 = [searchableItem hash];
    highlightInfo = [(ICSortableSearchableItem *)self highlightInfo];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v15 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = highlightInfo;
    v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v36 + 1) + 8 * j);
          v23 = [v17 objectForKeyedSubscript:v22];
          v24 = ICHashWithObject(v22);
          v16 = ICHashWithObject(v23) + v16 - v24 + 32 * v24;
        }

        v19 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v19);
    }

    [(ICSortableSearchableItem *)self relevanceBitField];
    [(ICSortableSearchableItem *)self isPrefixMatch];
    [(ICSortableSearchableItem *)self modificationDateBucket];
    modificationDate = [(ICSortableSearchableItem *)self modificationDate];
    [modificationDate hash];
    creationDate = [(ICSortableSearchableItem *)self creationDate];
    [creationDate hash];
    [(ICSortableSearchableItem *)self searchResultType];
    self->_hash = ICHashWithHashKeys(v7, v27, v28, v29, v30, v31, v32, v33, v34);

    return self->_hash;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v37.receiver = self;
  v37.super_class = ICSortableSearchableItem;
  equalCopy = equal;
  v5 = [(ICSortableSearchableItem *)&v37 isEqual:equalCopy];
  objc_opt_class();
  v6 = ICDynamicCast();

  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_37;
  }

  v8 = [(ICSortableSearchableItem *)self searchableItem:v37.receiver];
  searchableItem = [v6 searchableItem];
  v10 = [v8 isEqual:searchableItem];

  if (!v10)
  {
    goto LABEL_37;
  }

  highlightInfo = [(ICSortableSearchableItem *)self highlightInfo];
  highlightInfo2 = [v6 highlightInfo];
  v13 = [highlightInfo isEqualToDictionary:highlightInfo2];

  if (!v13)
  {
    goto LABEL_37;
  }

  attachmentUniqueIdentifiers = [(ICSortableSearchableItem *)self attachmentUniqueIdentifiers];
  attachmentUniqueIdentifiers2 = [v6 attachmentUniqueIdentifiers];
  if ([attachmentUniqueIdentifiers isEqualToArray:attachmentUniqueIdentifiers2])
  {
  }

  else
  {
    attachmentUniqueIdentifiers3 = [(ICSortableSearchableItem *)self attachmentUniqueIdentifiers];
    attachmentUniqueIdentifiers4 = [v6 attachmentUniqueIdentifiers];

    if (attachmentUniqueIdentifiers3 != attachmentUniqueIdentifiers4)
    {
      goto LABEL_37;
    }
  }

  relevanceBitField = [(ICSortableSearchableItem *)self relevanceBitField];
  if (relevanceBitField != [v6 relevanceBitField])
  {
    goto LABEL_37;
  }

  isPrefixMatch = [(ICSortableSearchableItem *)self isPrefixMatch];
  if (isPrefixMatch != [v6 isPrefixMatch])
  {
    goto LABEL_37;
  }

  modificationDateBucket = [(ICSortableSearchableItem *)self modificationDateBucket];
  if (modificationDateBucket != [v6 modificationDateBucket])
  {
    goto LABEL_37;
  }

  modificationDate = [(ICSortableSearchableItem *)self modificationDate];
  modificationDate2 = [v6 modificationDate];
  v23 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == modificationDate)
  {
    v24 = 0;
  }

  else
  {
    v24 = modificationDate;
  }

  v25 = v24;
  if (v23 == modificationDate2)
  {
    v26 = 0;
  }

  else
  {
    v26 = modificationDate2;
  }

  v27 = v26;
  if (v25 | v27)
  {
    v28 = v27;
    if (!v25 || !v27)
    {
LABEL_36:

      goto LABEL_37;
    }

    v29 = [v25 isEqual:v27];

    if ((v29 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  modificationDate = [(ICSortableSearchableItem *)self creationDate];
  modificationDate2 = [v6 creationDate];
  if (v23 == modificationDate)
  {
    v30 = 0;
  }

  else
  {
    v30 = modificationDate;
  }

  v25 = v30;
  if (v23 == modificationDate2)
  {
    v31 = 0;
  }

  else
  {
    v31 = modificationDate2;
  }

  v32 = v31;
  if (!(v25 | v32))
  {

LABEL_40:
    searchResultType = [(ICSortableSearchableItem *)self searchResultType];
    v34 = searchResultType == [v6 searchResultType];
    goto LABEL_38;
  }

  v28 = v32;
  if (!v25 || !v32)
  {
    goto LABEL_36;
  }

  v33 = [v25 isEqual:v32];

  if (v33)
  {
    goto LABEL_40;
  }

LABEL_37:
  v34 = 0;
LABEL_38:

  return v34;
}

+ (id)sortDescriptorsForRankingStrategy:(unint64_t)strategy
{
  switch(strategy)
  {
    case 2uLL:
      v13 = objc_alloc(MEMORY[0x277CBEB18]);
      v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"searchResultType" ascending:1];
      v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isPrefixMatch" ascending:0];
      v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"modificationDateBucket" ascending:1];
      v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"rankingScore" ascending:0];
      v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"relevanceBitField" ascending:0];
      v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"modificationDate" ascending:0];
      v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
      v12 = [v13 initWithObjects:{v4, v5, v6, v7, v8, v11, v14, 0}];

      goto LABEL_8;
    case 1uLL:
      v3 = objc_alloc(MEMORY[0x277CBEB18]);
      v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"searchResultType" ascending:1];
      v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isPrefixMatch" ascending:0];
      v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"rankingScore" ascending:0];
      v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"relevanceBitField" ascending:0];
      v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"modificationDate" ascending:0];
      v9 = MEMORY[0x277CCAC98];
      v10 = @"creationDate";
      goto LABEL_6;
    case 0uLL:
      v3 = objc_alloc(MEMORY[0x277CBEB18]);
      v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"searchResultType" ascending:1];
      v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isPrefixMatch" ascending:0];
      v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"modificationDate" ascending:0];
      v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
      v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"rankingScore" ascending:0];
      v9 = MEMORY[0x277CCAC98];
      v10 = @"relevanceBitField";
LABEL_6:
      v11 = [v9 sortDescriptorWithKey:v10 ascending:0];
      v12 = [v3 initWithObjects:{v4, v5, v6, v7, v8, v11, 0}];
LABEL_8:

      goto LABEL_10;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

@end