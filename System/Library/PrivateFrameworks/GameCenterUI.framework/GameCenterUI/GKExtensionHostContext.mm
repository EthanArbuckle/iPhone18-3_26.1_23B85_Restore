@interface GKExtensionHostContext
- (GKExtensionRemoteViewController)remoteViewController;
- (void)messageFromExtension:(id)extension;
@end

@implementation GKExtensionHostContext

- (void)messageFromExtension:(id)extension
{
  extensionCopy = extension;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__GKExtensionHostContext_messageFromExtension___block_invoke;
  v6[3] = &unk_279669E48;
  v6[4] = self;
  v7 = extensionCopy;
  v5 = extensionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __47__GKExtensionHostContext_messageFromExtension___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteViewController];
  [v2 messageFromExtension:*(a1 + 40)];
}

- (GKExtensionRemoteViewController)remoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteViewController);

  return WeakRetained;
}

@end