@interface CWFConfigurationProfileManager
- (BOOL)isNetworkManagedByMDM:(id)m;
- (CWFConfigurationProfileManager)init;
- (void)__updateCachedMDMManagedProfileUUIDs:(id)ds;
- (void)activate;
@end

@implementation CWFConfigurationProfileManager

- (CWFConfigurationProfileManager)init
{
  v10.receiver = self;
  v10.super_class = CWFConfigurationProfileManager;
  v2 = [(CWFConfigurationProfileManager *)&v10 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  mdmManagedProfileUUIDs = v2->_mdmManagedProfileUUIDs;
  v2->_mdmManagedProfileUUIDs = v3;

  if (!v2->_mdmManagedProfileUUIDs)
  {
    goto LABEL_6;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = qword_1ED7E3A60;
  v15 = qword_1ED7E3A60;
  if (!qword_1ED7E3A60)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1E0D4408C;
    v11[3] = &unk_1E86E5600;
    v11[4] = &v12;
    sub_1E0D4408C(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = objc_alloc_init(v5);
  mcProfileConnection = v2->_mcProfileConnection;
  v2->_mcProfileConnection = v7;

  if (!v2->_mcProfileConnection)
  {
LABEL_6:

    return 0;
  }

  return v2;
}

- (void)activate
{
  mcProfileConnection = self->_mcProfileConnection;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0D43DF4;
  v4[3] = &unk_1E86E84C0;
  v4[4] = self;
  [(MCProfileConnection *)mcProfileConnection checkInWithCompletion:v4];
  [(CWFConfigurationProfileManager *)self __updateCachedMDMManagedProfileUUIDs:0];
}

- (BOOL)isNetworkManagedByMDM:(id)m
{
  mCopy = m;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  payloadUUID = [mCopy payloadUUID];
  if (payloadUUID)
  {
    v7 = [(NSMutableSet *)selfCopy->_mdmManagedProfileUUIDs containsObject:payloadUUID];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)__updateCachedMDMManagedProfileUUIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [MEMORY[0x1E695DFA8] set];
  [(MCProfileConnection *)self->_mcProfileConnection installedProfilesWithFilterFlags:32];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v6 = v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        uUID = [*(*(&v13 + 1) + 8 * v9) UUID];
        if (uUID)
        {
          [v5 addObject:uUID];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_mdmManagedProfileUUIDs removeAllObjects];
  [(NSMutableSet *)selfCopy->_mdmManagedProfileUUIDs unionSet:v5];
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];
}

@end