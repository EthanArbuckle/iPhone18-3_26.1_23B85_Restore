@interface CDPController
- (CDPController)init;
- (CDPController)initWithContext:(id)a3;
- (CDPController)initWithXpcEndpoint:(id)a3 context:(id)a4;
- (CDPStateUIProviderProxy)uiProviderProxy;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CDPController

- (CDPController)init
{
  v6.receiver = self;
  v6.super_class = CDPController;
  v2 = [(CDPController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CDPDaemonConnection);
    daemonConn = v2->_daemonConn;
    v2->_daemonConn = v3;
  }

  return v2;
}

- (void)dealloc
{
  daemonConn = self->_daemonConn;
  self->_daemonConn = 0;

  context = self->_context;
  self->_context = 0;

  uiProvider = self->_uiProvider;
  self->_uiProvider = 0;

  uiProviderProxy = self->_uiProviderProxy;
  self->_uiProviderProxy = 0;

  v7.receiver = self;
  v7.super_class = CDPController;
  [(CDPController *)&v7 dealloc];
}

- (CDPController)initWithXpcEndpoint:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CDPController *)self init];
  v9 = v8;
  if (v8)
  {
    [(CDPDaemonConnection *)v8->_daemonConn setDaemonXPCEndpoint:v6];
    objc_storeStrong(&v9->_context, a4);
  }

  return v9;
}

- (CDPController)initWithContext:(id)a3
{
  v4 = a3;
  v5 = [(CDPController *)self init];
  if (v5)
  {
    v6 = [CDPContext preflightContext:v4];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (void)invalidate
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "Invalidating connection for controller %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (CDPStateUIProviderProxy)uiProviderProxy
{
  if (self->_uiProvider)
  {
    v3 = [[CDPStateUIProviderProxy alloc] initWithUIProvider:self->_uiProvider];
    uiProviderProxy = self->_uiProviderProxy;
    self->_uiProviderProxy = v3;
  }

  v5 = self->_uiProviderProxy;

  return v5;
}

@end