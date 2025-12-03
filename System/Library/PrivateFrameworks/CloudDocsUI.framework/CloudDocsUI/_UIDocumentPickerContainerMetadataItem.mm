@interface _UIDocumentPickerContainerMetadataItem
- (BOOL)isEqual:(id)equal;
- (_UIDocumentPickerContainerMetadataItem)initWithMetadataItem:(id)item;
- (id)sortPath;
- (id)sortPathComponents;
- (id)urlInLocalContainer;
- (unint64_t)indentationLevel;
- (void)_modelChanged;
- (void)_removeCachedValues;
- (void)cacheValues:(id)values;
@end

@implementation _UIDocumentPickerContainerMetadataItem

- (_UIDocumentPickerContainerMetadataItem)initWithMetadataItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = _UIDocumentPickerContainerMetadataItem;
  v5 = [(_UIDocumentPickerContainerItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIDocumentPickerContainerMetadataItem *)v5 cacheValues:itemCopy];
    v6->_cachedIndentation = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
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

  cachedURL = self->_cachedURL;
  self->_cachedURL = 0;

  cachedSortPath = self->_cachedSortPath;
  self->_cachedSortPath = 0;

  cachedContentModifiedDate = self->_cachedContentModifiedDate;
  self->_cachedContentModifiedDate = 0;

  cachedURLInLocalContainer = self->_cachedURLInLocalContainer;
  self->_cachedURLInLocalContainer = 0;

  self->_cachedIndentation = 0x7FFFFFFFFFFFFFFFLL;
  self->_cachedRenameable = 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy[22] isEqual:self->_cachedFileObjectID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)cacheValues:(id)values
{
  valuesCopy = values;
  [(_UIDocumentPickerContainerMetadataItem *)self _removeCachedValues];
  v4 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA4C0]];
  v5 = [v4 copy];
  cachedTitle = self->_cachedTitle;
  self->_cachedTitle = v5;

  if (!self->_cachedTitle)
  {
    v7 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA4D0]];
    v8 = [v7 copy];
    v9 = self->_cachedTitle;
    self->_cachedTitle = v8;
  }

  v10 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA4E0]];
  v11 = [v10 copy];
  cachedURL = self->_cachedURL;
  self->_cachedURL = v11;

  v13 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA4B8]];
  v14 = [v13 copy];
  cachedContentType = self->_cachedContentType;
  self->_cachedContentType = v14;

  v16 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA540]];
  v17 = [v16 copy];
  cachedURLInLocalContainer = self->_cachedURLInLocalContainer;
  self->_cachedURLInLocalContainer = v17;

  v19 = [valuesCopy valueForAttribute:@"BRMetadataItemFileObjectIdentifierKey"];
  cachedFileObjectID = self->_cachedFileObjectID;
  self->_cachedFileObjectID = v19;

  v21 = self->_cachedURL;
  br_containerID = [(NSURL *)v21 br_containerID];
  v23 = [br_containerID isEqualToString:*MEMORY[0x277CFAD68]];

  if (!v23)
  {
LABEL_11:

    goto LABEL_12;
  }

  br_pathRelativeToMobileDocuments = [(NSURL *)v21 br_pathRelativeToMobileDocuments];
  v25 = [br_pathRelativeToMobileDocuments rangeOfString:@"/"];
  lastPathComponent = [(NSURL *)v21 lastPathComponent];
  v27 = [br_pathRelativeToMobileDocuments rangeOfString:lastPathComponent options:4];

  if (v25 && v25 + 1 == v27)
  {
    if ([(NSString *)self->_cachedTitle isEqualToString:*MEMORY[0x277CFAD80]])
    {
      v28 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v21 = v28;
      v29 = @"Desktop";
    }

    else
    {
      if (![(NSString *)self->_cachedTitle isEqualToString:*MEMORY[0x277CFAD90]])
      {
        goto LABEL_12;
      }

      v28 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v21 = v28;
      v29 = @"Documents";
    }

    v30 = [(NSURL *)v28 localizedStringForKey:v29 value:v29 table:@"Localizable"];
    v31 = self->_cachedTitle;
    self->_cachedTitle = v30;

    goto LABEL_11;
  }

LABEL_12:
  v32 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA530]];
  v33 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA528]];
  if ([v32 BOOLValue])
  {
    v34 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA550]];
    if ([v34 isEqualToString:*MEMORY[0x277CCA568]])
    {
      v35 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v36 = [v35 localizedStringForKey:@"Shared by Me" value:@"Shared by Me" table:@"Localizable"];
      v37 = [v36 copy];
      cachedSubtitle = self->_cachedSubtitle;
      self->_cachedSubtitle = v37;

      self->_cachedRenameable = 1;
    }

    else
    {
      v45 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA560]];
      if (v45)
      {
        v46 = MEMORY[0x277CCACA8];
        v47 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v48 = [v47 localizedStringForKey:@"Shared by SomeoneElseThanMe" value:@"Shared by %@" table:@"Localizable"];
        v49 = [v46 localizedStringWithFormat:v48, v45];
        v50 = [v49 copy];
        v51 = self->_cachedSubtitle;
        self->_cachedSubtitle = v50;

        v52 = 0;
      }

      else
      {
        v47 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v48 = [v47 localizedStringForKey:@"Shared by unknown user" value:@"Shared by unknown user" table:@"Localizable"];
        v53 = [v48 copy];
        v49 = self->_cachedSubtitle;
        self->_cachedSubtitle = v53;
        v52 = 1;
      }

      self->_cachedRenameable = v52;
    }
  }

  else
  {
    if (![v33 BOOLValue])
    {
      self->_cachedRenameable = 1;
      goto LABEL_23;
    }

    v34 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA510]];
    v39 = MEMORY[0x277CCACA8];
    v40 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v41 = [v40 localizedStringForKey:@"in ContainerDisplayName" value:@"in %@" table:@"Localizable"];
    v42 = [v39 localizedStringWithFormat:v41, v34];
    v43 = [v42 copy];
    v44 = self->_cachedSubtitle;
    self->_cachedSubtitle = v43;

    self->_cachedRenameable = 0;
  }

