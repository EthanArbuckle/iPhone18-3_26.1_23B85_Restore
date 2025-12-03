@interface DOCConcreteLocation
+ (BOOL)disableWorkaroundFor88096763;
+ (DOCConcreteLocation)browseStartingPointsLocation;
+ (id)defaultLocation;
+ (id)defaultSaveLocation;
+ (id)emptyLocation;
+ (id)iCloudDriveLocation;
+ (id)recentDocumentsLocation;
+ (id)searchLocation;
+ (id)sharedItemsLocation;
+ (id)trashedItemsLocation;
- (BOOL)isContainer;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRoot;
- (BOOL)isTaggedItemsSource;
- (BOOL)isTrash;
- (DOCConcreteLocation)init;
- (DOCConcreteLocation)initWithCoder:(id)coder;
- (DOCConcreteLocation)initWithSourceIdentifier:(id)identifier node:(id)node;
- (DOCConcreteLocation)initWithSourceIdentifier:(id)identifier title:(id)title;
- (DOCConcreteLocation)initWithTaggedItemsSourceRepresentedTag:(id)tag;
- (FPItem)fileProviderItem;
- (NSSet)attachedTags;
- (NSString)displayName;
- (NSString)shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayNameComposedWithLocalizedAppName:(id)name;
- (id)fileProviderSourceDisplayName;
- (id)placeholderLocation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateUnderlyingNodeToNode:(id)node;
@end

@implementation DOCConcreteLocation

+ (id)recentDocumentsLocation
{
  if (recentDocumentsLocation_onceToken != -1)
  {
    +[DOCConcreteLocation recentDocumentsLocation];
  }

  v3 = recentDocumentsLocation_location;

  return v3;
}

uint64_t __46__DOCConcreteLocation_recentDocumentsLocation__block_invoke()
{
  v0 = objc_opt_new();
  v1 = recentDocumentsLocation_location;
  recentDocumentsLocation_location = v0;

  [recentDocumentsLocation_location setSourceIdentifier:*MEMORY[0x1E699A398]];
  v2 = _DocumentManagerBundle();
  v3 = [v2 localizedStringForKey:@"Recents" value:@"Recents" table:@"Localizable"];
  [recentDocumentsLocation_location setTitle:v3];

  v4 = _DocumentManagerBundle();
  v5 = [v4 localizedStringForKey:@"%@ Recents" value:@"%@ Recents" table:@"Localizable"];
  [recentDocumentsLocation_location setComposedTitleFormat:v5];

  v6 = recentDocumentsLocation_location;

  return [v6 setIsFPV2:1];
}

- (DOCConcreteLocation)init
{
  v5.receiver = self;
  v5.super_class = DOCConcreteLocation;
  v2 = [(DOCConcreteLocation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DOCConcreteLocation *)v2 setCanBeRestored:1];
  }

  return v3;
}

+ (id)searchLocation
{
  if (searchLocation_onceToken != -1)
  {
    +[DOCConcreteLocation searchLocation];
  }

  v3 = searchLocation_searchLocation;

  return v3;
}

uint64_t __37__DOCConcreteLocation_searchLocation__block_invoke()
{
  v0 = objc_opt_new();
  v1 = searchLocation_searchLocation;
  searchLocation_searchLocation = v0;

  v2 = _DocumentManagerBundle();
  v3 = [v2 localizedStringForKey:@"Search" value:@"Search" table:@"Localizable"];
  [searchLocation_searchLocation setTitle:v3];

  [searchLocation_searchLocation setSourceIdentifier:@"com.apple.DocumentManager.Search"];
  [searchLocation_searchLocation setIsFPV2:1];
  v4 = searchLocation_searchLocation;

  return [v4 setCanBeRestored:0];
}

+ (id)sharedItemsLocation
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__DOCConcreteLocation_sharedItemsLocation__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedItemsLocation_onceToken != -1)
  {
    dispatch_once(&sharedItemsLocation_onceToken, block);
  }

  v2 = sharedItemsLocation_location;

  return v2;
}

