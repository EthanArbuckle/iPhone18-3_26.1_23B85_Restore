@interface VCPMADResourceManager
+ (id)sharedManager;
- (VCPMADResourceManager)init;
- (id)activateResource:(id)a3;
- (id)entryForResource:(id)a3;
- (int64_t)currentBudget;
- (int64_t)validateCost:(int64_t)a3;
- (void)_purgeAllResources;
- (void)_reserveBudget:(int64_t)a3;
- (void)_setBudget:(int64_t)a3;
- (void)checkTimeout;
- (void)deactivateResource:(id)a3;
- (void)dealloc;
- (void)purgeAllResources;
- (void)purgeInactiveResources;
- (void)reserveBudget:(int64_t)a3;
@end

@implementation VCPMADResourceManager

- (VCPMADResourceManager)init
{
  v9.receiver = self;
  v9.super_class = VCPMADResourceManager;
  v2 = [(VCPMADResourceManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_budget = 100;
    v4 = dispatch_queue_create("VCPMADResourceManager", 0);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = [MEMORY[0x1E695DF70] array];
    resources = v3->_resources;
    v3->_resources = v6;
  }

  return v3;
}

+ (id)sharedManager
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 sharedInstanceWithIdentifier:v4 andCreationBlock:&__block_literal_global_101];

  return v5;
}

VCPMADResourceManager *__38__VCPMADResourceManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(VCPMADResourceManager);

  return v0;
}

- (void)dealloc
{
  [(VCPMADResourceManager *)self purgeAllResources];
  v3.receiver = self;
  v3.super_class = VCPMADResourceManager;
  [(VCPMADResourceManager *)&v3 dealloc];
}

- (int64_t)validateCost:(int64_t)a3
{
  v3 = 100;
  if (a3 < 100)
  {
    v3 = a3;
  }

  v4 = v3 & ~(v3 >> 63);
  if (v4 != a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [(VCPMADResourceManager *)a3 validateCost:v4];
  }

  return v4;
}

- (int64_t)currentBudget
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__VCPMADResourceManager_currentBudget__block_invoke;
  v5[3] = &unk_1E8352270;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setBudget:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    budget = self->_budget;
    v6 = 134218240;
    v7 = budget;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Updating budget (%ld --> %ld)", &v6, 0x16u);
  }

  self->_budget = a3;
}

- (void)checkTimeout
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCPMADResourceManager_checkTimeout__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __37__VCPMADResourceManager_checkTimeout__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = [MEMORY[0x1E695DF00] date];
    [v2 timeIntervalSinceDate:*(*(a1 + 32) + 40)];
    v4 = v3;

    if (v4 > 30.0)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ResourceManager] Hit usage timeout; purging resources", v5, 2u);
      }

      [*(a1 + 32) _purgeAllResources];
    }
  }
}

- (id)entryForResource:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_resources;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 resource];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_reserveBudget:(int64_t)a3
{
  v39 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    budget = self->_budget;
    *buf = 134218240;
    v36 = budget;
    v37 = 2048;
    v38 = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Request to reserve budget [Budget: %ld][Target: %ld]", buf, 0x16u);
  }

  if (self->_budget < a3)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Pruning inactive resources", buf, 2u);
    }

    v6 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = self->_resources;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          if (![v12 activeCount])
          {
            [v6 addObject:v12];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    [v6 sortUsingComparator:&__block_literal_global_47];
    v13 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = *v26;
      *&v16 = 138412290;
      v24 = v16;
LABEL_19:
      v19 = 0;
      while (1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v25 + 1) + 8 * v19);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v21 = [v20 resource];
          *buf = v24;
          v36 = v21;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Purging inactive resource (%@)", buf, 0xCu);
        }

        v22 = [v20 resource];
        [v22 purge];

        [v13 addObject:v20];
        -[VCPMADResourceManager _setBudget:](self, "_setBudget:", [v20 currentCost] + self->_budget);
        if (self->_budget >= a3)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v17)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

    [(NSMutableArray *)self->_resources removeObjectsInArray:v13];
    if (self->_budget < a3 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = self->_budget;
      *buf = 134218240;
      v36 = v23;
      v37 = 2048;
      v38 = a3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ResourceManager] Failed to reserve budget [Budget: %ld][Target: %ld]", buf, 0x16u);
    }
  }
}

