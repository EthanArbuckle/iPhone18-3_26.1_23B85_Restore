@interface CRKConcreteFileSystemPrimitives
+ (BOOL)isNoSuchFileError:(id)error;
- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)fileExistsAtURL:(id)l;
- (BOOL)makeDirectoryAtURL:(id)l error:(id *)error;
- (BOOL)moveItemAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)removeItemAtURL:(id)l error:(id *)error;
- (BOOL)setResources:(id)resources onURL:(id)l error:(id *)error;
- (CRKConcreteFileSystemPrimitives)init;
- (NSURL)temporaryDirectoryURL;
- (id)contentsOfDirectoryAtURL:(id)l error:(id *)error;
- (id)dispatchSourceForFileDescriptor:(id)descriptor options:(unint64_t)options;
- (id)emptyDirectoryNode;
- (id)nodeForURL:(id)l error:(id *)error;
- (id)openURL:(id)l options:(int)options error:(id *)error;
- (id)promisedResourceValuesForKeys:(id)keys fromURL:(id)l error:(id *)error;
- (id)resourceValuesForKeys:(id)keys fromURL:(id)l error:(id *)error;
- (void)coordinateCopyWithActionPairs:(id)pairs completion:(id)completion;
- (void)coordinateMoveWithActionPairs:(id)pairs completion:(id)completion;
- (void)removeCoordinatedItemsAtURLs:(id)ls completion:(id)completion;
@end

@implementation CRKConcreteFileSystemPrimitives

- (CRKConcreteFileSystemPrimitives)init
{
  v8.receiver = self;
  v8.super_class = CRKConcreteFileSystemPrimitives;
  v2 = [(CRKConcreteFileSystemPrimitives *)&v8 init];
  if (v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    fileManager = v2->_fileManager;
    v2->_fileManager = defaultManager;

    v5 = objc_opt_new();
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v5;
  }

  return v2;
}

- (NSURL)temporaryDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  return v4;
}

- (BOOL)fileExistsAtURL:(id)l
{
  lCopy = l;
  fileManager = [(CRKConcreteFileSystemPrimitives *)self fileManager];
  path = [lCopy path];

  LOBYTE(lCopy) = [fileManager fileExistsAtPath:path];
  return lCopy;
}

- (id)contentsOfDirectoryAtURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:2 error:error];

  return v8;
}

- (id)resourceValuesForKeys:(id)keys fromURL:(id)l error:(id *)error
{
  v5 = [l resourceValuesForKeys:keys error:error];
  if (v5)
  {
    v6 = [[CRKURLResources alloc] initWithResources:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)promisedResourceValuesForKeys:(id)keys fromURL:(id)l error:(id *)error
{
  v5 = [l promisedItemResourceValuesForKeys:keys error:error];
  if (v5)
  {
    v6 = [[CRKURLResources alloc] initWithResources:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)openURL:(id)l options:(int)options error:(id *)error
{
  path = [l path];
  v8 = open([path fileSystemRepresentation], options);

  if ((v8 & 0x80000000) != 0)
  {
    if (error)
    {
      v10 = [MEMORY[0x277CCA9B8] crk_errorWithPOSIXCode:*__error()];
      v11 = v10;
      v9 = 0;
      *error = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [[CRKConcreteFileDescriptor alloc] initWithRawValue:v8];
  }

  return v9;
}

- (id)dispatchSourceForFileDescriptor:(id)descriptor options:(unint64_t)options
{
  rawValue = [descriptor rawValue];
  v6 = dispatch_source_create(MEMORY[0x277D85D48], rawValue, options, MEMORY[0x277D85CD0]);

  return v6;
}

- (BOOL)makeDirectoryAtURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  LOBYTE(error) = [defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:error];

  return error;
}

- (BOOL)removeItemAtURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CCAA00];
  lCopy = l;
  defaultManager = [v5 defaultManager];
  v12 = 0;
  v8 = [defaultManager removeItemAtURL:lCopy error:&v12];

  v9 = v12;
  if ((v8 & 1) != 0 || ([objc_opt_class() isNoSuchFileError:v9] & 1) == 0)
  {
    if (error)
    {
      v10 = v9;
      *error = v9;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)moveItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = MEMORY[0x277CCAA00];
  rLCopy = rL;
  lCopy = l;
  defaultManager = [v7 defaultManager];
  LOBYTE(error) = [defaultManager moveItemAtURL:lCopy toURL:rLCopy error:error];

  return error;
}

- (BOOL)copyItemAtURL:(id)l toURL:(id)rL error:(id *)error
{
  v7 = MEMORY[0x277CCAA00];
  rLCopy = rL;
  lCopy = l;
  defaultManager = [v7 defaultManager];
  LOBYTE(error) = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:error];

  return error;
}

- (BOOL)setResources:(id)resources onURL:(id)l error:(id *)error
{
  lCopy = l;
  underlyingResources = [resources underlyingResources];
  LOBYTE(error) = [lCopy setResourceValues:underlyingResources error:error];

  return error;
}

- (void)coordinateMoveWithActionPairs:(id)pairs completion:(id)completion
{
  pairsCopy = pairs;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__CRKConcreteFileSystemPrimitives_coordinateMoveWithActionPairs_completion___block_invoke;
  v25[3] = &unk_278DC0FE0;
  v26 = completionCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x245D3AAD0](v25);
  v11 = [pairsCopy crk_mapUsingBlock:&__block_literal_global_64];
  v12 = [pairsCopy crk_mapUsingBlock:&__block_literal_global_12_2];
  v13 = [v11 arrayByAddingObjectsFromArray:v12];
  accessQueue = [(CRKConcreteFileSystemPrimitives *)self accessQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__CRKConcreteFileSystemPrimitives_coordinateMoveWithActionPairs_completion___block_invoke_5;
  v19[3] = &unk_278DC2780;
  v23 = pairsCopy;
  v24 = v10;
  v20 = v11;
  v21 = v12;
  selfCopy = self;
  v15 = pairsCopy;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v8 coordinateAccessWithIntents:v13 queue:accessQueue byAccessor:v19];
}

void __76__CRKConcreteFileSystemPrimitives_coordinateMoveWithActionPairs_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__CRKConcreteFileSystemPrimitives_coordinateMoveWithActionPairs_completion___block_invoke_2;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

id __76__CRKConcreteFileSystemPrimitives_coordinateMoveWithActionPairs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA9E0];
  v3 = [a2 sourceURL];
  v4 = [v2 writingIntentWithURL:v3 options:2];

  return v4;
}

