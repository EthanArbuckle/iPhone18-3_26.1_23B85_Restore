uint64_t CCSVisibilityPreferenceForBundleRecord(void *a1)
{
  v1 = [a1 infoDictionary];
  v2 = [v1 objectForKey:@"SBIconVisibilitySetByAppPreference" ofClass:objc_opt_class()];
  v3 = [v1 objectForKey:@"SBIconVisibilityDefaultVisible" ofClass:objc_opt_class()];
  v4 = [v1 objectForKey:@"SBIconVisibilityDefaultVisibleInstallTypes" ofClass:objc_opt_class()];
  v5 = [v1 objectForKey:@"SBIconVisibilityDefaultVisiblePlatforms" ofClass:objc_opt_class()];
  v6 = _CCSModuleVisibilityPreferenceFromFlagsAndAllowableInstallTypes(v2, v3, v4, v5);

  return v6;
}

uint64_t _CCSModuleVisibilityPreferenceFromFlagsAndAllowableInstallTypes(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v7)
  {
    if (v8)
    {
      v12 = [v8 BOOLValue] == 0;
    }

    else
    {
      if (!(v9 | v10))
      {
        v13 = 2;
        goto LABEL_21;
      }

      if (v9)
      {
        if (CCSIsInternalInstall())
        {
          v14 = @"internal";
        }

        else
        {
          v17 = [MEMORY[0x277CF0CA8] sharedInstance];
          v18 = [v17 isCarrierInstall];

          if (v18)
          {
            v14 = @"carrier";
          }

          else
          {
            v14 = @"user";
          }
        }

        v16 = [v9 containsObject:v14];
        v15 = v16 ^ 1;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      if (v11)
      {
        v19 = MGGetStringAnswer();
        v20 = [v11 containsObject:v19];
        v15 |= v20 ^ 1;
        v16 |= v20;
      }

      v12 = (v16 & ~v15 & 1) == 0;
    }

    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_21:

  return v13;
}

uint64_t CCSResolveModuleVisibility(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a2 == 2)
  {
    if (!v5)
    {
      a3 = 0;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a2 == 1)
  {
    if (!v5)
    {
      a3 = 1;
      goto LABEL_8;
    }

LABEL_6:
    a3 = [v5 BOOLValue];
  }

LABEL_8:

  return a3;
}

void sub_244282C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *NSStringFromIconElementType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_278E0F2A8[a1];
  }
}

__CFString *NSStringFromIconElementRequestIntent(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_278E0F288[a1];
  }
}

__CFString *NSStringFromIconElementRequestErrorCode(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"CCSIconElementRequestErrorCodeUnknown";
  }

  else
  {
    return off_278E0F258[a1 - 1];
  }
}

uint64_t OUTLINED_FUNCTION_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  v4 = *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

__CFString *NSStringFromCCSModuleSize(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"CCSModuleSizeSmall";
  }

  else
  {
    return *(&off_278E0F5E0 + a1 - 1);
  }
}

uint64_t CCSModuleSizeFromNSString(void *a1)
{
  v1 = a1;
  if (([v1 isEqualToString:@"CCSModuleSizeSmall"] & 1) == 0)
  {
    if ([v1 isEqualToString:@"CCSModuleSizeSmallTall"])
    {
      v2 = 1;
      goto LABEL_19;
    }

    if ([v1 isEqualToString:@"CCSModuleSizeSmallWide"])
    {
      v2 = 2;
      goto LABEL_19;
    }

    if ([v1 isEqualToString:@"CCSModuleSizeSmallExtraWide"])
    {
      v2 = 3;
      goto LABEL_19;
    }

    if ([v1 isEqualToString:@"CCSModuleSizeMedium"])
    {
      v2 = 4;
      goto LABEL_19;
    }

    if ([v1 isEqualToString:@"CCSModuleSizeMediumWide"])
    {
      v2 = 5;
      goto LABEL_19;
    }

    if ([v1 isEqualToString:@"CCSModuleSizeLarge"])
    {
      v2 = 6;
      goto LABEL_19;
    }

    if ([v1 isEqualToString:@"CCSModuleSizeLargeTall"])
    {
      v2 = 7;
      goto LABEL_19;
    }

    if ([v1 isEqualToString:@"CCSModuleSizeLargeExtraTall"])
    {
      v2 = 8;
      goto LABEL_19;
    }

    v4 = CCSLogRemoteService;
    if (os_log_type_enabled(CCSLogRemoteService, OS_LOG_TYPE_ERROR))
    {
      CCSModuleSizeFromNSString_cold_1(v1, v4);
    }
  }

  v2 = 0;
LABEL_19:

  return v2;
}

