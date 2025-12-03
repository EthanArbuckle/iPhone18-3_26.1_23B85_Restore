@interface SUUIURLResolver
+ (id)tabIdentifierForURL:(id)l;
+ (void)isLegacyWebViewForURL:(id)l bag:(id)bag completion:(id)completion;
- (SUUIURLResolver)initWithClientContext:(id)context;
- (SUUIURLResolverDelegate)delegate;
- (UINavigationControllerDelegate)navigationControllerDelegate;
- (id)_newLegacyHTMLViewControllerWithSection:(id)section;
- (id)presentationViewControllerForPassbookLoader:(id)loader;
- (void)_addPassbookPassWithURL:(id)l;
- (void)_handleSafariScriptDataUpdate:(id)update;
- (void)_performLookupWithURL:(id)l;
- (void)_presentViewController:(id)controller;
- (void)_resolveURLRequest:(id)request withOriginURL:(id)l;
- (void)_selectTabWithIdentifier:(id)identifier;
- (void)_sendDidFinishWithResult:(BOOL)result;
- (void)_showAccountViewControllerWithURL:(id)l;
- (void)_showBagURLWithURL:(id)l;
- (void)_showDonationViewControllerWithURL:(id)l;
- (void)_showGiftViewControllerWithURL:(id)l;
- (void)_showPlaceholderViewController;
- (void)_showRedeemViewControllerWithURL:(id)l;
- (void)_showSearchWithURL:(id)l;
- (void)_showViewControllerWithResponse:(id)response fromOperation:(id)operation;
- (void)amsResolveURL:(id)l forURLType:(int64_t)type;
- (void)dealloc;
- (void)passbookLoaderDidFinish:(id)finish;
- (void)resolveURL:(id)l;
@end

@implementation SUUIURLResolver

- (SUUIURLResolver)initWithClientContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SUUIURLResolver;
  v6 = [(SUUIURLResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
  }

  return v7;
}

- (void)dealloc
{
  [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIURLResolver;
  [(SUUIURLResolver *)&v3 dealloc];
}

+ (id)tabIdentifierForURL:(id)l
{
  actionString = [l actionString];
  if ([actionString isEqualToString:@"audiobooks"])
  {
    v4 = @"audiobooks";
    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"books"])
  {
    goto LABEL_4;
  }

  if ([actionString isEqualToString:@"movies"])
  {
    v4 = @"movies";
    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"music"] & 1) != 0 || (objc_msgSend(actionString, "isEqualToString:", @"music-videos"))
  {
    v4 = @"music";
    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"podcasts"])
  {
    goto LABEL_4;
  }

  if ([actionString isEqualToString:@"ringtones"])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = @"tones";
    }

    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"software"])
  {
LABEL_4:
    v4 = @"featured";
    goto LABEL_10;
  }

  if ([actionString isEqualToString:@"tv-shows"])
  {
    v4 = @"tv";
  }

  else if ([actionString isEqualToString:@"updates"])
  {
    v4 = @"updates";
  }

  else if ([actionString isEqualToString:@"purchased"])
  {
    v4 = @"purchased";
  }

  else if ([actionString isEqualToString:@"manage"])
  {
    v4 = @"managed";
  }

  else
  {
    v4 = 0;
  }

LABEL_10:

  return v4;
}

