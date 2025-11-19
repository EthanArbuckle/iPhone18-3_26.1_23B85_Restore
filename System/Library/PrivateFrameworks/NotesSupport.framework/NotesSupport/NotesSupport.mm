uint64_t type metadata accessor for AppleIntelligenceSupportStatus()
{
  result = qword_1EDBEFF98;
  if (!qword_1EDBEFF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4578980()
{
  v0 = sub_1D45C4D98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1D45789EC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1D4578A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSupportStatus();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4578C10()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D4578C58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D457DDD8;

  return sub_1D4578D10(a1, v4);
}

uint64_t sub_1D4578D10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D457DE54;

  return v6(a1);
}

uint64_t sub_1D4578E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D457DCAC;

  return sub_1D4578ED4(a1, v4, v5, v6);
}

uint64_t sub_1D4578ED4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D457DCAC;

  return v7();
}

uint64_t sub_1D4578FBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D457DDD8;

  return sub_1D4579718(v2, v3, v4);
}

uint64_t sub_1D457907C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D457DDD8;

  return sub_1D4579800(v2, v3);
}

uint64_t ICInternalSettingsDisableGASRAvailabilityCheck()
{
  if (ICInternalSettingsDisableGASRAvailabilityCheck_onceToken != -1)
  {
    ICInternalSettingsDisableGASRAvailabilityCheck_cold_1();
  }

  return ICInternalSettingsDisableGASRAvailabilityCheck_isEnabled;
}

void __ICInternalSettingsDisableGASRAvailabilityCheck_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  ICInternalSettingsDisableGASRAvailabilityCheck_isEnabled = [v0 BOOLForKey:@"DisableGASRAvailabilityCheck"];
}

uint64_t sub_1D45791CC()
{
  v0 = sub_1D45C4E28();
  __swift_allocate_value_buffer(v0, qword_1EDBEFEE8);
  __swift_project_value_buffer(v0, qword_1EDBEFEE8);
  return sub_1D45C4E18();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t ICUseCoreDataCoreSpotlightIntegration()
{
  if (ICUseCoreDataCoreSpotlightIntegration_onceToken != -1)
  {
    ICUseCoreDataCoreSpotlightIntegration_cold_1();
  }

  return useCoreSpotlightCoreDataIntegration;
}

uint64_t sub_1D4579718(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D457DDD8;

  return v6();
}

uint64_t sub_1D4579800(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1D457DB50;

  return ICModelAvailabilityManager.fetchAndCacheAsyncAvailabilities()();
}

uint64_t ICModelAvailabilityManager.fetchAndCacheAsyncAvailabilities()()
{
  v1[2] = v0;
  type metadata accessor for AppleIntelligenceSupportStatus();
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1D457D80C;

  return sub_1D4579970(v2);
}

uint64_t sub_1D4579970(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_1D45C4CF8();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4579A48, 0, 0);
}

uint64_t sub_1D4579A48()
{
  v30 = v0;
  if ((ICInternalSettingsDisableGASRAvailabilityCheck() & 1) == 0)
  {
    v2 = [objc_opt_self() sharedConnection];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isNotesTranscriptionAllowed];

      if (!v4)
      {
        v1 = 2;
        goto LABEL_10;
      }

      sub_1D45C4CE8();
      if (qword_1EDBEFEE0 != -1)
      {
        swift_once();
      }

      v5 = v0[25];
      v6 = v0[26];
      v7 = v0[22];
      v8 = v0[23];
      v9 = sub_1D45C4E28();
      v0[27] = __swift_project_value_buffer(v9, qword_1EDBEFEE8);
      (*(v8 + 16))(v5, v6, v7);
      v10 = sub_1D45C4E08();
      v11 = sub_1D45C5038();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[25];
      v14 = v0[22];
      v15 = v0[23];
      if (v12)
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v29 = v17;
        *v16 = 136315138;
        v28 = sub_1D45C4CC8();
        v19 = v18;
        v20 = *(v15 + 8);
        v20(v13, v14);
        v21 = sub_1D4579E74(v28, v19, &v29);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_1D4576000, v10, v11, "Current locale is %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x1DA6DAEF0](v17, -1, -1);
        MEMORY[0x1DA6DAEF0](v16, -1, -1);
      }

      else
      {

        v20 = *(v15 + 8);
        v20(v13, v14);
      }

      v0[28] = v20;
      v26 = objc_opt_self();
      v0[29] = v26;
      v0[2] = v0;
      v0[7] = v0 + 20;
      v0[3] = sub_1D457D060;
      v27 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3458);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_1D457CF9C;
      v0[13] = &block_descriptor;
      v0[14] = v27;
      [v26 supportedLanguagesForTaskHint:1009 completion:v0 + 10];
      v2 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v2);
  }

  v1 = 1;
LABEL_10:
  v22 = v0[21];
  v23 = sub_1D45C4D98();
  (*(*(v23 - 8) + 56))(v22, v1, 3, v23);

  v24 = v0[1];

  return v24();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1D4579E74(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D457A2E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D457A3F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_1D4579F40(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D45B8478(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ICLaunchConfigurationEnvironmentWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PurplePerformanceTesting"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"UserInterfaceTesting"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_1D457A0F8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3460);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1D457A16C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D457A0F8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D45C50C8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D45C4EB8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D457A0F8(v10, 0);
        result = sub_1D45C5098();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D457A29C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D457A16C(a1, a2);
  sub_1D4579F40(&unk_1F4FCD348);
  return v3;
}

unint64_t sub_1D457A2E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D457A29C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D45C50C8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D457A3F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t ICIsSandboxModeEnabled()
{
  if ((_ICDidInquireSandboxModeEnabled & 1) == 0)
  {
    _ICDidInquireSandboxModeEnabled = 1;
  }

  return _ICIsSandboxModeEnabled;
}

uint64_t ICCheckedDynamicCast(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    [ICAssert handleFailedAssertWithCondition:"src == ((void*)0) || result != ((void*)0)" functionName:"id ICCheckedDynamicCast(Class simulateCrash:id<NSObject>)" showAlert:1 format:0, @"Unexpected object type in checked dynamic cast %@ expects %@", objc_opt_class(), a1];
    return 0;
  }

  return v2;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t ICDynamicCast(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (objc_opt_isKindOfClass())
  {
    return a2;
  }

  return 0;
}

uint64_t dispatchMainAfterDelay(void *a1, double a2)
{
  v3 = a1;
  if (v3)
  {
    block = v3;
    if (a2 == 0.0)
    {
      dispatch_async(MEMORY[0x1E69E96A0], v3);
    }

    else
    {
      v4 = dispatch_time(0, (a2 * 1000000000.0));
      dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

__CFString *ICGroupContainerIdentifier()
{
  if (ICIsSandboxModeEnabled())
  {
    v0 = @"group.com.apple.notesdebug";
  }

  else
  {
    v0 = @"group.com.apple.notes";
  }

  return v0;
}

void __ICUseCoreDataCoreSpotlightIntegration_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  useCoreSpotlightCoreDataIntegration = [v0 BOOLForKey:@"internalSettings.useCDCSI"];
}

__CFString *ICNotesAppBundleIdentifier()
{
  if (ICIsSandboxModeEnabled())
  {
    v0 = @"com.apple.mobilenotesdebug";
  }

  else
  {
    v0 = @"com.apple.mobilenotes";
  }

  return v0;
}

void sub_1D457C538(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

BOOL ICDebugModeEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DebugModeEnabled"];

  if ((v1 & 1) == 0)
  {
    v2 = CPSharedResourcesDirectory();
    v3 = [v2 stringByAppendingString:@"/Library/Notes/"];

    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v3 stringByAppendingPathComponent:@"DebugModeEnabled"];
    v6 = [v4 fileExistsAtPath:v5];

    if (!v6)
    {
      return 0;
    }
  }

  return +[ICUtilities showInternalInstallUI];
}

uint64_t ICVerboseSearchLogging()
{
  if (ICVerboseSearchLogging_onceToken != -1)
  {
    ICVerboseSearchLogging_cold_1();
  }

  return verboseSearchLogging;
}

void __ICVerboseSearchLogging_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  verboseSearchLogging = [v0 BOOLForKey:@"internalSettings.search.verboseSearchLogging"];
}

uint64_t ICInternalSettingsIsSelectionStateTrackingEnabled()
{
  v0 = _os_feature_enabled_impl();
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v1 BOOLForKey:@"EnableSelectionStateTracking"] | v0;

  return v2 & 1;
}

uint64_t ICInternalSettingsIsTextKit2Enabled()
{
  if (ICInternalSettingsIsTextKit2Enabled_onceToken != -1)
  {
    ICInternalSettingsIsTextKit2Enabled_cold_1();
  }

  return ICInternalSettingsIsTextKit2Enabled_isEnabled;
}

void __ICInternalSettingsIsTextKit2Enabled_block_invoke()
{
  if (+[ICDeviceSupport isRunningUnitTests])
  {
    ICInternalSettingsIsTextKit2Enabled_isEnabled = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([v1 BOOLForKey:@"EnableTextKit2"])
    {
      v0 = 1;
    }

    else
    {
      v0 = _os_feature_enabled_impl();
    }

    ICInternalSettingsIsTextKit2Enabled_isEnabled = v0;
  }
}

void performBlockOnMainThread(void *a1)
{
  block = a1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v1 = block;
    if (!block)
    {
      goto LABEL_7;
    }

    block[2]();
  }

  else
  {
    v1 = block;
    if (!block)
    {
      goto LABEL_7;
    }

    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v1 = block;
LABEL_7:
}

uint64_t sub_1D457CF9C(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_1D45C4F08();

  return MEMORY[0x1EEE6DED8](v1);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D457D060()
{

  return MEMORY[0x1EEE6DFA0](sub_1D457D140, 0, 0);
}

uint64_t sub_1D457D140()
{
  v33 = v0;
  v1 = v0[20];

  v2 = sub_1D45C4E08();
  v3 = sub_1D45C5038();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v32 = v5;
    *v4 = 136315138;
    v6 = MEMORY[0x1DA6D96A0](v1, MEMORY[0x1E69E6158]);
    v8 = sub_1D4579E74(v6, v7, &v32);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D4576000, v2, v3, "Supported languages are %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1DA6DAEF0](v5, -1, -1);
    MEMORY[0x1DA6DAEF0](v4, -1, -1);
  }

  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[24];
  v12 = v0[22];
  sub_1D45C4CE8();
  v13 = sub_1D45C4CD8();
  v10(v11, v12);
  v14 = [v9 generalASRLanguageForLocale_];

  v15 = sub_1D45C4E98();
  v17 = v16;

  v0[18] = v15;
  v0[19] = v17;
  v18 = swift_task_alloc();
  *(v18 + 16) = v0 + 18;
  v19 = sub_1D457D6B4(sub_1D457D774, v18, v1);

  v20 = sub_1D45C4E08();
  v21 = sub_1D45C5038();
  if (os_log_type_enabled(v20, v21))
  {
    if (v19)
    {
      v22 = "gasr supported";
    }

    else
    {
      v22 = "gasr unsupported";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D4576000, v20, v21, v22, v23, 2u);
    MEMORY[0x1DA6DAEF0](v23, -1, -1);
  }

  if (v19)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v25 = v0[28];
  v26 = v0[26];
  v28 = v0[21];
  v27 = v0[22];

  v25(v26, v27);
  v29 = sub_1D45C4D98();
  (*(*(v29 - 8) + 56))(v28, v24, 3, v29);

  v30 = v0[1];

  return v30();
}

BOOL ICInternalSettingsGetBundleBoolSettingValue(void *a1)
{
  v1 = a1;
  v2 = ICNotesAppBundleIdentifier();
  CFPreferencesAppSynchronize(v2);
  v3 = ICNotesAppBundleIdentifier();
  v4 = NSUserName();
  v5 = CFPreferencesCopyValue(v1, v3, v4, *MEMORY[0x1E695E898]);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      v8 = CFBooleanGetValue(v6) != 0;
    }

    else
    {
      [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"BOOL ICInternalSettingsGetBundleBoolSettingValue(NSString *__strong)" simulateCrash:1 showAlert:0 format:@"Unexpected type id for internal setting %@", v1];
      v8 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1D457D6B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D457D774(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D45C5118() & 1;
  }
}

uint64_t sub_1D457D80C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D457D908, 0, 0);
}

uint64_t sub_1D457D908()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR___ICModelAvailabilityManager_generalASRLock);
  *(swift_task_alloc() + 16) = v1;
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_1D457DA4C(v2 + v3);
  v5 = v0[3];
  os_unfair_lock_unlock((v2 + v4));

  sub_1D457DA90(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D457DA4C(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1D457DA90(a1);
  return sub_1D457DAEC(v3, a1);
}

uint64_t sub_1D457DA90(uint64_t a1)
{
  v2 = type metadata accessor for AppleIntelligenceSupportStatus();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D457DAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSupportStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D457DB50()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1D457DCAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ICInternalSettingsIsAudioTranscriptionEnabled()
{
  if (ICInternalSettingsIsAudioTranscriptionEnabled_onceToken != -1)
  {
    ICInternalSettingsIsAudioTranscriptionEnabled_cold_1();
  }

  return ICInternalSettingsIsAudioTranscriptionEnabled_isEnabled;
}

void __ICInternalSettingsIsAudioTranscriptionEnabled_block_invoke()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v1 BOOLForKey:@"EnableAudioTranscription"])
  {
    v0 = 1;
  }

  else
  {
    v0 = _os_feature_enabled_impl();
  }

  ICInternalSettingsIsAudioTranscriptionEnabled_isEnabled = v0;
}

uint64_t sub_1D457DE54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *ICClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (a1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v13 = &a9;
    if (a3)
    {
      while (1)
      {
        v11 = v13++;
        if (([v9 conformsToProtocol:*v11] & 1) == 0)
        {
          break;
        }

        if (!--a3)
        {
          return v9;
        }
      }

      return 0;
    }
  }

  return v9;
}

uint64_t ICInternalSettingsIsCollapsibleSectionsEnabled()
{
  if (ICInternalSettingsIsCollapsibleSectionsEnabled_onceToken != -1)
  {
    ICInternalSettingsIsCollapsibleSectionsEnabled_cold_1();
  }

  return ICInternalSettingsIsCollapsibleSectionsEnabled_isEnabled;
}

void __ICInternalSettingsIsCollapsibleSectionsEnabled_block_invoke()
{
  if (+[ICDeviceSupport isRunningUnitTests])
  {
    ICInternalSettingsIsCollapsibleSectionsEnabled_isEnabled = 1;
  }

  else
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    if ([v1 BOOLForKey:@"EnableCollapsibleSections"])
    {
      v0 = 1;
    }

    else
    {
      v0 = _os_feature_enabled_impl();
    }

    ICInternalSettingsIsCollapsibleSectionsEnabled_isEnabled = v0;
  }
}

uint64_t TSUDeviceRGBColorSpace()
{
  if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    TSUDeviceRGBColorSpace_cold_1();
  }

  return TSUDeviceRGBColorSpace_sDeviceRGBColorSpace;
}

CGColorSpaceRef __TSUDeviceRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  TSUDeviceRGBColorSpace_sDeviceRGBColorSpace = result;
  return result;
}

void *ICProtocolCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 conformsToProtocol:a1])
  {
    return a2;
  }

  return 0;
}

uint64_t ICInternalSettingsIsMathEnabled()
{
  if (ICInternalSettingsIsMathEnabled_onceToken != -1)
  {
    ICInternalSettingsIsMathEnabled_cold_1();
  }

  return ICInternalSettingsIsMathEnabled_isEnabled;
}

void __ICInternalSettingsIsMathEnabled_block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    ICInternalSettingsIsMathEnabled_isEnabled = 1;
  }

  else
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    ICInternalSettingsIsMathEnabled_isEnabled = [v0 BOOLForKey:@"EnableMath"];
  }
}

uint64_t WeakRef.init(_:)()
{
  v0 = sub_1D457E75C();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1D457E75C()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v0;
}

id ICKeyPathFromSelectors(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = [MEMORY[0x1E695DF70] array];
  v15 = &a9;
  while (a1)
  {
    v11 = NSStringFromSelector(a1);
    [v10 addObject:v11];
    v12 = v15++;
    a1 = *v12;
  }

  v13 = [v10 componentsJoinedByString:@"."];

  return v13;
}

void sub_1D457EA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __ICInternalSettingsIsViewProviderCacheDisabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  ICInternalSettingsIsViewProviderCacheDisabled_isEnabled = [v0 BOOLForKey:@"DisableViewProviderCache"];
}

uint64_t ICInternalSettingsIsViewProviderCacheDisabled()
{
  if (ICInternalSettingsIsViewProviderCacheDisabled_onceToken != -1)
  {
    ICInternalSettingsIsViewProviderCacheDisabled_cold_1();
  }

  return ICInternalSettingsIsViewProviderCacheDisabled_isEnabled;
}

uint64_t ICInternalSettingsIsSelectionAwareFormatBarEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DisableSelectionAwareFormatBar"];

  return v1 ^ 1u;
}

