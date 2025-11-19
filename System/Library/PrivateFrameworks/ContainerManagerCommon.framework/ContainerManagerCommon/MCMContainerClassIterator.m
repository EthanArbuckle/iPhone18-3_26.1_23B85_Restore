@interface MCMContainerClassIterator
- (MCMContainerClassIterator)initWithStaticConfig:(id)a3;
- (MCMContainerClassIterator)initWithStaticConfig:(id)a3 userIdentityCache:(id)a4;
- (MCMStaticConfiguration)staticConfig;
- (MCMUserIdentityCache)userIdentityCache;
- (void)_selectWithFlags:(unint64_t)a3 includeUserIdentities:(BOOL)a4 iterator:(id)a5;
- (void)selectAutorollingWithIterator:(id)a3;
- (void)selectAutorollingWithUserIdentityIterator:(id)a3;
- (void)selectBundleWithIterator:(id)a3;
- (void)selectBundleWithUserIdentityIterator:(id)a3;
- (void)selectDataProtectedWithIterator:(id)a3;
- (void)selectDataProtectedWithUserIdentityIterator:(id)a3;
- (void)selectGlobalWithIterator:(id)a3;
- (void)selectGlobalWithUserIdentityIterator:(id)a3;
- (void)selectRemoteWithIterator:(id)a3;
- (void)selectRemoteWithUserIdentityIterator:(id)a3;
- (void)selectSystemWithIterator:(id)a3;
- (void)selectSystemWithUserIdentityIterator:(id)a3;
- (void)selectUserDataWithIterator:(id)a3;
- (void)selectUserDataWithUserIdentityIterator:(id)a3;
- (void)selectUserWithIterator:(id)a3;
- (void)selectUserWithUserIdentityIterator:(id)a3;
- (void)selectWithFlags:(unint64_t)a3 iterator:(id)a4;
- (void)selectWithFlags:(unint64_t)a3 userIdentityIterator:(id)a4;
- (void)selectWithIterator:(id)a3;
@end

@implementation MCMContainerClassIterator

- (MCMStaticConfiguration)staticConfig
{
  result = self->_staticConfig;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)_selectWithFlags:(unint64_t)a3 includeUserIdentities:(BOOL)a4 iterator:(id)a5
{
  v5 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (!v5 || ([(MCMContainerClassIterator *)self userIdentityCache], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v10 = [(MCMContainerClassIterator *)self staticConfig];
    v11 = [v10 containerConfigMap];

    v12 = [v11 countByEnumeratingWithState:&v49 objects:v48 count:16];
    if (!v12)
    {
      goto LABEL_63;
    }

    v13 = v12;
    v39 = *v50;
    v38 = v5;
    v36 = self;
    v37 = v8;
    v35 = v11;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v49 + 1) + 8 * i);
        v16 = [(MCMContainerClassIterator *)self staticConfig:v35];
        v17 = [v16 containerConfigMap];
        v18 = [v17 objectForKeyedSubscript:v15];

        if ((a3 & 0x10000) != 0 || [v18 supportedOnPlatform])
        {
          v19 = [v18 containerClass];
          if ((a3 & 0x20000) != 0 || (v20 = [v18 containerClass], v20 == container_class_normalized()))
          {
            if ((a3 & 0xB0000) != 0 || ([v18 handledDirectly] & 1) != 0 || objc_msgSend(v18, "handledByProxy"))
            {
              if ((a3 & 0x200040000) != 0)
              {
                if ((a3 & 0x200000000) != 0 && ![v18 handledByProxy])
                {
                  goto LABEL_61;
                }
              }

              else if ([v18 handledByProxy])
              {
                goto LABEL_61;
              }

              if (((a3 & 0x400000000) == 0 || v19 <= 0xB && ((1 << v19) & 0xED4) != 0) && ((a3 & 0x800000000) == 0 || v19 <= 0xE && ((1 << v19) & 0x4ED4) != 0))
              {
                v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
                if (((a3 & 0x1000000000) == 0 || v21 == 12) && ((a3 & 0x2000000000) == 0 || v19 <= 0xE && ((1 << v19) & 0x412A) != 0) && ((a3 & 0x4000000000) == 0 || v19 == 4 || v19 == 2) && ((a3 & 0x20000000000) == 0 || v21 == 12 || v19 <= 8 && ((1 << v19) & 0x12A) != 0) && ((a3 & 0x8000000000) == 0 || [v18 autoRollsPathOnBuildUpdate]) && ((a3 & 0x10000000000) == 0 || objc_msgSend(v18, "migrateCodeSignInfoFromMetadataToDB")))
                {
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __77__MCMContainerClassIterator__selectWithFlags_includeUserIdentities_iterator___block_invoke;
                  aBlock[3] = &unk_1E86B0668;
                  v42 = a3;
                  v41 = v8;
                  v22 = _Block_copy(aBlock);
                  v23 = v22;
                  if (v5)
                  {
                    if ([v18 usesGlobalSystemUserIdentity])
                    {
                      v24 = MEMORY[0x1E695DFD8];
                      v25 = [(MCMContainerClassIterator *)self userIdentityCache];
                      v26 = [v25 globalSystemUserIdentity];
                      goto LABEL_51;
                    }

                    if ([v18 usesGlobalBundleUserIdentity])
                    {
                      v24 = MEMORY[0x1E695DFD8];
                      v25 = [(MCMContainerClassIterator *)self userIdentityCache];
                      v26 = [v25 globalBundleUserIdentity];
                      goto LABEL_51;
                    }

                    if ([v18 personaAndUserSpecific])
                    {
                      v25 = [(MCMContainerClassIterator *)self userIdentityCache];
                      v27 = [v25 allAccessibleUserIdentities];
                    }

                    else
                    {
                      v24 = MEMORY[0x1E695DFD8];
                      v25 = [(MCMContainerClassIterator *)self userIdentityCache];
                      v26 = [v25 defaultUserIdentity];
LABEL_51:
                      v28 = v26;
                      v27 = [v24 setWithObject:v26];
                    }

                    v46 = 0u;
                    v47 = 0u;
                    v44 = 0u;
                    v45 = 0u;
                    v29 = v27;
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

                    v5 = v38;
                    self = v36;
                    v8 = v37;
                    v11 = v35;
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

      v13 = [v11 countByEnumeratingWithState:&v49 objects:v48 count:16];
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

- (void)selectAutorollingWithIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x8000000000 iterator:a3];
}

- (void)selectDataProtectedWithIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x4000000000 iterator:a3];
}

- (void)selectGlobalWithIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x20000000000 iterator:a3];
}

- (void)selectBundleWithIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x2000000000 iterator:a3];
}

