@interface FINode(DOCNode)
- (BOOL)isWritable;
- (DOCNodeThumbnailIdentifier)thumbnailIdentifier;
- (id)_buildFetchError;
- (id)cachedDomain:()DOCNode;
- (id)copyingProgress;
- (id)customizedFolderIdentifier;
- (id)dateForSortingByRecents;
- (id)doc_eligibleActions;
- (id)doc_lastUsedDate;
- (id)domainDisplayName;
- (id)domainFromFileURL;
- (id)downloadingError;
- (id)downloadingProgress;
- (id)fileSize;
- (id)folderIcon;
- (id)iconsFromIconPackage;
- (id)providerDomainID;
- (id)providerID;
- (id)resolvedNode;
- (id)simplifiedFolderIcon;
- (id)syncFetchFPItem:()DOCNode;
- (id)uploadingError;
- (id)uploadingProgress;
- (uint64_t)_doc_fileTypeCompare:()DOCNode;
- (uint64_t)canPerform:()DOCNode;
- (uint64_t)canPerformActions:()DOCNode;
- (uint64_t)deepItemCount;
- (uint64_t)doc_folderIconType;
- (uint64_t)doc_isCollaborationInvitation;
- (uint64_t)doc_isSMBSharepoint;
- (uint64_t)folderType;
- (uint64_t)isAppContainer;
- (uint64_t)isBrowsable;
- (uint64_t)isCloudItem;
- (uint64_t)isCopying;
- (uint64_t)isDownloaded;
- (uint64_t)isDownloading;
- (uint64_t)isExcludedFromSync;
- (uint64_t)isExternalDownloadPlaceholder;
- (uint64_t)isItemPinned;
- (uint64_t)isOrIsAncestorOf:()DOCNode;
- (uint64_t)isPinnedSubitem;
- (uint64_t)isRecursivelyDownloaded;
- (uint64_t)isRootItem;
- (uint64_t)isUploaded;
- (uint64_t)isUploading;
- (uint64_t)localizedStandardTagsCompareNode:()DOCNode;
- (void)_buildFetchError;
- (void)encodeNodeWithCoder:()DOCNode;
- (void)fetchFPItem:()DOCNode;
- (void)fetchParent:()DOCNode;
- (void)fetchParents:()DOCNode;
- (void)fetchURL:()DOCNode;
@end

@implementation FINode(DOCNode)

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

- (id)providerDomainID
{
  fpDomain = [self fpDomain];
  identifier = [fpDomain identifier];

  if (!identifier)
  {
    fpItem = [self fpItem];
    identifier = [fpItem providerDomainID];

    if (!identifier)
    {
      domainFromFileURL = [self domainFromFileURL];
      v6 = domainFromFileURL;
      if (domainFromFileURL)
      {
        identifier = [domainFromFileURL identifier];
      }

      else
      {
        identifier = 0;
      }
    }
  }

  return identifier;
}

- (uint64_t)doc_isCollaborationInvitation
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 0;
  }

  fpItem2 = [self fpItem];
  isCollaborationInvitation = [fpItem2 isCollaborationInvitation];

  return isCollaborationInvitation;
}

- (id)customizedFolderIdentifier
{
  v23 = *MEMORY[0x277D85DE8];
  if ([self isFolder])
  {
    tags = [self tags];
    v3 = FolderTagColorForTags(tags);

    v4 = [self propertyAsNSObject:1668638316];
    objc_opt_class();
    if (((objc_opt_isKindOfClass() & 1) != 0 || v3 >= 1) && ((v5 = v4, (v6 = v5) != 0) || v3 >= 1))
    {
      allValues = [v5 allValues];
      v9 = [allValues count];
      if (v9)
      {
        if (v9 == 1)
        {
          v10 = [allValues objectAtIndexedSubscript:0];
          v11 = [v10 description];
        }

        else
        {
          v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = allValues;
          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v19;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v19 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                [(__CFString *)v11 appendFormat:@"%@|", *(*(&v18 + 1) + 8 * i)];
              }

              v13 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
            }

            while (v13);
          }
        }
      }

      else
      {
        v11 = &stru_285C6EEF8;
      }

      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d|%@", v3, v11];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (DOCNodeThumbnailIdentifier)thumbnailIdentifier
{
  v2 = [DOCNodeThumbnailIdentifier alloc];
  identifier = [self identifier];
  modificationDate = [self modificationDate];
  folderType = [self folderType];
  isTopLevelSharedItem = [self isTopLevelSharedItem];
  isDownloaded = [self isDownloaded];
  filename = [self filename];
  pathExtension = [filename pathExtension];
  customizedFolderIdentifier = [self customizedFolderIdentifier];
  LOBYTE(v13) = [self isActionable];
  v11 = [(DOCNodeThumbnailIdentifier *)v2 initWithNodeIdentifier:identifier modificationDate:modificationDate contentVersion:0 folderType:folderType isTopLevelSharedItem:isTopLevelSharedItem isDownloaded:isDownloaded fileExtension:pathExtension customFolder:customizedFolderIdentifier isActionable:v13];

  return v11;
}

