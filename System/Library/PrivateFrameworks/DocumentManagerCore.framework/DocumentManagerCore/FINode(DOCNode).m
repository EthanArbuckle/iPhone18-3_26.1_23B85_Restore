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

- (id)providerDomainID
{
  v2 = [a1 fpDomain];
  v3 = [v2 identifier];

  if (!v3)
  {
    v4 = [a1 fpItem];
    v3 = [v4 providerDomainID];

    if (!v3)
    {
      v5 = [a1 domainFromFileURL];
      v6 = v5;
      if (v5)
      {
        v3 = [v5 identifier];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (uint64_t)doc_isCollaborationInvitation
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isCollaborationInvitation];

  return v4;
}

- (id)customizedFolderIdentifier
{
  v23 = *MEMORY[0x277D85DE8];
  if ([a1 isFolder])
  {
    v2 = [a1 tags];
    v3 = FolderTagColorForTags(v2);

    v4 = [a1 propertyAsNSObject:1668638316];
    objc_opt_class();
    if (((objc_opt_isKindOfClass() & 1) != 0 || v3 >= 1) && ((v5 = v4, (v6 = v5) != 0) || v3 >= 1))
    {
      v8 = [v5 allValues];
      v9 = [v8 count];
      if (v9)
      {
        if (v9 == 1)
        {
          v10 = [v8 objectAtIndexedSubscript:0];
          v11 = [v10 description];
        }

        else
        {
          v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v8;
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
  v3 = [a1 identifier];
  v4 = [a1 modificationDate];
  v5 = [a1 folderType];
  v6 = [a1 isTopLevelSharedItem];
  v7 = [a1 isDownloaded];
  v8 = [a1 filename];
  v9 = [v8 pathExtension];
  v10 = [a1 customizedFolderIdentifier];
  LOBYTE(v13) = [a1 isActionable];
  v11 = [(DOCNodeThumbnailIdentifier *)v2 initWithNodeIdentifier:v3 modificationDate:v4 contentVersion:0 folderType:v5 isTopLevelSharedItem:v6 isDownloaded:v7 fileExtension:v9 customFolder:v10 isActionable:v13];

  return v11;
}

- (id)fileSize
{
  v2 = [a1 documentSize];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [a1 fpItem];
    v4 = [v5 documentSize];
  }

  return v4;
}

- (uint64_t)deepItemCount
{
  v2 = [MEMORY[0x277CCACC8] isMainThread];

  return [a1 propertyAsNumber:1684237940 async:v2 options:4 error:0];
}

- (uint64_t)folderType
{
  v1 = [a1 fpItem];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 folderType];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)folderIcon
{
  v2 = +[DOCFeature folderOverlays];
  v3 = [v2 isEnabled];

  if ((v3 & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x277D1B1A8]);
    v5 = [*MEMORY[0x277CE1D80] identifier];
    v6 = [v7 initWithType:v5];
    goto LABEL_6;
  }

  v4 = [a1 doc_folderIconType];
  if (v4 != 4)
  {
    if (v4 == 6)
    {
      v5 = [a1 fpItem];
      v6 = [v5 folderIcon];
LABEL_6:
      v8 = v6;

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v9 = [a1 fpItem];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = +[DOCFeature dsEnumerationLocal];
  v11 = [v10 isEnabled];

  if (!v11)
  {
    goto LABEL_13;
  }

  v9 = [a1 filename];
  if (![v9 isEqual:@"Downloads"])
  {
LABEL_8:

LABEL_13:
    v14 = [a1 propertyAsNSObject:1769171299];
    goto LABEL_14;
  }

  v12 = [a1 parent];
  v13 = [v12 isRootItem];

  if (!v13)
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
  v3 = [v2 isEnabled];

  if ((v3 & 1) == 0)
  {
    v7 = objc_alloc(MEMORY[0x277D1B1A8]);
    v5 = [*MEMORY[0x277CE1D80] identifier];
    v6 = [v7 initWithType:v5];
    goto LABEL_6;
  }

  v4 = [a1 doc_folderIconType];
  if (v4 == 4)
  {
    v9 = [a1 fpItem];
    if (!v9)
    {
      v10 = +[DOCFeature dsEnumerationLocal];
      v11 = [v10 isEnabled];

      if (!v11)
      {
        goto LABEL_13;
      }

      v9 = [a1 filename];
      if ([v9 isEqual:@"Downloads"])
      {
        v12 = [a1 parent];
        v13 = [v12 isRootItem];

        if (v13)
        {
          v8 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:@"com.apple.downloads-folder"];
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

LABEL_13:
    v5 = [*MEMORY[0x277CE1D80] identifier];
    v14 = objc_alloc_init(MEMORY[0x277D1B190]);
    v15 = [a1 tags];
    v16 = FolderTagColorForTags(v15);

    [v14 setSystemTintColor:{objc_msgSend(MEMORY[0x277D046B0], "folderTintColorForLabel:", v16)}];
    v17 = [a1 childItemCount];
    if (v17)
    {
      v18 = [a1 childItemCount];
      [v14 setFolderEmpty:{objc_msgSend(v18, "intValue") == 0}];
    }

    else
    {
      [v14 setFolderEmpty:0];
    }

    [v14 setSymbolName:0];
    [v14 setEmoji:0];
    v8 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:v5 iconConfiguration:v14];

    goto LABEL_17;
  }

  if (v4 != 6)
  {
    goto LABEL_13;
  }

  v5 = [a1 fpItem];
  v6 = [v5 simplifiedFolderIcon];
LABEL_6:
  v8 = v6;
LABEL_17:

LABEL_18:

  return v8;
}

- (id)iconsFromIconPackage
{
  if ([a1 doc_folderIconType] == 1 || (objc_msgSend(a1, "fpItem"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v3 = [a1 propertyAsNSObject:1769173095];
    v4 = [v3 icons];
  }

  else
  {
    v3 = [a1 fpItem];
    v4 = [v3 iconsFromIconPackage];
  }

  v5 = v4;

  return v5;
}

- (uint64_t)doc_isSMBSharepoint
{
  v2 = [a1 providerDomainID];
  if (DOCProviderDomainIDIsSharedServerDomainID(v2, v3) && [a1 isRootItem])
  {
    v4 = [a1 parent];
    v5 = [v4 isRootItem];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)doc_folderIconType
{
  v2 = [a1 fpItem];
  v3 = v2;
  if (!v2)
  {
    v5 = +[DOCFeature dsEnumerationLocal];
    v6 = [v5 isEnabled];

    if (v6)
    {
      v7 = [a1 filename];
      if ([v7 isEqual:@"Downloads"])
      {
        v8 = [a1 parent];
        v9 = [v8 isRootItem];

        if (v9)
        {
          v4 = 4;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v4 = 0;
    goto LABEL_9;
  }

  v4 = [v2 doc_folderIconType];
LABEL_9:

  return v4;
}

- (id)domainFromFileURL
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [a1 fileURL];
  v3 = [v2 path];
  v4 = [v3 stringByStandardizingPath];

  v5 = +[DOCFeature dsEnumerationLocal];
  v6 = [v5 isEnabled];

  if (v6)
  {
    v7 = [MEMORY[0x277D046F0] containerNodePathPrefix];
    v8 = [v4 hasPrefix:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CC6420] providerDomainWithID:@"com.apple.FileProvider.LocalStorage" cachePolicy:3 error:0];
      goto LABEL_18;
    }

    if (([v4 hasSuffix:@"/"] & 1) == 0 && objc_msgSend(a1, "isContainer"))
    {
      v10 = [v4 stringByAppendingString:@"/"];

      v4 = v10;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [MEMORY[0x277CC6420] domainPathCache];
  v12 = [v11 allKeys];

  v9 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [MEMORY[0x277CC6420] domainPathCache];
        v17 = [v16 objectForKeyedSubscript:v15];

        if ([v4 hasPrefix:v17])
        {
          v9 = [MEMORY[0x277CC6420] providerDomainWithID:v15 cachePolicy:3 error:0];

          goto LABEL_17;
        }
      }

      v9 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v2 = [a1 fpDomain];
  v3 = [v2 providerID];

  if (!v3)
  {
    v4 = [a1 fpItem];
    v3 = [v4 providerID];

    if (!v3)
    {
      v5 = [a1 domainFromFileURL];
      v6 = v5;
      if (v5)
      {
        v3 = [v5 providerID];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (id)cachedDomain:()DOCNode
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [a1 fpDomain];
  if (v5)
  {
    v6 = v5;
    goto LABEL_13;
  }

  v7 = [a1 providerDomainID];
  if (![v7 length])
  {
    v8 = 0;
    goto LABEL_12;
  }

  v16 = 0;
  v8 = [MEMORY[0x277CC6420] providerDomainWithID:v7 cachePolicy:3 error:&v16];
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
      v15 = [v9 localizedDescription];
      *buf = 138543874;
      v18 = a1;
      v19 = 2114;
      v20 = v7;
      v21 = 2114;
      v22 = v15;
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
  v2 = [a1 lastUsedDate];
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [v2 isEqualToDate:v3];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 lastUsedDate];
  }

  return v5;
}

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

- (BOOL)isWritable
{
  if ([a1 isContainer])
  {
    v2 = 53252;
  }

  else
  {
    v2 = 0x8000;
  }

  return [a1 nodePermissions:v2] != 0;
}

- (uint64_t)isBrowsable
{
  result = [a1 isContainer];
  if (result)
  {
    return [a1 nodePermissions:2048] != 0;
  }

  return result;
}

- (uint64_t)isExternalDownloadPlaceholder
{
  v1 = [a1 typeIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.safari.download"];

  return v2;
}

- (uint64_t)isCloudItem
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isCloudItem];

  return v4;
}

- (uint64_t)isRootItem
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isRootItem];

  return v4;
}

- (uint64_t)isAppContainer
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isContainer];

  return v4;
}

- (uint64_t)isDownloading
{
  v2 = [a1 fpItem];

  if (v2)
  {
    v3 = [a1 fpItem];
    v4 = [v3 isDownloading];
  }

  else
  {
    v5 = [a1 downloadProgress];
    v3 = v5;
    if (v5)
    {
      v4 = [v5 isFinished] ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (uint64_t)isDownloaded
{
  v2 = [a1 fpItem];

  if (v2)
  {
    v3 = [a1 fpItem];
    v4 = [v3 isDownloaded];

    return v4;
  }

  else
  {

    return [a1 propertyAsBool:1685548132];
  }
}

- (uint64_t)isRecursivelyDownloaded
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 1;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isRecursivelyDownloaded];

  return v4;
}

- (id)downloadingProgress
{
  v2 = [a1 fpItem];

  if (v2)
  {
    v3 = [a1 fpItem];
    v4 = [v3 downloadingProgress];
  }

  else
  {
    v4 = [a1 downloadProgress];
  }

  return v4;
}

- (id)downloadingError
{
  v2 = [a1 fpItem];

  if (v2)
  {
    v3 = [a1 fpItem];
    v4 = [v3 downloadingError];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)isUploading
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isUploading];

  return v4;
}

- (uint64_t)isUploaded
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 1;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isUploaded];

  return v4;
}

- (id)uploadingProgress
{
  v2 = [a1 fpItem];

  if (v2)
  {
    v3 = [a1 fpItem];
    v4 = [v3 uploadingProgress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)uploadingError
{
  v2 = [a1 fpItem];

  if (v2)
  {
    v3 = [a1 fpItem];
    v4 = [v3 uploadingError];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyingProgress
{
  v2 = [a1 fpItem];

  if (v2)
  {
    v3 = [a1 fpItem];
    v4 = [v3 copyingProgress];
  }

  else
  {
    v4 = [a1 copyProgress];
  }

  return v4;
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

- (uint64_t)isItemPinned
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isItemPinned];

  return v4;
}

- (uint64_t)isPinnedSubitem
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isPinnedSubitem];

  return v4;
}

- (uint64_t)isExcludedFromSync
{
  v2 = [a1 fpItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [a1 fpItem];
  v4 = [v3 isExcludedFromSync];

  return v4;
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
  v4 = a3;
  v5 = [a1 fpItem];
  v6 = [v4 fpfs_fpItem];

  v7 = [v5 localizedStandardTagsCompare:v6];
  return v7;
}

- (void)encodeNodeWithCoder:()DOCNode
{
  v4 = a3;
  [v4 encodeInt:1 forKey:@"DOCNodeEncodedTypeKey"];
  [v4 encodeObject:a1 forKey:@"DOCNodeEncodedObjectKey"];
}

- (void)fetchParent:()DOCNode
{
  v5 = a3;
  v6 = [a1 parent];
  (a3)[2](v5, v6, 0);
}

- (void)fetchParents:()DOCNode
{
  v8 = a3;
  v4 = [a1 parent];
  if (v4)
  {
    v5 = v4;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    do
    {
      if ([v5 isRootItem])
      {
        break;
      }

      [v6 addObject:v5];
      v7 = [v5 parent];

      v5 = v7;
    }

    while (v7);
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
  v4 = [a1 nodeURL];
  if (v4)
  {
    v9[2](v9, v4, 0);
  }

  else
  {
    v5 = [a1 fpfs_fpItem];
    v6 = [a1 cachedDomain];
    v7 = v6;
    if (v5 && v6 && ([v6 isUsingFPFS] & 1) == 0)
    {
      v8 = [MEMORY[0x277CC6408] defaultManager];
      [v8 fetchURLForItem:v5 completionHandler:v9];
    }
  }
}

- (id)resolvedNode
{
  if (![a1 nodeIsAny:48] || (v2 = objc_msgSend(a1, "copyFromAlias:allowUI:followAliasChain:", 0x40000000, 0, 1)) == 0)
  {
    v2 = a1;
  }

  return v2;
}

- (uint64_t)isOrIsAncestorOf:()DOCNode
{
  v4 = a3;
  v5 = v4;
  if (a1 == v4)
  {
    v7 = 1;
  }

  else if (v4)
  {
    v6 = [a1 parent];
    v7 = [v5 parent];
    if (v7)
    {
      while (1)
      {
        if (v7 == v6)
        {
          LODWORD(v8) = 0;
          v9 = 1;
          goto LABEL_12;
        }

        if (v7 == a1)
        {
          break;
        }

        v8 = [v7 parent];

        v7 = v8;
        if (!v8)
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v9 = 1;
      LODWORD(v8) = 1;
LABEL_12:

      v7 = v9 & v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_buildFetchError
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = _DocumentManagerBundle();
  v4 = [v3 localizedStringForKey:@"FINode (%@) has no fpItem nor fileURL value:impossible to fetch a corresponding FPItem" table:{@"FINode (%@) has no fpItem nor fileURL, impossible to fetch a corresponding FPItem", @"Localizable"}];
  v5 = [v2 localizedStringWithFormat:v4, a1];

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
  v5 = [a1 fpItem];
  v6 = [a1 fileURL];
  v7 = v6;
  if (v5)
  {
    v4[2](v4, v5, 0);
  }

  else if (v6)
  {
    v8 = [MEMORY[0x277CC6408] defaultManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__FINode_DOCNode__fetchFPItem___block_invoke;
    v10[3] = &unk_278F9B570;
    v11 = v4;
    [v8 fetchItemForURL:v7 completionHandler:v10];
  }

  else
  {
    v9 = [a1 _buildFetchError];
    (v4)[2](v4, 0, v9);
  }
}

- (id)syncFetchFPItem:()DOCNode
{
  v5 = [a1 fpItem];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [a1 fileURL];
    if (v8)
    {
      v9 = [MEMORY[0x277CC6408] defaultManager];
      v7 = [v9 itemForURL:v8 error:a3];
    }

    else
    {
      v10 = [a1 _buildFetchError];
      v9 = v10;
      if (a3)
      {
        v11 = v10;
        v7 = 0;
        *a3 = v9;
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
  v2 = [a1 fpItem];
  if (v2)
  {
    v3 = [MEMORY[0x277CC6408] defaultManager];
    v10[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v5 = [v3 eligibleActionsForItems:v4];

    goto LABEL_17;
  }

  if ([a1 isContainer])
  {
    v6 = 53252;
  }

  else
  {
    v6 = 20484;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = [a1 nodePermissions:0x7FFFFFFFLL];
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
            if ([a1 isContainer])
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
              v51 = a1;
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
              v51 = a1;
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
        v18 = [a1 nodePermissions:v9] == v9;
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
      v19 = [a1 fpfs_fpItem];
      v18 = v18 & [v19 canPerformActions:v5];
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
  v3 = [a1 canPerformActions:v2];

  return v3;
}

- (void)_buildFetchError
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_fault_impl(&dword_249340000, v3, OS_LOG_TYPE_FAULT, "FPItem bridging error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end