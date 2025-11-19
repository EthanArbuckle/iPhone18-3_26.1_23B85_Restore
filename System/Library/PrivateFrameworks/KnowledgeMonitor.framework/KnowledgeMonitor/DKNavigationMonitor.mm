@interface DKNavigationMonitor
@end

@implementation DKNavigationMonitor

void __43___DKNavigationMonitor_setShutdownHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setNavigating:0];
}

void __29___DKNavigationMonitor_start__block_invoke_3(uint64_t a1)
{
  v2 = BiomeLibrary();
  v3 = [v2 Maps];
  v4 = [v3 Navigation];

  v5 = [v4 source];
  v6 = *(a1 + 32);
  v7 = *(v6 + 160);
  *(v6 + 160) = v5;

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = 0;
  v8 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:0 endDate:0 maxEvents:0 lastN:1 reversed:0];
  v9 = [v4 publisherWithOptions:v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __29___DKNavigationMonitor_start__block_invoke_2_17;
  v14[3] = &unk_27856F238;
  v14[4] = &v15;
  v10 = [v9 sinkWithCompletion:&__block_literal_global_6 receiveInput:v14];

  v13 = 0;
  if (notify_get_state(*(*(a1 + 32) + 172), &v13))
  {
    v11 = 0;
    v13 = 0;
    v12 = v16[5];
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = v13 != 0;
  v12 = v16[5];
  if (v12)
  {
LABEL_5:
    *(*(a1 + 32) + 169) = [v12 BOOLValue];
    goto LABEL_6;
  }

  if (v13)
  {
    *(*(a1 + 32) + 169) = 0;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_6:
  [*(a1 + 32) setNavigating:{v11, v13}];

  _Block_object_dispose(&v15, 8);
}

void __29___DKNavigationMonitor_start__block_invoke_2_17(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v7 = [a2 eventBody];
  v4 = [v3 numberWithBool:{objc_msgSend(v7, "starting")}];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end