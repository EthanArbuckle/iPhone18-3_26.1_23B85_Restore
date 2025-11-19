@interface IMDirectoryContents
+ (BOOL)isGroupPhotoPath:(id)a3;
- (BOOL)isAttachmentPath:(id)a3;
- (BOOL)isStickerPath:(id)a3;
- (BOOL)isSyncAssetPath:(id)a3;
- (IMDirectoryContents)initWithRootPath:(id)a3 attachmentsPath:(id)a4 syncAssetsPath:(id)a5 stickersPath:(id)a6;
- (NSArray)attachmentPaths;
- (NSArray)sortedPaths;
- (NSArray)syncAssetPaths;
- (NSArray)topLevelPaths;
- (NSSet)allPaths;
- (void)gather;
- (void)gatherLivePhotoBundleContentInfoAtPath:(id)a3;
- (void)recursivelyGatherFileInfoAtPath:(id)a3 fileInfoMap:(id)a4;
@end

@implementation IMDirectoryContents

- (IMDirectoryContents)initWithRootPath:(id)a3 attachmentsPath:(id)a4 syncAssetsPath:(id)a5 stickersPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = IMDirectoryContents;
  v14 = [(IMDirectoryContents *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    rootPath = v14->_rootPath;
    v14->_rootPath = v15;

    if (v11)
    {
      v17 = [v11 copy];
      attachmentsPath = v14->_attachmentsPath;
      v14->_attachmentsPath = v17;
    }

    if (v13)
    {
      v19 = [v13 copy];
      stickersPath = v14->_stickersPath;
      v14->_stickersPath = v19;
    }

    if (v12)
    {
      v21 = [v12 copy];
      syncAssetsPath = v14->_syncAssetsPath;
      v14->_syncAssetsPath = v21;
    }

    v14->_spaceSavedFromIgnoreLivePhotoBundles = 0;
  }

  return v14;
}

- (BOOL)isAttachmentPath:(id)a3
{
  v4 = a3;
  v5 = [(IMDirectoryContents *)self attachmentsPath];
  if (v5)
  {
    v6 = [(IMDirectoryContents *)self attachmentsPath];
    v7 = [v4 hasPrefix:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isStickerPath:(id)a3
{
  v4 = a3;
  v5 = [(IMDirectoryContents *)self stickersPath];
  if (v5)
  {
    v6 = [(IMDirectoryContents *)self stickersPath];
    v7 = [v4 hasPrefix:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSyncAssetPath:(id)a3
{
  v4 = a3;
  v5 = [(IMDirectoryContents *)self syncAssetsPath];
  if (v5)
  {
    v6 = [(IMDirectoryContents *)self syncAssetsPath];
    v7 = [v4 hasPrefix:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)gatherLivePhotoBundleContentInfoAtPath:(id)a3
{
  v4 = a3;
  v9 = IMFileSizeZero;
  v8 = 0;
  v5 = IMFileSizeForItemAtPath(v4, &v9, 1, &v8);
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

- (void)recursivelyGatherFileInfoAtPath:(id)a3 fileInfoMap:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v41 = 0;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 fileExistsAtPath:v6 isDirectory:&v41];

  if (!v9)
  {
    goto LABEL_28;
  }

  v40 = 0;
  v10 = [IMAPFSUtils purgableFlagsForPath:v6 error:&v40];
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
    v16 = IMFileSizeForItemAtPath(v6, &v34, 1, &v33);
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
    v20 = [(IMDirectoryContents *)self isAttachmentPath:v6];
    v21 = [(IMDirectoryContents *)self isSyncAssetPath:v6];
    LOBYTE(v32) = [(IMDirectoryContents *)self isStickerPath:v6];
    v22 = [(IMDiskSpaceFileManagerFileInfo *)v19 initWithPath:v6 fileSize:v34 isDirectory:0 isAttachment:v20 isSyncAsset:v21 isSticker:v32 purgableFlags:v10];
    [v7 setObject:v22 forKeyedSubscript:v6];

    goto LABEL_27;
  }

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v39 = 0;
  v13 = [v12 contentsOfDirectoryAtPath:v6 error:&v39];
  v14 = v39;

  if (!v14)
  {
    v23 = MEMORY[0x1E6982C40];
    v24 = [v6 pathExtension];
    v25 = [v23 typeWithFilenameExtension:v24];
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

          v31 = [v6 stringByAppendingPathComponent:*(*(&v35 + 1) + 8 * i)];
          if (v26)
          {
            [(IMDirectoryContents *)self gatherLivePhotoBundleContentInfoAtPath:v31];
          }

          else
          {
            [(IMDirectoryContents *)self recursivelyGatherFileInfoAtPath:v31 fileInfoMap:v7];
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
    v4 = [(NSDictionary *)self->_fileInfoMap allKeys];
    v5 = [v4 sortedArrayUsingComparator:&unk_1F1BA83A8];
    v6 = self->_sortedPaths;
    self->_sortedPaths = v5;

    sortedPaths = self->_sortedPaths;
  }

  return sortedPaths;
}

- (NSSet)allPaths
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(IMDirectoryContents *)self sortedPaths];
  v5 = [v3 initWithArray:v4];

  return v5;
}

- (NSArray)attachmentPaths
{
  v21 = *MEMORY[0x1E69E9840];
  attachmentPaths = self->_attachmentPaths;
  if (!attachmentPaths)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(IMDirectoryContents *)self sortedPaths];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if ([(IMDirectoryContents *)self isAttachmentPath:v10])
          {
            v11 = [(IMDirectoryContents *)self fileInfoMap];
            v12 = [v11 objectForKeyedSubscript:v10];
            v13 = [v12 isDirectory];

            if ((v13 & 1) == 0)
            {
              [(NSArray *)v4 addObject:v10];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v14 = self->_attachmentPaths;
    self->_attachmentPaths = v4;

    attachmentPaths = self->_attachmentPaths;
  }

  return attachmentPaths;
}

- (NSArray)syncAssetPaths
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_syncAssetPaths)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(IMDirectoryContents *)self sortedPaths];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([(IMDirectoryContents *)self isSyncAssetPath:v9])
          {
            v10 = [(IMDirectoryContents *)self fileInfoMap];
            v11 = [v10 objectForKeyedSubscript:v9];
            v12 = [v11 isDirectory];

            if ((v12 & 1) == 0)
            {
              [v3 addObject:v9];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    v3 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(IMDirectoryContents *)self sortedPaths];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 stringByDeletingLastPathComponent];
          v11 = [(IMDirectoryContents *)self rootPath];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            [(NSArray *)v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    topLevelPaths = self->_topLevelPaths;
    self->_topLevelPaths = v3;
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
    v4 = [(IMDirectoryContents *)self rootPath];
    v14 = 138412290;
    v15 = v4;
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

  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [(IMDirectoryContents *)self rootPath];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(IMDirectoryContents *)self rootPath];
    [(IMDirectoryContents *)self recursivelyGatherFileInfoAtPath:v12 fileInfoMap:v9];
  }

  else
  {
    v12 = IMLogHandleForCategory("DiskSpace");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C5A44(v12);
    }
  }

  fileInfoMap = self->_fileInfoMap;
  self->_fileInfoMap = v9;
}

+ (BOOL)isGroupPhotoPath:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = [v3 containsString:@"GroupPhotoImage"];

  return v4;
}

@end