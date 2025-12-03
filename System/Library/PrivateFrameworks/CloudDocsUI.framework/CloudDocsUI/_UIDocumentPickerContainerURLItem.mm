@interface _UIDocumentPickerContainerURLItem
+ (id)defaultKeys;
- (BOOL)attributesModified:(id)modified;
- (BOOL)renameable;
- (_UIDocumentPickerContainerURLItem)initWithURL:(id)l;
- (id)sortPath;
- (id)sortPathComponents;
- (unint64_t)indentationLevel;
- (void)_modelChanged;
- (void)_removeCachedValues;
- (void)cacheValues;
@end

@implementation _UIDocumentPickerContainerURLItem

- (_UIDocumentPickerContainerURLItem)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = _UIDocumentPickerContainerURLItem;
  v6 = [(_UIDocumentPickerContainerItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v7->_cachedIndentation = 0x7FFFFFFFFFFFFFFFLL;
    [(_UIDocumentPickerContainerURLItem *)v7 cacheValues];
  }

  return v7;
}

- (void)_removeCachedValues
{
  cachedSubtitle = self->_cachedSubtitle;
  self->_cachedSubtitle = 0;

  cachedSubtitle2 = self->_cachedSubtitle2;
  self->_cachedSubtitle2 = 0;

  cachedTitle = self->_cachedTitle;
  self->_cachedTitle = 0;

  cachedTags = self->_cachedTags;
  self->_cachedTags = 0;

  cachedSortPath = self->_cachedSortPath;
  self->_cachedSortPath = 0;

  cachedContentModifiedDate = self->_cachedContentModifiedDate;
  self->_cachedContentModifiedDate = 0;

  cachedContentType = self->_cachedContentType;
  self->_cachedContentType = 0;

  generationIdentifier = self->_generationIdentifier;
  self->_generationIdentifier = 0;

  self->_cachedIndentation = 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)attributesModified:(id)modified
{
  modifiedCopy = modified;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [modifiedCopy[22] isEqual:self->_generationIdentifier] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (id)defaultKeys
{
  v9[10] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE8E8];
  v9[0] = *MEMORY[0x277CBE8D0];
  v9[1] = v2;
  v3 = *MEMORY[0x277CBE868];
  v9[2] = *MEMORY[0x277CBE838];
  v9[3] = v3;
  v4 = *MEMORY[0x277CBE858];
  v9[4] = *MEMORY[0x277CBE890];
  v9[5] = v4;
  v5 = *MEMORY[0x277CBE848];
  v9[6] = *MEMORY[0x277CBE7B0];
  v9[7] = v5;
  v6 = *MEMORY[0x277CBE918];
  v9[8] = *MEMORY[0x277CBE798];
  v9[9] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:10];

  return v7;
}

