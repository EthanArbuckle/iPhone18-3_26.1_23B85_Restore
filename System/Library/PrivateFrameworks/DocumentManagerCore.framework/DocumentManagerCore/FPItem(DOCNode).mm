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
  v2 = [a1 doc_lastUsedDate];
  if (v2)
  {
    [a1 doc_lastUsedDate];
  }

  else
  {
    [a1 modificationDate];
  }
  v3 = ;

  return v3;
}

- (uint64_t)isCopying
{
  v1 = [a1 copyingProgress];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isFinished] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isFullyFormed
{
  v2 = [a1 creationDate];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:-534528000.0];
    v4 = [v2 isEqual:v3];
  }

  else
  {
    v4 = [a1 isCopying];
  }

  return v4 ^ 1u;
}

- (DOCNodeThumbnailIdentifier)thumbnailIdentifier
{
  v14 = [DOCNodeThumbnailIdentifier alloc];
  v2 = [a1 itemIdentifier];
  v3 = [a1 modificationDate];
  v4 = [a1 contentVersion];
  v5 = [a1 folderType];
  v6 = [a1 isTopLevelSharedItem];
  v7 = [a1 isDownloaded];
  v8 = [a1 filename];
  v9 = [v8 pathExtension];
  v10 = [a1 tagThumbnailKey];
  LOBYTE(v13) = [a1 isActionable];
  v11 = [(DOCNodeThumbnailIdentifier *)v14 initWithNodeIdentifier:v2 modificationDate:v3 contentVersion:v4 folderType:v5 isTopLevelSharedItem:v6 isDownloaded:v7 fileExtension:v9 customFolder:v10 isActionable:v13];

  return v11;
}

- (id)contentVersion
{
  v1 = [a1 itemVersion];
  v2 = [v1 contentVersion];

  return v2;
}

