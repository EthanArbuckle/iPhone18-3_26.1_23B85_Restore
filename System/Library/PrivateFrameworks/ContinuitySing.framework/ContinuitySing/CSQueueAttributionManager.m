@interface CSQueueAttributionManager
+ (id)sharedManager;
- (CSQueueAttributionManager)init;
- (void)retrieveAttributionsForQueueIdentifiers:(id)a3 withResultHandler:(id)a4;
- (void)retrieveAvatarForParticipant:(id)a3 withResultHandler:(id)a4;
@end

@implementation CSQueueAttributionManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[CSQueueAttributionManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __42__CSQueueAttributionManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(CSQueueAttributionManager);

  return MEMORY[0x2821F96F8]();
}

- (CSQueueAttributionManager)init
{
  v12.receiver = self;
  v12.super_class = CSQueueAttributionManager;
  v2 = [(CSQueueAttributionManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    attributions = v2->_attributions;
    v2->_attributions = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    requestedAttributions = v2->_requestedAttributions;
    v2->_requestedAttributions = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    avatars = v2->_avatars;
    v2->_avatars = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    pendingAvatarHandlers = v2->_pendingAvatarHandlers;
    v2->_pendingAvatarHandlers = v9;
  }

  return v2;
}

- (void)retrieveAttributionsForQueueIdentifiers:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_attributions objectForKeyedSubscript:v15];
        if (v16)
        {
          [v8 setObject:v16 forKeyedSubscript:v15];
        }

        else if (([(NSMutableSet *)self->_requestedAttributions containsObject:v15]& 1) == 0)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    [(NSMutableSet *)self->_requestedAttributions addObjectsFromArray:v9];
    v17 = +[CSShieldManager sharedManager];
    v18 = [v17 requestClient];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __87__CSQueueAttributionManager_retrieveAttributionsForQueueIdentifiers_withResultHandler___block_invoke;
    v19[3] = &unk_278E0B2D0;
    v19[4] = self;
    v20 = v8;
    v21 = v7;
    [v18 retrieveAttributionsForQueueIdentifiers:v9 handler:v19];
  }

  else
  {
    (*(v7 + 2))(v7, v8);
  }
}

void __87__CSQueueAttributionManager_retrieveAttributionsForQueueIdentifiers_withResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__CSQueueAttributionManager_retrieveAttributionsForQueueIdentifiers_withResultHandler___block_invoke_2;
  v6[3] = &unk_278E0B2A8;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __87__CSQueueAttributionManager_retrieveAttributionsForQueueIdentifiers_withResultHandler___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addEntriesFromDictionary:*(a1 + 40)];
  [*(a1 + 48) addEntriesFromDictionary:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (void)retrieveAvatarForParticipant:(id)a3 withResultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  avatars = self->_avatars;
  v9 = [v6 socialProfileIdentifier];
  v10 = [(NSMutableDictionary *)avatars objectForKeyedSubscript:v9];

  pendingAvatarHandlers = self->_pendingAvatarHandlers;
  v12 = [v6 socialProfileIdentifier];
  v13 = [(NSMutableDictionary *)pendingAvatarHandlers objectForKeyedSubscript:v12];

  objc_initWeak(&location, self);
  if (!v10)
  {
    if (v13)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __76__CSQueueAttributionManager_retrieveAvatarForParticipant_withResultHandler___block_invoke;
      v29[3] = &unk_278E0B2F8;
      objc_copyWeak(&v32, &location);
      v31 = v7;
      v30 = v6;
      [v13 addExecutionBlock:v29];

      v17 = &v32;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CCA8C8]);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __76__CSQueueAttributionManager_retrieveAvatarForParticipant_withResultHandler___block_invoke_2;
      v25[3] = &unk_278E0B2F8;
      objc_copyWeak(&v28, &location);
      v27 = v7;
      v18 = v6;
      v26 = v18;
      [v13 addExecutionBlock:v25];
      v19 = self->_pendingAvatarHandlers;
      v20 = [v18 socialProfileIdentifier];
      [(NSMutableDictionary *)v19 setObject:v13 forKeyedSubscript:v20];

      v21 = +[CSShieldManager sharedManager];
      v22 = [v21 requestClient];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __76__CSQueueAttributionManager_retrieveAvatarForParticipant_withResultHandler___block_invoke_3;
      v23[3] = &unk_278E0B320;
      v23[4] = self;
      v24 = v18;
      [v22 retrieveAvatarForParticipant:v24 handler:v23];

      v17 = &v28;
    }

    objc_destroyWeak(v17);
    goto LABEL_8;
  }

  (*(v7 + 2))(v7, v10);
  if (v13)
  {
    v14 = [MEMORY[0x277CCABD8] mainQueue];
    [v14 addOperation:v13];

    v15 = self->_pendingAvatarHandlers;
    v16 = [v6 socialProfileIdentifier];
    [(NSMutableDictionary *)v15 setObject:0 forKeyedSubscript:v16];

LABEL_8:
  }

  objc_destroyWeak(&location);
}

void __76__CSQueueAttributionManager_retrieveAvatarForParticipant_withResultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    v7 = WeakRetained;
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) socialProfileIdentifier];
    v6 = [v3 objectForKeyedSubscript:v5];
    (*(v4 + 16))(v4, v6);

    WeakRetained = v7;
  }
}

void __76__CSQueueAttributionManager_retrieveAvatarForParticipant_withResultHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    v7 = WeakRetained;
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) socialProfileIdentifier];
    v6 = [v3 objectForKeyedSubscript:v5];
    (*(v4 + 16))(v4, v6);

    WeakRetained = v7;
  }
}

void __76__CSQueueAttributionManager_retrieveAvatarForParticipant_withResultHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CSQueueAttributionManager_retrieveAvatarForParticipant_withResultHandler___block_invoke_4;
  block[3] = &unk_278E0AE18;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__CSQueueAttributionManager_retrieveAvatarForParticipant_withResultHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 24);
    v4 = [*(a1 + 48) socialProfileIdentifier];
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  v5 = *(*(a1 + 40) + 32);
  v6 = [*(a1 + 48) socialProfileIdentifier];
  v11 = [v5 objectForKeyedSubscript:v6];

  if (v11)
  {
    v7 = [MEMORY[0x277CCABD8] mainQueue];
    [v7 addOperation:v11];

    v8 = *(a1 + 48);
    v9 = *(*(a1 + 40) + 32);
    v10 = [v8 socialProfileIdentifier];
    [v9 setObject:0 forKeyedSubscript:v10];
  }
}

@end