@interface _CRSServiceBundle
- (NSString)serviceIdentifier;
- (id)underlyingService;
- (void)_initializeServiceWithClass:(Class)class;
@end

@implementation _CRSServiceBundle

- (id)underlyingService
{
  principalClass = [(_CRSServiceBundle *)self principalClass];
  if (!self->_service)
  {
    v4 = principalClass;
    if ([principalClass conformsToProtocol:&unk_2855F29A8])
    {
      [(_CRSServiceBundle *)self _initializeServiceWithClass:v4];
    }
  }

  service = self->_service;

  return service;
}

- (void)_initializeServiceWithClass:(Class)class
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromClass(class);
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_243268000, v6, OS_LOG_TYPE_INFO, "Initializing a service of class %@", &v11, 0xCu);
  }

  v8 = objc_alloc_init(class);
  service = self->_service;
  self->_service = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (NSString)serviceIdentifier
{
  bundleIdentifier = [(_CRSServiceBundle *)self bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v5 = bundleIdentifier;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    underlyingService = [(_CRSServiceBundle *)self underlyingService];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v5 = [v6 stringWithFormat:@"%@%@", @"com.apple.cardservicesbundleservice.", v9];
  }

  return v5;
}

@end