uint64_t __42__DOCConcreteLocation_sharedItemsLocation__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = sharedItemsLocation_location;
  sharedItemsLocation_location = v2;

  [sharedItemsLocation_location setSourceIdentifier:@"com.apple.DocumentManager.SharedItems"];
  v4 = _DocumentManagerBundle();
  v5 = [v4 localizedStringForKey:@"Shared" value:@"Shared" table:@"Localizable"];
  [sharedItemsLocation_location setTitle:v5];

  if ([*(a1 + 32) disableWorkaroundFor88096763])
  {
    v6 = _DocumentManagerBundle();
    v7 = [v6 localizedStringForKey:@"%@ Shared" value:@"%@ Shared" table:@"Localizable"];
    [sharedItemsLocation_location setComposedTitleFormat:v7];
  }

  v8 = sharedItemsLocation_location;

  return [v8 setIsFPV2:1];
}

+ (BOOL)disableWorkaroundFor88096763
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"DisableWorkaroundFor88096763"];

  return v3;
}

- (BOOL)isRoot
{
  node = [(DOCConcreteLocation *)self node];
  if ([node isRootItem])
  {
    v4 = 1;
  }

  else
  {
    node2 = [(DOCConcreteLocation *)self node];
    if (node2)
    {
      v4 = 0;
    }

    else
    {
      sourceIdentifier = [(DOCConcreteLocation *)self sourceIdentifier];
      v4 = sourceIdentifier != 0;
    }
  }

  return v4;
}

- (FPItem)fileProviderItem
{
  node = [(DOCConcreteLocation *)self node];
  fpfs_fpItem = [node fpfs_fpItem];

  return fpfs_fpItem;
}

- (NSString)displayName
{
  fileProviderSourceDisplayName = [(DOCConcreteLocation *)self fileProviderSourceDisplayName];
  title = [(DOCConcreteLocation *)self title];

  if ([(DOCConcreteLocation *)self isRoot]&& fileProviderSourceDisplayName || !title)
  {
    title2 = fileProviderSourceDisplayName;
  }

  else
  {
    title2 = [(DOCConcreteLocation *)self title];
  }

  v6 = title2;

  return v6;
}

