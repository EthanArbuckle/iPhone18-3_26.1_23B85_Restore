@interface BRFileProviderServicesFactory
+ (id)clientSideServiceSyncProxyForURL:(id)a3;
+ (id)itemServiceSyncProxyForURL:(id)a3;
+ (void)fetchItemServiceAsyncProxyForURL:(id)a3 handler:(id)a4;
@end

@implementation BRFileProviderServicesFactory

+ (id)itemServiceSyncProxyForURL:(id)a3
{
  v3 = a3;
  v4 = BRCXPCBRItemServiceProtocolInterface();
  v5 = _fetchSynchronousAutomaticErrorProxyFromURL(v3, @"com.apple.CloudDocs.private.BRItem", v4);

  return v5;
}

+ (void)fetchItemServiceAsyncProxyForURL:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = BRCXPCBRItemServiceProtocolInterface();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__BRFileProviderServicesFactory_fetchItemServiceAsyncProxyForURL_handler___block_invoke;
  v9[3] = &unk_1E7A14E48;
  v10 = v5;
  v8 = v5;
  _fetchServiceAutomaticErrorProxyFromURL(v6, @"com.apple.CloudDocs.private.BRItem", v7, 0, v9);
}

+ (id)clientSideServiceSyncProxyForURL:(id)a3
{
  v3 = a3;
  v4 = BRCXPCICDFileProviderClientSideCollaborationProtocolInterface();
  v5 = _fetchSynchronousAutomaticErrorProxyFromURL(v3, @"com.apple.CloudDocs.private.ClientSideCollaboration", v4);

  return v5;
}

@end