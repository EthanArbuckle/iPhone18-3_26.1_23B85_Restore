@interface FontProviderViewServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (FontProviderLoader)fontProviderLoader;
- (FontProviderViewServiceDelegate)initWithFontProviderLoader:(id)loader;
@end

@implementation FontProviderViewServiceDelegate

- (FontProviderViewServiceDelegate)initWithFontProviderLoader:(id)loader
{
  loaderCopy = loader;
  v8.receiver = self;
  v8.super_class = FontProviderViewServiceDelegate;
  v5 = [(FontProviderViewServiceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_fontProviderLoader, loaderCopy);
  }

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontInstallViewServiceProtocol];
  [connectionCopy setExportedInterface:v6];
  WeakRetained = objc_loadWeakRetained(&self->_fontProviderLoader);
  [connectionCopy setExportedObject:WeakRetained];

  [connectionCopy resume];
  return 1;
}

- (FontProviderLoader)fontProviderLoader
{
  WeakRetained = objc_loadWeakRetained(&self->_fontProviderLoader);

  return WeakRetained;
}

@end