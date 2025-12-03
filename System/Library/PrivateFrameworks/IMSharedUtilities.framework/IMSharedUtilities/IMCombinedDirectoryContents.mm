@interface IMCombinedDirectoryContents
- (IMCombinedDirectoryContents)initWithCombinedDirectoryContents:(id)contents;
- (id)combineArrays:(id)arrays rhs:(id)rhs;
- (void)gather;
@end

@implementation IMCombinedDirectoryContents

- (IMCombinedDirectoryContents)initWithCombinedDirectoryContents:(id)contents
{
  v22 = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = contentsCopy;
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

        rootPath = [*(*(&v17 + 1) + 8 * v11) rootPath];
        [array addObject:rootPath];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [array componentsJoinedByString:@" + "];
  v16.receiver = self;
  v16.super_class = IMCombinedDirectoryContents;
  v14 = [(IMDirectoryContents *)&v16 initWithRootPath:v13 attachmentsPath:0 syncAssetsPath:0 stickersPath:0];

  if (v14)
  {
    objc_storeStrong(&v14->_directoryContents, contents);
  }

  return v14;
}

- (id)combineArrays:(id)arrays rhs:(id)rhs
{
  rhsCopy = rhs;
  array = [arrays mutableCopy];
  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  [array addObjectsFromArray:rhsCopy];

  return array;
}

- (void)gather
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory("DiskSpace");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    rootPath = [(IMDirectoryContents *)self rootPath];
    *buf = 138412290;
    v36 = rootPath;
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
        fileInfoMap = [(IMDirectoryContents *)self fileInfoMap];
        dictionary = [fileInfoMap mutableCopy];

        if (!dictionary)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        fileInfoMap2 = [v9 fileInfoMap];
        [dictionary addEntriesFromDictionary:fileInfoMap2];

        [(IMDirectoryContents *)self setFileInfoMap:dictionary];
        sortedPaths = [(IMDirectoryContents *)self sortedPaths];
        sortedPaths2 = [v9 sortedPaths];
        v15 = [(IMCombinedDirectoryContents *)self combineArrays:sortedPaths rhs:sortedPaths2];

        [v15 sortUsingComparator:&unk_1F1BA89A8];
        [(IMDirectoryContents *)self setSortedPaths:v15];
        topLevelPaths = [(IMDirectoryContents *)self topLevelPaths];
        topLevelPaths2 = [v9 topLevelPaths];
        v18 = [(IMCombinedDirectoryContents *)self combineArrays:topLevelPaths rhs:topLevelPaths2];
        [(IMDirectoryContents *)self setTopLevelPaths:v18];

        attachmentPaths = [(IMDirectoryContents *)self attachmentPaths];
        attachmentPaths2 = [v9 attachmentPaths];
        v21 = [(IMCombinedDirectoryContents *)self combineArrays:attachmentPaths rhs:attachmentPaths2];
        [(IMDirectoryContents *)self setAttachmentPaths:v21];

        syncAssetPaths = [(IMDirectoryContents *)self syncAssetPaths];
        syncAssetPaths2 = [v9 syncAssetPaths];
        v24 = [(IMCombinedDirectoryContents *)self combineArrays:syncAssetPaths rhs:syncAssetPaths2];
        [(IMDirectoryContents *)self setSyncAssetPaths:v24];

        allPaths = [(IMDirectoryContents *)self allPaths];
        v26 = [allPaths mutableCopy];

        if (!v26)
        {
          v26 = [MEMORY[0x1E695DFA8] set];
        }

        allPaths2 = [v9 allPaths];
        allObjects = [allPaths2 allObjects];
        [v26 addObjectsFromArray:allObjects];

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