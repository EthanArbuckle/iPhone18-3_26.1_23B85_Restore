@interface CBIORegistryReader
- (CBIORegistryReader)initWithService:(unsigned int)service andPlane:(char)plane[128] andOptions:(unsigned int)options;
- (void)dealloc;
@end

@implementation CBIORegistryReader

- (CBIORegistryReader)initWithService:(unsigned int)service andPlane:(char)plane[128] andOptions:(unsigned int)options
{
  v11.receiver = self;
  v11.super_class = CBIORegistryReader;
  v8 = [(CBIORegistryReader *)&v11 init];
  if (strlcpy(v8->_plane, plane, 0x80uLL) < 0x80)
  {
    if (service && plane && !IOObjectRetain(service))
    {
      v8->_options = options;
      v8->_service = service;
      return v8;
    }
  }

  else
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      [CBIORegistryReader initWithService:? andPlane:? andOptions:?];
    }
  }

  return 0;
}

- (void)dealloc
{
  IOObjectRelease(self->_service);
  v3.receiver = self;
  v3.super_class = CBIORegistryReader;
  [(CBIORegistryReader *)&v3 dealloc];
}

- (void)initWithService:(os_log_t)log andPlane:andOptions:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = 128;
  _os_log_error_impl(&dword_223D10000, log, OS_LOG_TYPE_ERROR, "The length of the plane name is >= %zu", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end