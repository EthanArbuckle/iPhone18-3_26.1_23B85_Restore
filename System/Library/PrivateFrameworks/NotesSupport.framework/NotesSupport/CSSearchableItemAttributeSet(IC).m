@interface CSSearchableItemAttributeSet(IC)
+ (id)ic_customAttributeKeyDictionary;
+ (id)ic_customAttributeKeyWithName:()IC searchable:searchableByDefault:unique:multiValued:;
+ (id)ic_dataSourceIdentifierCustomKey;
- (id)ic_accountName;
- (id)ic_dataSourceIdentifier;
- (id)ic_folderName;
- (uint64_t)ic_hasAttachments;
- (uint64_t)ic_hasChecklists;
- (uint64_t)ic_hasDrawings;
- (uint64_t)ic_hasScannedDocuments;
- (uint64_t)ic_hasTags;
- (uint64_t)ic_isLocked;
- (uint64_t)ic_isShared;
- (uint64_t)ic_relevance;
- (uint64_t)ic_searchResultType;
- (void)ic_populateValuesForSpecializedFields;
- (void)setIc_accountName:()IC;
- (void)setIc_dataSourceIdentifier:()IC;
- (void)setIc_folderName:()IC;
- (void)setIc_hasAttachments:()IC;
- (void)setIc_hasChecklists:()IC;
- (void)setIc_hasDrawings:()IC;
- (void)setIc_hasScannedDocuments:()IC;
- (void)setIc_hasTags:()IC;
- (void)setIc_isLocked:()IC;
- (void)setIc_isShared:()IC;
- (void)setIc_relatedModernNoteUniqueIdentifier:()IC;
- (void)setIc_searchResultType:()IC;
@end

@implementation CSSearchableItemAttributeSet(IC)

+ (id)ic_customAttributeKeyDictionary
{
  if (ic_customAttributeKeyDictionary_onceTokenCustomAttributeKeys != -1)
  {
    +[CSSearchableItemAttributeSet(IC) ic_customAttributeKeyDictionary];
  }

  v1 = ic_customAttributeKeyDictionary_sCustomAttributeKeyDictionary;

  return v1;
}

+ (id)ic_customAttributeKeyWithName:()IC searchable:searchableByDefault:unique:multiValued:
{
  v12 = a3;
  v13 = a1;
  objc_sync_enter(v13);
  v14 = [v13 ic_customAttributeKeyDictionary];
  v15 = [v14 objectForKeyedSubscript:v12];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:v12 searchable:a4 searchableByDefault:a5 unique:a6 multiValued:a7];
    [v14 setObject:v15 forKey:v12];
  }

  objc_sync_exit(v13);

  return v15;
}

- (void)ic_populateValuesForSpecializedFields
{
  v2 = [MEMORY[0x1E6964E90] ic_specializedIndexFieldAttributeKeyForStringField:@"_ICItemDisplayName"];
  if (v2)
  {
    v4 = v2;
    v3 = [a1 displayName];
    [a1 setValue:v3 forCustomKey:v4];

    v2 = v4;
  }
}

+ (id)ic_dataSourceIdentifierCustomKey
{
  if (ic_dataSourceIdentifierCustomKey_onceToken != -1)
  {
    +[CSSearchableItemAttributeSet(IC) ic_dataSourceIdentifierCustomKey];
  }

  v1 = ic_dataSourceIdentifierCustomKey_sDataSourceIdentifierCustomKey;

  return v1;
}

- (void)setIc_dataSourceIdentifier:()IC
{
  v4 = a3;
  v5 = [objc_opt_class() ic_dataSourceIdentifierCustomKey];
  [a1 setValue:v4 forCustomKey:v5];
}

- (id)ic_dataSourceIdentifier
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() ic_dataSourceIdentifierCustomKey];
  v4 = [a1 valueForCustomKey:v3];
  v5 = ICDynamicCast(v2, v4);

  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = [a1 attributeForKey:@"DataSourceIdentifier"];
    v5 = ICDynamicCast(v6, v7);
  }

  return v5;
}