id __76__CRKConcreteFileSystemPrimitives_coordinateMoveWithActionPairs_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA9E0];
  v3 = [a2 destinationURL];
  v4 = [v2 writingIntentWithURL:v3 options:8];

  return v4;
}

void __76__CRKConcreteFileSystemPrimitives_coordinateMoveWithActionPairs_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = objc_opt_new();
    if ([*(a1 + 32) count])
    {
      v5 = 0;
      do
      {
        v6 = [*(a1 + 32) objectAtIndexedSubscript:v5];
        v7 = [v6 URL];

        v8 = [*(a1 + 40) objectAtIndexedSubscript:v5];
        v9 = [v8 URL];

        v10 = *(a1 + 48);
        v18 = 0;
        v11 = [v10 moveItemAtURL:v7 toURL:v9 error:&v18];
        v12 = v18;
        if ((v11 & 1) == 0)
        {
          v13 = [*(a1 + 56) objectAtIndexedSubscript:v5];
          v14 = [v13 sourceURL];

          [v4 setObject:v12 forKeyedSubscript:v14];
        }

        ++v5;
      }

      while (v5 < [*(a1 + 32) count]);
    }

    if ([v4 count])
    {
      v19 = @"CRKPartialErrorsByItemIdentifier";
      v15 = [v4 copy];
      v20[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = CRKErrorWithCodeAndUserInfo(29, v16);

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

- (void)coordinateCopyWithActionPairs:(id)pairs completion:(id)completion
{
  pairsCopy = pairs;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __76__CRKConcreteFileSystemPrimitives_coordinateCopyWithActionPairs_completion___block_invoke;
  v25[3] = &unk_278DC0FE0;
  v26 = completionCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x245D3AAD0](v25);
  v11 = [pairsCopy crk_mapUsingBlock:&__block_literal_global_17];
  v12 = [pairsCopy crk_mapUsingBlock:&__block_literal_global_19];
  v13 = [v11 arrayByAddingObjectsFromArray:v12];
  accessQueue = [(CRKConcreteFileSystemPrimitives *)self accessQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__CRKConcreteFileSystemPrimitives_coordinateCopyWithActionPairs_completion___block_invoke_5;
  v19[3] = &unk_278DC2780;
  v23 = pairsCopy;
  v24 = v10;
  v20 = v11;
  v21 = v12;
  selfCopy = self;
  v15 = pairsCopy;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v8 coordinateAccessWithIntents:v13 queue:accessQueue byAccessor:v19];
}

void __76__CRKConcreteFileSystemPrimitives_coordinateCopyWithActionPairs_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__CRKConcreteFileSystemPrimitives_coordinateCopyWithActionPairs_completion___block_invoke_2;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

id __76__CRKConcreteFileSystemPrimitives_coordinateCopyWithActionPairs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA9E0];
  v3 = [a2 sourceURL];
  v4 = [v2 readingIntentWithURL:v3 options:1];

  return v4;
}

