@interface LoadingController
- (LoadingControllerDelegate)delegate;
- (NSString)title;
- (NSString)titleForStatePersisting;
- (NSURL)URL;
- (NSURL)URLForStatePersisting;
- (id)loadRequest:(id)a3 userDriven:(BOOL)a4 shouldOpenExternalURLs:(BOOL)a5 eventAttribution:(id)a6;
- (void)goBack;
- (void)goForward;
- (void)reloadFromOrigin:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setURL:(id)a3;
@end

@implementation LoadingController

- (NSString)title
{
  webView = self->_webView;
  if (webView)
  {
    title = [(WKWebView *)self->_webView title];
  }

  else
  {
    title = self->_title;
  }

  v4 = [MEMORY[0x277CCA900] safari_lockRelatedEmojiCharacterSet];
  v5 = [title safari_stringByRemovingCharactersInSet:v4];

  if (webView)
  {
  }

  return v5;
}

- (NSURL)URL
{
  v3 = [(WKWebView *)self->_webView URL];
  URL = v3;
  if (!v3)
  {
    URL = self->_URL;
  }

  v5 = URL;

  return URL;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      title = self->_title;
      self->_title = v7;

      v5 = v9;
    }
  }
}

- (void)setURL:(id)a3
{
  v5 = a3;
  URL = self->_URL;
  p_URL = &self->_URL;
  if (URL != v5)
  {
    v8 = v5;
    objc_storeStrong(p_URL, a3);
    v5 = v8;
  }
}

- (NSURL)URLForStatePersisting
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(LoadingController *)self URL];
  URL = v3;
  if (!v3)
  {
    URL = self->_URL;
  }

  v5 = URL;

  if ([(NSURL *)v5 safari_isSafariWebExtensionURL])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = +[Application sharedApplication];
    v7 = [v6 allWebExtensionsControllers];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) _persistentStateURLForExtensionURL:v5];
          if (v12)
          {
            v13 = v12;

            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  v13 = v5;
LABEL_15:

  return v13;
}

- (NSString)titleForStatePersisting
{
  v3 = [(LoadingController *)self title];
  title = v3;
  if (!v3)
  {
    title = self->_title;
  }

  v5 = title;

  return title;
}

- (id)loadRequest:(id)a3 userDriven:(BOOL)a4 shouldOpenExternalURLs:(BOOL)a5 eventAttribution:(id)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!self->_webView)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXPageLoading();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [LoadingController loadRequest:v13 userDriven:? shouldOpenExternalURLs:? eventAttribution:?];
    }
  }

  v14 = [v10 safari_requestBySettingIsUserInitiated:1];

  [WeakRetained loadingController:self willLoadRequest:v14 webView:self->_webView userDriven:v8];
  if (objc_opt_respondsToSelector())
  {
    [(WKWebView *)self->_webView _setUIEventAttribution:v11];
  }

  v15 = [v14 URL];
  if ([v15 sf_isOfflineReadingListURL])
  {
    webView = self->_webView;
    v17 = MEMORY[0x277CBEBC0];
    v18 = [MEMORY[0x277D7B5A8] readingListArchivesDirectoryPath];
    v19 = [v17 fileURLWithPath:v18 isDirectory:1];
    v20 = [(WKWebView *)webView loadFileURL:v15 allowingReadAccessToURL:v19];

    v21 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v21 setBool:1 forKey:*MEMORY[0x277D29268]];
  }

  else
  {
    v22 = [v15 sf_isTestWebArchiveURL];
    v23 = self->_webView;
    if (v22)
    {
      v24 = [(WKWebView *)v23 loadFileURL:v15 allowingReadAccessToURL:v15];
    }

    else
    {
      if (v7)
      {
        [(WKWebView *)v23 _loadRequest:v14 shouldOpenExternalURLs:1];
      }

      else
      {
        [(WKWebView *)v23 loadRequest:v14];
      }
      v24 = ;
    }

    v20 = v24;
  }

  return v20;
}

- (void)goBack
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained loadingControllerWillStartUserDrivenLoad:self];

  v4 = [(WKWebView *)self->_webView goBack];
}

- (void)goForward
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained loadingControllerWillStartUserDrivenLoad:self];

  v4 = [(WKWebView *)self->_webView goForward];
}

- (void)reloadFromOrigin:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained loadingControllerWillStartUserDrivenLoad:self];

  webView = self->_webView;
  if (v3)
  {
    v7 = [(WKWebView *)webView reloadFromOrigin];
  }

  else
  {
    v8 = [(WKWebView *)webView reload];
  }
}

- (LoadingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)loadRequest:(uint64_t)a1 userDriven:(NSObject *)a2 shouldOpenExternalURLs:eventAttribution:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_215819000, a2, OS_LOG_TYPE_FAULT, "LoadingController with delegate %p is being asked to load a request but does not have a web view", &v2, 0xCu);
}

@end