@interface DPStorage
@end

@implementation DPStorage

uint64_t __31___DPStorage_removeBadObjects___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (objc_opt_isKindOfClass())
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void __29___DPStorage_errorStringFor___block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_283975F58;
  v3[1] = &unk_283975F70;
  v4[0] = @"Not an error";
  v4[1] = @"Unknown error";
  v3[2] = &unk_283975F88;
  v3[3] = &unk_283975FA0;
  v4[2] = @"Invalid parameter";
  v4[3] = @"Empty Array";
  v3[4] = &unk_283975FB8;
  v3[5] = &unk_283975FD0;
  v4[4] = @"Empty Array after removing bad objects";
  v4[5] = @"Permission denied";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = errorStringFor__errorsDict;
  errorStringFor__errorsDict = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __47___DPStorage_handleEmptyArrayError_completion___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [objc_opt_class() errorStringFor:a1[6]];
  v4 = a1[5];
  v5 = MEMORY[0x277CCA9B8];
  v6 = +[_DPStrings errorDomain];
  v7 = a1[6];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:v6 code:v7 userInfo:v8];
  (*(v4 + 16))(v4, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
}

void __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() errorStringFor:5];
  v4 = MEMORY[0x277CCA9B8];
  v5 = +[_DPStrings errorDomain];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:v5 code:5 userInfo:v6];

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

void __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() createFetchRequestFor:*(a1 + 40) entityName:*(a1 + 48) predicate:*(a1 + 56) fetchLimit:0 fetchOffset:0];
  [v3 setIncludesSubentities:0];
  [v3 setIncludesPropertyValues:0];
  [v3 setResultType:4];
  v4 = *(a1 + 40);
  v19 = 0;
  v5 = [v4 countForFetchRequest:v3 error:&v19];
  v6 = v19;
  if (v6)
  {
    v7 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_81;
    block[3] = &unk_27858AFB8;
    v18 = *(a1 + 72);
    v17 = v6;
    dispatch_async(v7, block);

    [*(a1 + 40) reset];
    v8 = &v18;
    v9 = &v17;
  }

  else
  {
    [*(a1 + 40) reset];
    v10 = [*(a1 + 32) queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_2_82;
    v12[3] = &unk_27858AFE0;
    v15[0] = *(a1 + 72);
    v15[1] = v5;
    v13 = 0;
    v14 = *(a1 + 64);
    dispatch_async(v10, v12);

    v8 = v15;
    v9 = &v13;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __61___DPStorage_fetchRecordCountForEntity_predicate_completion___block_invoke_2_82(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[7];
  v4 = a1[4];
  (*(a1[6] + 16))();

  objc_autoreleasePoolPop(v2);
}

void __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() errorStringFor:5];
  v4 = MEMORY[0x277CCA9B8];
  v5 = +[_DPStrings errorDomain];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:v5 code:5 userInfo:v6];

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

void __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() createFetchRequestFor:*(a1 + 40) entityName:*(a1 + 48) predicate:*(a1 + 56) fetchLimit:*(a1 + 80) fetchOffset:*(a1 + 88)];
  [v3 setIncludesSubentities:0];
  [v3 setPropertiesToFetch:&unk_2839762D8];
  [v3 setPropertiesToGroupBy:&unk_2839762F0];
  [v3 setResultType:2];
  v4 = *(a1 + 40);
  v29 = 0;
  v16 = [v4 executeFetchRequest:v3 error:&v29];
  v5 = v29;
  if (v5)
  {
    v6 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_90;
    block[3] = &unk_27858AFB8;
    v28 = *(a1 + 72);
    v27 = v5;
    dispatch_async(v6, block);

    [*(a1 + 40) reset];
    v7 = v28;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v16;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v10)
    {
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:@"key"];
          if (v13)
          {
            [v8 addObject:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v10);
    }

    [*(a1 + 40) reset];
    v14 = [*(a1 + 32) queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_2_92;
    v17[3] = &unk_27858B030;
    v21 = *(a1 + 72);
    v18 = v8;
    v19 = 0;
    v20 = *(a1 + 64);
    v7 = v8;
    dispatch_async(v14, v17);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __79___DPStorage_fetchKeynamesFor_predicate_fetchLimit_fetchOffset_withCompletion___block_invoke_2_92(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  (*(a1[7] + 16))();

  objc_autoreleasePoolPop(v2);
}

void __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() errorStringFor:5];
  v4 = MEMORY[0x277CCA9B8];
  v5 = +[_DPStrings errorDomain];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:v5 code:5 userInfo:v6];

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