LABEL_23:
  v54 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA548]];
  v55 = v54;
  if (!v54)
  {
    goto LABEL_29;
  }

  domain = [v54 domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

    goto LABEL_28;
  }

  code = [v55 code];

  if (code != 4355)
  {
LABEL_28:
    v58 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v59 = [v58 localizedStringForKey:@"Error" value:@"Error" table:@"Localizable"];
    v60 = self->_cachedSubtitle;
    self->_cachedSubtitle = v59;
  }

LABEL_29:
  v61 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA4C8]];
  v62 = [v61 copy];
  cachedContentModifiedDate = self->_cachedContentModifiedDate;
  self->_cachedContentModifiedDate = v62;

  self->_cachedType = UTTypeConformsTo(self->_cachedContentType, *MEMORY[0x277CC2078]) != 0;
  v64 = [valuesCopy valueForAttribute:*MEMORY[0x277CCA4D8]];
  v65 = v64;
  if (v64)
  {
    [v64 longLongValue];
    v66 = NSLocalizedFileSizeDescription();
    p_cachedSubtitle = &self->_cachedSubtitle;
    if (self->_cachedSubtitle)
    {
      p_cachedSubtitle = &self->_cachedSubtitle2;
    }

    v68 = *p_cachedSubtitle;
    *p_cachedSubtitle = v66;
  }

  v69 = self->_cachedContentModifiedDate;
  if (v69 && self->_cachedType != 1 && !self->_cachedSubtitle2)
  {
    v70 = BRFormatModifiedAgoWithDate(v69);
    cachedSubtitle2 = self->_cachedSubtitle2;
    self->_cachedSubtitle2 = v70;
  }

  v72 = [valuesCopy valueForKey:*MEMORY[0x277CFAD10]];
  v73 = [v72 copy];
  cachedTags = self->_cachedTags;
  self->_cachedTags = v73;
}

- (id)urlInLocalContainer
{
  cachedURLInLocalContainer = self->_cachedURLInLocalContainer;
  if (!cachedURLInLocalContainer)
  {
    cachedURLInLocalContainer = self->_cachedURL;
  }

  return cachedURLInLocalContainer;
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
    sortPathComponents = [(_UIDocumentPickerContainerMetadataItem *)self sortPathComponents];
    [(_UIDocumentPickerContainerMetadataItem *)self _cacheIndentationLevelWithSortPathComponents:sortPathComponents];

    return self->_cachedIndentation;
  }

  return result;
}

- (id)sortPathComponents
{
  v2 = [(_UIDocumentPickerContainerMetadataItem *)self url];
  path = [v2 path];
  mobileDocumentsURL = [MEMORY[0x277CFAE38] mobileDocumentsURL];
  path2 = [mobileDocumentsURL path];
  v6 = [path br_pathRelativeToPath:path2];
  pathComponents = [v6 pathComponents];
  v8 = [pathComponents mutableCopy];

  if (![v8 count])
  {
    v17 = MEMORY[0x277CBEBF8];
    goto LABEL_15;
  }

  v9 = [v8 objectAtIndexedSubscript:0];
  if ([v8 count] >= 2)
  {
    v10 = [v9 isEqualToString:*MEMORY[0x277CFAD70]];
    v11 = [v8 objectAtIndexedSubscript:1];
    v12 = v11;
    if ((v10 & 1) == 0)
    {
      v18 = [v11 isEqualToString:*MEMORY[0x277CFAD50]];

      if (v18)
      {
        [v8 removeObjectAtIndex:1];
      }

      goto LABEL_12;
    }

    v13 = [v11 isEqualToString:*MEMORY[0x277CFAD90]];

    if (v13)
    {
      v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v15 = v14;
      v16 = @"Documents";
LABEL_11:
      v21 = [v14 localizedStringForKey:v16 value:v16 table:@"Localizable"];
      [v8 setObject:v21 atIndexedSubscript:1];

      goto LABEL_12;
    }

    v19 = [v8 objectAtIndexedSubscript:1];
    v20 = [v19 isEqualToString:*MEMORY[0x277CFAD80]];

    if (v20)
    {
      v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v15 = v14;
      v16 = @"Desktop";
      goto LABEL_11;
    }
  }

LABEL_12:
  br_cloudDocsContainer = [v2 br_cloudDocsContainer];
  v23 = br_cloudDocsContainer;
  if (br_cloudDocsContainer)
  {
    localizedName = [br_cloudDocsContainer localizedName];
    [v8 setObject:localizedName atIndexedSubscript:0];
  }

  v17 = v8;

LABEL_15:

  return v17;
}

- (id)sortPath
{
  v3 = objc_autoreleasePoolPush();
  cachedSortPath = self->_cachedSortPath;
  if (!cachedSortPath)
  {
    sortPathComponents = [(_UIDocumentPickerContainerMetadataItem *)self sortPathComponents];
    v6 = [sortPathComponents componentsJoinedByString:@"/"];
    v7 = self->_cachedSortPath;
    self->_cachedSortPath = v6;

    if (self->_cachedIndentation == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(_UIDocumentPickerContainerMetadataItem *)self _cacheIndentationLevelWithSortPathComponents:sortPathComponents];
    }

    cachedSortPath = self->_cachedSortPath;
  }

  v8 = cachedSortPath;
  objc_autoreleasePoolPop(v3);

  return v8;
}

@end