- (void)cacheValues
{
  v3 = [(_UIDocumentPickerContainerURLItem *)self url];
  defaultKeys = [objc_opt_class() defaultKeys];
  v4 = [v3 promisedItemResourceValuesForKeys:? error:?];
  v5 = [v4 objectForKey:*MEMORY[0x277CBE8D0]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 objectForKey:*MEMORY[0x277CBE8E8]];
  }

  v32 = v7;

  v30 = [v4 objectForKey:*MEMORY[0x277CBE918]];
  v46[0] = 0;
  [v3 br_getTagNames:v46 error:0];
  v8 = v46[0];
  v9 = [v4 objectForKey:*MEMORY[0x277CBE798]];
  v10 = [v4 valueForKey:*MEMORY[0x277CBE838]];
  v33 = v10;
  if (v10)
  {
    [v10 longLongValue];
    v11 = NSLocalizedFileSizeDescription();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 valueForKey:*MEMORY[0x277CBE7B0]];
  v31 = v12;
  if (v12)
  {
    v13 = BRFormatModifiedAgoWithDate(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v4 valueForKey:*MEMORY[0x277CBE868]];
  v15 = [v4 valueForKey:*MEMORY[0x277CBE890]];
  v35 = v3;
  v29 = v15;
  v17 = 0;
  if (v14)
  {
    v16 = v15;
    if ([v14 BOOLValue])
    {
      if (v16 && ![v16 BOOLValue])
      {
        v17 = 1;
      }
    }
  }

  v18 = [v4 valueForKey:*MEMORY[0x277CBE858]];
  bOOLValue = [v18 BOOLValue];

  v20 = [v4 valueForKey:*MEMORY[0x277CBE848]];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __48___UIDocumentPickerContainerURLItem_cacheValues__block_invoke;
  v36[3] = &unk_278DD6948;
  v36[4] = self;
  v37 = v32;
  v38 = v11;
  v39 = v13;
  v40 = v8;
  v43 = v20;
  v44 = v17;
  v41 = v30;
  v42 = v9;
  v45 = bOOLValue;
  v21 = v20;
  v22 = v9;
  v23 = v30;
  v24 = v8;
  v25 = v13;
  v26 = v11;
  v27 = v32;
  v28 = MEMORY[0x245D41DF0](v36);
  v28[2]();
}

- (void)_modelChanged
{
  model = [(_UIDocumentPickerContainerItem *)self model];
  modelObjects = [model modelObjects];
  v4 = -[_UIDocumentPickerContainerItem _formattedSubtitleForNumberOfItems:](self, "_formattedSubtitleForNumberOfItems:", [modelObjects count]);
  v5 = [v4 copy];
  cachedSubtitle = self->_cachedSubtitle;
  self->_cachedSubtitle = v5;
}

- (unint64_t)indentationLevel
{
  result = self->_cachedIndentation;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    sortPathComponents = [(_UIDocumentPickerContainerURLItem *)self sortPathComponents];
    [(_UIDocumentPickerContainerURLItem *)self _cacheIndentationLevelWithSortPathComponents:sortPathComponents];

    return self->_cachedIndentation;
  }

  return result;
}

- (id)sortPathComponents
{
  v3 = [(_UIDocumentPickerContainerURLItem *)self url];
  br_containerID = [v3 br_containerID];
  v5 = [br_containerID isEqualToString:*MEMORY[0x277CFAD68]];

  v6 = [(_UIDocumentPickerContainerURLItem *)self url];
  br_pathRelativeToMobileDocuments = [v6 br_pathRelativeToMobileDocuments];
  pathComponents = [br_pathRelativeToMobileDocuments pathComponents];
  v9 = [pathComponents mutableCopy];

  [v9 removeObjectAtIndex:v5 ^ 1u];

  return v9;
}

- (id)sortPath
{
  v3 = objc_autoreleasePoolPush();
  cachedSortPath = self->_cachedSortPath;
  if (!cachedSortPath)
  {
    sortPathComponents = [(_UIDocumentPickerContainerURLItem *)self sortPathComponents];
    v6 = [sortPathComponents componentsJoinedByString:@"/"];
    v7 = self->_cachedSortPath;
    self->_cachedSortPath = v6;

    if (self->_cachedIndentation == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(_UIDocumentPickerContainerURLItem *)self _cacheIndentationLevelWithSortPathComponents:sortPathComponents];
    }

    cachedSortPath = self->_cachedSortPath;
  }

  v8 = cachedSortPath;
  objc_autoreleasePoolPop(v3);

  return v8;
}

- (BOOL)renameable
{
  v3 = [(_UIDocumentPickerContainerURLItem *)self url];
  if (![(_UIDocumentPickerContainerURLItem *)self type])
  {
    uRLByDeletingLastPathComponent = [v3 URLByDeletingLastPathComponent];

    v3 = uRLByDeletingLastPathComponent;
  }

  v7 = 0;
  if ([v3 getResourceValue:&v7 forKey:*MEMORY[0x277CBE8C0] error:0])
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end