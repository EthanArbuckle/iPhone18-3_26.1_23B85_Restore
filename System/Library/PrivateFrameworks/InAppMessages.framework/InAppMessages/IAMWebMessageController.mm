@interface IAMWebMessageController
- (IAMWebMessageController)init;
- (IAMWebMessageControllerDelegate)delegate;
- (IAMWebView)webView;
- (void)_callLoadCompletionWithError:(id)error;
- (void)_checkReadyForLoadCompletion;
- (void)_createJSOContentPages:(id)pages fromMessageEntry:(id)entry withBlock:(id)block;
- (void)loadMessageFromMessageEntry:(id)entry withWebArchiveURL:(id)l completionHandler:(id)handler;
- (void)setContentPages:(id)pages;
- (void)unregisterExportedObjectInterface;
- (void)webProcessJSODidCallClose;
- (void)webProcessJSODidCallOpen:(id)open options:(id)options;
- (void)webProcessJSODidCallPerformAction:(id)action options:(id)options;
- (void)webProcessJSODidReportEvent:(id)event;
- (void)webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame;
- (void)webProcessPlugInDidCreateBrowserContextController;
- (void)webProcessPlugInWillDestroyBrowserContextController;
@end

@implementation IAMWebMessageController

- (IAMWebMessageController)init
{
  v3.receiver = self;
  v3.super_class = IAMWebMessageController;
  result = [(IAMWebMessageController *)&v3 init];
  if (result)
  {
    *&result->_isGlobalJSOAvailable = 0;
  }

  return result;
}

- (IAMWebView)webView
{
  webView = self->_webView;
  if (!webView)
  {
    v4 = [IAMWebView alloc];
    mEMORY[0x277CE3858] = [MEMORY[0x277CE3858] sharedMessagesConfiguration];
    v6 = [(IAMWebView *)v4 initWithFrame:mEMORY[0x277CE3858] configuration:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v7 = self->_webView;
    self->_webView = v6;

    [(IAMWebView *)self->_webView setNavigationDelegate:self];
    v8 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_286718BC8];
    remoteObjectInterface = self->_remoteObjectInterface;
    self->_remoteObjectInterface = v8;

    _remoteObjectRegistry = [(IAMWebView *)self->_webView _remoteObjectRegistry];
    [_remoteObjectRegistry registerExportedObject:self interface:self->_remoteObjectInterface];

    webView = self->_webView;
  }

  return webView;
}

- (void)setContentPages:(id)pages
{
  pagesCopy = pages;
  p_contentPages = &self->_contentPages;
  if (self->_contentPages != pagesCopy)
  {
    v7 = pagesCopy;
    objc_storeStrong(p_contentPages, pages);
    if (self->_isGlobalJSOAvailable && !self->_hasSentContentPages)
    {
      p_contentPages = [(IAMWebProcessProxy *)self->_webProcessProxy setWebProcessJSOContentPages:v7];
      self->_hasSentContentPages = 1;
    }
  }

  MEMORY[0x2821F9730](p_contentPages);
}

- (void)loadMessageFromMessageEntry:(id)entry withWebArchiveURL:(id)l completionHandler:(id)handler
{
  entryCopy = entry;
  lCopy = l;
  handlerCopy = handler;
  webView = [(IAMWebMessageController *)self webView];
  [(IAMWebMessageController *)self setLoadCompletion:handlerCopy];

  objc_storeStrong(&self->_messageEntry, entry);
  if (!lCopy)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 1;
LABEL_10:
    contentPages = [v19 errorWithDomain:@"IAMWebMessageErrorDomain" code:v20 userInfo:0];
    [(IAMWebMessageController *)self _callLoadCompletionWithError:contentPages];
    goto LABEL_11;
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 2;
    goto LABEL_10;
  }

  pathExtension = [lCopy pathExtension];
  v14 = [pathExtension isEqualToString:@"webarchive"];

  if ((v14 & 1) == 0)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 3;
    goto LABEL_10;
  }

  applicationMessage = [(ICInAppMessageEntry *)self->_messageEntry applicationMessage];
  contentPages = [applicationMessage contentPages];

  if (contentPages)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__IAMWebMessageController_loadMessageFromMessageEntry_withWebArchiveURL_completionHandler___block_invoke;
    v21[3] = &unk_2797A75E8;
    v21[4] = self;
    [(IAMWebMessageController *)self _createJSOContentPages:contentPages fromMessageEntry:entryCopy withBlock:v21];
  }

  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v18 = [webView loadFileURL:lCopy allowingReadAccessToURL:uRLByDeletingLastPathComponent];

LABEL_11:
}

uint64_t __91__IAMWebMessageController_loadMessageFromMessageEntry_withWebArchiveURL_completionHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) setContentPages:a2];
  }

  return result;
}

