@interface ICAssetGenerationManager
- (BOOL)beginGeneration;
- (BOOL)commitGeneration;
- (BOOL)rollbackGeneration;
- (ICAssetGenerationManager)initWithObject:(id)a3 generationKeyPath:(id)a4 containerURL:(id)a5;
- (ICCloudSyncingObject)object;
- (NSURL)generationURL;
- (id)description;
- (void)beginGeneration;
- (void)commitGeneration;
- (void)dealloc;
- (void)managedObjectContextDidSaveObjectIDs:(id)a3;
- (void)managedObjectContextObjectsDidChange:(id)a3;
- (void)removeStaleGenerations;
- (void)rollbackGeneration;
- (void)updateCurrentGeneration;
@end

@implementation ICAssetGenerationManager

- (void)updateCurrentGeneration
{
  objc_opt_class();
  v3 = [(ICAssetGenerationManager *)self object];
  v4 = [(ICAssetGenerationManager *)self generationKeyPath];
  v5 = [v3 valueForKeyPath:v4];
  v23 = ICCheckedDynamicCast();

  if (v23)
  {
    v6 = [[ICAssetGeneration alloc] initWithRawValue:v23];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ICAssetGenerationManager *)self nextGeneration];

  if (!v7)
  {
    goto LABEL_31;
  }

  v8 = [(ICAssetGenerationManager *)self currentGeneration];
  v9 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;
  if (v9 == v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;
  if (!(v11 | v13))
  {

    goto LABEL_19;
  }

  v14 = v13;
  if (v11)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = [v11 isEqual:v13];

    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_19:
    [(ICAssetGenerationManager *)self setAdvancing:1];
    [(ICAssetGenerationManager *)self rollbackGeneration];
    goto LABEL_32;
  }

LABEL_21:
  v17 = [(ICAssetGenerationManager *)self nextGeneration];
  v18 = v11;
  if (v9 == v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19;
  if (!(v11 | v20))
  {

    goto LABEL_32;
  }

  v21 = v20;
  if (!v11 || !v20)
  {

    goto LABEL_31;
  }

  v22 = [v18 isEqual:v20];

  if ((v22 & 1) == 0)
  {
LABEL_31:
    [(ICAssetGenerationManager *)self setCurrentGeneration:v6];
  }

LABEL_32:
}

- (ICCloudSyncingObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

- (NSURL)generationURL
{
  v3 = [(ICAssetGenerationManager *)self nextGeneration];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ICAssetGenerationManager *)self currentGeneration];
  }

  v6 = v5;

  v7 = [v6 rawValue];
  if (v7)
  {
    v8 = [(ICAssetGenerationManager *)self containerURL];
    v9 = [v6 rawValue];
    v10 = [v8 URLByAppendingPathComponent:v9 isDirectory:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_3();
  v2 = [v1 object];
  [v2 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() containerURL];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (ICAssetGenerationManager)initWithObject:(id)a3 generationKeyPath:(id)a4 containerURL:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 managedObjectContext];
  if (v11 && [v9 length])
  {

    if (v10)
    {
      v25.receiver = self;
      v25.super_class = ICAssetGenerationManager;
      v12 = [(ICAssetGenerationManager *)&v25 init];
      v13 = v12;
      if (v12)
      {
        objc_storeWeak(&v12->_object, v8);
        objc_storeStrong(&v13->_generationKeyPath, a4);
        objc_storeStrong(&v13->_containerURL, a5);
        fallbackURLs = v13->_fallbackURLs;
        v13->_fallbackURLs = MEMORY[0x277CBEBF8];

        v13->_generationTimeout = 3600.0;
        [(ICAssetGenerationManager *)v13 updateCurrentGeneration];
        v15 = [MEMORY[0x277CCAB98] defaultCenter];
        v16 = *MEMORY[0x277CBE1B8];
        v17 = [v8 managedObjectContext];
        [v15 addObserver:v13 selector:sel_managedObjectContextObjectsDidChange_ name:v16 object:v17];

        v18 = [MEMORY[0x277CCAB98] defaultCenter];
        v19 = *MEMORY[0x277CBE1B0];
        v20 = [v8 managedObjectContext];
        [v18 addObserver:v13 selector:sel_managedObjectContextDidSaveObjectIDs_ name:v19 object:v20];
      }

      self = v13;
      v21 = self;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v22 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v24 = [v8 shortLoggingDescription];
    *buf = 138412802;
    v27 = v24;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_error_impl(&dword_214D51000, v22, OS_LOG_TYPE_ERROR, "Cannot create asset generation manager because parameters are invalid {object: %@, generationKeyPath: %@, containerUrl: %@}", buf, 0x20u);
  }

  v21 = 0;
LABEL_11:

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICAssetGenerationManager *)self object];
  v7 = [v6 shortLoggingDescription];
  v8 = [(ICAssetGenerationManager *)self containerURL];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAssetGenerationManager isAdvancing](self, "isAdvancing")}];
  v10 = [v3 stringWithFormat:@"<%@: %p, object: %@, containerURL: %@, isAdvancing: %@>", v5, self, v7, v8, v9];

  return v10;
}

