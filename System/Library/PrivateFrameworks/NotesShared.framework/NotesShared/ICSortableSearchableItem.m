@interface ICSortableSearchableItem
+ (id)sortDescriptorsForRankingStrategy:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (ICSortableSearchableItem)initWithSearchableItem:(id)a3 highlightInfo:(id)a4 rankingScore:(double)a5 attachmentUniqueIdentifiers:(id)a6;
- (ICSortableSearchableItem)initWithSearchableItem:(id)a3 searchString:(id)a4 rankingQueriesDefinition:(id)a5 rankingScore:(double)a6 attachmentUniqueIdentifiers:(id)a7 language:(id)a8;
- (NSDictionary)highlightInfo;
- (unint64_t)hash;
- (void)lazilyInitializeHighlightInfoAndIsPrefixMatchIfNecessary;
@end

@implementation ICSortableSearchableItem

- (ICSortableSearchableItem)initWithSearchableItem:(id)a3 highlightInfo:(id)a4 rankingScore:(double)a5 attachmentUniqueIdentifiers:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ICSortableSearchableItem;
  v14 = [(ICSortableSearchableItem *)&v24 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_searchableItem, a3);
    v15->_rankingScore = a5;
    objc_storeStrong(&v15->_attachmentUniqueIdentifiers, a6);
    objc_storeStrong(&v15->_highlightInfo, a4);
    v15->_isPrefixMatch = [MEMORY[0x277CBEAC0] highlightInfoContainsPrefixMatch:v12];
    v15->_relevanceBitField = [ICRankingQueriesDefinition relevanceBitFieldForSearchableItem:v11];
    v15->_modificationDateBucket = [ICRankingQueriesDefinition modificationDateBucketForSearchableItem:v11];
    v16 = [v11 attributeSet];
    v17 = [v16 contentModificationDate];
    modificationDate = v15->_modificationDate;
    v15->_modificationDate = v17;

    v19 = [v11 attributeSet];
    v20 = [v19 contentCreationDate];
    creationDate = v15->_creationDate;
    v15->_creationDate = v20;

    v22 = [v11 attributeSet];
    v15->_searchResultType = [v22 ic_searchResultType];
  }

  return v15;
}

- (ICSortableSearchableItem)initWithSearchableItem:(id)a3 searchString:(id)a4 rankingQueriesDefinition:(id)a5 rankingScore:(double)a6 attachmentUniqueIdentifiers:(id)a7 language:(id)a8
{
  v15 = a3;
  v29 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = ICSortableSearchableItem;
  v19 = [(ICSortableSearchableItem *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_searchableItem, a3);
    objc_storeStrong(&v20->_searchString, a4);
    objc_storeStrong(&v20->_rankingQueriesDefinition, a5);
    v20->_rankingScore = a6;
    objc_storeStrong(&v20->_attachmentUniqueIdentifiers, a7);
    objc_storeStrong(&v20->_language, a8);
    v20->_needsLazyInitialization = 1;
    v20->_relevanceBitField = [ICRankingQueriesDefinition relevanceBitFieldForSearchableItem:v15];
    v20->_modificationDateBucket = [ICRankingQueriesDefinition modificationDateBucketForSearchableItem:v15];
    v21 = [v15 attributeSet];
    v22 = [v21 contentModificationDate];
    modificationDate = v20->_modificationDate;
    v20->_modificationDate = v22;

    v24 = [v15 attributeSet];
    v25 = [v24 contentCreationDate];
    creationDate = v20->_creationDate;
    v20->_creationDate = v25;

    v27 = [v15 attributeSet];
    v20->_searchResultType = [v27 ic_searchResultType];
  }

  return v20;
}

- (void)lazilyInitializeHighlightInfoAndIsPrefixMatchIfNecessary
{
  if (self->_needsLazyInitialization)
  {
    v3 = [(ICSortableSearchableItem *)self rankingQueriesDefinition];
    v4 = [(ICSortableSearchableItem *)self searchableItem];
    v5 = [v3 highlightInfoForSearchableItem:v4];

    if (!v5 || ![(NSDictionary *)v5 count])
    {
      v6 = MEMORY[0x277CBEAC0];
      v7 = [(ICSortableSearchableItem *)self searchString];
      v8 = [(ICSortableSearchableItem *)self language];
      v9 = [v6 highlightInfoForSearchStringWithPrefixMatchInAllFields:v7 language:v8];

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
    v4 = [(ICSortableSearchableItem *)self attachmentUniqueIdentifiers];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v6 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = v4;
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

    v35 = [(ICSortableSearchableItem *)self searchableItem];
    v34 = [v35 hash];
    v13 = [(ICSortableSearchableItem *)self highlightInfo];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v15 hash];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = v13;
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
    v25 = [(ICSortableSearchableItem *)self modificationDate];
    [v25 hash];
    v26 = [(ICSortableSearchableItem *)self creationDate];
    [v26 hash];
    [(ICSortableSearchableItem *)self searchResultType];
    self->_hash = ICHashWithHashKeys(v7, v27, v28, v29, v30, v31, v32, v33, v34);

    return self->_hash;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v37.receiver = self;
  v37.super_class = ICSortableSearchableItem;
  v4 = a3;
  v5 = [(ICSortableSearchableItem *)&v37 isEqual:v4];
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
  v9 = [v6 searchableItem];
  v10 = [v8 isEqual:v9];

  if (!v10)
  {
    goto LABEL_37;
  }

  v11 = [(ICSortableSearchableItem *)self highlightInfo];
  v12 = [v6 highlightInfo];
  v13 = [v11 isEqualToDictionary:v12];

  if (!v13)
  {
    goto LABEL_37;
  }

  v14 = [(ICSortableSearchableItem *)self attachmentUniqueIdentifiers];
  v15 = [v6 attachmentUniqueIdentifiers];
  if ([v14 isEqualToArray:v15])
  {
  }

  else
  {
    v16 = [(ICSortableSearchableItem *)self attachmentUniqueIdentifiers];
    v17 = [v6 attachmentUniqueIdentifiers];

    if (v16 != v17)
    {
      goto LABEL_37;
    }
  }

  v18 = [(ICSortableSearchableItem *)self relevanceBitField];
  if (v18 != [v6 relevanceBitField])
  {
    goto LABEL_37;
  }

  v19 = [(ICSortableSearchableItem *)self isPrefixMatch];
  if (v19 != [v6 isPrefixMatch])
  {
    goto LABEL_37;
  }

  v20 = [(ICSortableSearchableItem *)self modificationDateBucket];
  if (v20 != [v6 modificationDateBucket])
  {
    goto LABEL_37;
  }

  v21 = [(ICSortableSearchableItem *)self modificationDate];
  v22 = [v6 modificationDate];
  v23 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24;
  if (v23 == v22)
  {
    v26 = 0;
  }

  else
  {
    v26 = v22;
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

  v21 = [(ICSortableSearchableItem *)self creationDate];
  v22 = [v6 creationDate];
  if (v23 == v21)
  {
    v30 = 0;
  }

  else
  {
    v30 = v21;
  }

  v25 = v30;
  if (v23 == v22)
  {
    v31 = 0;
  }

  else
  {
    v31 = v22;
  }

  v32 = v31;
  if (!(v25 | v32))
  {

LABEL_40:
    v36 = [(ICSortableSearchableItem *)self searchResultType];
    v34 = v36 == [v6 searchResultType];
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

+ (id)sortDescriptorsForRankingStrategy:(unint64_t)a3
{
  switch(a3)
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