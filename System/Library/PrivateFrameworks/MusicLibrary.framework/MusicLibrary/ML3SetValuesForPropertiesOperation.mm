@interface ML3SetValuesForPropertiesOperation
- (BOOL)_execute:(id *)a3;
- (BOOL)_setValues:(id)a3 forProperties:(id)a4 withEntityClass:(Class)a5 usingPersistentID:(int64_t)a6 connection:(id)a7 error:(id *)a8;
@end

@implementation ML3SetValuesForPropertiesOperation

- (BOOL)_setValues:(id)a3 forProperties:(id)a4 withEntityClass:(Class)a5 usingPersistentID:(int64_t)a6 connection:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  if (([(ML3SetValuesForPropertiesOperation *)self isCancelled]& 1) != 0)
  {
LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  if ([v14 count])
  {
    v17 = [v14 count];
    if (v17 == [v15 count])
    {
      v29 = [(ML3DatabaseOperation *)self library];
      v30 = [(objc_class *)a5 newWithPersistentID:a6 inLibrary:?];
      v18 = [(objc_class *)a5 databaseTable];
      v19 = [(objc_class *)a5 unsettableProperties];
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (([(ML3SetValuesForPropertiesOperation *)self isCancelled]& 1) != 0)
      {
        v21 = 0;
LABEL_22:

        goto LABEL_11;
      }

      v59[0] = 0;
      v59[1] = v59;
      v59[2] = 0x2020000000;
      v60 = 3;
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy__15011;
      v57 = __Block_byref_object_dispose__15012;
      v58 = 0;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __114__ML3SetValuesForPropertiesOperation__setValues_forProperties_withEntityClass_usingPersistentID_connection_error___block_invoke;
      v45[3] = &unk_2787639D0;
      v28 = v19;
      v52 = a5;
      v46 = v19;
      v50 = v59;
      v24 = v18;
      v47 = v24;
      v51 = &v53;
      v25 = v20;
      v48 = v25;
      v49 = v14;
      [v15 enumerateObjectsUsingBlock:v45];
      v26 = v54[5];
      if (v26)
      {
        if (a8)
        {
          v21 = 0;
          *a8 = v26;
LABEL_21:

          _Block_object_dispose(&v53, 8);
          _Block_object_dispose(v59, 8);
          v19 = v28;
          goto LABEL_22;
        }
      }

      else if (([(ML3SetValuesForPropertiesOperation *)self isCancelled]& 1) == 0)
      {
        v41 = 0;
        v42 = &v41;
        v43 = 0x2020000000;
        v44 = 0;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __114__ML3SetValuesForPropertiesOperation__setValues_forProperties_withEntityClass_usingPersistentID_connection_error___block_invoke_2;
        v31[3] = &unk_278763A20;
        v32 = v25;
        v40 = a5;
        v33 = v24;
        v37 = &v53;
        v34 = v16;
        v35 = v30;
        v38 = &v41;
        v39 = v59;
        v36 = v29;
        [v34 performTransactionWithBlock:v31];
        if (a8)
        {
          v27 = v54[5];
          if (v27)
          {
            *a8 = v27;
          }
        }

        v21 = *(v42 + 24);

        _Block_object_dispose(&v41, 8);
        goto LABEL_21;
      }

      v21 = 0;
      goto LABEL_21;
    }

    v22 = [ML3MediaLibraryWriter writerErrorWithCode:500 description:@"Values and properties arrays are not equal length."];
    if (a8)
    {
      v22 = v22;
      *a8 = v22;
    }

    goto LABEL_10;
  }

  v21 = 1;
LABEL_11:

  return v21 & 1;
}

