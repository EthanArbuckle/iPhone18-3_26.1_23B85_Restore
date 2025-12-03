@interface DBTodayViewSynchronizedAnimationManager
- (DBTodayViewSynchronizedAnimationManager)init;
- (void)invalidate;
- (void)registerAnimation:(id)animation client:(id)client animation:(id)a5;
- (void)runAnimationIfPossible:(id)possible client:(id)client;
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

- (void)registerAnimation:(id)animation client:(id)client animation:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  animationCopy = animation;
  clientCopy = client;
  v10 = a5;
  animationsByIdentifier = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
  array = [animationsByIdentifier objectForKey:animationCopy];

  v13 = DBLogForCategory(0x12uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412546;
    v18 = animationCopy;
    v19 = 2112;
    v20 = clientCopy;
    _os_log_impl(&dword_248146000, v13, OS_LOG_TYPE_DEFAULT, "Registering animation for identifier: %@ client: %@", &v17, 0x16u);
  }

  if (!array)
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v14 = objc_alloc_init(DBTodayViewSynchronizedAnimation);
  [(DBTodayViewSynchronizedAnimation *)v14 setAnimationBlock:v10];

  [(DBTodayViewSynchronizedAnimation *)v14 setClient:clientCopy];
  v15 = [array arrayByAddingObject:v14];

  animationsByIdentifier2 = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
  [animationsByIdentifier2 setObject:v15 forKey:animationCopy];
}

- (void)runAnimationIfPossible:(id)possible client:(id)client
{
  v24 = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  clientCopy = client;
  v8 = DBLogForCategory(0x12uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = possibleCopy;
    *&buf[12] = 2112;
    *&buf[14] = clientCopy;
    _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to run animation for identifier: %@ client: %@", buf, 0x16u);
  }

  animationsByIdentifier = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
  v10 = [animationsByIdentifier objectForKey:possibleCopy];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v23 = 1;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __73__DBTodayViewSynchronizedAnimationManager_runAnimationIfPossible_client___block_invoke;
  v17 = &unk_278F03020;
  v11 = clientCopy;
  v18 = v11;
  v19 = buf;
  [v10 enumerateObjectsUsingBlock:&v14];
  if (*(*&buf[8] + 24) == 1)
  {
    v12 = DBLogForCategory(0x12uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 138412290;
      v21 = possibleCopy;
      _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Running animation for identifier: %@", v20, 0xCu);
    }

    [MEMORY[0x277CD9FF0] begin];
    [v10 enumerateObjectsUsingBlock:&__block_literal_global_15];
    [MEMORY[0x277CD9FF0] commit];
    animationsByIdentifier2 = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
    [animationsByIdentifier2 removeObjectForKey:possibleCopy];
  }

  else
  {
    animationsByIdentifier2 = DBLogForCategory(0x12uLL);
    if (os_log_type_enabled(animationsByIdentifier2, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 138412290;
      v21 = possibleCopy;
      _os_log_impl(&dword_248146000, animationsByIdentifier2, OS_LOG_TYPE_DEFAULT, "Postponing animation for identifier: %@, not all clients ready", v20, 0xCu);
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
  animationsByIdentifier = [(DBTodayViewSynchronizedAnimationManager *)self animationsByIdentifier];
  [animationsByIdentifier removeAllObjects];
}

@end