@interface SUUIPassbookLoader
- (NSOperationQueue)operationQueue;
- (SUUIPassbookLoader)initWithClientContext:(id)context;
- (SUUIPassbookLoaderDelegate)delegate;
- (void)_didLoadWithPass:(id)pass error:(id)error;
- (void)_loadPassWithURL:(id)l;
- (void)_sendDidFinishIfFinished;
- (void)addPassesViewControllerDidFinish:(id)finish;
- (void)loadPassWithURL:(id)l;
@end

@implementation SUUIPassbookLoader

- (SUUIPassbookLoader)initWithClientContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SUUIPassbookLoader;
  v6 = [(SUUIPassbookLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
  }

  return v7;
}

- (void)loadPassWithURL:(id)l
{
  lCopy = l;
  ++self->_loadCount;
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  if (activeAccount)
  {
    [(SUUIPassbookLoader *)self _loadPassWithURL:lCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D69BC8]);
    [v7 setCanCreateNewAccount:0];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"PASSBOOK_AUTH_REASON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"PASSBOOK_AUTH_REASON" inBundles:0];
    }
    v9 = ;
    [v7 setReasonDescription:v9];

    v10 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v7];
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__SUUIPassbookLoader_loadPassWithURL___block_invoke;
    v11[3] = &unk_2798F64E0;
    objc_copyWeak(&v13, &location);
    v12 = lCopy;
    [v10 startWithAuthenticateResponseBlock:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __38__SUUIPassbookLoader_loadPassWithURL___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__SUUIPassbookLoader_loadPassWithURL___block_invoke_2;
  v2[3] = &unk_2798F7560;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __38__SUUIPassbookLoader_loadPassWithURL___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D69A20] defaultStore];
  v3 = [v2 activeAccount];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained _loadPassWithURL:*(a1 + 32)];
  }

  else
  {
    [WeakRetained _sendDidFinishIfFinished];
  }
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.iTunesStoreUI.SUUIPassbookLoader"];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)addPassesViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  v11 = objc_getAssociatedObject(finishCopy, "com.apple.iTunesStoreUI.SUUIPassbookLoader.pass");
  if (v11)
  {
    v5 = SUUIPassKitCoreFramework();
    v6 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Pkpasslibrary.isa, v5));
    if ([v6 containsPass:v11])
    {
      defaultStore = [MEMORY[0x277D69A20] defaultStore];
      activeAccount = [defaultStore activeAccount];
      serialNumber = [v11 serialNumber];
      [activeAccount setITunesPassSerialNumber:serialNumber];

      v10 = [defaultStore addAccount:activeAccount];
    }
  }

  [finishCopy setDelegate:0];
  [finishCopy dismissViewControllerAnimated:1 completion:0];

  [(SUUIPassbookLoader *)self _sendDidFinishIfFinished];
}

- (void)_didLoadWithPass:(id)pass error:(id)error
{
  value = pass;
  if (value)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained presentationViewControllerForPassbookLoader:self];

    if (v6)
    {
      v7 = SUUIPassKitUIFramework();
      v8 = SUUIWeakLinkedClassForString(&cfstr_Pkaddpassesvie.isa, v7);
      if ([(objc_class *)v8 canAddPasses])
      {
        v9 = [[v8 alloc] initWithPass:value];
        [v9 setDelegate:self];
        objc_setAssociatedObject(v9, "com.apple.iTunesStoreUI.SUUIPassbookLoader.pass", value, 1);
        [v6 presentViewController:v9 animated:1 completion:0];
      }
    }
  }

  else
  {
    [(SUUIPassbookLoader *)self _sendDidFinishIfFinished];
  }
}

- (void)_loadPassWithURL:(id)l
{
  lCopy = l;
  v5 = [(SUUIClientContext *)self->_clientContext newLoadStoreURLOperationWithURL:lCopy];
  v6 = +[(SSVURLDataConsumer *)SUUIPassbookPassDataConsumer];
  [v5 setDataConsumer:v6];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __39__SUUIPassbookLoader__loadPassWithURL___block_invoke;
  v11 = &unk_2798FC8F8;
  objc_copyWeak(&v12, &location);
  [v5 setOutputBlock:&v8];
  v7 = [(SUUIPassbookLoader *)self operationQueue:v8];
  [v7 addOperation:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __39__SUUIPassbookLoader__loadPassWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SUUIPassbookLoader__loadPassWithURL___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __39__SUUIPassbookLoader__loadPassWithURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didLoadWithPass:*(a1 + 32) error:*(a1 + 40)];
}

- (void)_sendDidFinishIfFinished
{
  loadCount = self->_loadCount;
  if (loadCount < 2)
  {
    if (loadCount == 1)
    {
      self->_loadCount = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = objc_loadWeakRetained(&self->_delegate);
        [v6 passbookLoaderDidFinish:self];
      }
    }
  }

  else
  {
    self->_loadCount = loadCount - 1;
  }
}

- (SUUIPassbookLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end