- (void)selectSystemWithIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x1000000000 iterator:a3];
}

- (void)selectUserWithIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x800000000 iterator:a3];
}

- (void)selectRemoteWithIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x200000000 iterator:a3];
}

- (void)selectUserDataWithIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x400000000 iterator:a3];
}

- (void)selectWithIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0 iterator:a3];
}

- (void)selectWithFlags:(unint64_t)a3 iterator:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MCMContainerClassIterator_selectWithFlags_iterator___block_invoke;
  v9[3] = &unk_1E86B0640;
  v10 = v6;
  v7 = v6;
  [(MCMContainerClassIterator *)self _selectWithFlags:a3 includeUserIdentities:0 iterator:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __54__MCMContainerClassIterator_selectWithFlags_iterator___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

- (MCMContainerClassIterator)initWithStaticConfig:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [(MCMContainerClassIterator *)self initWithStaticConfig:a3 userIdentityCache:0];
}

- (void)selectAutorollingWithUserIdentityIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x8000000000 userIdentityIterator:a3];
}

- (void)selectDataProtectedWithUserIdentityIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x4000000000 userIdentityIterator:a3];
}

- (void)selectGlobalWithUserIdentityIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x20000000000 userIdentityIterator:a3];
}

- (void)selectBundleWithUserIdentityIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x2000000000 userIdentityIterator:a3];
}

- (void)selectSystemWithUserIdentityIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x1000000000 userIdentityIterator:a3];
}

- (void)selectUserWithUserIdentityIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x800000000 userIdentityIterator:a3];
}

- (void)selectRemoteWithUserIdentityIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x200000000 userIdentityIterator:a3];
}

- (void)selectUserDataWithUserIdentityIterator:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassIterator *)self selectWithFlags:0x20000000000 userIdentityIterator:a3];
}

- (void)selectWithFlags:(unint64_t)a3 userIdentityIterator:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__MCMContainerClassIterator_UserIdentity__selectWithFlags_userIdentityIterator___block_invoke;
  v9[3] = &unk_1E86B0640;
  v10 = v6;
  v7 = v6;
  [(MCMContainerClassIterator *)self _selectWithFlags:a3 includeUserIdentities:1 iterator:v9];

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

- (MCMContainerClassIterator)initWithStaticConfig:(id)a3 userIdentityCache:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MCMContainerClassIterator;
  v9 = [(MCMContainerClassIterator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_staticConfig, a3);
    objc_storeStrong(&v10->_userIdentityCache, a4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

@end