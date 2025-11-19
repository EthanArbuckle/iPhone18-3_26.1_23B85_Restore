@interface CBIORegistryReader
- (CBIORegistryReader)initWithService:(unsigned int)a3 andPlane:(char)a4[128] andOptions:(unsigned int)a5;
- (void)dealloc;
@end

@implementation CBIORegistryReader

- (CBIORegistryReader)initWithService:(unsigned int)a3 andPlane:(char)a4[128] andOptions:(unsigned int)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  v7.receiver = self;
  v7.super_class = CBIORegistryReader;
  v12 = [(CBIORegistryReader *)&v7 init];
  if (strlcpy(v12->_plane, v9, 0x80uLL) < 0x80)
  {
    if (v10 && v9 && !IOObjectRetain(v10))
    {
      v12->_options = v8;
      v12->_service = v10;
      v13 = v12;
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

  MEMORY[0x1E69E5920](v12);
  v13 = 0;
LABEL_13:
  *MEMORY[0x1E69E9840];
  return v13;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  IOObjectRelease(self->_service);
  v2.receiver = v4;
  v2.super_class = CBIORegistryReader;
  [(CBIORegistryReader *)&v2 dealloc];
}

@end