@interface CACUILanguageViewBridgeController
- (CACLanguageViewBridgeDelegate)delegate;
- (CACUILanguageViewBridgeController)init;
- (id)createLanguageViewControllerWithLocales:(id)a3;
- (void)selectedLanguageWithIdentifier:(id)a3;
- (void)setSelectedLanguageIdentifier:(id)a3;
- (void)updateDownloadStatus:(id)a3;
- (void)updateInstallationStatus:(id)a3;
@end

@implementation CACUILanguageViewBridgeController

- (CACUILanguageViewBridgeController)init
{
  v6.receiver = self;
  v6.super_class = CACUILanguageViewBridgeController;
  v2 = [(CACUILanguageViewBridgeController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC19CommandAndControlUI21CACLanguageViewBridge);
    viewBridge = v2->_viewBridge;
    v2->_viewBridge = v3;

    [(CACLanguageViewBridge *)v2->_viewBridge setDelegate:v2];
  }

  return v2;
}

- (id)createLanguageViewControllerWithLocales:(id)a3
{
  if (!self->_trueViewController)
  {
    v4 = [(CACLanguageViewBridge *)self->_viewBridge makeLanguageUIWithLocales:a3];
    trueViewController = self->_trueViewController;
    self->_trueViewController = v4;
  }

  return [(CACUILanguageViewBridgeController *)self trueViewController];
}

- (void)updateInstallationStatus:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__CACUILanguageViewBridgeController_updateInstallationStatus___block_invoke;
  v6[3] = &unk_278DE6AF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __62__CACUILanguageViewBridgeController_updateInstallationStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewBridge];
  [v2 updateInstallationStatusWith:*(a1 + 40)];
}

- (void)updateDownloadStatus:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CACUILanguageViewBridgeController_updateDownloadStatus___block_invoke;
  v6[3] = &unk_278DE6AF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__CACUILanguageViewBridgeController_updateDownloadStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewBridge];
  [v2 updateDownloadStatusWith:*(a1 + 40)];
}

- (void)setSelectedLanguageIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__CACUILanguageViewBridgeController_setSelectedLanguageIdentifier___block_invoke;
  v6[3] = &unk_278DE6AF0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __67__CACUILanguageViewBridgeController_setSelectedLanguageIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewBridge];
  [v2 setSelectedWithLanguageIdentifier:*(a1 + 40)];
}

- (void)selectedLanguageWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CACUILanguageViewBridgeController *)self delegate];
  [v5 selectedLanguageWithIdentifier:v4];
}

- (CACLanguageViewBridgeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end