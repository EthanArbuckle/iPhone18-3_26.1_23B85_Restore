id CECreateErrorWithMessage(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.cloudexperience" code:a1 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

Class __getINDaemonConnectionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278DE0330;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getINDaemonConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getINDaemonConnectionClass_softClass_0;
  v7 = getINDaemonConnectionClass_softClass_0;
  if (!getINDaemonConnectionClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getINDaemonConnectionClass_block_invoke_0;
    v3[3] = &unk_278DE0310;
    v3[4] = &v4;
    __getINDaemonConnectionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2439E56B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINDaemonConnectionClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudNotificationLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278DE03E0;
    v7 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int16 *OUTLINED_FUNCTION_5@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id OUTLINED_FUNCTION_1_1(id a1)
{

  return a1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __83__iCloudStorageController_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CELogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __83__iCloudStorageController_calculateExtraQuotaNeededToSyncIsAccountFull_completion___block_invoke_cold_1(a1, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void __47__iCloudStorageController_fetchStorageSummary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CELogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__iCloudStorageController_fetchStorageSummary___block_invoke_cold_1(a1, v6);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [[iCloudStorageSummary alloc] initWithStorageSummary:v5];
    (*(*(a1 + 40) + 16))();
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

void __getICQStoragePlanRecommendationClass_block_invoke(uint64_t a1)
{
  iCloudQuotaLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICQStoragePlanRecommendation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICQStoragePlanRecommendationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getICQStoragePlanRecommendationClass_block_invoke_cold_1();
    iCloudQuotaLibrary();
  }
}

void iCloudQuotaLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!iCloudQuotaLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __iCloudQuotaLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278DE04C8;
    v4 = 0;
    iCloudQuotaLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!iCloudQuotaLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __iCloudQuotaLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudQuotaLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getICQCloudStorageDataControllerClass_block_invoke(uint64_t a1)
{
  iCloudQuotaLibrary();
  result = objc_getClass("ICQCloudStorageDataController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICQCloudStorageDataControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getICQCloudStorageDataControllerClass_block_invoke_cold_1();
    return __getICSHomeDataControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getICSHomeDataControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!iCloudSettingsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __iCloudSettingsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278DE04E0;
    v7 = 0;
    iCloudSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (iCloudSettingsLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ICSHomeDataController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICSHomeDataControllerClass_block_invoke_cold_1();
  }

  getICSHomeDataControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iCloudSettingsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iCloudSettingsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id _CELogSystem()
{
  if (_CELogSystem_onceToken != -1)
  {
    _CELogSystem_cold_1();
  }

  v1 = _CELogSystem_log;

  return v1;
}

id _CESignpostLogSystem()
{
  if (_CESignpostLogSystem_onceToken != -1)
  {
    _CESignpostLogSystem_cold_1();
  }

  v1 = _CESignpostLogSystem_log;

  return v1;
}

os_signpost_id_t _CESignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

os_signpost_id_t _CESignpostCreateWithObject(NSObject *a1, const void *a2)
{
  v2 = os_signpost_id_make_with_pointer(a1, a2);
  mach_continuous_time();
  return v2;
}

unint64_t _CESignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (_CESignpostGetNanoseconds_onceToken[0] != -1)
  {
    _CESignpostGetNanoseconds_cold_1();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = _CESignpostGetNanoseconds_timebase_info;
  LODWORD(v5) = *algn_27ED97E1C;
  return (v4 / v5 * (v3 - a2));
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_2439F0430()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() defaultCenter];
    type metadata accessor for ClientRecommendationsCache();
    v3 = swift_allocObject();
    result = sub_2439F0524(v1, v2);
    qword_27ED98730 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2439F0524(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A08, &qword_243A0F898);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 16) = v5;
  *(v2 + 24) = sub_243A0D4BC();
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 32) = sub_2439F5C28(MEMORY[0x277D84F90]);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return v2;
}

uint64_t sub_2439F05BC()
{
  sub_2439F0D44();
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_2439F13C0(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

void sub_2439F0644(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v34 = *(v3 + 16);
  os_unfair_lock_lock(v34 + 4);
  v5 = sub_2439F5D2C(MEMORY[0x277D84F90]);
  if (a3 >> 62)
  {
LABEL_26:
    v6 = sub_243A0D77C();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_27:
    swift_beginAccess();

    v29 = *(v33 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v33 + 32);
    *(v33 + 32) = 0x8000000000000000;
    sub_2439F1538(v5, v31, a2, isUniquelyReferenced_nonNull_native);

    *(v33 + 32) = v39;
    swift_endAccess();
    os_unfair_lock_unlock(v34 + 4);
    return;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_3:
  v7 = 0;
  v36 = a3;
  v37 = a3 & 0xC000000000000001;
  v35 = a3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v37)
    {
      v10 = MEMORY[0x245D44940](v7, a3);
    }

    else
    {
      if (v7 >= *(v35 + 16))
      {
        goto LABEL_25;
      }

      v10 = *(a3 + 8 * v7 + 32);
    }

    v11 = v10;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v38 = v7 + 1;
    v12 = [v10 identifier];
    v13 = sub_243A0D4EC();
    v15 = v14;

    v16 = v11;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    a3 = sub_243A030EC(v13, v15);
    v19 = v5[2];
    v20 = (v18 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_23;
    }

    v22 = v18;
    if (v5[3] < v21)
    {
      break;
    }

    if (v17)
    {
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_243A03C98();
      if (v22)
      {
LABEL_4:

        v8 = v5[7];
        v9 = *(v8 + 8 * a3);
        *(v8 + 8 * a3) = v16;

        goto LABEL_5;
      }
    }

LABEL_18:
    v5[(a3 >> 6) + 8] |= 1 << a3;
    v25 = (v5[6] + 16 * a3);
    *v25 = v13;
    v25[1] = v15;
    *(v5[7] + 8 * a3) = v16;

    v26 = v5[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_24;
    }

    v5[2] = v28;
LABEL_5:
    ++v7;
    a3 = v36;
    if (v38 == v6)
    {
      goto LABEL_27;
    }
  }

  sub_243A035D0(v21, v17);
  v23 = sub_243A030EC(v13, v15);
  if ((v22 & 1) == (v24 & 1))
  {
    a3 = v23;
    if (v22)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  sub_243A0D82C();
  __break(1u);
}

void sub_2439F091C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v2 + 32);
  if (!*(v6 + 16))
  {
    goto LABEL_19;
  }

  v7 = sub_243A030EC(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_19:
    os_unfair_lock_unlock(v5 + 4);
    return;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  v10 = 0;
  v19 = MEMORY[0x277D84F90];
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_12:
    v13 = (v15 - 1) & v15;
    if (v19)
    {
      v17 = *(*(v9 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v15)))));
      MEMORY[0x245D44730]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_243A0D57C();
      }

      sub_243A0D58C();
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      goto LABEL_19;
    }

    v15 = *(v9 + 64 + 8 * v16);
    ++v10;
    if (v15)
    {
      v10 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_2439F0AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock(v9 + 4);
  v32 = 0;
  swift_beginAccess();
  v10 = *(v4 + 32);
  if (!*(v10 + 16))
  {
    goto LABEL_27;
  }

  v11 = sub_243A030EC(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_27:
    os_unfair_lock_unlock(v9 + 4);
    return;
  }

  v30 = v9;
  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = 0;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v31 = a4;
  while (v17)
  {
LABEL_18:
    v22 = *(*(v13 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v17)))));
    v23 = [v22 bundleID];
    v24 = sub_243A0D4EC();
    v26 = v25;

    if (v24 == a3 && v26 == v31)
    {
    }

    else
    {
      v28 = sub_243A0D7FC();

      if ((v28 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v19 = v32;
    if (!v32)
    {
      v19 = MEMORY[0x277D84F90];
    }

    v32 = v19;
    v20 = v22;
    MEMORY[0x245D44730]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_243A0D57C();
    }

    sub_243A0D58C();
LABEL_12:
    v17 &= v17 - 1;
  }

  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v9 = v30;
      goto LABEL_27;
    }

    v17 = *(v13 + 64 + 8 * v21);
    ++v14;
    if (v17)
    {
      v14 = v21;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_2439F0D44()
{
  swift_beginAccess();
  sub_2439F1308(v0 + 40, &v4);
  if (v5)
  {
    sub_2439F1498(&v4, &v6);
    v1 = *(v0 + 80);
    __swift_project_boxed_opaque_existential_0(&v6, *(&v7 + 1));
    v2 = v1;
    [v2 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v6);
  }

  else
  {
    sub_2439F13C0(&v4);
  }

  v6 = 0u;
  v7 = 0u;
  swift_beginAccess();
  sub_2439F1428(&v6, v0 + 40);
  return swift_endAccess();
}

uint64_t sub_2439F0E54(uint64_t a1, id *a2)
{
  result = sub_243A0D4CC();
  *a2 = 0;
  return result;
}

uint64_t sub_2439F0ECC(uint64_t a1, id *a2)
{
  v3 = sub_243A0D4DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2439F0F4C@<X0>(uint64_t *a1@<X8>)
{
  sub_243A0D4EC();
  v2 = sub_243A0D4BC();

  *a1 = v2;
  return result;
}

uint64_t sub_2439F0F90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_243A0D4BC();

  *a2 = v5;
  return result;
}

uint64_t sub_2439F0FD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_243A0D4EC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2439F1004(uint64_t a1)
{
  v2 = sub_2439F1104(&qword_27ED979F0);
  v3 = sub_2439F1104(&qword_27ED979F8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2439F1104(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Name(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2439F1148()
{
  v1 = *v0;
  v2 = sub_243A0D4EC();
  v3 = MEMORY[0x245D44720](v2);

  return v3;
}

uint64_t sub_2439F1184()
{
  v1 = *v0;
  sub_243A0D4EC();
  sub_243A0D50C();
}

uint64_t sub_2439F11D8()
{
  v1 = *v0;
  sub_243A0D4EC();
  sub_243A0D89C();
  sub_243A0D50C();
  v2 = sub_243A0D8BC();

  return v2;
}

uint64_t sub_2439F124C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_243A0D4EC();
  v6 = v5;
  if (v4 == sub_243A0D4EC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_243A0D7FC();
  }

  return v9 & 1;
}

uint64_t sub_2439F1308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A00, &qword_243A0F890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2439F13C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A00, &qword_243A0F890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2439F1428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A00, &qword_243A0F890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2439F1498(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2439F1538(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243A030EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_243A03328(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_243A030EC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_243A0D82C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_243A03B28();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2439F16B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_243A030EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_243A035E4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_243A030EC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_243A0D82C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_243A03CAC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_2439F1830(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_2439F1888(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2439F18A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_2439F18E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t CERecommendation.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_243A0D4EC();

  return v2;
}

Swift::Bool __swiftcall CERecommendation.hasDataclassAction()()
{
  v1 = [v0 actions];
  sub_2439F1AC0();
  v2 = sub_243A0D55C();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243A0D77C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245D44940](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      v9 = v8 != 0;

      ++v4;
      if (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7 == i;
      }

      if (v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v9 = 0;
LABEL_19:

  return v9;
}

unint64_t sub_2439F1AC0()
{
  result = qword_27ED97A18;
  if (!qword_27ED97A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED97A18);
  }

  return result;
}

void sub_2439F1B18(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_243A0D4EC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_2439F1B70(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  sub_2439F5390(v10);
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v12 = sub_243A0D41C();
  __swift_project_value_buffer(v12, qword_27ED98738);

  v13 = sub_243A0D3FC();
  v14 = sub_243A0D62C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v15 = 136315906;
    *(v15 + 4) = sub_243A08B04(0xD000000000000076, 0x8000000243A10F10, &v25);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_243A08B04(0xD000000000000032, 0x8000000243A10F90, &v25);
    *(v15 + 22) = 2080;
    if (a2)
    {
      v16 = 561210745;
    }

    else
    {
      v16 = 2191214;
    }

    if (a2)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_243A08B04(v16, v17, &v25);

    *(v15 + 24) = v18;
    *(v15 + 32) = 2080;
    v19 = sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
    v20 = MEMORY[0x245D44760](a1, v19);
    v22 = sub_243A08B04(v20, v21, &v25);

    *(v15 + 34) = v22;
    _os_log_impl(&dword_2439E1000, v13, v14, "%s%s Donated recommendations (didTimeout? %s) %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245D45310](v24, -1, -1);
    MEMORY[0x245D45310](v15, -1, -1);
  }

  return a5(a1, a3);
}

uint64_t sub_2439F1DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_243A0D89C();
  sub_243A0D50C();
  v7 = sub_243A0D8BC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_243A0D7FC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2439F1EF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AD8, &qword_243A0F9E0);
    v2 = sub_243A0D7AC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_2439F5784(0, &qword_27ED97AA8, 0x277CCABB0);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2439F1498(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2439F1498(v32, v33);
    v17 = *(v2 + 40);
    result = sub_243A0D6FC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2439F1498(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_2439F21C0(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v84 = a6;
  v85 = a3;
  v9 = sub_243A0D3BC();
  v10 = *(v9 - 8);
  v86 = v9;
  v87 = v10;
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - v14;
  v16 = sub_243A0D38C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v22);
  v25 = &v79 - v24;
  v83 = v21;
  if (a2)
  {
    v80 = a5;
    v81 = v15;
    v26 = a2;
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v27 = sub_243A0D41C();
    __swift_project_value_buffer(v27, qword_27ED98738);
    (*(v17 + 16))(v25, v85, v16);
    v28 = a2;
    v29 = sub_243A0D3FC();
    v30 = v16;
    v31 = sub_243A0D63C();

    if (os_log_type_enabled(v29, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v79 = v17;
      v34 = v33;
      v35 = swift_slowAlloc();
      v88[0] = v35;
      *v32 = 136315394;
      sub_2439F57CC(&qword_27ED97AB0, MEMORY[0x277CC9260]);
      v36 = sub_243A0D7CC();
      v38 = v37;
      (*(v79 + 8))(v25, v30);
      v39 = sub_243A08B04(v36, v38, v88);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2112;
      v40 = a2;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 14) = v41;
      *v34 = v41;
      _os_log_impl(&dword_2439E1000, v29, v31, "Could not fetch recommendations from %s due to %@", v32, 0x16u);
      sub_2439F5714(v34, &qword_27ED97AC0, &unk_243A0F9D0);
      v42 = v34;
      v17 = v79;
      MEMORY[0x245D45310](v42, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x245D45310](v35, -1, -1);
      MEMORY[0x245D45310](v32, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v25, v16);
    }

    v16 = v30;
    a5 = v80;
    v15 = v81;
  }

  else
  {
    if (a1 >> 62)
    {
      v77 = v23;
      v78 = sub_243A0D77C();
      v23 = v77;
      if (!v78)
      {
        goto LABEL_19;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v43 = v23;
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v44 = sub_243A0D41C();
    __swift_project_value_buffer(v44, qword_27ED98738);
    (*(v17 + 16))(v43, v85, v16);

    v45 = v16;
    v46 = sub_243A0D3FC();
    LODWORD(v79) = sub_243A0D62C();
    if (os_log_type_enabled(v46, v79))
    {
      v80 = a5;
      v81 = v15;
      v47 = v17;
      v48 = v45;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v88[0] = v50;
      *v49 = 134218242;
      if (a1 >> 62)
      {
        v51 = sub_243A0D77C();
      }

      else
      {
        v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v49 + 4) = v51;

      *(v49 + 12) = 2080;
      sub_2439F57CC(&qword_27ED97AB0, MEMORY[0x277CC9260]);
      v52 = sub_243A0D7CC();
      v54 = v53;
      (*(v47 + 8))(v43, v48);
      v55 = sub_243A08B04(v52, v54, v88);

      *(v49 + 14) = v55;
      _os_log_impl(&dword_2439E1000, v46, v79, "Loading %ld recommendations from %s", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v50);
      v56 = v48;
      v17 = v47;
      MEMORY[0x245D45310](v50, -1, -1);
      MEMORY[0x245D45310](v49, -1, -1);

      v16 = v56;
      a5 = v80;
      v15 = v81;
    }

    else
    {

      (*(v17 + 8))(v43, v45);
      v16 = v45;
    }

    swift_beginAccess();

    sub_2439F2AA4(v57);
    swift_endAccess();
  }

LABEL_19:
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v58 = sub_243A0D41C();
  __swift_project_value_buffer(v58, qword_27ED98738);
  (*(v87 + 16))(v15, a5, v86);
  v59 = v83;
  (*(v17 + 16))(v83, v85, v16);
  v60 = sub_243A0D3FC();
  v61 = sub_243A0D64C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v85 = v16;
    v63 = v62;
    v64 = swift_slowAlloc();
    v88[0] = v64;
    *v63 = 134218242;
    v65 = v82;
    sub_243A0D3AC();
    sub_243A0D39C();
    v67 = v66;
    v68 = *(v87 + 8);
    v69 = v65;
    v70 = v17;
    v71 = v86;
    v68(v69, v86);
    v68(v15, v71);
    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    sub_2439F57CC(&qword_27ED97AB0, MEMORY[0x277CC9260]);
    v72 = v85;
    v73 = sub_243A0D7CC();
    v75 = v74;
    (*(v70 + 8))(v59, v72);
    v76 = sub_243A08B04(v73, v75, v88);

    *(v63 + 14) = v76;
    _os_log_impl(&dword_2439E1000, v60, v61, "It took %f seconds to check recommendations at %s", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x245D45310](v64, -1, -1);
    MEMORY[0x245D45310](v63, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v59, v16);
    (*(v87 + 8))(v15, v86);
  }

  dispatch_group_leave(v84);
}

uint64_t sub_2439F2AA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_243A0D77C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_243A0D77C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2439F30E0(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2439F3180(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2439F2B94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v6 = sub_243A0D55C();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_2439F2C44(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 24);
    swift_beginAccess();
    v9 = *(a2 + 16);
    sub_2439F5774(v7);

    v7(v10, a3 & 1, 0);
    sub_2439F5390(v7);
  }

  return result;
}

uint64_t sub_2439F2CF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2439F2D3C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2439F2DA8()
{
  v10 = sub_243A0D68C();
  v1 = *(v10 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_243A0D66C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_243A0D46C() - 8) + 64);
  MEMORY[0x28223BE20]();
  *(v0 + 16) = 0xD000000000000014;
  *(v0 + 24) = 0x8000000243A10FD0;
  strcpy((v0 + 32), "ClientSources");
  *(v0 + 46) = -4864;
  *(v0 + 48) = 5;
  v7 = sub_2439F5784(0, &qword_27ED97AE0, 0x277D85C78);
  v9[0] = "CloudRecommendations";
  v9[1] = v7;
  sub_243A0D44C();
  v11 = MEMORY[0x277D84F90];
  sub_2439F57CC(&qword_27ED97AE8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AF0, &qword_243A0F9E8);
  sub_2439F5814(&qword_27ED97AF8, &qword_27ED97AF0, &qword_243A0F9E8);
  sub_243A0D6DC();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v10);
  *(v0 + 56) = sub_243A0D6AC();
  return v0;
}

void sub_2439F306C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2439F30E0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_243A0D77C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_243A0D75C();
  *v1 = result;
  return result;
}

uint64_t sub_2439F3180(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_243A0D77C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_243A0D77C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2439F5814(&qword_27ED97AD0, &qword_27ED97AC8, &qword_243A0FF30);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AC8, &qword_243A0FF30);
            v9 = sub_243A03F78(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2439F3334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v272 = a4;
  v232 = a3;
  v231 = a2;
  v238 = a1;
  v246 = sub_243A0D3BC();
  v240 = *(v246 - 8);
  v13 = *(v240 + 64);
  v14 = MEMORY[0x28223BE20](v246);
  v245 = v217 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v15;
  MEMORY[0x28223BE20](v14);
  v260 = v217 - v16;
  v229 = sub_243A0D33C();
  v228 = *(v229 - 8);
  v17 = *(v228 + 64);
  MEMORY[0x28223BE20](v229);
  v273 = v217 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_243A0D43C();
  v250 = *(v244 - 8);
  v19 = *(v250 + 64);
  MEMORY[0x28223BE20](v244);
  v243 = v217 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_243A0D46C();
  v249 = *(v242 - 8);
  v21 = *(v249 + 64);
  MEMORY[0x28223BE20](v242);
  v241 = v217 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_243A0D42C();
  v235 = *(v236 - 8);
  v23 = v235[8];
  MEMORY[0x28223BE20](v236);
  v227 = (v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v264 = sub_243A0D48C();
  v253 = *(v264 - 1);
  v25 = *(v253 + 8);
  v26 = MEMORY[0x28223BE20](v264);
  v226 = v217 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v237 = (v217 - v28);
  v270 = sub_243A0D34C();
  v29 = *(v270 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v270);
  v271 = v217 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_243A0D38C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v255 = v217 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v230 = v217 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v259 = v217 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v268 = v217 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v266 = v217 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  *&v261 = v217 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v257 = v217 - v48;
  v224 = v49;
  MEMORY[0x28223BE20](v47);
  v252 = v217 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A20, &unk_243A0F9C0);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v265 = v217 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v53);
  v256 = v217 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = v217 - v57;
  v59 = swift_allocObject();
  v59[2] = a5;
  v59[3] = a6;
  v247 = a6;
  v59[4] = a7;
  v59[5] = a8;
  v233 = a8;
  v248 = v59;
  v59[6] = a9;
  v60 = objc_opt_self();

  v234 = a7;

  v223 = a9;

  v262 = v60;
  v61 = [v60 defaultManager];
  v62 = [v61 URLsForDirectory:5 inDomains:8];

  v251 = v32;
  v63 = sub_243A0D55C();

  v64 = *(v63 + 16);
  v258 = v33;
  if (v64)
  {
    v65 = v251;
    (*(v33 + 16))(v58, v63 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v251);

    v66 = *(v33 + 56);
    v67 = (v33 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v68 = v58;
    v69 = 0;
    v70 = v65;
  }

  else
  {

    v66 = *(v33 + 56);
    v67 = (v33 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v68 = v58;
    v69 = 1;
    v70 = v251;
  }

  v263 = v66;
  v66(v68, v69, 1, v70);
  v72 = v271;
  v71 = v272;
  v73 = *(v272 + 24);
  v269 = *(v272 + 16);
  v74 = *MEMORY[0x277CC91C0];
  v75 = *(v29 + 104);
  v76 = v270;
  v75(v271, v74, v270);
  v239 = v58;
  v77 = v256;
  sub_2439F5224(v58, v256);

  v78 = v252;
  sub_243A0D37C();
  v79 = *(v71 + 40);
  v254 = *(v71 + 32);
  v75(v72, v74, v76);
  v80 = v258;
  v82 = v258 + 16;
  v81 = *(v258 + 16);
  v83 = v251;
  v81(v77, v78, v251);
  v267 = v67;
  v263(v77, 0, 1, v83);

  v84 = v257;
  sub_243A0D37C();
  v85 = v80;
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v86 = sub_243A0D41C();
  v87 = __swift_project_value_buffer(v86, qword_27ED98738);
  v88 = v261;
  v270 = v82;
  v81(v261, v84, v83);
  v271 = v87;
  v89 = sub_243A0D3FC();
  v90 = sub_243A0D64C();
  v91 = os_log_type_enabled(v89, v90);
  v269 = v81;
  if (v91)
  {
    v92 = v88;
    v93 = swift_slowAlloc();
    v94 = v85;
    v95 = swift_slowAlloc();
    aBlock = v95;
    *v93 = 136315138;
    v96 = sub_243A0D35C();
    v98 = v97;
    v99 = *(v94 + 8);
    v99(v92, v83);
    v100 = sub_243A08B04(v96, v98, &aBlock);

    *(v93 + 4) = v100;
    _os_log_impl(&dword_2439E1000, v89, v90, "Preparing to fetch client donated recommendations from %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x245D45310](v95, -1, -1);
    MEMORY[0x245D45310](v93, -1, -1);
  }

  else
  {

    v99 = *(v85 + 8);
    v99(v88, v83);
  }

  v101 = swift_allocObject();
  v102 = MEMORY[0x277D84F90];
  *(v101 + 16) = MEMORY[0x277D84F90];
  v103 = [v262 defaultManager];
  v104 = sub_243A0D61C();

  if (v104)
  {
    v247 = dispatch_group_create();
    v105 = swift_allocObject();
    *(v105 + 24) = 0;
    *(v105 + 16) = 0;
    v106 = swift_allocObject();
    v106[2] = v105;
    v106[3] = sub_2439F5214;
    v234 = v104;
    v106[4] = v248;
    swift_beginAccess();
    v107 = v102;
    v108 = *(v105 + 16);
    v109 = *(v105 + 24);
    *(v105 + 16) = sub_2439F5384;
    *(v105 + 24) = v106;

    sub_2439F5390(v108);
    v233 = *(v272 + 56);
    v110 = v226;
    sub_243A0D47C();
    v111 = v227;
    *v227 = 5;
    v112 = v235;
    v113 = v236;
    (v235[13])(v111, *MEMORY[0x277D85188], v236);
    v114 = v237;
    MEMORY[0x245D44690](v110, v111);
    (v112[1])(v111, v113);
    v272 = *(v253 + 1);
    (v272)(v110, v264);
    v115 = swift_allocObject();
    *(v115 + 16) = v105;
    *(v115 + 24) = v101;
    v281 = sub_2439F53A4;
    v282 = v115;
    aBlock = MEMORY[0x277D85DD0];
    v278 = 1107296256;
    v235 = &v279;
    v279 = sub_2439F2CF8;
    v280 = &block_descriptor;
    v116 = _Block_copy(&aBlock);
    v223 = v105;

    v236 = v101;

    v117 = v241;
    sub_243A0D44C();
    v275 = v107;
    v118 = sub_2439F57CC(&qword_27ED97A28, MEMORY[0x277D85198]);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A30, &unk_243A0FF40);
    v120 = sub_2439F5814(&qword_27ED97A38, &qword_27ED97A30, &unk_243A0FF40);
    v121 = v243;
    v221 = v119;
    v219 = v120;
    v122 = v244;
    v222 = v118;
    sub_243A0D6DC();
    MEMORY[0x245D44870](v114, v117, v121, v116);
    _Block_release(v116);
    v123 = *(v250 + 8);
    v250 += 8;
    v220 = v123;
    v123(v121, v122);
    v124 = *(v249 + 8);
    v249 += 8;
    v218 = v124;
    v124(v117, v242);
    (v272)(v114, v264);

    sub_243A0D60C();
    sub_243A0D32C();
    v126 = v259;
    v127 = v268;
    v128 = v266;
    v129 = v265;
    v130 = v263;
    if (v276)
    {
      v264 = (v258 + 32);
      v272 = v258 + 8;
      v217[2] = v240 + 16;
      v224 += 7;
      v225 += 7;
      v217[1] = v240 + 32;
      v237 = (v240 + 8);
      *&v125 = 136315138;
      v261 = v125;
      do
      {
        if (swift_dynamicCast())
        {
          v131 = v126;
          v130(v129, 0, 1, v83);
          v262 = *v264;
          (v262)(v128, v129, v83);
          v269(v127, v128, v83);
          v132 = sub_243A0D3FC();
          v133 = sub_243A0D62C();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            v135 = swift_slowAlloc();
            aBlock = v135;
            *v134 = v261;
            sub_2439F57CC(&qword_27ED97AB0, MEMORY[0x277CC9260]);
            v136 = sub_243A0D7CC();
            v138 = v137;
            v139 = *v272;
            (*v272)(v268, v83);
            v140 = sub_243A08B04(v136, v138, &aBlock);
            v127 = v268;

            *(v134 + 4) = v140;
            _os_log_impl(&dword_2439E1000, v132, v133, "Visiting %s", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v135);
            v141 = v135;
            v128 = v266;
            MEMORY[0x245D45310](v141, -1, -1);
            MEMORY[0x245D45310](v134, -1, -1);
          }

          else
          {

            v139 = *v272;
            (*v272)(v127, v83);
          }

          v126 = v131;
          v142 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
          v143 = sub_243A0D36C();
          v144 = [v142 initWithURL_];

          if (v144)
          {
            if ([v144 principalClass] && (swift_getObjCClassMetadata(), sub_2439F5784(0, &qword_27ED97A40, 0x277D82BB8), swift_dynamicCastMetatype()))
            {
              sub_243A0D3AC();
              v145 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
              v274 = &unk_2856BA3A0;
              v253 = v145;
              v256 = swift_dynamicCastObjCProtocolConditional();
              v254 = v139;
              if (v256)
              {
                v146 = v238;
                if (*(v238 + 16) && (v147 = [v256 bundleID], v148 = sub_243A0D4EC(), v150 = v149, v147, LOBYTE(v147) = sub_2439F1DF8(v148, v150, v146), , (v147 & 1) == 0))
                {
                  v185 = v246;
                  v127 = v268;
                  v186 = v260;
                  v126 = v131;
                  v184 = v253;
                }

                else
                {
                  dispatch_group_enter(v247);
                  sub_2439F5784(0, &qword_27ED97AA8, 0x277CCABB0);
                  v151 = sub_243A0D6BC();
                  v152 = [v256 bundleID];
                  v153 = sub_243A0D4EC();
                  v155 = v154;

                  if (*(v232 + 16))
                  {
                    v156 = v153;
                    v157 = v232;
                    v158 = sub_243A030EC(v156, v155);
                    v160 = v159;

                    if (v160)
                    {
                      v161 = *(*(v157 + 56) + 8 * v158);

                      v227 = v161;
                    }

                    else
                    {
                      v227 = v151;
                    }

                    v187 = v266;
                  }

                  else
                  {
                    v227 = v151;

                    v187 = v266;
                  }

                  v188 = v260;
                  sub_2439F1EF0(v231);
                  v226 = sub_243A0D4AC();

                  v189 = v230;
                  v269(v230, v187, v83);
                  v190 = v240;
                  v191 = v246;
                  (*(v240 + 16))(v245, v188, v246);
                  v192 = (*(v258 + 80) + 16) & ~*(v258 + 80);
                  v193 = (v224 + v192) & 0xFFFFFFFFFFFFFFF8;
                  v194 = (*(v190 + 80) + v193 + 8) & ~*(v190 + 80);
                  v195 = (v225 + v194) & 0xFFFFFFFFFFFFFFF8;
                  v196 = swift_allocObject();
                  (v262)(v196 + v192, v189, v83);
                  *(v196 + v193) = v236;
                  v185 = v191;
                  v186 = v260;
                  (*(v190 + 32))(v196 + v194, v245, v185);
                  v197 = v247;
                  *(v196 + v195) = v247;
                  v281 = sub_2439F55F4;
                  v282 = v196;
                  aBlock = MEMORY[0x277D85DD0];
                  v278 = 1107296256;
                  v279 = sub_2439F2B94;
                  v280 = &block_descriptor_26;
                  v198 = _Block_copy(&aBlock);

                  v199 = v197;
                  v128 = v266;

                  v200 = v226;
                  v184 = v227;
                  [v256 recommendationsForThresholds:v226 afterTimestamp:v227 completion:v198];

                  _Block_release(v198);
                  v144 = v200;
                  v126 = v259;
                  v127 = v268;
                  v130 = v263;
                }
              }

              else
              {
                v184 = v144;
                v185 = v246;
                v186 = v260;
                v144 = v253;
              }

              (*v237)(v186, v185);
              v254(v128, v83);
              v129 = v265;
            }

            else
            {
              v162 = v139;
              v163 = v255;
              v269(v255, v128, v83);
              v164 = sub_243A0D3FC();
              v165 = sub_243A0D63C();
              if (os_log_type_enabled(v164, v165))
              {
                v166 = swift_slowAlloc();
                v167 = swift_slowAlloc();
                aBlock = v167;
                *v166 = v261;
                v168 = sub_243A0D35C();
                v170 = v169;
                v162(v163, v83);
                v171 = sub_243A08B04(v168, v170, &aBlock);

                *(v166 + 4) = v171;
                _os_log_impl(&dword_2439E1000, v164, v165, "Principal Class not found for bundle at %s", v166, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v167);
                v172 = v167;
                v128 = v266;
                MEMORY[0x245D45310](v172, -1, -1);
                v173 = v166;
                v127 = v268;
                MEMORY[0x245D45310](v173, -1, -1);
              }

              else
              {

                v162(v163, v83);
              }

              v162(v128, v83);
              v126 = v259;
              v129 = v265;
              v130 = v263;
            }
          }

          else
          {
            v269(v131, v128, v83);
            v174 = sub_243A0D3FC();
            v175 = sub_243A0D63C();
            if (os_log_type_enabled(v174, v175))
            {
              v176 = swift_slowAlloc();
              v177 = swift_slowAlloc();
              aBlock = v177;
              *v176 = v261;
              v178 = sub_243A0D35C();
              v180 = v179;
              v139(v131, v83);
              v181 = sub_243A08B04(v178, v180, &aBlock);
              v128 = v266;

              *(v176 + 4) = v181;
              _os_log_impl(&dword_2439E1000, v174, v175, "Unable to load source bundle at %s", v176, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v177);
              v182 = v177;
              v127 = v268;
              MEMORY[0x245D45310](v182, -1, -1);
              v183 = v176;
              v126 = v131;
              MEMORY[0x245D45310](v183, -1, -1);

              v139(v128, v83);
              v130 = v263;
            }

            else
            {

              v139(v131, v83);
              v139(v128, v83);
            }

            v129 = v265;
          }
        }

        else
        {
          v130(v129, 1, 1, v83);
          sub_2439F5714(v129, &qword_27ED97A20, &unk_243A0F9C0);
        }

        sub_243A0D32C();
      }

      while (v276);
    }

    (*(v228 + 8))(v273, v229);
    v201 = swift_allocObject();
    v202 = v236;
    *(v201 + 16) = v223;
    *(v201 + 24) = v202;
    v281 = sub_2439F5464;
    v282 = v201;
    aBlock = MEMORY[0x277D85DD0];
    v278 = 1107296256;
    v279 = sub_2439F2CF8;
    v280 = &block_descriptor_20;
    v203 = _Block_copy(&aBlock);

    v204 = v241;
    sub_243A0D44C();
    v275 = MEMORY[0x277D84F90];
    v205 = v243;
    v206 = v244;
    sub_243A0D6DC();
    v207 = v247;
    sub_243A0D65C();
    _Block_release(v203);

    v220(v205, v206);
    v218(v204, v242);
    v208 = *(v258 + 8);
    v208(v257, v83);
    v208(v252, v83);
    sub_2439F5714(v239, &qword_27ED97A20, &unk_243A0F9C0);
  }

  else
  {
    v209 = sub_243A0D3FC();
    v210 = sub_243A0D63C();
    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      *v211 = 0;
      _os_log_impl(&dword_2439E1000, v209, v210, "Unable to initialize bundles enumerator", v211, 2u);
      MEMORY[0x245D45310](v211, -1, -1);
    }

    v212 = sub_243A0D3FC();
    v213 = sub_243A0D62C();
    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      *v214 = 0;
      _os_log_impl(&dword_2439E1000, v212, v213, "Request to fetch recommendations from client donors has been completed.", v214, 2u);
      MEMORY[0x245D45310](v214, -1, -1);
    }

    v215 = v257;
    if (v102 >> 62 && sub_243A0D77C())
    {
      if (qword_27ED979B0 != -1)
      {
        swift_once();
      }

      sub_2439F0644(v233, v223, MEMORY[0x277D84F90]);
    }

    (v247)(MEMORY[0x277D84F90], 0);
    v99(v215, v83);
    v99(v252, v83);
    sub_2439F5714(v239, &qword_27ED97A20, &unk_243A0F9C0);
  }
}

uint64_t sub_2439F51CC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2439F5224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A20, &unk_243A0F9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2439F52CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2439F5304()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2439F5344()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2439F5390(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2439F5484()
{
  v1 = sub_243A0D38C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_243A0D3BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

void sub_2439F55F4(unint64_t a1, void *a2)
{
  v5 = *(sub_243A0D38C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_243A0D3BC() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2439F21C0(a1, a2, v2 + v6, v10, v2 + v9, v11);
}

uint64_t sub_2439F5714(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2439F5774(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2439F5784(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2439F57CC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2439F5814(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t RecommendationsError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B60, &unk_243A0FA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243A0F9F0;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_243A0D4EC();
  v5 = 0xD00000000000001FLL;
  v6 = "CloudRecommendationsErrorDomain";
  if (v1)
  {
    v5 = 0xD00000000000002FLL;
  }

  else
  {
    v6 = "commendations from client donor";
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6 | 0x8000000000000000;
  v7 = sub_2439F5D40(inited);
  swift_setDeallocating();
  sub_2439F5E50(inited + 32);
  return v7;
}

CloudRecommendation::RecommendationsError_optional __swiftcall RecommendationsError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2439F59A4()
{
  v1 = *v0;
  sub_243A0D89C();
  MEMORY[0x245D44AA0](v1);
  return sub_243A0D8BC();
}

uint64_t sub_2439F5A18()
{
  v1 = *v0;
  sub_243A0D89C();
  MEMORY[0x245D44AA0](v1);
  return sub_243A0D8BC();
}

void *sub_2439F5A5C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_2439F5AAC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B60, &unk_243A0FA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243A0F9F0;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_243A0D4EC();
  v5 = 0xD00000000000001FLL;
  v6 = "CloudRecommendationsErrorDomain";
  if (v1)
  {
    v5 = 0xD00000000000002FLL;
  }

  else
  {
    v6 = "commendations from client donor";
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  *(inited + 56) = v6 | 0x8000000000000000;
  v7 = sub_2439F5D40(inited);
  swift_setDeallocating();
  sub_2439F5E50(inited + 32);
  return v7;
}

uint64_t sub_2439F5B88(uint64_t a1)
{
  v2 = sub_2439F61F4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2439F5BC4(uint64_t a1)
{
  v2 = sub_2439F61F4();
  v3 = sub_2439F6248();
  v4 = sub_2439F629C();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

unint64_t sub_2439F5C28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BA8, &qword_243A0FB90);
    v3 = sub_243A0D7AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_243A030EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2439F5D40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BC0, qword_243A0FBA8);
    v3 = sub_243A0D7AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2439F6400(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_243A030EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2439F1498(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2439F5E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B68, &unk_243A101B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2439F5EBC()
{
  result = qword_27ED97B70;
  if (!qword_27ED97B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97B70);
  }

  return result;
}

unint64_t sub_2439F5F14()
{
  result = qword_27ED97B78;
  if (!qword_27ED97B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecommendationsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecommendationsError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2439F60DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BB0, &qword_243A0FB98);
    v3 = sub_243A0D7AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_243A030EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2439F61F4()
{
  result = qword_27ED97B90;
  if (!qword_27ED97B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97B90);
  }

  return result;
}

unint64_t sub_2439F6248()
{
  result = qword_27ED97B98;
  if (!qword_27ED97B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97B98);
  }

  return result;
}

unint64_t sub_2439F629C()
{
  result = qword_27ED97BA0;
  if (!qword_27ED97BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97BA0);
  }

  return result;
}

unint64_t sub_2439F6304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_243A0D7AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_243A030EC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2439F6400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B68, &unk_243A101B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CERecommendationAction.id.getter()
{
  v1 = [v0 actionIdentifier];
  v2 = sub_243A0D4EC();

  return v2;
}

void sub_2439F64CC(uint64_t *a1@<X8>)
{
  v3 = [*v1 actionIdentifier];
  v4 = sub_243A0D4EC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_2439F6524()
{
  v0 = sub_243A0D41C();
  __swift_allocate_value_buffer(v0, qword_27ED98738);
  __swift_project_value_buffer(v0, qword_27ED98738);

  return sub_243A0D40C();
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

uint64_t sub_2439F661C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2439F16B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_243A030EC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_243A03CAC();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_243A0939C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t RecommendationsFetcher.FetchError.hashValue.getter()
{
  v1 = *v0;
  sub_243A0D89C();
  MEMORY[0x245D44AA0](v1);
  return sub_243A0D8BC();
}

id sub_2439F67A8()
{
  result = [objc_allocWithZone(type metadata accessor for RecommendationsFetcher()) init];
  qword_27ED97BD8 = result;
  return result;
}

id RecommendationsFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static RecommendationsFetcher.shared.getter()
{
  if (qword_27ED979C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27ED97BD8;

  return v1;
}

uint64_t sub_2439F6940(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v20 - v9;
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v11 = sub_243A0D41C();
  __swift_project_value_buffer(v11, qword_27ED98738);
  v12 = sub_243A0D3FC();
  v13 = sub_243A0D62C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2439E1000, v12, v13, "Clearing recommendations cache", v14, 2u);
    MEMORY[0x245D45310](v14, -1, -1);
  }

  v15 = sub_243A0D5DC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v4;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v17 = v4;
  v18 = a1;
  sub_2439F5774(a2);
  sub_2439F8390(0, 0, v10, &unk_243A0FC20, v16);
}

uint64_t sub_2439F6B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[334] = a7;
  v7[333] = a6;
  v7[332] = a5;
  v7[331] = a4;
  return MEMORY[0x2822009F8](sub_2439F6B58, 0, 0);
}

uint64_t sub_2439F6B58()
{
  v1 = *(*(v0 + 2648) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 2680) = v1;
  return MEMORY[0x2822009F8](sub_2439F6B84, v1, 0);
}

uint64_t sub_2439F6B84()
{
  v1 = [*(v0 + 2656) aa_altDSID];
  if (v1 || (v1 = [*(v0 + 2656) aa_personID]) != 0)
  {
    v4 = *(v0 + 2680);
    v5 = v1;
    v6 = sub_243A0D4EC();
    v8 = v7;

    swift_beginAccess();
    sub_2439F661C(0, v6, v8);
    swift_endAccess();
    v1 = sub_2439F6C70;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2439F6C70()
{
  v1 = v0[333];
  v2 = v0[332];
  v3 = v0[331];
  v4 = swift_allocObject();
  v0[336] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v3;
  v6 = v2;
  sub_2439F5784(0, &qword_27ED97D48, off_278DE00A8);
  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v0[337] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = v5;
  v9 = v6;
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  v0[338] = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = v8;
  v12 = v9;
  sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  swift_asyncLet_begin();
  v13 = swift_allocObject();
  v0[339] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AC8, &qword_243A0FF30);
  swift_asyncLet_begin();
  if (v1)
  {

    return MEMORY[0x282200930](v0 + 2, v0 + 327, sub_2439F6EE8, v0 + 322);
  }

  else
  {

    return MEMORY[0x282200920](v0 + 242, v0 + 330, sub_2439F7078, v0 + 322);
  }
}

uint64_t sub_2439F6EE8()
{
  v1[340] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 242, v1 + 330, sub_2439F71D4, v1 + 322);
  }

  else
  {
    v2 = v1[327];
    v1[341] = v2;
    v3 = v2;

    return MEMORY[0x282200930](v1 + 162, v1 + 329, sub_2439F6F9C, v1 + 322);
  }
}

uint64_t sub_2439F6F9C()
{
  *(v1 + 2736) = v0;
  if (v0)
  {
    v2 = sub_2439F737C;
  }

  else
  {
    v2 = sub_2439F6FD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2439F6FD0()
{
  v1 = v0[341];
  v2 = v0[334];
  v3 = v0[333];
  v4 = v0[329];
  v5 = v4;
  v3(v1, v4, 0);

  return MEMORY[0x282200920](v0 + 242, v0 + 330, sub_2439F7078, v0 + 322);
}

uint64_t sub_2439F7148()
{
  v1 = v0[339];
  v2 = v0[338];
  v3 = v0[337];
  v4 = v0[336];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2439F72A4()
{
  v1 = v0[340];
  v2 = v0[339];
  v3 = v0[338];
  v4 = v0[337];
  v5 = v0[336];
  v6 = v0[334];
  v7 = v0[333];
  v8 = v1;
  v7(0, 0, v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2439F737C()
{

  return MEMORY[0x282200920](v0 + 1936, v0 + 2640, sub_2439F73E8, v0 + 2576);
}

uint64_t sub_2439F74B8()
{
  v1 = v0[342];
  v2 = v0[339];
  v3 = v0[338];
  v4 = v0[337];
  v5 = v0[336];
  v6 = v0[334];
  v7 = v0[333];
  v8 = v1;
  v7(0, 0, v1);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2439F7590()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2439F75E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_243A069D0;

  return sub_2439F6B2C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2439F76BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2439F76E0, 0, 0);
}

uint64_t sub_2439F76E0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439F770C, v1, 0);
}

uint64_t sub_2439F770C()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_2439FDA08(*(v0 + 32));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2439F77AC;

  return sub_2439FDBC4(0);
}

uint64_t sub_2439F77AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_243A06A1C;
  }

  else
  {
    v4[9] = a1;
    v8 = sub_2439F78E8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439F78E8()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_243A069E0, 0, 0);
}

uint64_t sub_2439F7950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2439F7974, 0, 0);
}

uint64_t sub_2439F7974()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439F79A0, v1, 0);
}

uint64_t sub_2439F79A0()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_2439FDA08(*(v0 + 32));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2439F7A40;

  return sub_2439FEA38(0);
}

uint64_t sub_2439F7A40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_2439F7C08;
  }

  else
  {
    v4[9] = a1;
    v8 = sub_2439F7B7C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439F7B7C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2439F7BE4, 0, 0);
}

uint64_t sub_2439F7C08()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2439F7C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2439F7C90, 0, 0);
}