- (uint64_t)ic_searchResultType
{
  v1 = [a1 attributeForKey:@"_ICItemSearchResultType"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (void)setIc_searchResultType:()IC
{
  v5 = [MEMORY[0x1E6964E90] ic_searchResultTypeCustomKey];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [a1 setValue:v6 forCustomKey:v7];

    v5 = v7;
  }
}

- (uint64_t)ic_relevance
{
  v1 = [a1 queryResultRelevance];
  v2 = [v1 integerValue];

  return v2;
}

- (uint64_t)ic_isLocked
{
  v1 = [a1 attributeForKey:@"_ICItemIsLocked"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIc_isLocked:()IC
{
  v5 = [MEMORY[0x1E6964E90] ic_itemIsLockedCustomKey];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [a1 setValue:v6 forCustomKey:v7];

    v5 = v7;
  }
}

- (uint64_t)ic_isShared
{
  v1 = [a1 attributeForKey:@"_ICItemIsShared"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIc_isShared:()IC
{
  v5 = [MEMORY[0x1E6964E90] ic_itemIsSharedCustomKey];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [a1 setValue:v6 forCustomKey:v7];

    v5 = v7;
  }
}

- (void)setIc_relatedModernNoteUniqueIdentifier:()IC
{
  v5 = a3;
  v4 = [MEMORY[0x1E6964E90] ic_relatedModernNoteUniqueIdentifierCustomKey];
  if (v4)
  {
    [a1 setValue:v5 forCustomKey:v4];
  }
}

- (uint64_t)ic_hasChecklists
{
  v1 = [a1 attributeForKey:@"_ICItemHasChecklists"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIc_hasChecklists:()IC
{
  v5 = [MEMORY[0x1E6964E90] ic_itemHasChecklistsCustomKey];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [a1 setValue:v6 forCustomKey:v7];

    v5 = v7;
  }
}

- (uint64_t)ic_hasTags
{
  v1 = [a1 attributeForKey:@"_ICItemHasICItemHasTags"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIc_hasTags:()IC
{
  v5 = [MEMORY[0x1E6964E90] ic_itemHasTagsCustomKey];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [a1 setValue:v6 forCustomKey:v7];

    v5 = v7;
  }
}

- (uint64_t)ic_hasDrawings
{
  v1 = [a1 attributeForKey:@"_ICItemHasDrawings"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIc_hasDrawings:()IC
{
  v5 = [MEMORY[0x1E6964E90] ic_itemHasDrawingsCustomKey];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [a1 setValue:v6 forCustomKey:v7];

    v5 = v7;
  }
}

- (uint64_t)ic_hasScannedDocuments
{
  v1 = [a1 attributeForKey:@"_ICItemHasScannedDocuments"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIc_hasScannedDocuments:()IC
{
  v5 = [MEMORY[0x1E6964E90] ic_itemHasScannedDocumentsCustomKey];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [a1 setValue:v6 forCustomKey:v7];

    v5 = v7;
  }
}

- (uint64_t)ic_hasAttachments
{
  v1 = [a1 attributeForKey:@"_ICItemHasAttachments"];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIc_hasAttachments:()IC
{
  v5 = [MEMORY[0x1E6964E90] ic_itemHasAttachmentsCustomKey];
  if (v5)
  {
    v7 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [a1 setValue:v6 forCustomKey:v7];

    v5 = v7;
  }
}

- (id)ic_accountName
{
  v1 = [a1 attributeForKey:@"_ICItemAccountName"];
  v2 = [v1 stringValue];

  return v2;
}

- (void)setIc_accountName:()IC
{
  v5 = a3;
  v4 = [MEMORY[0x1E6964E90] ic_accountNameCustomKey];
  if (v4)
  {
    [a1 setValue:v5 forCustomKey:v4];
  }
}

- (id)ic_folderName
{
  v1 = [a1 attributeForKey:@"_ICItemFolderName"];
  v2 = [v1 stringValue];

  return v2;
}

- (void)setIc_folderName:()IC
{
  v5 = a3;
  v4 = [MEMORY[0x1E6964E90] ic_folderNameCustomKey];
  if (v4)
  {
    [a1 setValue:v5 forCustomKey:v4];
  }
}

@end