uint64_t ICInternalSettingsIsGraphingEnabled()
{
  if (ICInternalSettingsIsMathEnabled_onceToken != -1)
  {
    ICInternalSettingsIsMathEnabled_cold_1();
  }

  if (ICInternalSettingsIsMathEnabled_isEnabled != 1 || !ICInternalSettingsIsPaperKitMathEnabled())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t ICInternalSettingsIsPaperKitMathEnabled()
{
  if (ICInternalSettingsIsMathEnabled_onceToken != -1)
  {
    ICInternalSettingsIsMathEnabled_cold_1();
  }

  if (ICInternalSettingsIsMathEnabled_isEnabled != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t ICInternalSettingsDefaultToPaperKitAttachments()
{
  v0 = +[ICAppGroupDefaults sharedAppGroupDefaults];
  v1 = [v0 BOOLForKey:@"DefaultToPaperKitAttachments"];

  return v1;
}

__CFString *ICInternalPreferencesChangedNotification()
{
  if (ICIsSandboxModeEnabled())
  {
    v0 = @"com.apple.mobilenotesdebug.internalprefschanged";
  }

  else
  {
    v0 = @"com.apple.mobilenotes.internalprefschanged";
  }

  return v0;
}

void sub_1D457F584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void performBlockOnMainThreadAndWait(void *a1)
{
  block = a1;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v1 = block;
    if (!block)
    {
      goto LABEL_7;
    }

    block[2]();
  }

  else
  {
    v1 = block;
    if (!block)
    {
      goto LABEL_7;
    }

    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v1 = block;
LABEL_7:
}

uint64_t sub_1D457F7F4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1D457F8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D45C4D98();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D457F910(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D45C4D98();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D457F994()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D457F9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3498);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1D45C4FC8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D457FB00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3498);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1D45C4FC8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D457FC30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D457FC70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D457FCA8()
{
  v1 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3490);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = *(v1 + 24);
  v8 = sub_1D45C4FC8();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id ICStringFromCGColor(CGColor *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  ColorSpace = CGColorGetColorSpace(a1);
  v4 = CGColorSpaceCopyName(ColorSpace);
  if (v4)
  {
    [v2 addObject:v4];
    NumberOfComponents = CGColorGetNumberOfComponents(a1);
    Components = CGColorGetComponents(a1);
    if (NumberOfComponents)
    {
      v7 = Components;
      do
      {
        v8 = *v7++;
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.10f", v8];
        [v2 addObject:v9];

        --NumberOfComponents;
      }

      while (NumberOfComponents);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ICStringFromCGColor_cold_1();
    }
  }

  if ([v2 count])
  {
    v11 = [v2 componentsJoinedByString:@""];;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

CGColorRef ICCGColorCreateWithString(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@""];;
  v3 = [v2 mutableCopy];

  if ([v3 count])
  {
    v4 = [v3 firstObject];
    [v3 removeObjectAtIndex:0];
    v5 = CGColorSpaceCreateWithName(v4);
    if (v5)
    {
      v6 = v5;
      if ([v3 count])
      {
        v7 = CGColorSpaceGetNumberOfComponents(v6) + 1;
        if ([v3 count] == v7)
        {
          v8 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
          if (v7)
          {
            for (i = 0; i != v7; ++i)
            {
              v10 = [v3 objectAtIndexedSubscript:i];
              [v10 doubleValue];
              v8[i] = v11;
            }
          }

          v12 = CGColorCreate(v6, v8);
          free(v8);
          goto LABEL_22;
        }

        v15 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          ICCGColorCreateWithString_cold_1(v3, v7, v15);
        }
      }

      else
      {
        v14 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          ICCGColorCreateWithString_cold_2();
        }
      }

      v12 = 0;
LABEL_22:
      CGColorSpaceRelease(v6);
      goto LABEL_23;
    }

    v13 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ICCGColorCreateWithString_cold_3();
    }
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ICCGColorCreateWithString_cold_4();
    }
  }

  v12 = 0;
LABEL_23:

  return v12;
}

CGColorRef ICCGColorCopyInverse(CGColor *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  Components = CGColorGetComponents(a1);
  CGColorGetNumberOfComponents(a1);
  MEMORY[0x1EEE9AC00]();
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3)
  {
    v6 = v3;
    v7 = Components;
    v8 = v5;
    do
    {
      v9 = *v7++;
      *v8++ = 1.0 - v9;
      --v6;
    }

    while (v6);
  }

  v5[v3] = Components[v3];
  ColorSpace = CGColorGetColorSpace(a1);
  return CGColorCreate(ColorSpace, v5);
}

uint64_t ICCGColorEquivalentToColor(CGColor *a1, CGColor *a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  v3 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  CGColorGetColorSpace(a1);
  CGColorGetColorSpace(a2);
  if (CGColorSpaceEqualToColorSpace())
  {
    if (!CGColorEqualToColor(a1, a2))
    {
      NumberOfComponents = CGColorGetNumberOfComponents(a1);
      if (NumberOfComponents != CGColorGetNumberOfComponents(a2))
      {
        return 0;
      }

      Components = CGColorGetComponents(a1);
      v11 = CGColorGetComponents(a2);
      if (NumberOfComponents)
      {
        v12 = NumberOfComponents - 1;
        do
        {
          v13 = *Components++;
          v14 = v13;
          v15 = *v11++;
          v16 = vabdd_f64(v14, v15);
          v18 = v12-- != 0;
          v3 = v16 < 0.00999999978;
        }

        while (v16 < 0.00999999978 && v18);
        return v3;
      }
    }

    return 1;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, a1, 0);
  v8 = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, a2, 0);
  CGColorGetColorSpace(CopyByMatchingToColorSpace);
  CGColorGetColorSpace(v8);
  v3 = 0;
  if (CGColorSpaceEqualToColorSpace())
  {
    v3 = ICCGColorEquivalentToColor(CopyByMatchingToColorSpace, v8);
  }

  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(CopyByMatchingToColorSpace);
  CGColorRelease(v8);
  return v3;
}

id ICDataFromCGImage(CGImage *a1, const __CFString *a2, void *a3)
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v7 = CGImageDestinationCreateWithData(v6, a2, 1uLL, 0);
  if (v7)
  {
    v8 = v7;
    CGImageDestinationAddImage(v7, a1, v5);
    if (CGImageDestinationFinalize(v8))
    {
      CFRelease(v8);
      v9 = [(__CFData *)v6 copy];
      goto LABEL_11;
    }

    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ICDataFromCGImage_cold_1(a2, v11);
    }

    CFRelease(v8);
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ICDataFromCGImage_cold_2(v10);
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

id ICJPEGDataFromCGImage(CGImage *a1)
{
  v2 = [*MEMORY[0x1E6982E58] identifier];
  v3 = ICDataFromCGImage(a1, v2, 0);

  return v3;
}

id ICPNGDataFromCGImage(CGImage *a1)
{
  v2 = [*MEMORY[0x1E6982F28] identifier];
  v3 = ICDataFromCGImage(a1, v2, 0);

  return v3;
}

void sub_1D458237C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D4582610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1D4582868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1D45857B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D4585F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D45870E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D45873D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D458777C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 232), 8);
  _Block_object_dispose((v36 - 184), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1D458A968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *ICSpecificCast(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ([a2 isMemberOfClass:a1])
  {
    return a2;
  }

  return 0;
}

CFTypeRef ICCFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

void *ICCheckedProtocolCast(Protocol *a1, void *a2)
{
  if (!a1)
  {
    [ICAssert handleFailedAssertWithCondition:"protocol" functionName:"id ICCheckedProtocolCast(Protocol * simulateCrash:id<NSObject>)" showAlert:1 format:0, @"Protocol is nil"];
  }

  if (a2 && ([a2 conformsToProtocol:a1] & 1) == 0)
  {
    v4 = objc_opt_class();
    if (a1)
    {
      Name = protocol_getName(a1);
    }

    else
    {
      Name = "<No protocol supplied>";
    }

    [ICAssert handleFailedAssertWithCondition:"src == ((void*)0) || result != ((void*)0)" functionName:"id ICCheckedProtocolCast(Protocol * simulateCrash:id<NSObject>)" showAlert:1 format:0, @"Unexpected object type in checked protocol cast %@ expects %s", v4, Name];
    return 0;
  }

  return a2;
}

void sub_1D458B71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t ICInternalSettingsIsTracingEnabled()
{
  if (ICInternalSettingsIsTracingEnabled_predicate != -1)
  {
    ICInternalSettingsIsTracingEnabled_cold_1();
  }

  return ICInternalSettingsIsTracingEnabled_ICInternalSettingsTraceEnabled;
}

void __ICInternalSettingsIsTracingEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  ICInternalSettingsIsTracingEnabled_ICInternalSettingsTraceEnabled = [v0 BOOLForKey:@"internalSettings.traceEnabled"];
}

id ICNotesErrorForNoManagedObjectContext(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v6 = v5;
  if (v3)
  {
    [v5 setObject:v3 forKey:@"FailureReason"];
  }

  if (v4)
  {
    [v6 setObject:v4 forKey:@"objectID"];
  }

  v7 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = [v6 copy];
  v9 = [v7 initWithDomain:@"com.apple.notes" code:225 userInfo:v8];

  return v9;
}

id ICGenericError()
{
  v0 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.notes" code:-1 userInfo:0];

  return v0;
}

uint64_t ICRectEdgeAtIndex(unint64_t a1)
{
  if (a1 >= 4)
  {
    [ICAssert handleFailedAssertWithCondition:"index < 4" functionName:"ICRectEdge ICRectEdgeAtIndex(NSUInteger)" simulateCrash:1 showAlert:0 format:@"Invalid edge index %lu", a1];
  }

  if (a1 <= 3)
  {
    return (1 << a1);
  }

  else
  {
    return 0;
  }
}

uint64_t ICRectEdgeToIndex(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 8 && ((0x8Bu >> v1))
  {
    return qword_1D45CAA18[v1];
  }

  [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"NSUInteger ICRectEdgeToIndex(ICRectEdge)" simulateCrash:1 showAlert:0 format:@"Invalid edge %lu", a1];
  return 0x7FFFFFFFFFFFFFFFLL;
}

__CFString *ICImportGroupContainerIdentifier()
{
  if (ICIsSandboxModeEnabled())
  {
    v0 = @"group.com.apple.notesdebug.import";
  }

  else
  {
    v0 = @"group.com.apple.notes.import";
  }

  return v0;
}

id ICDataStoreServiceBundleIdentifier()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = ICNotesAppBundleIdentifier();
  v2 = [v0 stringWithFormat:@"%@.datastore", v1];

  return v2;
}

id ICIntentsExtensionBundleIdentifier()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = ICNotesAppBundleIdentifier();
  v2 = [v0 stringWithFormat:@"%@.IntentsExtension", v1];

  return v2;
}

id ICSharingExtensionBundleIdentifier()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = ICNotesAppBundleIdentifier();
  v2 = [v0 stringWithFormat:@"%@.SharingExtension", v1];

  return v2;
}

id ICQuickLookExtensionBundleIdentifier()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = ICNotesAppBundleIdentifier();
  v2 = [v0 stringWithFormat:@"%@.QuickLookExtension", v1];

  return v2;
}

id ICEditorExtensionBundleIdentifier()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = ICNotesAppBundleIdentifier();
  v2 = [v0 stringWithFormat:@"%@.EditorExtension", v1];

  return v2;
}

void sub_1D45906F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ICInternalSettingsIsAlexandriaEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = +[ICArchive userDefaultsKey];
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t ICInternalSettingsIsAlexandriaDemoModeEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = +[ICArchive demoModeUserDefaultsKey];
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t ICInternalSettingsIsSystemPaperEnabled()
{
  v0 = MGGetSInt32Answer();
  if (v0 == 3)
  {
    return 1;
  }

  if ((v0 - 1) > 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t ICInternalSettingsDefaultToPaperKitPDFsAndScans()
{
  result = ICInternalSettingsIsPDFsInNotesEnabled();
  if (result)
  {
    v1 = +[ICAppGroupDefaults sharedAppGroupDefaults];
    v2 = [v1 BOOLForKey:@"DefaultToPaperKitPDFsAndScans"];

    return v2;
  }

  return result;
}

uint64_t ICInternalSettingsIsPDFsInNotesEnabled()
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"ICUseLegacyPDFAttachments"] ^ 1;

  return v1;
}

uint64_t ICInternalSettingsIsMentionNotificationsDisabled()
{
  v0 = +[ICAppGroupDefaults sharedAppGroupDefaults];
  v1 = [v0 BOOLForKey:@"internalSettings.disableMentionNotifications"];

  return v1;
}

uint64_t ICInternalSettingsIsPageViewControllerCrashWorkaroundDisabled()
{
  v0 = +[ICAppGroupDefaults sharedAppGroupDefaults];
  v1 = [v0 BOOLForKey:@"DisablePageViewControllerCrashWorkaround"];

  return v1;
}

uint64_t ICInternalSettingsSmartFoldersCanIncludeRecentlyDeletedNotes()
{
  v0 = +[ICAppGroupDefaults sharedAppGroupDefaults];
  v1 = [v0 BOOLForKey:@"internalSettings.smartFoldersCanIncludeRecentlyDeletedNotes"];

  return v1;
}

uint64_t ICInternalSettingsIsLockedNotesV1NeoEnabled()
{
  if (+[ICDeviceSupport isRunningUnitTests])
  {
    return 1;
  }

  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v1 BOOLForKey:@"EnableLockedNotesV1Neo"])
  {
    v0 = 1;
  }

  else
  {
    v0 = _os_feature_enabled_impl();
  }

  return v0;
}

uint64_t ICInternalSettingsIsSpotlightSearchSuggestionsEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v0 BOOLForKey:@"SpotlightSearchSuggestions"])
  {
    v1 = 1;
  }

  else
  {
    v1 = _os_feature_enabled_impl();
  }

  return v1;
}

uint64_t ICInternalSettingsIsFCSReportAConcernEnabled()
{
  if (ICInternalSettingsIsFCSReportAConcernEnabled_onceToken != -1)
  {
    ICInternalSettingsIsFCSReportAConcernEnabled_cold_1();
  }

  return ICInternalSettingsIsFCSReportAConcernEnabled_isEnabled;
}

void __ICInternalSettingsIsFCSReportAConcernEnabled_block_invoke()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v1 BOOLForKey:@"Enable FCS Report a Concern"])
  {
    v0 = 1;
  }

  else if (+[ICUtilities isSeedInstall])
  {
    v0 = 0;
  }

  else
  {
    v0 = !+[ICUtilities showInternalInstallUI];
  }

  ICInternalSettingsIsFCSReportAConcernEnabled_isEnabled = v0;
}

uint64_t ICInternalSettingsIsCallRecordingEnabled()
{
  if (ICInternalSettingsIsAudioTranscriptionEnabled_onceToken != -1)
  {
    ICInternalSettingsIsAudioTranscriptionEnabled_cold_1();
  }

  if (ICInternalSettingsIsAudioTranscriptionEnabled_isEnabled != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t ICInternalSettingsIsAudioMastihaEnabled()
{
  if (ICInternalSettingsIsAudioMastihaEnabled_onceToken != -1)
  {
    ICInternalSettingsIsAudioMastihaEnabled_cold_1();
  }

  return ICInternalSettingsIsAudioMastihaEnabled_isEnabled;
}

void __ICInternalSettingsIsAudioMastihaEnabled_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  ICInternalSettingsIsAudioMastihaEnabled_isEnabled = [v0 BOOLForKey:@"EnableMastihaForAudio"];
}

uint64_t ICInternalSettingsIsBlockQuoteEnabled()
{
  if (ICInternalSettingsIsBlockQuoteEnabled_onceToken != -1)
  {
    ICInternalSettingsIsBlockQuoteEnabled_cold_1();
  }

  return ICInternalSettingsIsBlockQuoteEnabled_isEnabled;
}

void __ICInternalSettingsIsBlockQuoteEnabled_block_invoke()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v1 BOOLForKey:@"EnableBlockQuote"])
  {
    v0 = 1;
  }

  else
  {
    v0 = _os_feature_enabled_impl();
  }

  ICInternalSettingsIsBlockQuoteEnabled_isEnabled = v0;
}

uint64_t ICInternalSettingsIsNewNoteAcceleratorEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"EnableNewNoteAccelerator"];

  return v1;
}

uint64_t ICInternalSettingsIsSpotlightInstantAnswersEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"EnableSpotlightInstantAnswers"];

  return v1;
}

uint64_t ICInternalSettingsIsFindPDFsEnabled()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t ICInternalSettingsIsLinkConversionEnabled()
{
  if (ICInternalSettingsIsLinkConversionEnabled_onceToken != -1)
  {
    ICInternalSettingsIsLinkConversionEnabled_cold_1();
  }

  return ICInternalSettingsIsLinkConversionEnabled_isEnabled;
}

void __ICInternalSettingsIsLinkConversionEnabled_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = @"EnableLinkConversion";
  v4[0] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  [v0 registerDefaults:v1];

  if (+[ICDeviceSupport isRunningUnitTests])
  {
    ICInternalSettingsIsLinkConversionEnabled_isEnabled = 1;
  }

  else
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    ICInternalSettingsIsLinkConversionEnabled_isEnabled = [v2 BOOLForKey:@"EnableLinkConversion"];
  }
}

uint64_t ICInternalSettingsIsMathDebugHighlightingEnabled()
{
  if (ICInternalSettingsIsMathDebugHighlightingEnabled_onceToken != -1)
  {
    ICInternalSettingsIsMathDebugHighlightingEnabled_cold_1();
  }

  return ICInternalSettingsIsMathDebugHighlightingEnabled_isEnabled;
}

void __ICInternalSettingsIsMathDebugHighlightingEnabled_block_invoke()
{
  if (ICInternalSettingsIsMathEnabled_onceToken != -1)
  {
    ICInternalSettingsIsMathEnabled_cold_1();
  }

  if (ICInternalSettingsIsMathEnabled_isEnabled)
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    ICInternalSettingsIsMathDebugHighlightingEnabled_isEnabled = [v0 BOOLForKey:@"EnableMathDebugHighlighting"];
  }

  else
  {
    ICInternalSettingsIsMathDebugHighlightingEnabled_isEnabled = 0;
  }
}

uint64_t ICInternalSettingsIsNotesMathEnabled()
{
  if (ICInternalSettingsIsMathEnabled_onceToken != -1)
  {
    ICInternalSettingsIsMathEnabled_cold_1();
  }

  return ICInternalSettingsIsMathEnabled_isEnabled;
}

uint64_t ICInternalSettingsIsScrubbingEnabled()
{
  if (ICInternalSettingsIsMathEnabled_onceToken != -1)
  {
    ICInternalSettingsIsMathEnabled_cold_1();
  }

  if (ICInternalSettingsIsMathEnabled_isEnabled != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t ICInternalSettingsIsEmphasisEnabled()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v1 BOOLForKey:@"EnableEmphasis"];

  return v2;
}

uint64_t ICInternalSettingsIsDoneButtonHidingDisabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DisableDoneButtonHiding"];

  return v1;
}

uint64_t ICInternalSettingsShouldPreserveImportedCallRecordingData()
{
  if (ICInternalSettingsShouldPreserveImportedCallRecordingData_onceToken != -1)
  {
    ICInternalSettingsShouldPreserveImportedCallRecordingData_cold_1();
  }

  return ICInternalSettingsShouldPreserveImportedCallRecordingData_isEnabled;
}

void __ICInternalSettingsShouldPreserveImportedCallRecordingData_block_invoke()
{
  if (ICInternalSettingsIsCallRecordingEnabled())
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    ICInternalSettingsShouldPreserveImportedCallRecordingData_isEnabled = [v0 BOOLForKey:@"PreserveImportedCallRecordingData"];
  }

  else
  {
    ICInternalSettingsShouldPreserveImportedCallRecordingData_isEnabled = 0;
  }
}