- (void)resolveURL:(id)l
{
  lCopy = l;
  actionString = [lCopy actionString];
  v5 = [objc_opt_class() tabIdentifierForURL:lCopy];
  if ([actionString isEqualToString:@"accessory-lookup"])
  {
    goto LABEL_2;
  }

  if ([actionString isEqualToString:@"addpassbookpass"])
  {
    [(SUUIURLResolver *)self _addPassbookPassWithURL:lCopy];
    goto LABEL_9;
  }

  if ([actionString isEqualToString:@"donate"])
  {
    [(SUUIURLResolver *)self _showDonationViewControllerWithURL:lCopy];
    goto LABEL_9;
  }

  if ([actionString isEqualToString:@"gift"])
  {
    [(SUUIURLResolver *)self _showGiftViewControllerWithURL:lCopy];
    goto LABEL_9;
  }

  if ([actionString isEqualToString:@"library-link"])
  {
    goto LABEL_2;
  }

  if ([actionString isEqualToString:*MEMORY[0x277D6A598]])
  {
    [(SUUIURLResolver *)self _handleSafariScriptDataUpdate:lCopy];
    goto LABEL_9;
  }

  if ([actionString isEqualToString:@"lookup"])
  {
    [(SUUIURLResolver *)self _performLookupWithURL:lCopy];
    goto LABEL_9;
  }

  if ([actionString isEqualToString:@"redeem"])
  {
    [(SUUIURLResolver *)self _showRedeemViewControllerWithURL:lCopy];
    goto LABEL_9;
  }

  if ([actionString isEqualToString:@"search"])
  {
    [(SUUIURLResolver *)self _showSearchWithURL:lCopy];
    goto LABEL_9;
  }

  if ([actionString isEqualToString:@"bagurl"] || objc_msgSend(actionString, "isEqualToString:", @"newsstand") || objc_msgSend(actionString, "isEqualToString:", @"passbook"))
  {
    goto LABEL_2;
  }

  if (![actionString isEqualToString:@"ringtones"])
  {
    if (![v5 length])
    {
      underlyingURL = [lCopy underlyingURL];
      host = [underlyingURL host];
      v8 = [host length];

      if (v8)
      {
        newURLRequest = [lCopy newURLRequest];
        [(SUUIURLResolver *)self _resolveURLRequest:newURLRequest withOriginURL:lCopy];
      }

      else
      {
        [(SUUIURLResolver *)self _sendDidFinishWithResult:0];
      }

      goto LABEL_9;
    }

    goto LABEL_29;
  }

  if (SUUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
LABEL_2:
    [(SUUIURLResolver *)self _showBagURLWithURL:lCopy];
    goto LABEL_9;
  }

  if ([v5 length])
  {
LABEL_29:
    [(SUUIURLResolver *)self _selectTabWithIdentifier:v5];
  }

LABEL_9:
}

- (void)amsResolveURL:(id)l forURLType:(int64_t)type
{
  lCopy = l;
  underlyingURL = [lCopy underlyingURL];
  v8 = +[SUUIClientContext amsBag];
  switch(type)
  {
    case 0:
      ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
      ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

      v26 = 0;
      v27 = &v26;
      v28 = 0x2050000000;
      v15 = getAMSUIWebViewControllerClass_softClass;
      v29 = getAMSUIWebViewControllerClass_softClass;
      if (!getAMSUIWebViewControllerClass_softClass)
      {
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __getAMSUIWebViewControllerClass_block_invoke;
        v24 = &unk_2798FB038;
        v25 = &v26;
        __getAMSUIWebViewControllerClass_block_invoke(&v21);
        v15 = v27[3];
      }

      v16 = v15;
      _Block_object_dispose(&v26, 8);
      v17 = [v15 alloc];
      currentProcess = [MEMORY[0x277CEE620] currentProcess];
      v12 = [v17 initWithBag:v8 account:ams_activeiTunesAccount clientInfo:currentProcess];

      v19 = [v12 loadURL:underlyingURL];
      v20 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v12];
      [(SUUIURLResolver *)self _presentViewController:v20];
      [(SUUIURLResolver *)self _sendDidFinishWithResult:1];

      goto LABEL_11;
    case 1:
      [(SUUIURLResolver *)self _showAccountViewControllerWithURL:lCopy];
      break;
    case 2:
      v26 = 0;
      v27 = &v26;
      v28 = 0x2050000000;
      v9 = getAMSUIDynamicViewControllerClass_softClass;
      v29 = getAMSUIDynamicViewControllerClass_softClass;
      if (!getAMSUIDynamicViewControllerClass_softClass)
      {
        v21 = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __getAMSUIDynamicViewControllerClass_block_invoke;
        v24 = &unk_2798FB038;
        v25 = &v26;
        __getAMSUIDynamicViewControllerClass_block_invoke(&v21);
        v9 = v27[3];
      }

      v10 = v9;
      _Block_object_dispose(&v26, 8);
      ams_activeiTunesAccount = [[v9 alloc] initWithBag:v8 URL:underlyingURL];
      v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:ams_activeiTunesAccount];
      WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);
      [v12 setDelegate:WeakRetained];

      [v12 setModalPresentationStyle:2];
      [(SUUIURLResolver *)self _presentViewController:v12];
      [(SUUIURLResolver *)self _sendDidFinishWithResult:1];
