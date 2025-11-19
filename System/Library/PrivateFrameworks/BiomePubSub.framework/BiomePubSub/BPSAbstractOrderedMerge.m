@interface BPSAbstractOrderedMerge
@end

@implementation BPSAbstractOrderedMerge

void __42___BPSAbstractOrderedMerge_requestDemand___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DFB0] null];
  if ([v9 isEqual:v6])
  {
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v8 = [v7 integerValue];

    if (!v8)
    {
      [*(a1 + 32) setObject:&unk_1F4870130 atIndexedSubscript:a3];
      [v9 requestDemand:1];
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __50___BPSAbstractOrderedMerge_isWaitingForMoreValues__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [v7 containsObject:v8];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v9 || (v9 & 1) == 0 && ![v10 count])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __43___BPSAbstractOrderedMerge__isBuffersEmpty__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x1E695DFB0] null];
  if ([v5 isEqual:v3])
  {
  }

  else
  {
    v4 = [v5 count];

    if (v4)
    {
      goto LABEL_5;
    }
  }

  ++*(*(*(a1 + 32) + 8) + 24);
LABEL_5:
}

void __43___BPSAbstractOrderedMerge_nextValueIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [MEMORY[0x1E695DFB0] null];
  v6 = [v12 isEqual:v5];

  v7 = v12;
  if ((v6 & 1) == 0)
  {
    v8 = [v12 firstObject];
    if (v8)
    {
      v9 = *(*(a1 + 40) + 8);
      v11 = *(v9 + 40);
      v10 = (v9 + 40);
      if (!v11)
      {
LABEL_6:
        objc_storeStrong(v10, v8);
        *(*(*(a1 + 48) + 8) + 24) = a3;
        goto LABEL_7;
      }

      if ([*(a1 + 32) compareFirst:v8 withSecond:?] == -1)
      {
        v10 = (*(*(a1 + 40) + 8) + 40);
        goto LABEL_6;
      }
    }

LABEL_7:

    v7 = v12;
  }
}

@end