@interface FPDAccessControlServicer
- (FPDAccessControlServicer)initWithAccessStore:(id)a3;
- (FPDAccessControlStore)accessStore;
- (void)bundleIdentifiersWithAccessToAnyItemCompletionHandler:(id)a3;
- (void)revokeAccessToAllItemsForBundle:(id)a3 completionHandler:(id)a4;
@end

@implementation FPDAccessControlServicer

- (FPDAccessControlServicer)initWithAccessStore:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FPDAccessControlServicer;
  v5 = [(FPDAccessControlServicer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessStore, v4);
  }

  return v6;
}

- (void)bundleIdentifiersWithAccessToAnyItemCompletionHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_accessStore);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__FPDAccessControlServicer_bundleIdentifiersWithAccessToAnyItemCompletionHandler___block_invoke;
  v7[3] = &unk_1E83C0048;
  v8 = v4;
  v6 = v4;
  [WeakRetained performWithDBConnection:v7];
}

void __82__FPDAccessControlServicer_bundleIdentifiersWithAccessToAnyItemCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__FPDAccessControlServicer_bundleIdentifiersWithAccessToAnyItemCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E83C0020;
    v10 = v5;
    v11 = v6;
    v7 = v6;
    [v10 performWithFlags:0 action:v9];
    (*(*(a1 + 32) + 16))(*(a1 + 32), v7, 0, v8);
  }
}

uint64_t __82__FPDAccessControlServicer_bundleIdentifiersWithAccessToAnyItemCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) fetch:@"SELECT identifier FROM bundle_keys LIMIT 100"];
  if ([v2 next])
  {
    do
    {
      v3 = *(a1 + 40);
      v4 = [v2 objectAtIndexedSubscript:0];
      [v3 addObject:v4];
    }

    while (([v2 next] & 1) != 0);
  }

  return 1;
}

- (void)revokeAccessToAllItemsForBundle:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_accessStore);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__FPDAccessControlServicer_revokeAccessToAllItemsForBundle_completionHandler___block_invoke;
  v11[3] = &unk_1E83C0070;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [WeakRetained performWithDBConnection:v11];
}

void __78__FPDAccessControlServicer_revokeAccessToAllItemsForBundle_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__FPDAccessControlServicer_revokeAccessToAllItemsForBundle_completionHandler___block_invoke_2;
    v7[3] = &unk_1E83BF6C0;
    v8 = *(a1 + 32);
    [a2 performWithFlags:16 action:v7];
    (*(*(a1 + 40) + 16))();
  }
}

- (FPDAccessControlStore)accessStore
{
  WeakRetained = objc_loadWeakRetained(&self->_accessStore);

  return WeakRetained;
}

@end