@interface IMDirectoryContents
+ (BOOL)isGroupPhotoPath:(id)path;
- (BOOL)isAttachmentPath:(id)path;
- (BOOL)isStickerPath:(id)path;
- (BOOL)isSyncAssetPath:(id)path;
- (IMDirectoryContents)initWithRootPath:(id)path attachmentsPath:(id)attachmentsPath syncAssetsPath:(id)assetsPath stickersPath:(id)stickersPath;
- (NSArray)attachmentPaths;
- (NSArray)sortedPaths;
- (NSArray)syncAssetPaths;
- (NSArray)topLevelPaths;
- (NSSet)allPaths;
- (void)gather;
- (void)gatherLivePhotoBundleContentInfoAtPath:(id)path;
- (void)recursivelyGatherFileInfoAtPath:(id)path fileInfoMap:(id)map;
@end

@implementation IMDirectoryContents

- (IMDirectoryContents)initWithRootPath:(id)path attachmentsPath:(id)attachmentsPath syncAssetsPath:(id)assetsPath stickersPath:(id)stickersPath
{
  pathCopy = path;
  attachmentsPathCopy = attachmentsPath;
  assetsPathCopy = assetsPath;
  stickersPathCopy = stickersPath;
  v24.receiver = self;
  v24.super_class = IMDirectoryContents;
  v14 = [(IMDirectoryContents *)&v24 init];
  if (v14)
  {
    v15 = [pathCopy copy];
    rootPath = v14->_rootPath;
    v14->_rootPath = v15;

    if (attachmentsPathCopy)
    {
      v17 = [attachmentsPathCopy copy];
      attachmentsPath = v14->_attachmentsPath;
      v14->_attachmentsPath = v17;
    }

    if (stickersPathCopy)
    {
      v19 = [stickersPathCopy copy];
      stickersPath = v14->_stickersPath;
      v14->_stickersPath = v19;
    }

    if (assetsPathCopy)
    {
      v21 = [assetsPathCopy copy];
      syncAssetsPath = v14->_syncAssetsPath;
      v14->_syncAssetsPath = v21;
    }

    v14->_spaceSavedFromIgnoreLivePhotoBundles = 0;
  }

  return v14;
}

- (BOOL)isAttachmentPath:(id)path
{
  pathCopy = path;
  attachmentsPath = [(IMDirectoryContents *)self attachmentsPath];
  if (attachmentsPath)
  {
    attachmentsPath2 = [(IMDirectoryContents *)self attachmentsPath];
    v7 = [pathCopy hasPrefix:attachmentsPath2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isStickerPath:(id)path
{
  pathCopy = path;
  stickersPath = [(IMDirectoryContents *)self stickersPath];
  if (stickersPath)
  {
    stickersPath2 = [(IMDirectoryContents *)self stickersPath];
    v7 = [pathCopy hasPrefix:stickersPath2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSyncAssetPath:(id)path
{
  pathCopy = path;
  syncAssetsPath = [(IMDirectoryContents *)self syncAssetsPath];
  if (syncAssetsPath)
  {
    syncAssetsPath2 = [(IMDirectoryContents *)self syncAssetsPath];
    v7 = [pathCopy hasPrefix:syncAssetsPath2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)gatherLivePhotoBundleContentInfoAtPath:(id)path
{
  pathCopy = path;
  v9 = IMFileSizeZero;
  v8 = 0;
  v5 = IMFileSizeForItemAtPath(pathCopy, &v9, 1, &v8);
  v6 = v8;
  if (v5)
  {
    self->_spaceSavedFromIgnoreLivePhotoBundles += v9;
  }

  else
  {
    v7 = IMLogHandleForCategory("DiskSpace");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C5868();
    }
  }
}

- (void)recursivelyGatherFileInfoAtPath:(id)path fileInfoMap:(id)map
{
  v43 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  mapCopy = map;
  v41 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v41];

  if (!v9)
  {
    goto LABEL_28;
  }

  v40 = 0;
  v10 = [IMAPFSUtils purgableFlagsForPath:pathCopy error:&v40];
  if (v40)
  {
    v11 = IMLogHandleForCategory("DiskSpace");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C5900();
    }
  }

  if (v41 != 1)
  {
    v34 = IMFileSizeZero;
    v33 = 0;
    v16 = IMFileSizeForItemAtPath(pathCopy, &v34, 1, &v33);
    v17 = v33;
    if (!v16)
    {
      v18 = IMLogHandleForCategory("DiskSpace");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C5868();
      }
    }

    v19 = [IMDiskSpaceFileManagerFileInfo alloc];
    v20 = [(IMDirectoryContents *)self isAttachmentPath:pathCopy];
    v21 = [(IMDirectoryContents *)self isSyncAssetPath:pathCopy];
    LOBYTE(v32) = [(IMDirectoryContents *)self isStickerPath:pathCopy];
    v22 = [(IMDiskSpaceFileManagerFileInfo *)v19 initWithPath:pathCopy fileSize:v34 isDirectory:0 isAttachment:v20 isSyncAsset:v21 isSticker:v32 purgableFlags:v10];
    [mapCopy setObject:v22 forKeyedSubscript:pathCopy];

    goto LABEL_27;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  v13 = [defaultManager2 contentsOfDirectoryAtPath:pathCopy error:&v39];
  v14 = v39;

  if (!v14)
  {
    v23 = MEMORY[0x1E6982C40];
    pathExtension = [pathCopy pathExtension];
    v25 = [v23 typeWithFilenameExtension:pathExtension];
    v26 = [v25 conformsToType:*MEMORY[0x1E6982E80]];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v13;
    v27 = [v17 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(v17);
          }

          v31 = [pathCopy stringByAppendingPathComponent:*(*(&v35 + 1) + 8 * i)];
          if (v26)
          {
            [(IMDirectoryContents *)self gatherLivePhotoBundleContentInfoAtPath:v31];
          }

          else
          {
            [(IMDirectoryContents *)self recursivelyGatherFileInfoAtPath:v31 fileInfoMap:mapCopy];
          }
        }

        v28 = [v17 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v28);
    }

LABEL_27:
    goto LABEL_28;
  }

  v15 = IMLogHandleForCategory("DiskSpace");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C59AC();
  }

LABEL_28:
}

- (NSArray)sortedPaths
{
  sortedPaths = self->_sortedPaths;
  if (!sortedPaths)
  {
    allKeys = [(NSDictionary *)self->_fileInfoMap allKeys];
    v5 = [allKeys sortedArrayUsingComparator:&unk_1F1BA83A8];
    v6 = self->_sortedPaths;
    self->_sortedPaths = v5;

    sortedPaths = self->_sortedPaths;
  }

  return sortedPaths;
}

- (NSSet)allPaths
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  sortedPaths = [(IMDirectoryContents *)self sortedPaths];
  v5 = [v3 initWithArray:sortedPaths];

  return v5;
}

- (NSArray)attachmentPaths
{
  v21 = *MEMORY[0x1E69E9840];
  attachmentPaths = self->_attachmentPaths;
  if (!attachmentPaths)
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    sortedPaths = [(IMDirectoryContents *)self sortedPaths];
    v6 = [sortedPaths countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(sortedPaths);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([(IMDirectoryContents *)self isAttachmentPath:v10])
          {
            fileInfoMap = [(IMDirectoryContents *)self fileInfoMap];
            v12 = [fileInfoMap objectForKeyedSubscript:v10];
            isDirectory = [v12 isDirectory];

            if ((isDirectory & 1) == 0)
            {
              [(NSArray *)array addObject:v10];
            }
          }
        }

        v7 = [sortedPaths countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v14 = self->_attachmentPaths;
    self->_attachmentPaths = array;

    attachmentPaths = self->_attachmentPaths;
  }

  return attachmentPaths;
}

- (NSArray)syncAssetPaths
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_syncAssetPaths)
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    sortedPaths = [(IMDirectoryContents *)self sortedPaths];
    v5 = [sortedPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(sortedPaths);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([(IMDirectoryContents *)self isSyncAssetPath:v9])
          {
            fileInfoMap = [(IMDirectoryContents *)self fileInfoMap];
            v11 = [fileInfoMap objectForKeyedSubscript:v9];
            isDirectory = [v11 isDirectory];

            if ((isDirectory & 1) == 0)
            {
              [array addObject:v9];
            }
          }
        }

        v6 = [sortedPaths countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  return MEMORY[0x1E695E0F0];
}