- (id)fileSize
{
  documentSize = [self documentSize];
  v3 = documentSize;
  if (documentSize)
  {
    documentSize2 = documentSize;
  }

  else
  {
    fpItem = [self fpItem];
    documentSize2 = [fpItem documentSize];
  }

  return documentSize2;
}

- (uint64_t)deepItemCount
{
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];

  return [self propertyAsNumber:1684237940 async:isMainThread options:4 error:0];
}

- (uint64_t)folderType
{
  fpItem = [self fpItem];
  v2 = fpItem;
  if (fpItem)
  {
    folderType = [fpItem folderType];
  }

  else
  {
    folderType = 0;
  }

  return folderType;
}

- (id)folderIcon
{
  v2 = +[DOCFeature folderOverlays];
  isEnabled = [v2 isEnabled];

  if ((isEnabled & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x277D1B1A8]);
    identifier = [*MEMORY[0x277CE1D80] identifier];
    folderIcon = [v7 initWithType:identifier];
    goto LABEL_6;
  }

  doc_folderIconType = [self doc_folderIconType];
  if (doc_folderIconType != 4)
  {
    if (doc_folderIconType == 6)
    {
      identifier = [self fpItem];
      folderIcon = [identifier folderIcon];
LABEL_6:
      v8 = folderIcon;

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  fpItem = [self fpItem];
  if (fpItem)
  {
    goto LABEL_8;
  }

  v10 = +[DOCFeature dsEnumerationLocal];
  isEnabled2 = [v10 isEnabled];

  if (!isEnabled2)
  {
    goto LABEL_13;
  }

  fpItem = [self filename];
  if (![fpItem isEqual:@"Downloads"])
  {
LABEL_8:

LABEL_13:
    v14 = [self propertyAsNSObject:1769171299];
    goto LABEL_14;
  }

  parent = [self parent];
  isRootItem = [parent isRootItem];

  if (!isRootItem)
  {
    goto LABEL_13;
  }

  v14 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:@"com.apple.downloads-folder"];
LABEL_14:
  v8 = v14;
LABEL_15:

  return v8;
}

- (id)simplifiedFolderIcon
{
  v2 = +[DOCFeature folderOverlays];
  isEnabled = [v2 isEnabled];

  if ((isEnabled & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x277D1B1A8]);
    identifier = [*MEMORY[0x277CE1D80] identifier];
    simplifiedFolderIcon = [v7 initWithType:identifier];
    goto LABEL_6;
  }

  doc_folderIconType = [self doc_folderIconType];
  if (doc_folderIconType == 4)
  {
    fpItem = [self fpItem];
    if (!fpItem)
    {
      v10 = +[DOCFeature dsEnumerationLocal];
      isEnabled2 = [v10 isEnabled];

      if (!isEnabled2)
      {
        goto LABEL_13;
      }

      fpItem = [self filename];
      if ([fpItem isEqual:@"Downloads"])
      {
        parent = [self parent];
        isRootItem = [parent isRootItem];

        if (isRootItem)
        {
          v8 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:@"com.apple.downloads-folder"];
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

LABEL_13:
    identifier = [*MEMORY[0x277CE1D80] identifier];
    v14 = objc_alloc_init(MEMORY[0x277D1B190]);
    tags = [self tags];
    v16 = FolderTagColorForTags(tags);

    [v14 setSystemTintColor:{objc_msgSend(MEMORY[0x277D046B0], "folderTintColorForLabel:", v16)}];
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

    [v14 setSymbolName:0];
    [v14 setEmoji:0];
    v8 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:identifier iconConfiguration:v14];

    goto LABEL_17;
  }

  if (doc_folderIconType != 6)
  {
    goto LABEL_13;
  }

  identifier = [self fpItem];
  simplifiedFolderIcon = [identifier simplifiedFolderIcon];
LABEL_6:
  v8 = simplifiedFolderIcon;
LABEL_17:

LABEL_18:

  return v8;
}