uint64_t ICInternalSettingsShouldDisableTranscriptPostProcessing()
{
  if (ICInternalSettingsShouldDisableTranscriptPostProcessing_onceToken != -1)
  {
    ICInternalSettingsShouldDisableTranscriptPostProcessing_cold_1();
  }

  return ICInternalSettingsShouldDisableTranscriptPostProcessing_isEnabled;
}

void __ICInternalSettingsShouldDisableTranscriptPostProcessing_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  ICInternalSettingsShouldDisableTranscriptPostProcessing_isEnabled = [v0 BOOLForKey:@"DisableTranscriptPostProcessing"];
}

uint64_t ICInternalSettingsShouldPostProcessOnlyTranscriptParagraphs()
{
  if (ICInternalSettingsShouldPostProcessOnlyTranscriptParagraphs_onceToken != -1)
  {
    ICInternalSettingsShouldPostProcessOnlyTranscriptParagraphs_cold_1();
  }

  return ICInternalSettingsShouldPostProcessOnlyTranscriptParagraphs_isEnabled;
}

void __ICInternalSettingsShouldPostProcessOnlyTranscriptParagraphs_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  ICInternalSettingsShouldPostProcessOnlyTranscriptParagraphs_isEnabled = [v0 BOOLForKey:@"PostProcessOnlyTranscriptParagraphs"];
}

uint64_t ICInternalSettingsIsGenerationToolEnabled()
{
  if (+[ICDeviceSupport isRunningUnitTests])
  {
    return 1;
  }

  result = _os_feature_enabled_impl();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

uint64_t ICInternalSettingsShouldShowImageGenerationUI()
{
  result = ICInternalSettingsIsGenerationToolEnabled();
  if (result)
  {
    if (ICInternalSettingsShouldShowImageGenerationUI_onceToken != -1)
    {
      ICInternalSettingsShouldShowImageGenerationUI_cold_1();
    }

    v1 = ICInternalSettingsShouldShowImageGenerationUI_imageGenerationController;

    return [v1 shouldShowImageGenerationUI];
  }

  return result;
}

uint64_t __ICInternalSettingsShouldShowImageGenerationUI_block_invoke()
{
  ICInternalSettingsShouldShowImageGenerationUI_imageGenerationController = objc_alloc_init(NSClassFromString(&cfstr_Pkimagegenerat.isa));

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ICInternalSettingsIsDebugUISuppressed()
{
  if (ICInternalSettingsIsDebugUISuppressed_onceToken != -1)
  {
    ICInternalSettingsIsDebugUISuppressed_cold_1();
  }

  return ICInternalSettingsIsDebugUISuppressed_isSuppressed;
}

void __ICInternalSettingsIsDebugUISuppressed_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  ICInternalSettingsIsDebugUISuppressed_isSuppressed = [v0 BOOLForKey:@"SuppressDebugUI"];
}

uint64_t ICInternalSettingsAlignHeadersWithNavTitle()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"AlignHeadersWithNavTitle"];

  return v1;
}

__CFString *NSStringFromICLaunchConfigurationEnvironment(uint64_t a1)
{
  v1 = @"Default";
  if (a1 == 1)
  {
    v1 = @"PurplePerformanceTesting";
  }

  if (a1 == 2)
  {
    return @"UserInterfaceTesting";
  }

  else
  {
    return v1;
  }
}

void sub_1D4593F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D45940B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ICErrorFromNSException(NSException *a1)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E696ABC0];
  v23[0] = @"ExceptionName";
  v3 = [(NSException *)v1 name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v24[0] = v5;
  v23[1] = @"ExceptionReason";
  v6 = [(NSException *)v1 reason];
  v7 = v6;
  v8 = &stru_1F4FCDA88;
  if (v6)
  {
    v8 = v6;
  }

  v24[1] = v8;
  v23[2] = @"ExceptionCallStackSymbols";
  v9 = [(NSException *)v1 callStackSymbols];
  v10 = v9;
  v11 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v11 = v9;
  }

  v24[2] = v11;
  v23[3] = @"ExceptionUserInfo";
  v12 = [(NSException *)v1 userInfo];
  v13 = v12;
  v14 = MEMORY[0x1E695E0F8];
  if (v12)
  {
    v14 = v12;
  }

  v24[3] = v14;
  v23[4] = *MEMORY[0x1E696A578];
  v15 = MEMORY[0x1E696AEC0];
  v16 = [(NSException *)v1 name];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"unknown";
  }

  v19 = [v15 stringWithFormat:@"Uncaught exception with name %@", v18];
  v24[4] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:5];
  v21 = [v2 errorWithDomain:@"com.apple.notes.objc-exception" code:-1 userInfo:v20];

  return v21;
}

id ICErrorFromCPPException(const std::exception *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithCString:(a1->what)(a1) encoding:4];
  v2 = v1;
  v3 = MEMORY[0x1E696ABC0];
  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = &stru_1F4FCDA88;
  }

  v8 = *MEMORY[0x1E696A578];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 errorWithDomain:@"com.apple.notes.cpp-exception" code:-1 userInfo:v5];

  return v6;
}

void sub_1D4595CA0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 2)
  {
    v4 = __cxa_begin_catch(exc_buf);
    ICErrorFromCPPException(v4);
    objc_claimAutoreleasedReturnValue();
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {

      _Unwind_Resume(exc_buf);
    }

    v5 = objc_begin_catch(exc_buf);
    ICErrorFromNSException(v5);
    objc_claimAutoreleasedReturnValue();
    objc_end_catch();
  }

  JUMPOUT(0x1D4595C78);
}

void sub_1D4595F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D459619C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromNotesVersion(uint64_t a1)
{
  result = @"Before2015";
  switch(a1)
  {
    case 0:
      result = @"Fall2015";
      break;
    case 1:
      result = @"Fall2016";
      break;
    case 2:
      result = @"Fall2017";
      break;
    case 3:
      result = @"Fall2018";
      break;
    case 4:
      result = @"Fall2019";
      break;
    case 5:
      result = @"Fall2020";
      break;
    case 6:
      result = @"Spring2021";
      break;
    case 7:
      result = @"Fall2021";
      break;
    case 8:
      result = @"Spring2022";
      break;
    case 9:
      result = @"Fall2022";
      break;
    case 10:
      result = @"Fall2022B";
      break;
    case 11:
      result = @"Winter2022";
      break;
    case 12:
      result = @"Spring2023";
      break;
    case 13:
      result = @"Fall2023";
      break;
    case 14:
      result = @"Spring2024";
      break;
    case 15:
      result = @"Fall2024";
      break;
    case 16:
      return result;
    case 17:
      result = @"Fall2025";
      break;
    default:
      if (a1 == 0x7FFFFFFFFFFFFFFFLL)
      {
        result = @"Unknown";
      }

      break;
  }

  return result;
}

void sub_1D4597460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D45976A4(_Unwind_Exception *a1)
{
  objc_end_catch();
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1D459793C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Block_object_dispose((v29 - 80), 8);
  _Unwind_Resume(a1);
}

void ReachabilityCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E696AD88];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:kReachabilityChangedNotification object:v4];
}

void notificationCallback(uint64_t a1, char a2)
{
  v3 = [MEMORY[0x1E696B098] valueWithPointer:a1];
  v4 = [notificationContexts objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"bugTitle"];
  v6 = [v4 objectForKeyedSubscript:@"bugDescription"];
  if ((a2 & 3) == 1)
  {
    v8 = os_log_create("com.apple.notes", "Assert");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      notificationCallback_cold_1();
    }

    v9 = os_log_create("com.apple.notes", "SimulatedCrash");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      notificationCallback_cold_2();
    }

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v10 setBool:1 forKey:@"DisableAssertAlert"];
  }

  else if ((a2 & 3) == 0)
  {
    v7 = os_log_create("com.apple.notes", "Assert");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      notificationCallback_cold_3();
    }

    if (v5 && v6)
    {
      [ICRadarUtilities createRadarWithTitle:v5 description:v6];
    }
  }

  [notificationContexts removeObjectForKey:v3];
  Current = CFRunLoopGetCurrent();
  CFRunLoopStop(Current);
}

uint64_t ICReindexAlertEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"reindexingAlertEnabled"];

  return v1;
}

void ICEnableSandboxMode()
{
  if (_ICDidInquireSandboxModeEnabled == 1)
  {
    v0 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      ICEnableSandboxMode_cold_2(v0);
    }
  }

  else if (_ICIsSandboxModeEnabled == 1)
  {
    v0 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      ICEnableSandboxMode_cold_1(v0);
    }
  }

  else
  {
    _ICIsSandboxModeEnabled = 1;
    v0 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1D4576000, v0, OS_LOG_TYPE_INFO, "Enabled sandbox mode", v1, 2u);
    }
  }
}

__CFString *ICSearchableIndexName()
{
  if (ICIsSandboxModeEnabled())
  {
    v0 = @"NotesDebug";
  }

  else
  {
    v0 = @"Notes";
  }

  return v0;
}

void sub_1D459B840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D459BA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D459BFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D459D0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D459D6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_5_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

__CFString *ICSettingsBundleID()
{
  if (ICIsSandboxModeEnabled())
  {
    return @"com.apple.mobilenotesdebug";
  }

  else
  {
    return @"com.apple.mobilenotes";
  }
}

uint64_t ICHashWithHashKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  if (!a1)
  {
    return 1;
  }

  v9 = a1;
  result = 1;
  do
  {
    result = v9 - result + 32 * result;
    v11 = v12;
    v12 += 8;
    v9 = *v11;
  }

  while (v9);
  return result;
}

uint64_t ICHashWithArray(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v1;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = objc_opt_class();
          v12 = ICCheckedDynamicCast(v11, v10);
          v13 = ICHashWithArray();
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = objc_opt_class();
            v12 = ICCheckedDynamicCast(v14, v10);
            v13 = ICHashWithDictionary(v12);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = objc_opt_class();
              v12 = ICCheckedDynamicCast(v15, v10);
              v13 = ICHashWithSet(v12);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = objc_opt_class();
                v12 = ICCheckedDynamicCast(v16, v10);
                v13 = ICHashWithOrderedSet(v12);
              }

              else
              {
                v17 = [v10 hash];
                if (v17)
                {
                  goto LABEL_17;
                }

                v12 = [MEMORY[0x1E695DFB0] null];
                v13 = [v12 hash];
              }
            }
          }
        }

        v17 = v13;

LABEL_17:
        v4 = v17 + 31 * v4;
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

uint64_t ICHashWithDictionary(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v1;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v29}];
        v12 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = objc_opt_class();
          v14 = ICCheckedDynamicCast(v13, v12);
          v15 = ICHashWithArray();
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = objc_opt_class();
            v14 = ICCheckedDynamicCast(v16, v12);
            v15 = ICHashWithDictionary();
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = objc_opt_class();
              v14 = ICCheckedDynamicCast(v17, v12);
              v15 = ICHashWithSet(v14);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = objc_opt_class();
                v14 = ICCheckedDynamicCast(v18, v12);
                v15 = ICHashWithOrderedSet(v14);
              }

              else
              {
                v19 = [v12 hash];
                if (v19)
                {
                  goto LABEL_17;
                }

                v14 = [MEMORY[0x1E695DFB0] null];
                v15 = [v14 hash];
              }
            }
          }
        }

        v19 = v15;

LABEL_17:
        v20 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = objc_opt_class();
          v22 = ICCheckedDynamicCast(v21, v20);
          v23 = ICHashWithArray();
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = objc_opt_class();
            v22 = ICCheckedDynamicCast(v24, v20);
            v23 = ICHashWithDictionary();
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = objc_opt_class();
              v22 = ICCheckedDynamicCast(v25, v20);
              v23 = ICHashWithSet(v22);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = objc_opt_class();
                v22 = ICCheckedDynamicCast(v26, v20);
                v23 = ICHashWithOrderedSet(v22);
              }

              else
              {
                v27 = [v20 hash];
                if (v27)
                {
                  goto LABEL_28;
                }

                v22 = [MEMORY[0x1E695DFB0] null];
                v23 = [v22 hash];
              }
            }
          }
        }

        v27 = v23;

LABEL_28:
        v4 += 31 * v19 + v27;
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  return v4;
}

uint64_t ICHashWithSet(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v1;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = objc_opt_class();
          v12 = ICCheckedDynamicCast(v11, v10);
          v13 = ICHashWithArray();
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = objc_opt_class();
            v12 = ICCheckedDynamicCast(v14, v10);
            v13 = ICHashWithDictionary();
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = objc_opt_class();
              v12 = ICCheckedDynamicCast(v15, v10);
              v13 = ICHashWithSet();
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = objc_opt_class();
                v12 = ICCheckedDynamicCast(v16, v10);
                v13 = ICHashWithOrderedSet(v12);
              }

              else
              {
                v17 = [v10 hash];
                if (v17)
                {
                  goto LABEL_17;
                }

                v12 = [MEMORY[0x1E695DFB0] null];
                v13 = [v12 hash];
              }
            }
          }
        }

        v17 = v13;

LABEL_17:
        v4 += v17;
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

uint64_t ICHashWithOrderedSet(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v1;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = objc_opt_class();
          v12 = ICCheckedDynamicCast(v11, v10);
          v13 = ICHashWithArray();
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = objc_opt_class();
            v12 = ICCheckedDynamicCast(v14, v10);
            v13 = ICHashWithDictionary();
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = objc_opt_class();
              v12 = ICCheckedDynamicCast(v15, v10);
              v13 = ICHashWithSet();
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = objc_opt_class();
                v12 = ICCheckedDynamicCast(v16, v10);
                v13 = ICHashWithOrderedSet();
              }

              else
              {
                v17 = [v10 hash];
                if (v17)
                {
                  goto LABEL_17;
                }

                v12 = [MEMORY[0x1E695DFB0] null];
                v13 = [v12 hash];
              }
            }
          }
        }

        v17 = v13;

LABEL_17:
        v4 = v17 + 31 * v4;
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

id catchingException(void *a1)
{
  v1 = a1;
  v1[2]();

  return 0;
}

void sub_1D45A1968(void *a1)
{
  v1 = objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x1D45A1944);
}

Class __getCHSTimelineControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ChronoServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8485468;
    v6 = 0;
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ChronoServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("CHSTimelineController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHSTimelineControllerClass_block_invoke_cold_1();
  }

  getCHSTimelineControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChronoServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D45A3484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D45A42F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__7(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1D45A4558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D45A4B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D45A8C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D45A8EC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1D45AB210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D45AE898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D45AF7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D45AF93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double TSDOffsetForEdgeOfFrame(int a1, double a2, double a3, double a4, double a5)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return CGRectGetMinY(*&a2);
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return CGRectGetMaxY(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidY(*&a2);
  }

  else
  {
    if (!a1)
    {
      return CGRectGetMinX(*&a2);
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return CGRectGetMaxX(*&a2);
      }

      return 0.0;
    }

    return CGRectGetMidX(*&a2);
  }
}

double TSDRectWithPoints(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

double TSDRectWithSizeAlignedToRect(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v17.size.height = a4;
  v17.size.width = a3;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v18 = CGRectStandardize(v17);
  x = v18.origin.x;
  width = v18.size.width;
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  if (!CGRectIsNull(v18))
  {
    switch(a1)
    {
      case 3:
        v21.origin.x = a5;
        v21.origin.y = a6;
        v21.size.width = a7;
        v21.size.height = a8;
        x = CGRectGetMaxX(v21) - width;
        break;
      case 2:
        v20.origin.x = a5;
        v20.origin.y = a6;
        v20.size.width = a7;
        v20.size.height = a8;
        x = CGRectGetMidX(v20) + width * -0.5;
        break;
      case 1:
        v19.origin.x = a5;
        v19.origin.y = a6;
        v19.size.width = a7;
        v19.size.height = a8;
        x = CGRectGetMinX(v19);
        break;
    }

    switch(a2)
    {
      case 3:
        v24.origin.x = a5;
        v24.origin.y = a6;
        v24.size.width = a7;
        v24.size.height = a8;
        CGRectGetMaxY(v24);
        break;
      case 2:
        v23.origin.x = a5;
        v23.origin.y = a6;
        v23.size.width = a7;
        v23.size.height = a8;
        CGRectGetMidY(v23);
        break;
      case 1:
        v22.origin.x = a5;
        v22.origin.y = a6;
        v22.size.width = a7;
        v22.size.height = a8;
        CGRectGetMinY(v22);
        break;
    }
  }

  return x;
}

BOOL TSDNearlyEqualRects(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (vabdd_f64(a1, a5) < 0.01 && vabdd_f64(a2, a6) < 0.01)
  {
    v9 = vabdd_f64(a3, a7) < 0.01;
    return vabdd_f64(a4, a8) < 0.01 && v9;
  }

  return result;
}

BOOL TSDNearlyContainsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v18 = CGRectInset(*&a1, -0.01, -0.01);
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;

  return CGRectContainsRect(v18, *&v12);
}

BOOL TSDRectsOverlapVertically(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxX(v24);
  if (MinX <= v16)
  {
    return MaxX >= v16;
  }

  else
  {
    return v18 >= MinX;
  }
}

BOOL TSDRectsOverlapHorizontally(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinY = CGRectGetMinY(*&a1);
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  v16 = CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  v18 = CGRectGetMaxY(v24);
  if (MinY <= v16)
  {
    return MaxY >= v16;
  }

  else
  {
    return v18 >= MinY;
  }
}

uint64_t TSDLineIntersectsRect(CGFloat a1, CGFloat a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12 = a4;
  v13 = a3;
  while (1)
  {
    v16 = p_ComputeOutcode(a1, a2, a5, a6, a7, a8);
    v17 = p_ComputeOutcode(v13, v12, a5, a6, a7, a8);
    result = 1;
    if (!v16 || !v17)
    {
      break;
    }

    if ((v17 & v16) != 0)
    {
      return 0;
    }

    v19 = (v13 + a1) * 0.5;
    v20 = (v12 + a2) * 0.5;
    v21 = TSDLineIntersectsRect(1, a1, a2, v19, v20, a5, a6, a7, a8);
    a1 = v19;
    a2 = v20;
    v13 = a3;
    v12 = a4;
    if (v21)
    {
      return 1;
    }
  }

  return result;
}