- (NSArray)topLevelPaths
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_topLevelPaths)
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    sortedPaths = [(IMDirectoryContents *)self sortedPaths];
    v5 = [sortedPaths countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(sortedPaths);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          stringByDeletingLastPathComponent = [v9 stringByDeletingLastPathComponent];
          rootPath = [(IMDirectoryContents *)self rootPath];
          v12 = [stringByDeletingLastPathComponent isEqualToString:rootPath];

          if (v12)
          {
            [(NSArray *)array addObject:v9];
          }
        }

        v6 = [sortedPaths countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    topLevelPaths = self->_topLevelPaths;
    self->_topLevelPaths = array;
  }

  attachmentPaths = self->_attachmentPaths;

  return attachmentPaths;
}

- (void)gather
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory("DiskSpace");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    rootPath = [(IMDirectoryContents *)self rootPath];
    v14 = 138412290;
    v15 = rootPath;
    _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Directory Contents: Gathering info for path: %@", &v14, 0xCu);
  }

  topLevelPaths = self->_topLevelPaths;
  self->_topLevelPaths = 0;

  attachmentPaths = self->_attachmentPaths;
  self->_attachmentPaths = 0;

  syncAssetPaths = self->_syncAssetPaths;
  self->_syncAssetPaths = 0;

  sortedPaths = self->_sortedPaths;
  self->_sortedPaths = 0;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  rootPath2 = [(IMDirectoryContents *)self rootPath];
  v11 = [rootPath2 length];

  if (v11)
  {
    rootPath3 = [(IMDirectoryContents *)self rootPath];
    [(IMDirectoryContents *)self recursivelyGatherFileInfoAtPath:rootPath3 fileInfoMap:dictionary];
  }

  else
  {
    rootPath3 = IMLogHandleForCategory("DiskSpace");
    if (os_log_type_enabled(rootPath3, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C5A44(rootPath3);
    }
  }

  fileInfoMap = self->_fileInfoMap;
  self->_fileInfoMap = dictionary;
}

+ (BOOL)isGroupPhotoPath:(id)path
{
  lastPathComponent = [path lastPathComponent];
  v4 = [lastPathComponent containsString:@"GroupPhotoImage"];

  return v4;
}

@end