- (void)unregisterExportedObjectInterface
{
  _remoteObjectRegistry = [(IAMWebView *)self->_webView _remoteObjectRegistry];
  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_remoteObjectInterface];
}

- (void)_callLoadCompletionWithError:(id)error
{
  errorCopy = error;
  loadCompletion = [(IAMWebMessageController *)self loadCompletion];

  if (loadCompletion)
  {
    loadCompletion2 = [(IAMWebMessageController *)self loadCompletion];
    (loadCompletion2)[2](loadCompletion2, errorCopy);

    [(IAMWebMessageController *)self setLoadCompletion:0];
  }
}

- (void)_createJSOContentPages:(id)pages fromMessageEntry:(id)entry withBlock:(id)block
{
  pagesCopy = pages;
  entryCopy = entry;
  blockCopy = block;
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__IAMWebMessageController__createJSOContentPages_fromMessageEntry_withBlock___block_invoke;
  block[3] = &unk_2797A7200;
  v15 = pagesCopy;
  v16 = entryCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = entryCopy;
  v13 = pagesCopy;
  dispatch_async(v10, block);
}

void __77__IAMWebMessageController__createJSOContentPages_fromMessageEntry_withBlock___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:*(a1 + 32) copyItems:1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v3;
  v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v24)
  {
    v22 = v2;
    v23 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        if ([v5 imagesCount])
        {
          v25 = v5;
          v26 = i;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v6 = [v5 images];
          v7 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v28;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v28 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v27 + 1) + 8 * j);
                if ([v11 hasIdentifier] && objc_msgSend(v11, "hasURL"))
                {
                  v12 = *(a1 + 40);
                  v13 = [v11 identifier];
                  v14 = [v12 cachedLocationForResourceWithIdentifier:v13];

                  if (v14)
                  {
                    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0];
                    v16 = [v15 absoluteString];
                    [v11 setURL:v16];
                  }
                }
              }

              v8 = [v6 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v8);
          }

          v2 = v22;
          v5 = v25;
          i = v26;
        }

        v17 = [v5 dictionaryRepresentationWithReportableMetricsEvents];
        [v2 addObject:v17];
      }

      v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  if (*(a1 + 48) && [v2 count])
  {
    v18 = *(a1 + 48);
    v19 = [v2 copy];
    (*(v18 + 16))(v18, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_checkReadyForLoadCompletion
{
  if (self->_didMainNavigationFinish && self->_isGlobalJSOAvailable)
  {
    [(IAMWebMessageController *)self _callLoadCompletionWithError:0];
  }
}

- (void)webProcessPlugInDidCreateBrowserContextController
{
  v6 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_28671F620];
  _remoteObjectRegistry = [(IAMWebView *)self->_webView _remoteObjectRegistry];
  v4 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v6];
  webProcessProxy = self->_webProcessProxy;
  self->_webProcessProxy = v4;
}

- (void)webProcessPlugInWillDestroyBrowserContextController
{
  _remoteObjectRegistry = [(IAMWebView *)self->_webView _remoteObjectRegistry];
  [_remoteObjectRegistry unregisterExportedObject:self interface:self->_remoteObjectInterface];
}

- (void)webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame
{
  contentPages = [(IAMWebMessageController *)self contentPages];
  v4 = [contentPages count];

  if (v4 && !self->_hasSentContentPages)
  {
    webProcessProxy = self->_webProcessProxy;
    contentPages2 = [(IAMWebMessageController *)self contentPages];
    [(IAMWebProcessProxy *)webProcessProxy setWebProcessJSOContentPages:contentPages2];

    self->_hasSentContentPages = 1;
  }

  self->_isGlobalJSOAvailable = 1;
}

- (void)webProcessJSODidReportEvent:(id)event
{
  eventCopy = event;
  delegate = [(IAMWebMessageController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(IAMWebMessageController *)self delegate];
    [delegate2 webMessageControllerWebViewDidReportEvent:self event:eventCopy];
  }
}

- (void)webProcessJSODidCallPerformAction:(id)action options:(id)options
{
  actionCopy = action;
  optionsCopy = options;
  delegate = [(IAMWebMessageController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(IAMWebMessageController *)self delegate];
    [delegate2 webMessageControllerWebViewDidRequestAction:self actionConfiguration:actionCopy options:optionsCopy];
  }
}

- (void)webProcessJSODidCallOpen:(id)open options:(id)options
{
  openCopy = open;
  optionsCopy = options;
  delegate = [(IAMWebMessageController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(IAMWebMessageController *)self delegate];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:openCopy];
    [delegate2 webMessageControllerWebViewDidRequestOpenURL:self url:v10 options:optionsCopy];
  }
}

- (void)webProcessJSODidCallClose
{
  delegate = [(IAMWebMessageController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(IAMWebMessageController *)self delegate];
    [delegate2 webMessageControllerWebViewDidRequestClose:self];
  }
}

- (IAMWebMessageControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end