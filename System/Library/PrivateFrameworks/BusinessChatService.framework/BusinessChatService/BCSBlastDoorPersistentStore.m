@interface BCSBlastDoorPersistentStore
- (id)fileURLForImageWithName:(id)a3 error:(id *)a4;
- (id)initWithCacheURL:(id *)a1;
- (id)updateImageWithName:(id)a3 error:(id *)a4;
- (void)deleteExpiredImages;
- (void)deleteImageWithName:(id)a3;
@end

@implementation BCSBlastDoorPersistentStore

- (id)initWithCacheURL:(id *)a1
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = BCSBlastDoorPersistentStore;
    v5 = objc_msgSendSuper2(&v27, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = ABSLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v26 = [a1 cacheURL];
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_debug_impl(&dword_242072000, v6, OS_LOG_TYPE_DEBUG, "Creating BlastDoor image cache at: %@", buf, 0xCu);
      }

      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v30 = 0;
      v8 = [a1 cacheURL];
      v9 = [v8 path];
      v10 = [v7 fileExistsAtPath:v9 isDirectory:&v30];

      if (v10 && (v30 & 1) == 0)
      {
        v23 = ABSLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_242072000, v23, OS_LOG_TYPE_ERROR, "Error creating BlastDoor cache store: unexpected state (found file instead of directory)", buf, 2u);
        }

        v24 = [a1 cacheURL];
        v29 = 0;
        v25 = [v7 removeItemAtURL:v24 error:&v29];
        v11 = v29;

        if ((v25 & 1) == 0)
        {
          v17 = ABSLogCommon();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_error_impl(&dword_242072000, v17, OS_LOG_TYPE_ERROR, "Error removing unexpected file (instead of directory): %@", buf, 0xCu);
          }

          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v13 = [MEMORY[0x277CCAA00] defaultManager];
      v14 = [a1 cacheURL];
      v28 = v11;
      v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v28];
      v11 = v28;

      if ((v15 & 1) == 0)
      {
        v16 = ABSLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "Error creating BlastDoor cache store: %@", buf, 0xCu);
        }
      }

      v17 = [MEMORY[0x277CCAA00] defaultManager];
      v31 = *MEMORY[0x277CCA1B0];
      *buf = *MEMORY[0x277CCA198];
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v31 count:1];
      v19 = [a1 cacheURL];
      v20 = [v19 path];
      [v17 setAttributes:v18 ofItemAtPath:v20 error:0];

LABEL_13:
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return a1;
}

- (id)fileURLForImageWithName:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(BCSBlastDoorPersistentStore *)self cacheURL];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v5];

  v8 = [v6 URLByAppendingPathComponent:v7];

  return v8;
}

- (id)updateImageWithName:(id)a3 error:(id *)a4
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = [(BCSBlastDoorPersistentStore *)self fileURLForImageWithName:a3 error:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0;
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6 isDirectory:&v15];

    if (v7 && (v15 & 1) == 0)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v16[0] = *MEMORY[0x277CCA150];
      v10 = [MEMORY[0x277CBEAA8] now];
      v16[1] = *MEMORY[0x277CCA1B0];
      v17[0] = v10;
      v17[1] = *MEMORY[0x277CCA198];
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
      v12 = [v4 path];
      [v9 setAttributes:v11 ofItemAtPath:v12 error:0];

      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)deleteImageWithName:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_debug_impl(&dword_242072000, v5, OS_LOG_TYPE_DEBUG, "Deleting image named: %@", &v9, 0xCu);
  }

  v6 = [(BCSBlastDoorPersistentStore *)self fileURLForImageWithName:v4 error:0];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    [v7 removeItemAtURL:v6 error:0];
  }

  else
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9) = 0;
      _os_log_debug_impl(&dword_242072000, v7, OS_LOG_TYPE_DEBUG, "Asked to delete image but unable to construct file URL", &v9, 2u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteExpiredImages
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = ABSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_242072000, v3, OS_LOG_TYPE_DEBUG, "Deleting expired images", buf, 2u);
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [(BCSBlastDoorPersistentStore *)self cacheURL];
  v6 = *MEMORY[0x277CBE7B0];
  v31[0] = *MEMORY[0x277CBE8E8];
  v31[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v22 = v4;
  v8 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:v7 options:5 errorHandler:0];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v25;
    *&v11 = 138412290;
    v21 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        v23 = 0;
        [v15 getResourceValue:&v23 forKey:v6 error:{0, v21}];
        v16 = v23;
        if (v16)
        {
          v17 = [MEMORY[0x277CBEAA8] now];
          v18 = [v17 dateByAddingTimeInterval:2592000.0];

          if ([v16 compare:v18] == 1)
          {
            v19 = ABSLogCommon();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = v21;
              v29 = v15;
              _os_log_debug_impl(&dword_242072000, v19, OS_LOG_TYPE_DEBUG, "Removing expired file: %@", buf, 0xCu);
            }

            [v22 removeItemAtURL:v15 error:0];
          }
        }

        else
        {
          v18 = ABSLogCommon();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v21;
            v29 = v15;
            _os_log_debug_impl(&dword_242072000, v18, OS_LOG_TYPE_DEBUG, "Failed to determine modification date for file: %@", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end