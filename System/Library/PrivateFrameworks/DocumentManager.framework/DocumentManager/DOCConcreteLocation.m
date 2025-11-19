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
- (BOOL)isEqual:(id)a3;
- (BOOL)isRoot;
- (BOOL)isTaggedItemsSource;
- (BOOL)isTrash;
- (DOCConcreteLocation)init;
- (DOCConcreteLocation)initWithCoder:(id)a3;
- (DOCConcreteLocation)initWithSourceIdentifier:(id)a3 node:(id)a4;
- (DOCConcreteLocation)initWithSourceIdentifier:(id)a3 title:(id)a4;
- (DOCConcreteLocation)initWithTaggedItemsSourceRepresentedTag:(id)a3;
- (FPItem)fileProviderItem;
- (NSSet)attachedTags;
- (NSString)displayName;
- (NSString)shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)displayNameComposedWithLocalizedAppName:(id)a3;
- (id)fileProviderSourceDisplayName;
- (id)placeholderLocation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateUnderlyingNodeToNode:(id)a3;
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
  block[4] = a1;
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
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DisableWorkaroundFor88096763"];

  return v3;
}

- (BOOL)isRoot
{
  v3 = [(DOCConcreteLocation *)self node];
  if ([v3 isRootItem])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(DOCConcreteLocation *)self node];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(DOCConcreteLocation *)self sourceIdentifier];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (FPItem)fileProviderItem
{
  v2 = [(DOCConcreteLocation *)self node];
  v3 = [v2 fpfs_fpItem];

  return v3;
}

- (NSString)displayName
{
  v3 = [(DOCConcreteLocation *)self fileProviderSourceDisplayName];
  v4 = [(DOCConcreteLocation *)self title];

  if ([(DOCConcreteLocation *)self isRoot]&& v3 || !v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(DOCConcreteLocation *)self title];
  }

  v6 = v5;

  return v6;
}

- (id)fileProviderSourceDisplayName
{
  v2 = [(DOCConcreteLocation *)self fileProviderItem];
  v3 = [v2 providerDomainID];

  if (v3)
  {
    v4 = [MEMORY[0x1E69673E8] providerDomainWithID:v3 cachePolicy:3 error:0];
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
  v4 = [(DOCConcreteLocation *)self sourceIdentifier];
  v5 = [v4 copy];
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
  v3 = [(DOCConcreteLocation *)self node];

  if (!v3)
  {
    return 1;
  }

  v4 = [(DOCConcreteLocation *)self node];
  v5 = [v4 isFolder];

  return v5;
}

- (DOCConcreteLocation)initWithSourceIdentifier:(id)a3 node:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DOCConcreteLocation *)self init];
  v9 = v8;
  if (v8)
  {
    [(DOCConcreteLocation *)v8 setSourceIdentifier:v6];
    [(DOCConcreteLocation *)v9 setIsFPV2:1];
    [(DOCConcreteLocation *)v9 updateUnderlyingNodeToNode:v7];
  }

  return v9;
}

- (DOCConcreteLocation)initWithSourceIdentifier:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DOCConcreteLocation *)self init];
  v9 = v8;
  if (v8)
  {
    [(DOCConcreteLocation *)v8 setSourceIdentifier:v6];
    [(DOCConcreteLocation *)v9 setTitle:v7];
  }

  return v9;
}

- (DOCConcreteLocation)initWithTaggedItemsSourceRepresentedTag:(id)a3
{
  v4 = a3;
  v5 = [(DOCConcreteLocation *)self init];
  v6 = v5;
  if (v5)
  {
    [(DOCConcreteLocation *)v5 setRepresentedTag:v4];
    [(DOCConcreteLocation *)v6 setSourceIdentifier:@"com.apple.DocumentManager.TaggedItems"];
    [(DOCConcreteLocation *)v6 setIsFPV2:1];
    v7 = [v4 displayName];
    [(DOCConcreteLocation *)v6 setTitle:v7];
  }

  return v6;
}

- (void)updateUnderlyingNodeToNode:(id)a3
{
  v6 = a3;
  [(DOCConcreteLocation *)self setNode:v6];
  v4 = [v6 domainDisplayName];
  if (v4 && [v6 isRootItem])
  {
    [(DOCConcreteLocation *)self setTitle:v4];
  }

  else
  {
    v5 = [v6 displayName];
    [(DOCConcreteLocation *)self setTitle:v5];
  }
}

