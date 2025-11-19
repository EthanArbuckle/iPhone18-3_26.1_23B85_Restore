@interface MCMManagedUserPathRegistry
- (MCMManagedPath)containermanagerUserCaches;
- (MCMManagedPath)containermanagerUserDeathrow;
- (MCMManagedPath)containermanagerUserDeleteOperations;
- (MCMManagedPath)containermanagerUserLibrary;
- (MCMManagedPath)containermanagerUserPendingUpdates;
- (MCMManagedPath)containermanagerUserReplaceOperations;
- (MCMManagedPath)userCaches;
- (MCMManagedPath)userHome;
- (MCMManagedPath)userLibrary;
- (MCMManagedUserPathRegistry)initWithUserIdentity:(id)a3 daemonUser:(id)a4;
- (MCMUserIdentity)userIdentity;
- (void)_initPathPropertiesWithUserIdentity:(id)a3;
@end

@implementation MCMManagedUserPathRegistry

- (MCMManagedPath)containermanagerUserDeleteOperations
{
  result = self->_containermanagerUserDeleteOperations;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerUserReplaceOperations
{
  result = self->_containermanagerUserReplaceOperations;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerUserPendingUpdates
{
  result = self->_containermanagerUserPendingUpdates;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerUserLibrary
{
  result = self->_containermanagerUserLibrary;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerUserDeathrow
{
  result = self->_containermanagerUserDeathrow;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)containermanagerUserCaches
{
  result = self->_containermanagerUserCaches;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)userCaches
{
  result = self->_userCaches;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)userLibrary
{
  result = self->_userLibrary;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMManagedPath)userHome
{
  result = self->_userHome;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentity)userIdentity
{
  result = self->_userIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)_initPathPropertiesWithUserIdentity:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = [v4 homeDirectoryURL];
  v5 = [v4 posixUser];
  v6 = [[MCMManagedPath alloc] initWithURL:v31 flags:0 ACLConfig:0 mode:493 dpClass:0xFFFFFFFFLL owner:v5 parent:0];
  userHome = self->_userHome;
  self->_userHome = v6;

  v8 = [(MCMManagedPath *)self->_userHome managedPathByAppendingPathComponent:@"Library" flags:2 ACLConfig:2 mode:493 dpClass:0xFFFFFFFFLL owner:v5];
  userLibrary = self->_userLibrary;
  self->_userLibrary = v8;

  if ([v4 isDataSeparated])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(MCMManagedPath *)self->_userLibrary managedPathByAppendingPathComponent:@"Caches" flags:v10 ACLConfig:2 mode:493 dpClass:0xFFFFFFFFLL owner:v5];
  userCaches = self->_userCaches;
  self->_userCaches = v11;

  v13 = [(MCMManagedPath *)self->_userCaches managedPathByAppendingPathComponent:@"com.apple.containermanagerd" flags:3 ACLConfig:1 mode:493 dpClass:4 owner:v5];
  containermanagerUserCaches = self->_containermanagerUserCaches;
  self->_containermanagerUserCaches = v13;

  v15 = [(MCMManagedPath *)self->_containermanagerUserCaches managedPathByAppendingPathComponent:@"Dead" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v5];
  containermanagerUserDeathrow = self->_containermanagerUserDeathrow;
  self->_containermanagerUserDeathrow = v15;

  containermanagerUserLibrary = self->_containermanagerUserLibrary;
  self->_containermanagerUserLibrary = 0;

  containermanagerUserPendingUpdates = self->_containermanagerUserPendingUpdates;
  self->_containermanagerUserPendingUpdates = 0;

  containermanagerUserReplaceOperations = self->_containermanagerUserReplaceOperations;
  self->_containermanagerUserReplaceOperations = 0;

  containermanagerUserDeleteOperations = self->_containermanagerUserDeleteOperations;
  self->_containermanagerUserDeleteOperations = 0;

  v21 = [v4 isDataSeparated];
  if ((v21 & 1) == 0)
  {
    v22 = [(MCMManagedPath *)self->_userLibrary managedPathByAppendingPathComponent:@"MobileContainerManager" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v5];
    v23 = self->_containermanagerUserLibrary;
    self->_containermanagerUserLibrary = v22;

    v24 = [(MCMManagedPath *)self->_containermanagerUserLibrary managedPathByAppendingPathComponent:@"PendingUpdates" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v5];
    v25 = self->_containermanagerUserPendingUpdates;
    self->_containermanagerUserPendingUpdates = v24;

    v26 = [(MCMManagedPath *)self->_containermanagerUserLibrary managedPathByAppendingPathComponent:@"Replace" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v5];
    v27 = self->_containermanagerUserReplaceOperations;
    self->_containermanagerUserReplaceOperations = v26;

    v28 = [(MCMManagedPath *)self->_containermanagerUserLibrary managedPathByAppendingPathComponent:@"Delete" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:v5];
    v29 = self->_containermanagerUserDeleteOperations;
    self->_containermanagerUserDeleteOperations = v28;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (MCMManagedUserPathRegistry)initWithUserIdentity:(id)a3 daemonUser:(id)a4
{
  v19[5] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v17.receiver = self;
  v17.super_class = MCMManagedUserPathRegistry;
  v8 = [(MCMManagedPathRegistry *)&v17 initWithDaemonUser:a4 privileged:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userIdentity, a3);
    [(MCMManagedUserPathRegistry *)v9 _initPathPropertiesWithUserIdentity:v7];
    v19[0] = v9->_userHome;
    v19[1] = v9->_userLibrary;
    v19[2] = v9->_userCaches;
    v19[3] = v9->_containermanagerUserCaches;
    v19[4] = v9->_containermanagerUserDeathrow;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
    [(MCMManagedPathRegistry *)v9 _addPaths:v10];

    if (v9->_containermanagerUserLibrary)
    {
      containermanagerUserPendingUpdates = v9->_containermanagerUserPendingUpdates;
      if (containermanagerUserPendingUpdates)
      {
        containermanagerUserReplaceOperations = v9->_containermanagerUserReplaceOperations;
        if (containermanagerUserReplaceOperations)
        {
          containermanagerUserDeleteOperations = v9->_containermanagerUserDeleteOperations;
          if (containermanagerUserDeleteOperations)
          {
            v18[0] = v9->_containermanagerUserLibrary;
            v18[1] = containermanagerUserPendingUpdates;
            v18[2] = containermanagerUserReplaceOperations;
            v18[3] = containermanagerUserDeleteOperations;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
            [(MCMManagedPathRegistry *)v9 _addPaths:v14];
          }
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

@end