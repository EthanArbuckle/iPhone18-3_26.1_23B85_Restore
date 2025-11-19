@interface DASPriorityQueue
@end

@implementation DASPriorityQueue

void __29___DASPriorityQueue_popFirst__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v7 = v6;
  if (!*(*(*(a1 + 32) + 8) + 40) || [v6 count] && objc_msgSend(v11, "compare:", *(*(*(a1 + 40) + 8) + 40)) == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = [v7 firstObject];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __28___DASPriorityQueue_popLast__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  v7 = v6;
  if (!*(*(*(a1 + 32) + 8) + 40) || [v6 count] && objc_msgSend(v11, "compare:", *(*(*(a1 + 40) + 8) + 40)) == -1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = [v7 lastObject];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __31___DASPriorityQueue_allObjects__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) addObject:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end