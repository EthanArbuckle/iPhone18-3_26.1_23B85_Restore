@interface DBTodayViewSynchronizedAnimationManager
- (DBTodayViewSynchronizedAnimationManager)init;
- (void)invalidate;
- (void)registerAnimation:(id)a3 client:(id)a4 animation:(id)a5;
- (void)runAnimationIfPossible:(id)a3 client:(id)a4;
@end

@implementation DBTodayViewSynchronizedAnimationManager

- (DBTodayViewSynchronizedAnimationManager)init
{
  v6.receiver = self;
  v6.super_class = DBTodayViewSynchronizedAnimationManager;
  v2 = [(DBTodayViewSynchronizedAnimationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    animationsByIdentifier = v2->_animationsByIdentifier;
    v2->_animationsByIdentifier = v3;
  }

  return v2;
}

- (void)registerAnimation:(id)a3 client:(id)a4 animation:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
  v12 = [v11 objectForKey:v8];

  v13 = DBLogForCategory(0x12uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Registering animation for identifier: %@ client: %@", &v17, 0x16u);
  }

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEA60] array];
  }

  v14 = objc_alloc_init(DBTodayViewSynchronizedAnimation);
  [(DBTodayViewSynchronizedAnimation *)v14 setAnimationBlock:v10];

  [(DBTodayViewSynchronizedAnimation *)v14 setClient:v9];
  v15 = [v12 arrayByAddingObject:v14];

  v16 = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
  [v16 setObject:v15 forKey:v8];
}

- (void)runAnimationIfPossible:(id)a3 client:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DBLogForCategory(0x12uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to run animation for identifier: %@ client: %@", buf, 0x16u);
  }

  v9 = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
  v10 = [v9 objectForKey:v6];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v23 = 1;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __73__DBTodayViewSynchronizedAnimationManager_runAnimationIfPossible_client___block_invoke;
  v17 = &unk_278F03020;
  v11 = v7;
  v18 = v11;
  v19 = buf;
  [v10 enumerateObjectsUsingBlock:&v14];
  if (*(*&buf[8] + 24) == 1)
  {
    v12 = DBLogForCategory(0x12uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 138412290;
      v21 = v6;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Running animation for identifier: %@", v20, 0xCu);
    }

    [MEMORY[0x277CD9FF0] begin];
    [v10 enumerateObjectsUsingBlock:&__block_literal_global_15];
    [MEMORY[0x277CD9FF0] commit];
    v13 = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
    [v13 removeObjectForKey:v6];
  }

  else
  {
    v13 = DBLogForCategory(0x12uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 138412290;
      v21 = v6;
      _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Postponing animation for identifier: %@, not all clients ready", v20, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __73__DBTodayViewSynchronizedAnimationManager_runAnimationIfPossible_client___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 client];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [v6 setReady:1];
  }

  else
  {
    v5 = [v6 ready];

    if ((v5 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

void __73__DBTodayViewSynchronizedAnimationManager_runAnimationIfPossible_client___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = [v3 animationBlock];
  v2[2]();

  [v3 setAnimationBlock:0];
}

- (void)invalidate
{
  v2 = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
  [v2 removeAllObjects];
}

@end