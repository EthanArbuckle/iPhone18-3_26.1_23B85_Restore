@interface SYObjectChangeSet
- (SYObjectChangeSet)init;
- (SYObjectChangeSet)initWithChangesBetween:(id)between and:(id)and;
- (id)changesBetween:(id)between and:(id)and;
- (void)applyToStore:(id)store;
@end

@implementation SYObjectChangeSet

- (id)changesBetween:(id)between and:(id)and
{
  v55 = *MEMORY[0x1E69E9840];
  betweenCopy = between;
  andCopy = and;
  v7 = andCopy;
  v8 = 0;
  if (betweenCopy && andCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:betweenCopy];
    v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v7];
    v8 = objc_alloc_init(SYObjectChangeSet);
    added = [(SYObjectChangeSet *)v8 added];
    [added addObjectsFromArray:v7];

    added2 = [(SYObjectChangeSet *)v8 added];
    [added2 minusSet:v9];

    deleted = [(SYObjectChangeSet *)v8 deleted];
    [deleted addObjectsFromArray:betweenCopy];

    deleted2 = [(SYObjectChangeSet *)v8 deleted];
    [deleted2 minusSet:v10];

    added3 = [(SYObjectChangeSet *)v8 added];
    if ([added3 count])
    {
      deleted3 = [(SYObjectChangeSet *)v8 deleted];
      v17 = [deleted3 count];

      if (v17)
      {
        v35 = v10;
        v36 = v9;
        v37 = v7;
        v38 = betweenCopy;
        v44 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        obj = [(SYObjectChangeSet *)v8 added];
        v41 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v41)
        {
          v40 = *v50;
          do
          {
            v18 = 0;
            do
            {
              if (*v50 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v42 = v18;
              v19 = *(*(&v49 + 1) + 8 * v18);
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v20 = v8;
              v21 = [(SYObjectChangeSet *)v8 deleted:v35];
              v22 = [v21 countByEnumeratingWithState:&v45 objects:v53 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v46;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v46 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v45 + 1) + 8 * i);
                    syncId = [v19 syncId];
                    syncId2 = [v26 syncId];
                    v29 = [syncId isEqual:syncId2];

                    if (v29)
                    {
                      [v44 addObject:v19];
                      [v43 addObject:v26];
                      updated = [(SYObjectChangeSet *)v20 updated];
                      [updated addObject:v19];
                    }
                  }

                  v23 = [v21 countByEnumeratingWithState:&v45 objects:v53 count:16];
                }

                while (v23);
              }

              v18 = v42 + 1;
              v8 = v20;
            }

            while (v42 + 1 != v41);
            v41 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
          }

          while (v41);
        }

        added4 = [(SYObjectChangeSet *)v8 added];
        [added4 minusSet:v44];

        deleted4 = [(SYObjectChangeSet *)v8 deleted];
        [deleted4 minusSet:v43];

        v7 = v37;
        betweenCopy = v38;
        v10 = v35;
        v9 = v36;
      }
    }

    else
    {
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return v8;
}

- (SYObjectChangeSet)init
{
  v10.receiver = self;
  v10.super_class = SYObjectChangeSet;
  v2 = [(SYObjectChangeSet *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    added = v2->_added;
    v2->_added = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    updated = v2->_updated;
    v2->_updated = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    deleted = v2->_deleted;
    v2->_deleted = v7;
  }

  return v2;
}

- (SYObjectChangeSet)initWithChangesBetween:(id)between and:(id)and
{
  betweenCopy = between;
  andCopy = and;
  v18.receiver = self;
  v18.super_class = SYObjectChangeSet;
  v8 = [(SYObjectChangeSet *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(SYObjectChangeSet *)v8 changesBetween:betweenCopy and:andCopy];
    added = [v10 added];
    added = v9->_added;
    v9->_added = added;

    updated = [v10 updated];
    updated = v9->_updated;
    v9->_updated = updated;

    deleted = [v10 deleted];
    deleted = v9->_deleted;
    v9->_deleted = deleted;
  }

  return v9;
}

- (void)applyToStore:(id)store
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SYObjectChangeSet_applyToStore___block_invoke;
  v3[3] = &unk_1E86C9C88;
  v3[4] = self;
  [store transaction:v3];
}

void __34__SYObjectChangeSet_applyToStore___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [*(a1 + 32) added];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v28 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [*(a1 + 32) updated];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 updateObject:*(*(&v24 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [*(a1 + 32) deleted];
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v3 deleteObject:*(*(&v20 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end