- (id)tagThumbnailKey
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [a1 tags];
  v3 = [v2 count];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [a1 tags];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) label];
          [v4 appendFormat:@"%@\n", v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v6 = [a1 providerDomainID];
  v12 = 0;
  v7 = [v5 providerDomainWithID:v6 cachePolicy:3 error:&v12];
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

    [(FPItem(DOCNode) *)a1 cachedDomain:v9, v8];
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
  v1 = [a1 cachedDomain];
  v2 = v1;
  if (v1)
  {
    v3 = DOCLocalizedDisplayName(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isRootItem
{
  v2 = [a1 itemIdentifier];
  if ([v2 isEqualToString:*MEMORY[0x277CC6348]])
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 fp_isCloudDocsContainer];
  }

  return v3;
}

- (uint64_t)isInTrash
{
  if ([a1 isTrashed])
  {
    return 1;
  }

  return [a1 isAnyParentTrashed];
}

- (uint64_t)isAnyParentTrashed
{
  v1 = [a1 fileURL];
  v2 = [v1 path];
  v3 = [v2 containsString:@".Trash"];

  return v3;
}

- (id)deepItemCount
{
  v1 = [a1 childItemCount];
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v1, "intValue") + 1}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)doc_isSMBSharepoint
{
  v2 = [a1 providerDomainID];
  if (DOCProviderDomainIDIsSharedServerDomainID(v2, v3) && [a1 isRootItem])
  {
    v4 = [a1 parentItemIdentifier];
    v5 = [v4 isEqualToString:*MEMORY[0x277CC6348]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)doc_folderIconType
{
  result = [a1 folderType];
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
    if ([a1 isTopLevelSharedItem])
    {
      return 5;
    }

    else if ([a1 doc_isSMBSharepoint])
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
  if (([a1 isFolder] & 1) == 0)
  {
    [(FPItem(DOCNode) *)a2 iconConfigurationForFolder];
  }

  v4 = objc_alloc_init(MEMORY[0x277D1B190]);
  v5 = [a1 tags];
  [v4 setSystemTintColor:{objc_msgSend(MEMORY[0x277D046B0], "folderTintColorForLabel:", FolderTagColorForTags(v5))}];

  v6 = [a1 childItemCount];
  [v4 setFolderEmpty:{objc_msgSend(v6, "intValue") == 0}];

  return v4;
}

- (id)folderIcon
{
  if (![a1 isFolder])
  {
    v8 = 0;
    goto LABEL_17;
  }

  v2 = +[DOCFeature folderOverlays];
  v3 = [v2 isEnabled];

  if ((v3 & 1) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277D1B1A8]);
    v6 = [*MEMORY[0x277CE1D80] identifier];
    v8 = [v9 initWithType:v6];
    goto LABEL_7;
  }

  v4 = [a1 doc_folderIconType];
  if (v4 == 6)
  {
    v5 = objc_alloc(MEMORY[0x277D1B1A8]);
    v6 = [*MEMORY[0x277CE1D80] identifier];
    v7 = [objc_alloc(MEMORY[0x277D1B190]) initWithSymbolName:@"person.3.fill" systemTintColor:-1];
    v8 = [v5 initWithType:v6 iconConfiguration:v7];

LABEL_7:
    goto LABEL_17;
  }

  v10 = v4;
  v11 = [a1 folderIconIdentifierForFolderType:v4];
  if (v10 <= 1 && [a1 supportsFolderCustomization] && (objc_msgSend(a1, "fileURL"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = objc_alloc_init(MEMORY[0x277D1B190]);
    v15 = *MEMORY[0x277CBECA0];
    _DS_CFURLGetPropertyForKey();
    v16 = [v14 symbolName];

    if (!v16)
    {
      v24 = 0;
      v21 = *MEMORY[0x277CBEC98];
      _DS_CFURLGetPropertyForKey();
    }

    v17 = [a1 tags];
    [v14 setSystemTintColor:{objc_msgSend(MEMORY[0x277D046B0], "folderTintColorForLabel:", FolderTagColorForTags(v17))}];

    v18 = [a1 childItemCount];
    if (v18)
    {
      v19 = [a1 childItemCount];
      [v14 setFolderEmpty:{objc_msgSend(v19, "intValue") == 0}];
    }

    else
    {
      [v14 setFolderEmpty:0];
    }

    v22 = objc_alloc(MEMORY[0x277D1B1A8]);
    v23 = [*MEMORY[0x277CE1D80] identifier];
    v8 = [v22 initWithType:v23 iconConfiguration:v14];
  }

  else
  {
    v13 = [a1 iconConfigurationForFolder];
    v8 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:v11 iconConfiguration:v13];
  }

LABEL_17:

  return v8;
}

- (id)simplifiedFolderIcon
{
  if ([a1 isFolder])
  {
    v2 = +[DOCFeature folderOverlays];
    v3 = [v2 isEnabled];

    if (v3)
    {
      v4 = [a1 doc_folderIconType];
      if (v4 == 6)
      {
        v5 = objc_alloc(MEMORY[0x277D1B1A8]);
        v6 = [*MEMORY[0x277CE1D80] identifier];
        v7 = [objc_alloc(MEMORY[0x277D1B190]) initWithSymbolName:@"person.3.fill" systemTintColor:-1];
        v8 = [v5 initWithType:v6 iconConfiguration:v7];
      }

      else
      {
        v6 = [a1 folderIconIdentifierForFolderType:v4];
        v10 = objc_alloc_init(MEMORY[0x277D1B190]);
        v11 = [a1 tags];
        [v10 setSystemTintColor:{objc_msgSend(MEMORY[0x277D046B0], "folderTintColorForLabel:", FolderTagColorForTags(v11))}];

        v12 = [a1 childItemCount];
        if (v12)
        {
          v13 = [a1 childItemCount];
          [v10 setFolderEmpty:{objc_msgSend(v13, "intValue") == 0}];
        }

        else
        {
          [v10 setFolderEmpty:0];
        }

        [v10 setSymbolName:0];
        [v10 setEmoji:0];
        v8 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:v6 iconConfiguration:v10];
      }
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277D1B1A8]);
      v6 = [*MEMORY[0x277CE1D80] identifier];
      v8 = [v9 initWithType:v6];
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
  v5 = @"com.apple.desktop-folder";
  if (a3 <= 3)
  {
    if (a3 >= 2)
    {
      if (a3 == 3)
      {
        v5 = @"com.apple.documents-folder";
      }

      return v5;
    }

    goto LABEL_11;
  }

  switch(a3)
  {
    case 4:
      v5 = @"com.apple.downloads-folder";

      break;
    case 5:
      v5 = @"com.apple.groups-folder";
      break;
    case 6:
LABEL_11:
      v5 = [*MEMORY[0x277CE1D80] identifier];

      return v5;
    default:

      break;
  }

  return v5;
}