- (id)iconsFromIconPackage
{
  if ([self doc_folderIconType] == 1 || (objc_msgSend(self, "fpItem"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    fpItem = [self propertyAsNSObject:1769173095];
    icons = [fpItem icons];
  }

  else
  {
    fpItem = [self fpItem];
    icons = [fpItem iconsFromIconPackage];
  }

  v5 = icons;

  return v5;
}

- (uint64_t)doc_isSMBSharepoint
{
  providerDomainID = [self providerDomainID];
  if (DOCProviderDomainIDIsSharedServerDomainID(providerDomainID, v3) && [self isRootItem])
  {
    parent = [self parent];
    isRootItem = [parent isRootItem];
  }

  else
  {
    isRootItem = 0;
  }

  return isRootItem;
}

- (uint64_t)doc_folderIconType
{
  fpItem = [self fpItem];
  v3 = fpItem;
  if (!fpItem)
  {
    v5 = +[DOCFeature dsEnumerationLocal];
    isEnabled = [v5 isEnabled];

    if (isEnabled)
    {
      filename = [self filename];
      if ([filename isEqual:@"Downloads"])
      {
        parent = [self parent];
        isRootItem = [parent isRootItem];

        if (isRootItem)
        {
          doc_folderIconType = 4;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    doc_folderIconType = 0;
    goto LABEL_9;
  }

  doc_folderIconType = [fpItem doc_folderIconType];
LABEL_9:

  return doc_folderIconType;
}

- (id)domainFromFileURL
{
  v25 = *MEMORY[0x277D85DE8];
  fileURL = [self fileURL];
  path = [fileURL path];
  stringByStandardizingPath = [path stringByStandardizingPath];

  v5 = +[DOCFeature dsEnumerationLocal];
  isEnabled = [v5 isEnabled];

  if (isEnabled)
  {
    containerNodePathPrefix = [MEMORY[0x277D046F0] containerNodePathPrefix];
    v8 = [stringByStandardizingPath hasPrefix:containerNodePathPrefix];

    if (v8)
    {
      v9 = [MEMORY[0x277CC6420] providerDomainWithID:@"com.apple.FileProvider.LocalStorage" cachePolicy:3 error:0];
      goto LABEL_18;
    }

    if (([stringByStandardizingPath hasSuffix:@"/"] & 1) == 0 && objc_msgSend(self, "isContainer"))
    {
      v10 = [stringByStandardizingPath stringByAppendingString:@"/"];

      stringByStandardizingPath = v10;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  domainPathCache = [MEMORY[0x277CC6420] domainPathCache];
  allKeys = [domainPathCache allKeys];

  v9 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        domainPathCache2 = [MEMORY[0x277CC6420] domainPathCache];
        v17 = [domainPathCache2 objectForKeyedSubscript:v15];

        if ([stringByStandardizingPath hasPrefix:v17])
        {
          v9 = [MEMORY[0x277CC6420] providerDomainWithID:v15 cachePolicy:3 error:0];

          goto LABEL_17;
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

LABEL_18:
  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)providerID
{
  fpDomain = [self fpDomain];
  providerID = [fpDomain providerID];

  if (!providerID)
  {
    fpItem = [self fpItem];
    providerID = [fpItem providerID];

    if (!providerID)
    {
      domainFromFileURL = [self domainFromFileURL];
      v6 = domainFromFileURL;
      if (domainFromFileURL)
      {
        providerID = [domainFromFileURL providerID];
      }

      else
      {
        providerID = 0;
      }
    }
  }

  return providerID;
}

- (id)cachedDomain:()DOCNode
{
  v23 = *MEMORY[0x277D85DE8];
  fpDomain = [self fpDomain];
  if (fpDomain)
  {
    v6 = fpDomain;
    goto LABEL_13;
  }

  providerDomainID = [self providerDomainID];
  if (![providerDomainID length])
  {
    v8 = 0;
    goto LABEL_12;
  }

  v16 = 0;
  v8 = [MEMORY[0x277CC6420] providerDomainWithID:providerDomainID cachePolicy:3 error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = docEnumerationLogHandle;
    if (!docEnumerationLogHandle)
    {
      DOCInitLogging();
      v10 = docEnumerationLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = v10;
      localizedDescription = [v9 localizedDescription];
      *buf = 138543874;
      selfCopy = self;
      v19 = 2114;
      v20 = providerDomainID;
      v21 = 2114;
      v22 = localizedDescription;
      _os_log_error_impl(&dword_249340000, v14, OS_LOG_TYPE_ERROR, "Error getting domain for node %{public}@ from domainID: %{public}@, domain error: %{public}@", buf, 0x20u);

      if (!a3)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (a3)
    {
LABEL_9:
      v11 = v9;
      *a3 = v9;
    }
  }

LABEL_10:

LABEL_12:
  v6 = v8;

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)doc_lastUsedDate
{
  lastUsedDate = [self lastUsedDate];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [lastUsedDate isEqualToDate:distantPast];

  if (v4)
  {
    lastUsedDate2 = 0;
  }

  else
  {
    lastUsedDate2 = [self lastUsedDate];
  }

  return lastUsedDate2;
}

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

- (BOOL)isWritable
{
  if ([self isContainer])
  {
    v2 = 53252;
  }

  else
  {
    v2 = 0x8000;
  }

  return [self nodePermissions:v2] != 0;
}

- (uint64_t)isBrowsable
{
  result = [self isContainer];
  if (result)
  {
    return [self nodePermissions:2048] != 0;
  }

  return result;
}

- (uint64_t)isExternalDownloadPlaceholder
{
  typeIdentifier = [self typeIdentifier];
  v2 = [typeIdentifier isEqualToString:@"com.apple.safari.download"];

  return v2;
}

- (uint64_t)isCloudItem
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 0;
  }

  fpItem2 = [self fpItem];
  isCloudItem = [fpItem2 isCloudItem];

  return isCloudItem;
}

- (uint64_t)isRootItem
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 0;
  }

  fpItem2 = [self fpItem];
  isRootItem = [fpItem2 isRootItem];

  return isRootItem;
}

- (uint64_t)isAppContainer
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 0;
  }

  fpItem2 = [self fpItem];
  isContainer = [fpItem2 isContainer];

  return isContainer;
}

- (uint64_t)isDownloading
{
  fpItem = [self fpItem];

  if (fpItem)
  {
    fpItem2 = [self fpItem];
    isDownloading = [fpItem2 isDownloading];
  }

  else
  {
    downloadProgress = [self downloadProgress];
    fpItem2 = downloadProgress;
    if (downloadProgress)
    {
      isDownloading = [downloadProgress isFinished] ^ 1;
    }

    else
    {
      isDownloading = 0;
    }
  }

  return isDownloading;
}

- (uint64_t)isDownloaded
{
  fpItem = [self fpItem];

  if (fpItem)
  {
    fpItem2 = [self fpItem];
    isDownloaded = [fpItem2 isDownloaded];

    return isDownloaded;
  }

  else
  {

    return [self propertyAsBool:1685548132];
  }
}

- (uint64_t)isRecursivelyDownloaded
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 1;
  }

  fpItem2 = [self fpItem];
  isRecursivelyDownloaded = [fpItem2 isRecursivelyDownloaded];

  return isRecursivelyDownloaded;
}

- (id)downloadingProgress
{
  fpItem = [self fpItem];

  if (fpItem)
  {
    fpItem2 = [self fpItem];
    downloadingProgress = [fpItem2 downloadingProgress];
  }

  else
  {
    downloadingProgress = [self downloadProgress];
  }

  return downloadingProgress;
}

- (id)downloadingError
{
  fpItem = [self fpItem];

  if (fpItem)
  {
    fpItem2 = [self fpItem];
    downloadingError = [fpItem2 downloadingError];
  }

  else
  {
    downloadingError = 0;
  }

  return downloadingError;
}

- (uint64_t)isUploading
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 0;
  }

  fpItem2 = [self fpItem];
  isUploading = [fpItem2 isUploading];

  return isUploading;
}

