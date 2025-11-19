@interface IAMWebMessageController
- (IAMWebMessageController)init;
- (IAMWebMessageControllerDelegate)delegate;
- (IAMWebView)webView;
- (void)_callLoadCompletionWithError:(id)a3;
- (void)_checkReadyForLoadCompletion;
- (void)_createJSOContentPages:(id)a3 fromMessageEntry:(id)a4 withBlock:(id)a5;
- (void)loadMessageFromMessageEntry:(id)a3 withWebArchiveURL:(id)a4 completionHandler:(id)a5;
- (void)setContentPages:(id)a3;
- (void)unregisterExportedObjectInterface;
- (void)webProcessJSODidCallClose;
- (void)webProcessJSODidCallOpen:(id)a3 options:(id)a4;
- (void)webProcessJSODidCallPerformAction:(id)a3 options:(id)a4;
- (void)webProcessJSODidReportEvent:(id)a3;
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
    v5 = [MEMORY[0x277CE3858] sharedMessagesConfiguration];
    v6 = [(IAMWebView *)v4 initWithFrame:v5 configuration:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v7 = self->_webView;
    self->_webView = v6;

    [(IAMWebView *)self->_webView setNavigationDelegate:self];
    v8 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_286718BC8];
    remoteObjectInterface = self->_remoteObjectInterface;
    self->_remoteObjectInterface = v8;

    v10 = [(IAMWebView *)self->_webView _remoteObjectRegistry];
    [v10 registerExportedObject:self interface:self->_remoteObjectInterface];

    webView = self->_webView;
  }

  return webView;
}

- (void)setContentPages:(id)a3
{
  v5 = a3;
  p_contentPages = &self->_contentPages;
  if (self->_contentPages != v5)
  {
    v7 = v5;
    objc_storeStrong(p_contentPages, a3);
    if (self->_isGlobalJSOAvailable && !self->_hasSentContentPages)
    {
      p_contentPages = [(IAMWebProcessProxy *)self->_webProcessProxy setWebProcessJSOContentPages:v7];
      self->_hasSentContentPages = 1;
    }
  }

  MEMORY[0x2821F9730](p_contentPages);
}

- (void)loadMessageFromMessageEntry:(id)a3 withWebArchiveURL:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(IAMWebMessageController *)self webView];
  [(IAMWebMessageController *)self setLoadCompletion:v11];

  objc_storeStrong(&self->_messageEntry, a3);
  if (!v10)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 1;
LABEL_10:
    v16 = [v19 errorWithDomain:@"IAMWebMessageErrorDomain" code:v20 userInfo:0];
    [(IAMWebMessageController *)self _callLoadCompletionWithError:v16];
    goto LABEL_11;
  }

  if (([v10 isFileURL] & 1) == 0)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 2;
    goto LABEL_10;
  }

  v13 = [v10 pathExtension];
  v14 = [v13 isEqualToString:@"webarchive"];

  if ((v14 & 1) == 0)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = 3;
    goto LABEL_10;
  }

  v15 = [(ICInAppMessageEntry *)self->_messageEntry applicationMessage];
  v16 = [v15 contentPages];

  if (v16)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__IAMWebMessageController_loadMessageFromMessageEntry_withWebArchiveURL_completionHandler___block_invoke;
    v21[3] = &unk_2797A75E8;
    v21[4] = self;
    [(IAMWebMessageController *)self _createJSOContentPages:v16 fromMessageEntry:v9 withBlock:v21];
  }

  v17 = [v10 URLByDeletingLastPathComponent];
  v18 = [v12 loadFileURL:v10 allowingReadAccessToURL:v17];

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
  v3 = [(IAMWebView *)self->_webView _remoteObjectRegistry];
  [v3 unregisterExportedObject:self interface:self->_remoteObjectInterface];
}

- (void)_callLoadCompletionWithError:(id)a3
{
  v6 = a3;
  v4 = [(IAMWebMessageController *)self loadCompletion];

  if (v4)
  {
    v5 = [(IAMWebMessageController *)self loadCompletion];
    (v5)[2](v5, v6);

    [(IAMWebMessageController *)self setLoadCompletion:0];
  }
}

- (void)_createJSOContentPages:(id)a3 fromMessageEntry:(id)a4 withBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__IAMWebMessageController__createJSOContentPages_fromMessageEntry_withBlock___block_invoke;
  block[3] = &unk_2797A7200;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
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
  v3 = [(IAMWebView *)self->_webView _remoteObjectRegistry];
  v4 = [v3 remoteObjectProxyWithInterface:v6];
  webProcessProxy = self->_webProcessProxy;
  self->_webProcessProxy = v4;
}

- (void)webProcessPlugInWillDestroyBrowserContextController
{
  v3 = [(IAMWebView *)self->_webView _remoteObjectRegistry];
  [v3 unregisterExportedObject:self interface:self->_remoteObjectInterface];
}

- (void)webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame
{
  v3 = [(IAMWebMessageController *)self contentPages];
  v4 = [v3 count];

  if (v4 && !self->_hasSentContentPages)
  {
    webProcessProxy = self->_webProcessProxy;
    v6 = [(IAMWebMessageController *)self contentPages];
    [(IAMWebProcessProxy *)webProcessProxy setWebProcessJSOContentPages:v6];

    self->_hasSentContentPages = 1;
  }

  self->_isGlobalJSOAvailable = 1;
}

- (void)webProcessJSODidReportEvent:(id)a3
{
  v7 = a3;
  v4 = [(IAMWebMessageController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(IAMWebMessageController *)self delegate];
    [v6 webMessageControllerWebViewDidReportEvent:self event:v7];
  }
}

- (void)webProcessJSODidCallPerformAction:(id)a3 options:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(IAMWebMessageController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(IAMWebMessageController *)self delegate];
    [v9 webMessageControllerWebViewDidRequestAction:self actionConfiguration:v10 options:v6];
  }
}

- (void)webProcessJSODidCallOpen:(id)a3 options:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(IAMWebMessageController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(IAMWebMessageController *)self delegate];
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v11];
    [v9 webMessageControllerWebViewDidRequestOpenURL:self url:v10 options:v6];
  }
}

- (void)webProcessJSODidCallClose
{
  v3 = [(IAMWebMessageController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(IAMWebMessageController *)self delegate];
    [v5 webMessageControllerWebViewDidRequestClose:self];
  }
}

- (IAMWebMessageControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end