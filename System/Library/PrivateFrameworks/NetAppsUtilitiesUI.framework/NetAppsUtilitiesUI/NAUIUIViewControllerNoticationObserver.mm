@interface NAUIUIViewControllerNoticationObserver
- (NAUIUIViewControllerNoticationObserver)init;
- (UIViewController)viewController;
- (void)dealloc;
@end

@implementation NAUIUIViewControllerNoticationObserver

- (NAUIUIViewControllerNoticationObserver)init
{
  v20.receiver = self;
  v20.super_class = NAUIUIViewControllerNoticationObserver;
  v2 = [(NAUIUIViewControllerNoticationObserver *)&v20 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    observations = v2->_observations;
    v2->_observations = v3;

    objc_initWeak(&location, v2);
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = v2->_observations;
    v7 = [MEMORY[0x277CCABD8] mainQueue];
    v8 = *MEMORY[0x277D76758];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__NAUIUIViewControllerNoticationObserver_init__block_invoke;
    v17[3] = &unk_279966658;
    objc_copyWeak(&v18, &location);
    v9 = [v5 addObserverForName:v8 object:0 queue:v7 usingBlock:v17];
    [(NSMutableArray *)v6 addObject:v9];

    v10 = v2->_observations;
    v11 = [MEMORY[0x277CCABD8] mainQueue];
    v12 = *MEMORY[0x277D76660];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__NAUIUIViewControllerNoticationObserver_init__block_invoke_2;
    v15[3] = &unk_279966658;
    objc_copyWeak(&v16, &location);
    v13 = [v5 addObserverForName:v12 object:0 queue:v11 usingBlock:v15];
    [(NSMutableArray *)v10 addObject:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __46__NAUIUIViewControllerNoticationObserver_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewController];
  [v1 naui_applicationWillEnterForeground];
}

void __46__NAUIUIViewControllerNoticationObserver_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewController];
  [v1 naui_applicationDidEnterBackground];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_observations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [MEMORY[0x277CCAB98] defaultCenter];
        [v9 removeObserver:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = NAUIUIViewControllerNoticationObserver;
  [(NAUIUIViewControllerNoticationObserver *)&v10 dealloc];
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end