uint64_t sub_2439F7C90()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2439F7CBC, v1, 0);
}

uint64_t sub_2439F7CBC()
{
  v1 = *(v0 + 48);
  v2 = sub_2439FDA08(*(v0 + 40));
  *(v0 + 56) = v2;

  return MEMORY[0x2822009F8](sub_2439F7D28, v2, 0);
}

uint64_t sub_2439F7D28()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439F7E04, v2, v1);
}

uint64_t sub_2439F7E04()
{
  v1 = v0[7];
  v2 = v0[8];
  v0[9] = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439F7E98, v1, 0);
}

uint64_t sub_2439F7E98()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  v4 = *(MEMORY[0x277CE47E0] + 4);
  v9 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v5 = v0;
  v5[1] = sub_2439F7FE8;
  v7 = v0[9];

  return v9(v0 + 2, 0x6C75526863746566, 0xEC00000074657365, &unk_243A10118, v3, v6);
}

uint64_t sub_2439F7FE8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_2439F81C8;
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[7];

    v5 = sub_2439F8118;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2439F8118()
{
  v1 = v0[6];
  v0[13] = v0[2];
  return MEMORY[0x2822009F8](sub_2439F813C, v1, 0);
}

uint64_t sub_2439F813C()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2439F81A4, 0, 0);
}

