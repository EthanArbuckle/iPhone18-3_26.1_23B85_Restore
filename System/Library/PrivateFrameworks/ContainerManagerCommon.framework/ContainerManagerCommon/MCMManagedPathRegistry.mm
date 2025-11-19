@interface MCMManagedPathRegistry
- (BOOL)privileged;
- (MCMManagedPath)caches;
- (MCMManagedPath)containermanagerCaches;
- (MCMManagedPath)containermanagerCachesIntermediate;
- (MCMManagedPath)containermanagerDeathrow;
- (MCMManagedPath)containermanagerDeleteOperations;
- (MCMManagedPath)containermanagerLibrary;
- (MCMManagedPath)containermanagerLibraryIntermediate;
- (MCMManagedPath)containermanagerPendingUpdates;
- (MCMManagedPath)containermanagerReplaceOperations;
- (MCMManagedPath)home;
- (MCMManagedPath)library;
- (MCMManagedPathRegistry)initWithDaemonUser:(id)a3 privileged:(BOOL)a4;
- (MCMPOSIXUser)daemonUser;
- (NSSet)paths;
- (id)managedPathForURL:(id)a3;
- (id)orderedPathsFromPaths:(id)a3;
- (void)_addPaths:(id)a3;
- (void)_initPathPropertiesWithDaemonUser:(id)a3;
@end

@implementation MCMManagedPathRegistry