- (uint64_t)isUploaded
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 1;
  }

  fpItem2 = [self fpItem];
  isUploaded = [fpItem2 isUploaded];

  return isUploaded;
}

- (id)uploadingProgress
{
  fpItem = [self fpItem];

  if (fpItem)
  {
    fpItem2 = [self fpItem];
    uploadingProgress = [fpItem2 uploadingProgress];
  }

  else
  {
    uploadingProgress = 0;
  }

  return uploadingProgress;
}

- (id)uploadingError
{
  fpItem = [self fpItem];

  if (fpItem)
  {
    fpItem2 = [self fpItem];
    uploadingError = [fpItem2 uploadingError];
  }

  else
  {
    uploadingError = 0;
  }

  return uploadingError;
}

- (id)copyingProgress
{
  fpItem = [self fpItem];

  if (fpItem)
  {
    fpItem2 = [self fpItem];
    copyingProgress = [fpItem2 copyingProgress];
  }

  else
  {
    copyingProgress = [self copyProgress];
  }

  return copyingProgress;
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

- (uint64_t)isItemPinned
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 0;
  }

  fpItem2 = [self fpItem];
  isItemPinned = [fpItem2 isItemPinned];

  return isItemPinned;
}

- (uint64_t)isPinnedSubitem
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 0;
  }

  fpItem2 = [self fpItem];
  isPinnedSubitem = [fpItem2 isPinnedSubitem];

  return isPinnedSubitem;
}