uint64_t sub_2439F81C8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  return MEMORY[0x2822009F8](sub_2439F823C, v3, 0);
}

uint64_t sub_2439F823C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_2439F82A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2439F82C4, 0, 0);
}

uint64_t sub_2439F82C4()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439F82F0, v1, 0);
}

uint64_t sub_2439F82F0()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_2439FDA08(*(v0 + 32));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2439F77AC;

  return sub_2439FEE68(0);
}

uint64_t sub_2439F8390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_243A05B00(a3, v26 - v10, &qword_27ED97BE0, &qword_243A0FC10);
  v12 = sub_243A0D5DC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2439F5714(v11, &qword_27ED97BE0, &qword_243A0FC10);
  }

  else
  {
    sub_243A0D5CC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_243A0D59C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_243A0D4FC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2439F5714(a3, &qword_27ED97BE0, &qword_243A0FC10);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2439F5714(a3, &qword_27ED97BE0, &qword_243A0FC10);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_2439F8760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_243A0D31C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_2439F8814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2439F883C, 0, 0);
}

uint64_t sub_2439F883C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2439F8868, v1, 0);
}

uint64_t sub_2439F8868()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = sub_2439FDA08(*(v0 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2439F8910;
  v3 = *(v0 + 88);

  return sub_2439FDBC4(v3);
}

uint64_t sub_2439F8910(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_2439F8B3C;
  }

  else
  {
    v8 = sub_2439F8A44;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439F8A44()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2439F8AAC, 0, 0);
}

