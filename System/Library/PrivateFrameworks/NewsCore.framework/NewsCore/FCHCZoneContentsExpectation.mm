@interface FCHCZoneContentsExpectation
- (void)validate;
@end

@implementation FCHCZoneContentsExpectation

- (void)validate
{
  v36[1] = *MEMORY[0x1E69E9840];
  v19 = objc_alloc_init(MEMORY[0x1E695B918]);
  v20 = self;
  v3 = [(FCHCZoneContentsExpectation *)self zoneID];
  v36[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [v19 setRecordZoneIDs:v4];

  [v19 setFetchAllChanges:1];
  v5 = [MEMORY[0x1E695DF70] array];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __39__FCHCZoneContentsExpectation_validate__block_invoke;
  v33[3] = &unk_1E7C37FE0;
  v6 = v5;
  v34 = v6;
  [v19 setRecordChangedBlock:v33];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __39__FCHCZoneContentsExpectation_validate__block_invoke_2;
  v26[3] = &unk_1E7C38008;
  v26[4] = &v27;
  [v19 setFetchRecordZoneChangesCompletionBlock:v26];
  v7 = [(FCHCZoneContentsExpectation *)self database];
  [v7 addOperation:v19];

  [v19 waitUntilFinished];
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = MEMORY[0x1E695D920];
  if (v28[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error fetching zone changes from database: %@", v28[5]}];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [(FCHCZoneContentsExpectation *)self recordTests];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v35 count:16];
  if (v10)
  {
    v11 = *v23;
    v12 = *v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __39__FCHCZoneContentsExpectation_validate__block_invoke_3;
        v21[3] = &unk_1E7C38030;
        v21[4] = v14;
        v15 = [v6 fc_containsObjectPassingTest:v21];
        [MEMORY[0x1E696AF00] isMainThread];
        if ((v15 & 1) == 0)
        {
          v16 = MEMORY[0x1E695DF30];
          v17 = [(FCHCZoneContentsExpectation *)v20 zoneID];
          [v16 raise:v12 format:{@"missing records in zone: %@\nfound: %@", v17, v6}];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v22 objects:v35 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __39__FCHCZoneContentsExpectation_validate__block_invoke_3(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 recordType];
  v5 = [*(a1 + 32) recordType];
  v6 = [v4 isEqualToString:v5];

  v7 = MEMORY[0x1E695DFD8];
  v42 = a1;
  v8 = [*(a1 + 32) unencryptedFields];
  v9 = [v7 setWithArray:v8];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v51 + 1) + 8 * v14);
        v16 = [v3 encryptedValuesByKey];
        v17 = [v16 objectForKeyedSubscript:v15];

        v6 = (v17 == 0) & v6;
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v12);
  }

  v18 = MEMORY[0x1E695DFD8];
  v19 = [*(v42 + 32) encryptedFields];
  v20 = [v18 setWithArray:v19];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v48;
    do
    {
      v25 = 0;
      do
      {
        if (*v48 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v47 + 1) + 8 * v25);
        v27 = [v3 valuesByKey];
        v28 = [v27 objectForKeyedSubscript:v26];

        v6 = (v28 == 0) & v6;
        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v23);
  }

  v41 = v10;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = [*(v42 + 32) expectedValues];
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      v33 = 0;
      do
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v43 + 1) + 8 * v33);
        v35 = [*(v42 + 32) expectedValues];
        v36 = [v35 objectForKeyedSubscript:v34];

        if ([v21 containsObject:v34])
        {
          [v3 encryptedValuesByKey];
        }

        else
        {
          [v3 valuesByKey];
        }
        v37 = ;
        v38 = [v37 objectForKeyedSubscript:v34];

        v6 = [v38 isEqual:v36] & v6;
        ++v33;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v31);
  }

  v39 = *MEMORY[0x1E69E9840];
  return v6;
}

@end