- (uint64_t)isExcludedFromSync
{
  fpItem = [self fpItem];

  if (!fpItem)
  {
    return 0;
  }

  fpItem2 = [self fpItem];
  isExcludedFromSync = [fpItem2 isExcludedFromSync];

  return isExcludedFromSync;
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
  v4 = a3;
  fpItem = [self fpItem];
  fpfs_fpItem = [v4 fpfs_fpItem];

  v7 = [fpItem localizedStandardTagsCompare:fpfs_fpItem];
  return v7;
}

- (void)encodeNodeWithCoder:()DOCNode
{
  v4 = a3;
  [v4 encodeInt:1 forKey:@"DOCNodeEncodedTypeKey"];
  [v4 encodeObject:self forKey:@"DOCNodeEncodedObjectKey"];
}

- (void)fetchParent:()DOCNode
{
  v5 = a3;
  parent = [self parent];
  (a3)[2](v5, parent, 0);
}

- (void)fetchParents:()DOCNode
{
  v8 = a3;
  parent = [self parent];
  if (parent)
  {
    v5 = parent;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    do
    {
      if ([v5 isRootItem])
      {
        break;
      }

      [v6 addObject:v5];
      parent2 = [v5 parent];

      v5 = parent2;
    }

    while (parent2);
    if ([v5 isRootItem])
    {
      [v6 addObject:v5];
    }

    v8[2](v8, v6, 0);
  }

  else
  {
    v8[2](v8, 0, 0);
  }
}

- (void)fetchURL:()DOCNode
{
  v9 = a3;
  nodeURL = [self nodeURL];
  if (nodeURL)
  {
    v9[2](v9, nodeURL, 0);
  }

  else
  {
    fpfs_fpItem = [self fpfs_fpItem];
    cachedDomain = [self cachedDomain];
    v7 = cachedDomain;
    if (fpfs_fpItem && cachedDomain && ([cachedDomain isUsingFPFS] & 1) == 0)
    {
      defaultManager = [MEMORY[0x277CC6408] defaultManager];
      [defaultManager fetchURLForItem:fpfs_fpItem completionHandler:v9];
    }
  }
}

- (id)resolvedNode
{
  if (![self nodeIsAny:48] || (selfCopy = objc_msgSend(self, "copyFromAlias:allowUI:followAliasChain:", 0x40000000, 0, 1)) == 0)
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)isOrIsAncestorOf:()DOCNode
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    parent2 = 1;
  }

  else if (v4)
  {
    parent = [self parent];
    parent2 = [v5 parent];
    if (parent2)
    {
      while (1)
      {
        if (parent2 == parent)
        {
          LODWORD(v7Parent) = 0;
          v9 = 1;
          goto LABEL_12;
        }

        if (parent2 == self)
        {
          break;
        }

        v7Parent = [parent2 parent];

        parent2 = v7Parent;
        if (!v7Parent)
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v9 = 1;
      LODWORD(v7Parent) = 1;
LABEL_12:

      parent2 = v9 & v7Parent;
    }
  }

  else
  {
    parent2 = 0;
  }

  return parent2;
}

