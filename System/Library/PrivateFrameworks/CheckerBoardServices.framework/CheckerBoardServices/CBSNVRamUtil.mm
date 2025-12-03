@interface CBSNVRamUtil
+ (BOOL)readNVRamVariable:(id)variable value:(id *)value;
+ (void)clearNVRamVariable:(id)variable;
+ (void)writeNVRamVariable:(id)variable value:(id)value;
@end

@implementation CBSNVRamUtil

+ (BOOL)readNVRamVariable:(id)variable value:(id *)value
{
  v29 = *MEMORY[0x277D85DE8];
  variableCopy = variable;
  v6 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/options");
  if (v6)
  {
    v7 = v6;
    properties = 0;
    v8 = IORegistryEntryCreateCFProperties(v6, &properties, *MEMORY[0x277CBECE8], 0);
    v9 = properties;
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = properties == 0;
    }

    if (v10)
    {
      v11 = v8;
      v9 = CheckerBoardLogHandleForCategory(4);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v26) = v11;
        _os_log_impl(&dword_2433DB000, v9, OS_LOG_TYPE_DEFAULT, "Unable to create dictionary from NVRAM. IOReg result: %d", buf, 8u);
      }

      v15 = 0;
      goto LABEL_20;
    }

    v13 = [(__CFDictionary *)properties objectForKeyedSubscript:variableCopy];
    v14 = v13;
    v15 = v13 != 0;
    if (v13)
    {
      v16 = v13;
      *value = v14;
      v17 = CheckerBoardLogHandleForCategory(4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *value;
        *buf = 138412546;
        v26 = v18;
        v27 = 2112;
        v28 = variableCopy;
        v19 = "Found value %@ for NVRAM key %@";
        v20 = v17;
        v21 = 22;
LABEL_18:
        _os_log_impl(&dword_2433DB000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }

    else
    {
      v17 = CheckerBoardLogHandleForCategory(4);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = variableCopy;
        v19 = "No NVRAM value found for key %@";
        v20 = v17;
        v21 = 12;
        goto LABEL_18;
      }
    }

LABEL_20:
    IOObjectRelease(v7);
    goto LABEL_21;
  }

  v12 = CheckerBoardLogHandleForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2433DB000, v12, OS_LOG_TYPE_DEFAULT, "Unable to open IORegistry entry for NVRAM", buf, 2u);
  }

  v15 = 0;
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (void)writeNVRamVariable:(id)variable value:(id)value
{
  v19 = *MEMORY[0x277D85DE8];
  variableCopy = variable;
  valueCopy = value;
  v7 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/options");
  if (v7)
  {
    v8 = v7;
    v9 = IORegistryEntrySetCFProperty(v7, variableCopy, valueCopy);
    v10 = CheckerBoardLogHandleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "failed";
      v13 = 138412802;
      v14 = variableCopy;
      if (!v9)
      {
        v11 = "succeeded.";
      }

      v15 = 2080;
      v16 = v11;
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&dword_2433DB000, v10, OS_LOG_TYPE_DEFAULT, "CBSNVRamUtil: Writing %@ to nvram %s with result %x", &v13, 0x1Cu);
    }

    IOObjectRelease(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)clearNVRamVariable:(id)variable
{
  v16 = *MEMORY[0x277D85DE8];
  variableCopy = variable;
  v4 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/options");
  if (v4)
  {
    v5 = v4;
    v6 = IORegistryEntrySetCFProperty(v4, @"IONVRAM-DELETE-PROPERTY", variableCopy);
    v7 = CheckerBoardLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "failed";
      v10 = 138412802;
      v11 = variableCopy;
      if (!v6)
      {
        v8 = "succeeded.";
      }

      v12 = 2080;
      v13 = v8;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_2433DB000, v7, OS_LOG_TYPE_DEFAULT, "CBSNVRamUtil: Deleting %@ from nvram %s with result %x", &v10, 0x1Cu);
    }

    IOObjectRelease(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end