uint64_t sub_2439F8AAC()
{
  v1 = v0[4];
  v2 = v0[9];
  if (v1)
  {
    v3 = v0[5];
    v4 = v2;
    v1(v2, 0);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2439F8B3C()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2439F8BA4, 0, 0);
}

uint64_t sub_2439F8BA4()
{
  v1 = v0[4];
  v2 = v0[10];
  if (v1)
  {
    v3 = v0[5];
    v4 = v2;
    v1(0, v2);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2439F8DB4(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2439F8DD8, 0, 0);
}

uint64_t sub_2439F8DD8()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2439F8E04, v1, 0);
}

uint64_t sub_2439F8E04()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = sub_2439FDA08(*(v0 + 16));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2439F8EAC;
  v3 = *(v0 + 72);

  return sub_2439FDBC4(v3);
}

uint64_t sub_2439F8EAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_2439F9104;
  }

  else
  {
    v4[8] = a1;
    v8 = sub_2439F8FE8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439F8FE8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_2439F9050, 0, 0);
}

uint64_t sub_2439F9050()
{
  v1 = *(v0 + 64);
  v2 = [v1 recommendations];
  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v3 = sub_243A0D55C();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2439F9104()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_243A06A20, 0, 0);
}

uint64_t sub_2439F92FC(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_2439F93C8;

  return sub_2439F8DB4(v8, a2);
}

uint64_t sub_2439F93C8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v5 = sub_243A0D54C();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2439F959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 120) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  return MEMORY[0x2822009F8](sub_2439F95C4, 0, 0);
}

uint64_t sub_2439F95C4()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_2439F95F0, v1, 0);
}

uint64_t sub_2439F95F0()
{
  v1 = *(v0 + 56);
  v2 = sub_2439FDA08(*(v0 + 32));
  *(v0 + 64) = v2;

  return MEMORY[0x2822009F8](sub_2439F9660, v2, 0);
}

uint64_t sub_2439F9660()
{
  *(v0 + 72) = *(*(v0 + 64) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439F973C, v2, v1);
}

uint64_t sub_2439F973C()
{
  v1 = v0[8];
  v2 = v0[9];
  v0[10] = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439F97D0, v1, 0);
}

uint64_t sub_2439F97D0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 120);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277CE47E0] + 4);
  v10 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v6 = v0;
  v6[1] = sub_2439F9928;
  v8 = *(v0 + 80);

  return v10(v0 + 16, 0x6C75526863746566, 0xEC00000074657365, &unk_243A100A0, v4, v7);
}

uint64_t sub_2439F9928()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = sub_2439F9B74;
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v8 = v2[8];

    v5 = sub_2439F9A58;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2439F9A58()
{
  v1 = v0[7];
  v0[14] = v0[2];
  return MEMORY[0x2822009F8](sub_2439F9A7C, v1, 0);
}

uint64_t sub_2439F9A7C()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_2439F9AE4, 0, 0);
}

uint64_t sub_2439F9AE4()
{
  v1 = v0[5];
  v2 = v0[14];
  if (v1)
  {
    v3 = v0[6];
    v4 = v2;
    v1(v2, 0);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2439F9B74()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_2439F9BE8, v3, 0);
}

uint64_t sub_2439F9BE8()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_2439F9C50, 0, 0);
}

uint64_t sub_2439F9C50()
{
  v1 = v0[5];
  v2 = v0[13];
  if (v1)
  {
    v3 = v0[6];
    v4 = v2;
    v1(0, v2);
  }

  v5 = v0[1];

  return v5();
}

void sub_2439F9E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_243A0D31C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2439F9ED0(uint64_t a1, char a2)
{
  *(v3 + 104) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_2439F9EF4, 0, 0);
}

uint64_t sub_2439F9EF4()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439F9F20, v1, 0);
}

uint64_t sub_2439F9F20()
{
  v1 = *(v0 + 40);
  v2 = sub_2439FDA08(*(v0 + 24));
  *(v0 + 48) = v2;

  return MEMORY[0x2822009F8](sub_2439F9F90, v2, 0);
}

uint64_t sub_2439F9F90()
{
  *(v0 + 56) = *(*(v0 + 48) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FA06C, v2, v1);
}

uint64_t sub_2439FA06C()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[8] = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FA100, v1, 0);
}

uint64_t sub_2439FA100()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 104);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 72) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277CE47E0] + 4);
  v10 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v6 = v0;
  v6[1] = sub_2439FA258;
  v8 = *(v0 + 64);

  return v10(v0 + 16, 0x6C75526863746566, 0xEC00000074657365, &unk_243A0FC68, v4, v7);
}

uint64_t sub_2439FA258()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = sub_2439FA414;
  }

  else
  {
    v7 = v2[8];
    v6 = v2[9];
    v8 = v2[6];

    v5 = sub_2439FA388;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2439FA388()
{
  v1 = v0[5];
  v0[12] = v0[2];
  return MEMORY[0x2822009F8](sub_2439FA3AC, v1, 0);
}

uint64_t sub_2439FA3AC()
{
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_2439FA414()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  return MEMORY[0x2822009F8](sub_2439FA488, v3, 0);
}

uint64_t sub_2439FA488()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2439FA4F0, 0, 0);
}

uint64_t sub_2439FA4F0()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2439FA6E4(void *a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2439FA774, 0, 0);
}

uint64_t sub_2439FA774()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439FA7A0, v1, 0);
}

uint64_t sub_2439FA7A0()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_2439FDA08(*(v0 + 16));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2439FA848;
  v3 = *(v0 + 80);

  return sub_2439FE24C(v3);
}

uint64_t sub_2439FA848(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_2439FAA78;
  }

  else
  {
    v4[9] = a1;
    v8 = sub_2439FA984;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439FA984()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2439FA9EC, 0, 0);
}

uint64_t sub_2439FA9EC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  (v3)[2](v3, v2);
  _Block_release(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2439FAA78()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2439FAAE0, 0, 0);
}

uint64_t sub_2439FAAE0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2439FAB70(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_2439FAB94, 0, 0);
}