uint64_t p_ComputeOutcode(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  if (a2 <= CGRectGetMaxY(v14))
  {
    v15.origin.x = a3;
    v15.origin.y = a4;
    v15.size.width = a5;
    v15.size.height = a6;
    if (a2 < CGRectGetMinY(v15))
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 > CGRectGetMaxX(v16))
  {
    return v12 | 4;
  }

  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (a1 < CGRectGetMinX(v17))
  {
    return v12 | 8;
  }

  else
  {
    return v12;
  }
}

double TSDNearestPointOnInfiniteLineToPoint(double *a1, double a2, double a3)
{
  v3 = a1[1];
  v4 = a1[2] - *a1;
  v5 = a1[3] - v3;
  v6 = 1.0 / sqrt(v5 * v5 + v4 * v4);
  return *a1 + v4 * v6 * ((a3 - v3) * (v5 * v6) + (a2 - *a1) * (v4 * v6));
}

double TSDSizeWithMaxArea(double result, double a2, double a3, double a4)
{
  if (result * a2 <= a3 * a4)
  {
    return a3;
  }

  return result;
}

double TSDUnionRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 <= 0.0;
  if (a8 > 0.0)
  {
    v8 = 0;
  }

  if (a3 > 0.0 || a4 > 0.0)
  {
    if (v8)
    {
      return a1;
    }

    else if (a1 < a5)
    {
      return a1;
    }
  }

  else if (v8)
  {
    return *MEMORY[0x1E695F058];
  }

  return a5;
}

double TSDHorizontalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmax(MinX, CGRectGetMinX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmin(MaxX, CGRectGetMaxX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmin(MaxY, CGRectGetMaxY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmax(MinY, CGRectGetMinY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

double TSDVerticalSpacingRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MaxX = CGRectGetMaxX(*&a1);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v24 = a7;
  v31.size.height = a8;
  v29 = fmin(MaxX, CGRectGetMaxX(v31));
  v32.origin.x = a1;
  v32.origin.y = a2;
  v32.size.width = a3;
  v32.size.height = a4;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a5;
  v33.origin.y = a6;
  v33.size.width = a7;
  v33.size.height = a8;
  v27 = fmax(MinX, CGRectGetMinX(v33));
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  MinY = CGRectGetMinY(v34);
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.width = v24;
  v35.size.height = a8;
  v16 = fmax(MinY, CGRectGetMinY(v35));
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = v24;
  v37.size.height = a8;
  v18 = fmin(MaxY, CGRectGetMaxY(v37));
  v19 = v29;
  v21 = v18 - v16;
  v22 = v16;

  v20 = v27 - v29;
  *&result = CGRectStandardize(*&v19);
  return result;
}

BOOL TSDIntersectsRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 < a5)
  {
    result = a1 + a3 > a5;
  }

  else
  {
    result = a5 + a7 > a1;
  }

  if (a2 >= a6)
  {
    if (a6 + a8 > a2)
    {
      return result;
    }

    return 0;
  }

  if (a2 + a4 <= a6)
  {
    return 0;
  }

  return result;
}

double TSDMultiplyRectScalar(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = a1;
  if (!CGRectIsInfinite(*&a1))
  {
    v11.origin.x = v9;
    v11.origin.y = a2;
    v11.size.width = a3;
    v11.size.height = a4;
    if (!CGRectIsNull(v11))
    {
      return v9 * a5;
    }
  }

  return v9;
}

double TSDOrthogonalDistance(double a1, double a2, double a3, double a4)
{
  v4 = a1 - a3;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  v5 = a2 - a4;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  return v4 + v5;
}

void TSDDistanceToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  if (a1 < CGRectGetMinX(v16))
  {
    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    if (a2 < CGRectGetMinY(v17))
    {
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      CGRectGetMinX(v18);
LABEL_7:
      v22.origin.x = a3;
      v22.origin.y = a4;
      v22.size.width = a5;
      v22.size.height = a6;
      CGRectGetMinY(v22);
      return;
    }

    v23.origin.x = a3;
    v23.origin.y = a4;
    v23.size.width = a5;
    v23.size.height = a6;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMinX(v24);
    if (a2 <= MaxY)
    {
      return;
    }

LABEL_13:
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    CGRectGetMaxY(v28);
    return;
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  MinY = CGRectGetMinY(v20);
  if (a1 <= MaxX)
  {
    if (a2 >= MinY)
    {
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      if (a2 > CGRectGetMaxY(v29))
      {
        v30.origin.x = a3;
        v30.origin.y = a4;
        v30.size.width = a5;
        v30.size.height = a6;
        CGRectGetMaxY(v30);
      }
    }

    else
    {
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetMinY(v25);
    }

    return;
  }

  if (a2 < MinY)
  {
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    CGRectGetMaxX(v21);
    goto LABEL_7;
  }

  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v15 = CGRectGetMaxY(v26);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMaxX(v27);
  if (a2 > v15)
  {
    goto LABEL_13;
  }
}

double TSDDistanceToRectFromRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  MidX = CGRectGetMidX(*&a1);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MidY = CGRectGetMidY(v23);
  v16 = TSUClamp(MidX, a5, a5 + a7);
  v17 = TSUClamp(MidY, a6, a6 + a8);
  v18 = TSUClamp(v16, a1, a1 + a3);
  v19 = TSUClamp(v17, a2, a2 + a4);
  return sqrt((v17 - v19) * (v17 - v19) + (v16 - v18) * (v16 - v18));
}

double TSDClampPointInRect(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v9 = TSUClamp(a1, a3, a3 + a5);
  TSUClamp(a2, a4, a4 + a6);
  return v9;
}

double TSDCenterOfRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double TSDRectGetMaxPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MaxX = CGRectGetMaxX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  return MaxX;
}

double TSDGrowRectToPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  if (!CGRectIsNull(*&a1))
  {
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    MinX = CGRectGetMinX(v13);
    if (MinX >= a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = MinX;
    }

    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    CGRectGetMaxX(v14);
    v15.origin.x = a1;
    v15.origin.y = a2;
    v15.size.width = a3;
    v15.size.height = a4;
    CGRectGetMinY(v15);
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMaxY(v16);
    return v11;
  }

  return a5;
}

double TSDFlipRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  CGRectGetMidY(*&a1);
  v14.origin.x = a5;
  v14.origin.y = a6;
  v14.size.width = a7;
  v14.size.height = a8;
  CGRectGetMidY(v14);
  return a1;
}

double TSDCenterRectOverRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MidX = CGRectGetMidX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  MidY = CGRectGetMidY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v17 = CGRectGetMidX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v18 = MidY - CGRectGetMidY(v29);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  *&result = CGRectOffset(*&v19, MidX - v17, v18);
  return result;
}

BOOL TSDRectIsFinite(double a1, double a2, double a3, double a4)
{
  v4 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  return (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4;
}

void TSDRectDivide(CGRect *a1, CGRect *a2, CGRectEdge a3, double a4, double a5, double a6, double a7, CGFloat a8)
{
  memset(v8, 0, sizeof(v8));
  if (!a1)
  {
    a1 = v8;
  }

  if (!a2)
  {
    a2 = v8;
  }

  CGRectDivide(*&a4, a1, a2, a8, a3);
}

uint64_t TSDGetCanvasSpaceCorners(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v54[2] = *MEMORY[0x1E69E9840];
  v18 = *(a1 + 16);
  v47 = *a1;
  v48 = v18;
  v49 = *(a1 + 32);
  TSDTransformedCornersOfRect(&v47, &v50, &v52, &v53, v54, a6, a7, a8, a9);
  v55.origin.x = a6;
  v55.origin.y = a7;
  v55.size.width = a8;
  v55.size.height = a9;
  MidX = CGRectGetMidX(v55);
  v56.origin.x = a6;
  v56.origin.y = a7;
  v56.size.width = a8;
  v56.size.height = a9;
  MidY = CGRectGetMidY(v56);
  v21 = 0;
  v22 = 0;
  v23 = MidY * *(a1 + 16) + *a1 * MidX;
  v24 = 1000000.0;
  v25 = MidY * *(a1 + 24) + *(a1 + 8) * MidX;
  v26 = *(a1 + 32) + v23;
  v27 = *(a1 + 40) + v25;
  v28 = &v51;
  do
  {
    v29 = atan2(*v28 - v27, *(v28 - 1) - v26);
    v30 = fmod(v29 * 57.2957795, 360.0);
    if (v30 < 0.0)
    {
      v30 = v30 + 360.0;
    }

    if (v30 == 0.0)
    {
      v30 = 0.0;
    }

    v31 = fabs(360.0 - v30 + -135.0);
    if (v31 < v24)
    {
      v21 = v22;
      v24 = v31;
    }

    ++v22;
    v28 += 2;
  }

  while (v22 != 4);
  *a2 = *(&v50 + v21);
  v32 = (v21 + 2) & 3;
  if (v21 + 2 <= 0)
  {
    v32 = -(-(v21 + 2) & 3);
  }

  *a4 = *(&v50 + v32);
  v33 = *(a1 + 16);
  v47 = *a1;
  v48 = v33;
  v49 = *(a1 + 32);
  v34 = TSDIsTransformFlipped(v47.f64);
  v35 = v21 + 3;
  if (v34)
  {
    v36 = v21 + 1;
  }

  else
  {
    v36 = v21 + 3;
  }

  v37 = v36 & 3;
  if (!v34)
  {
    v35 = v21 + 1;
  }

  v39 = -v36;
  v38 = v39 < 0;
  v40 = v39 & 3;
  if (v38)
  {
    v41 = v37;
  }

  else
  {
    v41 = -v40;
  }

  *a5 = *(&v50 + v41);
  v42 = v35 & 3;
  v43 = -v35;
  v38 = v43 < 0;
  v44 = v43 & 3;
  if (v38)
  {
    v45 = v42;
  }

  else
  {
    v45 = -v44;
  }

  *a3 = *(&v50 + v45);
  return v21;
}

uint64_t TSDMixBOOLs(uint64_t result, unsigned int a2, double a3)
{
  if (a3 > 0.5)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

void TSDMixAnglesInDegrees(long double a1, long double a2, double a3)
{
  v5 = fmod(a1, 360.0);
  if (v5 < 0.0)
  {
    v5 = v5 + 360.0;
  }

  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  v7 = fmod(a2, 360.0);
  if (v7 < 0.0)
  {
    v7 = v7 + 360.0;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if (vabdd_f64(v7, v6) > 180.0)
  {
    if (v6 <= v7)
    {
      v7 = v7 + -360.0;
    }

    else
    {
      v7 = v7 + 360.0;
    }
  }

  fmod(v7 * a3 + v6 * (1.0 - a3), 360.0);
}

double TSDSizeWithMaxSize(double result, double a2, double a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

double TSDTranslatedRectMaximizingOverlapWithRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v34 = a1;
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  if (MaxX > CGRectGetMaxX(v37))
  {
    v38.origin.x = a5;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = a4;
    if (MinX > CGRectGetMinX(v39))
    {
      v40.origin.x = a5;
      v40.origin.y = a6;
      v40.size.width = a7;
      v40.size.height = a8;
      v29 = CGRectGetMaxX(v40);
      v41.origin.x = a1;
      v41.origin.y = a2;
      v41.size.width = a3;
      v41.size.height = a4;
      v30 = v29 - CGRectGetMaxX(v41);
      v42.origin.x = a5;
      v42.origin.y = a6;
      v42.size.width = a7;
      v42.size.height = a8;
      v28 = CGRectGetMinX(v42);
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      v17 = v28 - CGRectGetMinX(v43);
      if (v30 < v17)
      {
        v17 = v30;
      }

      v18 = a1 + v17;
LABEL_11:
      v34 = v18;
      goto LABEL_12;
    }
  }

  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  v19 = CGRectGetMinX(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  if (v19 < CGRectGetMinX(v45))
  {
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v20 = CGRectGetMaxX(v46);
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    if (v20 < CGRectGetMaxX(v47))
    {
      v48.origin.x = a1;
      v48.origin.y = a2;
      v48.size.width = a3;
      v48.size.height = a4;
      v31 = CGRectGetMinX(v48);
      v49.origin.x = a5;
      v49.origin.y = a6;
      v49.size.width = a7;
      v49.size.height = a8;
      v32 = v31 - CGRectGetMinX(v49);
      v50.origin.x = a1;
      v50.origin.y = a2;
      v50.size.width = a3;
      v50.size.height = a4;
      v21 = CGRectGetMaxX(v50);
      v51.origin.x = a5;
      v51.origin.y = a6;
      v51.size.width = a7;
      v51.size.height = a8;
      v22 = v21 - CGRectGetMaxX(v51);
      if (v32 < v22)
      {
        v22 = v32;
      }

      v18 = a1 - v22;
      goto LABEL_11;
    }
  }

LABEL_12:
  v52.origin.x = a5;
  v52.origin.y = a6;
  v52.size.width = a7;
  v52.size.height = a8;
  MaxY = CGRectGetMaxY(v52);
  v53.origin.x = a1;
  v53.origin.y = a2;
  v53.size.width = a3;
  v53.size.height = a4;
  if (MaxY <= CGRectGetMaxY(v53) || (v54.origin.x = a5, v54.origin.y = a6, v54.size.width = a7, v54.size.height = a8, v24 = CGRectGetMinY(v54), v55.origin.x = a1, v55.origin.y = a2, v55.size.width = a3, v55.size.height = a4, v24 <= CGRectGetMinY(v55)))
  {
    v60.origin.x = a5;
    v60.origin.y = a6;
    v60.size.width = a7;
    v60.size.height = a8;
    MinY = CGRectGetMinY(v60);
    v61.origin.x = a1;
    v61.origin.y = a2;
    v61.size.width = a3;
    v61.size.height = a4;
    if (MinY < CGRectGetMinY(v61))
    {
      v62.origin.x = a5;
      v62.origin.y = a6;
      v62.size.width = a7;
      v62.size.height = a8;
      v26 = CGRectGetMaxY(v62);
      v63.origin.x = a1;
      v63.origin.y = a2;
      v63.size.width = a3;
      v63.size.height = a4;
      if (v26 < CGRectGetMaxY(v63))
      {
        v64.origin.x = a1;
        v64.origin.y = a2;
        v64.size.width = a3;
        v64.size.height = a4;
        CGRectGetMinY(v64);
        v65.origin.x = a5;
        v65.origin.y = a6;
        v65.size.width = a7;
        v65.size.height = a8;
        CGRectGetMinY(v65);
        v66.origin.x = a1;
        v66.origin.y = a2;
        v66.size.width = a3;
        v66.size.height = a4;
        CGRectGetMaxY(v66);
        v67.origin.x = a5;
        v67.origin.y = a6;
        v67.size.width = a7;
        v67.size.height = a8;
        CGRectGetMaxY(v67);
      }
    }
  }

  else
  {
    v56.origin.x = a5;
    v56.origin.y = a6;
    v56.size.width = a7;
    v56.size.height = a8;
    CGRectGetMaxY(v56);
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    CGRectGetMaxY(v57);
    v58.origin.x = a5;
    v58.origin.y = a6;
    v58.size.width = a7;
    v58.size.height = a8;
    CGRectGetMinY(v58);
    v59.origin.x = a1;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    CGRectGetMinY(v59);
  }

  return v34;
}

double TSDOriginRotate(double *a1, double a2, double a3)
{
  v5 = __sincos_stret(a3);
  result = v5.__sinval * a2;
  *a1 = v5.__cosval * a2;
  a1[1] = v5.__sinval * a2;
  return result;
}

double TSDNiceAngleFromDelta(long double a1, long double a2)
{
  if (a2 != 0.0)
  {
    return atan2(a2, a1);
  }

  result = 3.14159265;
  if (a1 >= 0.0)
  {
    return 0.0;
  }

  return result;
}

double TSDDeltaFromAngle(double a1)
{
  if (a1 == 0.0)
  {
    return 1.0;
  }

  return __sincos_stret(a1).__cosval;
}

double TSDRotatePoint90Degrees(int a1, double a2, double a3)
{
  if (a1)
  {
    return -a3;
  }

  else
  {
    return a3;
  }
}

double TSDNormalizeDifferenceAngleInDegrees(double a1, double a2)
{
  v2 = fmod(a1 - a2, 360.0);
  if (v2 > 180.0)
  {
    v2 = v2 + -360.0;
  }

  if (v2 < -180.0)
  {
    v2 = v2 + 360.0;
  }

  return fabs(v2);
}

double TSDNormalizeAngleAboutZeroInRadians(double a1)
{
  v1 = fmod(a1 + 3.14159265, 6.28318531);
  if (v1 < 0.0)
  {
    v1 = v1 + 6.28318531;
  }

  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return v1 + -3.14159265;
}

double TSDAngleBetweenPoints(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 - a1;
  v7 = a4 - a2;
  v8 = 1.0 / sqrt(v7 * v7 + v6 * v6);
  v9 = a5 - a1;
  v10 = a6 - a2;
  v11 = 1.0 / sqrt(v10 * v10 + v9 * v9);
  return acos(v7 * v8 * (v10 * v11) + v6 * v8 * (v9 * v11));
}

void TSDRectFromNormalizedSubrect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12.origin.x = a5;
  v12.origin.y = a6;
  v12.size.width = a7;
  v12.size.height = a8;
  CGRectGetMaxX(v12);
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  CGRectGetMaxY(v13);
}

void TSDNormalizedSubrectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMaxX(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetMaxY(v8);
}

double TSDRectSubtractingRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v42 = CGRectIntersection(*&a1, *&a5);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (!CGRectIsNull(v42))
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxY = CGRectGetMaxY(v43);
    v44.origin.x = v11;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = v11;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    v37 = CGRectGetMaxY(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v38 = v37 - CGRectGetMaxY(v46);
    v47.origin.x = v11;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    v33 = v38 * CGRectGetWidth(v47);
    v36 = height;
    v39 = x;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v16 = CGRectGetMinY(v48);
    v49.origin.x = v11;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    v17 = v16 - CGRectGetMinY(v49);
    v50.origin.x = v11;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    v18 = v17 * CGRectGetWidth(v50);
    v19 = v33;
    if (v18 <= v33)
    {
      v35 = MaxY - MinY;
      v21 = CGRectMinYEdge;
    }

    else
    {
      v51.origin.x = v11;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      v20 = CGRectGetMaxY(v51);
      v52.size.height = v36;
      v52.origin.x = v39;
      v52.origin.y = y;
      v52.size.width = width;
      v35 = v20 - CGRectGetMinY(v52);
      v21 = CGRectMaxYEdge;
      v19 = v18;
    }

    v53.origin.x = v11;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    MaxX = CGRectGetMaxX(v53);
    v54.size.height = v36;
    v54.origin.x = v39;
    v54.origin.y = y;
    v54.size.width = width;
    v23 = MaxX - CGRectGetMaxX(v54);
    v55.origin.x = v11;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    v24 = v23 * CGRectGetHeight(v55);
    if (v24 > v19)
    {
      v56.size.height = v36;
      v56.origin.x = v39;
      v56.origin.y = y;
      v56.size.width = width;
      v25 = CGRectGetMaxX(v56);
      v57.origin.x = v11;
      v57.origin.y = a2;
      v57.size.width = a3;
      v57.size.height = a4;
      v21 = CGRectMinXEdge;
      v35 = v25 - CGRectGetMinX(v57);
      v19 = v24;
    }

    v58.size.height = v36;
    v58.origin.x = v39;
    v58.origin.y = y;
    v58.size.width = width;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v11;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    v27 = MinX - CGRectGetMinX(v59);
    v60.origin.x = v11;
    v60.origin.y = a2;
    v60.size.width = a3;
    v60.size.height = a4;
    v28 = CGRectGetHeight(v60);
    v29 = v35;
    if (v27 * v28 > v19)
    {
      v61.origin.x = v11;
      v61.origin.y = a2;
      v61.size.width = a3;
      v61.size.height = a4;
      v30 = CGRectGetMaxX(v61);
      v62.size.height = v36;
      v62.origin.x = v39;
      v62.origin.y = y;
      v62.size.width = width;
      v29 = v30 - CGRectGetMinX(v62);
      v21 = CGRectMaxXEdge;
    }

    memset(&remainder, 0, sizeof(remainder));
    memset(&slice, 0, sizeof(slice));
    v63.origin.x = v11;
    v63.origin.y = a2;
    v63.size.width = a3;
    v63.size.height = a4;
    CGRectDivide(v63, &slice, &remainder, v29, v21);
    return remainder.origin.x;
  }

  return v11;
}

double TSDSizeWithAspectRatio(int a1, double result, double a3, double a4, double a5)
{
  v5 = result == a4 && a3 == a5;
  if (!v5 && a4 != 0.0 && a5 != 0.0 && a4 != 3.40282347e38 && a5 != 3.40282347e38)
  {
    if (a1)
    {
      v6 = sqrt(a5 * a5 + a4 * a4);
      return a4 / v6 * (a3 * (a5 / v6) + result * (a4 / v6));
    }

    else if (vabdd_f64(result, a4) < 0.01)
    {
      return a3 * a4 / a5;
    }
  }

  return result;
}

double TSDSizeExpandedToMatchAspectRatio(double result, double a2, double a3, double a4)
{
  v4 = result != a3;
  if (a2 != a4)
  {
    v4 = 1;
  }

  v5 = a3 <= 0.0 || !v4;
  if (!v5 && a4 > 0.0)
  {
    v6 = a3 / a4;
    if (v6 > result / a2)
    {
      return a2 * v6;
    }
  }

  return result;
}

double TSDScaleSizeWithinSize(double a1, double a2, double a3, double a4)
{
  if (a1 / a2 < a3 / a4)
  {
    return a1 * (a4 / a2);
  }

  return a3;
}

double TSDShrinkSizeToFitInSize(double result, double a2, double a3, double a4)
{
  if (result <= a3)
  {
    v4 = a2 == a4;
    v5 = a2 < a4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (!v5 && !v4)
  {
    if (result / a2 <= a3 / a4)
    {
      if (result / a2 < a3 / a4)
      {
        return result * (a4 / a2);
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double TSDFitOrFillSizeInSize(int a1, double a2, double a3, double a4, double a5)
{
  v5 = a4 / a2;
  v6 = a5 / a3;
  if (v5 < v6 == a1)
  {
    v5 = v6;
  }

  return a2 * v5;
}

double TSDFitOrFillSizeInRect(int a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v9 = a7 / a3;
  if (a6 / a2 < a7 / a3 != a1)
  {
    v9 = a6 / a2;
  }

  return TSDCenterRectOverRect(0.0, 0.0, a2 * v9, a3 * v9, a4, a5, a6, a7);
}

void TSDScaleRectAroundPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -a5, -a6);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, a7, a7);
  memset(&v15, 0, sizeof(v15));
  t1 = v17;
  v12 = v16;
  CGAffineTransformConcat(&v14, &t1, &v12);
  v12 = v17;
  CGAffineTransformInvert(&t1, &v12);
  CGAffineTransformConcat(&v15, &v14, &t1);
  v14 = v15;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectApplyAffineTransform(v18, &v14);
}

void TSDScaledRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MidY = CGRectGetMidY(v13);

  TSDScaleRectAroundPoint(a1, a2, a3, a4, MidX, MidY, a5);
}

void TSDVisibleUnscaledRectForNewScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, double a8)
{
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, a7, a7);
  v17 = v19;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformInvert(&v18, &v17);
  v17 = v18;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v21 = CGRectApplyAffineTransform(v20, &v17);
  v14 = vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, a6), *&v18.a, a5));
  TSDScaleRectAroundPoint(v21.origin.x, v21.origin.y, v21.size.width, v21.size.height, v14.f64[0], v14.f64[1], a7 / a8);
}

double TSDRectByExpandingBoundingRectToContentRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v25 = a1 + a5 * a3;
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMaxY(v37);
  v26 = a1 + MaxX * a3;
  if (v25 >= v26)
  {
    v27 = a1 + MaxX * a3;
  }

  else
  {
    v27 = v25;
  }

  if (v25 >= v26)
  {
    v26 = v25;
  }

  v35 = v27;
  v28 = v26 - v27;
  v29 = -a9 / a11 * (v26 - v27);
  v38.origin.x = -a9 / a11;
  v38.origin.y = -a10 / a12;
  v38.size.width = 1.0 / a11;
  v38.size.height = 1.0 / a12;
  v30 = CGRectGetMaxX(v38);
  v39.origin.x = -a9 / a11;
  v39.origin.y = -a10 / a12;
  v39.size.width = 1.0 / a11;
  v39.size.height = 1.0 / a12;
  CGRectGetMaxY(v39);
  if (v29 >= v30 * v28)
  {
    v31 = v30 * v28;
  }

  else
  {
    v31 = v29;
  }

  return v35 + v31;
}

double TSDClampRectToRect(double a1, double a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v23 = a5 + a7;
  v15 = TSUClamp(a1, a5, a5 + a7);
  v21 = a6;
  v22 = a6 + a8;
  TSUClamp(a2, a6, a6 + a8);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  MaxY = CGRectGetMaxY(v25);
  v18 = TSUClamp(MaxX, a5, v23);
  TSUClamp(MaxY, v21, v22);
  if (v15 >= v18)
  {
    return v18;
  }

  else
  {
    return v15;
  }
}

double TSDAliasRound(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double TSDAliasRoundedPoint(double a1)
{
  v1 = floor(a1);
  v2 = a1 - v1;
  result = ceil(a1);
  if (v2 < 0.49)
  {
    return v1;
  }

  return result;
}

double TSDRoundedPoint(double a1, double a2)
{
  v3 = TSURound(a1);
  TSURound(a2);
  return v3;
}

double TSDRoundedPointForScale(double a1, double a2, double a3)
{
  v4 = a2 * a3;
  v5 = TSURound(a1 * a3);
  TSURound(v4);
  return 1.0 / a3 * v5;
}

double TSDRoundedSize(double a1, double a2)
{
  v3 = TSURound(a1);
  TSURound(a2);
  return v3;
}

double TSDRoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 != 0.0 && !CGRectIsNull(*&a1))
  {
    v23.origin.x = TSDMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    MinX = CGRectGetMinX(v23);
    v15 = TSURound(MinX);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MinY = CGRectGetMinY(v24);
    v17 = TSURound(MinY);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MaxX = CGRectGetMaxX(v25);
    v19 = TSURound(MaxX) - v15;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MaxY = CGRectGetMaxY(v26);
    v21 = TSURound(MaxY);
    return TSDMultiplyRectScalar(v15, v17, v19, v21 - v17, 1.0 / a5);
  }

  return v8;
}

double TSDAliasRoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 != 0.0 && !CGRectIsNull(*&a1))
  {
    v34.origin.x = TSDMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    MinX = CGRectGetMinX(v34);
    v15 = floor(MinX);
    v16 = MinX - v15;
    v17 = ceil(MinX);
    if (v16 >= 0.49)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    MinY = CGRectGetMinY(v35);
    v20 = floor(MinY);
    v21 = MinY - v20;
    v22 = ceil(MinY);
    if (v21 >= 0.49)
    {
      v23 = v22;
    }

    else
    {
      v23 = v20;
    }

    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxX = CGRectGetMaxX(v36);
    v25 = floor(MaxX);
    v26 = MaxX - v25;
    v27 = ceil(MaxX);
    if (v26 < 0.49)
    {
      v27 = v25;
    }

    v33 = v27 - v18;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MaxY = CGRectGetMaxY(v37);
    v29 = floor(MaxY);
    v30 = MaxY - v29;
    v31 = ceil(MaxY);
    if (v30 < 0.49)
    {
      v31 = v29;
    }

    return TSDMultiplyRectScalar(v18, v23, v33, v31 - v23, 1.0 / a5);
  }

  return v8;
}

double TSDRoundedMinX(double a1, double a2, double a3, double a4)
{
  MinX = CGRectGetMinX(*&a1);

  return TSURound(MinX);
}

double TSDRoundedMidX(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = TSURound(a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MaxX = CGRectGetMaxX(v13);
  v10 = (v8 + TSURound(MaxX)) * 0.5;

  return TSURound(v10);
}

double TSDRoundedMaxX(double a1, double a2, double a3, double a4)
{
  MaxX = CGRectGetMaxX(*&a1);

  return TSURound(MaxX);
}

double TSDRoundedMinY(double a1, double a2, double a3, double a4)
{
  MinY = CGRectGetMinY(*&a1);

  return TSURound(MinY);
}

double TSDRoundedMidY(CGFloat a1, double a2, CGFloat a3, CGFloat a4)
{
  v8 = TSURound(a2);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MaxY = CGRectGetMaxY(v13);
  v10 = (v8 + TSURound(MaxY)) * 0.5;

  return TSURound(v10);
}

double TSDRoundedMaxY(double a1, double a2, double a3, double a4)
{
  MaxY = CGRectGetMaxY(*&a1);

  return TSURound(MaxY);
}

uint64_t TSDRectHasInfComponents(double a1, double a2, double a3, double a4)
{
  v4 = fabs(a3) == INFINITY;
  result = 1;
  if (fabs(a4) != INFINITY)
  {
    v6 = fabs(a1) == INFINITY;
    if (fabs(a2) == INFINITY)
    {
      v6 = 1;
    }

    return v4 || v6;
  }

  return result;
}

double TSDSanitizeRect(double result)
{
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0.0;
  }

  return result;
}

double TSDSanitizePoint(double result)
{
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0.0;
  }

  return result;
}

double TSDSanitizeSize(double result)
{
  if ((*&result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0.0;
  }

  return result;
}

CGPath *TSDCreatePathFromTransformedRect(const CGAffineTransform *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGPathAddRect(Mutable, a1, v12);
  return Mutable;
}

float64x2_t TSDTransformedCornersOfRect(float64x2_t *a1, double *a2, double *a3, double *a4, double *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MinX = CGRectGetMinX(*&a6);
  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  MaxY = CGRectGetMaxY(v25);
  *a2 = MinX;
  a2[1] = MinY;
  *a3 = MinX;
  a3[1] = MaxY;
  *a4 = MaxX;
  a4[1] = MaxY;
  *a5 = MaxX;
  a5[1] = MinY;
  *a2 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a2[1]), *a1, *a2));
  *a3 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a3[1]), *a1, *a3));
  *a4 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a4[1]), *a1, *a4));
  result = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a5[1]), *a1, *a5));
  *a5 = result;
  return result;
}

CGAffineTransform *TSDAffineTransformShear@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  t1.a = 1.0;
  t1.b = a3;
  t1.c = a4;
  __asm { FMOV            V0.2D, #1.0 }

  *&t1.d = _Q0;
  t1.ty = 1.0;
  v9 = a1[1];
  *&v11.a = *a1;
  *&v11.c = v9;
  *&v11.tx = a1[2];
  return CGAffineTransformConcat(a2, &t1, &v11);
}

long double TSDTransformAngle(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 * a1[2] - *a1 * a1[3] > 0.0)
  {
    v2 = -v2;
    v1 = -v1;
  }

  return atan2(v1, v2) * 57.2957795;
}

double TSDTransformIsValid(uint64_t a1)
{
  v1 = fabs(*a1 * *(a1 + 24) - *(a1 + 8) * *(a1 + 16));
  result = 0.0;
  if (v1 >= 0.001 && *&v1 <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 32) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return 1.0;
  }

  return result;
}

CGAffineTransform *TSDTransformNormalizeScale@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  v2 = 1.0 / sqrt(*(a1 + 8) * *(a1 + 8) + *a1 * *a1);
  v3 = 1.0 / sqrt(*(a1 + 24) * *(a1 + 24) + *(a1 + 16) * *(a1 + 16));
  v4 = *(a1 + 16);
  *&v6.a = *a1;
  *&v6.c = v4;
  *&v6.tx = *(a1 + 32);
  return CGAffineTransformScale(a2, &v6, v2, v3);
}

BOOL TSDIsTransformAxisAlignedWithObjectSize(double *a1, double a2, double a3)
{
  v3 = 1.0 / (a2 * 0.5);
  v4 = 1.0 / (a3 * 0.5);
  if (v3 >= v4)
  {
    v3 = v4;
  }

  v5 = fabs(a1[3]);
  if (fabs(*a1) < v3 && v5 < v3)
  {
    return 1;
  }

  if (fabs(a1[1]) >= v3)
  {
    return 0;
  }

  return fabs(a1[2]) < v3;
}

BOOL TSDIsTransformAxisAlignedWithThreshold(double *a1, double a2)
{
  if (fabs(*a1) < a2 && fabs(a1[3]) < a2)
  {
    return 1;
  }

  if (fabs(a1[1]) >= a2)
  {
    return 0;
  }

  return fabs(a1[2]) < a2;
}

BOOL TSDIsTransformAxisAligned(double *a1)
{
  if (fabs(*a1) < 1.0e-12 && fabs(a1[3]) < 1.0e-12)
  {
    return 1;
  }

  if (fabs(a1[1]) >= 1.0e-12)
  {
    return 0;
  }

  return fabs(a1[2]) < 1.0e-12;
}

CGAffineTransform *TSDAffineTransformForFlips@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v13 = MEMORY[0x1E695EFD0];
  v14 = *MEMORY[0x1E695EFD0];
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  *(a3 + 16) = v15;
  v16 = *(v13 + 32);
  *(a3 + 32) = v16;
  if (result)
  {
    v31 = v15;
    v32 = v14;
    v17 = a4;
    v18 = a5;
    v30 = v16;
    v19 = a6;
    MinX = CGRectGetMinX(*(&a7 - 3));
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    MaxX = CGRectGetMaxX(v35);
    *&v34.a = v32;
    *&v34.c = v31;
    *&v34.tx = v30;
    CGAffineTransformTranslate(a3, &v34, MinX + MaxX, 0.0);
    v22 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v22;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, -1.0, 1.0);
    v23 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v23;
    *(a3 + 32) = *&v34.tx;
  }

  if (a2)
  {
    v36.origin.x = a4;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = a4;
    v37.origin.y = a5;
    v37.size.width = a6;
    v37.size.height = a7;
    MaxY = CGRectGetMaxY(v37);
    v26 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v26;
    *&v33.tx = *(a3 + 32);
    CGAffineTransformTranslate(&v34, &v33, 0.0, MinY + MaxY);
    v27 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v27;
    *(a3 + 32) = *&v34.tx;
    v28 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v28;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, 1.0, -1.0);
    v29 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v29;
    *(a3 + 32) = *&v34.tx;
  }

  return result;
}

CGAffineTransform *TSDTransformFromTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v6 = a2[1];
  *&v12.a = *a2;
  *&v12.c = v6;
  *&v12.tx = a2[2];
  CGAffineTransformInvert(&t1, &v12);
  v7 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v7;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  v8 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v8;
  *&t1.tx = a2[2];
  return CGAffineTransformConcat(a3, &v12, &t1);
}

CGAffineTransform *TSDTransformInTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v5 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v5;
  *&t1.tx = a2[2];
  v6 = a1[1];
  *&v9.a = *a1;
  *&v9.c = v6;
  *&v9.tx = a1[2];
  CGAffineTransformConcat(&v11, &t1, &v9);
  v7 = a2[1];
  *&v9.a = *a2;
  *&v9.c = v7;
  *&v9.tx = a2[2];
  CGAffineTransformInvert(&t1, &v9);
  return CGAffineTransformConcat(a3, &v11, &t1);
}

CGAffineTransform *TSDTransformConvertForNewOrigin@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, -a3, -a4);
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v13, a3, a4);
  t1 = v13;
  v8 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v8;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  t1 = v14;
  return CGAffineTransformConcat(a2, &v12, &t1);
}

CGAffineTransform *TSDTransformMakeFree@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, CGFloat a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v18 = TSDDistance(a3, a4, a5, a6);
  v38 = a7;
  v19 = TSDDistance(a7, a8, a9, a10);
  if (v18 < 0.0001 || v19 < 0.0001)
  {

    return CGAffineTransformMakeTranslation(a2, a7 - a3, a8 - a4);
  }

  else
  {
    sx = v19 / v18;
    v20 = TSDSubtractPoints(a3, a4, a5);
    v22 = TSDAngleFromDelta(v20, v21);
    v23 = TSDSubtractPoints(a7, a8, a9);
    v25 = TSDAngleFromDelta(v23, v24);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    CGAffineTransformMakeTranslation(a2, -a3, -a4);
    CGAffineTransformMakeRotation(&t2, -v22);
    v26 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v26;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v27 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v27;
    *(a2 + 32) = *&v41.tx;
    v28 = 1.0;
    if (!a1)
    {
      v28 = sx;
    }

    CGAffineTransformMakeScale(&t2, sx, v28);
    v29 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v29;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v30 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v30;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeRotation(&t2, v25);
    v31 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v31;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v32 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v32;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeTranslation(&t2, v38, a8);
    v33 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v33;
    *&t1.tx = *(a2 + 32);
    result = CGAffineTransformConcat(&v41, &t1, &t2);
    v35 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v35;
    *(a2 + 32) = *&v41.tx;
  }

  return result;
}