uint64_t __40__VCPMADResourceManager__reserveBudget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 currentCost];
  if (v6 >= [v5 currentCost])
  {
    v8 = [v5 currentCost];
    if (v8 >= [v4 currentCost])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)activateResource:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __42__VCPMADResourceManager_activateResource___block_invoke;
  v13 = &unk_1E834C3D0;
  v14 = v4;
  v15 = self;
  v6 = v4;
  dispatch_sync(queue, &v10);
  v7 = [VCPMADResourceLock alloc];
  v8 = [(VCPMADResourceLock *)v7 initWithResourceManager:self andResource:v6, v10, v11, v12, v13];

  return v8;
}

void __42__VCPMADResourceManager_activateResource___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v2 = *(a1 + 32);
    *buf = 138412290;
    v27 = v2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Request to activate %@", buf, 0xCu);
  }

  v3 = *(a1 + 40);
  if (!*(v3 + 48))
  {
    v4 = os_transaction_create();
    v5 = *(a1 + 40);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    objc_initWeak(buf, *(a1 + 40));
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __42__VCPMADResourceManager_activateResource___block_invoke_50;
    v24[3] = &unk_1E8351100;
    objc_copyWeak(&v25, buf);
    v7 = [VCPTimer timerWithIntervalSeconds:10 isOneShot:0 andBlock:v24];
    v8 = *(a1 + 40);
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
    v3 = *(a1 + 40);
  }

  v10 = *(v3 + 40);
  *(v3 + 40) = 0;

  v11 = [*(a1 + 40) entryForResource:*(a1 + 32)];
  v12 = [*(a1 + 40) validateCost:{objc_msgSend(*(a1 + 32), "activeCost")}];
  if (v11)
  {
    v13 = [(VCPMADResourceEntry *)v11 activeCount]== 0;
    v14 = MediaAnalysisLogLevel();
    if (v13)
    {
      if (v14 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 32);
        *buf = 138412290;
        v27 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Resource cached but not active (%@)", buf, 0xCu);
      }

      [(VCPMADResourceEntry *)v11 setActiveCount:[(VCPMADResourceEntry *)v11 activeCount]+ 1];
      v21 = v12 - [(VCPMADResourceEntry *)v11 currentCost];
      [*(a1 + 40) _reserveBudget:v21];
      [(VCPMADResourceEntry *)v11 setCurrentCost:v12];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v22 = *(a1 + 32);
        *buf = 138412290;
        v27 = v22;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Activating resource (%@)", buf, 0xCu);
      }

      [*(a1 + 40) _setBudget:*(*(a1 + 40) + 8) - v21];
    }

    else
    {
      if (v14 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 32);
        *buf = 138412290;
        v27 = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Resource cached and active (%@)", buf, 0xCu);
      }

      if (v12 > [(VCPMADResourceEntry *)v11 currentCost])
      {
        v16 = v12 - [(VCPMADResourceEntry *)v11 currentCost];
        [*(a1 + 40) _reserveBudget:v16];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 32);
          *buf = 138412290;
          v27 = v17;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Active resource cost has increased (%@)", buf, 0xCu);
        }

        [*(a1 + 40) _setBudget:*(*(a1 + 40) + 8) - v16];
        [(VCPMADResourceEntry *)v11 setCurrentCost:v12];
      }

      [(VCPMADResourceEntry *)v11 setActiveCount:[(VCPMADResourceEntry *)v11 activeCount]+ 1];
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 32);
      *buf = 138412290;
      v27 = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Resource not cached (%@)", buf, 0xCu);
    }

    [*(a1 + 40) _reserveBudget:v12];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v27 = v19;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Activating resource (%@)", buf, 0xCu);
    }

    v11 = [[VCPMADResourceEntry alloc] initWithResource:*(a1 + 32)];
    [(VCPMADResourceEntry *)v11 setActiveCount:[(VCPMADResourceEntry *)v11 activeCount]+ 1];
    [(VCPMADResourceEntry *)v11 setCurrentCost:v12];
    [*(*(a1 + 40) + 24) addObject:v11];
    [*(a1 + 40) _setBudget:*(*(a1 + 40) + 8) - v12];
  }

  if ((*(*(a1 + 40) + 8) & 0x8000000000000000) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    __42__VCPMADResourceManager_activateResource___block_invoke_cold_1();
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v23 = [(VCPMADResourceEntry *)v11 activeCount];
    *buf = 67109120;
    LODWORD(v27) = v23;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Active count %d", buf, 8u);
  }
}

void __42__VCPMADResourceManager_activateResource___block_invoke_50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained checkTimeout];
    WeakRetained = v2;
  }
}