- (BOOL)beginGeneration
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICAssetGenerationManager *)self object];
    v5 = [v4 shortLoggingDescription];
    v6 = [(ICAssetGenerationManager *)self containerURL];
    *buf = 138413058;
    v46 = v5;
    v47 = 2112;
    v49 = 2080;
    v48 = v6;
    v50 = "[ICAssetGenerationManager beginGeneration]";
    v51 = 1024;
    v52 = 116;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Beginning asset generation… {object: %@, containerUrl: %@}%s:%d", buf, 0x26u);
  }

  if (![(ICAssetGenerationManager *)self isAdvancing])
  {
    v8 = [(ICAssetGenerationManager *)self object];
    v9 = [v8 managedObjectContext];

    if (!v9)
    {
      v7 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ICAssetGenerationManager *)self beginGeneration];
      }

      goto LABEL_11;
    }

    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [(ICAssetGenerationManager *)self containerURL];
    v44 = 0;
    v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v44];
    v13 = v44;
    v14 = v13;
    if (v12)
    {
    }

    else
    {
      v16 = [v13 code];

      if (v16 != 516)
      {
        v7 = os_log_create("com.apple.notes", "Media");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(ICAssetGenerationManager *)self beginGeneration];
        }

        goto LABEL_34;
      }
    }

    v17 = [(ICAssetGenerationManager *)self nextGeneration];
    if (v17)
    {
      v18 = v17;
      v19 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = [(ICAssetGenerationManager *)self generationURL];
      v43 = v14;
      v21 = [v19 removeItemAtURL:v20 error:&v43];
      v22 = v43;

      if ((v21 & 1) == 0)
      {
        v23 = os_log_create("com.apple.notes", "Media");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(ICAssetGenerationManager *)self beginGeneration];
        }
      }
    }

    else
    {
      v22 = v14;
    }

    v24 = [(ICAssetGenerationManager *)self currentGeneration];
    v25 = [v24 nextGeneration];
    if (v25)
    {
      [(ICAssetGenerationManager *)self setNextGeneration:v25];
    }

    else
    {
      v26 = objc_alloc_init(ICAssetGeneration);
      [(ICAssetGenerationManager *)self setNextGeneration:v26];
    }

    [(ICAssetGenerationManager *)self setAdvancing:1];
    v27 = [(ICAssetGenerationManager *)self containerURL];
    v28 = [(ICAssetGenerationManager *)self nextGeneration];
    v29 = [v28 rawValue];
    v30 = [v27 URLByAppendingPathComponent:v29 isDirectory:1];

    v7 = [v30 URLByAppendingPathExtension:@"lock"];

    v31 = MEMORY[0x277D361E0];
    v32 = [v7 path];
    v33 = [v31 lockWithPath:v32];
    [(ICAssetGenerationManager *)self setNextGenerationLock:v33];

    v34 = [(ICAssetGenerationManager *)self nextGenerationLock];
    LOBYTE(v32) = [v34 tryLock];

    if (v32)
    {
      v35 = [MEMORY[0x277CCAA00] defaultManager];
      v36 = [(ICAssetGenerationManager *)self generationURL];
      v42 = v22;
      v15 = 1;
      v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v42];
      v14 = v42;

      if (v37)
      {
        goto LABEL_35;
      }

      v38 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [(ICAssetGenerationManager *)self beginGeneration];
      }

      [(ICAssetGenerationManager *)self setNextGeneration:0];
      v39 = [(ICAssetGenerationManager *)self nextGenerationLock];
      [v39 unlock];
    }

    else
    {
      v40 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [(ICAssetGenerationManager *)self beginGeneration];
      }

      [(ICAssetGenerationManager *)self setNextGeneration:0];
      v14 = v22;
    }

    [(ICAssetGenerationManager *)self setNextGenerationLock:0];
    [(ICAssetGenerationManager *)self setAdvancing:0];
