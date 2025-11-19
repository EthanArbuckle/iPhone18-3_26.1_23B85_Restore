@interface NACrawlViewController
@end

@implementation NACrawlViewController

void ___NACrawlViewController_block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v23 = a3;
  v24 = a1;
  ++*(*(*(a1 + 40) + 8) + 24);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v23 childViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ((*a4 & 1) == 0)
        {
          v13 = *(*(&v29 + 1) + 8 * i);
          v14 = _Block_copy(v7);
          v15 = [v13 presentedViewController];
          (*(v7 + 2))(v7, v14, v15, a4);

          if ((*a4 & 1) == 0)
          {
            (*(*(v24 + 32) + 16))();
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  --*(*(*(v24 + 40) + 8) + 24);
  if ((*a4 & 1) == 0)
  {
    ++*(*(*(v24 + 40) + 8) + 24);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v23 childViewControllers];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * j);
          v22 = _Block_copy(v7);
          (*(v7 + 2))(v7, v22, v21, a4);
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }

    --*(*(*(v24 + 40) + 8) + 24);
  }
}

void ___NACrawlViewController_block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v17 = a1;
  ++*(*(*(a1 + 40) + 8) + 24);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 childViewControllers];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ((*a4 & 1) == 0)
        {
          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = _Block_copy(v7);
          v15 = [v13 presentedViewController];
          (*(v7 + 2))(v7, v14, v15, a4);

          if ((*a4 & 1) == 0)
          {
            (*(*(v17 + 32) + 16))();
          }

          v16 = _Block_copy(v7);
          (*(v7 + 2))(v7, v16, v13, a4);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  --*(*(*(v17 + 40) + 8) + 24);
}

@end