- (id)fileProviderSourceDisplayName
{
  fileProviderItem = [(DOCConcreteLocation *)self fileProviderItem];
  providerDomainID = [fileProviderItem providerDomainID];

  if (providerDomainID)
  {
    v4 = [MEMORY[0x1E69673E8] providerDomainWithID:providerDomainID cachePolicy:3 error:0];
    v5 = DOCLocalizedDisplayName();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p '%@'>", v5, self, self->_title];

  return v6;
}

- (id)placeholderLocation
{
  v3 = [(DOCConcreteLocation *)self copy];
  [v3 setSourceIdentifier:@"com.apple.DocumentManager.placeholderLocation"];
  [v3 setCanBeRestored:0];
  sourceIdentifier = [(DOCConcreteLocation *)self sourceIdentifier];
  v5 = [sourceIdentifier copy];
  [v3 setOriginalSourceIdentifier:v5];

  return v3;
}

+ (id)trashedItemsLocation
{
  if (trashedItemsLocation_onceToken != -1)
  {
    +[DOCConcreteLocation trashedItemsLocation];
  }

  v3 = trashedItemsLocation_trashedItemsLocation;

  return v3;
}

uint64_t __43__DOCConcreteLocation_trashedItemsLocation__block_invoke()
{
  v0 = objc_opt_new();
  v1 = trashedItemsLocation_trashedItemsLocation;
  trashedItemsLocation_trashedItemsLocation = v0;

  v2 = _DocumentManagerBundle();
  v3 = [v2 localizedStringForKey:@"Recently Deleted [Sidebar]" value:@"Recently Deleted" table:@"Localizable"];
  [trashedItemsLocation_trashedItemsLocation setTitle:v3];

  v4 = _DocumentManagerBundle();
  v5 = [v4 localizedStringForKey:@"Recently deleted items may be permanently deleted by your storage provider." value:@"Recently deleted items may be permanently deleted by your storage provider." table:@"Localizable"];
  [trashedItemsLocation_trashedItemsLocation setPromptText:v5];

  [trashedItemsLocation_trashedItemsLocation setSourceIdentifier:@"com.apple.DocumentManager.TrashedItems"];
  v6 = trashedItemsLocation_trashedItemsLocation;

  return [v6 setIsFPV2:1];
}

+ (id)defaultLocation
{
  v2 = objc_opt_new();
  [v2 setSourceIdentifier:@"com.apple.DocumentManager.defaultLocation"];
  [v2 setIsFPV2:1];

  return v2;
}

- (BOOL)isContainer
{
  node = [(DOCConcreteLocation *)self node];

  if (!node)
  {
    return 1;
  }

  node2 = [(DOCConcreteLocation *)self node];
  isFolder = [node2 isFolder];

  return isFolder;
}

- (DOCConcreteLocation)initWithSourceIdentifier:(id)identifier node:(id)node
{
  identifierCopy = identifier;
  nodeCopy = node;
  v8 = [(DOCConcreteLocation *)self init];
  v9 = v8;
  if (v8)
  {
    [(DOCConcreteLocation *)v8 setSourceIdentifier:identifierCopy];
    [(DOCConcreteLocation *)v9 setIsFPV2:1];
    [(DOCConcreteLocation *)v9 updateUnderlyingNodeToNode:nodeCopy];
  }

  return v9;
}

- (DOCConcreteLocation)initWithSourceIdentifier:(id)identifier title:(id)title
{
  identifierCopy = identifier;
  titleCopy = title;
  v8 = [(DOCConcreteLocation *)self init];
  v9 = v8;
  if (v8)
  {
    [(DOCConcreteLocation *)v8 setSourceIdentifier:identifierCopy];
    [(DOCConcreteLocation *)v9 setTitle:titleCopy];
  }

  return v9;
}

- (DOCConcreteLocation)initWithTaggedItemsSourceRepresentedTag:(id)tag
{
  tagCopy = tag;
  v5 = [(DOCConcreteLocation *)self init];
  v6 = v5;
  if (v5)
  {
    [(DOCConcreteLocation *)v5 setRepresentedTag:tagCopy];
    [(DOCConcreteLocation *)v6 setSourceIdentifier:@"com.apple.DocumentManager.TaggedItems"];
    [(DOCConcreteLocation *)v6 setIsFPV2:1];
    displayName = [tagCopy displayName];
    [(DOCConcreteLocation *)v6 setTitle:displayName];
  }

  return v6;
}

- (void)updateUnderlyingNodeToNode:(id)node
{
  nodeCopy = node;
  [(DOCConcreteLocation *)self setNode:nodeCopy];
  domainDisplayName = [nodeCopy domainDisplayName];
  if (domainDisplayName && [nodeCopy isRootItem])
  {
    [(DOCConcreteLocation *)self setTitle:domainDisplayName];
  }

  else
  {
    displayName = [nodeCopy displayName];
    [(DOCConcreteLocation *)self setTitle:displayName];
  }
}

- (BOOL)isTaggedItemsSource
{
  representedTag = [(DOCConcreteLocation *)self representedTag];
  v3 = representedTag != 0;

  return v3;
}

- (NSSet)attachedTags
{
  representedTag = [(DOCConcreteLocation *)self representedTag];
  if (representedTag)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:representedTag];
  }

  else
  {
    node = [(DOCConcreteLocation *)self node];
    tags = [node tags];
    v7 = tags;
    v8 = MEMORY[0x1E695E0F0];
    if (tags)
    {
      v8 = tags;
    }

    v9 = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__DOCConcreteLocation_attachedTags__block_invoke;
    v12[3] = &unk_1E8783790;
    v4 = v10;
    v13 = v4;
    [v9 enumerateObjectsUsingBlock:v12];
  }

  return v4;
}

void __35__DOCConcreteLocation_attachedTags__block_invoke(uint64_t a1)
{
  v2 = DOCTagFromFPTag();
  [*(a1 + 32) addObject:v2];
}