- (id)_buildFetchError
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = _DocumentManagerBundle();
  v4 = [v3 localizedStringForKey:@"FINode (%@) has no fpItem nor fileURL value:impossible to fetch a corresponding FPItem" table:{@"FINode (%@) has no fpItem nor fileURL, impossible to fetch a corresponding FPItem", @"Localizable"}];
  v5 = [v2 localizedStringWithFormat:v4, self];

  v6 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.DocumentManager.Node" code:2 userInfo:v7];

  v9 = docEnumerationLogHandle;
  if (!docEnumerationLogHandle)
  {
    DOCInitLogging();
    v9 = docEnumerationLogHandle;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [(FINode(DOCNode) *)v9 _buildFetchError];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)fetchFPItem:()DOCNode
{
  v4 = a3;
  fpItem = [self fpItem];
  fileURL = [self fileURL];
  v7 = fileURL;
  if (fpItem)
  {
    v4[2](v4, fpItem, 0);
  }

  else if (fileURL)
  {
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__FINode_DOCNode__fetchFPItem___block_invoke;
    v10[3] = &unk_278F9B570;
    v11 = v4;
    [defaultManager fetchItemForURL:v7 completionHandler:v10];
  }

  else
  {
    _buildFetchError = [self _buildFetchError];
    (v4)[2](v4, 0, _buildFetchError);
  }
}

