@interface BRFileProviderServicesFactory
+ (id)clientSideServiceSyncProxyForURL:(id)l;
+ (id)itemServiceSyncProxyForURL:(id)l;
+ (void)fetchItemServiceAsyncProxyForURL:(id)l handler:(id)handler;
@end

@implementation BRFileProviderServicesFactory

+ (id)itemServiceSyncProxyForURL:(id)l
{
  lCopy = l;
  v4 = BRCXPCBRItemServiceProtocolInterface();
  v5 = _fetchSynchronousAutomaticErrorProxyFromURL(lCopy, @"com.apple.CloudDocs.private.BRItem", v4);

  return v5;
}

+ (void)fetchItemServiceAsyncProxyForURL:(id)l handler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = BRCXPCBRItemServiceProtocolInterface();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__BRFileProviderServicesFactory_fetchItemServiceAsyncProxyForURL_handler___block_invoke;
  v9[3] = &unk_1E7A14E48;
  v10 = handlerCopy;
  v8 = handlerCopy;
  _fetchServiceAutomaticErrorProxyFromURL(lCopy, @"com.apple.CloudDocs.private.BRItem", v7, 0, v9);
}

+ (id)clientSideServiceSyncProxyForURL:(id)l
{
  lCopy = l;
  v4 = BRCXPCICDFileProviderClientSideCollaborationProtocolInterface();
  v5 = _fetchSynchronousAutomaticErrorProxyFromURL(lCopy, @"com.apple.CloudDocs.private.ClientSideCollaboration", v4);

  return v5;
}

@end