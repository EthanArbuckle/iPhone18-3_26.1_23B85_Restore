void DMReportMigrationFailure()
{
  if (os_variant_has_internal_content())
  {
    v1 = getprogname();
    v3 = getpid();
    _DMLogFunc(v0, 5, @"DMReportMigrationFailure called by process: %s[%d]");
    v2 = [DMConnection connection:v1];
    v4 = v2;
    if (v2)
    {
      [v2 reportMigrationFailure];
    }

    else
    {
      _DMLogFunc(v0, 3, @"Can't connect to migrator service!");
    }
  }
}

void DMForceMigrationOnNextReboot()
{
  v1 = getprogname();
  v3 = getpid();
  _DMLogFunc(v0, 5, @"DMForceMigrationOnNextReboot called by process: %s[%d]");
  v2 = [DMConnection connection:v1];
  v4 = v2;
  if (v2)
  {
    [v2 forceMigrationOnNextRebootWithUserDataDisposition:0 context:0];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!");
  }
}

void DMForceMigrationOnNextRebootWithUserDataDisposition(uint64_t a1, uint64_t a2)
{
  v5 = getprogname();
  v7 = getpid();
  _DMLogFunc(v2, 5, @"DMForceMigrationOnNextRebootWithUserDataDisposition called by process: %s[%d]");
  v6 = [DMConnection connection:v5];
  v8 = v6;
  if (v6)
  {
    [v6 forceMigrationOnNextRebootWithUserDataDisposition:a1 context:a2];
  }

  else
  {
    _DMLogFunc(v2, 3, @"Can't connect to migrator service!");
  }
}

uint64_t DMIsMigrationNeeded()
{
  v1 = +[DMConnection connection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isMigrationNeeded];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!");
    v3 = 0;
  }

  return v3;
}

uint64_t DMGetUserDataDisposition()
{
  v1 = +[DMConnection connection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 userDataDisposition];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!");
    v3 = 0;
  }

  return v3;
}

uint64_t DMCopyUserDataDispositionAuxiliaryData()
{
  v1 = +[DMConnection connection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 userDataDispositionAuxiliaryData];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!");
    v3 = 0;
  }

  return v3;
}

void *DMGetPreviousBuildVersion()
{
  v1 = +[DMConnection connection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 previousBuildVersion];
    v4 = v3;
    if (v3)
    {
      CFAutorelease(v3);
    }
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!");
    v4 = 0;
  }

  return v4;
}

uint64_t DMCopyOrderedPluginIndentifiers()
{
  v1 = +[DMConnection connection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 orderedPluginIdentifiers];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!");
    v3 = 0;
  }

  return v3;
}

uint64_t DMPerformMigrationReturningAfterPlugin(uint64_t a1)
{
  getprogname();
  getpid();
  _DMLogFunc(v1, 5, @"DMPerformMigrationReturningAfterPlugin called by process: %s[%d], plugin %@");

  return _DMPerformMigration(1, a1, 0);
}

uint64_t _DMPerformMigration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = +[DMEnvironment sharedInstance];
    if ([v7 deviceModeIsSharediPad])
    {
      v8 = +[DMEnvironment sharedInstance];
      v9 = [v8 userSessionIsLoginWindow];

      if (v9)
      {
        goto LABEL_8;
      }

      v10 = +[DMEnvironment sharedInstance];
      v7 = [v10 buildVersion];

      v11 = +[DMEnvironment sharedInstance];
      v12 = [v11 lastBuildVersionPref];

      if ([DMEnvironment isBuildVersion:v7 equalToBuildVersion:v12])
      {
        _DMLogFunc(v3, 5, @"We are in EDU mode and current build version(%@) is equal to last build version(%@). Skip migration.");

LABEL_13:
        v14 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_8:
  v7 = +[DMConnection connection];
  if (!v7)
  {
    _DMLogFunc(v3, 3, @"Can't connect to migrator service!");
    goto LABEL_13;
  }

  v13 = objc_alloc_init(DMClientAPIController);
  v14 = [(DMClientAPIController *)v13 _migrateWithConnection:v7 checkNecessity:a1 lastRelevantPlugin:a2 testMigrationInfrastructureOnly:a3];
  if ((v14 & 1) == 0)
  {
    DMReportMigrationFailure();
  }

LABEL_14:
  return v14;
}

uint64_t DMPerformMigrationIfNeeded()
{
  getprogname();
  getpid();
  _DMLogFunc(v0, 5, @"DMPerformMigrationIfNeeded called by process: %s[%d]");

  return _DMPerformMigration(1, 0, 0);
}

uint64_t DMPerformMigration()
{
  getprogname();
  getpid();
  _DMLogFunc(v0, 5, @"DMPerformMigration called by process: %s[%d], reason: %@");

  return _DMPerformMigration(0, 0, 0);
}

uint64_t DMTestPerformMigrationInfrastructure()
{
  getprogname();
  getpid();
  _DMLogFunc(v0, 5, @"DMTestPerformMigrationInfrastructure called by process: %s[%d]");

  return _DMPerformMigration(0, 0, 1);
}

void DMProgressHostIsReady()
{
  v2 = getprogname();
  v3 = getpid();
  _DMLogFunc(v0, 5, @"DMProgressHostIsReady called by process: %s[%d]");
  v1 = objc_alloc_init(DMClientAPIController);
  v4 = v1;
  if (v1)
  {
    [(DMClientAPIController *)v1 progressHostIsReady:v2];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Failed to create client API controller!");
  }
}

void DMChangeGraphicalProgressVisibility(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = +[DMConnection connection];
  if (v5)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __DMChangeGraphicalProgressVisibility_block_invoke;
    v6[3] = &unk_2788550A8;
    v8 = a1;
    v7 = v4;
    [v5 changeVisibility:a1 completion:v6];
  }

  else
  {
    _DMLogFunc(v2, 3, @"Can't connect to migrator service!");
  }
}

