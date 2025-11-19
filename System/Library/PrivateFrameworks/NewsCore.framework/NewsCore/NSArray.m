@interface NSArray
@end

@implementation NSArray

void __50__NSArray_FCAdditions__fc_randomlyMergeWithArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if ([*(a1 + 32) count])
    {
      v4 = arc4random_uniform([*(a1 + 32) count]);
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 32) insertObject:v5 atIndex:v4];
    v3 = v5;
  }
}

void __50__NSArray_FCAdditions__fc_randomlyMergeWithArray___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v6(v5, a2);
  (*(*(a1 + 32) + 16))();
}

void __60__NSArray_FCAdditions__fc_firstObjectFromIndex_passingTest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __55__NSArray_FCAdditions__fc_firstObjectWithValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:*(a1 + 32)];
  v4 = [v3 isEqual:*(a1 + 40)];

  return v4;
}

uint64_t __65__NSArray_FCAdditions__fc_arrayByTransformingWithBlockWithIndex___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __70__NSArray_FCAdditions__fc_objectsOfMaxValueWithValueBlock_comparator___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = (*(*(a1 + 40) + 16))(*(a1 + 40));
        if (v11)
        {
          if (v7)
          {
            v12 = (*(*(a1 + 48) + 16))();
            if (v12 == 1)
            {
              [v3 removeAllObjects];
              [v3 addObject:v10];
              v13 = v11;

              v7 = v13;
            }

            else if (!v12)
            {
              [v3 addObject:v10];
            }
          }

          else
          {
            [v3 addObject:{v10, v15}];
            v7 = v11;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __70__NSArray_FCAdditions__fc_objectsOfMinValueWithValueBlock_comparator___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = (*(*(a1 + 40) + 16))(*(a1 + 40));
        if (v11)
        {
          if (v7)
          {
            v12 = (*(*(a1 + 48) + 16))();
            if (v12)
            {
              if (v12 == -1)
              {
                [v3 removeAllObjects];
                [v3 addObject:v10];
                v13 = v11;

                v7 = v13;
              }
            }

            else
            {
              [v3 addObject:v10];
            }
          }

          else
          {
            [v3 addObject:{v10, v15}];
            v7 = v11;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __54__NSArray_FCAdditions__fc_setByTransformingWithBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void __51__NSArray_FCAdditions__fc_setOfObjectsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

uint64_t __61__NSArray_FCAdditions__fc_orderedSetByTransformingWithBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x1EEE66BB8](v2, v3);
}

BOOL __59__NSArray_FCAdditions__fc_arrayByRemovingKeysInDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 == 0;

  return v3;
}

void __118__NSArray_FCAdditions__fc_arraysByPartitioningWithBudget_indicesOfOverBudgetObjects_appraiser_accumulator_comparator___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = (*(*(a1 + 48) + 16))();
  if ((*(*(a1 + 56) + 16))())
  {
    [*(a1 + 32) addIndex:a3];
  }

  else
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__59;
    v34 = __Block_byref_object_dispose__59;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__59;
    v28 = __Block_byref_object_dispose__59;
    v29 = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __118__NSArray_FCAdditions__fc_arraysByPartitioningWithBudget_indicesOfOverBudgetObjects_appraiser_accumulator_comparator___block_invoke_3;
    v19 = &unk_1E7C43B90;
    v20 = *(a1 + 40);
    v22 = &v30;
    v23 = &v24;
    v7 = v6;
    v21 = v7;
    v8 = _Block_copy(&v16);
    v11 = v8;
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v12 = (*(*(a1 + 64) + 16))(*(a1 + 64), *(*(*(a1 + 80) + 8) + 40), v7, v9, v10);
      if ((*(*(a1 + 56) + 16))(*(a1 + 56), v12, v13, v14, v15))
      {
        v11[2](v11);
      }

      else
      {
        objc_storeStrong(v31 + 5, *(*(*(a1 + 72) + 8) + 40));
        objc_storeStrong(v25 + 5, v12);
      }
    }

    else
    {
      v8[2](v8);
    }

    [v31[5] addObject:{v5, v16, v17, v18, v19}];
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v31[5]);
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v25[5]);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v30, 8);
  }
}

void __118__NSArray_FCAdditions__fc_arraysByPartitioningWithBudget_indicesOfOverBudgetObjects_appraiser_accumulator_comparator___block_invoke_3(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) addObject:v2];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
}

uint64_t __62__NSArray_FCAdditions__fc_indexOfFirstObjectWithValue_forKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = [a2 valueForKey:*(a1 + 32)];
  *a4 = [v6 isEqual:*(a1 + 40)];

  return *a4;
}

void __83__NSArray_FCAdditions__fc_arrayByMergingAdjacentObjectsWithMergePolicy_mergeBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v11 = v3;
  if ((*(*(a1 + 40) + 16))())
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v6 = (*(*(a1 + 48) + 16))();
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    [*(a1 + 32) addObject:*(*(*(a1 + 56) + 8) + 40)];
    v9 = *(*(a1 + 56) + 8);
    v10 = v11;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

uint64_t __46__NSArray_FCAdditions__fc_uniqueByValueBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2 && ([*(a1 + 32) containsObject:v2] & 1) == 0)
  {
    [*(a1 + 32) addObject:v2];
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __53__NSArray_FCAdditions__fc_splitArrayWithTest_result___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 48);
  v8 = *(v7 + 16);
  v11 = a2;
  v9 = v8(v7, v11, a3, a4);
  v10 = 40;
  if (v9)
  {
    v10 = 32;
  }

  [*(a1 + v10) addObject:v11];
}

uint64_t __79__NSArray_FCAdditions__fc_enumerateIslandsOfCommonValuesForKeyBlock_withBlock___block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E58C0];
  v3 = (*(*(a1 + 40) + 16))();
  LODWORD(v1) = [v2 nf_object:v3 isEqualToObject:*(v1 + 32)];

  return v1 ^ 1;
}

void __78__NSArray_FCAdditions__fc_sortedArrayStartingWithElementsSatisfying_sortedBy___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__NSArray_FCAdditions__fc_sortedArrayStartingWithElementsSatisfying_sortedBy___block_invoke_4;
  v12[3] = &unk_1E7C43C80;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = v5;
  v15 = v7;
  v13 = v4;
  v8 = v5;
  v9 = v4;
  [v6 enumerateObjectsUsingBlock:v12];
  v10 = [v9 sortedArrayUsingComparator:*(a1 + 48)];
  [v3 addObjectsFromArray:v10];

  v11 = [v8 sortedArrayUsingComparator:*(a1 + 48)];
  [v3 addObjectsFromArray:v11];
}

void __78__NSArray_FCAdditions__fc_sortedArrayStartingWithElementsSatisfying_sortedBy___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v7 = a2;
  v5 = v4(v3, v7);
  v6 = 40;
  if (v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v7];
}

id __39__NSArray_FCArchivable__contentArchive__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if ([a2 conformsToProtocol:&unk_1F2E828A8])
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 contentArchive];

  return v5;
}

id __40__NSArray_FCArchivable__contentManifest__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    if ([a2 conformsToProtocol:&unk_1F2E828A8])
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 contentManifest];

  return v5;
}

@end