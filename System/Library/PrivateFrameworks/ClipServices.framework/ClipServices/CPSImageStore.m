@interface CPSImageStore
+ (id)_storeDirectoryURL:(id *)a3;
+ (id)keyForGEOStyleAttributes:(id)a3 error:(id *)a4;
+ (id)keyForImageURL:(id)a3 error:(id *)a4;
+ (id)keyForMapsCategoryID:(id)a3 error:(id *)a4;
+ (id)keyForPOIMuid:(unint64_t)a3 error:(id *)a4;
- (id)storeImageData:(id)a3 forKey:(id)a4 error:(id *)a5;
- (id)storedImageForKey:(id)a3;
- (void)_purgeOldFilesInDirectory:(id)a3 timeToLive:(double)a4;
- (void)purgeOldImagesWithCompletionHandler:(id)a3;
@end

@implementation CPSImageStore

+ (id)keyForMapsCategoryID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v13 = 0;
  v6 = [CPSImageStore _storeDirectoryURL:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v5, @"png"];
    v10 = [v6 URLByAppendingPathComponent:v9 isDirectory:0];
  }

  else if (a4)
  {
    v11 = v7;
    v10 = 0;
    *a4 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)keyForImageURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v20 = 0;
  v6 = [CPSImageStore _storeDirectoryURL:&v20];
  v7 = v20;
  v8 = v7;
  if (v6)
  {
    v9 = [v5 pathExtension];
    v10 = [(__CFString *)v9 length];
    v11 = @"png";
    if (v10)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = MEMORY[0x277CCACA8];
    v14 = [v5 absoluteString];
    v15 = [v14 cps_sha256String];
    v16 = [v13 stringWithFormat:@"%@.%@", v15, v12];

    v17 = [v6 URLByAppendingPathComponent:v16 isDirectory:0];
  }

  else if (a4)
  {
    v18 = v7;
    v17 = 0;
    *a4 = v8;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)keyForGEOStyleAttributes:(id)a3 error:(id *)a4
{
  v5 = a3;
  v22 = 0;
  v6 = [CPSImageStore _storeDirectoryURL:&v22];
  v7 = v22;
  v8 = v7;
  if (v6)
  {
    v9 = [v5 attributes];
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_8];

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__6;
    v20 = __Block_byref_object_dispose__6;
    v21 = &stru_28567C2A8;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__CPSImageStore_keyForGEOStyleAttributes_error___block_invoke_15;
    v15[3] = &unk_278DCEC40;
    v15[4] = &v16;
    [v10 enumerateObjectsUsingBlock:v15];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v17[5], @"png"];
    v12 = [v6 URLByAppendingPathComponent:v11 isDirectory:0];

    _Block_object_dispose(&v16, 8);
  }

  else if (a4)
  {
    v13 = v7;
    v12 = 0;
    *a4 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __48__CPSImageStore_keyForGEOStyleAttributes_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 key];
  if (v6 >= [v5 key])
  {
    v8 = [v4 key];
    v7 = v8 > [v5 key];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __48__CPSImageStore_keyForGEOStyleAttributes_error___block_invoke_15(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (a3)
  {
    v5 = @"_";
  }

  else
  {
    v5 = &stru_28567C2A8;
  }

  v6 = a2;
  v7 = [v6 key];
  v8 = [v6 value];

  v9 = [v4 stringByAppendingFormat:@"%@%d(%d)", v5, v7, v8];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x2821F96F8]();
}

+ (id)keyForPOIMuid:(unint64_t)a3 error:(id *)a4
{
  v15 = 0;
  v6 = [CPSImageStore _storeDirectoryURL:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v11 = [v9 stringWithFormat:@"muid_%@.%@", v10, @"png"];

    v12 = [v6 URLByAppendingPathComponent:v11 isDirectory:0];
  }

  else if (a4)
  {
    v13 = v7;
    v12 = 0;
    *a4 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)storeImageData:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CPSImageStore storeImageData:v11 forKey:? error:?];
      if (a5)
      {
        goto LABEL_8;
      }
    }

    else if (a5)
    {
LABEL_8:
      [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
      *a5 = v9 = 0;
      goto LABEL_11;
    }

    v9 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v13 = 0;
  [v7 writeToURL:v9 options:1 error:&v13];
  v10 = v13;
  if (a5 && v10)
  {
    v10 = v10;
    *a5 = v10;
  }

LABEL_11:

  return v9;
}

- (id)storedImageForKey:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6];

    if (v7)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CPSImageStore storeImageData:v9 forKey:? error:?];
    }

    v8 = 0;
  }

  return v8;
}

- (void)purgeOldImagesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CPSImageStore_purgeOldImagesWithCompletionHandler___block_invoke;
  v7[3] = &unk_278DCDD70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __53__CPSImageStore_purgeOldImagesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [CPSImageStore _storeDirectoryURL:0];
  [v2 _purgeOldFilesInDirectory:v3 timeToLive:604800.0];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

+ (id)_storeDirectoryURL:(id *)a3
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:a3];

  v6 = [v5 URLByAppendingPathComponent:@"com.apple.ClipServices/Images" isDirectory:1];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v14];
  v9 = v14;

  if (v8)
  {
    v10 = v6;
    goto LABEL_8;
  }

  v11 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(CPSImageStore *)v11 _storeDirectoryURL:v9];
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else if (a3)
  {
LABEL_5:
    v12 = v9;
    v10 = 0;
    *a3 = v9;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)_purgeOldFilesInDirectory:(id)a3 timeToLive:(double)a4
{
  v38[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = *MEMORY[0x277CBE7C0];
    v8 = *MEMORY[0x277CBE7B0];
    v38[0] = *MEMORY[0x277CBE7C0];
    v38[1] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v10 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:v9 options:0 errorHandler:0];

    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    v14 = [MEMORY[0x277CBEB18] array];
    v15 = [v10 nextObject];
    if (v15)
    {
      v16 = v15;
      do
      {
        v36 = 0;
        [v16 getResourceValue:&v36 forKey:v7 error:0];
        v17 = v36;
        v35 = 0;
        [v16 getResourceValue:&v35 forKey:v8 error:0];
        v18 = v35;
        [v17 timeIntervalSinceReferenceDate];
        v20 = v19;
        [v18 timeIntervalSinceReferenceDate];
        v22 = v21;

        if (v20 >= v22)
        {
          v23 = v20;
        }

        else
        {
          v23 = v22;
        }

        if (v13 - v23 >= a4)
        {
          [v14 addObject:v16];
        }

        v24 = [v10 nextObject];

        v16 = v24;
      }

      while (v24);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v14;
    v26 = [v25 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v32;
      do
      {
        v29 = 0;
        do
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [v6 removeItemAtURL:*(*(&v31 + 1) + 8 * v29++) error:{0, v31}];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v27);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

+ (void)_storeDirectoryURL:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 cps_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_2436ED000, v3, OS_LOG_TYPE_ERROR, "Cannot create image store folder with error: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end