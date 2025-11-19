@interface GKMatchmakerExtensionHostContext
- (void)shareMatchWithRequest:(id)a3 handler:(id)a4;
@end

@implementation GKMatchmakerExtensionHostContext

- (void)shareMatchWithRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__GKMatchmakerExtensionHostContext_shareMatchWithRequest_handler___block_invoke;
  block[3] = &unk_27966B380;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__GKMatchmakerExtensionHostContext_shareMatchWithRequest_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteViewController];
  [v2 shareMatchWithRequest:*(a1 + 40) handler:*(a1 + 48)];
}

@end