- (id)syncFetchFPItem:()DOCNode
{
  fpItem = [self fpItem];
  v6 = fpItem;
  if (fpItem)
  {
    v7 = fpItem;
  }

  else
  {
    fileURL = [self fileURL];
    if (fileURL)
    {
      defaultManager = [MEMORY[0x277CC6408] defaultManager];
      v7 = [defaultManager itemForURL:fileURL error:a3];
    }

    else
    {
      _buildFetchError = [self _buildFetchError];
      defaultManager = _buildFetchError;
      if (a3)
      {
        v11 = _buildFetchError;
        v7 = 0;
        *a3 = defaultManager;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (id)doc_eligibleActions
{
  v10[1] = *MEMORY[0x277D85DE8];
  fpItem = [self fpItem];
  if (fpItem)
  {
    defaultManager = [MEMORY[0x277CC6408] defaultManager];
    v10[0] = fpItem;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v5 = [defaultManager eligibleActionsForItems:v4];

    goto LABEL_17;
  }

  if ([self isContainer])
  {
    v6 = 53252;
  }

  else
  {
    v6 = 20484;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [self nodePermissions:0x7FFFFFFFLL];
  if ((v7 & v6) != 0)
  {
    [v5 addObject:*MEMORY[0x277CC6028]];
  }

  if ((v7 & 2) != 0)
  {
    [v5 addObject:*MEMORY[0x277CC6048]];
    if ((v7 & 0x10000) == 0)
    {
LABEL_10:
      if ((v7 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else if ((v7 & 0x10000) == 0)
  {
    goto LABEL_10;
  }

  [v5 addObject:*MEMORY[0x277CC5FD8]];
  if ((v7 & 1) == 0)
  {
LABEL_11:
    if ((v7 & 0x400000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v5 addObject:*MEMORY[0x277CC6040]];
  if ((v7 & 0x400000) == 0)
  {
LABEL_12:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v5 addObject:*MEMORY[0x277CC5FE0]];
  if ((v7 & 0x200000) == 0)
  {
LABEL_13:
    if ((v7 & 0x800000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v5 addObject:*MEMORY[0x277CC6058]];
  if ((v7 & 0x800000) == 0)
  {
LABEL_14:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v5 addObject:*MEMORY[0x277CC6078]];
  if ((v7 & 0x100000) == 0)
  {
LABEL_15:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_26:
  [v5 addObject:*MEMORY[0x277CC6050]];
  if ((v7 & 0x2000) != 0)
  {
LABEL_16:
    [v5 addObject:*MEMORY[0x277CC6030]];
  }

LABEL_17:

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (uint64_t)canPerformActions:()DOCNode
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v7)
    {
      v8 = v7;
      v36 = v5;
      v32 = v4;
      v9 = 0;
      v10 = *v45;
      v11 = *MEMORY[0x277CC6028];
      v12 = *MEMORY[0x277CC6048];
      v43 = *MEMORY[0x277CC5FD8];
      v41 = *MEMORY[0x277CC5FE0];
      v42 = *MEMORY[0x277CC6040];
      v39 = *MEMORY[0x277CC6078];
      v40 = *MEMORY[0x277CC6058];
      v37 = *MEMORY[0x277CC6030];
      v38 = *MEMORY[0x277CC6050];
      v35 = *MEMORY[0x277CC6010];
      v31 = *MEMORY[0x277CC6018];
      v29 = *MEMORY[0x277CC6060];
      v30 = *MEMORY[0x277CC5FD0];
      v28 = *MEMORY[0x277CC6020];
      v27 = *MEMORY[0x277CC6068];
      v25 = *MEMORY[0x277CC5FF8];
      v26 = *MEMORY[0x277CC5FE8];
      v23 = *MEMORY[0x277CC6000];
      v24 = *MEMORY[0x277CC5FF0];
      v22 = *MEMORY[0x277CC6070];
      do
      {
        v13 = 0;
        do
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v44 + 1) + 8 * v13);
          if ([v14 isEqualToString:{v11, v22}])
          {
            if ([self isContainer])
            {
              v15 = 53252;
            }

            else
            {
              v15 = 20484;
            }

            v9 = v15 | v9;
          }

          else if ([v14 isEqualToString:v12])
          {
            v9 = v9 | 2;
          }

          else if ([v14 isEqualToString:v43])
          {
            v9 = v9 | 0x10000;
          }

          else if ([v14 isEqualToString:v42])
          {
            v9 = v9 | 1;
          }

          else if ([v14 isEqualToString:v41])
          {
            v9 = v9 | 0x400000;
          }

          else if ([v14 isEqualToString:v40])
          {
            v9 = v9 | 0x200000;
          }

          else if ([v14 isEqualToString:v39])
          {
            v9 = v9 | 0x800000;
          }

          else if ([v14 isEqualToString:v38])
          {
            v9 = v9 | 0x100000;
          }

          else if ([v14 isEqualToString:v37])
          {
            v9 = v9 | 0x2000;
          }

          else if (([v14 isEqualToString:v35] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v31) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v30) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v29) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v28) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v27) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v26) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v25) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v24) & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", v23) & 1) != 0 || objc_msgSend(v14, "isEqualToString:", v22))
          {
            [v36 addObject:v14];
            v16 = docEnumerationLogHandle;
            if (!docEnumerationLogHandle)
            {
              DOCInitLogging();
              v16 = docEnumerationLogHandle;
            }

            log = v16;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v49 = v14;
              v50 = 2114;
              selfCopy2 = self;
              _os_log_error_impl(&dword_249340000, log, OS_LOG_TYPE_ERROR, "Unsupported action: %{public}@. Falling back to FPItem: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            [v36 addObject:v14];
            loga = DOCEnumerationLogHandle();
            if (os_log_type_enabled(loga, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v49 = v14;
              v50 = 2114;
              selfCopy2 = self;
              _os_log_error_impl(&dword_249340000, loga, OS_LOG_TYPE_ERROR, "Unknown/Unexpected action: %{public}@. Falling back to FPItem: %{public}@", buf, 0x16u);
            }
          }

          ++v13;
        }

        while (v8 != v13);
        v17 = [v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
        v8 = v17;
      }

      while (v17);

      if (v9)
      {
        v18 = [self nodePermissions:v9] == v9;
      }

      else
      {
        v18 = 1;
      }

      v4 = v32;
      v5 = v36;
    }

    else
    {

      v18 = 1;
    }

    if ([v5 count])
    {
      fpfs_fpItem = [self fpfs_fpItem];
      v18 = v18 & [fpfs_fpItem canPerformActions:v5];
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (uint64_t)canPerform:()DOCNode
{
  v2 = [MEMORY[0x277CBEB98] setWithObject:?];
  v3 = [self canPerformActions:v2];

  return v3;
}

- (void)_buildFetchError
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  localizedDescription = [a2 localizedDescription];
  v6 = 138543362;
  v7 = localizedDescription;
  _os_log_fault_impl(&dword_249340000, selfCopy, OS_LOG_TYPE_FAULT, "FPItem bridging error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end