void __114__ML3SetValuesForPropertiesOperation__setValues_forProperties_withEntityClass_usingPersistentID_connection_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0 && (objc_msgSend(v24, "isEqualToString:", @"ROWID") & 1) == 0)
  {
    v7 = [*(a1 + 80) libraryContentsChangeForProperty:v24];
    v8 = *(*(a1 + 64) + 8);
    if (v7)
    {
      *(v8 + 24) = 0;
LABEL_5:
      v9 = v24;
      goto LABEL_11;
    }

    v9 = v24;
    if (*(v8 + 24) >= 2u)
    {
      v10 = [*(a1 + 80) libraryDynamicChangeForProperty:v24];
      v11 = *(*(a1 + 64) + 8);
      if (v10)
      {
        *(v11 + 24) = 1;
        goto LABEL_5;
      }

      v9 = v24;
      if (*(v11 + 24) >= 3u)
      {
        *(v11 + 24) = 2;
      }
    }

LABEL_11:
    v12 = [*(a1 + 80) joinClausesForProperty:v9];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [*(a1 + 80) foreignDatabaseTableForProperty:v24];
      v15 = [*(a1 + 80) foreignColumnForProperty:v24];
    }

    else
    {
      v14 = *(a1 + 40);
      v15 = v24;
    }

    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        v17 = [*(a1 + 48) objectForKeyedSubscript:v14];
        if (!v17)
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [*(a1 + 48) setObject:v17 forKeyedSubscript:v14];
        }

        v18 = [*(a1 + 56) objectAtIndexedSubscript:a3];
        if (v18)
        {
          [v17 setObject:v18 forKeyedSubscript:v16];
        }

        else
        {
          v23 = [MEMORY[0x277CBEB68] null];
          [v17 setObject:v23 forKeyedSubscript:v16];
        }

        goto LABEL_25;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"no column for %@ / %@", *(a1 + 80), v24];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"no table for %@ / %@", *(a1 + 80), v24];
    }
    v19 = ;
    v20 = [ML3MediaLibraryWriter writerErrorWithCode:200 description:v19];
    v21 = *(*(a1 + 72) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    *a4 = 1;
LABEL_25:
  }
}

uint64_t __114__ML3SetValuesForPropertiesOperation__setValues_forProperties_withEntityClass_usingPersistentID_connection_error___block_invoke_2(uint64_t a1)
{
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __114__ML3SetValuesForPropertiesOperation__setValues_forProperties_withEntityClass_usingPersistentID_connection_error___block_invoke_3;
  v13 = &unk_2787639F8;
  v19 = *(a1 + 96);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v14 = v3;
  v17 = v4;
  v15 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v16 = v5;
  v18 = v6;
  [v2 enumerateKeysAndObjectsUsingBlock:&v10];
  v7 = *(a1 + 80);
  if (!*(*(*(a1 + 72) + 8) + 40) && *(*(v7 + 8) + 24) == 1 && *(*(*(a1 + 88) + 8) + 24) <= 1u)
  {
    *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 96) incrementRevisionWithLibrary:*(a1 + 64) persistentID:objc_msgSend(*(a1 + 56) deletionType:"persistentID" revisionType:v10 usingConnection:{v11, v12, v13, v14, v15), 0, *(*(*(a1 + 88) + 8) + 24), *(a1 + 48)}];
    v7 = *(a1 + 80);
  }

  v8 = *(*(v7 + 8) + 24);

  return v8;
}

void __114__ML3SetValuesForPropertiesOperation__setValues_forProperties_withEntityClass_usingPersistentID_connection_error___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 72) persistentIDColumnForTable:v7];
  if ([*(a1 + 32) isEqualToString:v7])
  {
    v31 = a4;
    v10 = @"ROWID";

    v9 = @"ROWID";
    goto LABEL_6;
  }

  if (v9)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT 1 FROM %@ WHERE %@ = ? LIMIT 1", v7, v9];;
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 48), "persistentID")}];
    v36[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v15 = [v12 executeQuery:v11 withParameters:v14];

    LODWORD(v13) = [v15 hasAtLeastOneRow];
    if (!v13)
    {
      *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 72) insertValues:v8 intoTable:v7 persistentID:objc_msgSend(*(a1 + 48) connection:{"persistentID"), *(a1 + 40)}];
LABEL_7:
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v31 = a4;
LABEL_6:
    v16 = [v8 count];
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:v16];
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:v16];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __114__ML3SetValuesForPropertiesOperation__setValues_forProperties_withEntityClass_usingPersistentID_connection_error___block_invoke_4;
    v33[3] = &unk_278765658;
    v34 = v17;
    v35 = v18;
    v19 = v18;
    v20 = v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v33];
    v21 = [v20 componentsJoinedByString:{@", "}];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE %@ SET %@ WHERE %@ = ?", v7, v21, v9];;
    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 48), "persistentID")}];
    [v19 addObject:v23];

    v24 = *(a1 + 40);
    v25 = *(*(a1 + 56) + 8);
    obj = *(v25 + 40);
    v26 = [v24 executeUpdate:v22 withParameters:v19 error:&obj];
    objc_storeStrong((v25 + 40), obj);
    *(*(*(a1 + 64) + 8) + 24) = v26;

    a4 = v31;
    goto LABEL_7;
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"no pidColumn for %@ / %@", *(a1 + 72), v7];
  v28 = [ML3MediaLibraryWriter writerErrorWithCode:200 description:v27];
  v29 = *(*(a1 + 56) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  v9 = 0;
LABEL_10:
  *a4 = 1;
LABEL_11:
}

