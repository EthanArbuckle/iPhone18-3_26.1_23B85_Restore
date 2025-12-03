@interface UARPManager
- (UARPManager)init;
- (int64_t)addAccessory:(id)accessory assetID:(id)d sandboxExtensionToken:(id)token;
- (int64_t)changeAssetLocation:(id)location assetID:(id)d sandboxExtensionToken:(id)token;
- (void)consumeSandboxExtensionToken:(id)token url:(id)url;
- (void)dealloc;
@end

@implementation UARPManager

- (UARPManager)init
{
  v4.receiver = self;
  v4.super_class = UARPManager;
  v2 = [(UARPManager *)&v4 init];
  if (v2)
  {
    v2->_assetManager = [[UARPAssetManager alloc] initWithDelegate:v2];
    v2->_sandboxExtensions = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPManager;
  [(UARPManager *)&v3 dealloc];
}

- (void)consumeSandboxExtensionToken:(id)token url:(id)url
{
  if (token && url)
  {
    if ([(NSMutableDictionary *)self->_sandboxExtensions objectForKeyedSubscript:url])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        urlCopy = url;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Duplicate Sandbox Extension Token for URL:%@", &v7, 0xCu);
      }
    }

    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sandboxExtensions, "setObject:forKeyedSubscript:", [[UARPSandboxExtension alloc] initWithTokenString:token], url);
  }
}

- (int64_t)addAccessory:(id)accessory assetID:(id)d sandboxExtensionToken:(id)token
{
  -[UARPManager consumeSandboxExtensionToken:url:](self, "consumeSandboxExtensionToken:url:", token, [d remoteURL]);

  return [(UARPManager *)self addAccessory:accessory assetID:d];
}

- (int64_t)changeAssetLocation:(id)location assetID:(id)d sandboxExtensionToken:(id)token
{
  -[UARPManager consumeSandboxExtensionToken:url:](self, "consumeSandboxExtensionToken:url:", token, [d remoteURL]);

  return [(UARPManager *)self changeAssetLocation:location assetID:d];
}

@end