void __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v33 = v1;
  v31 = [objc_opt_class() createFetchRequestFor:*(v1 + 40) entityName:*(v1 + 48) predicate:*(v1 + 56) fetchLimit:*(v1 + 80) fetchOffset:*(v1 + 88)];
  if (*(v1 + 104) == 1)
  {
    v3 = [v31 copy];
    [v3 setResultType:1];
    if (*(v1 + 80) <= 0x32uLL)
    {
      v4 = 50;
    }

    else
    {
      v4 = *(v1 + 80);
    }

    [v3 setFetchLimit:v4];
    v5 = *(v1 + 40);
    v50 = 0;
    v30 = v3;
    obj = [v5 executeFetchRequest:v3 error:&v50];
    v6 = v50;
    if (v6)
    {
      v7 = [*(v1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_94;
      block[3] = &unk_27858AFB8;
      v8 = *(v1 + 72);
      v48 = v6;
      v49 = v8;
      v9 = v6;
      dispatch_async(v7, block);

      [*(v1 + 40) reset];
      goto LABEL_23;
    }

    v10 = [objc_opt_class() shuffleOrderOfRecords:obj count:*(v1 + 80)];
    v11 = *(v1 + 80);
    if (v11 >= [v10 count])
    {
      v12 = [v10 count];
    }

    else
    {
      v12 = *(v33 + 80);
    }

    v13 = [v10 subarrayWithRange:{0, v12}];

    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(self IN %@)", v13];
    [v31 setPredicate:v14];

    v1 = v33;
  }

  v15 = *(v1 + 40);
  v46 = 0;
  obj = [v15 executeFetchRequest:v31 error:&v46];
  v30 = v46;
  if (v30)
  {
    v16 = [*(v1 + 32) queue];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_99;
    v43[3] = &unk_27858AFB8;
    v45 = *(v33 + 72);
    v30 = v30;
    v44 = v30;
    dispatch_async(v16, v43);

    [*(v33 + 40) reset];
    v9 = v45;
  }

  else
  {
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count")}];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = obj;
    v18 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v18)
    {
      v19 = *v40;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = [*(v33 + 32) converterFromEntity];
          v24 = [v21 entity];
          v25 = [v24 name];
          v26 = [v23 objectForKeyedSubscript:v25];

          v27 = [v26 createRecordFromManagedObject:v21];
          if (v27)
          {
            [v17 addObject:v27];
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v18);
    }

    [*(v33 + 40) reset];
    v28 = [*(v33 + 32) queue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_2_100;
    v34[3] = &unk_27858B030;
    v38 = *(v33 + 72);
    v35 = v17;
    v36 = 0;
    v37 = *(v33 + 64);
    v9 = v17;
    dispatch_async(v28, v34);
  }

LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
}

void __93___DPStorage_fetchRecordsFor_predicate_fetchLimit_fetchOffset_randomizeOrder_withCompletion___block_invoke_2_100(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = a1[5];
  (*(a1[7] + 16))();

  objc_autoreleasePoolPop(v2);
}

void __50___DPStorage_saveRecords_andFlush_withCompletion___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEC10] mutableCopy];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    v7 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = [objc_opt_class() description];
        v11 = [v2 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = [v7 mutableCopy];
          [v2 setObject:v12 forKey:v10];
        }

        v13 = [v2 objectForKeyedSubscript:v10];
        [v13 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v2 allKeys];
  v14 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v34;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * j);
        v20 = [v2 objectForKeyedSubscript:v19];
        v21 = [v20 copy];

        v22 = [*(a1 + 32) converterFromClass];
        v23 = [v22 objectForKeyedSubscript:v19];

        v24 = [v23 insertRecords:v21 inManagedObjectContext:*(a1 + 40)];
        v25 = [v21 count];
        v16 += v25 - [v24 count];
      }

      v15 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v15);
    v26 = v16 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 40) save:0];
  }

  if (*(a1 + 48))
  {
    v27 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___DPStorage_saveRecords_andFlush_withCompletion___block_invoke_2;
    block[3] = &unk_27858B0A8;
    v31 = *(a1 + 48);
    v32 = v26;
    dispatch_async(v27, block);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __43___DPStorage_updateRecords_withCompletion___block_invoke(id *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEC10] mutableCopy];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v58;
    v7 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v58 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        v10 = [objc_opt_class() description];
        v11 = [v2 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = [v7 mutableCopy];
          [v2 setObject:v12 forKey:v10];
        }

        v13 = [v2 objectForKeyedSubscript:v10];
        [v13 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v5);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [v2 allKeys];
  v44 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v44)
  {
    v42 = v2;
    v43 = a1;
    v14 = 0;
    v41 = *v54;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v14;
        v16 = *(*(&v53 + 1) + 8 * j);
        v17 = [v2 objectForKeyedSubscript:v16];
        v18 = [v17 copy];

        v19 = MEMORY[0x277CBEBF8];
        v20 = [MEMORY[0x277CBEBF8] mutableCopy];
        v21 = [v19 mutableCopy];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v22 = v18;
        v23 = [v22 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v50;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v50 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v49 + 1) + 8 * k);
              v28 = [v27 objectId];

              if (v28)
              {
                v29 = v21;
              }

              else
              {
                v29 = v20;
              }

              [v29 addObject:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v49 objects:v61 count:16];
          }

          while (v24);
        }

        v30 = [v43[5] converterFromClass];
        v31 = [v30 objectForKeyedSubscript:v16];

        v32 = [v31 insertRecords:v20 inManagedObjectContext:v43[6]];
        v33 = [v20 count];
        v34 = [v32 count];
        v35 = [v31 updateRecords:v21 inManagedObjectContext:v43[6]];

        v36 = [v21 count];
        v14 = v33 + v45 - v34 + v36 - [v35 count];

        v2 = v42;
      }

      v44 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v44);
    v37 = v14 == 0;
    a1 = v43;
  }

  else
  {
    v37 = 1;
  }

  [a1[6] save:0];
  if (a1[7])
  {
    v38 = [a1[5] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43___DPStorage_updateRecords_withCompletion___block_invoke_2;
    block[3] = &unk_27858B0A8;
    v47 = a1[7];
    v48 = v37;
    dispatch_async(v38, block);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __43___DPStorage_deleteRecords_withCompletion___block_invoke(id *a1)
{
  v2 = [a1[4] valueForKey:@"objectId"];
  v3 = [v2 copy];

  v4 = [objc_alloc(MEMORY[0x277CBE360]) initWithObjectIDs:v3];
  [v4 setResultType:2];
  v5 = [a1[5] executeRequest:v4 error:0];
  v6 = [v5 result];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v3 count];
  [a1[5] reset];
  if (a1[7])
  {
    v9 = v7 == v8;
    v10 = [a1[6] queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43___DPStorage_deleteRecords_withCompletion___block_invoke_2;
    v11[3] = &unk_27858B0A8;
    v12 = a1[7];
    v13 = v9;
    dispatch_async(v10, v11);
  }
}

void __51___DPStorage_deleteAllRecordsByKey_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [_DPRecordQueryPredicates predicateForKey:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [objc_opt_class() createFetchRequestFor:*(a1 + 48) entityName:*(a1 + 56) predicate:v2 fetchLimit:0 fetchOffset:0];
  v5 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v5 setResultType:0];
  v6 = [*(a1 + 48) executeRequest:v5 error:0];
  v7 = [v6 result];
  v8 = [v7 BOOLValue];

  [*(a1 + 48) reset];
  if (*(a1 + 64))
  {
    v9 = [*(a1 + 40) queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51___DPStorage_deleteAllRecordsByKey_withCompletion___block_invoke_2;
    v10[3] = &unk_27858B0A8;
    v11 = *(a1 + 64);
    v12 = v8;
    dispatch_async(v9, v10);
  }
}

void __54___DPStorage_scheduleStorageCullingWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) coredataStorage];
  v7 = [v6 deleteVersionMismatchRecords:*(a1 + 48) entities:*(a1 + 40) limit:*(a1 + 56)];
  v8 = +[_DPLog framework];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = v7;
    _os_log_impl(&dword_22622D000, v8, OS_LOG_TYPE_INFO, "Deleted %ld records with report version mismatch", &v12, 0xCu);
  }

  v9 = [v6 deleteSubmittedRecords:*(a1 + 48) entities:*(a1 + 40) limit:*(a1 + 56)];
  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&dword_22622D000, v10, OS_LOG_TYPE_INFO, "Deleted %ld submitted records", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
}

void __51___DPStorage_scheduleMaintenanceWithName_database___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) coredataStorage];
  v7 = [v6 deleteOldObjectsToLimitTotalNumber:*(a1 + 48) entities:*(a1 + 40) limit:*(a1 + 56)];
  v8 = +[_DPLog framework];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    v14 = v7;
    _os_log_impl(&dword_22622D000, v8, OS_LOG_TYPE_INFO, "Deleted %ld records to enforce total size limit on the database", &v13, 0xCu);
  }

  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*(a1 + 64)];
  v10 = [v6 deleteObjectsOlderThanDate:v9 entities:*(a1 + 40) limit:*(a1 + 56)];
  v11 = +[_DPLog framework];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 134217984;
    v14 = v10;
    _os_log_impl(&dword_22622D000, v11, OS_LOG_TYPE_INFO, "Deleted %ld old records", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v12 = *MEMORY[0x277D85DE8];
}

@end