- (BOOL)isTaggedItemsSource
{
  v2 = [(DOCConcreteLocation *)self representedTag];
  v3 = v2 != 0;

  return v3;
}

- (NSSet)attachedTags
{
  v3 = [(DOCConcreteLocation *)self representedTag];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:v3];
  }

  else
  {
    v5 = [(DOCConcreteLocation *)self node];
    v6 = [v5 tags];
    v7 = v6;
    v8 = MEMORY[0x1E695E0F0];
    if (v6)
    {
      v8 = v6;
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
  v3 = [(DOCConcreteLocation *)self sourceIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(DOCConcreteLocation *)self originalSourceIdentifier];
  }

  v6 = v5;

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[DOCConcreteLocation allocWithZone:?]];
  v5 = [(DOCConcreteLocation *)self node];
  v6 = [v5 copy];
  [(DOCConcreteLocation *)v4 setNode:v6];

  v7 = [(DOCConcreteLocation *)self sourceIdentifier];
  v8 = [v7 copy];
  [(DOCConcreteLocation *)v4 setSourceIdentifier:v8];

  v9 = [(DOCConcreteLocation *)self title];
  v10 = [v9 copy];
  [(DOCConcreteLocation *)v4 setTitle:v10];

  v11 = [(DOCConcreteLocation *)self composedTitleFormat];
  v12 = [v11 copy];
  [(DOCConcreteLocation *)v4 setComposedTitleFormat:v12];

  v13 = [(DOCConcreteLocation *)self representedTag];
  v14 = [v13 copy];
  [(DOCConcreteLocation *)v4 setRepresentedTag:v14];

  v15 = [(DOCConcreteLocation *)self promptText];
  v16 = [v15 copy];
  [(DOCConcreteLocation *)v4 setPromptText:v16];

  [(DOCConcreteLocation *)v4 setIsFPV2:[(DOCConcreteLocation *)self isFPV2]];
  [(DOCConcreteLocation *)v4 setCanBeRestored:[(DOCConcreteLocation *)self canBeRestored]];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(DOCConcreteLocation *)self node];
  v4 = [v3 hash];
  v5 = [(DOCConcreteLocation *)self sourceIdentifier];
  v6 = [v5 hash] + v4;
  v7 = [(DOCConcreteLocation *)self representedTag];
  v8 = [v7 hash];

  return v6 + v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self != v5)
  {
    if ([(DOCConcreteLocation *)self isRoot])
    {
      v6 = [(DOCConcreteLocation *)v5 isRoot];
    }

    else
    {
      v6 = 0;
    }

    v8 = [(DOCConcreteLocation *)self sourceIdentifier];
    v9 = [(DOCConcreteLocation *)v5 sourceIdentifier];
    v10 = [v8 isEqual:v9];

    v11 = [(DOCConcreteLocation *)self promptText];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1F5F4AEF8;
    }

    v14 = v13;

    v15 = [(DOCConcreteLocation *)v5 promptText];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
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

    v19 = [(DOCConcreteLocation *)self fileProviderItem];
    v20 = [(DOCConcreteLocation *)v5 fileProviderItem];
    if (v19 != v20)
    {
      v21 = v6 & v10;
      v22 = [(DOCConcreteLocation *)self fileProviderItem];
      v3 = [(DOCConcreteLocation *)v5 fileProviderItem];
      if ((([v22 isEqual:v3] | v21) & 1) == 0)
      {
        LOBYTE(v7) = 0;
        goto LABEL_43;
      }

      v54 = v3;
      v55 = v22;
    }

    v23 = [(DOCConcreteLocation *)self sourceIdentifier];
    v24 = [(DOCConcreteLocation *)v5 sourceIdentifier];
    if (v23 != v24)
    {
      v25 = [(DOCConcreteLocation *)self sourceIdentifier];
      v3 = [(DOCConcreteLocation *)v5 sourceIdentifier];
      if (![v25 isEqual:v3])
      {
        LOBYTE(v7) = 0;
LABEL_41:

LABEL_42:
        v22 = v55;
        v3 = v54;
        if (v19 == v20)
        {
LABEL_44:

          goto LABEL_45;
        }

LABEL_43:

        goto LABEL_44;
      }

      v51 = v25;
    }

    v26 = [(DOCConcreteLocation *)self title];
    v27 = [(DOCConcreteLocation *)v5 title];
    v52 = v24;
    v53 = v26;
    v28 = v26 == v27;
    v29 = v27;
    if (v28)
    {
      v49 = v3;
      v50 = v23;
    }

    else
    {
      v45 = v20;
      v30 = v14;
      v31 = v19;
      v32 = v27;
      v33 = [(DOCConcreteLocation *)self title];
      v46 = [(DOCConcreteLocation *)v5 title];
      v47 = v33;
      if (![v33 isEqual:?])
      {
        LOBYTE(v7) = 0;
        v37 = v32;
        v38 = v53;
        v19 = v31;
        v14 = v30;
        v20 = v45;
LABEL_39:

LABEL_40:
        v25 = v51;
        v24 = v52;
        if (v23 == v52)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v49 = v3;
      v50 = v23;
      v29 = v32;
      v19 = v31;
      v14 = v30;
      v20 = v45;
    }

    v34 = [(DOCConcreteLocation *)self representedTag];
    v35 = [(DOCConcreteLocation *)v5 representedTag];
    v48 = v29;
    if (v34 != v35)
    {
      v42 = v34;
      v36 = [(DOCConcreteLocation *)self representedTag];
      v44 = [(DOCConcreteLocation *)v5 representedTag];
      v45 = v36;
      if (![v36 isEqual:?])
      {
        LOBYTE(v7) = 0;
        v34 = v42;
        goto LABEL_36;
      }

      v34 = v42;
    }

    if ([(__CFString *)v14 isEqualToString:v18]&& (v43 = [(DOCConcreteLocation *)self isFPV2], v43 == [(DOCConcreteLocation *)v5 isFPV2]))
    {
      v40 = [(DOCConcreteLocation *)self canBeRestored];
      v7 = v40 ^ [(DOCConcreteLocation *)v5 canBeRestored]^ 1;
      v39 = v7;
    }

    else
    {
      LOBYTE(v7) = 0;
      v39 = 0;
    }

    if (v34 == v35)
    {

      LOBYTE(v7) = v39;
LABEL_38:
      v38 = v53;
      v37 = v48;
      v3 = v49;
      v23 = v50;
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

- (DOCConcreteLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = DOCConcreteLocation;
  v5 = [(DOCConcreteLocation *)&v20 init];
  if (v5)
  {
    v6 = DOCNodeFromCoder();
    node = v5->_node;
    v5->_node = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v10;

    v5->_isFPV2 = [v4 decodeBoolForKey:@"isFPV2"];
    v5->_canBeRestored = [v4 decodeBoolForKey:@"canBeRestored"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_representedTag"];
    representedTag = v5->_representedTag;
    v5->_representedTag = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_promptText"];
    promptText = v5->_promptText;
    v5->_promptText = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_composedTitleFormat"];
    composedTitleFormat = v5->_composedTitleFormat;
    v5->_composedTitleFormat = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
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
      [(DOCNode *)*p_node encodeNodeWithCoder:v4];
    }
  }

  sourceIdentifier = self->_sourceIdentifier;
  if (sourceIdentifier)
  {
    [v4 encodeObject:sourceIdentifier forKey:@"_sourceIdentifier"];
  }

  title = self->_title;
  if (title)
  {
    [v4 encodeObject:title forKey:@"_title"];
  }

  representedTag = self->_representedTag;
  if (representedTag)
  {
    [v4 encodeObject:representedTag forKey:@"_representedTag"];
  }

  promptText = self->_promptText;
  if (promptText)
  {
    [v4 encodeObject:promptText forKey:@"_promptText"];
  }

  composedTitleFormat = self->_composedTitleFormat;
  if (composedTitleFormat)
  {
    [v4 encodeObject:composedTitleFormat forKey:@"_composedTitleFormat"];
  }

  [v4 encodeBool:self->_isFPV2 forKey:@"isFPV2"];
  [v4 encodeBool:self->_canBeRestored forKey:@"canBeRestored"];
}

- (id)description
{
  representedTag = self->_representedTag;
  if (representedTag)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"representedTag=%@", representedTag];
  }

  else
  {
    v4 = &stru_1F5F4AEF8;
  }

  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = DOCConcreteLocation;
  v6 = [(DOCConcreteLocation *)&v9 description];
  v7 = [v5 stringWithFormat:@"%@ title=%@ [%@] DOCNode=%@%@", v6, self->_title, self->_sourceIdentifier, self->_node, v4];

  return v7;
}

- (id)displayNameComposedWithLocalizedAppName:(id)a3
{
  v4 = a3;
  v5 = [(DOCConcreteLocation *)self composedTitleFormat];
  if (v5 && [v4 length])
  {
    v6 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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