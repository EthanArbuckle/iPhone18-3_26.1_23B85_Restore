@interface DMPluginFileSystemRep
+ (id)allReps;
- (DMPluginFileSystemRep)initWithName:(id)a3 atEnclosingPath:(id)a4;
@end

@implementation DMPluginFileSystemRep

+ (id)allReps
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [a1 _pathsContainingPossiblePluginDirectory];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v40;
    v6 = MEMORY[0x277CBEBF8];
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        if (*v40 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = [*(*(&v39 + 1) + 8 * v7) stringByAppendingPathComponent:@"DataClassMigrators"];
        v6 = [v8 arrayByAddingObject:v9];

        ++v7;
        v8 = v6;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v25 = v2;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v29)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCAA00] defaultManager];
        v34 = 0;
        v14 = [v13 contentsOfDirectoryAtPath:v12 error:&v34];
        v15 = v34;

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
        _DMLogFunc(v28, 7, @"Found %@ items in migration plugin directory %@. Error: %@");

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:{16, v24, v12, v15, v25}];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [[DMPluginFileSystemRep alloc] initWithName:*(*(&v30 + 1) + 8 * j) atEnclosingPath:v12];
              if (v21)
              {
                [v10 addObject:v21];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
          }

          while (v18);
        }
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v29);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

- (DMPluginFileSystemRep)initWithName:(id)a3 atEnclosingPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = DMPluginFileSystemRep;
  v8 = [(DMPluginFileSystemRep *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 stringByAppendingPathComponent:v6];
    path = v8->_path;
    v8->_path = v11;

    v13 = [MEMORY[0x277CCA8D8] bundleWithPath:v8->_path];
    bundle = v8->_bundle;
    v8->_bundle = v13;

    v15 = [(NSBundle *)v8->_bundle bundleIdentifier];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v15;
  }

  return v8;
}

@end