@interface FPItem(DOCNode)
- (DOCNodeThumbnailIdentifier)thumbnailIdentifier;
- (__CFString)folderIconIdentifierForFolderType:()DOCNode;
- (id)cachedDomain:()DOCNode;
- (id)contentVersion;
- (id)dateForSortingByRecents;
- (id)deepItemCount;
- (id)doc_eligibleActions;
- (id)doc_fallbackSortIdentity;
- (id)domainDisplayName;
- (id)folderIcon;
- (id)iconConfigurationForFolder;
- (id)iconsFromIconPackage;
- (id)simplifiedFolderIcon;
- (id)tagThumbnailKey;
- (uint64_t)_doc_fileTypeCompare:()DOCNode;
- (uint64_t)canPerform:()DOCNode;
- (uint64_t)canPerformActions:()DOCNode;
- (uint64_t)doc_folderIconType;
- (uint64_t)doc_isSMBSharepoint;
- (uint64_t)isAnyParentTrashed;
- (uint64_t)isBrowsable;
- (uint64_t)isCopying;
- (uint64_t)isFullyFormed;
- (uint64_t)isInTrash;
- (uint64_t)isRootItem;
- (uint64_t)localizedStandardTagsCompareNode:()DOCNode;
- (void)encodeNodeWithCoder:()DOCNode;
- (void)fetchParent:()DOCNode;
- (void)fetchParents:()DOCNode;
- (void)fetchURL:()DOCNode;
- (void)iconConfigurationForFolder;
@end

@implementation FPItem(DOCNode)

- (id)dateForSortingByRecents
{
  doc_lastUsedDate = [self doc_lastUsedDate];
  if (doc_lastUsedDate)
  {
    [self doc_lastUsedDate];
  }

  else
  {
    [self modificationDate];
  }
  v3 = ;

  return v3;
}

- (uint64_t)isCopying
{
  copyingProgress = [self copyingProgress];
  v2 = copyingProgress;
  if (copyingProgress)
  {
    v3 = [copyingProgress isFinished] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isFullyFormed
{
  creationDate = [self creationDate];
  if (creationDate)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:-534528000.0];
    isCopying = [creationDate isEqual:v3];
  }

  else
  {
    isCopying = [self isCopying];
  }

  return isCopying ^ 1u;
}

- (DOCNodeThumbnailIdentifier)thumbnailIdentifier
{
  v14 = [DOCNodeThumbnailIdentifier alloc];
  itemIdentifier = [self itemIdentifier];
  modificationDate = [self modificationDate];
  contentVersion = [self contentVersion];
  folderType = [self folderType];
  isTopLevelSharedItem = [self isTopLevelSharedItem];
  isDownloaded = [self isDownloaded];
  filename = [self filename];
  pathExtension = [filename pathExtension];
  tagThumbnailKey = [self tagThumbnailKey];
  LOBYTE(v13) = [self isActionable];
  v11 = [(DOCNodeThumbnailIdentifier *)v14 initWithNodeIdentifier:itemIdentifier modificationDate:modificationDate contentVersion:contentVersion folderType:folderType isTopLevelSharedItem:isTopLevelSharedItem isDownloaded:isDownloaded fileExtension:pathExtension customFolder:tagThumbnailKey isActionable:v13];

  return v11;
}

- (id)contentVersion
{
  itemVersion = [self itemVersion];
  contentVersion = [itemVersion contentVersion];

  return contentVersion;
}

