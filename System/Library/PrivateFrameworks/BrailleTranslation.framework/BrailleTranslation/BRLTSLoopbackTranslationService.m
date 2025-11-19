@interface BRLTSLoopbackTranslationService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSXPCListener)listener;
@end

@implementation BRLTSLoopbackTranslationService

- (NSXPCListener)listener
{
  listener = self->_listener;
  if (!listener)
  {
    v4 = [MEMORY[0x277CCAE98] anonymousListener];
    [(NSXPCListener *)v4 setDelegate:self];
    [(NSXPCListener *)v4 resume];
    v5 = self->_listener;
    self->_listener = v4;

    listener = self->_listener;
  }

  return listener;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = BRLTLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v5;
    v7 = v12;
    _os_log_impl(&dword_241DFD000, v6, OS_LOG_TYPE_DEFAULT, "%@: Accepting new connection: %@", &v11, 0x16u);
  }

  v8 = [objc_opt_class() exportedInterface];
  [v5 setExportedInterface:v8];

  [v5 setExportedObject:self];
  [v5 resume];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

@end