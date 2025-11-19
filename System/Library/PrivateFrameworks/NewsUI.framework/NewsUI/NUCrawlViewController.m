@interface NUCrawlViewController
@end

@implementation NUCrawlViewController

void ___NUCrawlViewController_block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v25 = a3;
  v26 = a1;
  ++*(*(*(a1 + 40) + 8) + 24);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [v25 childViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ((*a4 & 1) == 0)
        {
          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = MEMORY[0x25F883F30](v7);
          v15 = [v13 presentedViewController];
          v7[2](v7, v14, v15, a4);

          if ((*a4 & 1) == 0)
          {
            v16 = *(*(*(v26 + 40) + 8) + 24);
            (*(*(v26 + 32) + 16))();
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  --*(*(*(v26 + 40) + 8) + 24);
  if ((*a4 & 1) == 0)
  {
    ++*(*(*(v26 + 40) + 8) + 24);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [v25 childViewControllers];
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * j);
          v23 = MEMORY[0x25F883F30](v7);
          v7[2](v7, v23, v22, a4);
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }

    --*(*(*(v26 + 40) + 8) + 24);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void ___NUCrawlViewController_block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v19 = a1;
  ++*(*(*(a1 + 40) + 8) + 24);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [a3 childViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ((*a4 & 1) == 0)
        {
          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = MEMORY[0x25F883F30](v7);
          v15 = [v13 presentedViewController];
          v7[2](v7, v14, v15, a4);

          if ((*a4 & 1) == 0)
          {
            v16 = *(*(*(v19 + 40) + 8) + 24);
            (*(*(v19 + 32) + 16))();
          }

          v17 = MEMORY[0x25F883F30](v7);
          v7[2](v7, v17, v13, a4);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  --*(*(*(v19 + 40) + 8) + 24);
  v18 = *MEMORY[0x277D85DE8];
}

@end