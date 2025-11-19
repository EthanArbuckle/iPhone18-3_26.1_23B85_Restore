Class __getREMDatabaseMigrationContextClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ReminderKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D6D3B0;
    v6 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    __getREMDatabaseMigrationContextClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("REMDatabaseMigrationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMDatabaseMigrationContextClass_block_invoke_cold_1();
  }

  getREMDatabaseMigrationContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_2428F2018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2428F2118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ReminderKitLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!ReminderKitLibraryCore_frameworkLibrary_0)
  {
    ReminderKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = ReminderKitLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getREMSaveRequestClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMSaveRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMSaveRequestClass_block_invoke_cold_1();
  }

  getREMSaveRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary()
{
  v0 = 0;
  if (!ReminderKitLibraryCore())
  {
    ReminderKitLibrary_cold_1(&v0);
  }
}

Class __getREMUserDefaultsClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMUserDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMUserDefaultsClass_block_invoke_cold_1();
  }

  getREMUserDefaultsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2428F4500(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

const char *OUTLINED_FUNCTION_2_0(sqlite3 **a1)
{
  v2 = *a1;

  return sqlite3_errmsg(v2);
}

void sub_2428F5DD0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [CalCalendarDatabaseReminderMigrator _attemptMigrationForDatabase:inCalendarDirectory:withContext:];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v3;
        v5 = [CalMigrationErrorUtils errorFromException:v6];
      }

      else
      {
        v5 = 0;
      }
    }

    [v2 recordMigrationFailureWithDescription:@"Exception thrown during migration" inStage:0 underlyingError:v5];
    [v2 finishMigrationWithSave:0];
    objc_exception_throw(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2428F6464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2428F7444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getREMColorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ReminderKitLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278D6D688;
    v6 = 0;
    ReminderKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary_1)
  {
    __getREMColorClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("REMColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMColorClass_block_invoke_cold_1();
  }

  getREMColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ReminderKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void __getREMDatabaseMigrationContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMDatabaseMigrationContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalDefaultReminderKitDatabaseMigrationContext.m" lineNumber:17 description:{@"Unable to find class %s", "REMDatabaseMigrationContext"}];

  __break(1u);
}

void __getREMDatabaseMigrationContextClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalDefaultReminderKitDatabaseMigrationContext.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMSaveRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMSaveRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalDefaultReminderKitProvider.m" lineNumber:16 description:{@"Unable to find class %s", "REMSaveRequest"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalDefaultReminderKitProvider.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMUserDefaultsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMUserDefaultsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalDefaultReminderKitProvider.m" lineNumber:17 description:{@"Unable to find class %s", "REMUserDefaults"}];

  __break(1u);
}

void __getREMColorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMColorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalCalendarDatabaseReminderMigrator.m" lineNumber:34 description:{@"Unable to find class %s", "REMColor"}];

  __break(1u);
}

void __getREMColorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalCalendarDatabaseReminderMigrator.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
}