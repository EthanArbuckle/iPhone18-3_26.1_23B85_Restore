@interface FontProviderViewServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (FontProviderLoader)fontProviderLoader;
- (FontProviderViewServiceDelegate)initWithFontProviderLoader:(id)a3;
@end

@implementation FontProviderViewServiceDelegate

- (FontProviderViewServiceDelegate)initWithFontProviderLoader:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FontProviderViewServiceDelegate;
  v5 = [(FontProviderViewServiceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_fontProviderLoader, v4);
  }

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FontInstallViewServiceProtocol];
  [v5 setExportedInterface:v6];
  WeakRetained = objc_loadWeakRetained(&self->_fontProviderLoader);
  [v5 setExportedObject:WeakRetained];

  [v5 resume];
  return 1;
}

- (FontProviderLoader)fontProviderLoader
{
  WeakRetained = objc_loadWeakRetained(&self->_fontProviderLoader);

  return WeakRetained;
}

@end