CGFloat TSDTransformMakeAxisAligned@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, double a10, double a11, double a12)
{
  v19 = TSDDistance(a2, a3, a4, a5);
  v20 = TSDDistance(a6, a7, a8, a9);
  if (v19 < 0.0001 || v20 < 0.0001)
  {

    CGAffineTransformMakeTranslation(a1, a6 - a2, a7 - a3);
  }

  else
  {
    v21 = v20 / v19;
    if (v21 >= a10)
    {
      if (v21 > a11)
      {
        v21 = a11 + (v21 - a11) * a12;
      }
    }

    else
    {
      v21 = (v21 - a10) * a12 * 0.5 + a10;
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    CGAffineTransformMakeTranslation(a1, (a2 + a4) * -0.5, (a3 + a5) * -0.5);
    CGAffineTransformMakeScale(&t2, v21, v21);
    v23 = *(a1 + 16);
    *&t1.a = *a1;
    *&t1.c = v23;
    *&t1.tx = *(a1 + 32);
    CGAffineTransformConcat(&v31, &t1, &t2);
    v24 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v24;
    *(a1 + 32) = *&v31.tx;
    CGAffineTransformMakeTranslation(&t2, (a6 + a8) * 0.5, (a7 + a9) * 0.5);
    v25 = *(a1 + 16);
    *&t1.a = *a1;
    *&t1.c = v25;
    *&t1.tx = *(a1 + 32);
    CGAffineTransformConcat(&v31, &t1, &t2);
    v26 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v26;
    result = v31.tx;
    *(a1 + 32) = *&v31.tx;
  }

  return result;
}

CGFloat TSDTransformConvertingRectToRectAtPercent@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, double a9)
{
  v14 = TSDSubtractPoints(a5, a6, a2);
  v15 = a7 / a3;
  v16 = a8 / a4;
  v18 = TSDMultiplyPointScalar(v14, v17, a9);
  v20 = v19;
  v21 = TSDMixSizes(1.0, 1.0, v15, v16, a9);
  v23 = v22;
  v24 = MEMORY[0x1E695EFD0];
  v25 = *MEMORY[0x1E695EFD0];
  v26 = *(MEMORY[0x1E695EFD0] + 16);
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v26;
  v27 = *(v24 + 32);
  *(a1 + 32) = v27;
  *&v32.a = v25;
  *&v32.c = v26;
  *&v32.tx = v27;
  CGAffineTransformTranslate(a1, &v32, v18, v20);
  v28 = *(a1 + 16);
  *&v31.a = *a1;
  *&v31.c = v28;
  *&v31.tx = *(a1 + 32);
  CGAffineTransformScale(&v32, &v31, v21, v23);
  v29 = *&v32.c;
  *a1 = *&v32.a;
  *(a1 + 16) = v29;
  result = v32.tx;
  *(a1 + 32) = *&v32.tx;
  return result;
}

double TSD_CGAffineTransformDecompose(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sqrt(v4 * v4 + *a1 * *a1);
  v8 = sqrt(v6 * v6 + v5 * v5);
  v9 = *a1 * v6 - v5 * v4;
  v10 = -v8;
  v11 = -v7;
  if (*a1 < v6)
  {
    v10 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v9 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v9 < 0.0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v14;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformScale(&v21, &v20, 1.0 / v12, 1.0 / v13);
  v15 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v21.tx;
  v16 = atan2(*(a1 + 8), *a1);
  v17 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v17;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformRotate(&v21, &v20, -v16);
  v18 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v18;
  *(a1 + 32) = *&v21.tx;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

CGFloat TSD_CGAffineTransformCompose@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  *&v13.a = *a2;
  *&v13.c = v6;
  *&v13.tx = *(a2 + 32);
  CGAffineTransformRotate(a2, &v13, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  *&v12.a = *a2;
  *&v12.c = v9;
  *&v12.tx = *(a2 + 32);
  CGAffineTransformScale(&v13, &v12, v7, v8);
  v10 = *&v13.c;
  *a2 = *&v13.a;
  *(a2 + 16) = v10;
  result = v13.tx;
  *(a2 + 32) = *&v13.tx;
  return result;
}

double TSDTransformDecompose(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v17[9] = *MEMORY[0x1E69E9840];
  v11 = a1[1];
  v16[0] = *a1;
  v16[1] = v11;
  v16[2] = a1[2];
  TSD_CGAffineTransformDecompose(v16, v17);
  v12 = v17[8];
  v13 = v17[1];
  v14 = v17[2];
  *a2 = v17[7];
  *a3 = v12;
  *a4 = v14;
  result = *v17;
  *a5 = v17[0];
  *a6 = v13;
  return result;
}

uint64_t TSDTransform3DDecompose(_OWORD *a1, CGFloat *a2, CGFloat *a3, CGFloat *a4, CGFloat *a5, CGFloat *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a1[5];
  *&v27.m31 = a1[4];
  *&v27.m33 = v12;
  v13 = a1[7];
  *&v27.m41 = a1[6];
  *&v27.m43 = v13;
  v14 = a1[1];
  *&v27.m11 = *a1;
  *&v27.m13 = v14;
  v15 = a1[3];
  *&v27.m21 = a1[2];
  *&v27.m23 = v15;
  v16 = MEMORY[0x1DA6D98F0](&v27);
  if (v16)
  {
    memset(&v25, 0, sizeof(v25));
    v17 = a1[5];
    *&v27.m31 = a1[4];
    *&v27.m33 = v17;
    v18 = a1[7];
    *&v27.m41 = a1[6];
    *&v27.m43 = v18;
    v19 = a1[1];
    *&v27.m11 = *a1;
    *&v27.m13 = v19;
    v20 = a1[3];
    *&v27.m21 = a1[2];
    *&v27.m23 = v20;
    CATransform3DGetAffineTransform(&v25, &v27);
    v26 = v25;
    TSD_CGAffineTransformDecompose(&v26, &v27);
    m31 = v27.m31;
    m12 = v27.m12;
    m13 = v27.m13;
    *a2 = v27.m24;
    *a3 = m31;
    *a4 = m13;
    *a5 = v27.m11;
    *a6 = m12;
  }

  return v16;
}

void TSDTransformMixAffineTransforms(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v16 = *a1;
  v17[0] = v7;
  v17[1] = a1[2];
  TSD_CGAffineTransformDecompose(&v16, &v18);
  v8 = a2[1];
  v15[0] = *a2;
  v15[1] = v8;
  v15[2] = a2[2];
  TSD_CGAffineTransformDecompose(v15, &v16);
  if ((v18.f64[0] >= 0.0 || *(&v16 + 1) >= 0.0) && (v18.f64[1] >= 0.0 || *&v16 >= 0.0))
  {
    v9 = __x;
  }

  else
  {
    v18 = vnegq_f64(v18);
    v9 = __x + dbl_1D45CABD0[__x < 0.0];
  }

  v10 = fmod(v9, 6.28318531);
  __x = v10;
  v11 = fmod(*v17, 6.28318531);
  *v17 = v11;
  if (vabdd_f64(v10, v11) > 3.14159265)
  {
    v12 = v10 <= v11;
    if (v10 > v11)
    {
      v11 = v10;
    }

    v13 = &v16;
    if (!v12)
    {
      v13 = &v18;
    }

    v13[1].f64[0] = v11 + -6.28318531;
  }

  for (i = 0; i != 9; ++i)
  {
    v18.f64[i] = v18.f64[i] + (*(&v17[-1] + i * 8) - v18.f64[i]) * a4;
  }

  TSD_CGAffineTransformCompose(&v18, a3);
}

BOOL TSDTransform3DNearlyEqualToTransform(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[7];
  v11[6] = a2[6];
  v11[7] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v9 = a2[3];
  v11[2] = a2[2];
  v11[3] = v9;
  return TSDTransform3DNearlyEqualToTransformWithTolerance(v12, v11, 0.01);
}

uint64_t TSUDeviceCMYKColorSpace()
{
  if (TSUDeviceCMYKColorSpace_sDeviceCMYKDispatchOnce != -1)
  {
    TSUDeviceCMYKColorSpace_cold_1();
  }

  return TSUDeviceCMYKColorSpace_sDeviceCMYKColorSpace;
}

CGColorSpaceRef __TSUDeviceCMYKColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceCMYK();
  TSUDeviceCMYKColorSpace_sDeviceCMYKColorSpace = result;
  return result;
}

uint64_t TSUDeviceGrayColorSpace()
{
  if (TSUDeviceGrayColorSpace_sDeviceGrayDispatchOnce[0] != -1)
  {
    TSUDeviceGrayColorSpace_cold_1();
  }

  return TSUDeviceGrayColorSpace_sDeviceGrayColorSpace;
}

CGColorSpaceRef __TSUDeviceGrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceGray();
  TSUDeviceGrayColorSpace_sDeviceGrayColorSpace = result;
  return result;
}

CGColorRef TSUCGColorCreateDeviceRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    TSUDeviceRGBColorSpace_cold_1();
  }

  return CGColorCreate(TSUDeviceRGBColorSpace_sDeviceRGBColorSpace, components);
}

CGColorRef TSUCGColorCreateDeviceGray(CGFloat a1, CGFloat a2)
{
  components[2] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  if (TSUDeviceGrayColorSpace_sDeviceGrayDispatchOnce[0] != -1)
  {
    TSUDeviceGrayColorSpace_cold_1();
  }

  return CGColorCreate(TSUDeviceGrayColorSpace_sDeviceGrayColorSpace, components);
}

CGPatternRef TSUCGPatternCreateWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  CGImageRetain(a1);
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (a2)
  {
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    v9 = a2[2];
  }

  else
  {
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v13 = *MEMORY[0x1E695EFD0];
    v14 = v10;
    v9 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v15 = v9;
  v16.size.height = Height;
  v16.size.width = Width;
  *&v12.a = v13;
  *&v12.c = v14;
  *&v12.tx = v9;
  v16.origin.x = v4;
  v16.origin.y = v5;
  return CGPatternCreate(a1, v16, &v12, Width, v16.size.height, kCGPatternTilingConstantSpacing, 1, &TSUCGPatternCreateWithImageAndTransform_sCallbacks);
}

void TSUDrawImageAtOriginInContext(CGImage *a1, CGContext *a2)
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = v4;
  v9 = v5;
  v10 = Width;

  CGContextDrawImage(a2, *&v8, a1);
}

CGColorRef TSUCGColorCreatePatternWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = TSUCGPatternCreateWithImageAndTransform(a1, a2);
  Pattern = CGColorSpaceCreatePattern(0);
  v6[0] = 1.0;
  v4 = CGColorCreateWithPattern(Pattern, v2, v6);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v2);
  return v4;
}

uint64_t TSUHSBFromCGColorRef(CGColor *a1, double *a2, double *a3, double *a4, CGFloat *a5)
{
  *a5 = 0.0;
  *a4 = 0.0;
  *a3 = 0.0;
  *a2 = 0.0;
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB || CGColorGetNumberOfComponents(a1) != 4)
  {
    return 0;
  }

  *a5 = CGColorGetAlpha(a1);
  Components = CGColorGetComponents(a1);
  TSURGBToHSB(a2, a3, a4, *Components, Components[1], Components[2]);
  return 1;
}