- (BOOL)privileged
{
  result = self->_privileged;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerDeathrow
{
  result = self->_containermanagerDeathrow;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerCachesIntermediate
{
  result = self->_containermanagerCachesIntermediate;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerCaches
{
  result = self->_containermanagerCaches;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)caches
{
  result = self->_caches;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerDeleteOperations
{
  result = self->_containermanagerDeleteOperations;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerReplaceOperations
{
  result = self->_containermanagerReplaceOperations;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerPendingUpdates
{
  result = self->_containermanagerPendingUpdates;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerLibraryIntermediate
{
  result = self->_containermanagerLibraryIntermediate;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerLibrary
{
  result = self->_containermanagerLibrary;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)library
{
  result = self->_library;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)home
{
  result = self->_home;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMPOSIXUser)daemonUser
{
  result = self->_daemonUser;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)paths
{
  result = self->_paths;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)_initPathPropertiesWithDaemonUser:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v4 = [v28 homeDirectoryURL];
  v5 = [[MCMManagedPath alloc] initWithURL:v4 flags:0 ACLConfig:0 mode:493 dpClass:0xFFFFFFFFLL owner:v28 parent:0];
  home = self->_home;
  self->_home = v5;

  v7 = [(MCMManagedPath *)self->_home managedPathByAppendingPathComponent:@"Library" flags:2 ACLConfig:2 mode:493 dpClass:0xFFFFFFFFLL owner:v28];
  library = self->_library;
  self->_library = v7;

  v9 = [(MCMManagedPath *)self->_library managedPathByAppendingPathComponent:@"MobileContainerManager" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v28];
  containermanagerLibrary = self->_containermanagerLibrary;
  self->_containermanagerLibrary = v9;

  objc_storeStrong(&self->_containermanagerLibraryIntermediate, self->_containermanagerLibrary);
  if ([(MCMManagedPathRegistry *)self privileged])
  {
    v11 = [(MCMManagedPath *)self->_containermanagerLibraryIntermediate managedPathByAppendingPathComponent:@"System" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v28];
    v12 = self->_containermanagerLibrary;
    self->_containermanagerLibrary = v11;
  }

  v13 = [(MCMManagedPath *)self->_containermanagerLibrary managedPathByAppendingPathComponent:@"PendingUpdates" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v28];
  containermanagerPendingUpdates = self->_containermanagerPendingUpdates;
  self->_containermanagerPendingUpdates = v13;

  v15 = [(MCMManagedPath *)self->_containermanagerLibrary managedPathByAppendingPathComponent:@"Replace" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v28];
  containermanagerReplaceOperations = self->_containermanagerReplaceOperations;
  self->_containermanagerReplaceOperations = v15;

  v17 = [(MCMManagedPath *)self->_containermanagerLibraryIntermediate managedPathByAppendingPathComponent:@"Delete" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v28];
  containermanagerDeleteOperations = self->_containermanagerDeleteOperations;
  self->_containermanagerDeleteOperations = v17;

  v19 = [(MCMManagedPath *)self->_library managedPathByAppendingPathComponent:@"Caches" flags:2 ACLConfig:2 mode:493 dpClass:0xFFFFFFFFLL owner:v28];
  caches = self->_caches;
  self->_caches = v19;

  v21 = [(MCMManagedPath *)self->_caches managedPathByAppendingPathComponent:@"com.apple.containermanagerd" flags:3 ACLConfig:1 mode:493 dpClass:4 owner:v28];
  containermanagerCaches = self->_containermanagerCaches;
  self->_containermanagerCaches = v21;

  if ([(MCMManagedPathRegistry *)self privileged])
  {
    objc_storeStrong(&self->_containermanagerCachesIntermediate, self->_containermanagerCaches);
    v23 = [(MCMManagedPath *)self->_containermanagerCaches managedPathByAppendingPathComponent:@"System" flags:3 ACLConfig:1 mode:493 dpClass:4 owner:v28];
    v24 = self->_containermanagerCaches;
    self->_containermanagerCaches = v23;
  }

  v25 = [(MCMManagedPath *)self->_containermanagerCaches managedPathByAppendingPathComponent:@"Dead" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v28];
  containermanagerDeathrow = self->_containermanagerDeathrow;
  self->_containermanagerDeathrow = v25;

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_addPaths:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(NSSet *)self->_paths setByAddingObjectsFromArray:a3];
  paths = self->_paths;
  self->_paths = v4;
  v6 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

- (id)managedPathForURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCMManagedPathRegistry *)self paths];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 url];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)orderedPathsFromPaths:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [MEMORY[0x1E695DF70] array];
        [v11 addObject:v10];
        v12 = [v10 parent];

        if (v12)
        {
          do
          {
            v13 = [v10 parent];
            [v11 addObject:v13];

            v14 = [v10 parent];

            v15 = [v14 parent];

            v10 = v14;
          }

          while (v15);
        }

        else
        {
          v14 = v10;
        }

        v16 = [v11 count];
        if (v16)
        {
          v17 = v16 - 1;
          do
          {
            v18 = v14;
            v14 = [v11 objectAtIndexedSubscript:v17];

            if (([v4 containsObject:v14] & 1) == 0)
            {
              [v4 addObject:v14];
            }

            --v17;
          }

          while (v17 != -1);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v7);
  }

  v19 = [v4 copy];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (MCMManagedPathRegistry)initWithDaemonUser:(id)a3 privileged:(BOOL)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v16.receiver = self;
  v16.super_class = MCMManagedPathRegistry;
  v8 = [(MCMManagedPathRegistry *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_daemonUser, a3);
    v9->_privileged = a4;
    [(MCMManagedPathRegistry *)v9 _initPathPropertiesWithDaemonUser:v7];
    v10 = [MEMORY[0x1E695DFA8] setWithObjects:{v9->_home, v9->_library, v9->_containermanagerLibrary, v9->_containermanagerPendingUpdates, v9->_containermanagerReplaceOperations, v9->_containermanagerDeleteOperations, v9->_caches, v9->_containermanagerCaches, v9->_containermanagerDeathrow, 0}];
    v11 = v10;
    if (v9->_containermanagerLibraryIntermediate)
    {
      [v10 addObject:?];
    }

    if (v9->_containermanagerCachesIntermediate)
    {
      [v11 addObject:?];
    }

    v12 = [v11 copy];
    paths = v9->_paths;
    v9->_paths = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

@end