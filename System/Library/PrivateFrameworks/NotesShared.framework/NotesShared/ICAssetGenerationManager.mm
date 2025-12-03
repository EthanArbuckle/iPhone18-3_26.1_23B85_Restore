@interface ICAssetGenerationManager
- (BOOL)beginGeneration;
- (BOOL)commitGeneration;
- (BOOL)rollbackGeneration;
- (ICAssetGenerationManager)initWithObject:(id)object generationKeyPath:(id)path containerURL:(id)l;
- (ICCloudSyncingObject)object;
- (NSURL)generationURL;
- (id)description;
- (void)beginGeneration;
- (void)commitGeneration;
- (void)dealloc;
- (void)managedObjectContextDidSaveObjectIDs:(id)ds;
- (void)managedObjectContextObjectsDidChange:(id)change;
- (void)removeStaleGenerations;
- (void)rollbackGeneration;
- (void)updateCurrentGeneration;
@end

@implementation ICAssetGenerationManager

- (void)updateCurrentGeneration
{
  objc_opt_class();
  object = [(ICAssetGenerationManager *)self object];
  generationKeyPath = [(ICAssetGenerationManager *)self generationKeyPath];
  v5 = [object valueForKeyPath:generationKeyPath];
  v23 = ICCheckedDynamicCast();

  if (v23)
  {
    v6 = [[ICAssetGeneration alloc] initWithRawValue:v23];
  }

  else
  {
    v6 = 0;
  }

  nextGeneration = [(ICAssetGenerationManager *)self nextGeneration];

  if (!nextGeneration)
  {
    goto LABEL_31;
  }

  currentGeneration = [(ICAssetGenerationManager *)self currentGeneration];
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
  if (v9 == currentGeneration)
  {
    v12 = 0;
  }

  else
  {
    v12 = currentGeneration;
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
  nextGeneration2 = [(ICAssetGenerationManager *)self nextGeneration];
  v18 = v11;
  if (v9 == nextGeneration2)
  {
    v19 = 0;
  }

  else
  {
    v19 = nextGeneration2;
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
  nextGeneration = [(ICAssetGenerationManager *)self nextGeneration];
  v4 = nextGeneration;
  if (nextGeneration)
  {
    currentGeneration = nextGeneration;
  }

  else
  {
    currentGeneration = [(ICAssetGenerationManager *)self currentGeneration];
  }

  v6 = currentGeneration;

  rawValue = [v6 rawValue];
  if (rawValue)
  {
    containerURL = [(ICAssetGenerationManager *)self containerURL];
    rawValue2 = [v6 rawValue];
    v10 = [containerURL URLByAppendingPathComponent:rawValue2 isDirectory:1];
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
  object = [v1 object];
  [object shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  containerURL = [OUTLINED_FUNCTION_4_2() containerURL];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (ICAssetGenerationManager)initWithObject:(id)object generationKeyPath:(id)path containerURL:(id)l
{
  v32 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  pathCopy = path;
  lCopy = l;
  managedObjectContext = [objectCopy managedObjectContext];
  if (managedObjectContext && [pathCopy length])
  {

    if (lCopy)
    {
      v25.receiver = self;
      v25.super_class = ICAssetGenerationManager;
      v12 = [(ICAssetGenerationManager *)&v25 init];
      v13 = v12;
      if (v12)
      {
        objc_storeWeak(&v12->_object, objectCopy);
        objc_storeStrong(&v13->_generationKeyPath, path);
        objc_storeStrong(&v13->_containerURL, l);
        fallbackURLs = v13->_fallbackURLs;
        v13->_fallbackURLs = MEMORY[0x277CBEBF8];

        v13->_generationTimeout = 3600.0;
        [(ICAssetGenerationManager *)v13 updateCurrentGeneration];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v16 = *MEMORY[0x277CBE1B8];
        managedObjectContext2 = [objectCopy managedObjectContext];
        [defaultCenter addObserver:v13 selector:sel_managedObjectContextObjectsDidChange_ name:v16 object:managedObjectContext2];

        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        v19 = *MEMORY[0x277CBE1B0];
        managedObjectContext3 = [objectCopy managedObjectContext];
        [defaultCenter2 addObserver:v13 selector:sel_managedObjectContextDidSaveObjectIDs_ name:v19 object:managedObjectContext3];
      }

      self = v13;
      selfCopy = self;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v22 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    shortLoggingDescription = [objectCopy shortLoggingDescription];
    *buf = 138412802;
    v27 = shortLoggingDescription;
    v28 = 2112;
    v29 = pathCopy;
    v30 = 2112;
    v31 = lCopy;
    _os_log_error_impl(&dword_214D51000, v22, OS_LOG_TYPE_ERROR, "Cannot create asset generation manager because parameters are invalid {object: %@, generationKeyPath: %@, containerUrl: %@}", buf, 0x20u);
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  object = [(ICAssetGenerationManager *)self object];
  shortLoggingDescription = [object shortLoggingDescription];
  containerURL = [(ICAssetGenerationManager *)self containerURL];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAssetGenerationManager isAdvancing](self, "isAdvancing")}];
  v10 = [v3 stringWithFormat:@"<%@: %p, object: %@, containerURL: %@, isAdvancing: %@>", v5, self, shortLoggingDescription, containerURL, v9];

  return v10;
}

- (BOOL)beginGeneration
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    object = [(ICAssetGenerationManager *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    containerURL = [(ICAssetGenerationManager *)self containerURL];
    *buf = 138413058;
    v46 = shortLoggingDescription;
    v47 = 2112;
    v49 = 2080;
    v48 = containerURL;
    v50 = "[ICAssetGenerationManager beginGeneration]";
    v51 = 1024;
    v52 = 116;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Beginning asset generation… {object: %@, containerUrl: %@}%s:%d", buf, 0x26u);
  }

  if (![(ICAssetGenerationManager *)self isAdvancing])
  {
    object2 = [(ICAssetGenerationManager *)self object];
    managedObjectContext = [object2 managedObjectContext];

    if (!managedObjectContext)
    {
      v7 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ICAssetGenerationManager *)self beginGeneration];
      }

      goto LABEL_11;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    containerURL2 = [(ICAssetGenerationManager *)self containerURL];
    v44 = 0;
    v12 = [defaultManager createDirectoryAtURL:containerURL2 withIntermediateDirectories:1 attributes:0 error:&v44];
    v13 = v44;
    v14 = v13;
    if (v12)
    {
    }

    else
    {
      code = [v13 code];

      if (code != 516)
      {
        v7 = os_log_create("com.apple.notes", "Media");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(ICAssetGenerationManager *)self beginGeneration];
        }

        goto LABEL_34;
      }
    }

    nextGeneration = [(ICAssetGenerationManager *)self nextGeneration];
    if (nextGeneration)
    {
      v18 = nextGeneration;
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      generationURL = [(ICAssetGenerationManager *)self generationURL];
      v43 = v14;
      v21 = [defaultManager2 removeItemAtURL:generationURL error:&v43];
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

    currentGeneration = [(ICAssetGenerationManager *)self currentGeneration];
    nextGeneration2 = [currentGeneration nextGeneration];
    if (nextGeneration2)
    {
      [(ICAssetGenerationManager *)self setNextGeneration:nextGeneration2];
    }

    else
    {
      v26 = objc_alloc_init(ICAssetGeneration);
      [(ICAssetGenerationManager *)self setNextGeneration:v26];
    }

    [(ICAssetGenerationManager *)self setAdvancing:1];
    containerURL3 = [(ICAssetGenerationManager *)self containerURL];
    nextGeneration3 = [(ICAssetGenerationManager *)self nextGeneration];
    rawValue = [nextGeneration3 rawValue];
    v30 = [containerURL3 URLByAppendingPathComponent:rawValue isDirectory:1];

    v7 = [v30 URLByAppendingPathExtension:@"lock"];

    v31 = MEMORY[0x277D361E0];
    path = [v7 path];
    v33 = [v31 lockWithPath:path];
    [(ICAssetGenerationManager *)self setNextGenerationLock:v33];

    nextGenerationLock = [(ICAssetGenerationManager *)self nextGenerationLock];
    LOBYTE(path) = [nextGenerationLock tryLock];

    if (path)
    {
      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      generationURL2 = [(ICAssetGenerationManager *)self generationURL];
      v42 = v22;
      v15 = 1;
      v37 = [defaultManager3 createDirectoryAtURL:generationURL2 withIntermediateDirectories:1 attributes:0 error:&v42];
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
      nextGenerationLock2 = [(ICAssetGenerationManager *)self nextGenerationLock];
      [nextGenerationLock2 unlock];
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
    object = [(ICAssetGenerationManager *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    containerURL = [(ICAssetGenerationManager *)self containerURL];
    v16 = 138413058;
    v17 = shortLoggingDescription;
    v18 = 2112;
    v20 = 2080;
    v19 = containerURL;
    v21 = "[ICAssetGenerationManager commitGeneration]";
    v22 = 1024;
    v23 = 173;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Committing asset generation… {object: %@, containerUrl: %@}%s:%d", &v16, 0x26u);
  }

  if ([(ICAssetGenerationManager *)self isAdvancing])
  {
    object2 = [(ICAssetGenerationManager *)self object];
    managedObjectContext = [object2 managedObjectContext];

    if (managedObjectContext)
    {
      [(ICAssetGenerationManager *)self setAdvancing:0];
      object3 = [(ICAssetGenerationManager *)self object];
      nextGeneration = [(ICAssetGenerationManager *)self nextGeneration];
      rawValue = [nextGeneration rawValue];
      generationKeyPath = [(ICAssetGenerationManager *)self generationKeyPath];
      [object3 setValue:rawValue forKey:generationKeyPath];

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
    object = [(ICAssetGenerationManager *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    containerURL = [(ICAssetGenerationManager *)self containerURL];
    *buf = 138413058;
    v21 = shortLoggingDescription;
    v22 = 2112;
    v24 = 2080;
    v23 = containerURL;
    v25 = "[ICAssetGenerationManager rollbackGeneration]";
    v26 = 1024;
    v27 = 198;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Rolling back asset generation… {object: %@, containerUrl: %@}%s:%d", buf, 0x26u);
  }

  isAdvancing = [(ICAssetGenerationManager *)self isAdvancing];
  if (isAdvancing)
  {
    nextGenerationLock = [(ICAssetGenerationManager *)self nextGenerationLock];
    [nextGenerationLock unlock];

    [(ICAssetGenerationManager *)self setNextGenerationLock:0];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    generationURL = [(ICAssetGenerationManager *)self generationURL];
    v19 = 0;
    v11 = [defaultManager removeItemAtURL:generationURL error:&v19];
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
    object2 = [(ICAssetGenerationManager *)self object];
    currentGeneration = [(ICAssetGenerationManager *)self currentGeneration];
    rawValue = [currentGeneration rawValue];
    generationKeyPath = [(ICAssetGenerationManager *)self generationKeyPath];
    [object2 setValue:rawValue forKey:generationKeyPath];
  }

  else
  {
    object2 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(object2, OS_LOG_TYPE_ERROR))
    {
      [ICAssetGenerationManager rollbackGeneration];
    }

    v12 = object2;
  }

  return isAdvancing;
}

- (void)removeStaleGenerations
{
  v94 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    object = [(ICAssetGenerationManager *)self object];
    shortLoggingDescription = [object shortLoggingDescription];
    containerURL = [(ICAssetGenerationManager *)self containerURL];
    *buf = 138413058;
    v87 = shortLoggingDescription;
    v88 = 2112;
    v90 = 2080;
    v89 = containerURL;
    v91 = "[ICAssetGenerationManager removeStaleGenerations]";
    v92 = 1024;
    v93 = 228;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Removing stale generations… {object: %@, containerUrl: %@}%s:%d", buf, 0x26u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  selfCopy = self;
  containerURL2 = [(ICAssetGenerationManager *)self containerURL];
  v68 = *MEMORY[0x277CBE868];
  v85 = *MEMORY[0x277CBE868];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
  v82 = 0;
  v10 = [defaultManager contentsOfDirectoryAtURL:containerURL2 includingPropertiesForKeys:v9 options:1 error:&v82];
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
        v18 = defaultManager;
        if (*v79 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v78 + 1) + 8 * v17);
        pathExtension = [v19 pathExtension];
        v21 = [pathExtension isEqual:@"lock"];

        if (v21)
        {
          defaultManager = v18;
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
            pathComponents = [v19 pathComponents];
            lastObject = [pathComponents lastObject];

            v27 = [[ICAssetGeneration alloc] initWithRawValue:lastObject];
            v28 = v27;
            if (v27)
            {
              v66 = v27;
              v29 = selfCopy;
              currentGeneration = [(ICAssetGenerationManager *)selfCopy currentGeneration];
              if (currentGeneration)
              {
                defaultManager = [(ICAssetGenerationManager *)selfCopy currentGeneration];
                v28 = v66;
                if ([(ICAssetGeneration *)v66 isEqual:defaultManager])
                {

                  goto LABEL_49;
                }

                v18 = defaultManager;
                v29 = selfCopy;
              }

              nextGeneration = [(ICAssetGenerationManager *)v29 nextGeneration];
              if (nextGeneration)
              {
                nextGeneration2 = [(ICAssetGenerationManager *)v29 nextGeneration];
                v33 = [(ICAssetGeneration *)v66 isEqual:nextGeneration2];

                if (currentGeneration)
                {
                  defaultManager = v18;

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

                  defaultManager = v18;
                }

                v28 = v66;
LABEL_50:

                goto LABEL_51;
              }

              if (currentGeneration)
              {
              }

LABEL_33:
              currentGeneration = [v19 URLByAppendingPathExtension:@"lock"];
              v34 = MEMORY[0x277D361E0];
              path = [currentGeneration path];
              v36 = [v34 lockWithPath:path];

              v64 = v36;
              if ([v36 tryLock])
              {
LABEL_39:
                defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
                v75 = v24;
                v45 = [defaultManager2 removeItemAtURL:v19 error:&v75];
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
                defaultManager = v18;
                v28 = v66;
              }

              else
              {
                [(ICAssetGenerationManager *)selfCopy generationTimeout];
                if (v37 <= 0.0 || ([v36 lockDate], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "timeIntervalSinceNow"), v40 = v39, -[ICAssetGenerationManager generationTimeout](selfCopy, "generationTimeout"), v42 = v40 + v41, v38, v42 < 0.0))
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
                defaultManager = v18;
              }
            }

            else
            {
              currentGeneration = os_log_create("com.apple.notes", "Media");
              defaultManager = v18;
              if (os_log_type_enabled(currentGeneration, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v87 = v19;
                _os_log_debug_impl(&dword_214D51000, currentGeneration, OS_LOG_TYPE_DEBUG, "Skipping non-generational directory {url: %@}", buf, 0xCu);
              }
            }

LABEL_49:

            goto LABEL_50;
          }

          lastObject = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v87 = v19;
            _os_log_debug_impl(&dword_214D51000, lastObject, OS_LOG_TYPE_DEBUG, "Skipping non-directory file {url: %@}", buf, 0xCu);
          }
        }

        else
        {
          lastObject = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v87 = v19;
            _os_log_error_impl(&dword_214D51000, lastObject, OS_LOG_TYPE_ERROR, "Cannot determine if URL is directory — skipping {url: %@}", buf, 0xCu);
          }
        }

        defaultManager = v18;
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

  currentGeneration2 = [(ICAssetGenerationManager *)selfCopy currentGeneration];

  if (currentGeneration2)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    fallbackURLs = [(ICAssetGenerationManager *)selfCopy fallbackURLs];
    v51 = [fallbackURLs countByEnumeratingWithState:&v71 objects:v83 count:16];
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
          objc_enumerationMutation(fallbackURLs);
        }

        v56 = *(*(&v71 + 1) + 8 * v54);
        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        v70 = v55;
        v58 = [defaultManager3 removeItemAtURL:v56 error:&v70];
        v11 = v70;

        if ((v58 & 1) == 0)
        {
          code = [v11 code];

          if (code == 4)
          {
            goto LABEL_65;
          }

          defaultManager3 = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(defaultManager3, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v87 = v56;
            _os_log_error_impl(&dword_214D51000, defaultManager3, OS_LOG_TYPE_ERROR, "Cannot remove fallback {url: %@}", buf, 0xCu);
          }
        }

LABEL_65:
        ++v54;
        v55 = v11;
      }

      while (v52 != v54);
      v52 = [fallbackURLs countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (!v52)
      {
LABEL_67:

        v12 = v63;
        break;
      }
    }
  }
}

- (void)managedObjectContextObjectsDidChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  userInfo = [changeCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE310]];
  v15 = ICCheckedDynamicCast();

  object = [(ICAssetGenerationManager *)self object];
  if (object)
  {
    v8 = object;
    object2 = [(ICAssetGenerationManager *)self object];
    if ([v15 containsObject:object2])
    {
      object3 = [(ICAssetGenerationManager *)self object];
      changedValuesForCurrentEvent = [object3 changedValuesForCurrentEvent];
      allKeys = [changedValuesForCurrentEvent allKeys];
      generationKeyPath = [(ICAssetGenerationManager *)self generationKeyPath];
      v14 = [allKeys containsObject:generationKeyPath];

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

- (void)managedObjectContextDidSaveObjectIDs:(id)ds
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
    nextGeneration = [(ICAssetGenerationManager *)self nextGeneration];

    if (nextGeneration)
    {
      nextGeneration2 = [(ICAssetGenerationManager *)self nextGeneration];
      [(ICAssetGenerationManager *)self setCurrentGeneration:nextGeneration2];

      [(ICAssetGenerationManager *)self setNextGeneration:0];
      [(ICAssetGenerationManager *)self removeStaleGenerations];
      nextGenerationLock = [(ICAssetGenerationManager *)self nextGenerationLock];
      [nextGenerationLock unlock];

      [(ICAssetGenerationManager *)self setNextGenerationLock:0];
    }
  }
}

- (void)beginGeneration
{
  OUTLINED_FUNCTION_3();
  object = [v1 object];
  [object shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  containerURL = [OUTLINED_FUNCTION_4_2() containerURL];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)commitGeneration
{
  containerURL = [self containerURL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)rollbackGeneration
{
  OUTLINED_FUNCTION_3();
  object = [v1 object];
  [object shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  containerURL = [OUTLINED_FUNCTION_4_2() containerURL];
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