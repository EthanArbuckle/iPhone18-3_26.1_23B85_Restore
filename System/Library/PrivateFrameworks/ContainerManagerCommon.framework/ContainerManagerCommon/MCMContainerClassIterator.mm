@interface MCMContainerClassIterator
- (MCMContainerClassIterator)initWithStaticConfig:(id)config;
- (MCMContainerClassIterator)initWithStaticConfig:(id)config userIdentityCache:(id)cache;
- (MCMStaticConfiguration)staticConfig;
- (MCMUserIdentityCache)userIdentityCache;
- (void)_selectWithFlags:(unint64_t)flags includeUserIdentities:(BOOL)identities iterator:(id)iterator;
- (void)selectAutorollingWithIterator:(id)iterator;
- (void)selectAutorollingWithUserIdentityIterator:(id)iterator;
- (void)selectBundleWithIterator:(id)iterator;
- (void)selectBundleWithUserIdentityIterator:(id)iterator;
- (void)selectDataProtectedWithIterator:(id)iterator;
- (void)selectDataProtectedWithUserIdentityIterator:(id)iterator;
- (void)selectGlobalWithIterator:(id)iterator;
- (void)selectGlobalWithUserIdentityIterator:(id)iterator;
- (void)selectRemoteWithIterator:(id)iterator;
- (void)selectRemoteWithUserIdentityIterator:(id)iterator;
- (void)selectSystemWithIterator:(id)iterator;
- (void)selectSystemWithUserIdentityIterator:(id)iterator;
- (void)selectUserDataWithIterator:(id)iterator;
- (void)selectUserDataWithUserIdentityIterator:(id)iterator;
- (void)selectUserWithIterator:(id)iterator;
- (void)selectUserWithUserIdentityIterator:(id)iterator;
- (void)selectWithFlags:(unint64_t)flags iterator:(id)iterator;
- (void)selectWithFlags:(unint64_t)flags userIdentityIterator:(id)iterator;
- (void)selectWithIterator:(id)iterator;
@end

@implementation MCMContainerClassIterator

- (MCMStaticConfiguration)staticConfig
{
  result = self->_staticConfig;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)_selectWithFlags:(unint64_t)flags includeUserIdentities:(BOOL)identities iterator:(id)iterator
{
  identitiesCopy = identities;
  v53 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  if (!identitiesCopy || ([(MCMContainerClassIterator *)self userIdentityCache], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    staticConfig = [(MCMContainerClassIterator *)self staticConfig];
    containerConfigMap = [staticConfig containerConfigMap];

    v12 = [containerConfigMap countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (!v12)
    {
      goto LABEL_63;
    }

    v13 = v12;
    v39 = *v50;
    v38 = identitiesCopy;
    selfCopy = self;
    v37 = iteratorCopy;
    v35 = containerConfigMap;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(containerConfigMap);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = [(MCMContainerClassIterator *)self staticConfig:v35];
        containerConfigMap2 = [v16 containerConfigMap];
        v18 = [containerConfigMap2 objectForKeyedSubscript:v15];

        if ((flags & 0x10000) != 0 || [v18 supportedOnPlatform])
        {
          containerClass = [v18 containerClass];
          if ((flags & 0x20000) != 0 || (v20 = [v18 containerClass], v20 == container_class_normalized()))
          {
            if ((flags & 0xB0000) != 0 || ([v18 handledDirectly] & 1) != 0 || objc_msgSend(v18, "handledByProxy"))
            {
              if ((flags & 0x200040000) != 0)
              {
                if ((flags & 0x200000000) != 0 && ![v18 handledByProxy])
                {
                  goto LABEL_61;
                }
              }

              else if ([v18 handledByProxy])
              {
                goto LABEL_61;
              }

              if (((flags & 0x400000000) == 0 || containerClass <= 0xB && ((1 << containerClass) & 0xED4) != 0) && ((flags & 0x800000000) == 0 || containerClass <= 0xE && ((1 << containerClass) & 0x4ED4) != 0))
              {
                v21 = containerClass & 0xFFFFFFFFFFFFFFFELL;
                if (((flags & 0x1000000000) == 0 || v21 == 12) && ((flags & 0x2000000000) == 0 || containerClass <= 0xE && ((1 << containerClass) & 0x412A) != 0) && ((flags & 0x4000000000) == 0 || containerClass == 4 || containerClass == 2) && ((flags & 0x20000000000) == 0 || v21 == 12 || containerClass <= 8 && ((1 << containerClass) & 0x12A) != 0) && ((flags & 0x8000000000) == 0 || [v18 autoRollsPathOnBuildUpdate]) && ((flags & 0x10000000000) == 0 || objc_msgSend(v18, "migrateCodeSignInfoFromMetadataToDB")))
                {
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __77__MCMContainerClassIterator__selectWithFlags_includeUserIdentities_iterator___block_invoke;
                  aBlock[3] = &unk_1E86B0668;
                  flagsCopy = flags;
                  v41 = iteratorCopy;
                  v22 = _Block_copy(aBlock);
                  v23 = v22;
                  if (identitiesCopy)
                  {
                    if ([v18 usesGlobalSystemUserIdentity])
                    {
                      v24 = MEMORY[0x1E695DFD8];
                      userIdentityCache = [(MCMContainerClassIterator *)self userIdentityCache];
                      globalSystemUserIdentity = [userIdentityCache globalSystemUserIdentity];
                      goto LABEL_51;
                    }

                    if ([v18 usesGlobalBundleUserIdentity])
                    {
                      v24 = MEMORY[0x1E695DFD8];
                      userIdentityCache = [(MCMContainerClassIterator *)self userIdentityCache];
                      globalSystemUserIdentity = [userIdentityCache globalBundleUserIdentity];
                      goto LABEL_51;
                    }

                    if ([v18 personaAndUserSpecific])
                    {
                      userIdentityCache = [(MCMContainerClassIterator *)self userIdentityCache];
                      allAccessibleUserIdentities = [userIdentityCache allAccessibleUserIdentities];
                    }

                    else
                    {
                      v24 = MEMORY[0x1E695DFD8];
                      userIdentityCache = [(MCMContainerClassIterator *)self userIdentityCache];
                      globalSystemUserIdentity = [userIdentityCache defaultUserIdentity];
LABEL_51:
                      v28 = globalSystemUserIdentity;
                      allAccessibleUserIdentities = [v24 setWithObject:globalSystemUserIdentity];
                    }

                    v46 = 0u;
                    v47 = 0u;
                    v44 = 0u;
                    v45 = 0u;
                    v29 = allAccessibleUserIdentities;
                    v30 = [v29 countByEnumeratingWithState:&v44 objects:v43 count:16];
                    if (v30)
                    {
                      v31 = v30;
                      v32 = *v45;
                      do
                      {
                        for (j = 0; j != v31; ++j)
                        {
                          if (*v45 != v32)
                          {
                            objc_enumerationMutation(v29);
                          }

                          (v23)[2](v23, v18, *(*(&v44 + 1) + 8 * j));
                        }

                        v31 = [v29 countByEnumeratingWithState:&v44 objects:v43 count:16];
                      }

                      while (v31);
                    }

                    identitiesCopy = v38;
                    self = selfCopy;
                    iteratorCopy = v37;
                    containerConfigMap = v35;
                  }

                  else
                  {
                    (*(v22 + 2))(v22, v18, 0);
                  }
                }
              }
            }
          }
        }

LABEL_61:
      }

      v13 = [containerConfigMap countByEnumeratingWithState:&v49 objects:v48 count:16];
      if (!v13)
      {
LABEL_63:

        v34 = *MEMORY[0x1E69E9840];
        return;
      }
    }
  }

  _os_crash();
  __break(1u);
}