LABEL_34:
    v15 = 0;
    goto LABEL_35;
  }

  v7 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ICAssetGenerationManager beginGeneration];
  }

LABEL_11:
  v15 = 0;
  v14 = v7;
LABEL_35:

  return v15;
}

- (BOOL)commitGeneration
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICAssetGenerationManager *)self object];
    v5 = [v4 shortLoggingDescription];
    v6 = [(ICAssetGenerationManager *)self containerURL];
    v16 = 138413058;
    v17 = v5;
    v18 = 2112;
    v20 = 2080;
    v19 = v6;
    v21 = "[ICAssetGenerationManager commitGeneration]";
    v22 = 1024;
    v23 = 173;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Committing asset generation… {object: %@, containerUrl: %@}%s:%d", &v16, 0x26u);
  }

  if ([(ICAssetGenerationManager *)self isAdvancing])
  {
    v7 = [(ICAssetGenerationManager *)self object];
    v8 = [v7 managedObjectContext];

    if (v8)
    {
      [(ICAssetGenerationManager *)self setAdvancing:0];
      v9 = [(ICAssetGenerationManager *)self object];
      v10 = [(ICAssetGenerationManager *)self nextGeneration];
      v11 = [v10 rawValue];
      v12 = [(ICAssetGenerationManager *)self generationKeyPath];
      [v9 setValue:v11 forKey:v12];

      return 1;
    }

    v15 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(ICAssetGenerationManager *)self commitGeneration];
    }

    [(ICAssetGenerationManager *)self rollbackGeneration];
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICAssetGenerationManager commitGeneration];
    }
  }

  return 0;
}

- (BOOL)rollbackGeneration
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICAssetGenerationManager *)self object];
    v5 = [v4 shortLoggingDescription];
    v6 = [(ICAssetGenerationManager *)self containerURL];
    *buf = 138413058;
    v21 = v5;
    v22 = 2112;
    v24 = 2080;
    v23 = v6;
    v25 = "[ICAssetGenerationManager rollbackGeneration]";
    v26 = 1024;
    v27 = 198;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Rolling back asset generation… {object: %@, containerUrl: %@}%s:%d", buf, 0x26u);
  }

  v7 = [(ICAssetGenerationManager *)self isAdvancing];
  if (v7)
  {
    v8 = [(ICAssetGenerationManager *)self nextGenerationLock];
    [v8 unlock];

    [(ICAssetGenerationManager *)self setNextGenerationLock:0];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [(ICAssetGenerationManager *)self generationURL];
    v19 = 0;
    v11 = [v9 removeItemAtURL:v10 error:&v19];
    v12 = v19;

    if ((v11 & 1) == 0)
    {
      v13 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ICAssetGenerationManager *)self beginGeneration];
      }
    }

    [(ICAssetGenerationManager *)self setNextGeneration:0];
    [(ICAssetGenerationManager *)self setAdvancing:0];
    v14 = [(ICAssetGenerationManager *)self object];
    v15 = [(ICAssetGenerationManager *)self currentGeneration];
    v16 = [v15 rawValue];
    v17 = [(ICAssetGenerationManager *)self generationKeyPath];
    [v14 setValue:v16 forKey:v17];
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICAssetGenerationManager rollbackGeneration];
    }

    v12 = v14;
  }

  return v7;
}

