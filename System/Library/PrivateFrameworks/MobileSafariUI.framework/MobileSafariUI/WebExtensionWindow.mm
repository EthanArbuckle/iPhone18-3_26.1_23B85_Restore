@interface WebExtensionWindow
- (BOOL)_isPrivateWithSingleTabShowingExplanationText;
- (BOOL)isFocused;
- (BrowserController)browserController;
- (CGRect)webExtensionWindowGeometry;
- (NSArray)webExtensionTabs;
- (WBProfile)profile;
- (WBSWebExtensionTab)activeWebExtensionTab;
- (WebExtensionWindow)initWithBrowserController:(id)controller isPrivateWindow:(BOOL)window;
- (id)_webExtensionTabsWithoutCopying;
- (id)tabsForWebExtensionContext:(id)context;
- (int64_t)windowStateForWebExtensionContext:(id)context;
- (void)createNewTabAtIndex:(id)index url:(id)url makeActive:(BOOL)active completionHandler:(id)handler;
- (void)validateToolbarItemForExtension:(id)extension;
@end

@implementation WebExtensionWindow

- (WebExtensionWindow)initWithBrowserController:(id)controller isPrivateWindow:(BOOL)window
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = WebExtensionWindow;
  v7 = [(WebExtensionWindow *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_browserController, controllerCopy);
    v8->_isPrivateWindow = window;
    [MEMORY[0x277D4A8B0] nextWindowID];
    v8->_idForWebExtensions = v9;
    v10 = v8;
  }

  return v8;
}

- (void)createNewTabAtIndex:(id)index url:(id)url makeActive:(BOOL)active completionHandler:(id)handler
{
  activeCopy = active;
  v26[1] = *MEMORY[0x277D85DE8];
  indexCopy = index;
  urlCopy = url;
  handlerCopy = handler;
  _webExtensionTabsWithoutCopying = [(WebExtensionWindow *)self _webExtensionTabsWithoutCopying];
  v14 = [_webExtensionTabsWithoutCopying count];
  if (indexCopy)
  {
    v15 = [indexCopy integerValue] < 1 ? 0 : objc_msgSend(indexCopy, "integerValue");
    if (v15 < v14)
    {
      v14 = v15;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  if (!v14 && [(WebExtensionWindow *)self _isPrivateWithSingleTabShowingExplanationText])
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __75__WebExtensionWindow_createNewTabAtIndex_url_makeActive_completionHandler___block_invoke;
    v22[3] = &unk_2781D5660;
    v25 = handlerCopy;
    v23 = tabController;
    v24 = urlCopy;
    [v23 openNewTabWithOptions:2 completionHandler:v22];

    v18 = v25;
    goto LABEL_20;
  }

  v18 = -[TabDocument initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:]([TabDocument alloc], "initWithTitle:URL:UUID:privateBrowsingEnabled:controlledByAutomation:hibernated:bookmark:browserController:relatedWebView:", 0, 0, 0, self->_isPrivateWindow, [WeakRetained isControlledByAutomation], 0, 0, WeakRetained, 0);
  [(TabDocument *)v18 setIsBlank:1];
  [(TabDocument *)v18 setScrollPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  if (urlCopy)
  {
    if (!activeCopy)
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
    firstObject = [_webExtensionTabsWithoutCopying firstObject];
    [tabController insertTabs:v19 beforeTab:firstObject inBackground:!activeCopy animated:1];

    goto LABEL_17;
  }

  [(TabDocument *)v18 displayNewTabOverridePageIfNecessary];
  if (activeCopy)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_13:
  v19 = [_webExtensionTabsWithoutCopying objectAtIndexedSubscript:v14 - 1];
  [tabController insertTab:v18 afterTab:v19 inBackground:!activeCopy animated:1];
LABEL_17:

  if (urlCopy)
  {
    v21 = [(TabDocument *)v18 loadURL:urlCopy userDriven:1];
  }

  (*(handlerCopy + 2))(handlerCopy, v18);
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

    tabController = [v4 tabController];
    privateTabs = [tabController privateTabs];
  }

  else
  {
    tabController = [WeakRetained tabController];
    privateTabs = [tabController normalTabs];
  }

  v5 = privateTabs;

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
  tabController = [WeakRetained tabController];
  hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText = [tabController hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText];
  v5 = hiddenPrivateTabDocumentWhenShowingPrivateBrowsingExplanationText != 0;

  return v5;
}

- (BOOL)isFocused
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  if (self->_isPrivateWindow == [WeakRetained isPrivateBrowsingEnabled])
  {
    activeWebExtensionWindowIsFocused = [WeakRetained activeWebExtensionWindowIsFocused];
  }

  else
  {
    activeWebExtensionWindowIsFocused = 0;
  }

  return activeWebExtensionWindowIsFocused;
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
  _webExtensionTabsWithoutCopying = [(WebExtensionWindow *)self _webExtensionTabsWithoutCopying];
  v3 = [_webExtensionTabsWithoutCopying copy];

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

    tabController = [v4 tabController];
    privateActiveTabDocument = [tabController privateActiveTabDocument];
  }

  else
  {
    tabController = [WeakRetained tabController];
    privateActiveTabDocument = [tabController normalActiveTabDocument];
  }

  v5 = privateActiveTabDocument;

LABEL_7:

  return v5;
}

- (void)validateToolbarItemForExtension:(id)extension
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  [WeakRetained validateExtensionToolbarItemsInWindow:self];
}

- (WBProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  effectiveProfile = [WeakRetained effectiveProfile];

  return effectiveProfile;
}

- (id)tabsForWebExtensionContext:(id)context
{
  webExtensionTabs = [(WebExtensionWindow *)self webExtensionTabs];
  v4 = webExtensionTabs;
  if (webExtensionTabs)
  {
    v5 = webExtensionTabs;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (int64_t)windowStateForWebExtensionContext:(id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  tabController = [WeakRetained tabController];
  activeTabDocument = [tabController activeTabDocument];
  if ([activeTabDocument webViewIsFullscreen])
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