void __77__MCMContainerClassIterator__selectWithFlags_includeUserIdentities_iterator___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v5 = a3;
  if (*(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    (*(*(a1 + 32) + 16))();
    objc_autoreleasePoolPop(v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)selectAutorollingWithIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x8000000000 iterator:iterator];
}

- (void)selectDataProtectedWithIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x4000000000 iterator:iterator];
}

- (void)selectGlobalWithIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x20000000000 iterator:iterator];
}

- (void)selectBundleWithIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x2000000000 iterator:iterator];
}

- (void)selectSystemWithIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x1000000000 iterator:iterator];
}

- (void)selectUserWithIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x800000000 iterator:iterator];
}

- (void)selectRemoteWithIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x200000000 iterator:iterator];
}

- (void)selectUserDataWithIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x400000000 iterator:iterator];
}

- (void)selectWithIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0 iterator:iterator];
}

- (void)selectWithFlags:(unint64_t)flags iterator:(id)iterator
{
  v11 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MCMContainerClassIterator_selectWithFlags_iterator___block_invoke;
  v9[3] = &unk_1E86B0640;
  v10 = iteratorCopy;
  v7 = iteratorCopy;
  [(MCMContainerClassIterator *)self _selectWithFlags:flags includeUserIdentities:0 iterator:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __54__MCMContainerClassIterator_selectWithFlags_iterator___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

- (MCMContainerClassIterator)initWithStaticConfig:(id)config
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMContainerClassIterator *)self initWithStaticConfig:config userIdentityCache:0];
}

- (void)selectAutorollingWithUserIdentityIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x8000000000 userIdentityIterator:iterator];
}

- (void)selectDataProtectedWithUserIdentityIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x4000000000 userIdentityIterator:iterator];
}

- (void)selectGlobalWithUserIdentityIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x20000000000 userIdentityIterator:iterator];
}

- (void)selectBundleWithUserIdentityIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x2000000000 userIdentityIterator:iterator];
}

- (void)selectSystemWithUserIdentityIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x1000000000 userIdentityIterator:iterator];
}

- (void)selectUserWithUserIdentityIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x800000000 userIdentityIterator:iterator];
}

- (void)selectRemoteWithUserIdentityIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x200000000 userIdentityIterator:iterator];
}

- (void)selectUserDataWithUserIdentityIterator:(id)iterator
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x20000000000 userIdentityIterator:iterator];
}

- (void)selectWithFlags:(unint64_t)flags userIdentityIterator:(id)iterator
{
  v11 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__MCMContainerClassIterator_UserIdentity__selectWithFlags_userIdentityIterator___block_invoke;
  v9[3] = &unk_1E86B0640;
  v10 = iteratorCopy;
  v7 = iteratorCopy;
  [(MCMContainerClassIterator *)self _selectWithFlags:flags includeUserIdentities:1 iterator:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __80__MCMContainerClassIterator_UserIdentity__selectWithFlags_userIdentityIterator___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = *(*(result + 32) + 16);
    v4 = *MEMORY[0x1E69E9840];
    v5 = *MEMORY[0x1E69E9840];

    return v3();
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];
    v7 = *MEMORY[0x1E69E9840];
  }

  return result;
}

- (MCMUserIdentityCache)userIdentityCache
{
  userIdentityCache = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];

  return userIdentityCache;
}

- (MCMContainerClassIterator)initWithStaticConfig:(id)config userIdentityCache:(id)cache
{
  v14 = *MEMORY[0x1E69E9840];
  configCopy = config;
  cacheCopy = cache;
  v13.receiver = self;
  v13.super_class = MCMContainerClassIterator;
  v9 = [(MCMContainerClassIterator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_staticConfig, config);
    objc_storeStrong(&v10->_userIdentityCache, cache);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end