LABEL_11:

      break;
  }
}

+ (void)isLegacyWebViewForURL:(id)l bag:(id)bag completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  bagCopy = bag;
  completionCopy = completion;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v12 = shouldLog | 2;
  }

  else
  {
    v12 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 & 2;
  }

  if (v14)
  {
    LODWORD(v29) = 138412290;
    *(&v29 + 4) = lCopy;
    LODWORD(v22) = 12;
    v15 = _os_log_send_and_compose_impl();

    if (v15)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v29, v22}];
      free(v15);
      SSFileLog();
    }
  }

  else
  {
  }

  if (!lCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v17 = getAMSURLParserClass_softClass_0;
  v28 = getAMSURLParserClass_softClass_0;
  if (!getAMSURLParserClass_softClass_0)
  {
    *&v29 = MEMORY[0x277D85DD0];
    *(&v29 + 1) = 3221225472;
    v30 = __getAMSURLParserClass_block_invoke_0;
    v31 = &unk_2798FB038;
    v32 = &v25;
    __getAMSURLParserClass_block_invoke_0(&v29);
    v17 = v26[3];
  }

  v18 = v17;
  _Block_object_dispose(&v25, 8);
  v19 = [[v17 alloc] initWithBag:bagCopy];
  v20 = [v19 typeForURL:lCopy];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__SUUIURLResolver_isLegacyWebViewForURL_bag_completion___block_invoke;
  v23[3] = &unk_2798FDAF0;
  v24 = completionCopy;
  v21 = completionCopy;
  [v20 addFinishBlock:v23];
}

uint64_t __56__SUUIURLResolver_isLegacyWebViewForURL_bag_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 1;
  }

  v7 = v6;
  v8 = [MEMORY[0x277D69B38] sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 & 2;
  }

  if (v7 == 1)
  {
    if (v12)
    {
      v18 = 0;
      LODWORD(v16) = 2;
      v15 = &v18;
      goto LABEL_18;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_20;
  }

  v17 = 0;
  LODWORD(v16) = 2;
  v15 = &v17;
LABEL_18:
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, v15, v16}];
    free(v13);
    SSFileLog();
    goto LABEL_20;
  }

LABEL_21:

  return (*(*(a1 + 32) + 16))();
}

- (void)passbookLoaderDidFinish:(id)finish
{
  [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  passbookLoader = self->_passbookLoader;
  self->_passbookLoader = 0;

  [(SUUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (id)presentationViewControllerForPassbookLoader:(id)loader
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained presentationViewControllerForURLResolver:self];

  return v5;
}

- (void)_addPassbookPassWithURL:(id)l
{
  lCopy = l;
  passbookLoader = self->_passbookLoader;
  v9 = lCopy;
  if (!passbookLoader)
  {
    v6 = [[SUUIPassbookLoader alloc] initWithClientContext:self->_clientContext];
    v7 = self->_passbookLoader;
    self->_passbookLoader = v6;

    [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:self];
    lCopy = v9;
    passbookLoader = self->_passbookLoader;
  }

  underlyingURL = [lCopy underlyingURL];
  [(SUUIPassbookLoader *)passbookLoader loadPassWithURL:underlyingURL];
}

- (void)_handleSafariScriptDataUpdate:(id)update
{
  underlyingURL = [update underlyingURL];
  if ([MEMORY[0x277D69C60] shouldHandleSafariScriptURL:?])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D6A590] object:underlyingURL];
  }
}

