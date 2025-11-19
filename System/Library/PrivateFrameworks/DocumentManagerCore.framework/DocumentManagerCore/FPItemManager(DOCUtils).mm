@interface FPItemManager(DOCUtils)
- (void)doc_fetchRootNodeForProviderDomain:()DOCUtils completionHandler:;
@end

@implementation FPItemManager(DOCUtils)

- (void)doc_fetchRootNodeForProviderDomain:()DOCUtils completionHandler:
{
  v5 = a3;
  v6 = a4;
  if ([v5 isUsingFPFS] && objc_msgSend(v5, "isiCloudDriveProvider"))
  {
    v7 = +[DOCNodeStartupManager shared];
    [v7 startIfNeeded];

    v8 = dispatch_get_global_queue(25, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__FPItemManager_DOCUtils__doc_fetchRootNodeForProviderDomain_completionHandler___block_invoke;
    v10[3] = &unk_278F9B598;
    v11 = v5;
    v12 = v6;
    dispatch_async(v8, v10);
  }

  else
  {
    v9 = [MEMORY[0x277CC6408] defaultManager];
    [v9 fetchRootItemForProviderDomain:v5 completionHandler:v6];
  }
}

@end