double TSURGBToHSB(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

double *TSUHSBToRGB(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

double TSUCMYKToRGB(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  *a1 = 1.0 - fmin(a7 + a4 * (1.0 - a7), 1.0);
  *a2 = 1.0 - fmin(a7 + a5 * (1.0 - a7), 1.0);
  result = 1.0 - fmin(a7 + a6 * (1.0 - a7), 1.0);
  *a3 = result;
  return result;
}

BOOL TSUColorIsBlack(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  Components = CGColorGetComponents(a1);
  result = 0;
  if (Model > 2)
  {
    if ((Model - 3) >= 3)
    {
      return result;
    }

    NSLog(&cfstr_Tsucolorisblac.isa, Model, a1);
    return 0;
  }

  if (Model)
  {
    if (Model != 1)
    {
      if (Model != 2)
      {
        return result;
      }

      return Components[3] == 1.0;
    }

    if (*Components == 0.0 && Components[1] == 0.0)
    {
      v7 = Components[2];
      return v7 == 0.0;
    }

    return 0;
  }

  v7 = *Components;
  return v7 == 0.0;
}

CGFloat TSUColorLightness(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  switch(Model)
  {
    case kCGColorSpaceModelMonochrome:
      return *CGColorGetComponents(a1);
    case kCGColorSpaceModelCMYK:
      Components = CGColorGetComponents(a1);
      v7 = Components[3];
      v8 = 1.0 - fmin(v7 + *Components * (1.0 - v7), 1.0);
      v9 = 1.0 - fmin(v7 + Components[1] * (1.0 - v7), 1.0);
      v10 = 1.0 - fmin(v7 + Components[2] * (1.0 - v7), 1.0);
      v5 = fmax(fmax(v8, v9), v10) + fmin(fmin(v8, v9), v10);
      return v5 * 0.5;
    case kCGColorSpaceModelRGB:
      v4 = CGColorGetComponents(a1);
      v5 = fmax(fmax(*v4, v4[1]), v4[2]) + fmin(fmin(*v4, v4[1]), v4[2]);
      return v5 * 0.5;
  }

  NSLog(&cfstr_WarningTesting.isa);
  return 0.0;
}

CGContext *TSUCreateRGBABitmapContext(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (TSUDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    TSUDeviceRGBColorSpace_cold_1();
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, TSUDeviceRGBColorSpace_sDeviceRGBColorSpace, 0x2002u);
  CGAffineTransformMakeScale(&v10, a4, a4);
  CGContextConcatCTM(v8, &v10);
  if (a1)
  {
    CGContextTranslateCTM(v8, 0.0, a3);
    CGAffineTransformMakeScale(&v10, 1.0, -1.0);
    CGContextConcatCTM(v8, &v10);
  }

  return v8;
}

CGColorRef TSUCreateCheckerBoardColor(CGColor *a1, CGColor *a2, CGFloat a3, CGFloat a4)
{
  v8 = a3 + a3;
  v9 = a4 + a4;
  v10 = TSUCreateRGBABitmapContext(0, a3 + a3, a4 + a4, 1.0);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  CGContextSetFillColorWithColor(v10, a1);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v8;
  v15.size.height = v9;
  CGContextFillRect(v11, v15);
  CGContextSetFillColorWithColor(v11, a2);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a3;
  v16.size.height = a4;
  CGContextFillRect(v11, v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a3;
  v17.size.height = a4;
  CGContextFillRect(v11, v17);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  if (!Image)
  {
    return 0;
  }

  PatternWithImageAndTransform = TSUCGColorCreatePatternWithImageAndTransform(Image, 0);
  CGImageRelease(Image);
  return PatternWithImageAndTransform;
}

double TSUFractionalPart(double a1)
{
  v1 = a1 <= 0.0;
  v2 = -(-a1 - floor(-a1));
  result = a1 - floor(a1);
  if (v1)
  {
    return v2;
  }

  return result;
}

double TSUClamp(double a1, double a2, double a3)
{
  if (a1 >= a2)
  {
    a2 = a1;
    if (a1 > a3)
    {
      return a3;
    }
  }

  return a2;
}

uint64_t TSUClampInt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

uint64_t TSUClampRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + a2;
  if (a1 >= a3 + a4)
  {
    v5 = a3 + a4;
  }

  else
  {
    v5 = a1;
  }

  if (a1 < a3)
  {
    v5 = a3;
  }

  if (v4 >= a3 + a4)
  {
    v6 = a3 + a4;
  }

  else
  {
    v6 = a1 + a2;
  }

  if (v4 >= a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  if (v5 < v7)
  {
    v7 = v5;
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = a3 + a4;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

BOOL TSURangeEnclosesRange(NSRange range2, NSRange range1)
{
  if (range2.location == 0x7FFFFFFFFFFFFFFFLL || range1.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  length = range1.length;
  range1.length = range2.length;
  location = range2.location;
  if (length)
  {
    v7.location = range1.location;
    v7.length = length;
    range1.location = location;
    return NSIntersectionRange(v7, range1).length == length;
  }

  else
  {
    v6 = range1.location <= range2.location + range2.length;
    if (range1.location < range2.location)
    {
      v6 = 0;
    }

    if (range2.length)
    {
      return v6;
    }

    else
    {
      return range2.location == range1.location;
    }
  }
}

id Date.isToday.getter()
{
  v0 = sub_1D45C4C98();
  v1 = [v0 ic_isToday];

  return v1;
}

id Date.isYesterday.getter()
{
  v0 = sub_1D45C4C98();
  v1 = [v0 ic_isYesterday];

  return v1;
}

void sub_1D45B61C0(SEL *a1)
{
  v2 = sub_1D45C4C98();
  v3 = [v2 *a1];

  if (v3)
  {
    sub_1D45C4E98();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D45B6250(SEL *a1)
{
  v2 = sub_1D45C4C98();
  v3 = [v2 *a1];

  if (v3)
  {
    sub_1D45C4CA8();
  }

  else
  {
    __break(1u);
  }
}

id sub_1D45B62F4(uint64_t a1, SEL *a2)
{
  v3 = sub_1D45C4C98();
  v4 = sub_1D45C4C98();
  v5 = [v3 *a2];

  return v5;
}

void Date.numberOfDays(from:)()
{
  v0 = sub_1D45C4C98();
  v1 = sub_1D45C4C98();
  v2 = [v0 ic:v1 numberOfDaysFromDate:?];

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

void Date.briefFormattedDateForSiri(forAccessibility:inLocale:)(char a1)
{
  v2 = sub_1D45C4C98();
  v3 = sub_1D45C4CD8();
  v4 = [v2 ic:v3 briefFormattedDateForSiriLocale:a1 & 1 forAccessibility:?];

  if (v4)
  {
    sub_1D45C4E98();
  }

  else
  {
    __break(1u);
  }
}

uint64_t Date.init(date:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D45C4CB8();
  v12 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v6 = sub_1D45C4E88();
  [v5 setDateFormat_];

  v7 = sub_1D45C4E88();

  v8 = [v5 dateFromString_];

  if (v8)
  {
    sub_1D45C4CA8();

    (*(v12 + 32))(a1, v4, v2);
    return (*(v12 + 56))(a1, 0, 1, v2);
  }

  else
  {

    v10 = *(v12 + 56);

    return v10(a1, 1, 1, v2);
  }
}

uint64_t sub_1D45B6658(uint64_t a1, int a2)
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

uint64_t sub_1D45B6678(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D45B66AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D45B66CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t WeakRef.ref.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*WeakRef.ref.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D45B6820;
}

void sub_1D45B6820(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t WeakRef.__allocating_init(_:)()
{
  swift_allocObject();
  v0 = sub_1D457E75C();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WeakRef.__deallocating_deinit()
{
  MEMORY[0x1DA6DAF90](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t static WeakRef<>.== infix(_:_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!v1)
    {
      v2 = 1;
      return v2 & 1;
    }

LABEL_6:
    swift_unknownObjectRelease();
    v2 = 0;
    return v2 & 1;
  }

  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_1D45C4E78();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t WeakRef<>.hash(into:)()
{
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  sub_1D45C5048();
  sub_1D45C5058();
  return swift_unknownObjectRelease();
}

uint64_t WeakRef<>.hashValue.getter()
{
  sub_1D45C5128();
  WeakRef<>.hash(into:)();
  return sub_1D45C5148();
}

uint64_t sub_1D45B6B60()
{
  sub_1D45C5128();
  WeakRef<>.hash(into:)();
  return sub_1D45C5148();
}

id sub_1D45B6C3C()
{
  result = [objc_allocWithZone(ICModelAvailabilityManager) init];
  qword_1EC7D3428 = result;
  return result;
}

void __swiftcall ICModelAvailabilityManager.init()(ICModelAvailabilityManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static ICModelAvailabilityManager.shared.getter()
{
  if (qword_1EC7D3418 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC7D3428;

  return v1;
}

id ICModelAvailabilityManager.supportsCallTranscription.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isNotesTranscriptionAllowed];

    if (v2)
    {
      return (TUTranscriptionAvailabilityForUseCase() != 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ICModelAvailabilityManager.callTranscriptionModel.getter@<X0>(char *a1@<X8>)
{
  result = TUTranscriptionAvailabilityForUseCase();
  v3 = result == 1;
  if (result == 2)
  {
    v3 = 2;
  }

  *a1 = v3;
  return result;
}

uint64_t static CallTranscriptionModelAvailability.fromTUAvailability(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 1;
  if (result == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

id ICModelAvailabilityManager.supportsPrivateCloudComputeSummary.getter()
{
  v0 = type metadata accessor for AppleIntelligenceSupportStatus();
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v15 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v10 = result;
    v11 = [result isNotesTranscriptionSummaryAllowed];

    if (v11)
    {
      sub_1D45B7018(0xD00000000000002ALL, 0x80000001D45CECA0, v8);
      sub_1D457DAEC(v8, v6);
      v12 = sub_1D45C4D98();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v6, 3, v12))
      {
        sub_1D457DA90(v6);
        (*(v13 + 56))(v3, 1, 3, v12);
        v14 = _s12NotesSupport017AppleIntelligenceB6StatusO2eeoiySbAC_ACtFZ_0(v8, v3);
        v6 = v8;
      }

      else
      {
        v14 = 1;
        v3 = v8;
      }

      sub_1D457DA90(v3);
      sub_1D457DA90(v6);
    }

    else
    {
      v14 = 0;
    }

    return (v14 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D45B7018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v31 = a3;
  v3 = sub_1D45C4DA8();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v26 - v29;
  v6 = sub_1D45C4DF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D45C4DC8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3480);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D45CAD40;
  *(v14 + 32) = v27;
  *(v14 + 40) = v28;

  v15 = v3;
  sub_1D45C4DB8();
  sub_1D45C4DE8();
  (*(v11 + 8))(v13, v10);
  sub_1D45C4DD8();
  v16 = (*(v7 + 8))(v9, v6);
  v17 = v30;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v29;
  (*(v17 + 32))(&v26 - v29, v5, v15);
  v19 = (*(v17 + 88))(v18, v15);
  if (MEMORY[0x1E69A0EF0] && v19 == *MEMORY[0x1E69A0EF0])
  {
    (*(v17 + 96))(v18, v15);
    v20 = sub_1D45C4D98();
    v21 = *(v20 - 8);
    v22 = v31;
    (*(v21 + 32))(v31, v18, v20);
    return (*(v21 + 56))(v22, 0, 3, v20);
  }

  else if (MEMORY[0x1E69A0F08] && v19 == *MEMORY[0x1E69A0F08] || !MEMORY[0x1E69A1198] || v19 != *MEMORY[0x1E69A1198])
  {
    v25 = sub_1D45C4D98();
    (*(*(v25 - 8) + 56))(v31, 2, 3, v25);
    return (*(v17 + 8))(v18, v15);
  }

  else
  {
    v24 = sub_1D45C4D98();
    return (*(*(v24 - 8) + 56))(v31, 1, 3, v24);
  }
}

BOOL ICModelAvailabilityManager.privateCloudComputeSummaryRestricted.getter()
{
  v0 = type metadata accessor for AppleIntelligenceSupportStatus();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D45B7018(0xD00000000000002ALL, 0x80000001D45CECA0, v2);
  v3 = sub_1D45C4D98();
  v4 = (*(*(v3 - 8) + 48))(v2, 3, v3) == 0;
  sub_1D457DA90(v2);
  return v4;
}

uint64_t ICModelAvailabilityManager.privateCloudComputeSummaryRestrictedDueToPolicy.getter()
{
  v0 = type metadata accessor for AppleIntelligenceSupportStatus();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D45C4D98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D45B7018(0xD00000000000002ALL, 0x80000001D45CECA0, v2);
  if ((*(v4 + 48))(v2, 3, v3))
  {
    sub_1D457DA90(v2);
    v7 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = sub_1D45C4D88();
    v9 = sub_1D45C4D68();
    v10 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 104))(v12, *MEMORY[0x1E69A0F18], v9);
    v7 = sub_1D45B7790(v12, v8);

    (*(v10 + 8))(v12, v9);
    (*(v4 + 8))(v6, v3);
  }

  return v7 & 1;
}

uint64_t sub_1D45B7790(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1D45C4D68(), sub_1D45B8F90(&qword_1EC7D3468), v5 = sub_1D45C4E38(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, v17 = a2 + 56, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v16 = a1;
    v14 = ~v6;
    v8 = *(v4 - 8);
    v15 = v8[2];
    v9 = v8[8];
    v10 = v8[9];
    v11 = (v8 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v5);
      v15(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *(a2 + 48) + v10 * v7, v4);
      sub_1D45B8F90(&qword_1EC7D3470);
      v12 = sub_1D45C4E78();
      v5 = (*v11)(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v12)
      {
        break;
      }

      v7 = (v7 + 1) & v14;
    }

    while (((*(v17 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

id ICModelAvailabilityManager.supportsOnDeviceSummary.getter()
{
  v0 = type metadata accessor for AppleIntelligenceSupportStatus();
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - v4;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v7 = result;
    v8 = [result isNotesTranscriptionSummaryAllowed];

    if (v8)
    {
      sub_1D45B7018(0xD000000000000022, 0x80000001D45CECD0, v5);
      v9 = sub_1D45C4D98();
      (*(*(v9 - 8) + 56))(v3, 1, 3, v9);
      v10 = _s12NotesSupport017AppleIntelligenceB6StatusO2eeoiySbAC_ACtFZ_0(v5, v3);
      sub_1D457DA90(v3);
      sub_1D457DA90(v5);
    }

    else
    {
      v10 = 0;
    }

    return (v10 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ICModelAvailabilityManager.supportsGeneralASR.getter()
{
  v1 = type metadata accessor for AppleIntelligenceSupportStatus();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  v7 = *(v0 + OBJC_IVAR___ICModelAvailabilityManager_generalASRLock);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  sub_1D457DAEC(v7 + v8, v6);
  os_unfair_lock_unlock((v7 + v9));

  v10 = sub_1D45C4D98();
  (*(*(v10 - 8) + 56))(v4, 1, 3, v10);
  LOBYTE(v7) = _s12NotesSupport017AppleIntelligenceB6StatusO2eeoiySbAC_ACtFZ_0(v6, v4);
  sub_1D457DA90(v4);
  sub_1D457DA90(v6);
  return v7 & 1;
}

BOOL ICModelAvailabilityManager.generalASRAvailabilityWasGenerated.getter()
{
  v1 = type metadata accessor for AppleIntelligenceSupportStatus();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  v7 = *(v0 + OBJC_IVAR___ICModelAvailabilityManager_generalASRLock);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  sub_1D457DAEC(v7 + v8, v6);
  os_unfair_lock_unlock((v7 + v9));

  v10 = sub_1D45C4D98();
  (*(*(v10 - 8) + 56))(v4, 3, 3, v10);
  LOBYTE(v7) = _s12NotesSupport017AppleIntelligenceB6StatusO2eeoiySbAC_ACtFZ_0(v6, v4);
  sub_1D457DA90(v4);
  sub_1D457DA90(v6);
  return (v7 & 1) == 0;
}

id ICModelAvailabilityManager.init()()
{
  v1 = type metadata accessor for AppleIntelligenceSupportStatus();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR___ICModelAvailabilityManager_generalASRLock;
  v5 = sub_1D45C4D98();
  (*(*(v5 - 8) + 56))(v3, 3, 3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3438);
  v6 = swift_allocObject();
  *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1D4578A38(v3, v6 + *(*v6 + *MEMORY[0x1E69E6B68] + 16));
  *&v0[v4] = v6;
  v8.receiver = v0;
  v8.super_class = ICModelAvailabilityManager;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t CallTranscriptionModelAvailability.name.getter()
{
  v1 = 0x206C6172656E6547;
  if (*v0 == 1)
  {
    v1 = 0x525341474ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616C696176616E55;
  }
}

uint64_t CallTranscriptionModelAvailability.hashValue.getter()
{
  v1 = *v0;
  sub_1D45C5128();
  MEMORY[0x1DA6D98C0](v1);
  return sub_1D45C5148();
}

uint64_t sub_1D45B80D4()
{
  v1 = *v0;
  sub_1D45C5128();
  MEMORY[0x1DA6D98C0](v1);
  return sub_1D45C5148();
}

uint64_t sub_1D45B8148()
{
  v1 = *v0;
  sub_1D45C5128();
  MEMORY[0x1DA6D98C0](v1);
  return sub_1D45C5148();
}

uint64_t sub_1D45B818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3450);
  MEMORY[0x1EEE9AC00]();
  v10 = v22 - v9;
  sub_1D45B8E68(a3, v22 - v9);
  v11 = sub_1D45C4FC8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D45B8FD4(v10, &qword_1EC7D3450);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D45C4FB8();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_1D45C4F88();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_1D45C4EA8() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_1D45B8FD4(a3, &qword_1EC7D3450);

    return v20;
  }

LABEL_8:
  sub_1D45B8FD4(a3, &qword_1EC7D3450);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

char *sub_1D45B8478(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t _s12NotesSupport017AppleIntelligenceB6StatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceSupportStatus();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3478);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = *(v8 + 56);
  sub_1D457DAEC(a1, &v22 - v9);
  sub_1D457DAEC(a2, &v10[v11]);
  v12 = sub_1D45C4D98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v10, 3, v12);
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      if (v14(&v10[v11], 3, v12) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v14(&v10[v11], 3, v12) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1D45B8FD4(v10, &qword_1EC7D3478);
    v17 = 0;
    return v17 & 1;
  }

  if (!v15)
  {
    sub_1D457DAEC(v10, v6);
    v16 = v14(&v10[v11], 3, v12);
    if (!v16)
    {
      MEMORY[0x1EEE9AC00](v16);
      v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 32))(v20, &v10[v11], v12);
      v17 = sub_1D45C4D78();
      v21 = *(v13 + 8);
      v21(v20, v12);
      v21(v6, v12);
      sub_1D457DA90(v10);
      return v17 & 1;
    }

    (*(v13 + 8))(v6, v12);
    goto LABEL_11;
  }

  if (v14(&v10[v11], 3, v12) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1D457DA90(v10);
  v17 = 1;
  return v17 & 1;
}

uint64_t _sSo26ICModelAvailabilityManagerC12NotesSupportE13useAILabelingSbvg_0()
{
  v0 = sub_1D45C4D58();
  v1 = *(v0 - 8);
  (MEMORY[0x1EEE9AC00])();
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3488);
  (MEMORY[0x1EEE9AC00])();
  v5 = v17 - v4;
  v6 = sub_1D45C4D28();
  v7 = *(v6 - 8);
  (MEMORY[0x1EEE9AC00])();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x1E69B7C98], v6);
  sub_1D45C4D48();
  (*(v7 + 8))(v9, v6);
  (*(v1 + 56))(v5, 0, 1, v0);
  (*(v1 + 32))(v3, v5, v0);
  v10 = sub_1D45C4D18();
  v17[0] = v17;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = sub_1D45C4D38();
  MEMORY[0x1EEE9AC00](v13);
  v14 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x1E69B7C88], v10);
  LOBYTE(v12) = sub_1D45C4D08();
  v15 = *(v11 + 8);
  v15(v14, v10);
  v15(v14, v10);
  (*(v1 + 8))(v3, v0);
  return v12 & 1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D45B8C30()
{
  result = qword_1EC7D3440;
  if (!qword_1EC7D3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3440);
  }

  return result;
}

unint64_t type metadata accessor for ICModelAvailabilityManager()
{
  result = qword_1EC7D3448;
  if (!qword_1EC7D3448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7D3448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CallTranscriptionModelAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CallTranscriptionModelAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D45B8E68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D45B8ED8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D457DCAC;

  return sub_1D4578D10(a1, v4);
}

uint64_t sub_1D45B8F90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D45C4D68();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D45B8FD4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NSComparisonResult.init<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1D45C4E58())
  {
    v6 = *(*(a3 - 8) + 8);
    v6(a2, a3);
    v6(a1, a3);
    return -1;
  }

  else
  {
    v8 = sub_1D45C4E48();
    v9 = *(*(a3 - 8) + 8);
    v9(a2, a3);
    v9(a1, a3);
    return v8 & 1;
  }
}

uint64_t AsyncPriorityQueue.basePriority.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_basePriority;
  v4 = sub_1D45C4FC8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AsyncPriorityQueue.__allocating_init(basePriority:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_pendingWork) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_workerTask) = 0;
  v3 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_basePriority;
  v4 = sub_1D45C4FC8();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t AsyncPriorityQueue.init(basePriority:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_pendingWork) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_workerTask) = 0;
  v3 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_basePriority;
  v4 = sub_1D45C4FC8();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t AsyncPriorityQueue.enqueue(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3490);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = *(v8 + 32);
  v17 = sub_1D45C4FC8();
  (*(*(v17 - 8) + 16))(&v14[v16], a1, v17);
  v18 = &v14[*(v8 + 28)];
  *v18 = a2;
  *(v18 + 1) = a3;
  sub_1D45B9574(v14, v12);
  v19 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_pendingWork;
  swift_beginAccess();
  v20 = *(v3 + v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v19) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1D45BBBEC(0, v20[2] + 1, 1, v20);
    *(v3 + v19) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_1D45BBBEC(v22 > 1, v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  sub_1D45BBDC4(v12, v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23);
  *(v3 + v19) = v20;
  swift_endAccess();
  swift_beginAccess();
  sub_1D45B9B38((v3 + v19));
  swift_endAccess();
  sub_1D45B9BE4();
  return sub_1D45BBE28(v14);
}

uint64_t sub_1D45B9574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AsyncPriorityQueue.enqueueAndWait(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D45B95FC, v3, 0);
}

uint64_t sub_1D45B95FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_1D45BC410(&qword_1EC7D3020, type metadata accessor for AsyncPriorityQueue);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1D45B9740;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1D45B9740()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D45B986C, v1, 0);
}

uint64_t sub_1D45B9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  v11 = v10 - 8;
  v29 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3490);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = *(v11 + 32);
  v20 = sub_1D45C4FC8();
  (*(*(v20 - 8) + 16))(&v16[v19], a5, v20);
  v21 = &v16[*(v11 + 28)];
  *v21 = a3;
  *(v21 + 1) = a4;
  sub_1D45B9574(v16, v14);
  v22 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_pendingWork;
  swift_beginAccess();
  v23 = *(a2 + v22);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v22) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1D45BBBEC(0, v23[2] + 1, 1, v23);
    *(a2 + v22) = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_1D45BBBEC(v25 > 1, v26 + 1, 1, v23);
  }

  v23[2] = v26 + 1;
  sub_1D45BBDC4(v14, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26);
  *(a2 + v22) = v23;
  swift_endAccess();
  swift_beginAccess();
  sub_1D45B9B38((a2 + v22));
  swift_endAccess();
  sub_1D45B9BE4();
  return sub_1D45BBE28(v16);
}

uint64_t sub_1D45B9B38(void **a1)
{
  v2 = *(type metadata accessor for AsyncPriorityQueue.WorkItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D45BD87C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D45BC6E4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D45B9BE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3450);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_workerTask;
  if (!*(v0 + OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_workerTask))
  {
    v6 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_pendingWork;
    result = swift_beginAccess();
    if (*(*(v0 + v6) + 16))
    {
      v7 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_basePriority;
      v8 = sub_1D45C4FC8();
      v9 = *(v8 - 8);
      (*(v9 + 16))(v4, v0 + v7, v8);
      (*(v9 + 56))(v4, 0, 1, v8);
      v10 = sub_1D45BC410(&qword_1EC7D3020, type metadata accessor for AsyncPriorityQueue);
      v11 = swift_allocObject();
      v11[2] = v0;
      v11[3] = v10;
      v11[4] = v0;
      swift_retain_n();
      *(v0 + v5) = sub_1D45BB33C(0, 0, v4, &unk_1D45CAFB8, v11);
    }
  }

  return result;
}

uint64_t sub_1D45B9DEC()
{
  sub_1D45BC410(&qword_1EC7D3020, type metadata accessor for AsyncPriorityQueue);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D45B9EE8;

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1D45B9EE8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D45B9FF8, v1, 0);
}

