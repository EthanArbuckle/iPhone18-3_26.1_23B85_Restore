@interface BRLTSLoopbackTranslationService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCListener)listener;
@end

@implementation BRLTSLoopbackTranslationService

- (NSXPCListener)listener
{
  listener = self->_listener;
  if (!listener)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    [(NSXPCListener *)anonymousListener setDelegate:self];
    [(NSXPCListener *)anonymousListener resume];
    v5 = self->_listener;
    self->_listener = anonymousListener;

    listener = self->_listener;
  }

  return listener;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = BRLTLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = connectionCopy;
    v7 = v12;
    _os_log_impl(&dword_241DFD000, v6, OS_LOG_TYPE_DEFAULT, "%@: Accepting new connection: %@", &v11, 0x16u);
  }

  exportedInterface = [objc_opt_class() exportedInterface];
  [connectionCopy setExportedInterface:exportedInterface];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

@end