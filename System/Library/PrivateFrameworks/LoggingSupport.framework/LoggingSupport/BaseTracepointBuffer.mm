@interface BaseTracepointBuffer
@end

@implementation BaseTracepointBuffer

uint64_t __79___BaseTracepointBuffer_finishedInsertingTracepointsWithNextMajorTime_options___block_invoke(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a2 + 1);
  v4 = *(a3 + 8);
  v5 = v3 >= v4;
  if (v3 != v4 || (v6 = *a2, v5 = *a2 >= *a3, *a2 != *a3))
  {
    v15 = 36;
    v16 = 32;
    goto LABEL_12;
  }

  if (v6 == 2)
  {
    v5 = *(a2 + 56) >= *(a3 + 56);
    v15 = 32;
    v16 = 36;
LABEL_12:
    if (!v5)
    {
      v15 = v16;
    }

    return *(a1 + v15);
  }

  if (v6 == 3)
  {
    v7 = *(a2 + 11);
    if (v7)
    {
      v8 = *(a3 + 88);
      if (v8)
      {
        v9 = *(v7 + 8);
        v10 = *(v8 + 8);
        if (v9 != v10)
        {
          v18 = v9 < v10;
LABEL_22:
          v19 = !v18;
          v15 = 36;
          if (!v19)
          {
            v15 = 32;
          }

          return *(a1 + v15);
        }
      }
    }

    v11 = *(a2 + 12);
    v12 = *(a3 + 96);
    if (v11)
    {
      v13 = *(v11 + 8);
      if (v12)
      {
LABEL_10:
        v14 = *(v12 + 8);
        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
      if (v12)
      {
        goto LABEL_10;
      }
    }

    v14 = 0;
LABEL_19:
    v18 = v11 < v12;
    if (v13 != v14)
    {
      v18 = v13 < v14;
    }

    goto LABEL_22;
  }

  return 0;
}

void __90___BaseTracepointBuffer_insertTracepoints_chunkOffset_chunkSetStartAddr_subchunk_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16) & 0xFFFFFFFFFFFFLL) + *(*(a1 + 56) + 8);
  if (v3 <= *(a1 + 88))
  {
    v3 = *(a1 + 88);
  }

  v4 = *(a1 + 104);
  if (v3 >= *(a1 + 96))
  {
    v5 = *(a1 + 96);
  }

  else
  {
    v5 = v3;
  }

  v6 = a2 - *(a1 + 112);
  v7 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v19 = *(a1 + 32);
  v8 = v7;
  v9 = v19[1] + 104 * [v19 allocateRow];
  *v9 = 3;
  *(v9 + 8) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 96) = a2;
  *(v9 + 48) = [v8 catalog];
  *(v9 + 56) = v20;
  *(v9 + 72) = v21;
  *(v9 + 88) = v22;
  *(v9 + 40) = [v8 fileHeader];
  v10 = [v8 store];
  v11 = [v10 fileName];

  v12 = [v19 fileNames];
  v13 = v12;
  if (v11)
  {
    v18 = [v8 store];
    v14 = [v18 fileName];
    [v13 addObject:v14];

    v15 = [v19 fileNames];
    v16 = [v8 store];
    v17 = [v16 fileName];
    LOWORD(v18) = [v15 indexOfObject:v17];
  }

  else
  {
    [v12 addObject:@"(null)"];

    v15 = [v19 fileNames];
    v18 = [v15 indexOfObject:@"(null)"];
  }

  *(v9 + 16) = v18;
}

uint64_t __75___BaseTracepointBuffer_insertTimesyncPoints_forBoot_oldestContinuousTime___block_invoke(uint64_t a1, __int128 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a2 + 1) >= *(a1 + 40))
  {
    snprintf(__str, 0x1AuLL, "%016llx.timesync", *(*(a1 + 48) + 24));
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
    v5 = *(*(a1 + 32) + 8) + 104 * [*(a1 + 32) allocateRow];
    *v5 = 1;
    *(v5 + 8) = *(a2 + 1);
    *(v5 + 24) = vdupq_n_s64(0xDEADBEEFuLL);
    v6 = *a2;
    *(v5 + 72) = a2[1];
    *(v5 + 56) = v6;
    v7 = [*(a1 + 32) fileNames];
    v8 = v7;
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = @"(null)";
    }

    [v7 addObject:v9];

    v10 = [*(a1 + 32) fileNames];
    v11 = [v10 indexOfObject:v9];

    *(v5 + 16) = v11;
    *(v5 + 40) = **(a1 + 56);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

@end