- (id)_newLegacyHTMLViewControllerWithSection:(id)section
{
  sectionCopy = section;
  clientInterface = [(SUUIClientContext *)self->_clientContext clientInterface];
  viewControllerFactory = [clientInterface viewControllerFactory];
  v7 = [viewControllerFactory newStorePageViewControllerWithSection:sectionCopy];

  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D7FE88]) initWithSection:sectionCopy];
  }

  [v7 setCanMoveToOverlay:0];
  [v7 setClientInterface:clientInterface];
  [v7 setExternalRequest:1];

  return v7;
}

- (void)_performLookupWithURL:(id)l
{
  v19[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [lCopy valueForQueryParameter:@"ids"];
  longLongValue = [v5 longLongValue];

  if (longLongValue)
  {
    v7 = objc_alloc(MEMORY[0x277D69CF0]);
    platformContext = [(SUUIClientContext *)self->_clientContext platformContext];
    v9 = [v7 initWithPlatformContext:platformContext];

    [v9 setKeyProfile:*MEMORY[0x277D6A2D8]];
    v10 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [v9 setStoreFrontSuffix:v10];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", longLongValue];
    v19[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v9 setItemIdentifiers:v12];

    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__SUUIURLResolver__performLookupWithURL___block_invoke;
    v14[3] = &unk_2798FDB18;
    v13 = v11;
    v15 = v13;
    objc_copyWeak(&v17, &location);
    v16 = lCopy;
    [v9 setResponseBlock:v14];
    [(SUUIURLResolver *)self _showPlaceholderViewController];
    [(NSOperationQueue *)self->_operationQueue addOperation:v9];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SUUIURLResolver *)self _sendDidFinishWithResult:0];
  }
}

void __41__SUUIURLResolver__performLookupWithURL___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SUUIURLResolver__performLookupWithURL___block_invoke_2;
  v5[3] = &unk_2798F64B8;
  v6 = v3;
  v7 = a1[4];
  v4 = v3;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v9);
}

void __41__SUUIURLResolver__performLookupWithURL___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) itemForKey:*(a1 + 40)];
  v5 = [v2 productPageURL];

  if (v5)
  {
    v3 = [*(a1 + 48) newURLRequest];
    [v3 setURL:v5];
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _resolveURLRequest:v3 withOriginURL:*(a1 + 48)];
  }

  else
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    [v3 _sendDidFinishWithResult:0];
  }
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained presentationViewControllerForURLResolver:self];

  v7 = dispatch_time(0, 1000000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__SUUIURLResolver__presentViewController___block_invoke;
  v10[3] = &unk_2798F5AF8;
  v11 = v6;
  v12 = controllerCopy;
  v8 = controllerCopy;
  v9 = v6;
  dispatch_after(v7, MEMORY[0x277D85CD0], v10);
}

void __42__SUUIURLResolver__presentViewController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 presentedViewController];

  if (v3)
  {
    do
    {
      v6 = [v2 presentedViewController];

      v4 = [v6 presentedViewController];

      v5 = v6;
      v2 = v6;
    }

    while (v4);
  }

  else
  {
    v5 = v2;
  }

  v7 = v5;
  [v5 presentViewController:*(a1 + 40) animated:1 completion:0];
}