- (BOOL)isTrash
{
  sourceIdentifier = [(DOCConcreteLocation *)self sourceIdentifier];
  v4 = sourceIdentifier;
  if (sourceIdentifier)
  {
    originalSourceIdentifier = sourceIdentifier;
  }

  else
  {
    originalSourceIdentifier = [(DOCConcreteLocation *)self originalSourceIdentifier];
  }

  v6 = originalSourceIdentifier;

  return v6 == @"com.apple.DocumentManager.TrashedItems";
}

+ (id)defaultSaveLocation
{
  v2 = objc_opt_new();
  [v2 setSourceIdentifier:@"com.apple.DocumentManager.defaultSaveLocation"];
  [v2 setIsFPV2:1];

  return v2;
}

+ (id)iCloudDriveLocation
{
  v2 = objc_opt_new();
  v3 = FPIsCloudDocsWithFPFSEnabled();
  v4 = MEMORY[0x1E699A370];
  if (!v3)
  {
    v4 = MEMORY[0x1E699A380];
  }

  [v2 setSourceIdentifier:*v4];
  [v2 setIsFPV2:1];

  return v2;
}

+ (id)emptyLocation
{
  v2 = objc_opt_new();
  [v2 setSourceIdentifier:@"com.apple.DocumentManager.emptyLocation"];
  [v2 setIsFPV2:1];

  return v2;
}

+ (DOCConcreteLocation)browseStartingPointsLocation
{
  v2 = objc_opt_new();
  [v2 setSourceIdentifier:@"com.apple.DocumentManager.BrowseStartingPoints"];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[DOCConcreteLocation allocWithZone:?]];
  node = [(DOCConcreteLocation *)self node];
  v6 = [node copy];
  [(DOCConcreteLocation *)v4 setNode:v6];

  sourceIdentifier = [(DOCConcreteLocation *)self sourceIdentifier];
  v8 = [sourceIdentifier copy];
  [(DOCConcreteLocation *)v4 setSourceIdentifier:v8];

  title = [(DOCConcreteLocation *)self title];
  v10 = [title copy];
  [(DOCConcreteLocation *)v4 setTitle:v10];

  composedTitleFormat = [(DOCConcreteLocation *)self composedTitleFormat];
  v12 = [composedTitleFormat copy];
  [(DOCConcreteLocation *)v4 setComposedTitleFormat:v12];

  representedTag = [(DOCConcreteLocation *)self representedTag];
  v14 = [representedTag copy];
  [(DOCConcreteLocation *)v4 setRepresentedTag:v14];

  promptText = [(DOCConcreteLocation *)self promptText];
  v16 = [promptText copy];
  [(DOCConcreteLocation *)v4 setPromptText:v16];

  [(DOCConcreteLocation *)v4 setIsFPV2:[(DOCConcreteLocation *)self isFPV2]];
  [(DOCConcreteLocation *)v4 setCanBeRestored:[(DOCConcreteLocation *)self canBeRestored]];
  return v4;
}

- (unint64_t)hash
{
  node = [(DOCConcreteLocation *)self node];
  v4 = [node hash];
  sourceIdentifier = [(DOCConcreteLocation *)self sourceIdentifier];
  v6 = [sourceIdentifier hash] + v4;
  representedTag = [(DOCConcreteLocation *)self representedTag];
  v8 = [representedTag hash];

  return v6 + v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    if ([(DOCConcreteLocation *)self isRoot])
    {
      isRoot = [(DOCConcreteLocation *)equalCopy isRoot];
    }

    else
    {
      isRoot = 0;
    }

    sourceIdentifier = [(DOCConcreteLocation *)self sourceIdentifier];
    sourceIdentifier2 = [(DOCConcreteLocation *)equalCopy sourceIdentifier];
    v10 = [sourceIdentifier isEqual:sourceIdentifier2];

    promptText = [(DOCConcreteLocation *)self promptText];
    v12 = promptText;
    if (promptText)
    {
      v13 = promptText;
    }

    else
    {
      v13 = &stru_1F5F4AEF8;
    }

    v14 = v13;

    promptText2 = [(DOCConcreteLocation *)equalCopy promptText];
    v16 = promptText2;
    if (promptText2)
    {
      v17 = promptText2;
    }

    else
    {
      v17 = &stru_1F5F4AEF8;
    }

    v18 = v17;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v7) = 0;
