@interface CBIORegistryReader
- (CBIORegistryReader)initWithService:(unsigned int)service andPlane:(char)plane[128] andOptions:(unsigned int)options;
- (void)dealloc;
@end

@implementation CBIORegistryReader

- (CBIORegistryReader)initWithService:(unsigned int)service andPlane:(char)plane[128] andOptions:(unsigned int)options
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v11 = a2;
  serviceCopy = service;
  planeCopy = plane;
  optionsCopy = options;
  v7.receiver = self;
  v7.super_class = CBIORegistryReader;
  selfCopy = [(CBIORegistryReader *)&v7 init];
  if (strlcpy(selfCopy->_plane, planeCopy, 0x80uLL) < 0x80)
  {
    if (serviceCopy && planeCopy && !IOObjectRetain(serviceCopy))
    {
      selfCopy->_options = optionsCopy;
      selfCopy->_service = serviceCopy;
      v13 = selfCopy;
      goto LABEL_13;
    }
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v14, 128);
      _os_log_error_impl(&dword_1DE8E5000, inited, OS_LOG_TYPE_ERROR, "The length of the plane name is >= %zu", v14, 0xCu);
    }
  }

  MEMORY[0x1E69E5920](selfCopy);
  v13 = 0;
LABEL_13:
  *MEMORY[0x1E69E9840];
  return v13;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  IOObjectRelease(self->_service);
  v2.receiver = selfCopy;
  v2.super_class = CBIORegistryReader;
  [(CBIORegistryReader *)&v2 dealloc];
}

@end