void __114__ML3SetValuesForPropertiesOperation__setValues_forProperties_withEntityClass_usingPersistentID_connection_error___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v8 = a3;
  v7 = [v6 stringWithFormat:@"%@ = ?", a2];
  [v5 addObject:v7];

  [*(a1 + 40) addObject:v8];
}

- (BOOL)_execute:(id *)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v40 = [(ML3DatabaseOperation *)self attributes];
  v33 = [v40 objectForKeyedSubscript:@"MLDatabaseOperationAttributePersistentIDsArrayKey"];
  v3 = [v40 objectForKeyedSubscript:@"MLDatabaseOperationAttributeApplyDifferentValuesToPIDs"];
  v32 = v3;
  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v40 objectForKeyedSubscript:@"MLDatabaseOperationAttributeEntityClassKey"];
  v38 = NSClassFromString(v5);

  v39 = [v40 objectForKeyedSubscript:@"MLDatabaseOperationAttributeValuesKey"];
  if (v4)
  {
    v51 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v48 = 0uLL;
    obj = v33;
    v36 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v36)
    {
      LODWORD(v6) = 0;
      v7 = 0;
      v35 = *v49;
      while (2)
      {
        v8 = 0;
        v6 = v6;
        v9 = v7;
        do
        {
          if (*v49 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v48 + 1) + 8 * v8);
          v11 = [v10 longLongValue];
          v12 = [v39 objectAtIndexedSubscript:v6];
          v13 = [v40 objectForKeyedSubscript:@"MLDatabaseOperationAttributePropertiesKey"];
          v14 = [(ML3DatabaseOperation *)self transaction];
          v15 = [v14 connection];

          v47 = v9;
          LOBYTE(v14) = [(ML3SetValuesForPropertiesOperation *)self _setValues:v12 forProperties:v13 withEntityClass:v38 usingPersistentID:v11 connection:v15 error:&v47];
          v7 = v47;

          if ((v14 & 1) == 0)
          {
            v27 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v10 longLongValue];
              *buf = 134218242;
              v54 = v28;
              v55 = 2114;
              v56 = v7;
              _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_DEFAULT, "[ML3SetValuesForPropertiesOperation] Failed to set values for persistent ID %lld, error=%{public}@", buf, 0x16u);
            }

            v16 = 0;
            goto LABEL_30;
          }

          ++v6;
          v8 = v8 + 1;
          v16 = 1;
          v9 = v7;
        }

        while (v36 != v8);
        v36 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v36)
        {
          continue;
        }

        goto LABEL_31;
      }
    }

LABEL_23:
    v7 = 0;
    v16 = 0;
    goto LABEL_31;
  }

  v45 = 0uLL;
  v46 = 0uLL;
  v43 = 0uLL;
  v44 = 0uLL;
  v37 = v33;
  v17 = [v37 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (!v17)
  {
    goto LABEL_23;
  }

  v7 = 0;
  v18 = *v44;
  while (2)
  {
    v19 = 0;
    v20 = v7;
    do
    {
      if (*v44 != v18)
      {
        objc_enumerationMutation(v37);
      }

      v21 = *(*(&v43 + 1) + 8 * v19);
      v22 = [v21 longLongValue];
      v12 = [v40 objectForKeyedSubscript:@"MLDatabaseOperationAttributePropertiesKey"];
      v23 = [(ML3DatabaseOperation *)self transaction];
      v24 = [v23 connection];

      v42 = v20;
      LOBYTE(v23) = [(ML3SetValuesForPropertiesOperation *)self _setValues:v39 forProperties:v12 withEntityClass:v38 usingPersistentID:v22 connection:v24 error:&v42];
      v7 = v42;

      if ((v23 & 1) == 0)
      {
        v25 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v21 longLongValue];
          *buf = 134218242;
          v54 = v26;
          v55 = 2114;
          v56 = v7;
          _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_DEFAULT, "[ML3SetValuesForPropertiesOperation] Failed to set values for persistent ID %lld, error=%{public}@", buf, 0x16u);
        }

        v16 = 0;
LABEL_30:

        goto LABEL_31;
      }

      ++v19;
      v16 = 1;
      v20 = v7;
    }

    while (v17 != v19);
    v17 = [v37 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v29 = v7;
  *a3 = v7;

  return v16 & 1;
}

@end