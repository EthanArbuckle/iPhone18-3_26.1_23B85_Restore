@interface NUCrawlView
@end

@implementation NUCrawlView

id ___NUCrawlView_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2 == 2)
  {
    v3 = v7;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v4 = ___NUCrawlView_block_invoke_4;
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_6;
    }

    v3 = v8;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v4 = ___NUCrawlView_block_invoke_3;
  }

  v3[2] = v4;
  v3[3] = &unk_2799A3A10;
  v5 = a1[4];
  v3[5] = a1[5];
  v3[4] = v5;
  v1 = MEMORY[0x25F883F30](v3);

LABEL_6:

  return v1;
}

void ___NUCrawlView_block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  ++*(*(*(a1 + 40) + 8) + 24);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [v8 subviews];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ((*a4 & 1) == 0)
        {
          v14 = *(*(&v29 + 1) + 8 * v13);
          v15 = *(*(*(a1 + 40) + 8) + 24);
          (*(*(a1 + 32) + 16))();
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  --*(*(*(a1 + 40) + 8) + 24);
  if ((*a4 & 1) == 0)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v8;
    v16 = [v8 subviews];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * v20);
          v22 = MEMORY[0x25F883F30](v7);
          v7[2](v7, v22, v21, a4);

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }

    --*(*(*(a1 + 40) + 8) + 24);
    v8 = v24;
  }

  v23 = *MEMORY[0x277D85DE8];
}

void ___NUCrawlView_block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  ++*(*(*(a1 + 40) + 8) + 24);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a3 subviews];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ((*a4 & 1) == 0)
        {
          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = *(*(*(a1 + 40) + 8) + 24);
          (*(*(a1 + 32) + 16))();
          if ((*a4 & 1) == 0)
          {
            v15 = MEMORY[0x25F883F30](v7);
            v7[2](v7, v15, v13, a4);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  --*(*(*(a1 + 40) + 8) + 24);
  v16 = *MEMORY[0x277D85DE8];
}

@end