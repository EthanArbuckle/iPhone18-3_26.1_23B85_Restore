BOOL getCoexSpmiExists()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = IOServiceNameMatching("wlan-idc");
  getIORegNodeName(v0, &v3, 9uLL);
  result = (v3 ^ 0x6364692D6E616C77 | v4) == 0;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL getCoexSpmiDisable()
{
  buffer[0] = 0;
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/options");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"bt-coex-spmi-disable", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v3 = CFProperty;
      Length = CFDataGetLength(CFProperty);
      v5 = CFGetTypeID(v3);
      if (v5 == CFDataGetTypeID() && Length <= 1)
      {
        v33.location = 0;
        v33.length = Length;
        CFDataGetBytes(v3, v33, buffer);
        buffer[Length] = 0;
      }

      else
      {
        buffer[0] = 0;
        v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v7)
        {
          getCoexSpmiDisable_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }

      CFRelease(v3);
    }

    else
    {
      buffer[0] = 0;
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        getCoexSpmiDisable_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }

    IOObjectRelease(v1);
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      getCoexSpmiDisable_cold_3(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  return *buffer == 49;
}

void getHostPlatformName(char *a1, size_t a2)
{
  v4 = IOServiceMatching("IOPlatformExpertDevice");

  getIORegNodeName(v4, a1, a2);
}

const __CFData *CentauriBetaPatchBayCopyData()
{
  v43 = *MEMORY[0x277D85DE8];
  memset(v41, 0, sizeof(v41));
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  *bytes = 0x1CAFECAFELL;
  v42 = -889271554;
  v0 = IOServiceMatching("IOPlatformExpertDevice");
  getIORegNodeName(v0, &v31, 0x10uLL);
  v1 = strnlen(&v31, 0x10uLL);
  v2 = strncasecmp(&bytes[v1 + 5], "DEV", 3uLL);
  v3 = v32 & 0xFFFFFFFE;
  if (!v2)
  {
    ++v3;
  }

  LODWORD(v32) = v3;
  if (getCoexSpmiExists())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  LODWORD(v32) = v32 & 0xFFFFFFFD | v4;
  CoexSpmiDisable = getCoexSpmiDisable();
  v6 = v32;
  if (CoexSpmiDisable)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  LODWORD(v32) = v32 & 0xFFFFFFFB | v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136316418;
    v21 = "CentauriBetaPatchBayCopyData";
    v22 = 1024;
    *v23 = *&bytes[4];
    *&v23[4] = 2080;
    *&v23[6] = &v31;
    v24 = 1024;
    v25 = v6 & 1;
    v26 = 1024;
    v27 = (v6 >> 1) & 1;
    v28 = 1024;
    v29 = v7 >> 2;
    _os_log_impl(&dword_243384000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: version=%d, hostPlatformName=%s, isDevBoard=%d, coexSpmiExists=%d, coexSpmiDisable=%d", &v20, 0x2Eu);
  }

  v8 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 200);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      Length = CFDataGetLength(v8);
      v20 = 136315394;
      v21 = "CentauriBetaPatchBayCopyData";
      v22 = 2048;
      *v23 = Length;
      _os_log_impl(&dword_243384000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: returning %ld bytes", &v20, 0x16u);
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      CentauriBetaPatchBayCopyData_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

void getIORegNodeName(CFDictionaryRef matching, char *a2, size_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  if (matching)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], matching);
    if (MatchingService)
    {
      v6 = MatchingService;
      if (MEMORY[0x245D31040](MatchingService, __src))
      {
        v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v7)
        {
          getIORegNodeName_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }

      else
      {
        strncpy(a2, __src, a3);
        a2[a3 - 1] = 0;
      }

      IOObjectRelease(v6);
    }

    else
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        getIORegNodeName_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      getIORegNodeName_cold_3(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void getCoexSpmiDisable_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: wrong type or wrong length", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void getCoexSpmiDisable_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: variable not found", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void getCoexSpmiDisable_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: failed to get options", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void CentauriBetaPatchBayCopyData_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: failed to create CF data", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void getIORegNodeName_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: Failed to get name for service\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void getIORegNodeName_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: service not found", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void getIORegNodeName_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_243384000, MEMORY[0x277D86220], a3, "%s: failed to create matching dict", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}