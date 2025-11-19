@interface FPDExtensionRequestRecord
@end

@implementation FPDExtensionRequestRecord

void __46___FPDExtensionRequestRecord_monitorProgress___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v15 = fpfs_adopt_log();
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  [*(*(a1 + 32) + 80) finishObserving];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;

  if (*(a1 + 40))
  {
    objc_initWeak(&location, *(a1 + 32));
    v5 = [MEMORY[0x1E695DF00] now];
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = v5;

    v8 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:*(a1 + 40) path:"fractionCompleted"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46___FPDExtensionRequestRecord_monitorProgress___block_invoke_2;
    v12[3] = &unk_1E83C09A0;
    objc_copyWeak(&v13, &location);
    v9 = [v8 addObserverBlock:v12];
    v10 = *(a1 + 32);
    v11 = *(v10 + 80);
    *(v10 + 80) = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  __fp_pop_log();
}

void __46___FPDExtensionRequestRecord_monitorProgress___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x1E695DF00] now];
    [v2 timeIntervalSinceDate:v4[9]];
    if (v3 >= 5.0)
    {
      objc_storeStrong(v4 + 9, v2);
      [v4 _setupProgressTimer];
    }

    WeakRetained = v4;
  }
}

void __42___FPDExtensionRequestRecord__setupTimer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 7);
    v4 = fpfs_adopt_log();
    [v2 cancelTimeout];
    [v2 _handleTimeout];
    __fp_pop_log();
  }
}

void __49___FPDExtensionRequestRecord__setupProgressTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 7);
    v4 = fpfs_adopt_log();
    [v2 cancelTimeout];
    [v2 _handleTimeout];
    __fp_pop_log();
  }
}

@end