uint64_t sub_2439FAB94()
{
  v1 = v0[4];
  v0[5] = sub_2439F62F0(MEMORY[0x277D84F90]);
  v2 = *(v1 + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  v0[6] = v2;

  return MEMORY[0x2822009F8](sub_2439FAC14, v2, 0);
}

uint64_t sub_2439FAC14()
{
  v1 = *(v0 + 48);
  v2 = sub_2439FDA08(*(v0 + 24));
  *(v0 + 56) = v2;

  return MEMORY[0x2822009F8](sub_2439FAC84, v2, 0);
}

uint64_t sub_2439FAC84()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FAD60, v2, v1);
}

uint64_t sub_2439FAD60()
{
  v1 = v0[7];
  v2 = v0[8];
  v0[9] = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FADF4, v1, 0);
}

uint64_t sub_2439FADF4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 112);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277CE47E0] + 4);
  v10 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v6 = v0;
  v6[1] = sub_2439FAF4C;
  v8 = *(v0 + 72);

  return v10(v0 + 16, 0x6C75526863746566, 0xEC00000074657365, &unk_243A0FC78, v4, v7);
}

uint64_t sub_2439FAF4C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_2439FB448;
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[7];

    v5 = sub_2439FB07C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2439FB07C()
{
  v1 = v0[6];
  v0[13] = v0[2];
  return MEMORY[0x2822009F8](sub_2439FB0A0, v1, 0);
}

uint64_t sub_2439FB0A0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2439FB108, 0, 0);
}

uint64_t sub_2439FB108()
{
  v1 = *(v0 + 96);
  v2 = [*(v0 + 104) ruleset];
  sub_2439F5784(0, &qword_27ED97C08, off_278DE00A0);
  v3 = sub_243A0D55C();

  v4 = sub_2439FB5A8(v3);

  if (v4 >> 62)
  {
LABEL_30:
    v5 = sub_243A0D77C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v37 = v4;
      v38 = v4 & 0xC000000000000001;
      v35 = v0;
      v36 = v4 & 0xFFFFFFFFFFFFFF8;
      v7 = *(v0 + 40);
      while (1)
      {
        if (v38)
        {
          v11 = MEMORY[0x245D44940](v6, v4);
        }

        else
        {
          if (v6 >= *(v36 + 16))
          {
            goto LABEL_29;
          }

          v11 = *(v4 + 8 * v6 + 32);
        }

        v12 = v11;
        v0 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v4 = v5;
        v13 = [v11 recommendationID];
        v14 = sub_243A0D4EC();
        v16 = v15;

        v17 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = sub_243A030EC(v14, v16);
        v21 = v7[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_27;
        }

        v24 = v19;
        if (v7[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_243A03E1C(&qword_27ED97BB8, &qword_243A0FBA0);
            if (v24)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_243A0388C(v23, isUniquelyReferenced_nonNull_native, &qword_27ED97BB8, &qword_243A0FBA0);
          v25 = sub_243A030EC(v14, v16);
          if ((v24 & 1) != (v26 & 1))
          {

            return sub_243A0D82C();
          }

          v20 = v25;
          if (v24)
          {
LABEL_4:

            v8 = v7[7];
            v9 = *(v8 + 8 * v20);
            *(v8 + 8 * v20) = v17;

            goto LABEL_5;
          }
        }

        v7[(v20 >> 6) + 8] |= 1 << v20;
        v27 = (v7[6] + 16 * v20);
        *v27 = v14;
        v27[1] = v16;
        *(v7[7] + 8 * v20) = v17;

        v28 = v7[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_28;
        }

        v7[2] = v30;
LABEL_5:
        ++v6;
        v5 = v4;
        v10 = v0 == v4;
        v4 = v37;
        if (v10)
        {
          v0 = v35;
          v31 = *(v35 + 104);

          goto LABEL_32;
        }
      }
    }
  }

  v33 = *(v0 + 104);

  v7 = *(v0 + 40);
LABEL_32:
  v34 = *(v0 + 8);

  return v34(v7);
}

uint64_t sub_2439FB448()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  return MEMORY[0x2822009F8](sub_2439FB4BC, v3, 0);
}

uint64_t sub_2439FB4BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_2439FB530, 0, 0);
}

uint64_t sub_2439FB530()
{
  v1 = *(v0 + 96);
  v2 = sub_2439F62F0(MEMORY[0x277D84F90]);

  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_2439FB5A8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245D44940](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject recommendationRules];
      sub_2439F5784(0, &qword_27ED97D40, off_278DE0078);
      v8 = sub_243A0D55C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_243A0D77C();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243A0D77C();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_243A0D77C();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_243A0D75C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_243A0D77C();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            sub_2439F5814(&qword_27ED97D58, &qword_27ED97D50, &qword_243A10090);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D50, &qword_243A10090);
              v20 = sub_243A04000(v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_243A0D77C();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2439FBACC(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_2439FBB98;

  return sub_2439FAB70(v8, a2);
}

uint64_t sub_2439FBB98()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  sub_2439F5784(0, &qword_27ED97D40, off_278DE0078);
  v5 = sub_243A0D4AC();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2439FBD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2439FBDA4, 0, 0);
}

uint64_t sub_2439FBDA4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2439FBDD0, v1, 0);
}

uint64_t sub_2439FBDD0()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = sub_2439FDA08(*(v0 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2439FBE78;
  v3 = *(v0 + 88);

  return sub_2439FEA38(v3);
}

uint64_t sub_2439FBE78(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_2439FC014;
  }

  else
  {
    v8 = sub_2439FBFAC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439FBFAC()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_243A069F4, 0, 0);
}

uint64_t sub_2439FC014()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_243A069F8, 0, 0);
}

uint64_t sub_2439FC1F4(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2439FC218, 0, 0);
}

uint64_t sub_2439FC218()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2439FC244, v1, 0);
}

uint64_t sub_2439FC244()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = sub_2439FDA08(*(v0 + 16));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2439FC2EC;
  v3 = *(v0 + 72);

  return sub_2439FEA38(v3);
}

uint64_t sub_2439FC2EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_2439F9104;
  }

  else
  {
    v4[8] = a1;
    v8 = sub_2439FC428;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439FC428()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_243A06A00, 0, 0);
}

uint64_t sub_2439FC620(void *a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_243A06A14;

  return sub_2439FC1F4(v8, a2);
}

uint64_t sub_2439FC720(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v22 - v15;
  v17 = sub_243A0D5DC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v7;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;
  v19 = v7;
  v20 = a1;
  a6(a3, a4);
  sub_2439F8390(0, 0, v16, a7, v18);
}

uint64_t sub_2439FC860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2439FC888, 0, 0);
}

uint64_t sub_2439FC888()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2439FC8B4, v1, 0);
}

uint64_t sub_2439FC8B4()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = sub_2439FDA08(*(v0 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2439FC95C;
  v3 = *(v0 + 88);

  return sub_2439FEE68(v3);
}

uint64_t sub_2439FC95C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_2439FCB78;
  }

  else
  {
    v8 = sub_2439FCA90;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439FCA90()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2439FCAF8, 0, 0);
}

uint64_t sub_2439FCAF8()
{
  v1 = v0[4];
  v2 = v0[9];
  if (v1)
  {
    v3 = v0[5];
    v1(v0[9], 0);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2439FCB78()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_2439FCBE0, 0, 0);
}

uint64_t sub_2439FCBE0()
{
  v1 = v0[4];
  v2 = v0[10];
  if (v1)
  {
    v3 = v0[5];
    v4 = v2;
    v1(0, v2);
  }

  v5 = v0[1];

  return v5();
}

void sub_2439FCDF0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
    v5 = sub_243A0D54C();
  }

  if (a2)
  {
    v6 = sub_243A0D31C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_2439FCE9C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2439FCEC0, 0, 0);
}

uint64_t sub_2439FCEC0()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2439FCEEC, v1, 0);
}

uint64_t sub_2439FCEEC()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = sub_2439FDA08(*(v0 + 16));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2439FCF94;
  v3 = *(v0 + 72);

  return sub_2439FEE68(v3);
}

uint64_t sub_2439FCF94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_2439FD134;
  }

  else
  {
    v4[8] = a1;
    v8 = sub_2439FD0D0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439FD0D0()
{
  v1 = v0[5];

  v2 = v0[8];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2439FD134()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_2439FD19C, 0, 0);
}

uint64_t sub_2439FD19C()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t sub_2439FD394(void *a1, char a2, void *aBlock, void *a4)
{
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2439FD424, 0, 0);
}

uint64_t sub_2439FD424()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2439FD450, v1, 0);
}

uint64_t sub_2439FD450()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = sub_2439FDA08(*(v0 + 16));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_2439FD4F8;
  v3 = *(v0 + 80);

  return sub_2439FEE68(v3);
}

uint64_t sub_2439FD4F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_2439FD760;
  }

  else
  {
    v4[9] = a1;
    v8 = sub_2439FD634;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2439FD634()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2439FD69C, 0, 0);
}

uint64_t sub_2439FD69C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v4 = sub_243A0D54C();

  (v3)[2](v3, v4);

  _Block_release(v3);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2439FD760()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2439FD7C8, 0, 0);
}

uint64_t sub_2439FD7C8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);
  sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
  v4 = sub_243A0D54C();

  (v3)[2](v3, v4);

  _Block_release(v3);
  v5 = *(v0 + 8);

  return v5();
}

id RecommendationsFetcher.init()()
{
  v1 = OBJC_IVAR____TtC19CloudRecommendation22RecommendationsFetcher_dataFetchers;
  type metadata accessor for DataFetchers();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = sub_2439F60DC(MEMORY[0x277D84F90]);
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RecommendationsFetcher();
  return objc_msgSendSuper2(&v4, sel_init);
}

id RecommendationsFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecommendationsFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2439FDA08(void *a1)
{
  v2 = v1;
  result = [a1 aa_altDSID];
  if (result || (result = [a1 aa_personID]) != 0)
  {
    v5 = result;
    v6 = sub_243A0D4EC();
    v8 = v7;

    swift_beginAccess();
    v9 = *(v2 + 112);
    if (*(v9 + 16))
    {
      v10 = *(v2 + 112);

      v11 = sub_243A030EC(v6, v8);
      if (v12)
      {
        v13 = v11;

        v14 = *(*(v9 + 56) + 8 * v13);

        return v14;
      }
    }

    v15 = type metadata accessor for DataFetcher();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = a1;
    v14 = sub_243A0639C(v18);

    swift_beginAccess();

    v19 = *(v2 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_2439F16B4(v14, v6, v8, isUniquelyReferenced_nonNull_native);

    *(v2 + 112) = v21;
    swift_endAccess();
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2439FDB8C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2439FDBC4(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2439FDBE8, v1, 0);
}

uint64_t sub_2439FDBE8()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FDCC4, v2, v1);
}

uint64_t sub_2439FDCC4()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[5] = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FDD54, v1, 0);
}

uint64_t sub_2439FDD54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277CE47E0] + 4);
  v10 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2439F5784(0, &qword_27ED97D48, off_278DE00A8);
  *v6 = v0;
  v6[1] = sub_2439FDEA8;
  v8 = *(v0 + 40);

  return v10(v0 + 16, 0xD000000000000014, 0x8000000243A11490, &unk_243A100B0, v4, v7);
}

uint64_t sub_2439FDEA8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_243A069E4;
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];

    v5 = sub_243A06A24;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2439FDFD8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2439FDFFC, 0, 0);
}

uint64_t sub_2439FDFFC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_2439FE124;
    v4 = *(v0 + 88);

    return sub_2439FF294(v4);
  }

  else
  {
    sub_243A05710();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2439FE124(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_243A069F0;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_243A069EC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2439FE24C(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2439FE270, v1, 0);
}

uint64_t sub_2439FE270()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FE34C, v2, v1);
}

uint64_t sub_2439FE34C()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[5] = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FE3E0, v1, 0);
}

uint64_t sub_2439FE3E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277CE47E0] + 4);
  v10 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v6 = v0;
  v6[1] = sub_2439FE538;
  v8 = *(v0 + 40);

  return v10(v0 + 16, 0x6C75526863746566, 0xEC00000074657365, &unk_243A10098, v4, v7);
}

uint64_t sub_2439FE538()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_2439FE684;
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];

    v5 = sub_2439FE668;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2439FE684()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_2439FE6F0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2439FE714, 0, 0);
}

uint64_t sub_2439FE714()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_2439FE83C;
    v4 = *(v0 + 88);

    return sub_2439FFB64(v4);
  }

  else
  {
    sub_243A05710();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2439FE83C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2439FE9D4;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_2439FE964;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2439FE964()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_2439FE9D4()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2439FEA38(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2439FEA5C, v1, 0);
}

uint64_t sub_2439FEA5C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FEB38, v2, v1);
}

uint64_t sub_2439FEB38()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[5] = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FEBC8, v1, 0);
}

uint64_t sub_2439FEBC8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277CE47E0] + 4);
  v10 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2439F5784(0, &qword_27ED97D48, off_278DE00A8);
  *v6 = v0;
  v6[1] = sub_2439FDEA8;
  v8 = *(v0 + 40);

  return v10(v0 + 16, 0xD00000000000001DLL, 0x8000000243A11470, &unk_243A10080, v4, v7);
}

uint64_t sub_2439FED1C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2439FED40, 0, 0);
}

uint64_t sub_2439FED40()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_2439FE124;
    v4 = *(v0 + 88);

    return sub_243A005C0(v4);
  }

  else
  {
    sub_243A05710();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2439FEE68(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_2439FEE8C, v1, 0);
}

uint64_t sub_2439FEE8C()
{
  *(v0 + 32) = *(*(v0 + 24) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
  sub_243A0D3EC();
  sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8]);

  v2 = sub_243A0D59C();

  return MEMORY[0x2822009F8](sub_2439FEF68, v2, v1);
}

