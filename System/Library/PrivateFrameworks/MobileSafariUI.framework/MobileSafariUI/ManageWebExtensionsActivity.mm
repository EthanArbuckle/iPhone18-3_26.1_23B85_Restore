@interface ManageWebExtensionsActivity
- (ManageWebExtensionsActivity)init;
- (UIActivityViewController)parentActivityViewController;
- (id)activityViewController;
- (void)_formatBadgeText;
- (void)_reloadBadgeCount;
- (void)dealloc;
- (void)extensionsControllerExtensionListDidChange:(id)change;
- (void)setBrowserDocument:(id)document;
@end

@implementation ManageWebExtensionsActivity

- (ManageWebExtensionsActivity)init
{
  v6.receiver = self;
  v6.super_class = ManageWebExtensionsActivity;
  v2 = [(UIActivity *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(ManageWebExtensionsActivity *)v2 _formatBadgeText];
    v4 = v3;
  }

  return v3;
}

- (void)_formatBadgeText
{
  v9 = self->_browserDocument;
  if ([(_SFBrowserDocument *)v9 isPrivateBrowsingEnabled])
  {
    numberOfNewlyInstalledExtensions = self->_numberOfNewlyInstalledExtensions;
    self->_numberOfNewlyInstalledExtensions = 0;
  }

  else
  {
    numberOfNewlyInstalledExtensions = [(_SFBrowserDocument *)v9 webExtensionsController];
    recentlyInstalledExtensionCount = [numberOfNewlyInstalledExtensions recentlyInstalledExtensionCount];
    contentBlockerManager = [(_SFBrowserDocument *)v9 contentBlockerManager];
    v6 = [contentBlockerManager recentlyInstalledExtensionCount] + recentlyInstalledExtensionCount;

    if (v6)
    {
      v7 = MEMORY[0x277CCABB8];
      numberOfNewlyInstalledExtensions = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      v8 = [v7 localizedStringFromNumber:numberOfNewlyInstalledExtensions numberStyle:1];
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong(&self->_numberOfNewlyInstalledExtensions, v8);
    if (!v6)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
}

- (void)setBrowserDocument:(id)document
{
  documentCopy = document;
  webExtensionsController = [(_SFBrowserDocument *)self->_browserDocument webExtensionsController];
  [webExtensionsController removeObserver:self];

  browserDocument = self->_browserDocument;
  self->_browserDocument = documentCopy;
  v7 = documentCopy;

  webExtensionsController2 = [(_SFBrowserDocument *)self->_browserDocument webExtensionsController];

  [webExtensionsController2 addObserver:self];
}

- (void)dealloc
{
  webExtensionsController = [(_SFBrowserDocument *)self->_browserDocument webExtensionsController];
  [webExtensionsController removeObserver:self];

  v4.receiver = self;
  v4.super_class = ManageWebExtensionsActivity;
  [(ManageWebExtensionsActivity *)&v4 dealloc];
}

- (id)activityViewController
{
  activityViewController = self->_activityViewController;
  if (!activityViewController)
  {
    v4 = [MEMORY[0x277D28CB8] createManageExtensionsNavigationControllerFromPageFormatMenu:0 activeDocument:self->_browserDocument];
    v5 = self->_activityViewController;
    self->_activityViewController = v4;

    activityViewController = self->_activityViewController;
  }

  return activityViewController;
}

- (void)_reloadBadgeCount
{
  [(ManageWebExtensionsActivity *)self _formatBadgeText];
  WeakRetained = objc_loadWeakRetained(&self->_parentActivityViewController);
  [WeakRetained _reloadActivity:self];
}

- (void)extensionsControllerExtensionListDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ManageWebExtensionsActivity_extensionsControllerExtensionListDidChange___block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (UIActivityViewController)parentActivityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentActivityViewController);

  return WeakRetained;
}

@end