id __76__CRKConcreteFileSystemPrimitives_coordinateCopyWithActionPairs_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA9E0];
  v3 = [a2 destinationURL];
  v4 = [v2 writingIntentWithURL:v3 options:8];

  return v4;
}

void __76__CRKConcreteFileSystemPrimitives_coordinateCopyWithActionPairs_completion___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = objc_opt_new();
    if ([*(a1 + 32) count])
    {
      v5 = 0;
      do
      {
        v6 = [*(a1 + 32) objectAtIndexedSubscript:v5];
        v7 = [v6 URL];

        v8 = [*(a1 + 40) objectAtIndexedSubscript:v5];
        v9 = [v8 URL];

        v10 = *(a1 + 48);
        v18 = 0;
        v11 = [v10 copyItemAtURL:v7 toURL:v9 error:&v18];
        v12 = v18;
        if ((v11 & 1) == 0)
        {
          v13 = [*(a1 + 56) objectAtIndexedSubscript:v5];
          v14 = [v13 sourceURL];

          [v4 setObject:v12 forKeyedSubscript:v14];
        }

        ++v5;
      }

      while (v5 < [*(a1 + 32) count]);
    }

    if ([v4 count])
    {
      v19 = @"CRKPartialErrorsByItemIdentifier";
      v15 = [v4 copy];
      v20[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v17 = CRKErrorWithCodeAndUserInfo(29, v16);

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      (*(*(a1 + 64) + 16))();
    }
  }
}

- (void)removeCoordinatedItemsAtURLs:(id)ls completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CCA9E8];
  lsCopy = ls;
  v9 = [[v7 alloc] initWithFilePresenter:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__CRKConcreteFileSystemPrimitives_removeCoordinatedItemsAtURLs_completion___block_invoke;
  v20[3] = &unk_278DC0FE0;
  v21 = completionCopy;
  v10 = completionCopy;
  v11 = MEMORY[0x245D3AAD0](v20);
  v12 = [lsCopy crk_mapUsingBlock:&__block_literal_global_22_0];

  accessQueue = [(CRKConcreteFileSystemPrimitives *)self accessQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__CRKConcreteFileSystemPrimitives_removeCoordinatedItemsAtURLs_completion___block_invoke_4;
  v16[3] = &unk_278DC1A40;
  selfCopy = self;
  v19 = v11;
  v17 = v12;
  v14 = v12;
  v15 = v11;
  [v9 coordinateAccessWithIntents:v14 queue:accessQueue byAccessor:v16];
}

void __75__CRKConcreteFileSystemPrimitives_removeCoordinatedItemsAtURLs_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__CRKConcreteFileSystemPrimitives_removeCoordinatedItemsAtURLs_completion___block_invoke_2;
  v6[3] = &unk_278DC0FB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __75__CRKConcreteFileSystemPrimitives_removeCoordinatedItemsAtURLs_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v18 + 1) + 8 * i) URL];
          v11 = *(a1 + 40);
          v17 = 0;
          v12 = [v11 removeItemAtURL:v10 error:&v17];
          v13 = v17;
          if ((v12 & 1) == 0)
          {
            [v4 setObject:v13 forKeyedSubscript:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v22 = @"CRKPartialErrorsByItemIdentifier";
      v14 = [v4 copy];
      v23 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = CRKErrorWithCodeAndUserInfo(29, v15);

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (id)nodeForURL:(id)l error:(id *)error
{
  v5 = MEMORY[0x277CCAA20];
  lCopy = l;
  v7 = [[v5 alloc] initWithURL:lCopy options:0 error:error];

  if (v7)
  {
    v8 = [[CRKFileWrapperBackedFileSystemNode alloc] initWithFileWrapper:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)emptyDirectoryNode
{
  v2 = objc_alloc(MEMORY[0x277CCAA20]);
  v3 = [v2 initDirectoryWithFileWrappers:MEMORY[0x277CBEC10]];
  v4 = [[CRKFileWrapperBackedFileSystemNode alloc] initWithFileWrapper:v3];

  return v4;
}

+ (BOOL)isNoSuchFileError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA050]])
  {
    v5 = [errorCopy code] == 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end