uint64_t sub_2439FEF68()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[5] = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_2439FEFF8, v1, 0);
}

uint64_t sub_2439FEFF8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277CE47E0] + 4);
  v10 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AC8, &qword_243A0FF30);
  *v6 = v0;
  v6[1] = sub_2439FDEA8;
  v8 = *(v0 + 40);

  return v10(v0 + 16, 0xD00000000000001ALL, 0x8000000243A11450, &unk_243A10070, v4, v7);
}

uint64_t sub_2439FF148(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 88) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2439FF16C, 0, 0);
}

uint64_t sub_2439FF16C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_2439FE124;
    v4 = *(v0 + 88);

    return sub_243A013F8(v4);
  }

  else
  {
    sub_243A05710();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_2439FF294(char a1)
{
  *(v2 + 200) = v1;
  *(v2 + 296) = a1;
  v3 = sub_243A0D3BC();
  *(v2 + 208) = v3;
  v4 = *(v3 - 8);
  *(v2 + 216) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D18, &qword_243A0FF50) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C50, &qword_243A0FEA0);
  *(v2 + 248) = v7;
  v8 = *(v7 - 8);
  *(v2 + 256) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2439FF410, v1, 0);
}

uint64_t sub_2439FF410()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 200);
  v5 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRecommendations;
  *(v0 + 280) = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRecommendations;
  swift_beginAccess();
  sub_243A05B00(v4 + v5, v3, &qword_27ED97D18, &qword_243A0FF50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 240);
    v7 = &qword_27ED97D18;
    v8 = &qword_243A0FF50;
LABEL_6:
    sub_2439F5714(v6, v7, v8);
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v17 = sub_243A0D41C();
    __swift_project_value_buffer(v17, qword_27ED98738);
    v18 = sub_243A0D3FC();
    v19 = sub_243A0D62C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2439E1000, v18, v19, "Fetching fresh recommendations", v20, 2u);
      MEMORY[0x245D45310](v20, -1, -1);
    }

    v21 = *(v0 + 200);

    v22 = *(v21 + 112);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_2439FF90C;
    v23 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D20, &qword_243A0FF60);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_243A06A18;
    *(v0 + 104) = &block_descriptor_101;
    *(v0 + 112) = v23;
    [v22 fetchRecommendationsWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  v9 = *(v0 + 272);
  v10 = *(v0 + 248);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  sub_243A05838(*(v0 + 240), v9, &qword_27ED97C50, &qword_243A0FEA0);
  sub_243A0D3AC();
  v14 = *(v10 + 28);
  sub_243A0D39C();
  v16 = v15;
  (*(v12 + 8))(v11, v13);
  if (v16 >= *v9 || (*(v0 + 296) & 1) != 0)
  {
    v6 = *(v0 + 272);
    v7 = &qword_27ED97C50;
    v8 = &qword_243A0FEA0;
    goto LABEL_6;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 264);
  v25 = *(v0 + 272);
  v26 = sub_243A0D41C();
  __swift_project_value_buffer(v26, qword_27ED98738);
  sub_243A05B00(v25, v24, &qword_27ED97C50, &qword_243A0FEA0);
  v27 = sub_243A0D3FC();
  v28 = sub_243A0D62C();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 264);
  if (v29)
  {
    v31 = *(v0 + 248);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = *(v30 + *(v31 + 32));
    sub_2439F5714(v30, &qword_27ED97C50, &qword_243A0FEA0);
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&dword_2439E1000, v27, v28, "Reusing cached recommendations %@", v32, 0xCu);
    sub_2439F5714(v33, &qword_27ED97AC0, &unk_243A0F9D0);
    MEMORY[0x245D45310](v33, -1, -1);
    MEMORY[0x245D45310](v32, -1, -1);
  }

  else
  {

    sub_2439F5714(v30, &qword_27ED97C50, &qword_243A0FEA0);
  }

  v35 = *(v0 + 272);
  v36 = *(v35 + *(*(v0 + 248) + 32));
  sub_2439F5714(v35, &qword_27ED97C50, &qword_243A0FEA0);
  v38 = *(v0 + 264);
  v37 = *(v0 + 272);
  v40 = *(v0 + 232);
  v39 = *(v0 + 240);
  v41 = *(v0 + 224);

  v42 = *(v0 + 8);

  return v42(v36);
}

uint64_t sub_2439FF90C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 200);
  if (v3)
  {
    v5 = sub_243A069DC;
  }

  else
  {
    v5 = sub_2439FFA2C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2439FFA2C()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[24];
  v6 = v0[25];
  *(v4 + *(v2 + 32)) = v5;
  *v4 = 0x40F5180000000000;
  v7 = *(v2 + 28);
  v8 = v5;
  sub_243A0D3AC();
  (*(v3 + 56))(v4, 0, 1, v2);
  swift_beginAccess();
  sub_243A057D0(v4, v6 + v1, &qword_27ED97D18, &qword_243A0FF50);
  swift_endAccess();
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];

  v14 = v0[1];

  return v14(v8);
}

uint64_t sub_2439FFB64(char a1)
{
  *(v2 + 200) = v1;
  *(v2 + 296) = a1;
  v3 = sub_243A0D3BC();
  *(v2 + 208) = v3;
  v4 = *(v3 - 8);
  *(v2 + 216) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D30, &qword_243A0FF70) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED97C70, &qword_243A0FEB0);
  *(v2 + 248) = v7;
  v8 = *(v7 - 8);
  *(v2 + 256) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2439FFCE0, v1, 0);
}

uint64_t sub_2439FFCE0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 200);
  v5 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRuleset;
  *(v0 + 280) = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRuleset;
  swift_beginAccess();
  sub_243A05B00(v4 + v5, v3, &qword_27ED97D30, &qword_243A0FF70);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 240);
    v7 = &qword_27ED97D30;
    v8 = &qword_243A0FF70;
LABEL_6:
    sub_2439F5714(v6, v7, v8);
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v17 = sub_243A0D41C();
    __swift_project_value_buffer(v17, qword_27ED98738);
    v18 = sub_243A0D3FC();
    v19 = sub_243A0D62C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2439E1000, v18, v19, "Fetching fresh rulesets", v20, 2u);
      MEMORY[0x245D45310](v20, -1, -1);
    }

    v21 = *(v0 + 200);

    v22 = *(v21 + 112);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_243A001DC;
    v23 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D38, &qword_243A0FF78);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_243A06A18;
    *(v0 + 104) = &block_descriptor_97;
    *(v0 + 112) = v23;
    [v22 fetchRecommendationsRulesetWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  v9 = *(v0 + 272);
  v10 = *(v0 + 248);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 208);
  sub_243A05838(*(v0 + 240), v9, qword_27ED97C70, &qword_243A0FEB0);
  sub_243A0D3AC();
  v14 = *(v10 + 28);
  sub_243A0D39C();
  v16 = v15;
  (*(v12 + 8))(v11, v13);
  if (v16 >= *v9 || (*(v0 + 296) & 1) != 0)
  {
    v6 = *(v0 + 272);
    v7 = qword_27ED97C70;
    v8 = &qword_243A0FEB0;
    goto LABEL_6;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 264);
  v25 = *(v0 + 272);
  v26 = sub_243A0D41C();
  __swift_project_value_buffer(v26, qword_27ED98738);
  sub_243A05B00(v25, v24, qword_27ED97C70, &qword_243A0FEB0);
  v27 = sub_243A0D3FC();
  v28 = sub_243A0D62C();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 264);
  if (v29)
  {
    v31 = *(v0 + 248);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = *(v30 + *(v31 + 32));
    sub_2439F5714(v30, qword_27ED97C70, &qword_243A0FEB0);
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&dword_2439E1000, v27, v28, "Reusing cached rulesets %@", v32, 0xCu);
    sub_2439F5714(v33, &qword_27ED97AC0, &unk_243A0F9D0);
    MEMORY[0x245D45310](v33, -1, -1);
    MEMORY[0x245D45310](v32, -1, -1);
  }

  else
  {

    sub_2439F5714(v30, qword_27ED97C70, &qword_243A0FEB0);
  }

  v35 = *(v0 + 272);
  v36 = *(v35 + *(*(v0 + 248) + 32));
  sub_2439F5714(v35, qword_27ED97C70, &qword_243A0FEB0);
  v38 = *(v0 + 264);
  v37 = *(v0 + 272);
  v40 = *(v0 + 232);
  v39 = *(v0 + 240);
  v41 = *(v0 + 224);

  v42 = *(v0 + 8);

  return v42(v36);
}

uint64_t sub_243A001DC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 200);
  if (v3)
  {
    v5 = sub_243A00434;
  }

  else
  {
    v5 = sub_243A002FC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_243A002FC()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[24];
  v6 = v0[25];
  *(v4 + *(v2 + 32)) = v5;
  *v4 = 0x40F5180000000000;
  v7 = *(v2 + 28);
  v8 = v5;
  sub_243A0D3AC();
  (*(v3 + 56))(v4, 0, 1, v2);
  swift_beginAccess();
  sub_243A057D0(v4, v6 + v1, &qword_27ED97D30, &qword_243A0FF70);
  swift_endAccess();
  v10 = v0[33];
  v9 = v0[34];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[28];

  v14 = v0[1];

  return v14(v8);
}

uint64_t sub_243A00434()
{
  v1 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  swift_willThrow();

  v7 = v0[1];
  v8 = v0[36];

  return v7();
}

uint64_t sub_243A004E8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D28, &qword_243A0FF68);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_243A005C0(char a1)
{
  *(v2 + 208) = v1;
  *(v2 + 352) = a1;
  v3 = sub_243A0D3BC();
  *(v2 + 216) = v3;
  v4 = *(v3 - 8);
  *(v2 + 224) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D18, &qword_243A0FF50) - 8) + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C50, &qword_243A0FEA0);
  *(v2 + 256) = v7;
  v8 = *(v7 - 8);
  *(v2 + 264) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A0073C, v1, 0);
}

uint64_t sub_243A0073C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 208);
  v5 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedCompletedRecommendations;
  *(v0 + 288) = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedCompletedRecommendations;
  swift_beginAccess();
  sub_243A05B00(v4 + v5, v3, &qword_27ED97D18, &qword_243A0FF50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 248);
    v7 = &qword_27ED97D18;
    v8 = &qword_243A0FF50;
LABEL_6:
    sub_2439F5714(v6, v7, v8);
    *(v0 + 296) = *(*(v0 + 208) + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);
    sub_243A0D3EC();
    sub_243A056C8(&qword_27ED97BF8, MEMORY[0x277CE47E8]);

    v18 = sub_243A0D59C();

    return MEMORY[0x2822009F8](sub_243A00B44, v18, v17);
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 256);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 216);
  sub_243A05838(*(v0 + 248), v9, &qword_27ED97C50, &qword_243A0FEA0);
  sub_243A0D3AC();
  v14 = *(v10 + 28);
  sub_243A0D39C();
  v16 = v15;
  (*(v12 + 8))(v11, v13);
  if (v16 >= *v9 || (*(v0 + 352) & 1) != 0)
  {
    v6 = *(v0 + 280);
    v7 = &qword_27ED97C50;
    v8 = &qword_243A0FEA0;
    goto LABEL_6;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 272);
  v20 = *(v0 + 280);
  v21 = sub_243A0D41C();
  __swift_project_value_buffer(v21, qword_27ED98738);
  sub_243A05B00(v20, v19, &qword_27ED97C50, &qword_243A0FEA0);
  v22 = sub_243A0D3FC();
  v23 = sub_243A0D62C();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 272);
  if (v24)
  {
    v26 = *(v0 + 256);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = *(v25 + *(v26 + 32));
    sub_2439F5714(v25, &qword_27ED97C50, &qword_243A0FEA0);
    *(v27 + 4) = v29;
    *v28 = v29;
    _os_log_impl(&dword_2439E1000, v22, v23, "Reusing cached completed recommendations %@", v27, 0xCu);
    sub_2439F5714(v28, &qword_27ED97AC0, &unk_243A0F9D0);
    MEMORY[0x245D45310](v28, -1, -1);
    MEMORY[0x245D45310](v27, -1, -1);
  }

  else
  {

    sub_2439F5714(v25, &qword_27ED97C50, &qword_243A0FEA0);
  }

  v30 = *(v0 + 280);
  v31 = *(v30 + *(*(v0 + 256) + 32));
  sub_2439F5714(v30, &qword_27ED97C50, &qword_243A0FEA0);
  v33 = *(v0 + 272);
  v32 = *(v0 + 280);
  v35 = *(v0 + 240);
  v34 = *(v0 + 248);
  v36 = *(v0 + 232);

  v37 = *(v0 + 8);

  return v37(v31);
}

uint64_t sub_243A00B44()
{
  v1 = v0[37];
  v2 = v0[26];
  v0[38] = sub_243A0D3CC();

  return MEMORY[0x2822009F8](sub_243A00BDC, v2, 0);
}

uint64_t sub_243A00BDC()
{
  v1 = v0[26];
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v0[39] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  v4 = *(MEMORY[0x277CE47E0] + 4);
  v9 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
  v5 = swift_task_alloc();
  v0[40] = v5;
  v6 = sub_2439F5784(0, &qword_27ED97C00, off_278DE0090);
  *v5 = v0;
  v5[1] = sub_243A00D2C;
  v7 = v0[38];

  return v9(v0 + 24, 0x6C75526863746566, 0xEC00000074657365, &unk_243A0FF58, v3, v6);
}