void CCSRegisterControlCenterLogging()
{
  if (CCSRegisterControlCenterLogging_onceToken != -1)
  {
    CCSRegisterControlCenterLogging_cold_1();
  }
}

uint64_t __CCSRegisterControlCenterLogging_block_invoke()
{
  v0 = os_log_create("com.apple.ControlCenter", "ControlCenterTool");
  v1 = CCSLogControlCenterTool;
  CCSLogControlCenterTool = v0;

  v2 = os_log_create("com.apple.ControlCenter", "ModuleSettings");
  v3 = CCSLogModuleSettings;
  CCSLogModuleSettings = v2;

  CCSLogRemoteService = os_log_create("com.apple.ControlCenter", "RemoteService");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *CCSModuleVisibilityPreferenceDescription(uint64_t a1)
{
  v1 = @"unsupported";
  if (a1 == 1)
  {
    v1 = @"default visible";
  }

  if (a1 == 2)
  {
    return @"default hidden";
  }

  else
  {
    return v1;
  }
}

uint64_t CCSVisibilityPreferenceForBundleInfoDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 bs_safeNumberForKey:@"SBIconVisibilitySetByAppPreference"];
  v3 = [v1 bs_safeNumberForKey:@"SBIconVisibilityDefaultVisible"];
  v4 = [v1 bs_safeArrayForKey:@"SBIconVisibilityDefaultVisibleInstallTypes"];
  v5 = [v1 bs_safeArrayForKey:@"SBIconVisibilityDefaultVisiblePlatforms"];

  v6 = _CCSModuleVisibilityPreferenceFromFlagsAndAllowableInstallTypes(v2, v3, v4, v5);
  return v6;
}

id CCSRemoteServiceServerInterface()
{
  if (CCSRemoteServiceServerInterface_onceToken != -1)
  {
    CCSRemoteServiceServerInterface_cold_1();
  }

  v1 = CCSRemoteServiceServerInterface_remoteServiceServerInterface;

  return v1;
}

uint64_t __CCSRemoteServiceServerInterface_block_invoke()
{
  CCSRemoteServiceServerInterface_remoteServiceServerInterface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2857A59A8];

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24428D758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24428DAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_24428DC68()
{
  result = [objc_allocWithZone(CCSControlCenterServicesManager) init];
  qword_27EDDCF18 = result;
  return result;
}

id static CCSControlCenterServicesManager.shared.getter()
{
  if (qword_27EDDCF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27EDDCF18;

  return v0;
}

void static CCSControlCenterServicesManager.shared.setter(uint64_t a1)
{
  if (qword_27EDDCF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27EDDCF18;
  qword_27EDDCF18 = a1;
}

uint64_t (*static CCSControlCenterServicesManager.shared.modify())()
{
  if (qword_27EDDCF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void _sSo31CCSControlCenterServicesManagerC07ControlbC0E05startC0yyFZ_0()
{
  if (qword_280BCA7A8 != -1)
  {
    swift_once();
  }

  v0 = sub_24428F1DC();
  __swift_project_value_buffer(v0, qword_280BCA860);
  v1 = sub_24428F1BC();
  v2 = sub_24428F22C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24427F000, v1, v2, "Starting Control Center Services...", v3, 2u);
    MEMORY[0x245D5DAF0](v3, -1, -1);
  }

  v4 = [objc_opt_self() sharedInstance];
  [v4 resume];
}

unint64_t type metadata accessor for CCSControlCenterServicesManager()
{
  result = qword_27EDDCF20;
  if (!qword_27EDDCF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDCF20);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

const char *sub_24428E0A8()
{
  v0 = sub_24428F1DC();
  __swift_allocate_value_buffer(v0, qword_280BCA860);
  __swift_project_value_buffer(v0, qword_280BCA860);
  result = "com.apple.ControlCenter";
  if ("com.apple.ControlCenter")
  {
    sub_24428F1EC();
    return sub_24428F1CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void CCSModuleSizeFromNSString_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24427F000, a2, OS_LOG_TYPE_ERROR, "No matching module size found for string: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}