- (void)deactivateResource:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__VCPMADResourceManager_deactivateResource___block_invoke;
  v7[3] = &unk_1E834C3D0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __44__VCPMADResourceManager_deactivateResource___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v2 = *(a1 + 32);
    *buf = 138412290;
    v24 = v2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Request to deactivate %@", buf, 0xCu);
  }

  v3 = [*(a1 + 40) entryForResource:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    [v3 setActiveCount:{objc_msgSend(v3, "activeCount") - 1}];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v5 = [v4 activeCount];
      *buf = 67109120;
      LODWORD(v24) = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Active count %d", buf, 8u);
    }

    if (![v4 activeCount])
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v6 = [v4 resource];
        *buf = 138412290;
        v24 = v6;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ResourceManager] Resource transition active --> inactive (%@)", buf, 0xCu);
      }

      v7 = *(a1 + 40);
      v8 = [v4 resource];
      v9 = [v7 validateCost:{objc_msgSend(v8, "inactiveCost")}];

      [*(a1 + 40) _setBudget:{*(*(a1 + 40) + 8) - v9 + objc_msgSend(v4, "currentCost")}];
      [v4 setCurrentCost:v9];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = *(*(a1 + 40) + 24);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if ([*(*(&v18 + 1) + 8 * i) activeCount] > 0)
            {

              goto LABEL_24;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v15 = [MEMORY[0x1E695DF00] date];
      v16 = *(a1 + 40);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    __44__VCPMADResourceManager_deactivateResource___block_invoke_cold_1((a1 + 32));
  }

LABEL_24:
}

- (void)reserveBudget:(int64_t)a3
{
  v4 = [(VCPMADResourceManager *)self validateCost:a3];
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__VCPMADResourceManager_reserveBudget___block_invoke;
  v6[3] = &unk_1E8350240;
  v6[4] = self;
  v6[5] = v4;
  dispatch_sync(queue, v6);
}

- (void)purgeInactiveResources
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VCPMADResourceManager_purgeInactiveResources__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __47__VCPMADResourceManager_purgeInactiveResources__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ResourceManager] Request to purge inactive resources", buf, 2u);
  }

  v2 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = a1;
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = *(v3 + 24);
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v31;
    v10 = MEMORY[0x1E69E9C10];
    *&v7 = 138412290;
    v28 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 activeCount];
        v14 = MediaAnalysisLogLevel();
        if (v13 < 1)
        {
          if (v14 >= 7 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v12 resource];
            *buf = v28;
            v35 = v16;
            _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_DEBUG, "[ResourceManager] Purging %@", buf, 0xCu);
          }

          v17 = [v12 resource];
          [v17 purge];

          [v4 addObject:v12];
          v18 = *(v29 + 32);
          v19 = v4;
          v20 = v18[1];
          v21 = [v12 currentCost] + v20;
          v4 = v19;
          [v18 _setBudget:v21];
        }

        else if (v14 >= 7 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v12 resource];
          *buf = v28;
          v35 = v15;
          _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_DEBUG, "[ResourceManager] Skipping active resource (%@)", buf, 0xCu);
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  [*(*(v29 + 32) + 24) removeObjectsInArray:v4];
  if (![*(*(v29 + 32) + 24) count])
  {
    [*(*(v29 + 32) + 32) destroy];
    v22 = *(v29 + 32);
    v23 = *(v22 + 32);
    *(v22 + 32) = 0;

    v24 = *(v29 + 32);
    v25 = *(v24 + 48);
    *(v24 + 48) = 0;

    v26 = *(v29 + 32);
    v27 = *(v26 + 40);
    *(v26 + 40) = 0;
  }
}

- (void)_purgeAllResources
{
  v5 = [a2 resource];
  *a1 = 138412290;
  *a3 = v5;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[ResourceManager] Purging active resource (%@)", a1, 0xCu);
}

- (void)purgeAllResources
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VCPMADResourceManager_purgeAllResources__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __42__VCPMADResourceManager_purgeAllResources__block_invoke(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ResourceManager] Request to purge all resources", v3, 2u);
  }

  return [*(a1 + 32) _purgeAllResources];
}

- (void)validateCost:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = a2;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[ResourceManager] Invalid cost detected (%ld); clipped to %ld", &v2, 0x16u);
}

void __44__VCPMADResourceManager_deactivateResource___block_invoke_cold_1(uint64_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[ResourceManager] Received request to deactivate un-tracked resource (%@)", &v2, 0xCu);
}

@end