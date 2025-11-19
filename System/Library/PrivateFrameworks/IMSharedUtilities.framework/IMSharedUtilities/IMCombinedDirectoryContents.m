@interface IMCombinedDirectoryContents
- (IMCombinedDirectoryContents)initWithCombinedDirectoryContents:(id)a3;
- (id)combineArrays:(id)a3 rhs:(id)a4;
- (void)gather;
@end

@implementation IMCombinedDirectoryContents

- (IMCombinedDirectoryContents)initWithCombinedDirectoryContents:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) rootPath];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [v6 componentsJoinedByString:@" + "];
  v16.receiver = self;
  v16.super_class = IMCombinedDirectoryContents;
  v14 = [(IMDirectoryContents *)&v16 initWithRootPath:v13 attachmentsPath:0 syncAssetsPath:0 stickersPath:0];

  if (v14)
  {
    objc_storeStrong(&v14->_directoryContents, a3);
  }

  return v14;
}

- (id)combineArrays:(id)a3 rhs:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF70] array];
  }

  [v6 addObjectsFromArray:v5];

  return v6;
}

- (void)gather
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory("DiskSpace");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(IMDirectoryContents *)self rootPath];
    *buf = 138412290;
    v36 = v4;
    _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "IMCombinedDirectoryContents: Combining directory contents for paths: %@", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(IMCombinedDirectoryContents *)self directoryContents];
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = [(IMDirectoryContents *)self fileInfoMap];
        v11 = [v10 mutableCopy];

        if (!v11)
        {
          v11 = [MEMORY[0x1E695DF90] dictionary];
        }

        v12 = [v9 fileInfoMap];
        [v11 addEntriesFromDictionary:v12];

        [(IMDirectoryContents *)self setFileInfoMap:v11];
        v13 = [(IMDirectoryContents *)self sortedPaths];
        v14 = [v9 sortedPaths];
        v15 = [(IMCombinedDirectoryContents *)self combineArrays:v13 rhs:v14];

        [v15 sortUsingComparator:&unk_1F1BA89A8];
        [(IMDirectoryContents *)self setSortedPaths:v15];
        v16 = [(IMDirectoryContents *)self topLevelPaths];
        v17 = [v9 topLevelPaths];
        v18 = [(IMCombinedDirectoryContents *)self combineArrays:v16 rhs:v17];
        [(IMDirectoryContents *)self setTopLevelPaths:v18];

        v19 = [(IMDirectoryContents *)self attachmentPaths];
        v20 = [v9 attachmentPaths];
        v21 = [(IMCombinedDirectoryContents *)self combineArrays:v19 rhs:v20];
        [(IMDirectoryContents *)self setAttachmentPaths:v21];

        v22 = [(IMDirectoryContents *)self syncAssetPaths];
        v23 = [v9 syncAssetPaths];
        v24 = [(IMCombinedDirectoryContents *)self combineArrays:v22 rhs:v23];
        [(IMDirectoryContents *)self setSyncAssetPaths:v24];

        v25 = [(IMDirectoryContents *)self allPaths];
        v26 = [v25 mutableCopy];

        if (!v26)
        {
          v26 = [MEMORY[0x1E695DFA8] set];
        }

        v27 = [v9 allPaths];
        v28 = [v27 allObjects];
        [v26 addObjectsFromArray:v28];

        [(IMDirectoryContents *)self setAllPaths:v26];
        -[IMDirectoryContents setSpaceSavedFromIgnoreLivePhotoBundles:](self, "setSpaceSavedFromIgnoreLivePhotoBundles:", -[IMDirectoryContents spaceSavedFromIgnoreLivePhotoBundles](self, "spaceSavedFromIgnoreLivePhotoBundles") + [v9 spaceSavedFromIgnoreLivePhotoBundles]);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }
}

@end