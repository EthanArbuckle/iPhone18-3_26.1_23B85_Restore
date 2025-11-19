@interface CRKFetchChaptersFromBooksServiceOperation
- (CRKFetchChaptersFromBooksServiceOperation)initWithRequest:(id)a3;
- (void)main;
@end

@implementation CRKFetchChaptersFromBooksServiceOperation

- (CRKFetchChaptersFromBooksServiceOperation)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKFetchChaptersFromBooksServiceOperation;
  v6 = [(CRKFetchChaptersFromBooksServiceOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mRequest, a3);
  }

  return v7;
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CRKFetchChaptersFromBooksServiceOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__CRKFetchChaptersFromBooksServiceOperation_main__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  v4 = *(v3 + 376);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CRKFetchChaptersFromBooksServiceOperation_main__block_invoke_2;
  v5[3] = &unk_278DC2ED0;
  v5[4] = v3;
  [v2 fetchChaptersWithRequest:v4 completion:v5];
}

uint64_t __49__CRKFetchChaptersFromBooksServiceOperation_main__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 endOperationWithError:?];
  }

  else
  {
    return [v3 endOperationWithResultObject:a2];
  }
}

@end