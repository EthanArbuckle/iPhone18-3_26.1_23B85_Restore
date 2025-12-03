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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ic_customAttributeKeyDictionary = [selfCopy ic_customAttributeKeyDictionary];
  v15 = [ic_customAttributeKeyDictionary objectForKeyedSubscript:v12];
  if (!v15)
  {
    v15 = [objc_alloc(MEMORY[0x1E6964E00]) initWithKeyName:v12 searchable:a4 searchableByDefault:a5 unique:a6 multiValued:a7];
    [ic_customAttributeKeyDictionary setObject:v15 forKey:v12];
  }

  objc_sync_exit(selfCopy);

  return v15;
}

- (void)ic_populateValuesForSpecializedFields
{
  v2 = [MEMORY[0x1E6964E90] ic_specializedIndexFieldAttributeKeyForStringField:@"_ICItemDisplayName"];
  if (v2)
  {
    v4 = v2;
    displayName = [self displayName];
    [self setValue:displayName forCustomKey:v4];

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
  ic_dataSourceIdentifierCustomKey = [objc_opt_class() ic_dataSourceIdentifierCustomKey];
  [self setValue:v4 forCustomKey:ic_dataSourceIdentifierCustomKey];
}

- (id)ic_dataSourceIdentifier
{
  v2 = objc_opt_class();
  ic_dataSourceIdentifierCustomKey = [objc_opt_class() ic_dataSourceIdentifierCustomKey];
  v4 = [self valueForCustomKey:ic_dataSourceIdentifierCustomKey];
  v5 = ICDynamicCast(v2, v4);

  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = [self attributeForKey:@"DataSourceIdentifier"];
    v5 = ICDynamicCast(v6, v7);
  }

  return v5;
}

- (uint64_t)ic_searchResultType
{
  v1 = [self attributeForKey:@"_ICItemSearchResultType"];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setIc_searchResultType:()IC
{
  ic_searchResultTypeCustomKey = [MEMORY[0x1E6964E90] ic_searchResultTypeCustomKey];
  if (ic_searchResultTypeCustomKey)
  {
    v7 = ic_searchResultTypeCustomKey;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [self setValue:v6 forCustomKey:v7];

    ic_searchResultTypeCustomKey = v7;
  }
}

- (uint64_t)ic_relevance
{
  queryResultRelevance = [self queryResultRelevance];
  integerValue = [queryResultRelevance integerValue];

  return integerValue;
}

- (uint64_t)ic_isLocked
{
  v1 = [self attributeForKey:@"_ICItemIsLocked"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIc_isLocked:()IC
{
  ic_itemIsLockedCustomKey = [MEMORY[0x1E6964E90] ic_itemIsLockedCustomKey];
  if (ic_itemIsLockedCustomKey)
  {
    v7 = ic_itemIsLockedCustomKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self setValue:v6 forCustomKey:v7];

    ic_itemIsLockedCustomKey = v7;
  }
}

- (uint64_t)ic_isShared
{
  v1 = [self attributeForKey:@"_ICItemIsShared"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIc_isShared:()IC
{
  ic_itemIsSharedCustomKey = [MEMORY[0x1E6964E90] ic_itemIsSharedCustomKey];
  if (ic_itemIsSharedCustomKey)
  {
    v7 = ic_itemIsSharedCustomKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self setValue:v6 forCustomKey:v7];

    ic_itemIsSharedCustomKey = v7;
  }
}

- (void)setIc_relatedModernNoteUniqueIdentifier:()IC
{
  v5 = a3;
  ic_relatedModernNoteUniqueIdentifierCustomKey = [MEMORY[0x1E6964E90] ic_relatedModernNoteUniqueIdentifierCustomKey];
  if (ic_relatedModernNoteUniqueIdentifierCustomKey)
  {
    [self setValue:v5 forCustomKey:ic_relatedModernNoteUniqueIdentifierCustomKey];
  }
}

- (uint64_t)ic_hasChecklists
{
  v1 = [self attributeForKey:@"_ICItemHasChecklists"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIc_hasChecklists:()IC
{
  ic_itemHasChecklistsCustomKey = [MEMORY[0x1E6964E90] ic_itemHasChecklistsCustomKey];
  if (ic_itemHasChecklistsCustomKey)
  {
    v7 = ic_itemHasChecklistsCustomKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self setValue:v6 forCustomKey:v7];

    ic_itemHasChecklistsCustomKey = v7;
  }
}

- (uint64_t)ic_hasTags
{
  v1 = [self attributeForKey:@"_ICItemHasICItemHasTags"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIc_hasTags:()IC
{
  ic_itemHasTagsCustomKey = [MEMORY[0x1E6964E90] ic_itemHasTagsCustomKey];
  if (ic_itemHasTagsCustomKey)
  {
    v7 = ic_itemHasTagsCustomKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self setValue:v6 forCustomKey:v7];

    ic_itemHasTagsCustomKey = v7;
  }
}

- (uint64_t)ic_hasDrawings
{
  v1 = [self attributeForKey:@"_ICItemHasDrawings"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIc_hasDrawings:()IC
{
  ic_itemHasDrawingsCustomKey = [MEMORY[0x1E6964E90] ic_itemHasDrawingsCustomKey];
  if (ic_itemHasDrawingsCustomKey)
  {
    v7 = ic_itemHasDrawingsCustomKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self setValue:v6 forCustomKey:v7];

    ic_itemHasDrawingsCustomKey = v7;
  }
}

- (uint64_t)ic_hasScannedDocuments
{
  v1 = [self attributeForKey:@"_ICItemHasScannedDocuments"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIc_hasScannedDocuments:()IC
{
  ic_itemHasScannedDocumentsCustomKey = [MEMORY[0x1E6964E90] ic_itemHasScannedDocumentsCustomKey];
  if (ic_itemHasScannedDocumentsCustomKey)
  {
    v7 = ic_itemHasScannedDocumentsCustomKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self setValue:v6 forCustomKey:v7];

    ic_itemHasScannedDocumentsCustomKey = v7;
  }
}

- (uint64_t)ic_hasAttachments
{
  v1 = [self attributeForKey:@"_ICItemHasAttachments"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIc_hasAttachments:()IC
{
  ic_itemHasAttachmentsCustomKey = [MEMORY[0x1E6964E90] ic_itemHasAttachmentsCustomKey];
  if (ic_itemHasAttachmentsCustomKey)
  {
    v7 = ic_itemHasAttachmentsCustomKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [self setValue:v6 forCustomKey:v7];

    ic_itemHasAttachmentsCustomKey = v7;
  }
}

- (id)ic_accountName
{
  v1 = [self attributeForKey:@"_ICItemAccountName"];
  stringValue = [v1 stringValue];

  return stringValue;
}

- (void)setIc_accountName:()IC
{
  v5 = a3;
  ic_accountNameCustomKey = [MEMORY[0x1E6964E90] ic_accountNameCustomKey];
  if (ic_accountNameCustomKey)
  {
    [self setValue:v5 forCustomKey:ic_accountNameCustomKey];
  }
}

- (id)ic_folderName
{
  v1 = [self attributeForKey:@"_ICItemFolderName"];
  stringValue = [v1 stringValue];

  return stringValue;
}

- (void)setIc_folderName:()IC
{
  v5 = a3;
  ic_folderNameCustomKey = [MEMORY[0x1E6964E90] ic_folderNameCustomKey];
  if (ic_folderNameCustomKey)
  {
    [self setValue:v5 forCustomKey:ic_folderNameCustomKey];
  }
}

@end