uint64_t __DMChangeGraphicalProgressVisibility_block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  _DMLogFunc(v1, 5, @"Data migrator visibility change to %@ completed with success: %s.");

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t DMCopyMigrationPhaseDescription()
{
  v1 = +[DMConnection connection];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 migrationPhaseDescription];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!");
    v3 = 0;
  }

  return v3;
}

void DMGetMigrationPluginResults(void *a1)
{
  v2 = a1;
  v3 = +[DMConnection connection];
  if (v3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __DMGetMigrationPluginResults_block_invoke;
    v4[3] = &unk_2788550D0;
    v5 = v2;
    [v3 migrationPluginResults:v4];
  }

  else
  {
    _DMLogFunc(v1, 3, @"Can't connect to migrator service!");
    if (v2)
    {
      (*(v2 + 2))(v2, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.datamigrator" code:1 userInfo:0]);
    }
  }
}

uint64_t __DMGetMigrationPluginResults_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void DMDeferExit(void *a1)
{
  v4 = a1;
  v2 = +[DMConnection connection];
  v3 = v2;
  if (v2)
  {
    [v2 deferExit];
  }

  else
  {
    _DMLogFunc(v1, 3, @"Can't connect to migrator service!");
  }

  if (v4)
  {
    v4[2]();
  }
}

void DMCancelDeferredExit(void *a1)
{
  v4 = a1;
  v2 = +[DMConnection connection];
  v3 = v2;
  if (v2)
  {
    [v2 cancelDeferredExit];
  }

  else
  {
    _DMLogFunc(v1, 3, @"Can't connect to migrator service!");
  }

  if (v4)
  {
    v4[2]();
  }
}

void DMTestMigrationUI(uint64_t a1, uint64_t a2)
{
  v5 = +[DMConnection connection];
  v6 = v5;
  if (v5)
  {
    [v5 testMigrationUIWithProgress:a1 forceInvert:a2];
  }

  else
  {
    _DMLogFunc(v2, 3, @"Can't connect to migrator service!");
  }
}

void sub_22E744094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E7441F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _DMCoreLog()
{
  if (_DMCoreLog_onceToken != -1)
  {
    _DMCoreLog_cold_1();
  }

  v1 = _DMCoreLog_log;

  return v1;
}

void _DMLogFunc(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = _DMCoreLog();
  os_log_shim_with_CFString();
}

void _DMLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a6;
  v7 = _DMCoreLog();
  os_log_shim_with_CFString();
}

id _DMPluginSignpostLog()
{
  if (_DMPluginSignpostLog_onceToken != -1)
  {
    _DMPluginSignpostLog_cold_1();
  }

  v1 = _DMPluginSignpostLog_log;

  return v1;
}

void DMSetContext(uint64_t a1)
{
  v2 = +[DMEnvironment sharedInstance];
  [v2 setContext:a1];
}

void __DMContextPath_block_invoke()
{
  v0 = +[DMEnvironment sharedInstance];
  DMContextPath_retval = [v0 contextPath];
}

void __DMContextPathCStr_block_invoke()
{
  if (DMContextPath_onceToken != -1)
  {
    [DMEnvironment(DMContext) context];
  }

  v1 = DMContextPath_retval;
  Length = CFStringGetLength(DMContextPath_retval);
  DMContextPathCStr_retval = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(v1, DMContextPathCStr_retval, Length + 1, 0x8000100u))
  {

    _DMLogFunc(v0, 3, @"DMContextPathCStr CFStringGetCString failed to convert our path to a c string!");
  }
}

uint64_t DMCopyCurrentBuildVersion()
{
  v0 = +[DMEnvironment sharedInstance];
  v1 = [v0 buildVersion];

  return v1;
}

void sub_22E7475F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E747AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}