@interface LACOwnerInfos
- (LACContextExternalizing)context;
- (LACOwnerInfos)initWithInfo:(id)info context:(id)context;
- (NSArray)allInfos;
- (id)description;
- (unint64_t)numberOfOwnersOtherThanPid:(int)pid;
- (void)cleanup;
@end

@implementation LACOwnerInfos

- (void)cleanup
{
  allInfos = self->_allInfos;
  v3 = [(NSMutableArray *)allInfos indexesOfObjectsPassingTest:&__block_literal_global_4];
  [(NSMutableArray *)allInfos removeObjectsAtIndexes:v3];
}

BOOL __24__LACOwnerInfos_cleanup__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 proxy];
  v3 = v2 == 0;

  return v3;
}

- (LACOwnerInfos)initWithInfo:(id)info context:(id)context
{
  infoCopy = info;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = LACOwnerInfos;
  v8 = [(LACOwnerInfos *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{infoCopy, 0}];
    allInfos = v8->_allInfos;
    v8->_allInfos = v9;

    objc_storeWeak(&v8->_context, contextCopy);
  }

  return v8;
}

- (id)description
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allInfos = [(LACOwnerInfos *)self allInfos];
  v5 = [allInfos countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(allInfos);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        proxy = [v9 proxy];

        if (proxy)
        {
          proxy2 = [v9 proxy];
          [v3 addObject:proxy2];
        }
      }

      v6 = [allInfos countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = MEMORY[0x1E696AEC0];
  context = [(LACOwnerInfos *)self context];
  v14 = [v12 stringWithFormat:@"<%@ : %@>", context, v3];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)numberOfOwnersOtherThanPid:(int)pid
{
  allInfos = [(LACOwnerInfos *)self allInfos];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__LACOwnerInfos_numberOfOwnersOtherThanPid___block_invoke;
  v9[3] = &__block_descriptor_36_e39_B24__0__LACOwnerInfo_8__NSDictionary_16l;
  pidCopy = pid;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:v9];
  v6 = [allInfos filteredArrayUsingPredicate:v5];
  v7 = [v6 count];

  return v7;
}

- (NSArray)allInfos
{
  [(LACOwnerInfos *)self cleanup];
  allInfos = self->_allInfos;

  return allInfos;
}

- (LACContextExternalizing)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end