uint64_t sub_243A00D2C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v10 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = sub_243A01044;
  }

  else
  {
    v7 = v2[38];
    v6 = v2[39];
    v8 = v2[26];

    v5 = sub_243A00E5C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_243A00E5C()
{
  v1 = v0;
  v2 = v0[24];
  v1[42] = v2;
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v3 = sub_243A0D41C();
  __swift_project_value_buffer(v3, qword_27ED98738);
  v4 = sub_243A0D3FC();
  v5 = sub_243A0D62C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2439E1000, v4, v5, "Fetching fresh completed recommendations", v6, 2u);
    MEMORY[0x245D45310](v6, -1, -1);
  }

  v7 = v1[26];

  v8 = *(v7 + 112);
  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_243A010F0;
  v9 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D20, &qword_243A0FF60);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_243A06A18;
  v1[13] = &block_descriptor_93;
  v1[14] = v9;
  [v8 fetchCompletedRecommendations:v2 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_243A01044()
{
  v2 = v0[38];
  v1 = v0[39];

  v3 = v0[41];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];

  v9 = v0[1];

  return v9();
}

uint64_t sub_243A010F0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 344) = v3;
  v4 = *(v1 + 208);
  if (v3)
  {
    v5 = sub_243A01350;
  }

  else
  {
    v5 = sub_243A01210;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_243A01210()
{
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[25];
  v7 = v0[26];
  *(v5 + *(v3 + 32)) = v6;
  *v5 = 0x40F5180000000000;
  v8 = *(v3 + 28);
  v9 = v6;
  sub_243A0D3AC();

  (*(v4 + 56))(v5, 0, 1, v3);
  swift_beginAccess();
  sub_243A057D0(v5, v7 + v2, &qword_27ED97D18, &qword_243A0FF50);
  swift_endAccess();
  v11 = v0[34];
  v10 = v0[35];
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[29];

  v15 = v0[1];

  return v15(v9);
}

uint64_t sub_243A01350()
{
  v1 = v0[42];
  v2 = v0[43];
  swift_willThrow();

  v3 = v0[43];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];

  v9 = v0[1];

  return v9();
}

uint64_t sub_243A013F8(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 136) = a1;
  v3 = sub_243A0D3BC();
  *(v2 + 56) = v3;
  v4 = *(v3 - 8);
  *(v2 + 64) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97CF8, &qword_243A0FF28) - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C60, &qword_243A0FEA8);
  *(v2 + 88) = v7;
  v8 = *(v7 - 8);
  *(v2 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A01568, v1, 0);
}

uint64_t sub_243A01568()
{
  v48 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v5 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedClientRecommendations;
  swift_beginAccess();
  sub_243A05B00(v4 + v5, v3, &qword_27ED97CF8, &qword_243A0FF28);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 80);
    v7 = &qword_27ED97CF8;
    v8 = &qword_243A0FF28;
LABEL_6:
    sub_2439F5714(v6, v7, v8);
    v17 = *(v0 + 48);
    v18 = sub_243A056C8(&qword_27ED97D00, type metadata accessor for DataFetcher);
    v19 = *(MEMORY[0x277D85A40] + 4);
    v20 = swift_task_alloc();
    *(v0 + 120) = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AC8, &qword_243A0FF30);
    *v20 = v0;
    v20[1] = sub_243A019EC;
    v22 = *(v0 + 48);

    return MEMORY[0x2822008A0](v0 + 40, v17, v18, 0xD000000000000037, 0x8000000243A113B0, sub_243A054E0, v22, v21);
  }

  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v13 = *(v0 + 56);
  sub_243A05838(*(v0 + 80), v9, &qword_27ED97C60, &qword_243A0FEA8);
  sub_243A0D3AC();
  v14 = *(v10 + 28);
  sub_243A0D39C();
  v16 = v15;
  (*(v12 + 8))(v11, v13);
  if (v16 >= *v9 || (*(v0 + 136) & 1) != 0)
  {
    v6 = *(v0 + 112);
    v7 = &qword_27ED97C60;
    v8 = &qword_243A0FEA8;
    goto LABEL_6;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 104);
  v24 = *(v0 + 112);
  v25 = sub_243A0D41C();
  __swift_project_value_buffer(v25, qword_27ED98738);
  sub_243A05B00(v24, v23, &qword_27ED97C60, &qword_243A0FEA8);
  v26 = sub_243A0D3FC();
  v27 = sub_243A0D62C();
  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 104);
  if (v28)
  {
    v30 = *(v0 + 88);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v47 = v32;
    *v31 = 136315138;
    v33 = *(v29 + *(v30 + 32));
    v34 = sub_2439F5784(0, &qword_27ED97AB8, off_278DE0050);
    v35 = MEMORY[0x245D44760](v33, v34);
    v37 = v36;
    sub_2439F5714(v29, &qword_27ED97C60, &qword_243A0FEA8);
    v38 = sub_243A08B04(v35, v37, &v47);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_2439E1000, v26, v27, "Reusing cached client recommendations %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x245D45310](v32, -1, -1);
    MEMORY[0x245D45310](v31, -1, -1);
  }

  else
  {

    sub_2439F5714(v29, &qword_27ED97C60, &qword_243A0FEA8);
  }

  v39 = *(v0 + 112);
  v40 = *(v39 + *(*(v0 + 88) + 32));

  sub_2439F5714(v39, &qword_27ED97C60, &qword_243A0FEA8);
  v42 = *(v0 + 104);
  v41 = *(v0 + 112);
  v44 = *(v0 + 72);
  v43 = *(v0 + 80);

  v45 = *(v0 + 8);

  return v45(v40);
}

uint64_t sub_243A019EC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_243A01BA8;
  }

  else
  {
    v6 = sub_243A01B18;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_243A01B18()
{
  v1 = v0[5];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_243A01BA8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_243A01C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A0D43C();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_243A0D46C();
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v14 = sub_243A0D41C();
  __swift_project_value_buffer(v14, qword_27ED98738);
  v15 = sub_243A0D3FC();
  v16 = sub_243A0D62C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2439E1000, v15, v16, "Fetching fresh client recommendations", v17, 2u);
    MEMORY[0x245D45310](v17, -1, -1);
  }

  v18 = *(a2 + 120);
  v19 = MEMORY[0x277D84F90];
  v20 = sub_2439F61E0(MEMORY[0x277D84F90]);
  v21 = sub_2439F61E0(v19);
  (*(v10 + 16))(v13, a1, v9);
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = swift_allocObject();
  (*(v10 + 32))(v23 + v22, v13, v9);
  *(v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v24 = qword_27ED979C8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = swift_allocObject();
  v26 = MEMORY[0x277D84FA0];
  v25[2] = v18;
  v25[3] = v26;
  v25[4] = v20;
  v25[5] = v21;
  v25[6] = sub_243A05590;
  v25[7] = v23;
  aBlock[4] = sub_243A056A0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2439F2CF8;
  aBlock[3] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);
  v28 = v18;

  v29 = v34;
  sub_243A0D44C();
  v40 = MEMORY[0x277D84F90];
  sub_243A056C8(&qword_27ED97A28, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A30, &unk_243A0FF40);
  sub_2439F5814(&qword_27ED97A38, &qword_27ED97A30, &unk_243A0FF40);
  v30 = v36;
  v31 = v39;
  sub_243A0D6DC();
  MEMORY[0x245D44890](0, v29, v30, v27);
  _Block_release(v27);

  (*(v38 + 8))(v30, v31);
  (*(v35 + 8))(v29, v37);
}

uint64_t sub_243A0214C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97CF8, &qword_243A0FF28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = (&v24 - v8);
  if (a2)
  {
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v10 = sub_243A0D41C();
    __swift_project_value_buffer(v10, qword_27ED98738);
    v11 = a2;
    v12 = sub_243A0D3FC();
    v13 = sub_243A0D63C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_2439E1000, v12, v13, "Error fetching client recommendations: %@", v14, 0xCu);
      sub_2439F5714(v15, &qword_27ED97AC0, &unk_243A0F9D0);
      MEMORY[0x245D45310](v15, -1, -1);
      MEMORY[0x245D45310](v14, -1, -1);
    }

    sub_243A05710();
    v18 = swift_allocError();
    *v19 = 1;
    v25 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38);
    return sub_243A0D5AC();
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C60, &qword_243A0FEA8);
    *(v9 + *(v21 + 32)) = a1;
    *v9 = 0x40F5180000000000;
    v22 = *(v21 + 28);

    sub_243A0D3AC();
    (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    v23 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedClientRecommendations;
    swift_beginAccess();
    sub_243A057D0(v9, a4 + v23, &qword_27ED97CF8, &qword_243A0FF28);
    swift_endAccess();
    v25 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38);
    return sub_243A0D5BC();
  }
}