- (void)removeStaleGenerations
{
  v94 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICAssetGenerationManager *)self object];
    v5 = [v4 shortLoggingDescription];
    v6 = [(ICAssetGenerationManager *)self containerURL];
    *buf = 138413058;
    v87 = v5;
    v88 = 2112;
    v90 = 2080;
    v89 = v6;
    v91 = "[ICAssetGenerationManager removeStaleGenerations]";
    v92 = 1024;
    v93 = 228;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Removing stale generations… {object: %@, containerUrl: %@}%s:%d", buf, 0x26u);
  }

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v65 = self;
  v8 = [(ICAssetGenerationManager *)self containerURL];
  v68 = *MEMORY[0x277CBE868];
  v85 = *MEMORY[0x277CBE868];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
  v82 = 0;
  v10 = [v7 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v9 options:1 error:&v82];
  v11 = v82;

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v78 objects:v84 count:16];
  v63 = v12;
  if (v13)
  {
    v15 = v13;
    v16 = *v79;
    *&v14 = 138412546;
    v60 = v14;
    v67 = *v79;
    do
    {
      v17 = 0;
      v69 = v15;
      do
      {
        v18 = v7;
        if (*v79 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v78 + 1) + 8 * v17);
        v20 = [v19 pathExtension];
        v21 = [v20 isEqual:@"lock"];

        if (v21)
        {
          v7 = v18;
          goto LABEL_52;
        }

        v76 = 0;
        v77 = 0;
        v22 = [v19 getResourceValue:&v77 forKey:v68 error:&v76];
        v23 = v77;
        v24 = v76;

        if (v22)
        {
          if ([v23 BOOLValue])
          {
            v25 = [v19 pathComponents];
            v26 = [v25 lastObject];

            v27 = [[ICAssetGeneration alloc] initWithRawValue:v26];
            v28 = v27;
            if (v27)
            {
              v66 = v27;
              v29 = v65;
              v30 = [(ICAssetGenerationManager *)v65 currentGeneration];
              if (v30)
              {
                v7 = [(ICAssetGenerationManager *)v65 currentGeneration];
                v28 = v66;
                if ([(ICAssetGeneration *)v66 isEqual:v7])
                {

                  goto LABEL_49;
                }

                v18 = v7;
                v29 = v65;
              }

              v31 = [(ICAssetGenerationManager *)v29 nextGeneration];
              if (v31)
              {
                v32 = [(ICAssetGenerationManager *)v29 nextGeneration];
                v33 = [(ICAssetGeneration *)v66 isEqual:v32];

                if (v30)
                {
                  v7 = v18;

                  v12 = v63;
                  if (!v33)
                  {
                    goto LABEL_33;
                  }
                }

                else
                {
                  v12 = v63;
                  if (!v33)
                  {
                    goto LABEL_33;
                  }

                  v7 = v18;
                }

                v28 = v66;
LABEL_50:

                goto LABEL_51;
              }

              if (v30)
              {
              }

LABEL_33:
              v30 = [v19 URLByAppendingPathExtension:@"lock"];
              v34 = MEMORY[0x277D361E0];
              v35 = [v30 path];
              v36 = [v34 lockWithPath:v35];

              v64 = v36;
              if ([v36 tryLock])
              {
LABEL_39:
                v44 = [MEMORY[0x277CCAA00] defaultManager];
                v75 = v24;
                v45 = [v44 removeItemAtURL:v19 error:&v75];
                v46 = v75;

                if ((v45 & 1) == 0)
                {
                  log = os_log_create("com.apple.notes", "Media");
                  v28 = v66;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v87 = v19;
                    _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "Cannot remove asset generation {url: %@}", buf, 0xCu);
                  }

                  v24 = v46;
                  v47 = log;
                  v12 = v63;
                  goto LABEL_47;
                }

                v24 = v46;
                v12 = v63;
                v7 = v18;
                v28 = v66;
              }

              else
              {
                [(ICAssetGenerationManager *)v65 generationTimeout];
                if (v37 <= 0.0 || ([v36 lockDate], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "timeIntervalSinceNow"), v40 = v39, -[ICAssetGenerationManager generationTimeout](v65, "generationTimeout"), v42 = v40 + v41, v38, v42 < 0.0))
                {
                  v43 = os_log_create("com.apple.notes", "Media");
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v87 = v19;
                    _os_log_impl(&dword_214D51000, v43, OS_LOG_TYPE_INFO, "Breaking lock for asset generation {url: %@}", buf, 0xCu);
                  }

                  [v64 breakLock];
                  goto LABEL_39;
                }

                v47 = os_log_create("com.apple.notes", "Media");
                v28 = v66;
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  loga = v47;
                  v48 = [MEMORY[0x277CCABB0] numberWithInt:*__error()];
                  *buf = v60;
                  v87 = v19;
                  v88 = 2112;
                  v89 = v48;
                  _os_log_impl(&dword_214D51000, loga, OS_LOG_TYPE_INFO, "Cannot unlock asset generation — skipping {url: %@, errno: %@}", buf, 0x16u);

                  v47 = loga;
                }

LABEL_47:
                v7 = v18;
              }
            }

            else
            {
              v30 = os_log_create("com.apple.notes", "Media");
              v7 = v18;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v87 = v19;
                _os_log_debug_impl(&dword_214D51000, v30, OS_LOG_TYPE_DEBUG, "Skipping non-generational directory {url: %@}", buf, 0xCu);
              }
            }

