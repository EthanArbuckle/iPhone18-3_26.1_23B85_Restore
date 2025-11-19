@interface HSISPCapturePlugIn
+ (id)defaultPlugIn;
- (HSISPCapturePlugIn)init;
- (id)device:(id *)a3;
- (void)init;
@end

@implementation HSISPCapturePlugIn

+ (id)defaultPlugIn
{
  v2 = objc_opt_new();

  return v2;
}

- (HSISPCapturePlugIn)init
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/arm-io");
  if (!v3)
  {
    CFProperty = HSLogHandle();
    if (os_log_type_enabled(CFProperty, OS_LOG_TYPE_ERROR))
    {
      [(HSISPCapturePlugIn *)CFProperty init];
    }

    goto LABEL_12;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, @"soc-generation", *MEMORY[0x277CBECE8], 0);
  IOObjectRelease(v4);
  if (!CFProperty)
  {
    v12 = HSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(HSISPCapturePlugIn *)v12 init];
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:CFProperty encoding:4];
  if (socVersionFromSOCGen_onceToken != -1)
  {
    [HSISPCapturePlugIn init];
  }

  v7 = [socVersionFromSOCGen_regex firstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
  if ([v7 numberOfRanges] == 2)
  {
    v8 = [v7 rangeAtIndex:1];
    v10 = [v6 substringWithRange:{v8, v9}];
    v11 = [v10 integerValue];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(HSISPCapturePlugIn *)v6 init];
    }

    v11 = 0;
  }

  if (v11 < 1)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v35 = self;
  while (1)
  {
    CFProperty = [MEMORY[0x277CCACA8] stringWithFormat:@"H%ld", v11];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ISPCaptureDeviceCreate", CFProperty];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/MediaCapture/%@ISP.mediacapture", CFProperty];
    v18 = v16;
    v19 = v17;
    v20 = HSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = v19;
      _os_log_debug_impl(&dword_2510E6000, v20, OS_LOG_TYPE_DEBUG, "Will attempt to create plugin at path %@.", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = [v21 fileExistsAtPath:v19];

    if ((v22 & 1) == 0)
    {
      v23 = HSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = v19;
        _os_log_debug_impl(&dword_2510E6000, v23, OS_LOG_TYPE_DEBUG, "No mediacapture plugin found at path %@. (May still exist in shared cache.)", buf, 0xCu);
      }
    }

    v24 = dlopen([v19 cStringUsingEncoding:4], 4);
    if (v24)
    {
      break;
    }

    v28 = HSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v33 = dlerror();
      *buf = 138412546;
      v37 = v19;
      v38 = 2080;
      v39 = v33;
      v30 = v28;
      v31 = "Failed to dlopen the plugin %@. (dlerror: %s)";
      goto LABEL_35;
    }

LABEL_31:

    if (v11-- < 2)
    {
      v13 = 0;
      self = v35;
      goto LABEL_14;
    }
  }

  v25 = v24;
  v26 = [v18 UTF8String];
  v27 = dlsym(v25, v26);
  if (!v27)
  {
    v28 = HSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = dlerror();
      *buf = 136315394;
      v37 = v26;
      v38 = 2080;
      v39 = v29;
      v30 = v28;
      v31 = "Failed to find symbol %s in dylib. (dlerror: %s)";
LABEL_35:
      _os_log_error_impl(&dword_2510E6000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v34 = v27;

  self = v35;
  v35->_createFunction = v34;
  v13 = v35;

LABEL_13:
LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)device:(id *)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  cf = 0;
  v4 = (self->_createFunction)(*MEMORY[0x277CBECE8], 0, &cf);
  if (v4)
  {
    v5 = v4;
    v6 = __HSDescribeFigDeviceStatus(v4);
    if (v6)
    {
      if (a3)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create FigCaptureDeviceRef! %@!", v6];
        v8 = MEMORY[0x277CCA9B8];
        v9 = *MEMORY[0x277CCA590];
        v10 = v5;
        v27 = *MEMORY[0x277CCA450];
        v28[0] = v7;
        v11 = MEMORY[0x277CBEAC0];
        v12 = v28;
        v13 = &v27;
LABEL_12:
        v19 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
        v20 = [v8 errorWithDomain:v9 code:v10 userInfo:v19];

        v21 = v20;
        *a3 = v20;
      }
    }

    else if (a3)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create FigCaptureDeviceRef!"];
      v7 = v17;
      v8 = MEMORY[0x277CCA9B8];
      v18 = MEMORY[0x277CCA4A8];
      if (v5 >> 26 != 56)
      {
        v18 = MEMORY[0x277CCA590];
      }

      v9 = *v18;
      v10 = v5;
      v25 = *MEMORY[0x277CCA450];
      v26 = v17;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v26;
      v13 = &v25;
      goto LABEL_12;
    }

    v16 = 0;
    goto LABEL_14;
  }

  if (!cf)
  {
    [HSISPCapturePlugIn device:];
  }

  TypeID = FigCaptureDeviceGetTypeID();
  if (TypeID != CFGetTypeID(cf))
  {
    [HSISPCapturePlugIn device:];
  }

  v15 = [HSFigCaptureDevice alloc];
  v16 = [(HSFigCaptureDevice *)v15 initWithCaptureDevice:cf];
LABEL_14:
  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2510E6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Expected to find 2 matched regex groups {H\\d+, \\d+} in %@.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end