- (void)_resolveURLRequest:(id)request withOriginURL:(id)l
{
  requestCopy = request;
  lCopy = l;
  delegate = [(SUUIURLResolver *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (v9 = [SUUIURL alloc], [requestCopy URL], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[SUUIURL initWithURL:](v9, "initWithURL:", v10), v10, objc_msgSend(lCopy, "referrerApplicationName"), v12 = objc_claimAutoreleasedReturnValue(), -[SUUIURL setReferrerApplicationName:](v11, "setReferrerApplicationName:", v12), v12, objc_msgSend(lCopy, "referrerURLString"), v13 = objc_claimAutoreleasedReturnValue(), -[SUUIURL setReferrerURLString:](v11, "setReferrerURLString:", v13), v13, LODWORD(v13) = objc_msgSend(delegate, "URLResolver:shouldPerformDefaultActionForURL:", self, v11), v11, v13))
  {
    v14 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:requestCopy];
    v15 = +[(SSVURLDataConsumer *)SUUIURLResolverDataConsumer];
    [v14 setDataConsumer:v15];

    referrerApplicationName = [lCopy referrerApplicationName];
    [v14 setReferrerApplicationName:referrerApplicationName];

    referrerURLString = [lCopy referrerURLString];
    [v14 setReferrerURLString:referrerURLString];

    v18 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [v14 setStoreFrontSuffix:v18];

    objc_initWeak(&location, v14);
    objc_initWeak(&from, self);
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __52__SUUIURLResolver__resolveURLRequest_withOriginURL___block_invoke;
    v22 = &unk_2798FDB68;
    objc_copyWeak(&v23, &from);
    objc_copyWeak(&v24, &location);
    [v14 setOutputBlock:&v19];
    [(SUUIURLResolver *)self _showPlaceholderViewController:v19];
    [(NSOperationQueue *)self->_operationQueue addOperation:v14];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __52__SUUIURLResolver__resolveURLRequest_withOriginURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUUIURLResolver__resolveURLRequest_withOriginURL___block_invoke_2;
  block[3] = &unk_2798FDB40;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void __52__SUUIURLResolver__resolveURLRequest_withOriginURL___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _showViewControllerWithResponse:v3 fromOperation:v4];
  }

  else
  {
    [WeakRetained _sendDidFinishWithResult:0];
  }
}

- (void)_selectTabWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained URLResolver:self showURL:0 withTabIdentifier:identifierCopy];

  [(SUUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_sendDidFinishWithResult:(BOOL)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 URLResolver:self didFinishWithResult:resultCopy];
  }
}

- (void)_showAccountViewControllerWithURL:(id)l
{
  clientContext = self->_clientContext;
  lCopy = l;
  clientInterface = [(SUUIClientContext *)clientContext clientInterface];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v19[0] = 0;
  LODWORD(v18) = 2;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, v19, v18}];
    free(v12);
    SSFileLog();
LABEL_10:
  }

  v13 = objc_alloc(MEMORY[0x277D7FD90]);
  underlyingURL = [lCopy underlyingURL];

  v15 = [v13 initWithExternalAccountURL:underlyingURL];
  [v15 setCanMoveToOverlay:0];
  [v15 setClientInterface:clientInterface];
  v16 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v15];
  WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);
  [v16 setDelegate:WeakRetained];

  [v16 setModalPresentationStyle:2];
  [(SUUIURLResolver *)self _presentViewController:v16];
  [(SUUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showBagURLWithURL:(id)l
{
  lCopy = l;
  uRLBagKey = [lCopy URLBagKey];
  if (uRLBagKey)
  {
    objc_initWeak(&location, self);
    uRLBag = [(SUUIClientContext *)self->_clientContext URLBag];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SUUIURLResolver__showBagURLWithURL___block_invoke;
    v7[3] = &unk_2798FDB90;
    objc_copyWeak(&v9, &location);
    v8 = lCopy;
    [uRLBag loadValueForKey:uRLBagKey completionBlock:v7];

    [(SUUIURLResolver *)self _showPlaceholderViewController];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(SUUIURLResolver *)self _sendDidFinishWithResult:0];
  }
}

void __38__SUUIURLResolver__showBagURLWithURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUUIURLResolver__showBagURLWithURL___block_invoke_2;
  block[3] = &unk_2798F6508;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __38__SUUIURLResolver__showBagURLWithURL___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:*(a1 + 32)];
    v2 = [*(a1 + 40) newURLRequestWithBaseURL:?];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _resolveURLRequest:v2 withOriginURL:*(a1 + 40)];
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    [v4 _sendDidFinishWithResult:0];
  }
}

