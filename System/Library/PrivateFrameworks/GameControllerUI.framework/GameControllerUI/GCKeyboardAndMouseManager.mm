@interface GCKeyboardAndMouseManager
@end

@implementation GCKeyboardAndMouseManager

void __70___GCKeyboardAndMouseManager_activateWithSession_environment_options___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) registerServicesChangedObserver:*(a1 + 32) notifyExisting:0];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [*(*(a1 + 32) + 24) services];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [(_GCKeyboardAndMouseManager *)*(a1 + 32) _onqueue_HIDServiceAdded:?];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  objc_initWeak(&location, *(a1 + 32));
  v9 = *(*(a1 + 32) + 32);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __70___GCKeyboardAndMouseManager_activateWithSession_environment_options___block_invoke_2;
  v18 = &unk_277E1DD58;
  objc_copyWeak(&v19, &location);
  v10 = [v9 observeHIDEvents:&v15];
  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [MEMORY[0x277CBEB68] null];
  [v3 succeedWithResult:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x277D85DE8];
}

void __70___GCKeyboardAndMouseManager_activateWithSession_environment_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleHIDEvent:a2];
}

void __64___GCKeyboardAndMouseManager_invalidateWithSession_environment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [*(*(a1 + 32) + 24) unregisterServicesChangedObserver:*(a1 + 32) notifyExisting:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64___GCKeyboardAndMouseManager_invalidateWithSession_environment___block_invoke_2;
  v8[3] = &unk_277E1DDA8;
  v9 = v3;
  v7 = v3;
  [v6 observeFinish:v8];
}

void __64___GCKeyboardAndMouseManager_invalidateWithSession_environment___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB68] null];
  [v1 succeedWithResult:v2];
}

void __68___GCKeyboardAndMouseManager_handleHIDEvent_atTimestamp_forSubject___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v22 = [v2 keyWindow];

  v3 = [v22 windowScene];
  v4 = [v3 interfaceOrientation];

  v5 = [v22 screen];
  v6 = [v5 fixedCoordinateSpace];
  [v22 convertPoint:v6 toCoordinateSpace:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v8 = v7;
  v10 = v9;

  v11 = [v22 screen];
  v12 = [v11 fixedCoordinateSpace];
  [v22 convertPoint:v12 toCoordinateSpace:{*(a1 + 40), *(a1 + 48)}];
  v14 = v13;
  v16 = v15;

  if ((v4 - 1) >= 2)
  {
    v17 = v14 - v8;
  }

  else
  {
    v17 = v8 - v14;
  }

  if ((v4 - 1) >= 2)
  {
    v18 = v16 - v10;
  }

  else
  {
    v18 = v10 - v16;
  }

  v19 = objc_opt_new();
  [v19 setTimestamp:*(a1 + 56)];
  *&v20 = v17;
  [v19 setX:v20];
  *&v21 = v18;
  [v19 setY:v21];
  [(_GCKeyboardAndMouseEventSubject *)*(a1 + 32) publishScrollEvent:v19];
}

@end