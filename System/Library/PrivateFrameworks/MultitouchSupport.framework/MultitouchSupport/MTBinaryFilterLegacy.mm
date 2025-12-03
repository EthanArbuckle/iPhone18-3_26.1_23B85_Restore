@interface MTBinaryFilterLegacy
- (id)initFromURL:(id)l device:(__MTDevice *)device;
- (id)mtDevice;
- (void)dealloc;
- (void)filterFrame:(char *)frame size:(unsigned int *)size maxSize:(unsigned int *)maxSize extraFrame:(id)extraFrame;
- (void)reset;
@end

@implementation MTBinaryFilterLegacy

- (id)initFromURL:(id)l device:(__MTDevice *)device
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v24.receiver = self;
  v24.super_class = MTBinaryFilterLegacy;
  v11 = [(MTBinaryFilterLegacy *)&v24 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_18;
  }

  objc_storeStrong(&v11->_bundleURL, l);
  v13 = CFBundleCreate(*MEMORY[0x277CBECE8], lCopy);
  cfBundle = v12->_cfBundle;
  v12->_cfBundle = v13;

  if (!v12->_cfBundle)
  {
    if (!device)
    {
      [MTBinaryFilterLegacy initFromURL:device:];
      goto LABEL_19;
    }

    if (device->var37)
    {
      mt_CachePropertiesForDevice(device);
    }

    v16 = MTLoggingFramework();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    var13 = device->var13;
    *buf = 138543618;
    v26 = lCopy;
    v27 = 2048;
    v28 = var13;
    v18 = "Could not create bundle %{public}@ (deviceID 0x%llX)";
    v19 = v16;
    v20 = 22;
    goto LABEL_16;
  }

  objc_storeWeak(&v12->_mtDevice, device);
  FunctionPointerForName = CFBundleGetFunctionPointerForName(v12->_cfBundle, @"MTCreateBinaryFilter");
  v12->_createBinaryFilter = FunctionPointerForName;
  if (!FunctionPointerForName)
  {
    if (!device)
    {
      [MTBinaryFilterLegacy initFromURL:device:];
      goto LABEL_19;
    }

    if (device->var37)
    {
      mt_CachePropertiesForDevice(device);
    }

    v16 = MTLoggingFramework();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v21 = device->var13;
    *buf = 136446722;
    v26 = "MTCreateBinaryFilter";
    v27 = 2114;
    v28 = lCopy;
    v29 = 2048;
    v30 = v21;
    v18 = "Did not find function pointer %{public}s in bundle %{public}@ (deviceID 0x%llX)";
    v19 = v16;
    v20 = 32;
LABEL_16:
    _os_log_impl(&dword_25AD59000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
LABEL_17:

    goto LABEL_18;
  }

  [(MTBinaryFilterLegacy *)v12 reset];
  if (!v12->_legacyFilter)
  {
LABEL_18:
    device = 0;
    goto LABEL_19;
  }

  device = v12;
LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
  return device;
}

- (void)filterFrame:(char *)frame size:(unsigned int *)size maxSize:(unsigned int *)maxSize extraFrame:(id)extraFrame
{
  extraFrame;
  legacyFilter = self->_legacyFilter;
  if (legacyFilter)
  {
    v11 = *frame;
    (legacyFilter->var1)(legacyFilter, frame, size, *maxSize);
    if (*frame != v11)
    {
      *maxSize = *size;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)reset
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MTLoggingFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = *(self + 24);
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  legacyFilter = self->_legacyFilter;
  if (legacyFilter)
  {
    (legacyFilter->var2)(legacyFilter, a2);
  }

  v4.receiver = self;
  v4.super_class = MTBinaryFilterLegacy;
  [(MTBinaryFilterLegacy *)&v4 dealloc];
}

- (id)mtDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_mtDevice);

  return WeakRetained;
}

- (void)initFromURL:device:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = MTLoggingFramework();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initFromURL:device:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = MTLoggingFramework();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end