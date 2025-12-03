@interface NTKArgonDiskKeyDatabase
- (NTKArgonDiskKeyDatabase)initWithSearchPathDomains:(unint64_t)domains;
- (id)keyDescriptorEnumerator;
- (id)keyDescriptorForFileName:(id)name;
- (void)_locked_rebuildCache;
- (void)clearCaches;
@end

@implementation NTKArgonDiskKeyDatabase

- (NTKArgonDiskKeyDatabase)initWithSearchPathDomains:(unint64_t)domains
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = NTKArgonDiskKeyDatabase;
  v4 = [(NTKArgonDiskKeyDatabase *)&v20 init];
  if (v4)
  {
    v5 = NTKFaceSupportUnencryptedBundleSearchPathsForDomains(domains);
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:{*(*(&v16 + 1) + 8 * v11), v16}];
          [v6 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v7 copy];
    searchPaths = v4->_searchPaths;
    v4->_searchPaths = v13;

    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (id)keyDescriptorEnumerator
{
  os_unfair_lock_lock(&self->_lock);
  knownKeyDescriptors = self->_knownKeyDescriptors;
  if (!knownKeyDescriptors)
  {
    [(NTKArgonDiskKeyDatabase *)self _locked_rebuildCache];
    knownKeyDescriptors = self->_knownKeyDescriptors;
  }

  objectEnumerator = [(NSSet *)knownKeyDescriptors objectEnumerator];
  os_unfair_lock_unlock(&self->_lock);

  return objectEnumerator;
}

- (id)keyDescriptorForFileName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  knownKeyDescriptors = self->_knownKeyDescriptors;
  if (!knownKeyDescriptors)
  {
    [(NTKArgonDiskKeyDatabase *)self _locked_rebuildCache];
    knownKeyDescriptors = self->_knownKeyDescriptors;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = knownKeyDescriptors;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        fileName = [v10 fileName];
        v12 = [fileName isEqualToString:nameCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_13;
        }
      }

      v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)clearCaches
{
  os_unfair_lock_lock(&self->_lock);
  knownKeyDescriptors = self->_knownKeyDescriptors;
  self->_knownKeyDescriptors = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_locked_rebuildCache
{
  v45 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v33 = [MEMORY[0x277CBEB58] set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  obj = self->_searchPaths;
  v30 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v30)
  {
    v29 = *v40;
    v3 = 0x277CBE000uLL;
    do
    {
      v4 = 0;
      do
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v4;
        v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:{*(*(&v39 + 1) + 8 * v4), selfCopy}];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v31 = v5;
        v7 = [defaultManager enumeratorAtURL:v5 includingPropertiesForKeys:0 options:2 errorHandler:0];

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v36;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v36 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v35 + 1) + 8 * i);
              lastPathComponent = [v13 lastPathComponent];
              pathExtension = [lastPathComponent pathExtension];
              v16 = [pathExtension isEqualToString:@"bundle"];

              if (v16)
              {
                v17 = *(v3 + 2752);
                v18 = [v13 URLByAppendingPathComponent:@"Info.plist"];
                v19 = [v17 dictionaryWithContentsOfURL:v18];

                if (v19)
                {
                  v20 = [v19 objectForKeyedSubscript:@"Argon"];
                  if (v20)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v21 = v3;
                      v22 = [v20 objectForKeyedSubscript:@"FileName"];
                      if (v22)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v23 = [v20 objectForKeyedSubscript:@"Key"];
                          if (v23)
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v24 = [[NTKArgonKeyDescriptor alloc] initWithKey:v23 fileName:v22];
                              if (v24)
                              {
                                v34 = v24;
                                [v33 addObject:v24];
                                v24 = v34;
                              }
                            }
                          }
                        }
                      }

                      v3 = v21;
                    }
                  }
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v10);
        }

        v4 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v30 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v30);
  }

  v25 = [v33 copy];
  knownKeyDescriptors = selfCopy->_knownKeyDescriptors;
  selfCopy->_knownKeyDescriptors = v25;
}

@end