@interface NTKArgonEncryptedBundleEnumerator
- (NTKArgonEncryptedBundleEnumerator)initWithSearchPathDomains:(unint64_t)domains;
- (NTKArgonEncryptedBundleEnumerator)initWithSourceDirectoryPaths:(id)paths;
- (NTKArgonEncryptedBundleEnumerator)initWithSourceDirectoryURLs:(id)ls;
- (id)nextObject;
@end

@implementation NTKArgonEncryptedBundleEnumerator

- (NTKArgonEncryptedBundleEnumerator)initWithSearchPathDomains:(unint64_t)domains
{
  v9.receiver = self;
  v9.super_class = NTKArgonEncryptedBundleEnumerator;
  v4 = [(NTKArgonEncryptedBundleEnumerator *)&v9 init];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = NTKFaceSupportArchiveSearchPathsForDomains(domains);
  v7 = [(NTKArgonEncryptedBundleEnumerator *)v5 initWithSourceDirectoryPaths:v6];

  return v7;
}

- (NTKArgonEncryptedBundleEnumerator)initWithSourceDirectoryURLs:(id)ls
{
  v22 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v20.receiver = self;
  v20.super_class = NTKArgonEncryptedBundleEnumerator;
  v5 = [(NTKArgonEncryptedBundleEnumerator *)&v20 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(lsCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = lsCopy;
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

          absoluteURL = [*(*(&v16 + 1) + 8 * v11) absoluteURL];
          path = [absoluteURL path];
          [v6 addObject:path];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    v5 = [(NTKArgonEncryptedBundleEnumerator *)v5 initWithSourceDirectoryPaths:v14];
  }

  return v5;
}

- (NTKArgonEncryptedBundleEnumerator)initWithSourceDirectoryPaths:(id)paths
{
  v52 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v45.receiver = self;
  v45.super_class = NTKArgonEncryptedBundleEnumerator;
  v5 = [(NTKArgonEncryptedBundleEnumerator *)&v45 init];
  v6 = v5;
  if (v5)
  {
    v28 = v5;
    array = [MEMORY[0x277CBEB18] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = pathsCopy;
    obj = pathsCopy;
    v32 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v32)
    {
      v31 = *v42;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v41 + 1) + 8 * i);
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v40 = 0;
          v11 = [defaultManager contentsOfDirectoryAtPath:v9 error:&v40];
          v12 = v40;

          if (v11)
          {
            v33 = v12;
            v35 = i;
            v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v34 = v11;
            v14 = [v11 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
            v15 = [v14 countByEnumeratingWithState:&v36 objects:v46 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v37;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v37 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v36 + 1) + 8 * j);
                  pathExtension = [v19 pathExtension];
                  v21 = [pathExtension isEqualToString:@"aea"];

                  if (v21)
                  {
                    v22 = [v13 URLByAppendingPathComponent:v19];
                    [array addObject:v22];
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v36 objects:v46 count:16];
              }

              while (v16);
            }

            v11 = v34;
            i = v35;
            v12 = v33;
          }

          else
          {
            v13 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v48 = v9;
              v49 = 2114;
              v50 = v12;
              _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "NTKArgonEncryptedBundleEnumerator: No directory found at %{public}@: %{public}@", buf, 0x16u);
            }
          }
        }

        v32 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v32);
    }

    v23 = [array copy];
    v6 = v28;
    allObjects = v28->_allObjects;
    v28->_allObjects = v23;

    objectEnumerator = [(NSArray *)v28->_allObjects objectEnumerator];
    urlEnumerator = v28->_urlEnumerator;
    v28->_urlEnumerator = objectEnumerator;

    pathsCopy = v29;
  }

  return v6;
}

- (id)nextObject
{
  nextObject = [(NSEnumerator *)self->_urlEnumerator nextObject];
  lastURL = self->_lastURL;
  self->_lastURL = nextObject;

  v5 = self->_lastURL;

  return v5;
}

@end