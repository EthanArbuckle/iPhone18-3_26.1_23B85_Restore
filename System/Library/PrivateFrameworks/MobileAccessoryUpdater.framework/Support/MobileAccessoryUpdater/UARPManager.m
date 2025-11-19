@interface UARPManager
- (UARPManager)init;
- (int64_t)addAccessory:(id)a3 assetID:(id)a4 sandboxExtensionToken:(id)a5;
- (int64_t)changeAssetLocation:(id)a3 assetID:(id)a4 sandboxExtensionToken:(id)a5;
- (void)consumeSandboxExtensionToken:(id)a3 url:(id)a4;
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

- (void)consumeSandboxExtensionToken:(id)a3 url:(id)a4
{
  if (a3 && a4)
  {
    if ([(NSMutableDictionary *)self->_sandboxExtensions objectForKeyedSubscript:a4])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = a4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Duplicate Sandbox Extension Token for URL:%@", &v7, 0xCu);
      }
    }

    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_sandboxExtensions, "setObject:forKeyedSubscript:", [[UARPSandboxExtension alloc] initWithTokenString:a3], a4);
  }
}

- (int64_t)addAccessory:(id)a3 assetID:(id)a4 sandboxExtensionToken:(id)a5
{
  -[UARPManager consumeSandboxExtensionToken:url:](self, "consumeSandboxExtensionToken:url:", a5, [a4 remoteURL]);

  return [(UARPManager *)self addAccessory:a3 assetID:a4];
}

- (int64_t)changeAssetLocation:(id)a3 assetID:(id)a4 sandboxExtensionToken:(id)a5
{
  -[UARPManager consumeSandboxExtensionToken:url:](self, "consumeSandboxExtensionToken:url:", a5, [a4 remoteURL]);

  return [(UARPManager *)self changeAssetLocation:a3 assetID:a4];
}

@end