- (id)tagThumbnailKey
{
  v18 = *MEMORY[0x277D85DE8];
  tags = [self tags];
  v3 = [tags count];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    tags2 = [self tags];
    v6 = [tags2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(tags2);
          }

          label = [*(*(&v13 + 1) + 8 * i) label];
          [v4 appendFormat:@"%@\n", label];
        }

        v7 = [tags2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)cachedDomain:()DOCNode
{
  v5 = MEMORY[0x277CC6420];
  providerDomainID = [self providerDomainID];
  v12 = 0;
  v7 = [v5 providerDomainWithID:providerDomainID cachePolicy:3 error:&v12];
  v8 = v12;

  if (v8)
  {
    v9 = docEnumerationLogHandle;
    if (!docEnumerationLogHandle)
    {
      DOCInitLogging();
      v9 = docEnumerationLogHandle;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (!a3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    [(FPItem(DOCNode) *)self cachedDomain:v9, v8];
    if (a3)
    {
LABEL_6:
      v10 = v8;
      *a3 = v8;
    }
  }

LABEL_7:

  return v7;
}

- (id)domainDisplayName
{
  cachedDomain = [self cachedDomain];
  v2 = cachedDomain;
  if (cachedDomain)
  {
    v3 = DOCLocalizedDisplayName(cachedDomain);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isRootItem
{
  itemIdentifier = [self itemIdentifier];
  if ([itemIdentifier isEqualToString:*MEMORY[0x277CC6348]])
  {
    fp_isCloudDocsContainer = 1;
  }

  else
  {
    fp_isCloudDocsContainer = [self fp_isCloudDocsContainer];
  }

  return fp_isCloudDocsContainer;
}

- (uint64_t)isInTrash
{
  if ([self isTrashed])
  {
    return 1;
  }

  return [self isAnyParentTrashed];
}

- (uint64_t)isAnyParentTrashed
{
  fileURL = [self fileURL];
  path = [fileURL path];
  v3 = [path containsString:@".Trash"];

  return v3;
}

- (id)deepItemCount
{
  childItemCount = [self childItemCount];
  v2 = childItemCount;
  if (childItemCount)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(childItemCount, "intValue") + 1}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)doc_isSMBSharepoint
{
  providerDomainID = [self providerDomainID];
  if (DOCProviderDomainIDIsSharedServerDomainID(providerDomainID, v3) && [self isRootItem])
  {
    parentItemIdentifier = [self parentItemIdentifier];
    v5 = [parentItemIdentifier isEqualToString:*MEMORY[0x277CC6348]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)doc_folderIconType
{
  result = [self folderType];
  if (result > 2)
  {
    if (result == 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

    if (result != 3)
    {
      return v3;
    }
  }

  else if (result == 1)
  {
    if ([self isTopLevelSharedItem])
    {
      return 5;
    }

    else if ([self doc_isSMBSharepoint])
    {
      return 6;
    }

    else
    {
      return 1;
    }
  }

  else if (result != 2)
  {
    return 0;
  }

  return result;
}

- (id)iconConfigurationForFolder
{
  if (([self isFolder] & 1) == 0)
  {
    [(FPItem(DOCNode) *)a2 iconConfigurationForFolder];
  }

  v4 = objc_alloc_init(MEMORY[0x277D1B190]);
  tags = [self tags];
  [v4 setSystemTintColor:{objc_msgSend(MEMORY[0x277D046B0], "folderTintColorForLabel:", FolderTagColorForTags(tags))}];

  childItemCount = [self childItemCount];
  [v4 setFolderEmpty:{objc_msgSend(childItemCount, "intValue") == 0}];

  return v4;
}

- (id)folderIcon
{
  if (![self isFolder])
  {
    v8 = 0;
    goto LABEL_17;
  }

  v2 = +[DOCFeature folderOverlays];
  isEnabled = [v2 isEnabled];

  if ((isEnabled & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277D1B1A8]);
    identifier = [*MEMORY[0x277CE1D80] identifier];
    v8 = [v9 initWithType:identifier];
    goto LABEL_7;
  }

  doc_folderIconType = [self doc_folderIconType];
  if (doc_folderIconType == 6)
  {
    v5 = objc_alloc(MEMORY[0x277D1B1A8]);
    identifier = [*MEMORY[0x277CE1D80] identifier];
    v7 = [objc_alloc(MEMORY[0x277D1B190]) initWithSymbolName:@"person.3.fill" systemTintColor:-1];
    v8 = [v5 initWithType:identifier iconConfiguration:v7];

LABEL_7:
    goto LABEL_17;
  }

  v10 = doc_folderIconType;
  v11 = [self folderIconIdentifierForFolderType:doc_folderIconType];
  if (v10 <= 1 && [self supportsFolderCustomization] && (objc_msgSend(self, "fileURL"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    iconConfigurationForFolder = v12;
    v14 = objc_alloc_init(MEMORY[0x277D1B190]);
    v15 = *MEMORY[0x277CBECA0];
    _DS_CFURLGetPropertyForKey();
    symbolName = [v14 symbolName];

    if (!symbolName)
    {
      v24 = 0;
      v21 = *MEMORY[0x277CBEC98];
      _DS_CFURLGetPropertyForKey();
    }

    tags = [self tags];
    [v14 setSystemTintColor:{objc_msgSend(MEMORY[0x277D046B0], "folderTintColorForLabel:", FolderTagColorForTags(tags))}];

    childItemCount = [self childItemCount];
    if (childItemCount)
    {
      childItemCount2 = [self childItemCount];
      [v14 setFolderEmpty:{objc_msgSend(childItemCount2, "intValue") == 0}];
    }

    else
    {
      [v14 setFolderEmpty:0];
    }

    v22 = objc_alloc(MEMORY[0x277D1B1A8]);
    identifier2 = [*MEMORY[0x277CE1D80] identifier];
    v8 = [v22 initWithType:identifier2 iconConfiguration:v14];
  }

  else
  {
    iconConfigurationForFolder = [self iconConfigurationForFolder];
    v8 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:v11 iconConfiguration:iconConfigurationForFolder];
  }

LABEL_17:

  return v8;
}

- (id)simplifiedFolderIcon
{
  if ([self isFolder])
  {
    v2 = +[DOCFeature folderOverlays];
    isEnabled = [v2 isEnabled];

    if (isEnabled)
    {
      doc_folderIconType = [self doc_folderIconType];
      if (doc_folderIconType == 6)
      {
        v5 = objc_alloc(MEMORY[0x277D1B1A8]);
        identifier = [*MEMORY[0x277CE1D80] identifier];
        v7 = [objc_alloc(MEMORY[0x277D1B190]) initWithSymbolName:@"person.3.fill" systemTintColor:-1];
        v8 = [v5 initWithType:identifier iconConfiguration:v7];
      }

      else
      {
        identifier = [self folderIconIdentifierForFolderType:doc_folderIconType];
        v10 = objc_alloc_init(MEMORY[0x277D1B190]);
        tags = [self tags];
        [v10 setSystemTintColor:{objc_msgSend(MEMORY[0x277D046B0], "folderTintColorForLabel:", FolderTagColorForTags(tags))}];

        childItemCount = [self childItemCount];
        if (childItemCount)
        {
          childItemCount2 = [self childItemCount];
          [v10 setFolderEmpty:{objc_msgSend(childItemCount2, "intValue") == 0}];
        }

        else
        {
          [v10 setFolderEmpty:0];
        }

        [v10 setSymbolName:0];
        [v10 setEmoji:0];
        v8 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:identifier iconConfiguration:v10];
      }
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277D1B1A8]);
      identifier = [*MEMORY[0x277CE1D80] identifier];
      v8 = [v9 initWithType:identifier];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__CFString)folderIconIdentifierForFolderType:()DOCNode
{
  identifier = @"com.apple.desktop-folder";
  if (a3 <= 3)
  {
    if (a3 >= 2)
    {
      if (a3 == 3)
      {
        identifier = @"com.apple.documents-folder";
      }

      return identifier;
    }

    goto LABEL_11;
  }

  switch(a3)
  {
    case 4:
      identifier = @"com.apple.downloads-folder";

      break;
    case 5:
      identifier = @"com.apple.groups-folder";
      break;
    case 6:
LABEL_11:
      identifier = [*MEMORY[0x277CE1D80] identifier];

      return identifier;
    default:

      break;
  }

  return identifier;
}

- (id)iconsFromIconPackage
{
  if ([self isFolder])
  {
    doc_folderIconType = [self doc_folderIconType];
    v3 = [self folderIconIdentifierForFolderType:doc_folderIconType];
    iconConfigurationForFolder = [self iconConfigurationForFolder];
    v5 = iconConfigurationForFolder;
    if (doc_folderIconType == 6)
    {
      [iconConfigurationForFolder setSymbolName:@"person.3.fill"];
    }

    v6 = [objc_alloc(MEMORY[0x277D1B1C0]) initWithTypeIdentifier:v3 configuration:v5];
    icons = [v6 icons];
  }

  else
  {
    icons = 0;
  }

  return icons;
}

- (uint64_t)isBrowsable
{
  result = [self isFolder];
  if (result)
  {

    return [self isReadable];
  }

  return result;
}

- (uint64_t)_doc_fileTypeCompare:()DOCNode
{
  v4 = a3;
  contentType = [self contentType];
  contentType2 = [v4 contentType];

  v7 = [contentType _doc_fileTypeCompare:contentType2];
  return v7;
}

- (uint64_t)localizedStandardTagsCompareNode:()DOCNode
{
  fpfs_fpItem = [a3 fpfs_fpItem];
  v5 = [self localizedStandardTagsCompare:fpfs_fpItem];

  return v5;
}

- (void)encodeNodeWithCoder:()DOCNode
{
  v4 = a3;
  [v4 encodeInt:0 forKey:@"DOCNodeEncodedTypeKey"];
  [v4 encodeObject:self forKey:@"DOCNodeEncodedObjectKey"];
}

- (void)fetchParent:()DOCNode
{
  v4 = a3;
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  itemID = [self itemID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__FPItem_DOCNode__fetchParent___block_invoke;
  v8[3] = &unk_278F9B888;
  v9 = v4;
  v7 = v4;
  [defaultManager fetchParentsForItemID:itemID recursively:0 completionHandler:v8];
}

- (void)fetchParents:()DOCNode
{
  v4 = a3;
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  itemID = [self itemID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__FPItem_DOCNode__fetchParents___block_invoke;
  v8[3] = &unk_278F9B888;
  v9 = v4;
  v7 = v4;
  [defaultManager fetchParentsForItemID:itemID recursively:1 completionHandler:v8];
}

- (void)fetchURL:()DOCNode
{
  v4 = a3;
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__FPItem_DOCNode__fetchURL___block_invoke;
  v7[3] = &unk_278F9B8B0;
  v8 = v4;
  v6 = v4;
  [defaultManager fetchURLForItem:self completionHandler:v7];
}

- (uint64_t)canPerformActions:()DOCNode
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    v24[0] = self;
    v6 = 1;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v8 = [defaultManager eligibleActionsForItems:v7];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      v13 = *MEMORY[0x277CC6050];
      v14 = *MEMORY[0x277CC6340];
      LODWORD(v6) = 1;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (*(*(&v19 + 1) + 8 * v15) == v13)
          {
            v16 = (v14 & ~[self capabilities]) == 0;
          }

          else
          {
            v16 = [v8 containsObject:?];
          }

          v6 = v6 & v16;
          ++v15;
        }

        while (v11 != v15);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)canPerform:()DOCNode
{
  v2 = [MEMORY[0x277CBEB98] setWithObject:?];
  v3 = [self canPerformActions:v2];

  return v3;
}

- (id)doc_eligibleActions
{
  v7[1] = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  v7[0] = self;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [defaultManager eligibleActionsForItems:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)doc_fallbackSortIdentity
{
  providerItemIdentifier = [self providerItemIdentifier];
  domainIdentifier = [self domainIdentifier];
  v4 = [providerItemIdentifier stringByAppendingString:domainIdentifier];

  return v4;
}

- (void)cachedDomain:()DOCNode .cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 localizedDescription];
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_249340000, v5, OS_LOG_TYPE_ERROR, "Error getting domain from FPItem: %{public}@ error: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)iconConfigurationForFolder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"DOCNode.m" lineNumber:338 description:@"Expected a folder"];
}

@end