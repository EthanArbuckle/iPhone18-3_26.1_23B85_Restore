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
- (MCMManagedPathRegistry)initWithDaemonUser:(id)user privileged:(BOOL)privileged;
- (MCMPOSIXUser)daemonUser;
- (NSSet)paths;
- (id)managedPathForURL:(id)l;
- (id)orderedPathsFromPaths:(id)paths;
- (void)_addPaths:(id)paths;
- (void)_initPathPropertiesWithDaemonUser:(id)user;
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

- (void)_initPathPropertiesWithDaemonUser:(id)user
{
  v29 = *MEMORY[0x1E69E9840];
  userCopy = user;
  homeDirectoryURL = [userCopy homeDirectoryURL];
  v5 = [[MCMManagedPath alloc] initWithURL:homeDirectoryURL flags:0 ACLConfig:0 mode:493 dpClass:0xFFFFFFFFLL owner:userCopy parent:0];
  home = self->_home;
  self->_home = v5;

  v7 = [(MCMManagedPath *)self->_home managedPathByAppendingPathComponent:@"Library" flags:2 ACLConfig:2 mode:493 dpClass:0xFFFFFFFFLL owner:userCopy];
  library = self->_library;
  self->_library = v7;

  v9 = [(MCMManagedPath *)self->_library managedPathByAppendingPathComponent:@"MobileContainerManager" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:userCopy];
  containermanagerLibrary = self->_containermanagerLibrary;
  self->_containermanagerLibrary = v9;

  objc_storeStrong(&self->_containermanagerLibraryIntermediate, self->_containermanagerLibrary);
  if ([(MCMManagedPathRegistry *)self privileged])
  {
    v11 = [(MCMManagedPath *)self->_containermanagerLibraryIntermediate managedPathByAppendingPathComponent:@"System" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:userCopy];
    v12 = self->_containermanagerLibrary;
    self->_containermanagerLibrary = v11;
  }

  v13 = [(MCMManagedPath *)self->_containermanagerLibrary managedPathByAppendingPathComponent:@"PendingUpdates" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:userCopy];
  containermanagerPendingUpdates = self->_containermanagerPendingUpdates;
  self->_containermanagerPendingUpdates = v13;

  v15 = [(MCMManagedPath *)self->_containermanagerLibrary managedPathByAppendingPathComponent:@"Replace" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:userCopy];
  containermanagerReplaceOperations = self->_containermanagerReplaceOperations;
  self->_containermanagerReplaceOperations = v15;

  v17 = [(MCMManagedPath *)self->_containermanagerLibraryIntermediate managedPathByAppendingPathComponent:@"Delete" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:userCopy];
  containermanagerDeleteOperations = self->_containermanagerDeleteOperations;
  self->_containermanagerDeleteOperations = v17;

  v19 = [(MCMManagedPath *)self->_library managedPathByAppendingPathComponent:@"Caches" flags:2 ACLConfig:2 mode:493 dpClass:0xFFFFFFFFLL owner:userCopy];
  caches = self->_caches;
  self->_caches = v19;

  v21 = [(MCMManagedPath *)self->_caches managedPathByAppendingPathComponent:@"com.apple.containermanagerd" flags:3 ACLConfig:1 mode:493 dpClass:4 owner:userCopy];
  containermanagerCaches = self->_containermanagerCaches;
  self->_containermanagerCaches = v21;

  if ([(MCMManagedPathRegistry *)self privileged])
  {
    objc_storeStrong(&self->_containermanagerCachesIntermediate, self->_containermanagerCaches);
    v23 = [(MCMManagedPath *)self->_containermanagerCaches managedPathByAppendingPathComponent:@"System" flags:3 ACLConfig:1 mode:493 dpClass:4 owner:userCopy];
    v24 = self->_containermanagerCaches;
    self->_containermanagerCaches = v23;
  }

  v25 = [(MCMManagedPath *)self->_containermanagerCaches managedPathByAppendingPathComponent:@"Dead" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:userCopy];
  containermanagerDeathrow = self->_containermanagerDeathrow;
  self->_containermanagerDeathrow = v25;

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_addPaths:(id)paths
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(NSSet *)self->_paths setByAddingObjectsFromArray:paths];
  paths = self->_paths;
  self->_paths = v4;
  v6 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

- (id)managedPathForURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
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
        v11 = [v10 isEqual:lCopy];

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

- (id)orderedPathsFromPaths:(id)paths
{
  v27 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = pathsCopy;
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
        array = [MEMORY[0x1E695DF70] array];
        [array addObject:v10];
        parent = [v10 parent];

        if (parent)
        {
          do
          {
            parent2 = [v10 parent];
            [array addObject:parent2];

            parent3 = [v10 parent];

            v14Parent = [parent3 parent];

            v10 = parent3;
          }

          while (v14Parent);
        }

        else
        {
          parent3 = v10;
        }

        v16 = [array count];
        if (v16)
        {
          v17 = v16 - 1;
          do
          {
            v18 = parent3;
            parent3 = [array objectAtIndexedSubscript:v17];

            if (([v4 containsObject:parent3] & 1) == 0)
            {
              [v4 addObject:parent3];
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

- (MCMManagedPathRegistry)initWithDaemonUser:(id)user privileged:(BOOL)privileged
{
  v17 = *MEMORY[0x1E69E9840];
  userCopy = user;
  v16.receiver = self;
  v16.super_class = MCMManagedPathRegistry;
  v8 = [(MCMManagedPathRegistry *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_daemonUser, user);
    v9->_privileged = privileged;
    [(MCMManagedPathRegistry *)v9 _initPathPropertiesWithDaemonUser:userCopy];
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