LABEL_45:

      goto LABEL_46;
    }

    fileProviderItem = [(DOCConcreteLocation *)self fileProviderItem];
    fileProviderItem2 = [(DOCConcreteLocation *)equalCopy fileProviderItem];
    if (fileProviderItem != fileProviderItem2)
    {
      v21 = isRoot & v10;
      fileProviderItem3 = [(DOCConcreteLocation *)self fileProviderItem];
      fileProviderItem4 = [(DOCConcreteLocation *)equalCopy fileProviderItem];
      if ((([fileProviderItem3 isEqual:fileProviderItem4] | v21) & 1) == 0)
      {
        LOBYTE(v7) = 0;
        goto LABEL_43;
      }

      v54 = fileProviderItem4;
      v55 = fileProviderItem3;
    }

    sourceIdentifier3 = [(DOCConcreteLocation *)self sourceIdentifier];
    sourceIdentifier4 = [(DOCConcreteLocation *)equalCopy sourceIdentifier];
    if (sourceIdentifier3 != sourceIdentifier4)
    {
      sourceIdentifier5 = [(DOCConcreteLocation *)self sourceIdentifier];
      fileProviderItem4 = [(DOCConcreteLocation *)equalCopy sourceIdentifier];
      if (![sourceIdentifier5 isEqual:fileProviderItem4])
      {
        LOBYTE(v7) = 0;
LABEL_41:

LABEL_42:
        fileProviderItem3 = v55;
        fileProviderItem4 = v54;
        if (fileProviderItem == fileProviderItem2)
        {
LABEL_44:

          goto LABEL_45;
        }

LABEL_43:

        goto LABEL_44;
      }

      v51 = sourceIdentifier5;
    }

    title = [(DOCConcreteLocation *)self title];
    title2 = [(DOCConcreteLocation *)equalCopy title];
    v52 = sourceIdentifier4;
    v53 = title;
    v28 = title == title2;
    v29 = title2;
    if (v28)
    {
      v49 = fileProviderItem4;
      v50 = sourceIdentifier3;
    }

    else
    {
      v45 = fileProviderItem2;
      v30 = v14;
      v31 = fileProviderItem;
      v32 = title2;
      title3 = [(DOCConcreteLocation *)self title];
      title4 = [(DOCConcreteLocation *)equalCopy title];
      v47 = title3;
      if (![title3 isEqual:?])
      {
        LOBYTE(v7) = 0;
        v37 = v32;
        v38 = v53;
        fileProviderItem = v31;
        v14 = v30;
        fileProviderItem2 = v45;
LABEL_39:

LABEL_40:
        sourceIdentifier5 = v51;
        sourceIdentifier4 = v52;
        if (sourceIdentifier3 == v52)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v49 = fileProviderItem4;
      v50 = sourceIdentifier3;
      v29 = v32;
      fileProviderItem = v31;
      v14 = v30;
      fileProviderItem2 = v45;
    }

    representedTag = [(DOCConcreteLocation *)self representedTag];
    representedTag2 = [(DOCConcreteLocation *)equalCopy representedTag];
    v48 = v29;
    if (representedTag != representedTag2)
    {
      v42 = representedTag;
      representedTag3 = [(DOCConcreteLocation *)self representedTag];
      representedTag4 = [(DOCConcreteLocation *)equalCopy representedTag];
      v45 = representedTag3;
      if (![representedTag3 isEqual:?])
      {
        LOBYTE(v7) = 0;
        representedTag = v42;
        goto LABEL_36;
      }

      representedTag = v42;
    }

    if ([(__CFString *)v14 isEqualToString:v18]&& (v43 = [(DOCConcreteLocation *)self isFPV2], v43 == [(DOCConcreteLocation *)equalCopy isFPV2]))
    {
      canBeRestored = [(DOCConcreteLocation *)self canBeRestored];
      v7 = canBeRestored ^ [(DOCConcreteLocation *)equalCopy canBeRestored]^ 1;
      v39 = v7;
    }

    else
    {
      LOBYTE(v7) = 0;
      v39 = 0;
    }

    if (representedTag == representedTag2)
    {

      LOBYTE(v7) = v39;
LABEL_38:
      v38 = v53;
      v37 = v48;
      fileProviderItem4 = v49;
      sourceIdentifier3 = v50;
      if (v53 == v48)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

LABEL_36:

    goto LABEL_38;
  }

  LOBYTE(v7) = 1;
LABEL_46:

  return v7;
}

