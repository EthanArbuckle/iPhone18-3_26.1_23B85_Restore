@interface EDThreadPositionChangeSet
@end

@implementation EDThreadPositionChangeSet

id __41___EDThreadPositionChangeSet_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695DFB0] null];

  if (v3 == v2)
  {
    v5 = [v2 description];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "conversationID")}];
    v5 = [v4 stringValue];
  }

  return v5;
}

id __41___EDThreadPositionChangeSet_description__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ((v8 & 1) == 0)
        {
          [v4 appendString:{@", ", v14}];
        }

        v11 = (*(*(a1 + 32) + 16))();
        [v4 appendString:v11];

        v8 = 0;
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = 0;
    }

    while (v6);
  }

  [v4 appendString:@"]"];
  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

void __41___EDThreadPositionChangeSet_description__block_invoke_3(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  v7 = (*(a1[4] + 16))();
  v8 = (*(a1[5] + 16))();
  v9 = [v6 initWithFormat:@"\t%@ -> %@", v7, v8];

  v10 = *(a1[6] + 8);
  v13 = *(v10 + 40);
  v12 = (v10 + 40);
  v11 = v13;
  if (v13)
  {
    [v11 appendFormat:@"\n%@", v9];
  }

  else
  {
    objc_storeStrong(v12, v9);
  }
}

void __41___EDThreadPositionChangeSet_description__block_invoke_4(void *a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  v7 = (*(a1[4] + 16))();
  v8 = (*(a1[5] + 16))();
  v9 = [v6 initWithFormat:@"\t%@ -> %@", v7, v8];

  v10 = *(a1[6] + 8);
  v13 = *(v10 + 40);
  v12 = (v10 + 40);
  v11 = v13;
  if (v13)
  {
    [v11 appendFormat:@"\n%@", v9];
  }

  else
  {
    objc_storeStrong(v12, v9);
  }
}

void __54___EDThreadPositionChangeSet_addObjectIDToAdd_before___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 containsObject:a1[4]])
  {
    v9[0] = a1[5];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 ef_insertObjects:v7 before:a1[4]];

    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __55___EDThreadPositionChangeSet_addObjectIDToMove_before___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = a3;
  if ([v8 containsObject:*(a1 + 32)])
  {
    [v8 removeObject:*(a1 + 32)];
    if (![v8 count])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }

    *a4 = 1;
  }
}

void __55___EDThreadPositionChangeSet_addObjectIDToMove_before___block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 containsObject:a1[4]])
  {
    v9[0] = a1[5];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 ef_insertObjects:v7 before:a1[4]];

    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __47___EDThreadPositionChangeSet_isAddingObjectID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __48___EDThreadPositionChangeSet__isMovingObjectID___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

@end