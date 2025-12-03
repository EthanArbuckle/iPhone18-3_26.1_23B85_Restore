@interface NSOrderedCollectionDifference
- (id)_groupedInsertionsByObjectForCollection:(int)collection inferMoves:;
- (void)_groupedInsertionAndMoves:(void *)moves;
- (void)_groupedInsertionsWithObjectsToInsert:(void *)insert insertGroup:;
@end

@implementation NSOrderedCollectionDifference

void __79__NSOrderedCollectionDifference_EmailFoundationAdditions__ef_groupedInsertions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v6 = [[EFOrderedCollectionGroupedInsertion alloc] initWithObjects:v7 index:a2];
  [*(a1 + 32) addObject:v6];
}

- (void)_groupedInsertionsWithObjectsToInsert:(void *)insert insertGroup:
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  insertCopy = insert;
  if (!self)
  {
    goto LABEL_21;
  }

  insertions = [self insertions];
  v7 = [insertions count];

  if (!v7)
  {
    goto LABEL_21;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  insertions2 = [self insertions];
  v9 = [insertions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v9)
  {

    goto LABEL_21;
  }

  v10 = 0;
  v11 = *v21;
  v18 = (insertCopy + 2);
  index = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(insertions2);
      }

      v14 = *(*(&v20 + 1) + 8 * i);
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        index = [*(*(&v20 + 1) + 8 * i) index];
        object = [v14 object];
        [v5 addObject:object];
      }

      else
      {
        if ([*(*(&v20 + 1) + 8 * i) index] == v10 + index)
        {
          object = [v14 object];
          [v5 addObject:object];
          ++v10;
          goto LABEL_16;
        }

        if (v10)
        {
          v16 = [v5 copy];
          insertCopy[2](insertCopy, index, v10, v16);
        }

        index = [v14 index];
        [v5 removeAllObjects];
        object = [v14 object];
        [v5 addObject:object];
      }

      v10 = 1;
LABEL_16:
    }

    v9 = [insertions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v9);

  if (v10)
  {
    insertCopy[2](insertCopy, index, v10, v5);
  }

LABEL_21:

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_groupedInsertionsByObjectForCollection:(int)collection inferMoves:
{
  v5 = a2;
  if (self)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (collection)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __110__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionsByObjectForCollection_inferMoves___block_invoke;
      v13[3] = &unk_1E8249168;
      v7 = &v14;
      v14 = v5;
      v8 = &v15;
      v15 = array;
      [(NSOrderedCollectionDifference *)self _groupedInsertionAndMoves:v13];
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __110__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionsByObjectForCollection_inferMoves___block_invoke_2;
      v10[3] = &unk_1E8249190;
      v7 = &v11;
      v11 = v5;
      v8 = &v12;
      v12 = array;
      [(NSOrderedCollectionDifference *)self _groupedInsertionsWithObjectsToInsert:v10 insertGroup:?];
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

void __110__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionsByObjectForCollection_inferMoves___block_invoke(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a2;
  v11 = [*(a1 + 32) ef_subarrayWithRange:{a2, a3}];
  if (v7)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:v7 - 1];
  }

  if ([*(a1 + 32) count] <= a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) objectAtIndexedSubscript:a4];
  }

  v10 = [[EFOrderedCollectionGroupedInsertionByObject alloc] initWithObjects:v11 previousObject:v7 nextObject:v9 isMove:a5];
  [*(a1 + 40) addObject:v10];
}

- (void)_groupedInsertionAndMoves:(void *)moves
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (moves)
  {
    insertions = [moves insertions];
    v5 = [insertions count];

    if (v5)
    {
      v22 = v3;
      v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v34 = 0;
      v35 = &v34;
      v36 = 0x3010000000;
      v37 = &unk_1C61D722D;
      v38 = xmmword_1C61CC980;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __85__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionAndMoves___block_invoke;
      aBlock[3] = &unk_1E82491B8;
      v33 = &v34;
      v7 = v6;
      v32 = v7;
      v8 = _Block_copy(aBlock);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __85__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionAndMoves___block_invoke_2;
      v27[3] = &unk_1E8249208;
      v30 = &v34;
      v21 = v7;
      v28 = v21;
      v29 = v3;
      v9 = _Block_copy(v27);
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      insertions2 = [moves insertions];
      v11 = [insertions2 countByEnumeratingWithState:&v23 objects:v39 count:16];
      if (v11)
      {
        v12 = *v24;
        do
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(insertions2);
            }

            v14 = *(*(&v23 + 1) + 8 * v13);
            if (v35[4] == 0x7FFFFFFFFFFFFFFFLL)
            {
              index = [*(*(&v23 + 1) + 8 * v13) index];
              v35[4] = index;
            }

            else
            {
              index2 = [*(*(&v23 + 1) + 8 * v13) index];
              v17 = v35[5];
              if (index2 != v17 + v35[4])
              {
                if (v17)
                {
                  v9[2](v9);
                }

                index3 = [v14 index];
                v19 = v35;
                v35[4] = index3;
                v19[5] = 0;
              }
            }

            v8[2](v8, v14);
            ++v13;
          }

          while (v11 != v13);
          v11 = [insertions2 countByEnumeratingWithState:&v23 objects:v39 count:16];
        }

        while (v11);
      }

      if (v35[5])
      {
        v9[2](v9);
      }

      _Block_object_dispose(&v34, 8);
      v3 = v22;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __110__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionsByObjectForCollection_inferMoves___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v11 = [*(a1 + 32) ef_subarrayWithRange:{a2, a3}];

  if (a2)
  {
    v8 = [*(a1 + 32) objectAtIndexedSubscript:a2 - 1];
  }

  else
  {
    v8 = 0;
  }

  if (a2 + a3 >= [*(a1 + 32) count])
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) objectAtIndexedSubscript:?];
  }

  v10 = [[EFOrderedCollectionGroupedInsertionByObject alloc] initWithObjects:v11 previousObject:v8 nextObject:v9 isMove:0];
  [*(a1 + 40) addObject:v10];
}

void __85__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionAndMoves___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 40) + 8) + 40);
  v4 = v3;
  if ([v3 associatedIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) addIndex:{objc_msgSend(v4, "index")}];
  }
}

void __85__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionAndMoves___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v5 = [*(a1 + 32) firstIndex];
  v6 = v3;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [*(a1 + 32) firstIndex] - *(*(*(a1 + 48) + 8) + 32);
  }

  v7 = v3 + v4;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionAndMoves___block_invoke_3;
  v9[3] = &unk_1E82491E0;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v7;
  v10 = *(a1 + 32);
  [v8 enumerateRangesUsingBlock:v9];
  [*(a1 + 32) removeAllIndexes];
}

uint64_t __85__NSOrderedCollectionDifference_EmailFoundationAdditions___groupedInsertionAndMoves___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  v8 = a2 + a3;
  if (v8 != *(a1 + 48))
  {
    v9 = [*(a1 + 32) indexGreaterThanIndex:v8];
    v10 = *(a1 + 48);
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = *(a1 + 48);
    }

    else
    {
      v11 = v9;
    }

    v12 = *(*(a1 + 40) + 16);
    v13 = *(a1 + 40);

    return v12(v13, v8, v11 - v8);
  }

  return result;
}

@end