- (DOCConcreteLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = DOCConcreteLocation;
  v5 = [(DOCConcreteLocation *)&v20 init];
  if (v5)
  {
    v6 = DOCNodeFromCoder();
    node = v5->_node;
    v5->_node = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v10;

    v5->_isFPV2 = [coderCopy decodeBoolForKey:@"isFPV2"];
    v5->_canBeRestored = [coderCopy decodeBoolForKey:@"canBeRestored"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_representedTag"];
    representedTag = v5->_representedTag;
    v5->_representedTag = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_promptText"];
    promptText = v5->_promptText;
    v5->_promptText = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_composedTitleFormat"];
    composedTitleFormat = v5->_composedTitleFormat;
    v5->_composedTitleFormat = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  p_node = &self->_node;
  if (self->_node)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(DOCNode *)*p_node isRootItem])
    {
      v6 = *MEMORY[0x1E699A450];
      if (!*MEMORY[0x1E699A450])
      {
        v12 = MEMORY[0x1E699A450];
        DOCInitLogging();
        v6 = *v12;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(DOCConcreteLocation *)&self->_node encodeWithCoder:v6];
      }
    }

    else
    {
      [(DOCNode *)*p_node encodeNodeWithCoder:coderCopy];
    }
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [coderCopy encodeObject:sourceIdentifier forKey:@"_sourceIdentifier"];
  }

  title = self->_title;
  if (title)
  {
    [coderCopy encodeObject:title forKey:@"_title"];
  }

  representedTag = self->_representedTag;
  if (representedTag)
  {
    [coderCopy encodeObject:representedTag forKey:@"_representedTag"];
  }

  promptText = self->_promptText;
  if (promptText)
  {
    [coderCopy encodeObject:promptText forKey:@"_promptText"];
  }

  composedTitleFormat = self->_composedTitleFormat;
  if (composedTitleFormat)
  {
    [coderCopy encodeObject:composedTitleFormat forKey:@"_composedTitleFormat"];
  }

  [coderCopy encodeBool:self->_isFPV2 forKey:@"isFPV2"];
  [coderCopy encodeBool:self->_canBeRestored forKey:@"canBeRestored"];
}

- (id)description
{
  representedTag = self->_representedTag;
  if (representedTag)
  {
    representedTag = [MEMORY[0x1E696AEC0] stringWithFormat:@"representedTag=%@", representedTag];
  }

  else
  {
    representedTag = &stru_1F5F4AEF8;
  }

  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = DOCConcreteLocation;
  v6 = [(DOCConcreteLocation *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ title=%@ [%@] DOCNode=%@%@", v6, self->_title, self->_sourceIdentifier, self->_node, representedTag];

  return v7;
}

- (id)displayNameComposedWithLocalizedAppName:(id)name
{
  nameCopy = name;
  composedTitleFormat = [(DOCConcreteLocation *)self composedTitleFormat];
  if (composedTitleFormat && [nameCopy length])
  {
    nameCopy = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:composedTitleFormat validFormatSpecifiers:@"%@" error:0, nameCopy];
  }

  else
  {
    nameCopy = 0;
  }

  return nameCopy;
}

- (void)encodeWithCoder:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_DEBUG, "Skipped encoding FINode root node for %@", &v3, 0xCu);
}

@end