uint64_t sub_1D45B9FF8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_workerTask) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D45BA068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3498);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3450);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = sub_1D45C4FC8();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  v3[23] = v6;
  v7 = *(v6 - 8);
  v3[24] = v7;
  v3[25] = *(v7 + 64);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D45BA218, a3, 0);
}

uint64_t sub_1D45BA218()
{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_pendingWork;
  v3 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_basePriority;
  v0[28] = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_pendingWork;
  v0[29] = v3;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (sub_1D45C4FE8() & 1) == 0)
  {
    v6 = v0[28];
    v7 = v0[16];
    swift_beginAccess();
    v8 = *(v7 + v6);
    v9 = v8[2];
    if (!v9)
    {
      __break(1u);
      return MEMORY[0x1EEE6DA78]();
    }

    v10 = v0[28];
    v11 = v0[16];
    v12 = *(v0[24] + 80);
    v13 = (v12 + 32) & ~v12;
    sub_1D45B9574(v8 + v13, v0[27]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v10) = v8;
    if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > v8[3] >> 1)
    {
      v15 = v0[28];
      v16 = v0[16];
      v8 = sub_1D45BBBEC(isUniquelyReferenced_nonNull_native, v9, 1, v8);
      *(v16 + v15) = v8;
    }

    v17 = v0[24];
    sub_1D45BBE28(v8 + v13);
    v18 = *(v17 + 72);
    v58 = (v12 + 32) & ~v12;
    if (v18 > 0 || v8 + v13 >= v8 + v13 + v18 + (v8[2] - 1) * v18)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = v0[28];
    v20 = v0[27];
    v21 = v0[23];
    v22 = v0[21];
    v23 = v0[16];
    --v8[2];
    *(v23 + v19) = v8;
    swift_endAccess();
    v24 = *(v21 + 24);
    sub_1D45BC410(qword_1EC7D2F88, MEMORY[0x1E69E85F0]);
    v25 = sub_1D45C4E68();
    v26 = *(v22 + 16);
    if (v25)
    {
      v27 = v0[22];
      v28 = v0[20];
      v29 = v20 + v24;
    }

    else
    {
      v27 = v0[22];
      v28 = v0[20];
      v29 = v0[16] + v0[29];
    }

    v26(v27, v29, v28);
    v31 = v0[26];
    v30 = v0[27];
    v32 = v0[21];
    v34 = v0[19];
    v33 = v0[20];
    v35 = v0[15];
    v26(v34, v0[22], v33);
    (*(v32 + 56))(v34, 0, 1, v33);
    sub_1D45B9574(v30, v31);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = (v36 + 16);
    *(v36 + 24) = 0;
    sub_1D45BBDC4(v31, v36 + v58);
    v38 = *v35;
    if ((swift_taskGroup_addPending() & 1) == 0)
    {
      v45 = v0[27];
      v46 = v0[17];
      sub_1D45B8FD4(v0[19], &qword_1EC7D3450);

      sub_1D45BC244(v45, v46, &qword_1EC7D3498);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3490);
      v48 = *(v47 - 8);
      v49 = (*(v48 + 48))(v46, 1, v47);
      v50 = v0[17];
      if (v49 != 1)
      {
        sub_1D45C4F98();
        (*(v48 + 8))(v50, v47);
        goto LABEL_32;
      }

      v51 = &qword_1EC7D3498;
LABEL_31:
      sub_1D45B8FD4(v50, v51);
LABEL_32:
      v57 = swift_task_alloc();
      v0[30] = v57;
      *v57 = v0;
      v57[1] = sub_1D45BA844;

      return MEMORY[0x1EEE6DA78]();
    }

    v39 = v0[20];
    v40 = v0[21];
    v41 = v0[18];
    sub_1D45BC244(v0[19], v41, &qword_1EC7D3450);
    if ((*(v40 + 48))(v41, 1, v39) == 1)
    {
      sub_1D45B8FD4(v0[18], &qword_1EC7D3450);
      if (*v37)
      {
LABEL_21:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v42 = sub_1D45C4F88();
        v44 = v43;
        swift_unknownObjectRelease();
LABEL_26:
        v55 = swift_allocObject();
        *(v55 + 16) = &unk_1D45CAFF0;
        *(v55 + 24) = v36;

        if (v44 | v42)
        {
          v56 = v0 + 2;
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v42;
          v0[5] = v44;
        }

        else
        {
          v56 = 0;
        }

        v50 = v0[19];
        v0[12] = 1;
        v0[13] = v56;
        v0[14] = v38;
        swift_task_create();

        v51 = &qword_1EC7D3450;
        goto LABEL_31;
      }
    }

    else
    {
      v52 = v0[20];
      v53 = v0[21];
      v54 = v0[18];
      sub_1D45C4FB8();
      (*(v53 + 8))(v54, v52);
      if (*v37)
      {
        goto LABEL_21;
      }
    }

    v42 = 0;
    v44 = 0;
    goto LABEL_26;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D45BA844()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D45BA954, v1, 0);
}

uint64_t sub_1D45BA954()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[16];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_1D45BBE28(v2);
  if (*(*(v3 + v1) + 16) && (sub_1D45C4FE8() & 1) == 0)
  {
    v6 = v0[28];
    v7 = v0[16];
    swift_beginAccess();
    v8 = *(v7 + v6);
    v9 = v8[2];
    if (!v9)
    {
      __break(1u);
      return MEMORY[0x1EEE6DA78]();
    }

    v10 = v0[28];
    v11 = v0[16];
    v12 = *(v0[24] + 80);
    v13 = (v12 + 32) & ~v12;
    sub_1D45B9574(v8 + v13, v0[27]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v10) = v8;
    if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > v8[3] >> 1)
    {
      v15 = v0[28];
      v16 = v0[16];
      v8 = sub_1D45BBBEC(isUniquelyReferenced_nonNull_native, v9, 1, v8);
      *(v16 + v15) = v8;
    }

    v17 = v0[24];
    sub_1D45BBE28(v8 + v13);
    v18 = *(v17 + 72);
    v58 = (v12 + 32) & ~v12;
    if (v18 > 0 || v8 + v13 >= v8 + v13 + v18 + (v8[2] - 1) * v18)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = v0[28];
    v20 = v0[27];
    v21 = v0[23];
    v22 = v0[21];
    v23 = v0[16];
    --v8[2];
    *(v23 + v19) = v8;
    swift_endAccess();
    v24 = *(v21 + 24);
    sub_1D45BC410(qword_1EC7D2F88, MEMORY[0x1E69E85F0]);
    v25 = sub_1D45C4E68();
    v26 = *(v22 + 16);
    if (v25)
    {
      v27 = v0[22];
      v28 = v0[20];
      v29 = v20 + v24;
    }

    else
    {
      v27 = v0[22];
      v28 = v0[20];
      v29 = v0[16] + v0[29];
    }

    v26(v27, v29, v28);
    v31 = v0[26];
    v30 = v0[27];
    v32 = v0[21];
    v34 = v0[19];
    v33 = v0[20];
    v35 = v0[15];
    v26(v34, v0[22], v33);
    (*(v32 + 56))(v34, 0, 1, v33);
    sub_1D45B9574(v30, v31);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = (v36 + 16);
    *(v36 + 24) = 0;
    sub_1D45BBDC4(v31, v36 + v58);
    v38 = *v35;
    if ((swift_taskGroup_addPending() & 1) == 0)
    {
      v45 = v0[27];
      v46 = v0[17];
      sub_1D45B8FD4(v0[19], &qword_1EC7D3450);

      sub_1D45BC244(v45, v46, &qword_1EC7D3498);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3490);
      v48 = *(v47 - 8);
      v49 = (*(v48 + 48))(v46, 1, v47);
      v50 = v0[17];
      if (v49 != 1)
      {
        sub_1D45C4F98();
        (*(v48 + 8))(v50, v47);
        goto LABEL_32;
      }

      v51 = &qword_1EC7D3498;
LABEL_31:
      sub_1D45B8FD4(v50, v51);
LABEL_32:
      v57 = swift_task_alloc();
      v0[30] = v57;
      *v57 = v0;
      v57[1] = sub_1D45BA844;

      return MEMORY[0x1EEE6DA78]();
    }

    v39 = v0[20];
    v40 = v0[21];
    v41 = v0[18];
    sub_1D45BC244(v0[19], v41, &qword_1EC7D3450);
    if ((*(v40 + 48))(v41, 1, v39) == 1)
    {
      sub_1D45B8FD4(v0[18], &qword_1EC7D3450);
      if (*v37)
      {
LABEL_21:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v42 = sub_1D45C4F88();
        v44 = v43;
        swift_unknownObjectRelease();
LABEL_26:
        v55 = swift_allocObject();
        *(v55 + 16) = &unk_1D45CAFF0;
        *(v55 + 24) = v36;

        if (v44 | v42)
        {
          v56 = v0 + 2;
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v42;
          v0[5] = v44;
        }

        else
        {
          v56 = 0;
        }

        v50 = v0[19];
        v0[12] = 1;
        v0[13] = v56;
        v0[14] = v38;
        swift_task_create();

        v51 = &qword_1EC7D3450;
        goto LABEL_31;
      }
    }

    else
    {
      v52 = v0[20];
      v53 = v0[21];
      v54 = v0[18];
      sub_1D45C4FB8();
      (*(v53 + 8))(v54, v52);
      if (*v37)
      {
        goto LABEL_21;
      }
    }

    v42 = 0;
    v44 = 0;
    goto LABEL_26;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D45BAF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3498);
  *(v3 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D45BB018, 0, 0);
}

uint64_t sub_1D45BB018()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for AsyncPriorityQueue.WorkItem(0) + 20));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1D45BB114;

  return v5();
}

uint64_t sub_1D45BB114()
{

  return MEMORY[0x1EEE6DFA0](sub_1D45BB210, 0, 0);
}

uint64_t sub_1D45BB210()
{
  v1 = v0[3];
  sub_1D45BC244(v0[2], v1, &qword_1EC7D3498);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3490);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[3];
  if (v4 == 1)
  {
    sub_1D45B8FD4(v0[3], &qword_1EC7D3498);
  }

  else
  {
    sub_1D45C4F98();
    (*(v3 + 8))(v5, v2);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D45BB33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3450);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D45BC244(a3, v25 - v10, &qword_1EC7D3450);
  v12 = sub_1D45C4FC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D45B8FD4(v11, &qword_1EC7D3450);
  }

  else
  {
    sub_1D45C4FB8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D45C4F88();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D45C4EA8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1D45B8FD4(a3, &qword_1EC7D3450);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D45B8FD4(a3, &qword_1EC7D3450);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall AsyncPriorityQueue.cancel()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3498);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_workerTask))
  {

    sub_1D45C4FD8();
  }

  v8 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_pendingWork;
  swift_beginAccess();
  v9 = *(v0 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v16 = v8;
    v17 = v0;
    v11 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    v15 = v9;

    do
    {
      sub_1D45B9574(v11, v7);
      sub_1D45BC244(v7, v3, &qword_1EC7D3498);
      sub_1D45BBE28(v7);
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3490);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v3, 1, v13) == 1)
      {
        sub_1D45B8FD4(v3, &qword_1EC7D3498);
      }

      else
      {
        sub_1D45C4F98();
        (*(v14 + 8))(v3, v13);
      }

      v11 += v12;
      --v10;
    }

    while (v10);

    v8 = v16;
    v0 = v17;
  }

  *(v0 + v8) = MEMORY[0x1E69E7CC0];
}

uint64_t AsyncPriorityQueue.deinit()
{
  v1 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_basePriority;
  v2 = sub_1D45C4FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncPriorityQueue.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12NotesSupport18AsyncPriorityQueue_basePriority;
  v2 = sub_1D45C4FC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D45BBA0C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D45BD890;

  return v6(a1);
}

uint64_t sub_1D45BBB04(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D457DE54;

  return v4();
}

size_t sub_1D45BBBEC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D34B0);
  v10 = *(type metadata accessor for AsyncPriorityQueue.WorkItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AsyncPriorityQueue.WorkItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1D45BBDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D45BBE28(uint64_t a1)
{
  v2 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D45BBEA4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D45BBEF0()
{
  result = sub_1D45C4FC8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D45BBFF8()
{
  sub_1D45BC094();
  if (v0 <= 0x3F)
  {
    sub_1D45BC140();
    if (v1 <= 0x3F)
    {
      sub_1D45C4FC8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D45BC094()
{
  if (!qword_1EC7D2F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3490);
    v0 = sub_1D45C5048();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7D2F80);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D45BC140()
{
  result = qword_1EC7D34A0;
  if (!qword_1EC7D34A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EC7D34A0);
  }

  return result;
}

uint64_t sub_1D45BC190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D457DCAC;

  return sub_1D45B9DCC(a1, v4, v5, v6);
}

uint64_t sub_1D45BC244(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D45BC2AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D457DDD8;

  return sub_1D45BBA0C(a1, v4);
}

uint64_t sub_1D45BC364(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D457DDD8;

  return sub_1D45BA068(a1, a2, v2);
}

uint64_t sub_1D45BC410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D45BC458()
{
  v2 = *(type metadata accessor for AsyncPriorityQueue.WorkItem(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D457DDD8;

  return sub_1D45BAF7C(v4, v5, v0 + v3);
}

uint64_t sub_1D45BC534()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D457DCAC;

  return sub_1D45BBB04(v2);
}

char *sub_1D45BC5E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D34A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D45BC6E4(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D45C50E8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AsyncPriorityQueue.WorkItem(0);
        v6 = sub_1D45C4F48();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AsyncPriorityQueue.WorkItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D45BCA10(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D45BC810(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D45BC810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_1D45B9574(v24, v18);
      sub_1D45B9574(v21, v14);
      v25 = sub_1D45C4FA8();
      sub_1D45BBE28(v14);
      result = sub_1D45BBE28(v18);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_1D45BBDC4(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D45BBDC4(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D45BCA10(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  v110 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v113 = &v99 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v99 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v99 - v18;
  v112 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1D45BD784(a4);
    }

    v115 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *(result + 16 * a4);
        v96 = result;
        v97 = *(result + 16 * (a4 - 1) + 40);
        sub_1D45BD270(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *(result + 16 * (a4 - 1) + 32), *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1D45BD784(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_1D45BD6F8(a4 - 1);
        result = v115;
        a4 = *(v115 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v105 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v112;
      v26 = v23;
      v27 = *(v110 + 72);
      v5 = *v112 + v27 * v24;
      sub_1D45B9574(v5, v19);
      sub_1D45B9574(v25 + v27 * v26, v16);
      LODWORD(v109) = sub_1D45C4FA8();
      sub_1D45BBE28(v16);
      result = sub_1D45BBE28(v19);
      v100 = v26;
      v28 = v26 + 2;
      v111 = v27;
      v29 = v25 + v27 * v28;
      v30 = v109;
      while (v20 != v28)
      {
        sub_1D45B9574(v29, v19);
        sub_1D45B9574(v5, v16);
        v31 = sub_1D45C4FA8() & 1;
        sub_1D45BBE28(v16);
        result = sub_1D45BBE28(v19);
        ++v28;
        v29 += v111;
        v5 += v111;
        if ((v30 & 1) != v31)
        {
          v32 = v30;
          v20 = v28 - 1;
          goto LABEL_11;
        }
      }

      v32 = v30;
LABEL_11:
      v23 = v100;
      a4 = v101;
      if (v32)
      {
        if (v20 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v20)
        {
          v99 = v6;
          v33 = v111 * (v20 - 1);
          v34 = v20 * v111;
          v109 = v20;
          v35 = v20;
          v36 = v100;
          v37 = v100 * v111;
          do
          {
            if (v36 != --v35)
            {
              v38 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v38 + v37;
              sub_1D45BBDC4(v38 + v37, v104);
              if (v37 < v33 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D45BBDC4(v104, v38 + v33);
            }

            ++v36;
            v33 -= v111;
            v34 -= v111;
            v37 += v111;
          }

          while (v36 < v35);
          v6 = v99;
          v23 = v100;
          a4 = v101;
          v20 = v109;
        }
      }
    }

    v39 = v112[1];
    if (v20 < v39)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v39)
        {
          v40 = v112[1];
        }

        else
        {
          v40 = v23 + a4;
        }

        if (v40 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v40)
        {
          break;
        }
      }
    }

    v41 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v105;
    }

    else
    {
      result = sub_1D45BC5E0(0, *(v105 + 2) + 1, 1, v105);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v42 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_1D45BC5E0((v42 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v43 = &v22[16 * a4];
    *(v43 + 4) = v23;
    *(v43 + 5) = v41;
    v44 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v41;
    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v22 + 4);
          v47 = *(v22 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_54:
          if (v49)
          {
            goto LABEL_113;
          }

          v62 = &v22[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_116;
          }

          v68 = &v22[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_120;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v72 = &v22[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_68:
        if (v67)
        {
          goto LABEL_115;
        }

        v75 = &v22[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v112)
        {
          goto LABEL_131;
        }

        v83 = v22;
        v84 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v45 + 40];
        sub_1D45BD270(*v112 + *(v110 + 72) * v84, *v112 + *(v110 + 72) * *&v22[16 * v45 + 32], *v112 + *(v110 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1D45BD784(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_110;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v115 = v83;
        result = sub_1D45BD6F8(v45);
        v22 = v115;
        v5 = *(v115 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v22[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_111;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_112;
      }

      v57 = &v22[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_114;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_117;
      }

      if (v61 >= v53)
      {
        v79 = &v22[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_121;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v20 = v112[1];
    v21 = v106;
    a4 = v101;
    if (v106 >= v20)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v23;
  a4 = *v112;
  v86 = *(v110 + 72);
  v87 = *v112 + v86 * (v20 - 1);
  v88 = v20;
  v89 = -v86;
  v90 = v23 - v88;
  v109 = v88;
  v103 = v86;
  v5 = a4 + v88 * v86;
  v106 = v40;
LABEL_86:
  v107 = v5;
  v108 = v90;
  v111 = v87;
  v91 = v87;
  while (1)
  {
    sub_1D45B9574(v5, v19);
    sub_1D45B9574(v91, v16);
    v92 = sub_1D45C4FA8();
    sub_1D45BBE28(v16);
    result = sub_1D45BBE28(v19);
    if ((v92 & 1) == 0)
    {
LABEL_85:
      v87 = v111 + v103;
      v90 = v108 - 1;
      v41 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v23 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v93 = v113;
    sub_1D45BBDC4(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D45BBDC4(v93, v91);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}