- (void)_showDonationViewControllerWithURL:(id)l
{
  lCopy = l;
  v5 = [[SUUIDonationViewController alloc] initWithURL:lCopy];

  [(SUUIDonationViewController *)v5 setClientContext:self->_clientContext];
  [(SUUIURLResolver *)self _presentViewController:v5];
  [(SUUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showGiftViewControllerWithURL:(id)l
{
  v5 = [[SUUIGift alloc] initWithGiftCategory:0];
  v4 = [[SUUIGiftViewController alloc] initWithGift:v5];
  [(SUUIGiftViewController *)v4 setClientContext:self->_clientContext];
  [(SUUIURLResolver *)self _presentViewController:v4];
  [(SUUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showPlaceholderViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained URLResolver:self showTransientViewController:0];
}

- (void)_showRedeemViewControllerWithURL:(id)l
{
  lCopy = l;
  v6 = [[SUUIRedeemViewController alloc] initWithRedeemCategory:0];
  [(SUUIRedeemViewController *)v6 setAttempsAutomaticRedeem:1];
  [(SUUIRedeemViewController *)v6 setClientContext:self->_clientContext];
  redeemCode = [lCopy redeemCode];

  [(SUUIRedeemViewController *)v6 setInitialCode:redeemCode];
  [(SUUIURLResolver *)self _presentViewController:v6];
  [(SUUIURLResolver *)self _sendDidFinishWithResult:1];
}

- (void)_showSearchWithURL:(id)l
{
  lCopy = l;
  underlyingURL = [lCopy underlyingURL];
  host = [underlyingURL host];
  v6 = [host length];

  if (v6)
  {
    newURLRequest = [lCopy newURLRequest];
    [(SUUIURLResolver *)self _resolveURLRequest:newURLRequest withOriginURL:lCopy];
  }

  else
  {
    [(SUUIURLResolver *)self _showBagURLWithURL:lCopy];
  }
}

- (void)_showViewControllerWithResponse:(id)response fromOperation:(id)operation
{
  responseCopy = response;
  operationCopy = operation;
  uRLResponse = [responseCopy URLResponse];
  mIMEType = [uRLResponse MIMEType];

  if ([mIMEType rangeOfString:@"application/json" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([mIMEType rangeOfString:@"html" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = objc_opt_class();
      uRLResponse2 = [responseCopy URLResponse];
      v12 = [uRLResponse2 URL];
      v13 = +[SUUIClientContext amsBag];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __65__SUUIURLResolver__showViewControllerWithResponse_fromOperation___block_invoke;
      v18[3] = &unk_2798FAC50;
      v18[4] = self;
      v19 = responseCopy;
      v20 = operationCopy;
      [v10 isLegacyWebViewForURL:v12 bag:v13 completion:v18];
    }
  }

  else
  {
    v14 = [SUUILegacyNativeViewController alloc];
    data = [responseCopy data];
    v16 = [(SUUILegacyNativeViewController *)v14 initWithData:data fromOperation:operationCopy];

    [(SUUIViewController *)v16 setClientContext:self->_clientContext];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained URLResolver:self showTransientViewController:v16];

    [(SUUIURLResolver *)self _sendDidFinishWithResult:1];
  }
}

void __65__SUUIURLResolver__showViewControllerWithResponse_fromOperation___block_invoke(id *a1, int a2)
{
  v3 = a1[4];
  if (a2)
  {
    v11 = [v3 _newLegacyHTMLViewControllerWithSection:0];
    WeakRetained = objc_loadWeakRetained(a1[4] + 2);
    [WeakRetained URLResolver:a1[4] showTransientViewController:v11];

    v5 = [a1[5] data];
    v6 = [a1[5] URLResponse];
    v7 = [v6 URL];
    [v11 reloadWithStorePage:v5 ofType:1 forURL:v7];

    v8 = objc_alloc(MEMORY[0x277D69CA0]);
    v9 = [a1[6] URLRequest];
    v10 = [v8 initWithURLRequest:v9];

    [v11 setURLRequestProperties:v10];
    [a1[4] _sendDidFinishWithResult:1];
  }

  else
  {

    [v3 _sendDidFinishWithResult:0];
  }
}

- (SUUIURLResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationControllerDelegate)navigationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);

  return WeakRetained;
}

@end