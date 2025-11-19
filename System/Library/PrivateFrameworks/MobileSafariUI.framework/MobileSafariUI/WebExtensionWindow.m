@interface WebExtensionWindow
- (BOOL)_isPrivateWithSingleTabShowingExplanationText;
- (BOOL)isFocused;
- (BrowserController)browserController;
- (CGRect)webExtensionWindowGeometry;
- (NSArray)webExtensionTabs;
- (WBProfile)profile;
- (WBSWebExtensionTab)activeWebExtensionTab;
- (WebExtensionWindow)initWithBrowserController:(id)a3 isPrivateWindow:(BOOL)a4;
- (id)_webExtensionTabsWithoutCopying;
- (id)tabsForWebExtensionContext:(id)a3;
- (int64_t)windowStateForWebExtensionContext:(id)a3;
- (void)createNewTabAtIndex:(id)a3 url:(id)a4 makeActive:(BOOL)a5 completionHandler:(id)a6;
- (void)validateToolbarItemForExtension:(id)a3;
@end

@implementation WebExtensionWindow

- (WebExtensionWindow)initWithBrowserController:(id)a3 isPrivateWindow:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = WebExtensionWindow;
  v7 = [(WebExtensionWindow *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_browserController, v6);
    v8->_isPrivateWindow = a4;
    [MEMORY[0x277D4A8B0] nextWindowID];
    v8->_idForWebExtensions = v9;
    v10 = v8;
  }

  return v8;
}

- (void)createNewTabAtIndex:(id)a3 url:(id)a4 makeActive:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v26[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(WebExtensionWindow *)self _webExtensionTabsWithoutCopying];
  v14 = [v13 count];
  if (v10)
  {
    v15 = [v10 integerValue] < 1 ? 0 : objc_msgSend(v10, "integerValue");
    if (v15 < v14)
    {
      v14 = v15;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v17 = [WeakRetained tabController];
  if (!v14 && [(WebExtensionWindow *)self _isPrivateWithSingleTabShowingExplanationText])
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __75__WebExtensionWindow_createNewTabAtIndex_url_makeActive_completionHandler___block_invoke;
    v22[3] = &unk_2781D5660;
    v25 = v12;
    v23 = v17;
    v24 = v11;
    [v23 openNewTabWithOptions:2 completionHandler:v22];

    v18 = v25;
    goto LABEL_20;
  }

  v18 = -[TabDocument initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:]([TabDocument alloc], "initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:", 0, 0, 0, self->_isPrivateWindow, [WeakRetained isControlledByAutomation], 0, 0, WeakRetained, 0);
  [(TabDocument *)v18 setIsBlank:1];
  [(TabDocument *)v18 setScrollPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  if (v11)
  {
    if (!v7)
    {
      goto LABEL_12;
    }

LABEL_15:
    [WeakRetained dismissTransientUIAnimated:1];
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_16:
    v26[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v20 = [v13 firstObject];
    [v17 insertTabs:v19 beforeTab:v20 inBackground:!v7 animated:1];

    goto LABEL_17;
  }

  [(TabDocument *)v18 displayNewTabOverridePageIfNecessary];
  if (v7)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_13:
  v19 = [v13 objectAtIndexedSubscript:v14 - 1];
  [v17 insertTab:v18 afterTab:v19 inBackground:!v7 animated:1];
LABEL_17:

  if (v11)
  {
    v21 = [(TabDocument *)v18 loadURL:v11 userDriven:1];
  }

  (*(v12 + 2))(v12, v18);
LABEL_20:
}

void __75__WebExtensionWindow_createNewTabAtIndex_url_makeActive_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) activeTabDocument];
    v4 = *(a1 + 40);
    v7 = v3;
    if (v4)
    {
      v5 = [v3 loadURL:v4 userDriven:1];
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

- (id)_webExtensionTabsWithoutCopying
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = WeakRetained;
  if (self->_isPrivateWindow)
  {
    if ([(WebExtensionWindow *)self _isPrivateWithSingleTabShowingExplanationText])
    {
      v5 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }

    v6 = [v4 tabController];
    v7 = [v6 privateTabs];
  }

  else
  {
    v6 = [WeakRetained tabController];
    v7 = [v6 normalTabs];
  }

  v5 = v7;

LABEL_7:

  return v5;
}

- (BOOL)_isPrivateWithSingleTabShowingExplanationText
{
  if (!self->_isPrivateWindow)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained tabController];
  v4 = [v3 hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isFocused
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (self->_isPrivateWindow == [WeakRetained isPrivateBrowsingEnabled])
  {
    v4 = [WeakRetained activeWebExtensionWindowIsFocused];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGRect)webExtensionWindowGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained webExtensionWindowGeometry];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSArray)webExtensionTabs
{
  v2 = [(WebExtensionWindow *)self _webExtensionTabsWithoutCopying];
  v3 = [v2 copy];

  return v3;
}

- (WBSWebExtensionTab)activeWebExtensionTab
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = WeakRetained;
  if (self->_isPrivateWindow)
  {
    if ([(WebExtensionWindow *)self _isPrivateWithSingleTabShowingExplanationText])
    {
      v5 = 0;
      goto LABEL_7;
    }

    v6 = [v4 tabController];
    v7 = [v6 privateActiveTabDocument];
  }

  else
  {
    v6 = [WeakRetained tabController];
    v7 = [v6 normalActiveTabDocument];
  }

  v5 = v7;

LABEL_7:

  return v5;
}

- (void)validateToolbarItemForExtension:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained validateExtensionToolbarItemsInWindow:self];
}

- (WBProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v3 = [WeakRetained effectiveProfile];

  return v3;
}

- (id)tabsForWebExtensionContext:(id)a3
{
  v3 = [(WebExtensionWindow *)self webExtensionTabs];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (int64_t)windowStateForWebExtensionContext:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 activeTabDocument];
  if ([v5 webViewIsFullscreen])
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BrowserController)browserController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);

  return WeakRetained;
}

@end