uint64_t sub_243A02434()
{
  sub_2439F5714(v0 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRecommendations, &qword_27ED97D18, &qword_243A0FF50);
  sub_2439F5714(v0 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedClientRecommendations, &qword_27ED97CF8, &qword_243A0FF28);
  sub_2439F5714(v0 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedCompletedRecommendations, &qword_27ED97D18, &qword_243A0FF50);
  sub_2439F5714(v0 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRuleset, &qword_27ED97D30, &qword_243A0FF70);
  v1 = *(v0 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_243A02520(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_243A0256C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A069D0;

  return sub_2439F8814(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_243A02648(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A069D0;

  return sub_2439F959C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_243A02724()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243A0275C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_243A02794(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439FE6F0(a1, v4, v5);
}

uint64_t sub_243A02844(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A0293C;

  return v7(a1);
}

uint64_t sub_243A0293C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_243A02A34(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_243A069D0;

  return v7();
}

uint64_t sub_243A02B1C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_243A02C04;

  return v8();
}

uint64_t sub_243A02C04()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_243A02CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BE0, &qword_243A0FC10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_243A05B00(a3, v24 - v10, &qword_27ED97BE0, &qword_243A0FC10);
  v12 = sub_243A0D5DC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2439F5714(v11, &qword_27ED97BE0, &qword_243A0FC10);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_243A0D5CC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_243A0D59C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_243A0D4FC() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_2439F5714(a3, &qword_27ED97BE0, &qword_243A0FC10);

    return v22;
  }

LABEL_8:
  sub_2439F5714(a3, &qword_27ED97BE0, &qword_243A0FC10);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_243A02FF4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A069D4;

  return v7(a1);
}

unint64_t sub_243A030EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_243A0D89C();
  sub_243A0D50C();
  v6 = sub_243A0D8BC();

  return sub_243A031A8(a1, a2, v6);
}

unint64_t sub_243A03164(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_243A0D6FC();

  return sub_243A03260(a1, v5);
}

unint64_t sub_243A031A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_243A0D7FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_243A03260(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_243A05430(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245D44900](v9, a1);
      sub_243A0548C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_243A03328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BA8, &qword_243A0FB90);
  v38 = a2;
  result = sub_243A0D79C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_243A0D89C();
      sub_243A0D50C();
      result = sub_243A0D8BC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_243A035E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BB0, &qword_243A0FB98);
  v38 = a2;
  result = sub_243A0D79C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_243A0D89C();
      sub_243A0D50C();
      result = sub_243A0D8BC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_243A0388C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_243A0D79C();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_243A0D89C();
      sub_243A0D50C();
      result = sub_243A0D8BC();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *sub_243A03B28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BA8, &qword_243A0FB90);
  v2 = *v0;
  v3 = sub_243A0D78C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_243A03CAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97BB0, &qword_243A0FB98);
  v2 = *v0;
  v3 = sub_243A0D78C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_243A03E1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_243A0D78C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void (*sub_243A03F78(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D44940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_243A03FF8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_243A04000(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245D44940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_243A069FC;
  }

  __break(1u);
  return result;
}

uint64_t sub_243A04080(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A02C04;

  return sub_2439FE6F0(a1, v4, v5);
}

uint64_t sub_243A04130(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A069D0;

  return sub_2439FBD7C(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_243A0420C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A069D0;

  return sub_2439FC860(a1, v4, v5, v6, v7, v8, v10, v9);
}

unint64_t sub_243A04334()
{
  result = qword_27ED97C10;
  if (!qword_27ED97C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97C10);
  }

  return result;
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchServerRecommendationsAsync(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_243A06A04;

  return v10(a1, a2);
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchRules(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_243A06A04;

  return v10(a1, a2);
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchRulesetsAsync(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_243A06A04;

  return v10(a1, a2);
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchCompletedRecommendations(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_243A06A04;

  return v10(a1, a2);
}

uint64_t dispatch thunk of RecommendationsFetcher.fetchClientRecommendationsAsync(for:shouldIgnoreCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_243A04B04;

  return v10(a1, a2);
}

uint64_t sub_243A04B04(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t type metadata accessor for DataFetcher()
{
  result = qword_27ED97C38;
  if (!qword_27ED97C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A04C64()
{
  sub_243A04DD8(319, &qword_27ED97C48, &qword_27ED97C50, &qword_243A0FEA0);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_243A04DD8(319, &qword_27ED97C58, &qword_27ED97C60, &qword_243A0FEA8);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_243A04DD8(319, &qword_27ED97C68, qword_27ED97C70, &qword_243A0FEB0);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_243A04DD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_243A0D6CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_243A04E34(uint64_t a1)
{
  result = sub_243A0D3BC();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_243A04ECC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_243A0D3BC() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_26;
  }

  v14 = ((v11 + ((v10 + 8) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_25:
      if (v13)
      {
LABEL_26:
        if (v7 >= v9)
        {
          v21 = *(v6 + 48);

          return v21((a1 + v10 + 8) & ~v10);
        }

        else
        {
          v19 = *(v8 + 48);

          return v19((((a1 + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_25;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v13 + (v14 | v18) + 1;
}

void sub_243A05128(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_243A0D3BC() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  v16 = ((v13 + ((v12 + 8) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(&a1[v12 + 8] & ~v12, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(((&a1[v12 + 8] & ~v12) + v13 + v14) & ~v14, a2, v11);
  }
}

uint64_t sub_243A054E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_243A05590(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D08, &qword_243A0FF38) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_243A0214C(a1, a2, v2 + v6, v7);
}

uint64_t sub_243A05648()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243A056C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243A05710()
{
  result = qword_27ED97D10;
  if (!qword_27ED97D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED97D10);
  }

  return result;
}

uint64_t sub_243A05774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243A057D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_243A05838(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_243A058AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439FD394(v2, v3, v5, v4);
}

uint64_t sub_243A05974()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_243A02A34(v2, v3, v5);
}

uint64_t sub_243A05A34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A069D0;

  return sub_243A02B1C(a1, v4, v5, v7);
}

uint64_t sub_243A05B00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243A05B68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A05BA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_243A02FF4(a1, v5);
}

uint64_t sub_243A05C5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_243A02C04;

  return sub_2439FC860(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_243A05D38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243A05D78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439FC620(v2, v3, v5, v4);
}

uint64_t sub_243A05E3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439FBACC(v2, v3, v5, v4);
}

uint64_t sub_243A05F00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439FA6E4(v2, v3, v5, v4);
}

uint64_t objectdestroy_104Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243A06028()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_243A069D0;

  return sub_2439F92FC(v2, v3, v5, v4);
}

uint64_t objectdestroy_108Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
    v2 = *(v0 + 64);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A0618C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439FF148(a1, v4, v5);
}

uint64_t sub_243A0623C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439FED1C(a1, v4, v5);
}

uint64_t sub_243A062EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439FDFD8(a1, v4, v5);
}

uint64_t sub_243A0639C(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRecommendations;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C50, &qword_243A0FEA0);
  v6 = *(*(v5 - 8) + 56);
  v6(v2 + v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedClientRecommendations;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97C60, &qword_243A0FEA8);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v6(v2 + OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedCompletedRecommendations, 1, 1, v5);
  v9 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_cachedRuleset;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED97C70, &qword_243A0FEB0);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC19CloudRecommendationP33_AFF0F38A07FEA7D3E0443E6C0DD7FA6B11DataFetcher_taskLimiters;
  sub_243A0D3EC();
  *(v2 + v11) = sub_243A0D3DC();
  *(v2 + 112) = [objc_allocWithZone(CERecommendationDataController) initWithAccount_];
  v12 = objc_allocWithZone(type metadata accessor for ClientRecommendationsRepository());
  *(v2 + 120) = sub_243A09FB0(a1);
  return v2;
}

uint64_t sub_243A06558(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_243A02844(a1, v5);
}

uint64_t sub_243A06610()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A06650(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439F76BC(a1, v5, v4);
}

uint64_t sub_243A066FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439F7950(a1, v5, v4);
}

uint64_t sub_243A067A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439F7C6C(a1, v5, v4);
}

uint64_t sub_243A06854(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_243A069D0;

  return sub_2439F82A0(a1, v5, v4);
}

void (*sub_243A06A28(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_243A093A0(v6, a2, a3);
  return sub_243A06AB0;
}

void sub_243A06AB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id sub_243A06AFC(char a1)
{
  v18 = a1 & 1;
  sub_2439F5F14();
  v1 = sub_243A0D7DC();
  if (!v1)
  {
    v1 = swift_allocError();
    *v2 = v18;
  }

  v3 = v1;
  v4 = sub_243A0D31C();

  v5 = [v4 domain];
  if (!v5)
  {
    sub_243A0D4EC();
    v5 = sub_243A0D4BC();
  }

  v6 = [v4 code];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97B60, &unk_243A0FA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243A0F9F0;
  v8 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_243A0D4EC();
  *(inited + 40) = v9;
  v10 = [v4 localizedDescription];
  v11 = sub_243A0D4EC();
  v13 = v12;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  sub_2439F5D40(inited);
  swift_setDeallocating();
  sub_2439F5714(inited + 32, &qword_27ED97B68, &unk_243A101B0);
  v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v15 = sub_243A0D4AC();

  v16 = [v14 initWithDomain:v5 code:v6 userInfo:v15];

  return v16;
}

id ClientRecommendationsRepository.__allocating_init(account:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_243A09FB0(a1);

  return v4;
}

uint64_t sub_243A06D3C()
{
  v1 = OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_ignoreClientCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243A06D80(char a1)
{
  v3 = OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_ignoreClientCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243A06E30()
{
  v10 = sub_243A0D68C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_243A0D66C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_243A0D46C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_2439F5784(0, &qword_27ED97AE0, 0x277D85C78);
  sub_243A0D45C();
  v11 = MEMORY[0x277D84F90];
  sub_243A0A588(&qword_27ED97AE8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97AF0, &qword_243A0F9E8);
  sub_243A0A5D0(&qword_27ED97AF8, &qword_27ED97AF0, &qword_243A0F9E8);
  sub_243A0D6DC();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_243A0D6AC();
  qword_27ED97D60 = result;
  return result;
}

id ClientRecommendationsRepository.init(account:)(void *a1)
{
  v2 = sub_243A09FB0(a1);

  return v2;
}

uint64_t sub_243A070C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_243A0D43C();
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_243A0D46C();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v24);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED979C8 != -1)
  {
    swift_once();
  }

  v23 = qword_27ED97D60;
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  aBlock[4] = sub_243A0A12C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2439F2CF8;
  aBlock[3] = &block_descriptor_1;
  v20 = _Block_copy(aBlock);
  v21 = v5;

  sub_243A0D44C();
  v26 = MEMORY[0x277D84F90];
  sub_243A0A588(&qword_27ED97A28, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A30, &unk_243A0FF40);
  sub_243A0A5D0(&qword_27ED97A38, &qword_27ED97A30, &unk_243A0FF40);
  sub_243A0D6DC();
  MEMORY[0x245D44890](0, v18, v14, v20);
  _Block_release(v20);
  (*(v25 + 8))(v14, v11);
  (*(v15 + 8))(v18, v24);
}

void sub_243A07420(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void *a5)
{
  v11 = [*&v5[OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_account] aa_altDSID];
  if (v11)
  {
    v12 = v11;
    v13 = sub_243A0D4EC();
    v15 = v14;

    v16 = OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_ignoreClientCache;
    swift_beginAccess();
    if ((v5[v16] & 1) == 0)
    {
      v34 = v5;
      if (qword_27ED979B0 != -1)
      {
        swift_once();
      }

      sub_2439F091C(v13, v15);
      if (v17)
      {
        v18 = v17;
        if (qword_27ED979B8 != -1)
        {
          swift_once();
        }

        v19 = sub_243A0D41C();
        __swift_project_value_buffer(v19, qword_27ED98738);

        v20 = sub_243A0D3FC();
        v21 = sub_243A0D62C();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v36 = v23;
          *v22 = 136315138;
          v24 = sub_243A08B04(v13, v15, &v36);

          *(v22 + 4) = v24;
          _os_log_impl(&dword_2439E1000, v20, v21, "Returning cached recommendations for altDSID:%s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x245D45310](v23, -1, -1);
          MEMORY[0x245D45310](v22, -1, -1);
        }

        else
        {
        }

        (a4)(v18, 0);

        return;
      }

      if (qword_27ED979B8 != -1)
      {
        swift_once();
      }

      v29 = sub_243A0D41C();
      __swift_project_value_buffer(v29, qword_27ED98738);
      v30 = sub_243A0D3FC();
      v31 = sub_243A0D62C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2439E1000, v30, v31, "No cache found, reaching out to client donors.", v32, 2u);
        MEMORY[0x245D45310](v32, -1, -1);
      }

      v5 = v34;
    }

    v33 = *&v5[OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_pluginsLoader];

    sub_2439F3334(a1, a2, a3, v33, a1, a4, a5, v13, v15);

    swift_bridgeObjectRelease_n();
    return;
  }

  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v25 = sub_243A0D41C();
  __swift_project_value_buffer(v25, qword_27ED98738);
  v26 = sub_243A0D3FC();
  v27 = sub_243A0D63C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2439E1000, v26, v27, "Invalid account. No altDSID found.", v28, 2u);
    MEMORY[0x245D45310](v28, -1, -1);
  }

  v35 = sub_243A06AFC(0);
  (a4)(MEMORY[0x277D84F90], v35);
}

void sub_243A078A4(unint64_t a1, void *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_27ED979B8 != -1)
  {
    swift_once();
  }

  v12 = sub_243A0D41C();
  __swift_project_value_buffer(v12, qword_27ED98738);
  v13 = sub_243A0D3FC();
  v14 = sub_243A0D62C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = a4;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2439E1000, v13, v14, "Request to fetch recommendations from client donors has been completed.", v16, 2u);
    v17 = v16;
    a4 = v15;
    MEMORY[0x245D45310](v17, -1, -1);
  }

  if (!a2)
  {
    if (a1 >> 62)
    {
      if (sub_243A0D77C())
      {
        goto LABEL_13;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      if (qword_27ED979B0 != -1)
      {
        swift_once();
      }

      sub_2439F0644(a6, a7, a1);
    }

    a4(a1, 0);
    return;
  }

  v18 = a2;
  v19 = sub_243A0D3FC();
  v20 = sub_243A0D63C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30 = v23;
    *v21 = 136315394;
    v24 = sub_243A0D5EC();
    v26 = sub_243A08B04(v24, v25, &v30);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    v27 = a2;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v28;
    *v22 = v28;
    _os_log_impl(&dword_2439E1000, v19, v20, "Unable to fetch recommendations from client donors for bundles:%s error: %@", v21, 0x16u);
    sub_2439F5714(v22, &qword_27ED97AC0, &unk_243A0F9D0);
    MEMORY[0x245D45310](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x245D45310](v23, -1, -1);
    MEMORY[0x245D45310](v21, -1, -1);
  }

  v29 = sub_243A06AFC(1);
  a4(MEMORY[0x277D84F90], v29);
}

void sub_243A07C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v56 = a3;
  v57 = a4;
  v11 = sub_243A0D43C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243A0D46C();
  v58 = *(v16 - 8);
  v17 = v58[8];
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*&v6[OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_account] aa_altDSID];
  if (v20)
  {
    v53 = v16;
    v54 = v12;
    v55 = a5;
    v21 = v20;
    v22 = sub_243A0D4EC();
    v24 = v23;

    v25 = OBJC_IVAR____TtC19CloudRecommendation31ClientRecommendationsRepository_ignoreClientCache;
    swift_beginAccess();
    if (v6[v25])
    {

LABEL_23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97D78, qword_243A10138);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_243A0F9F0;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v45 = sub_243A0A148(inited);
      swift_setDeallocating();
      sub_243A0A1E0(inited + 32);
      v46 = swift_allocObject();
      *(v46 + 16) = v55;
      *(v46 + 24) = a6;
      v47 = qword_27ED979C8;

      if (v47 != -1)
      {
        swift_once();
      }

      v48 = swift_allocObject();
      v48[2] = v6;
      v48[3] = v45;
      v49 = v57;
      v48[4] = v56;
      v48[5] = v49;
      v48[6] = sub_243A0A26C;
      v48[7] = v46;
      aBlock[4] = sub_243A0A62C;
      aBlock[5] = v48;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2439F2CF8;
      aBlock[3] = &block_descriptor_10;
      v50 = _Block_copy(aBlock);
      v51 = v6;

      sub_243A0D44C();
      v59 = MEMORY[0x277D84F90];
      sub_243A0A588(&qword_27ED97A28, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED97A30, &unk_243A0FF40);
      sub_243A0A5D0(&qword_27ED97A38, &qword_27ED97A30, &unk_243A0FF40);
      sub_243A0D6DC();
      MEMORY[0x245D44890](0, v19, v15, v50);
      _Block_release(v50);

      (*(v54 + 8))(v15, v11);
      (v58[1])(v19, v53);

      return;
    }

    v52 = a6;
    v31 = v6;
    if (qword_27ED979B0 != -1)
    {
      swift_once();
    }

    sub_2439F0AF0(v22, v24, a1, a2);
    if (!v32)
    {

      if (qword_27ED979B8 != -1)
      {
        swift_once();
      }

      v40 = sub_243A0D41C();
      __swift_project_value_buffer(v40, qword_27ED98738);
      v41 = sub_243A0D3FC();
      v42 = sub_243A0D62C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2439E1000, v41, v42, "No cache found, reaching out to client donors.", v43, 2u);
        MEMORY[0x245D45310](v43, -1, -1);
      }

      v6 = v31;
      a6 = v52;
      goto LABEL_23;
    }

    v33 = v32;
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v34 = sub_243A0D41C();
    __swift_project_value_buffer(v34, qword_27ED98738);

    v35 = sub_243A0D3FC();
    v36 = sub_243A0D62C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      v39 = sub_243A08B04(v22, v24, aBlock);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_2439E1000, v35, v36, "Returning cached recommendations for altDSID:%s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x245D45310](v38, -1, -1);
      MEMORY[0x245D45310](v37, -1, -1);
    }

    else
    {
    }

    v55(v33, 0);
  }

  else
  {
    if (qword_27ED979B8 != -1)
    {
      swift_once();
    }

    v26 = sub_243A0D41C();
    __swift_project_value_buffer(v26, qword_27ED98738);
    v27 = sub_243A0D3FC();
    v28 = sub_243A0D63C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2439E1000, v27, v28, "Invalid account. No altDSID found.", v29, 2u);
      MEMORY[0x245D45310](v29, -1, -1);
    }

    v58 = sub_243A06AFC(0);
    a5(MEMORY[0x277D84F90], v58);
    v30 = v58;
  }
}