LABEL_49:

            goto LABEL_50;
          }

          v26 = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v87 = v19;
            _os_log_debug_impl(&dword_214D51000, v26, OS_LOG_TYPE_DEBUG, "Skipping non-directory file {url: %@}", buf, 0xCu);
          }
        }

        else
        {
          v26 = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v87 = v19;
            _os_log_error_impl(&dword_214D51000, v26, OS_LOG_TYPE_ERROR, "Cannot determine if URL is directory — skipping {url: %@}", buf, 0xCu);
          }
        }

        v7 = v18;
LABEL_51:

        v11 = v24;
        v16 = v67;
        v15 = v69;
LABEL_52:
        ++v17;
      }

      while (v15 != v17);
      v15 = [v12 countByEnumeratingWithState:&v78 objects:v84 count:16];
    }

    while (v15);
  }

  v49 = [(ICAssetGenerationManager *)v65 currentGeneration];

  if (v49)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v50 = [(ICAssetGenerationManager *)v65 fallbackURLs];
    v51 = [v50 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (!v51)
    {
      goto LABEL_67;
    }

    v52 = v51;
    v53 = *v72;
    while (1)
    {
      v54 = 0;
      v55 = v11;
      do
      {
        if (*v72 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v56 = *(*(&v71 + 1) + 8 * v54);
        v57 = [MEMORY[0x277CCAA00] defaultManager];
        v70 = v55;
        v58 = [v57 removeItemAtURL:v56 error:&v70];
        v11 = v70;

        if ((v58 & 1) == 0)
        {
          v59 = [v11 code];

          if (v59 == 4)
          {
            goto LABEL_65;
          }

          v57 = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v87 = v56;
            _os_log_error_impl(&dword_214D51000, v57, OS_LOG_TYPE_ERROR, "Cannot remove fallback {url: %@}", buf, 0xCu);
          }
        }

LABEL_65:
        ++v54;
        v55 = v11;
      }

      while (v52 != v54);
      v52 = [v50 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (!v52)
      {
LABEL_67:

        v12 = v63;
        break;
      }
    }
  }
}

- (void)managedObjectContextObjectsDidChange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBE310]];
  v15 = ICCheckedDynamicCast();

  v7 = [(ICAssetGenerationManager *)self object];
  if (v7)
  {
    v8 = v7;
    v9 = [(ICAssetGenerationManager *)self object];
    if ([v15 containsObject:v9])
    {
      v10 = [(ICAssetGenerationManager *)self object];
      v11 = [v10 changedValuesForCurrentEvent];
      v12 = [v11 allKeys];
      v13 = [(ICAssetGenerationManager *)self generationKeyPath];
      v14 = [v12 containsObject:v13];

      if (v14)
      {
        [(ICAssetGenerationManager *)self updateCurrentGeneration];
      }
    }

    else
    {
    }
  }
}

- (void)managedObjectContextDidSaveObjectIDs:(id)a3
{
  if ([(ICAssetGenerationManager *)self isAdvancing])
  {
    v4 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ICAssetGenerationManager managedObjectContextDidSaveObjectIDs:];
    }

    [(ICAssetGenerationManager *)self rollbackGeneration];
  }

  else
  {
    v5 = [(ICAssetGenerationManager *)self nextGeneration];

    if (v5)
    {
      v6 = [(ICAssetGenerationManager *)self nextGeneration];
      [(ICAssetGenerationManager *)self setCurrentGeneration:v6];

      [(ICAssetGenerationManager *)self setNextGeneration:0];
      [(ICAssetGenerationManager *)self removeStaleGenerations];
      v7 = [(ICAssetGenerationManager *)self nextGenerationLock];
      [v7 unlock];

      [(ICAssetGenerationManager *)self setNextGenerationLock:0];
    }
  }
}

- (void)beginGeneration
{
  OUTLINED_FUNCTION_3();
  v2 = [v1 object];
  [v2 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() containerURL];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)commitGeneration
{
  v1 = [a1 containerURL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)rollbackGeneration
{
  OUTLINED_FUNCTION_3();
  v2 = [v1 object];
  [v2 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() containerURL];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)managedObjectContextDidSaveObjectIDs:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v2 = [v1 object];
  [v2 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() containerURL];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end