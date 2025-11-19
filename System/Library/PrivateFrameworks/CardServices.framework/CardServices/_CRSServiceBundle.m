@interface _CRSServiceBundle
- (NSString)serviceIdentifier;
- (id)underlyingService;
- (void)_initializeServiceWithClass:(Class)a3;
@end

@implementation _CRSServiceBundle

- (id)underlyingService
{
  v3 = [(_CRSServiceBundle *)self principalClass];
  if (!self->_service)
  {
    v4 = v3;
    if ([v3 conformsToProtocol:&unk_2855F29A8])
    {
      [(_CRSServiceBundle *)self _initializeServiceWithClass:v4];
    }
  }

  service = self->_service;

  return service;
}

- (void)_initializeServiceWithClass:(Class)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromClass(a3);
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_243268000, v6, OS_LOG_TYPE_INFO, "Initializing a service of class %@", &v11, 0xCu);
  }

  v8 = objc_alloc_init(a3);
  service = self->_service;
  self->_service = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)serviceIdentifier
{
  v3 = [(_CRSServiceBundle *)self bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(_CRSServiceBundle *)self underlyingService];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v5 = [v6 stringWithFormat:@"%@%@", @"com.apple.cardservicesbundleservice.", v9];
  }

  return v5;
}

@end