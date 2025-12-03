@interface SUUIStarRatingQueue
- (SUUIStarRatingQueue)initWithClientContext:(id)context reviewConfiguration:(id)configuration;
- (UIWindow)window;
- (void)_setRating:(int64_t)rating forItemID:(id)d account:(id)account completionBlock:(id)block;
- (void)setRating:(int64_t)rating forItemID:(id)d completionBlock:(id)block;
@end

@implementation SUUIStarRatingQueue

- (SUUIStarRatingQueue)initWithClientContext:(id)context reviewConfiguration:(id)configuration
{
  contextCopy = context;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SUUIStarRatingQueue;
  v9 = [(SUUIStarRatingQueue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_reviewConfiguration, configuration);
  }

  return v10;
}

- (void)setRating:(int64_t)rating forItemID:(id)d completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    [(SUUIStarRatingQueue *)self _setRating:rating forItemID:dCopy account:activeAccount completionBlock:blockCopy];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D69A50]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__SUUIStarRatingQueue_setRating_forItemID_completionBlock___block_invoke;
    v13[3] = &unk_2798FCE10;
    v13[4] = self;
    ratingCopy = rating;
    v14 = dCopy;
    v15 = blockCopy;
    [v12 startWithAuthenticateResponseBlock:v13];
  }
}

void __59__SUUIStarRatingQueue_setRating_forItemID_completionBlock___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  if ([v8 authenticateResponseType] == 4)
  {
    v3 = a1[7];
    v4 = a1[4];
    v5 = a1[5];
    v6 = [v8 authenticatedAccount];
    [v4 _setRating:v3 forItemID:v5 account:v6 completionBlock:a1[6]];
  }

  else
  {
    v7 = a1[6];
    if (v7)
    {
      (*(v7 + 16))(v7, 0, 0);
    }
  }
}

- (void)_setRating:(int64_t)rating forItemID:(id)d account:(id)account completionBlock:(id)block
{
  dCopy = d;
  accountCopy = account;
  blockCopy = block;
  v13 = *MEMORY[0x277D767B0];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __68__SUUIStarRatingQueue__setRating_forItemID_account_completionBlock___block_invoke;
  v25[3] = &__block_descriptor_40_e5_v8__0l;
  v25[4] = v13;
  v17 = [mEMORY[0x277D75128] beginBackgroundTaskWithName:v16 expirationHandler:v25];

  v18 = [[SUUIPostRatingOperation alloc] initWithRating:rating forItemID:dCopy reviewConfiguration:self->_reviewConfiguration];
  objc_initWeak(&location, v18);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__SUUIStarRatingQueue__setRating_forItemID_account_completionBlock___block_invoke_2;
  v21[3] = &unk_2798FCE38;
  objc_copyWeak(v23, &location);
  v19 = blockCopy;
  v22 = v19;
  v23[1] = v17;
  [(SUUIPostRatingOperation *)v18 setCompletionBlock:v21];
  mainQueue = [MEMORY[0x277D7FD20] mainQueue];
  [mainQueue addOperation:v18];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __68__SUUIStarRatingQueue__setRating_forItemID_account_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 endBackgroundTask:*(a1 + 32)];
}

void __68__SUUIStarRatingQueue__setRating_forItemID_account_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SUUIStarRatingQueue__setRating_forItemID_account_completionBlock___block_invoke_3;
  block[3] = &unk_2798FC178;
  v7 = WeakRetained;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v5 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__SUUIStarRatingQueue__setRating_forItemID_account_completionBlock___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) responseDictionary];
  v3 = 1;
  if (([*(a1 + 32) success] & 1) == 0 && v2)
  {
    v4 = [objc_alloc(MEMORY[0x277D69A88]) initWithResponseDictionary:v2];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 actions];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      v9 = *MEMORY[0x277D6A570];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) actionType];
          v12 = [v11 isEqualToString:v9];

          if (v12)
          {
            v3 = 0;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      v3 = 1;
    }

LABEL_13:
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = [*(a1 + 32) error];
    (*(v13 + 16))(v13, v3, v14);
  }

  if (*(a1 + 48) != *MEMORY[0x277D767B0])
  {
    v15 = [MEMORY[0x277D75128] sharedApplication];
    [v15 endBackgroundTask:*(a1 + 48)];
  }
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

@end