- (id)iconsFromIconPackage
{
  if ([a1 isFolder])
  {
    v2 = [a1 doc_folderIconType];
    v3 = [a1 folderIconIdentifierForFolderType:v2];
    v4 = [a1 iconConfigurationForFolder];
    v5 = v4;
    if (v2 == 6)
    {
      [v4 setSymbolName:@"person.3.fill"];
    }

    v6 = [objc_alloc(MEMORY[0x277D1B1C0]) initWithTypeIdentifier:v3 configuration:v5];
    v7 = [v6 icons];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)isBrowsable
{
  result = [a1 isFolder];
  if (result)
  {

    return [a1 isReadable];
  }

  return result;
}

- (uint64_t)_doc_fileTypeCompare:()DOCNode
{
  v4 = a3;
  v5 = [a1 contentType];
  v6 = [v4 contentType];

  v7 = [v5 _doc_fileTypeCompare:v6];
  return v7;
}

- (uint64_t)localizedStandardTagsCompareNode:()DOCNode
{
  v4 = [a3 fpfs_fpItem];
  v5 = [a1 localizedStandardTagsCompare:v4];

  return v5;
}

- (void)encodeNodeWithCoder:()DOCNode
{
  v4 = a3;
  [v4 encodeInt:0 forKey:@"DOCNodeEncodedTypeKey"];
  [v4 encodeObject:a1 forKey:@"DOCNodeEncodedObjectKey"];
}

- (void)fetchParent:()DOCNode
{
  v4 = a3;
  v5 = [MEMORY[0x277CC6408] defaultManager];
  v6 = [a1 itemID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__FPItem_DOCNode__fetchParent___block_invoke;
  v8[3] = &unk_278F9B888;
  v9 = v4;
  v7 = v4;
  [v5 fetchParentsForItemID:v6 recursively:0 completionHandler:v8];
}

- (void)fetchParents:()DOCNode
{
  v4 = a3;
  v5 = [MEMORY[0x277CC6408] defaultManager];
  v6 = [a1 itemID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__FPItem_DOCNode__fetchParents___block_invoke;
  v8[3] = &unk_278F9B888;
  v9 = v4;
  v7 = v4;
  [v5 fetchParentsForItemID:v6 recursively:1 completionHandler:v8];
}

- (void)fetchURL:()DOCNode
{
  v4 = a3;
  v5 = [MEMORY[0x277CC6408] defaultManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__FPItem_DOCNode__fetchURL___block_invoke;
  v7[3] = &unk_278F9B8B0;
  v8 = v4;
  v6 = v4;
  [v5 fetchURLForItem:a1 completionHandler:v7];
}

- (uint64_t)canPerformActions:()DOCNode
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CC6408] defaultManager];
    v24[0] = a1;
    v6 = 1;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v8 = [v5 eligibleActionsForItems:v7];

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
            v16 = (v14 & ~[a1 capabilities]) == 0;
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
  v3 = [a1 canPerformActions:v2];

  return v3;
}

- (id)doc_eligibleActions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC6408] defaultManager];
  v7[0] = a1;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 eligibleActionsForItems:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)doc_fallbackSortIdentity
{
  v2 = [a1 providerItemIdentifier];
  v3 = [a1 domainIdentifier];
  v4 = [v2 stringByAppendingString:v3];

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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCNode.m" lineNumber:338 description:@"Expected a folder"];
}

@end