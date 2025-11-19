uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void cn_runWithObjectLock(void *a1, void *a2)
{
  v3 = a2;
  obj = a1;
  objc_sync_enter(obj);
  v3[2](v3);

  objc_sync_exit(obj);
}

id cn_objectResultWithObjectLock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __cn_objectResultWithObjectLock_block_invoke;
  v8[3] = &unk_1E6ED5140;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  cn_runWithObjectLock(v3, v8);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_1859F2E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __cn_objectResultWithObjectLock_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1859F3288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

id CNResultWithLock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 lock];
  v5 = v4[2](v4);
  [v3 unlock];

  return v5;
}

Class initACAccountStore()
{
  if (LoadAccounts_loadPredicate != -1)
  {
    initACAccountStore_cold_1();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore = result;
  getACAccountStoreClass = ACAccountStoreFunction;
  return result;
}

void __LoadAccounts_block_invoke()
{
  LoadAccounts_frameworkLibrary = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 1);
  if (!LoadAccounts_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadAccounts_block_invoke_cold_1();
  }
}

Class initPAAccessLogger()
{
  if (LoadPrivacyAccounting_loadPredicate != -1)
  {
    initPATCCAccess_cold_1();
  }

  result = objc_getClass("PAAccessLogger");
  classPAAccessLogger = result;
  getPAAccessLoggerClass = PAAccessLoggerFunction;
  return result;
}

void __LoadPrivacyAccounting_block_invoke()
{
  LoadPrivacyAccounting_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/PrivacyAccounting.framework/PrivacyAccounting", 1);
  if (!LoadPrivacyAccounting_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadPrivacyAccounting_block_invoke_cold_1();
  }
}

Class initPATCCAccess()
{
  if (LoadPrivacyAccounting_loadPredicate != -1)
  {
    initPATCCAccess_cold_1();
  }

  result = objc_getClass("PATCCAccess");
  classPATCCAccess = result;
  getPATCCAccessClass = PATCCAccessFunction;
  return result;
}

Class initPAApplication()
{
  if (LoadPrivacyAccounting_loadPredicate != -1)
  {
    initPATCCAccess_cold_1();
  }

  result = objc_getClass("PAApplication");
  classPAApplication = result;
  getPAApplicationClass = PAApplicationFunction;
  return result;
}

void __LoadMobileKeyBag_block_invoke()
{
  LoadMobileKeyBag_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 1);
  if (!LoadMobileKeyBag_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadMobileKeyBag_block_invoke_cold_1();
  }
}

uint64_t initMGCopyAnswer(uint64_t a1, uint64_t a2)
{
  if (LoadMobileKeyBag_loadPredicate != -1)
  {
    initMKBDeviceUnlockedSinceBoot_cold_1();
  }

  v4 = dlsym(LoadMobileKeyBag_frameworkLibrary, "MGCopyAnswer");
  softLinkMGCopyAnswer = v4;

  return (v4)(a1, a2);
}

id CNNilToNull_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;

  return v5;
}

id CNArrayMapFastPath(void *a1, void *a2)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = v5;
  if (v5 >= 0x81)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v25 = @"count";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    v26[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v22 = [v18 exceptionWithName:v19 reason:@"CNArrayMapFastPath called with too many objects" userInfo:v21];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v24[1] = v24;
  v7 = 8 * v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, 8 * v6);
  if (v6)
  {
    v9 = 0;
    v24[2] = v4 + 2;
    do
    {
      [v3 objectAtIndexedSubscript:v9];
      v11 = v10 = v3;
      v12 = v4[2](v4, v11);
      v13 = (off_1EF4401A8)(&__block_literal_global_2_2, v12);
      v14 = *&v8[8 * v9];
      *&v8[8 * v9] = v13;

      v3 = v10;
      ++v9;
    }

    while (v6 != v9);
  }

  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) count:v6];
  if (v6)
  {
    do
    {

      v7 -= 8;
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id CNNullToNil_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (*MEMORY[0x1E695E738] == v2 || ([MEMORY[0x1E695DFB0] null], v3 = objc_claimAutoreleasedReturnValue(), v3, v3 == v2))
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

id CNPromiseCompletionHandler(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __CNPromiseCompletionHandler_block_invoke;
  aBlock[3] = &unk_1E6ED7C10;
  v7 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);
  v4 = [v3 copy];

  return v4;
}

void CNRunWithLock(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  [v4 lock];
  v3[2](v3);
  [v4 unlock];
}

void sub_1859F69E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initMKBDeviceUnlockedSinceBoot()
{
  if (LoadMobileKeyBag_loadPredicate != -1)
  {
    initMKBDeviceUnlockedSinceBoot_cold_1();
  }

  v0 = dlsym(LoadMobileKeyBag_frameworkLibrary, "MKBDeviceUnlockedSinceBoot");
  softLinkMKBDeviceUnlockedSinceBoot = v0;

  return v0();
}

__CFString *CNNameDelimiterForString(void *a1)
{
  v1 = a1;
  if (off_1EF440708(&__block_literal_global_120, v1))
  {
    goto LABEL_12;
  }

  if (CNKatakanaCharacterUSet_onceToken != -1)
  {
    CNNameDelimiterForString_cold_1();
  }

  if ((CNContentsExclusivelyInCharacterSet(v1, CNKatakanaCharacterUSet_set) & 1) == 0)
  {
LABEL_12:
    if (CNIsChineseJapaneseKoreanString(v1))
    {
      v2 = &stru_1EF441028;
    }

    else
    {
      v2 = @" ";
    }
  }

  else
  {
    v2 = @"・";
  }

  return v2;
}

uint64_t CNContentsExclusivelyInCharacterSet(void *a1, uint64_t a2)
{
  v3 = a1;
  if (off_1EF440708(&__block_literal_global_120, v3))
  {
    v4 = 1;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CNContentsExclusivelyInCharacterSet_block_invoke;
    v7[3] = &__block_descriptor_40_e13__24__0r_S8Q16l;
    v7[4] = a2;
    v5 = [v3 _cn_resultWithAllCharacters:v7];
    v4 = [v5 BOOLValue];
  }

  return v4;
}

uint64_t CNIsChineseJapaneseKoreanString(void *a1)
{
  v1 = a1;
  if (off_1EF440708(&__block_literal_global_120, v1))
  {
    v2 = 0;
  }

  else
  {
    if (CNChineseJapaneseKoreanPlusWhitelistedCharacterUSet_onceToken != -1)
    {
      CNIsChineseJapaneseKoreanString_cold_1();
    }

    v2 = CNContentsExclusivelyInCharacterSet(v1, CNChineseJapaneseKoreanPlusWhitelistedCharacterUSet_set);
  }

  return v2;
}

id __CNContentsExclusivelyInCharacterSet_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithChar:uset_containsAllCodePoints()];
  }

  else
  {
    v4 = MEMORY[0x1E695E118];
  }

  return v4;
}

uint64_t sub_1859F7C78()
{
  result = sub_185A7E7D4();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_185A7E754();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_185A7E724();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

id sub_1859F7DB8()
{
  result = [objc_allocWithZone(CNUnfairLock) init];
  qword_1ED5EBAC0 = result;
  return result;
}

id TriageEvent.init(name:logger:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v43 = a3;
  v42 = a2;
  v40 = a1;
  v6 = sub_185A7E724();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_185A7E7D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_185A7E754();
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_timeProvider;
  v19 = [objc_opt_self() currentEnvironment];
  v20 = [v19 timeProvider];

  *(v5 + v18) = v20;
  v21 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier;
  if (qword_1ED5EBAB8 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED5EBAC0;
  result = [qword_1ED5EBAC0 lock];
  v24 = qword_1ED5EBAA8 + 1;
  if (__OFADD__(qword_1ED5EBAA8, 1))
  {
    __break(1u);
  }

  else
  {
    v39 = v6;
    v25 = (v5 + v21);
    ++qword_1ED5EBAA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAE48, &qword_185A92360);
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E6530];
    *(v26 + 16) = xmmword_185A92340;
    v28 = MEMORY[0x1E69E65A8];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = v24;
    v29 = sub_185A7E924();
    v31 = v30;
    [v22 unlock];
    *v25 = v29;
    v25[1] = v31;
    *(v5 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_metadata) = MEMORY[0x1E69E7CC0];
    v32 = v5 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_start;
    *v32 = 0;
    *(v32 + 8) = 1;
    *(v5 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostState) = 0;
    v33 = v5 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName;
    v34 = v42;
    *v33 = v40;
    *(v33 + 8) = v34;
    *(v33 + 16) = v43;
    v35 = *(v10 + 16);
    v36 = v45;
    v35(v5 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_logger, v45, v9);
    v35(v13, v36, v9);
    sub_185A7E734();
    v37 = v41;
    (*(v14 + 16))(v5 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signposter, v17, v41);
    sub_185A7E744();
    v38 = v44;
    sub_185A7E704();
    (*(v10 + 8))(v36, v9);
    (*(v14 + 8))(v17, v37);
    (*(v46 + 32))(v5 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostID, v38, v39);
    return v5;
  }

  return result;
}

void sub_1859F8254()
{
  v1 = v0;
  v2 = sub_185A7E764();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185A7E724();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_185A7E754();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00]();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_timeProvider) timestamp];
  if (*(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_start + 8))
  {
    goto LABEL_21;
  }

  v17 = v16;
  v39 = v7;
  v40 = v6;
  v18 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_start);
  (*(v12 + 16))(v15, v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signposter, v11);
  if (!*(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostState))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v19 = v17 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName + 8);
  v42 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName);
  v37 = v20;
  v41 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName + 16);

  v21 = sub_185A7E744();
  sub_185A7E774();
  v36 = sub_185A7EA64();
  if (sub_185A7EAA4())
  {
    if ((v41 & 1) == 0)
    {
      v22 = v42;
      v23 = v38;
      if (v42)
      {
LABEL_11:
        v35 = v22;

        sub_185A7E7A4();

        if ((*(v23 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
        {
          v24 = 0;
          v25 = "[Error] Interval already ended";
        }

        else
        {
          (*(v23 + 8))(v5, v2);
          v25 = "Time: %fs";
          v24 = 1;
        }

        v26 = swift_slowAlloc();
        *v26 = 0;
        *(v26 + 1) = v24;
        *(v26 + 2) = 2048;
        *(v26 + 4) = v19;
        v27 = sub_185A7E714();
        _os_signpost_emit_with_name_impl(&dword_1859F0000, v21, v36, v27, v35, v25, v26, 0xCu);
        MEMORY[0x1865FC480](v26, -1, -1);
        goto LABEL_15;
      }

      __break(1u);
    }

    v23 = v38;
    if (v42 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v42 & 0xFFFFF800) == 0xD800)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v42 >> 16 <= 0x10)
      {
        v22 = &v43;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_15:

  (*(v39 + 8))(v10, v40);
  (*(v12 + 8))(v15, v11);

  v28 = sub_185A7E7B4();
  v29 = sub_185A7EA54();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v44 = v31;
    *v30 = 136315650;
    *(v30 + 4) = sub_1859F900C(*(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier), *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier + 8), &v44);
    *(v30 + 12) = 2080;
    v32 = sub_185A7EB14();
    v34 = sub_1859F900C(v32, v33, &v44);

    *(v30 + 14) = v34;
    *(v30 + 22) = 2048;
    *(v30 + 24) = v19;
    _os_log_impl(&dword_1859F0000, v28, v29, "%s END %s (%fs)", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865FC480](v31, -1, -1);
    MEMORY[0x1865FC480](v30, -1, -1);
  }
}

uint64_t TriageEvent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_logger;
  v2 = sub_185A7E7D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signposter;
  v4 = sub_185A7E754();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_timeProvider);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier + 8);

  v7 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_metadata);

  v8 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostID;
  v9 = sub_185A7E724();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostState);

  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v11, v12);
}

char *sub_1859F8918(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAE78, &unk_185A92470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1859F8A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_metadata;
  swift_beginAccess();
  v12 = *(v5 + v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1859F8918(0, *(v12 + 2) + 1, 1, v12);
    *(v5 + v11) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1859F8918((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[40 * v15];
  *(v16 + 4) = a1;
  *(v16 + 5) = a2;
  *(v16 + 6) = a3;
  *(v16 + 7) = a4;
  v16[64] = a5 & 1;
  *(v5 + v11) = v12;
  swift_endAccess();
}

id sub_1859F8B80()
{
  v1 = v0;
  v2 = sub_185A7E724();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46[-v8];

  v10 = sub_185A7E7B4();
  v11 = sub_185A7EA54();

  v12 = os_log_type_enabled(v10, v11);
  v48 = v7;
  v49 = v2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v51[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1859F900C(*(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier), *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier + 8), v51);
    *(v13 + 12) = 2080;
    v15 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName);
    v16 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName + 8);
    v17 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName + 16);
    v18 = sub_185A7EB14();
    v20 = v3;
    v21 = sub_1859F900C(v18, v19, v51);

    *(v13 + 14) = v21;
    v3 = v20;
    _os_log_impl(&dword_1859F0000, v10, v11, "%s BEGIN %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FC480](v14, -1, -1);
    MEMORY[0x1865FC480](v13, -1, -1);
  }

  v22 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_metadata;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = *(v23 + 16);

  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = (v23 + 64);
    while (v25 < *(v23 + 16))
    {
      v28 = *v27;
      v29 = *(v27 - 2);
      v30 = *(v27 - 1);
      v31 = *(v27 - 3);
      v51[0] = *(v27 - 4);
      v51[1] = v31;
      v51[2] = v29;
      v51[3] = v30;
      v52 = v28;

      sub_1859F9568(v51, v1);
      ++v25;

      v27 += 40;
      if (v24 == v25)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_7:

  v32 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName);
  v33 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName + 16);
  v34 = *(v3 + 16);
  v35 = v49;
  v34(v9, v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostID, v49);
  v26 = sub_185A7E744();
  v47 = sub_185A7EA74();
  if ((sub_185A7EAA4() & 1) == 0)
  {
LABEL_16:

    v34(v48, v9, v35);
    v38 = sub_185A7E794();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_185A7E784();
    (*(v3 + 8))(v9, v35);
    v42 = *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostState);
    *(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostState) = v41;

    result = [*(v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_timeProvider) timestamp];
    v44 = v1 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_start;
    *v44 = v45;
    *(v44 + 8) = 0;
    return result;
  }

  if ((v33 & 1) == 0)
  {
    if (v32)
    {
LABEL_15:
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = sub_185A7E714();
      _os_signpost_emit_with_name_impl(&dword_1859F0000, v26, v47, v37, v32, "", v36, 2u);
      MEMORY[0x1865FC480](v36, -1, -1);
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v32 >> 32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v32 & 0xFFFFF800) != 0xD800)
  {
    if (v32 >> 16 > 0x10)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v32 = &v50;
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1859F900C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1859F92C8(v11, 0, 0, 1, a1, a2);
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
    sub_1859F94C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void *sub_1859F90D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAE68, &qword_185A92460);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1859F914C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1859F90D8(v5, 0);
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

  result = sub_185A7EB34();
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
        v10 = sub_185A7E964();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1859F90D8(v10, 0);
        result = sub_185A7EB04();
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

uint64_t sub_1859F927C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1859F914C(a1, a2);
  sub_1859F93D4(&unk_1EF4407D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

unint64_t sub_1859F92C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1859F927C(a5, a6);
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
    result = sub_185A7EB34();
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

uint64_t sub_1859F93D4(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_185A6F6C4(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1859F94C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void sub_1859F9568(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);

  v8 = sub_185A7E7B4();
  v9 = sub_185A7EA54();

  v10 = os_log_type_enabled(v8, v9);
  if (v7 == 1)
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315651;
      *(v11 + 4) = sub_1859F900C(*(a2 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier), *(a2 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier + 8), &v14);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1859F900C(v3, v4, &v14);
      *(v11 + 22) = 2081;
      *(v11 + 24) = sub_1859F900C(v5, v6, &v14);
      v13 = "%s - %s: %{private}s";
LABEL_6:
      _os_log_impl(&dword_1859F0000, v8, v9, v13, v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865FC480](v12, -1, -1);
      MEMORY[0x1865FC480](v11, -1, -1);

      return;
    }
  }

  else if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1859F900C(*(a2 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier), *(a2 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier + 8), &v14);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1859F900C(v3, v4, &v14);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1859F900C(v5, v6, &v14);
    v13 = "%s - %s: %s";
    goto LABEL_6;
  }
}

BOOL CNIsNull_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFB0];
  v3 = a2;
  v4 = [v2 null];

  return v4 == v3;
}

BOOL CNIsNotNull_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFB0];
  v3 = a2;
  v4 = [v2 null];

  return v4 != v3;
}

uint64_t __CNKatakanaCharacterUSet_block_invoke()
{
  result = CNCopyCharacterUSetWithPattern(@"[:scx=Kana:]");
  CNKatakanaCharacterUSet_set = result;
  return result;
}

uint64_t CNCopyCharacterUSetWithPattern(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  [a1 cStringUsingEncoding:10];
  v1 = uset_openPattern();
  v2 = v1;
  MEMORY[0x1865FC770](v1);
  return v2;
}

uint64_t __CNChineseJapaneseKoreanPlusWhitelistedCharacterUSet_block_invoke()
{
  result = CNCopyCharacterUSetWithPattern(@"[[:Hani:][:Hiragana:][:scx=Kana:][:Bopomofo:][:Hangul:][ˉˊˇˋ˙][()（）]]");
  CNChineseJapaneseKoreanPlusWhitelistedCharacterUSet_set = result;
  return result;
}

void __LoadManagedConfiguration_block_invoke()
{
  LoadManagedConfiguration_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 1);
  if (!LoadManagedConfiguration_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadManagedConfiguration_block_invoke_cold_1();
  }
}

void __LoadManagedConfiguration_block_invoke_0()
{
  LoadManagedConfiguration_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 1);
  if (!LoadManagedConfiguration_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadManagedConfiguration_block_invoke_cold_1();
  }
}

void sub_1859FA3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CNCreateCollatorWithPreferredLocale(uint64_t a1, void *a2)
{
  v13 = 0;
  v2 = a2;
  if ([(__CFString *)v2 length])
  {
    v3 = v2;
    if (!v2)
    {
      v4 = 0;
LABEL_7:
      v6 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v3 = CNCopyUserLanguage();
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  if (CStringPtr)
  {
    v4 = CStringPtr;
    goto LABEL_7;
  }

  v7 = [(__CFString *)v3 maximumLengthOfBytesUsingEncoding:1];
  v12 = 0;
  v4 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  v8 = [(__CFString *)v3 getBytes:v4 maxLength:v7 usedLength:&v12 encoding:1 options:0 range:0 remainingRange:[(__CFString *)v3 length], 0];
  if (v8)
  {
    v4[v12] = 0;
  }

  else
  {
    free(v4);
    v4 = 0;
  }

  v6 = v8 ^ 1;
LABEL_12:
  if (!v4)
  {
    v4 = "en";
  }

  v9 = ucol_open();
  if (v13 >= 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  ucol_setAttribute();
  if ((v6 & 1) == 0)
  {
    free(v4);
  }

  return v10;
}

Class initMCProfileConnection()
{
  if (LoadManagedConfiguration_loadPredicate_0 != -1)
  {
    initMCProfileConnection_cold_1();
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection = result;
  getMCProfileConnectionClass = MCProfileConnectionFunction;
  return result;
}

CFLocaleIdentifier CNCopyUserLanguage()
{
  v0 = CFPreferencesCopyAppValue(@"AppleLanguages", *MEMORY[0x1E695E890]);
  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = v0;
  if (CFArrayGetCount(v0) <= 0)
  {
    CFRelease(v1);
LABEL_6:
    CanonicalLanguageIdentifierFromString = @"en";
    CFRetain(@"en");
    return CanonicalLanguageIdentifierFromString;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, ValueAtIndex);
  CFRelease(v1);
  if (!CanonicalLanguageIdentifierFromString)
  {
    goto LABEL_6;
  }

  return CanonicalLanguageIdentifierFromString;
}

id CNSortKeyStringForString(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2)
  {
    goto LABEL_7;
  }

  if (![v3 length])
  {
    goto LABEL_7;
  }

  v10 = 0;
  v5 = CNCreateSortKey(v4, a2, 0, &v10);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  if (!v10 || (v7 = objc_alloc(MEMORY[0x1E696AEC0]), (v8 = [v7 initWithBytesNoCopy:v6 length:v10 encoding:5 freeWhenDone:1]) == 0))
  {
    free(v6);
LABEL_7:
    v8 = 0;
  }

  return v8;
}

const char *CNCreateSortKey(void *a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v17[500] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = [(__CFString *)v6 length];
  v8 = v7;
  v9 = a2;
  if (a2)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = CNCreateCollatorWithPreferredLocale(0, 0);
    if (v8)
    {
LABEL_3:
      CharactersPtr = CFStringGetCharactersPtr(v6);
      v11 = CharactersPtr;
      if (!CharactersPtr)
      {
        v11 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
        v18.location = 0;
        v18.length = v8;
        CFStringGetCharacters(v6, v18, v11);
      }

      ucol_setStrength();
      SortKey = ucol_getSortKey();
      v13 = malloc_type_calloc(SortKey, 1uLL, 0x100004077774924uLL);
      v14 = v13;
      if (SortKey < 0xFA1)
      {
        memcpy(v13, v17, SortKey);
        if (CharactersPtr)
        {
          goto LABEL_13;
        }
      }

      else
      {
        SortKey = ucol_getSortKey();
        if (CharactersPtr)
        {
          goto LABEL_13;
        }
      }

      free(v11);
LABEL_13:
      if (a4)
      {
        *a4 = SortKey - 1;
        *a4 = strlen(v14);
      }

      goto LABEL_15;
    }
  }

  v14 = 0;
  if (a4)
  {
    *a4 = 0;
  }

LABEL_15:
  if (v9 != a2 && v9)
  {
    ucol_close();
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

Class initIntlUtility()
{
  if (LoadIntlUtilities_loadPredicate != -1)
  {
    initIntlUtility_cold_1();
  }

  result = objc_getClass("IntlUtility");
  classIntlUtility = result;
  getIntlUtilityClass[0] = IntlUtilityFunction;
  return result;
}

Class initIntlUtility_0()
{
  if (LoadIntlPreferences_loadPredicate != -1)
  {
    initIntlUtility_cold_1_0();
  }

  result = objc_getClass("IntlUtility");
  classIntlUtility_0 = result;
  getIntlUtilityClass_0[0] = IntlUtilityFunction_0;
  return result;
}

void __LoadIntlPreferences_block_invoke()
{
  LoadIntlPreferences_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IntlPreferences.framework/IntlPreferences", 1);
  if (!LoadIntlPreferences_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadIntlPreferences_block_invoke_cold_1();
  }
}

void sub_1859FAF10(void (*a1)(id))
{
  v2 = sub_1859F8B80();
  a1(v2);
  sub_1859F8254();
}

id CNObserverCancelableCompletionHandler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __CNObserverCancelableCompletionHandler_block_invoke;
  v13 = &unk_1E6ED7C38;
  v14 = v4;
  v15 = v3;
  v5 = v3;
  v6 = v4;
  v7 = _Block_copy(&v10);
  v8 = [v7 copy];

  return v8;
}

id CNArrayCompactMapFastPath(void *a1, void *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v27 = v3;
  v5 = [v3 count];
  v6 = v5;
  if (v5 >= 0x81)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D930];
    v28 = @"count";
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    v29[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v22 = [v18 exceptionWithName:v19 reason:@"CNArrayCompactMapFastPath called with too many objects" userInfo:v21];
    v23 = v22;

    objc_exception_throw(v22);
  }

  v24[1] = v24;
  v7 = 8 * v5;
  MEMORY[0x1EEE9AC00](v5);
  v25 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v25, 8 * v6);
  v8 = 0;
  if (v6)
  {
    v9 = 0;
    v26 = (v4 + 2);
    do
    {
      v10 = [v27 objectAtIndexedSubscript:v9];
      v11 = v4[2](v4, v10);
      v12 = (off_1EF4401C8)(&__block_literal_global_4_3, v11);

      if (v12)
      {
        objc_storeStrong(&v25[8 * v8++], v11);
      }

      ++v9;
    }

    while (v6 != v9);
  }

  v13 = v25;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:v8];
  if (v6)
  {
    v15 = v13 - 8;
    do
    {

      v7 -= 8;
    }

    while (v7);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

void sub_1859FB440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CNObserverCancelableCompletionHandler_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __CNObserverCancelableCompletionHandler_block_invoke_cold_1(v8);
    }

    v9 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __CNObserverCancelableCompletionHandler_block_invoke_cold_2(v5, v9);
    }

    v10 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __CNObserverCancelableCompletionHandler_block_invoke_cold_3(v7, v10);
    }

    v11 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CNBehaviorSubject observerDidReceiveResult:v11];
    }

    v21[0] = CNObserverProtocolExceptionResultKey[0];
    v21[1] = CNObserverProtocolExceptionErrorKey[0];
    v22[0] = v5;
    v22[1] = v7;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    CNObserverThrowProtocolExceptionWithReason(@"Either the result or the error must be nil", v12);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __CNObserverCancelableCompletionHandler_block_invoke_24;
  v17[3] = &unk_1E6ED57E0;
  v18 = v5;
  v19 = v7;
  v13 = *(a1 + 32);
  v20 = *(a1 + 40);
  v14 = v7;
  v15 = v5;
  [v13 performBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

CNApplicationProxy *CNApplicationProxyFromLSApplicationRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNApplicationProxy alloc] initWithLSApplicationRecord:v2];

  return v3;
}

uint64_t sub_1859FC754()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1859FC794()
{
  v1 = sub_185A7E6F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEB0, &qword_185A924E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1859FC8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185A7E6F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEC0, &qword_185A924F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1859FC9EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_185A7E6F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEC0, &qword_185A924F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1859FCAF4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1859FCB2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1859FCB7C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1859FCBC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id CopyViaSecureCoding(void *a1)
{
  v1 = MEMORY[0x1E696ACC8];
  v2 = a1;
  v3 = [[v1 alloc] initRequiringSecureCoding:1];
  [v3 encodeObject:v2 forKey:@"key"];
  [v3 finishEncoding];
  v4 = objc_alloc(MEMORY[0x1E696ACD0]);
  v5 = [v3 encodedData];
  v10 = 0;
  v6 = [v4 initForReadingFromData:v5 error:&v10];

  v7 = objc_opt_class();
  v8 = [v6 decodeObjectOfClass:v7 forKey:@"key"];
  [v6 finishDecoding];

  return v8;
}

id CopyViaSecureCodingWithAllowedClasses(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696ACC8];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initRequiringSecureCoding:1];
  [v6 encodeObject:v5 forKey:@"key"];
  [v6 finishEncoding];
  v7 = objc_alloc(MEMORY[0x1E696ACD0]);
  v8 = [v6 encodedData];
  v15 = 0;
  v9 = [v7 initForReadingFromData:v8 error:&v15];

  v10 = objc_opt_class();
  v11 = [v4 arrayByAddingObject:v10];

  v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  v13 = [v9 decodeObjectOfClasses:v12 forKey:@"key"];

  [v9 finishDecoding];

  return v13;
}

id CopyViaXPCCoding(void *a1)
{
  v1 = MEMORY[0x1E696B0B0];
  v2 = a1;
  v3 = [v1 _testEncodeAndDecodeObject:v2 allowedClass:objc_opt_class()];

  return v3;
}

id CopyViaXPCCodingWithAllowedClasses(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 arrayByAddingObject:objc_opt_class()];

  v6 = MEMORY[0x1E696B0B0];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v8 = [v6 _testEncodeAndDecodeObject:v4 allowedClasses:v7];

  return v8;
}

uint64_t CNVirtualSchedulerJobTimeComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 time];
  v6 = [v4 time];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

void sub_1859FE2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CNCoreDelegateInfo *CNCoreDelegateInfoFromFamilyMember_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNCoreDelegateInfo alloc] initWithFamilyMember:v2];

  return v3;
}

CNCoreDelegateInfo *CNCoreDelegateInfoFromACAccount_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696ADF0];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 parentAccount];
  v6 = [v5 _cn_firstName];
  [v4 setGivenName:v6];

  v7 = [v3 parentAccount];
  v8 = [v7 _cn_lastName];
  [v4 setFamilyName:v8];

  v9 = [v3 childAccounts];
  v10 = [v9 count] != 0;

  v11 = [CNCoreDelegateInfo alloc];
  v12 = [v3 _cn_dsid];
  v13 = [v3 _cn_altDSID];
  v14 = [v3 _cn_appleID];
  v15 = [v3 _cn_principalPath];

  v16 = [(CNCoreDelegateInfo *)v11 initWithDSID:v12 altDSID:v13 appleID:v14 principalPath:v15 nameComponents:v4 isMe:v10];

  return v16;
}

void sub_185A00E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A01EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A020BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A023B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_185A02638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

id CNRangeDividedIntoStridesOfLength(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
    v5 = a1;
    if (a2 <= a3)
    {
      v11 = [MEMORY[0x1E696B098] valueWithRange:{a1, a2}];
      v14[0] = v11;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF70] array];
      for (i = v5 + v4; v5 < i; v4 = v8)
      {
        v8 = v4 - a3;
        if (v4 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = v4;
        }

        v10 = [MEMORY[0x1E696B098] valueWithRange:{v5, v9}];
        [v6 _cn_addNonNilObject:v10];

        v5 += a3;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

id CNRangeDividedIntoBalancedStridesOfLength(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a1;
    if (a2 <= a3)
    {
      v14 = [MEMORY[0x1E696B098] valueWithRange:{a1, a2}];
      v17[0] = v14;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF70] array];
      v7 = v5 + a2;
      if (v5 < v5 + a2)
      {
        v8 = vcvtpd_u64_f64(a2 / a3);
        v9 = (a2 / v8);
        v10 = a2 % v8;
        do
        {
          if (v10)
          {
            v11 = v9 + 1;
          }

          else
          {
            v11 = v9;
          }

          if (v10)
          {
            --v10;
          }

          else
          {
            v10 = 0;
          }

          if (v11 >= v7 - v5)
          {
            v12 = v7 - v5;
          }

          else
          {
            v12 = v11;
          }

          v13 = [MEMORY[0x1E696B098] valueWithRange:{v5, v12}];
          [v6 _cn_addNonNilObject:v13];

          v5 += v12;
        }

        while (v5 < v7);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_185A04F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CNArrayMapSlowPath_block_invoke(uint64_t a1)
{
  v4 = (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = off_1EF4401A8(&__block_literal_global_2_2, v4);
  [v2 addObject:v3];
}

void __CNArrayConcurrentMapSlowPath_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (*(*(a1 + 32) + 16))();
  v5 = off_1EF4401A8(&__block_literal_global_2_2, v8);
  v6 = *(a1 + 40);
  v7 = *(v6 + 8 * a3);
  *(v6 + 8 * a3) = v5;
}

Class initPAOutOfProcessPickerAccess()
{
  if (LoadPrivacyAccounting_loadPredicate != -1)
  {
    initPATCCAccess_cold_1();
  }

  result = objc_getClass("PAOutOfProcessPickerAccess");
  classPAOutOfProcessPickerAccess = result;
  getPAOutOfProcessPickerAccessClass = PAOutOfProcessPickerAccessFunction;
  return result;
}

id initPAAuthenticatedClientIdentity(_OWORD *a1, void *a2)
{
  v3 = LoadPrivacyAccounting_loadPredicate;
  v4 = a2;
  if (v3 != -1)
  {
    initPATCCAccess_cold_1();
  }

  softLinkPAAuthenticatedClientIdentity = dlsym(LoadPrivacyAccounting_frameworkLibrary, "PAAuthenticatedClientIdentity");
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = (softLinkPAAuthenticatedClientIdentity)(v8, v4);

  return v6;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id CNJSONStringFromObject_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a2 options:0 error:0];
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v2 encoding:4];

  return v3;
}

id CNObjectFromJSONString_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 dataUsingEncoding:4];
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v2 options:0 error:0];

  return v3;
}

void sub_185A0839C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A088E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A09D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A0A594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void CNRunWithLocks(void *a1, void *a2)
{
  v4 = a1;
  v3 = a2;
  [v4 _cn_each:&__block_literal_global_9];
  v3[2](v3);
  [v4 _cn_each_reverse:&__block_literal_global_2];
}

void CNRunWithLockCatching(void *a1, void *a2, void *a3)
{
  v7 = a1;
  v5 = a2;
  v6 = a3;
  [v7 lock];
  v5[2](v5);
  [v7 unlock];
}

id CNResultWithLocks(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 _cn_each:&__block_literal_global_9];
  v5 = v4[2](v4);
  [v3 _cn_each_reverse:&__block_literal_global_2];

  return v5;
}

void __softLinkSimulateCrashAvailable_block_invoke()
{
  if (LoadCrashReporterSupport_loadPredicate != -1)
  {
    __softLinkSimulateCrashAvailable_block_invoke_cold_1();
  }

  if (LoadCrashReporterSupport_frameworkLibrary)
  {
    v0 = dlsym(LoadCrashReporterSupport_frameworkLibrary, "SimulateCrash") != 0;
  }

  else
  {
    v0 = 0;
  }

  softLinkSimulateCrashAvailable_isAvailable = v0;
}

void __LoadCrashReporterSupport_block_invoke()
{
  LoadCrashReporterSupport_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  if (!LoadCrashReporterSupport_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadCrashReporterSupport_block_invoke_cold_1();
  }
}

uint64_t initSimulateCrash(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = LoadCrashReporterSupport_loadPredicate;
  v6 = a3;
  if (v5 != -1)
  {
    __softLinkSimulateCrashAvailable_block_invoke_cold_1();
  }

  softLinkSimulateCrash = dlsym(LoadCrashReporterSupport_frameworkLibrary, "SimulateCrash");
  v7 = (softLinkSimulateCrash)(a1, a2, v6);

  return v7;
}

void sub_185A0B7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A0C310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_185A0C510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sIsDirectoryByResourceKey_block_invoke(uint64_t a1, void *a2)
{
  v9 = 0;
  v2 = *MEMORY[0x1E695DB78];
  v8 = 0;
  v3 = [a2 getResourceValue:&v9 forKey:v2 error:&v8];
  v4 = v9;
  v5 = v8;
  if (v3)
  {
    [CNResult successWithValue:v4];
  }

  else
  {
    [CNResult failureWithError:v5];
  }
  v6 = ;

  return v6;
}

id sIsDirectoryByStat_block_invoke_2(uint64_t a1, void *a2)
{
  v9 = 0;
  v2 = a2;
  v3 = +[(CNEnvironmentBase *)CNEnvironment];
  v4 = [v3 fileManager];
  v5 = [v4 fileExistsAtURL:v2 isDirectory:&v9];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    v7 = [CNResult successWithValue:v6];
  }

  else
  {
    v7 = [CNResult failureWithError:0];
  }

  return v7;
}

uint64_t sIsDirectoryByStat_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sIsDirectoryByResourceKey_block_invoke(v2, v2);
  if ([v3 isFailure])
  {
    v4 = [v3 error];
    v5 = [CNFoundationError isFileNotFoundError:v4];

    if (v5)
    {
      v7 = sIsDirectoryByStat_block_invoke_2(v6, v2);

      v3 = v7;
    }
  }

  if ([v3 isSuccess])
  {
    v8 = [v3 value];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v10 = os_log_create("com.apple.contacts", "filesystem");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sIsDirectoryByStat_block_invoke_3_cold_1(v2, v3);
    }

    v9 = 0;
  }

  return v9;
}

uint64_t sIsDirectory_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sIsDirectoryByResourceKey_block_invoke(v2, v2);
  if ([v3 isFailure])
  {
    v4 = [v3 error];
    v5 = [CNFoundationError isFileNotFoundError:v4];

    if (v5)
    {
      v7 = sIsDirectoryByStat_block_invoke_2(v6, v2);

      v3 = v7;
    }
  }

  if ([v3 isSuccess])
  {
    v8 = [v3 value];
    v9 = [v8 BOOLValue] ^ 1;
  }

  else
  {
    v10 = os_log_create("com.apple.contacts", "filesystem");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sIsDirectoryByStat_block_invoke_3_cold_1(v2, v3);
    }

    v9 = 0;
  }

  return v9;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_185A0E988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CNSubstringRangesContainingEmojiInString(void *a1)
{
  v1 = a1;
  if (CNStringContainsEmojiCharacters(v1))
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__3;
    v11 = __Block_byref_object_dispose__3;
    v12 = [MEMORY[0x1E695DF70] array];
    v2 = softLinkCEMEnumerateEmojiTokensInStringWithBlock;
    v3 = [v1 length];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CNSubstringRangesContainingEmojiInString_block_invoke;
    v6[3] = &unk_1E6ED5CF8;
    v6[4] = &v7;
    v2(v1, 0, v3, v6);
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

void sub_185A0EEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL CNStringContainsEmojiCharacters(void *a1)
{
  v1 = a1;
  if (off_1EF440708(&__block_literal_global_120, v1))
  {
    v2 = 0;
  }

  else
  {
    if (CNEmojiCharacterSet_onceToken != -1)
    {
      CNStringContainsEmojiCharacters_cold_1();
    }

    v2 = [v1 rangeOfCharacterFromSet:CNEmojiCharacterSet_sEmoji] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

void __CNSubstringRangesContainingEmojiInString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 0x7FFFFFFFFFFFFFFFLL && a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [MEMORY[0x1E696B098] valueWithRange:?];
    [v6 addObject:v7];
  }
}

uint64_t CNIsChineseString(void *a1)
{
  v1 = a1;
  if (off_1EF440708(&__block_literal_global_120, v1))
  {
    v2 = 0;
  }

  else
  {
    if (CNChineseCharacterUSet_onceToken != -1)
    {
      CNIsChineseString_cold_1();
    }

    v2 = CNContentsExclusivelyInCharacterSet(v1, CNChineseCharacterUSet_set);
  }

  return v2;
}

uint64_t CNIsArabicString(void *a1)
{
  v1 = a1;
  if (off_1EF440708(&__block_literal_global_120, v1))
  {
    v2 = 0;
  }

  else
  {
    if (CNArabicCharacterUSet_onceToken != -1)
    {
      CNIsArabicString_cold_1();
    }

    v2 = CNContentsExclusivelyInCharacterSet(v1, CNArabicCharacterUSet_set);
  }

  return v2;
}

uint64_t CNStringContainsChineseJapaneseKoreanCharacters(void *a1)
{
  v1 = a1;
  if (off_1EF440708(&__block_literal_global_120, v1))
  {
    v2 = 0;
  }

  else
  {
    if (CNChineseJapaneseKoreanCharacterUSet_onceToken != -1)
    {
      CNStringContainsChineseJapaneseKoreanCharacters_cold_1();
    }

    v3 = CNChineseJapaneseKoreanCharacterUSet_set;
    v4 = v1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v9 = __CNStringContainsAnyCharactersFromUSet_block_invoke;
    v10 = &__block_descriptor_40_e13_C20__0r_S8i16l;
    v11 = v3;
    v5 = v8;
    if (off_1EF440708(&__block_literal_global_120, v4))
    {
      v2 = (v9)(v5, 0, 0) != 0;
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __CNStringEvaluateWithUCharTest_block_invoke;
      v12[3] = &unk_1E6ED5D60;
      v13 = v5;
      v6 = [v4 _cn_resultWithAllCharacters:v12];
      v2 = [v6 BOOLValue];
    }
  }

  return v2;
}

uint64_t CNStringContainsKoreanCharacters(void *a1)
{
  v1 = CNInvertedHangulCharacterUSet_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    CNStringContainsKoreanCharacters_cold_1();
  }

  v3 = CNContentsExclusivelyInCharacterSet(v2, CNInvertedHangulCharacterUSet_set);

  return v3 ^ 1u;
}

BOOL CNStringContainsNonLatinCharacters(void *a1)
{
  v1 = a1;
  if (off_1EF440708(&__block_literal_global_120, v1))
  {
    v2 = 0;
  }

  else
  {
    if (CNLatinCharacterUSet_onceToken != -1)
    {
      CNStringContainsNonLatinCharacters_cold_1();
    }

    if (CNContentsExclusivelyInCharacterSet(v1, CNLatinCharacterUSet_set))
    {
      v2 = CNStringContainsEmojiCharacters(v1);
    }

    else
    {
      v2 = 1;
    }
  }

  return v2;
}

void initCEMEnumerateEmojiTokensInStringWithBlock(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = LoadCoreEmoji_loadPredicate;
  v8 = a4;
  if (v7 != -1)
  {
    initCEMEnumerateEmojiTokensInStringWithBlock_cold_1();
  }

  softLinkCEMEnumerateEmojiTokensInStringWithBlock = dlsym(LoadCoreEmoji_frameworkLibrary, "CEMEnumerateEmojiTokensInStringWithBlock");
  (softLinkCEMEnumerateEmojiTokensInStringWithBlock)(a1, a2, a3, v8);
}

void __LoadCoreEmoji_block_invoke()
{
  LoadCoreEmoji_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CoreEmoji.framework/CoreEmoji", 1);
  if (!LoadCoreEmoji_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadCoreEmoji_block_invoke_cold_1();
  }
}

uint64_t __CNChineseCharacterUSet_block_invoke()
{
  result = CNCopyCharacterUSetWithPattern(@"[:Hani:]");
  CNChineseCharacterUSet_set = result;
  return result;
}

uint64_t __CNArabicCharacterUSet_block_invoke()
{
  result = CNCopyCharacterUSetWithPattern(@"[[:Arabic:][:block=ARABIC:]]");
  CNArabicCharacterUSet_set = result;
  return result;
}

BOOL __CNStringContainsAnyCharactersFromUSet_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      return MEMORY[0x1865FC790](*(a1 + 32)) < a3;
    }
  }

  return result;
}

id __CNStringEvaluateWithUCharTest_block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:(*(*(a1 + 32) + 16))()];

  return v1;
}

uint64_t __CNChineseJapaneseKoreanCharacterUSet_block_invoke()
{
  result = CNCopyCharacterUSetWithPattern(@"[[:Hani:][:Hiragana:][:scx=Kana:][:Bopomofo:][:Hangul:]]");
  CNChineseJapaneseKoreanCharacterUSet_set = result;
  return result;
}

uint64_t __CNInvertedHangulCharacterUSet_block_invoke()
{
  result = CNCopyCharacterUSetWithPattern(@"[^[:Hangul:]]");
  CNInvertedHangulCharacterUSet_set = result;
  return result;
}

void __CNEmojiCharacterSet_block_invoke()
{
  if (LoadCoreText_loadPredicate != -1)
  {
    __CNEmojiCharacterSet_block_invoke_cold_1();
  }

  v0 = (softLinkCTFontCreateWithName[0])(@"AppleColorEmoji", 0, 0.0);
  if (v0)
  {
    v1 = v0;
    v5 = softLinkCTFontCopyCharacterSet(v0);
    CFRelease(v1);
    v2 = [v5 mutableCopy];
    [v2 removeCharactersInRange:{0, 128}];
    v3 = [v2 copy];
    v4 = CNEmojiCharacterSet_sEmoji;
    CNEmojiCharacterSet_sEmoji = v3;
  }
}

void __LoadCoreText_block_invoke()
{
  LoadCoreText_frameworkLibrary = dlopen("/System/Library/Frameworks/CoreText.framework/CoreText", 1);
  if (!LoadCoreText_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadCoreText_block_invoke_cold_1();
  }
}

uint64_t initCTFontCreateWithName(uint64_t a1, uint64_t a2, float a3)
{
  if (LoadCoreText_loadPredicate != -1)
  {
    __CNEmojiCharacterSet_block_invoke_cold_1();
  }

  v6 = dlsym(LoadCoreText_frameworkLibrary, "CTFontCreateWithName");
  softLinkCTFontCreateWithName[0] = v6;
  v7.n128_f32[0] = a3;

  return (v6)(a1, a2, v7);
}

uint64_t initCTFontCopyCharacterSet(uint64_t a1)
{
  if (LoadCoreText_loadPredicate != -1)
  {
    __CNEmojiCharacterSet_block_invoke_cold_1();
  }

  v2 = dlsym(LoadCoreText_frameworkLibrary, "CTFontCopyCharacterSet");
  softLinkCTFontCopyCharacterSet = v2;

  return (v2)(a1);
}

uint64_t __CNLatinCharacterUSet_block_invoke()
{
  result = CNCopyCharacterUSetWithPattern(@"[[:Latin:][:Common:][:Inherited:]]");
  CNLatinCharacterUSet_set = result;
  return result;
}

id sRE(uint64_t a1)
{
  v3 = 0;
  v1 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:a1 options:1 error:&v3];

  return v1;
}

uint64_t __CNGuardOSLog_block_invoke()
{
  CNGuardOSLog_cn_once_object_0 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __CNGuardOSLog_block_invoke_0()
{
  CNGuardOSLog_cn_once_object_0_0 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t __CNGuardOSLog_block_invoke_1()
{
  CNGuardOSLog_cn_once_object_0_1 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t CNIsAddressingGrammarEmpty_block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = [a2 pronouns];
  v3 = off_1EF43E9E8(&__block_literal_global_5, v2);

  return v3;
}

id CNContactsFoundationBundle()
{
  if (CNContactsFoundationBundle_onceToken != -1)
  {
    CNContactsFoundationBundle_cold_1();
  }

  v1 = CNContactsFoundationBundle___bundle;

  return v1;
}

uint64_t __CNContactsFoundationBundle_block_invoke()
{
  CNContactsFoundationBundle___bundle = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AddressBook.ContactsFoundation"];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __CNGuardOSLog_block_invoke_2()
{
  CNGuardOSLog_cn_once_object_0_2 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __CNGuardOSLog_block_invoke_3()
{
  CNGuardOSLog_cn_once_object_0_3 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

BOOL CNPairNeitherElementIsNil_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  if (v3)
  {
    v4 = [v2 second];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_185A20890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_185A25358(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_185A255E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_185A28420(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 136));
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_185A297C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_185A2B0D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 176));
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_185A2B4D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v3 - 184));
  _Unwind_Resume(a1);
}

void sub_185A2C3A0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_185A2DF28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

_CNBlockObservable *CNObservableWithBlock(void *a1)
{
  v1 = a1;
  v2 = [[_CNBlockObservable alloc] initWithBlock:v1];

  return v2;
}

_CNScheduledObservable *CNObservableSubscribeOn(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[_CNScheduledObservable alloc] initWithObservable:v4 scheduler:v3];

  return v5;
}

id CNObservableAllObjects(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_alloc_init(CNPromise);
  v5 = [(CNPromise *)v4 completionHandlerAdapter];
  v6 = [CNObserver observerWithCompletionHandler:v5];

  v7 = [v3 subscribe:v6];
  v8 = [(CNPromise *)v4 future];
  v9 = [v8 result:a2];

  return v9;
}

void sub_185A2F438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_185A2F80C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_185A2FC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_185A30310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_185A304D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_4()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_4;
  CNGuardOSLog_cn_once_object_0_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

Class initFAFetchFamilyCircleRequest()
{
  if (LoadFamilyCircle_loadPredicate != -1)
  {
    initFAFetchFamilyCircleRequest_cold_1();
  }

  result = objc_getClass("FAFetchFamilyCircleRequest");
  classFAFetchFamilyCircleRequest = result;
  getFAFetchFamilyCircleRequestClass = FAFetchFamilyCircleRequestFunction;
  return result;
}

void __LoadFamilyCircle_block_invoke()
{
  LoadFamilyCircle_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FamilyCircle.framework/FamilyCircle", 1);
  if (!LoadFamilyCircle_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadFamilyCircle_block_invoke_cold_1();
  }
}

void sub_185A338E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A33C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A34254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CNGetICUVersion()
{
  *versionArray = 0;
  u_getVersion(versionArray);
  return (versionArray[0] << 24) | (versionArray[1] << 16);
}

void CNGetICUCollatorVersions(_DWORD *a1, _DWORD *a2)
{
  if (CNGetICUCollatorVersions_onceToken == -1)
  {
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  CNGetICUCollatorVersions_cold_1();
  if (a2)
  {
LABEL_3:
    *a2 = CNGetICUCollatorVersions_cachedUCAVersion;
  }

LABEL_4:
  if (a1)
  {
    *a1 = CNGetICUCollatorVersions_cachedCollatorVersion;
  }
}

void __CNGetICUCollatorVersions_block_invoke()
{
  v0 = 0;
  if (ucol_open())
  {
    ucol_getVersion();
    ucol_getUCAVersion();
    CNGetICUCollatorVersions_cachedCollatorVersion = 0;
    CNGetICUCollatorVersions_cachedUCAVersion = 0;
    ucol_close();
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __CNGetICUCollatorVersions_block_invoke_cold_1(&v0);
  }
}

uint64_t CNReleaseCollator(uint64_t result)
{
  if (result)
  {
    return ucol_close();
  }

  return result;
}

void sub_185A37998(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_185A37C28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_5()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_5;
  CNGuardOSLog_cn_once_object_0_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

__CFString *CNSuspendableSchedulerConditionToString(uint64_t a1)
{
  v1 = @"CNSuspendableSchedulerConditionBuffering";
  if (a1 == 1)
  {
    v1 = @"CNSuspendableSchedulerConditionDraining";
  }

  if (a1 == 2)
  {
    return @"CNSuspendableSchedulerConditionRelaying";
  }

  else
  {
    return v1;
  }
}

void sub_185A3C56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_185A3C8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_185A3CF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_185A3D384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_185A40BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (v15)
  {
    objc_end_catch();
  }

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_185A40C20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_begin_catch(a1);
  JUMPOUT(0x185A40B68);
}

void sub_185A41068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t __GetBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = GetBundle_cn_once_object_1;
  GetBundle_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t initDiagnosticLogSubmissionEnabled()
{
  if (LoadCrashReporterSupport_loadPredicate_0 != -1)
  {
    initDiagnosticLogSubmissionEnabled_cold_1();
  }

  v0 = dlsym(LoadCrashReporterSupport_frameworkLibrary_0, "DiagnosticLogSubmissionEnabled");
  softLinkDiagnosticLogSubmissionEnabled = v0;

  return v0();
}

void __LoadCrashReporterSupport_block_invoke_0()
{
  LoadCrashReporterSupport_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  if (!LoadCrashReporterSupport_frameworkLibrary_0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadCrashReporterSupport_block_invoke_cold_1();
  }
}

id CNSocialProfileServiceUsernameURLTemplate(void *a1)
{
  v1 = [a1 uppercaseString];
  v2 = [&unk_1EF464100 objectForKey:v1];

  return v2;
}

id CNSocialProfileURLForUsername(void *a1, void *a2)
{
  v3 = a1;
  v4 = CNSocialProfileServiceUsernameURLTemplate(a2);
  v5 = CNSocialProfileURLFromTemplate(v4, v3);

  return v5;
}

id CNSocialProfileURLFromTemplate(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ((off_1EF440708(&__block_literal_global_120, v3) & 1) != 0 || off_1EF440708(&__block_literal_global_120, v4))
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v7 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v6];

    v13 = 0;
    v8 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:&v13, v7];
    v9 = v13;
    if (v9)
    {
      v10 = +[CNLogging sdkBreakageLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v15 = v3;
        v16 = 2114;
        v17 = v4;
        v18 = 2114;
        v19 = v9;
        _os_log_error_impl(&dword_1859F0000, v10, OS_LOG_TYPE_ERROR, "Error creating social profile URL from template = %{public}@, value = %{public}@, error = %{public}@", buf, 0x20u);
      }
    }

    if (off_1EF440708(&__block_literal_global_120, v8))
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

id CNSocialProfileURLForUserIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 uppercaseString];
  v5 = [&unk_1EF464128 objectForKey:v4];

  v6 = CNSocialProfileURLFromTemplate(v5, v3);

  return v6;
}

uint64_t CNSocialProfileEquivalentValues(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (CNSocialProfileEquivalentOptionalValues(v3, v4))
  {
    v5 = v3;
    v6 = v4;
    v7 = [v5 urlString];
    v8 = [v6 urlString];

    if (v7 != v8)
    {
      v9 = 0;
      if (!v7 || !v8)
      {
        goto LABEL_18;
      }

      if (([v7 isEqual:v8] & 1) == 0)
      {
        v10 = [CNSocialProfileURLParser parseSocialProfileURL:v7];
        v11 = [CNSocialProfileURLParser parseSocialProfileURL:v8];
        if (CNSocialProfileEquivalentOptionalValues(v10, v11))
        {
          v12 = [v5 service];
          v13 = [v12 isEqual:@"LinkedIn"];

          if (v13)
          {
            v14 = v7;
            v15 = v8;
            if ([v14 _cn_containsSubstring:@"/pub/"] && objc_msgSend(v15, "_cn_containsSubstring:", @"/pub/"))
            {
              v20 = [MEMORY[0x1E695DFF8] URLWithString:v14];
              v18 = [MEMORY[0x1E695DFF8] URLWithString:v15];
              v19 = [v20 pathComponents];
              v17 = [v18 pathComponents];
              v9 = [v19 isEqual:v17];
            }

            else
            {
              v9 = 1;
            }
          }

          else
          {
            v9 = 1;
          }
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_18;
      }
    }

    v9 = 1;
LABEL_18:

    goto LABEL_19;
  }

  v9 = 0;
LABEL_19:

  return v9;
}

BOOL CNSocialProfileEquivalentOptionalValues(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = CNSocialProfileEquivalentValue(v3, v4, __block_literal_global_58) && CNSocialProfileEquivalentValue(v3, v4, __block_literal_global_73) && CNSocialProfileEquivalentValue(v3, v4, __block_literal_global_75) && CNSocialProfileEquivalentValue(v3, v4, __block_literal_global_77);

  return v5;
}

id CNSocialProfileStandardServices()
{
  if (CNSocialProfileStandardServices_onceToken != -1)
  {
    CNSocialProfileStandardServices_cold_1();
  }

  v1 = CNSocialProfileStandardServices_services;

  return v1;
}

uint64_t __CNSocialProfileStandardServices_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"Twitter", @"Facebook", @"Flickr", @"LinkedIn", @"MySpace", @"SinaWeibo", @"TencentWeibo", @"Yelp", 0}];
  v1 = CNSocialProfileStandardServices_services;
  CNSocialProfileStandardServices_services = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t CNSocialProfileIsStandardServiceName(void *a1)
{
  v1 = a1;
  v2 = CNSocialProfileStandardServices();
  v3 = [v2 containsObject:v1];

  return v3;
}

BOOL CNSocialProfileEquivalentValue(void *a1, void *a2, void (**a3)(id, id))
{
  v5 = a3 + 2;
  v6 = a3[2];
  v7 = a3;
  v8 = a2;
  v9 = v6(v7, a1);
  v10 = (*v5)(v7, v8);

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || [v9 localizedCaseInsensitiveCompare:v10] == 0;

  return v12;
}

void sub_185A44E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  objc_sync_exit(v25);
  _Unwind_Resume(a1);
}

void sub_185A475D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, __CFString *a16, uint64_t a17)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v18 = objc_begin_catch(exception_object);
      v19 = [a13 os_log];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CNArchiver *)v18 decodeObjectOfClass:v19 associatedClasses:v20 data:v21 error:v22, v23, v24, v25];
      }

      a16 = @"exception";
      a17 = v18;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a17 forKeys:&a16 count:1];
      v27 = [CNFoundationError errorWithCode:6 userInfo:v26];
      if (v17)
      {
        v27 = v27;
        *v17 = v27;
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x185A4755CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_185A48C30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void CNFutureThrowProtocolExceptionWithReason(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (+[CNObservableContractEnforcement shouldEnforceRxProtocols])
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v5 userInfo:v3];
    [v4 raise];
  }
}

id CNPromiseCompletionHandlerWithDefaultValue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __CNPromiseCompletionHandlerWithDefaultValue_block_invoke;
  v13 = &unk_1E6ED7C38;
  v14 = v3;
  v15 = v4;
  v5 = v4;
  v6 = v3;
  v7 = _Block_copy(&v10);
  v8 = [v7 copy];

  return v8;
}

id CNPromiseBoolErrorCompletionHandler(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __CNPromiseBoolErrorCompletionHandler_block_invoke;
  aBlock[3] = &unk_1E6ED7C60;
  v7 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);
  v4 = [v3 copy];

  return v4;
}

id CNPromiseErrorOnlyCompletionHandler(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __CNPromiseErrorOnlyCompletionHandler_block_invoke;
  aBlock[3] = &unk_1E6ED5A30;
  v7 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);
  v4 = [v3 copy];

  return v4;
}

void __CNPromiseCompletionHandlerWithDefaultValue_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) finishWithError:v5];
  }

  else
  {
    if (!v7)
    {
      v6 = *(a1 + 40);
    }

    [*(a1 + 32) finishWithResult:?];
  }
}

void __CNPromiseBoolErrorCompletionHandler_block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    [v2 finishWithResult:v4];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:?];
  }
}

void __CNPromiseErrorOnlyCompletionHandler_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    [v2 finishWithResult:v4];
  }
}

void *CNLargestNumberReducer_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if ([v5 compare:v4] == -1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

uint64_t CNFloatingPointNumberSummationReducer_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  v9 = v8;

  return [v4 numberWithDouble:v7 + v9];
}

id DarwinObservers()
{
  if (DarwinObservers_cn_once_token_0 != -1)
  {
    DarwinObservers_cold_1();
  }

  v1 = DarwinObservers_cn_once_object_0;

  return v1;
}

void _handler(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = DarwinObservers();
  v6 = [v5 objectForKey:v4];

  [v6 observerDidReceiveResult:a3];
}

uint64_t __DarwinObservers_block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = DarwinObservers_cn_once_object_0;
  DarwinObservers_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_185A4C8F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t sAscendingLocation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void sub_185A4D2FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v4 - 152));
  _Unwind_Resume(a1);
}

void sub_185A4D9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A4DF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A4E09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A4FA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

id sNormalizeElements_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF58];
  v3 = a2;
  v4 = [v2 currentLocale];
  v5 = [v3 stringByFoldingWithOptions:385 locale:v4];

  return v5;
}

uint64_t __CNGuardOSLog_block_invoke_6()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_6;
  CNGuardOSLog_cn_once_object_0_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id _block_invoke_0(uint64_t a1, void *a2, void *a3)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v15[0] = v5;
  v6 = a3;
  v7 = [v6 first];
  v14 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v15[1] = v8;
  v9 = [v6 second];

  v15[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  v11 = [v10 _cn_flatten];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t ACAccountIsSyncable_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 accountType];
  v3 = [v2 syncableDataclasses];
  v4 = [v3 containsObject:*MEMORY[0x1E6959AF0]];

  return v4;
}

void *__getCGRectIntegralSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGRectIntegral");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGRectIntegralSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreGraphicsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreGraphicsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreGraphicsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E6ED8028;
    v6 = 0;
    CoreGraphicsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreGraphicsLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!CoreGraphicsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CoreGraphicsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreGraphicsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCGRectGetMidXSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGRectGetMidX");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGRectGetMidXSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGRectGetMidYSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGRectGetMidY");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGRectGetMidYSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGRectIntersectionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGRectIntersection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGRectIntersectionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGRectEqualToRectSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreGraphicsLibrary();
  result = dlsym(v2, "CGRectEqualToRect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGRectEqualToRectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id CNEmailAddressSanitize_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNEmailAddressSanitizationTask alloc] initWithAddress:v2];

  v4 = [(CNEmailAddressSanitizationTask *)v3 run:0];

  return v4;
}

void sub_185A572E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [CNDescriptionBuilder appendKeys:v2];
    }

    objc_end_catch();
    JUMPOUT(0x185A572ACLL);
  }

  _Unwind_Resume(a1);
}

void sub_185A57960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_185A58484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v29 + 48));
  objc_destroyWeak(&a28);
  objc_destroyWeak((v30 - 112));
  _Unwind_Resume(a1);
}

void cn_runWithPropertyLock(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = (&sPropertyLocks + 4 * ((a2 >> 5) & 0x7F));
  v4 = a3;
  os_unfair_lock_lock(v3);
  v4[2](v4);

  os_unfair_lock_unlock(v3);
}

id cn_objectResultWithPropertyLock(void *a1, unint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __cn_objectResultWithPropertyLock_block_invoke;
  v10[3] = &unk_1E6ED5140;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  cn_runWithPropertyLock(v7, a2, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_185A587C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __cn_objectResultWithPropertyLock_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

id CNFullMethodName(void *a1, const char *a2)
{
  v3 = a1;
  v4 = objc_opt_class();

  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = 45;
  if (v4 == v3)
  {
    v7 = 43;
  }

  v8 = [v5 stringWithFormat:@"%c[%@ %@]", v7, v4, v6];

  return v8;
}

id CNUnimplementedMethodException(void *a1, const char *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = CNFullMethodName(a1, a2);
  v4 = [v2 stringWithFormat:@"selector not implemented: %@", v3];

  v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v4 userInfo:0];

  return v5;
}

id CNAbstractMethodException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = CNFullMethodName(v3, a2);
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: must override selector sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

id CNInitializerUnavailableException(void *a1, const char *a2, const char *a3)
{
  v5 = a1;
  v6 = CNFullMethodName(v5, a2);
  v7 = CNFullMethodName(v5, a3);

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: initializer unavailable use %@ instead", v6, v7];;
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];

  return v11;
}

id CNResultWithAutoreleasePool(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = v1[2](v1);
  objc_autoreleasePoolPop(v2);

  return v3;
}

uint64_t CNObjectEquals_block_invoke_6(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    return [a2 isEqual:?];
  }

  else
  {
    return 1;
  }
}

uint64_t CNObjectEquator_block_invoke_7(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 | a3)
  {
    return [a2 isEqual:?];
  }

  else
  {
    return 1;
  }
}

id CNAggregateComparator(void *a1)
{
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [[v1 alloc] initWithArray:v2 copyItems:1];

  v4 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___CNAggregateComparatorFromArray_block_invoke;
  aBlock[3] = &unk_1E6ED78C0;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [v5 copy];

  return v6;
}

id _CNAggregateObjectTestFromArray(void *a1)
{
  v1 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___CNAggregateObjectTestFromArray_block_invoke;
  aBlock[3] = &unk_1E6ED7480;
  v7 = v1;
  v2 = v1;
  v3 = _Block_copy(aBlock);
  v4 = [v3 copy];

  return v4;
}

id CNAggregateObjectTest(void *a1)
{
  v1 = a1;
  if ([v1 count] == 1)
  {
    v2 = [v1 firstObject];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v1 copyItems:1];
    v2 = _CNAggregateObjectTestFromArray(v3);
  }

  return v2;
}

id CNLogicalNot(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CNLogicalNot_block_invoke;
  v5[3] = &unk_1E6ED8218;
  v6 = v1;
  v2 = v1;
  v3 = [v5 copy];

  return v3;
}

id CNMakeErrorHelper(uint64_t a1)
{
  if (a1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __CNMakeErrorHelper_block_invoke_2;
    aBlock[3] = &__block_descriptor_40_e23_v16__0_____NSError____8l;
    aBlock[4] = a1;
    v1 = _Block_copy(aBlock);
  }

  else
  {
    v1 = &__block_literal_global_77;
  }

  v2 = [v1 copy];

  return v2;
}

id __CNMakeErrorHelper_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))(a2);
  **(a1 + 32) = result;
  return result;
}

CNReaderWriterScheduler *sReaderWriterSchedulerProvider_block_invoke_4()
{
  v0 = objc_alloc_init(CNReaderWriterScheduler);

  return v0;
}

void sub_185A5C808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_185A5CD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A5D36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(&location);
  objc_destroyWeak((v31 - 168));
  objc_destroyWeak((v31 - 112));
  _Unwind_Resume(a1);
}

void sub_185A5D6D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_185A5D7D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

id CNUserInfoWithMyProcessInfo()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [MEMORY[0x1E696AD98] numberWithLong:{objc_msgSend(v0, "processIdentifier")}];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:geteuid()];
  v3 = MEMORY[0x1E695DF90];
  v4 = [v0 processName];
  v5 = [v3 dictionaryWithObjectsAndKeys:{v1, @"ABSenderProcessID", v4, @"ABSenderProcessName", v2, @"ABSenderProcessName", 0}];

  return v5;
}

void sub_185A5DE84(void *a1)
{
  objc_begin_catch(a1);
  free(v1);
  objc_exception_rethrow();
}

CNApplicationProxy *CNApplicationProxyFromLSApplicationProxy_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNApplicationProxy alloc] initWithLSApplicationProxy:v2];

  return v3;
}

void *__getdefaultAppRelayTelephonySettingSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E6ED8480;
    v8 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = TelephonyUtilitiesLibraryCore_frameworkLibrary;
    if (TelephonyUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = TelephonyUtilitiesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "defaultAppRelayTelephonySetting");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getdefaultAppRelayTelephonySettingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __LoadIntlUtilities_block_invoke()
{
  LoadIntlUtilities_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IntlUtilities.framework/IntlUtilities", 1);
  if (!LoadIntlUtilities_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __LoadIntlUtilities_block_invoke_cold_1();
  }
}

__CFString *CNRangeShortDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"∄";
    if (!a3)
    {
      goto LABEL_12;
    }

    v5 = MEMORY[0x1E696AEC0];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v19 = @"∄";
    v20 = v6;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v6 = v8;
    if (a3 == 1)
    {
      v19 = v8;
      v9 = @"%@";
      goto LABEL_9;
    }

    if (a3)
    {
      v10 = [v5 stringWithFormat:@"%@", v8];

      v11 = MEMORY[0x1E696AEC0];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + a2 - 1];
      v13 = [v11 stringWithFormat:@"%@", v12];

      v14 = [(__CFString *)v10 commonPrefixWithString:v13 options:0];
      v15 = [v14 length];

      v16 = MEMORY[0x1E696AEC0];
      v17 = [v13 _cn_skip:v15];
      v4 = [v16 stringWithFormat:@"%@–%@", v10, v17];

      v6 = v10;
      goto LABEL_11;
    }

    v19 = v8;
    v20 = @"∅";
  }

  v9 = @"%@(%@)";
LABEL_9:
  v4 = [v5 stringWithFormat:v9, v19, v20];
LABEL_11:

LABEL_12:

  return v4;
}

void sub_185A62770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A6297C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185A62B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RunningBoardServicesLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = RunningBoardServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getRBSDomainAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RBSDomainAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSDomainAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRBSDomainAttributeClass_block_invoke_cold_1();
    RunningBoardServicesLibrary();
  }
}

void RunningBoardServicesLibrary()
{
  if (!RunningBoardServicesLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getRBSAcquisitionCompletionAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSAcquisitionCompletionAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAcquisitionCompletionAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRBSAcquisitionCompletionAttributeClass_block_invoke_cold_1();
    return __getRBSAssertionClass_block_invoke(v3);
  }

  return result;
}

Class __getRBSAssertionClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRBSAssertionClass_block_invoke_cold_1();
    return __getRBSTargetClass_block_invoke(v3);
  }

  return result;
}

Class __getRBSTargetClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSTarget");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRBSTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRBSTargetClass_block_invoke_cold_1();
    return CNDebugLog(v3);
  }

  return result;
}

void sub_185A63D18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id CNObserverCompletionHandler(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(CNCancelationToken);
  v3 = CNObserverCancelableCompletionHandler(v1, v2);

  return v3;
}

void CNObserverThrowProtocolExceptionWithReason(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (+[CNObservableContractEnforcement shouldEnforceRxProtocols])
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v5 userInfo:v3];
    [v4 raise];
  }
}

void sub_185A64FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __CNGuardOSLog_block_invoke_7()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = CNGuardOSLog_cn_once_object_0_7;
  CNGuardOSLog_cn_once_object_0_7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

BOOL CNDispatchSemaphoreWait(void *a1, double a2)
{
  v3 = a1;
  if (a2 <= 1000000000.0)
  {
    v4 = dispatch_time(0, (a2 * 1000000000.0));
  }

  else
  {
    v4 = -1;
  }

  v5 = dispatch_semaphore_wait(v3, v4) == 0;

  return v5;
}

void CNRunWithQueueName(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = [MEMORY[0x1E696ADC8] currentQueue];
  v5 = [v4 name];
  v6 = [v5 copy];

  [v4 setName:v7];
  v3[2](v3);
  [v4 setName:v6];
}

void sub_185A67D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_CNToStringFromTypeAndValue(const char *a1, NSRange *a2)
{
  if (!strcmp(a1, "{_NSRange=QQ}"))
  {
    v7 = NSStringFromRange(*a2);
    goto LABEL_31;
  }

  v4 = *a1;
  if (v4 > 0x50)
  {
    if (*a1 <= 0x65u)
    {
      if (v4 != 81)
      {
        if (v4 == 100 && !a1[1])
        {
          v5 = MEMORY[0x1E696AEC0];
          v11 = *&a2->location;
          v6 = 15;
LABEL_27:
          [v5 stringWithFormat:@"%.*g", v6, *&v11];
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      if (a1[1])
      {
        goto LABEL_29;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a2->location, v10];
      v7 = LABEL_30:;
      goto LABEL_31;
    }

    if (v4 != 102)
    {
      if (v4 != 113 || a1[1])
      {
        goto LABEL_29;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a2->location, v10];
      goto LABEL_30;
    }

    if (!a1[1])
    {
      v5 = MEMORY[0x1E696AEC0];
      v11 = *&a2->location;
      v6 = 6;
      goto LABEL_27;
    }

LABEL_29:
    [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown typeCode: %s, %p", a1, a2];
    goto LABEL_30;
  }

  if (v4 == 58)
  {
    if (!a1[1])
    {
      v7 = NSStringFromSelector(a2->location);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v4 != 64)
  {
    if (v4 == 66 && !a1[1])
    {
      if (LOBYTE(a2->location))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v7 = v8;
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (a1[1])
  {
    goto LABEL_29;
  }

  v7 = [a2->location description];
LABEL_31:

  return v7;
}

id cn_sprintf(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  return v11;
}

void cn_vfprintf(FILE *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v8 = [[v5 alloc] initWithFormat:v6 arguments:a3];

  v7 = v8;
  fputs([v8 UTF8String], a1);
}

__CFString *CNEmptyStringIfNil_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1EF441028;
  }

  return v4;
}

id CNNilIfEmptyString_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *sLongestString_block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

id CNKeychainResult.__allocating_init(value:error:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = &v6[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
  *&v6[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
  swift_beginAccess();
  sub_185A69F2C(a1, v7);
  swift_endAccess();
  v9 = *&v6[v8];
  *&v6[v8] = a2;
  v10 = a2;

  v13.receiver = v6;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  sub_185A6E72C(a1, &qword_1EA8CACB8, &qword_185A92120);
  return v11;
}

id CNKeychainResult.init(value:error:)(uint64_t a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
  *&v2[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
  swift_beginAccess();
  sub_185A69F2C(a1, v5);
  swift_endAccess();
  v7 = *&v2[v6];
  *&v2[v6] = a2;
  v8 = a2;

  v11.receiver = v2;
  v11.super_class = type metadata accessor for CNKeychainResult();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  sub_185A6E72C(a1, &qword_1EA8CACB8, &qword_185A92120);
  return v9;
}

uint64_t sub_185A69F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CACB8, &qword_185A92120);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
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

uint64_t sub_185A6A0DC()
{
  v0 = sub_185A7E7D4();
  __swift_allocate_value_buffer(v0, qword_1EA8C9688);
  __swift_project_value_buffer(v0, qword_1EA8C9688);
  return sub_185A7E7C4();
}

id sub_185A6A1AC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_185A7E914();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

id CNKeychainFacade.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNKeychainFacade.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNKeychainFacade();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_185A6A2E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_185A6A340(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_185A6A394()
{
  v1 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_185A6A3D8(char a1)
{
  v3 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_185A6A48C(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CACC8, &qword_185A92128);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v54 - v6;
  v8 = sub_185A7E834();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_185A7E814();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v54 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v54 - v19;
  v21 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled;
  swift_beginAccess();
  if (*(v2 + v21) != 1)
  {
    sub_185A6DFB0();
    v60 = 0u;
    v61 = 0u;
    v36 = swift_allocError();
    *v37 = 0xD000000000000017;
    *(v37 + 8) = 0x8000000185A918B0;
    *(v37 + 16) = 1;
    v38 = type metadata accessor for CNKeychainResult();
    v39 = objc_allocWithZone(v38);
    v40 = &v39[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
    *v40 = 0u;
    *(v40 + 1) = 0u;
    v41 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
    *&v39[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
    swift_beginAccess();
    sub_185A69F2C(&v60, v40);
    swift_endAccess();
    v42 = *&v39[v41];
    *&v39[v41] = v36;
    v43 = v36;

    v59.receiver = v39;
    v59.super_class = v38;
    v35 = objc_msgSendSuper2(&v59, sel_init);

    goto LABEL_8;
  }

  v55 = a2;
  v22 = v11;
  v23 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keyDict;
  swift_beginAccess();
  v24 = *(v2 + v23);
  if (!*(v24 + 16))
  {
LABEL_7:
    sub_185A7E824();
    sub_185A7E804();
    v44 = v22;
    v45 = *(v22 + 16);
    v45(v7, v15, v10);
    (*(v22 + 56))(v7, 0, 1, v10);
    swift_beginAccess();
    v46 = v55;

    sub_185A6A9FC(v7, v56, v46);
    swift_endAccess();
    *(&v61 + 1) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v60);
    v45(boxed_opaque_existential_0, v15, v10);
    v48 = type metadata accessor for CNKeychainResult();
    v49 = objc_allocWithZone(v48);
    v50 = &v49[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
    *v50 = 0u;
    *(v50 + 1) = 0u;
    v51 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
    *&v49[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
    swift_beginAccess();
    sub_185A69F2C(&v60, v50);
    swift_endAccess();
    v52 = *&v49[v51];
    *&v49[v51] = 0;

    v58.receiver = v49;
    v58.super_class = v48;
    v35 = objc_msgSendSuper2(&v58, sel_init);
    (*(v44 + 8))(v15, v10);
    goto LABEL_8;
  }

  v54[1] = v2;

  v25 = sub_185A6B608(v56, v55);
  if ((v26 & 1) == 0)
  {

    goto LABEL_7;
  }

  v27 = v22;
  v28 = *(v22 + 16);
  v28(v18, *(v24 + 56) + *(v22 + 72) * v25, v10);

  (*(v22 + 32))(v20, v18, v10);
  *(&v61 + 1) = v10;
  v29 = __swift_allocate_boxed_opaque_existential_0(&v60);
  v28(v29, v20, v10);
  v30 = type metadata accessor for CNKeychainResult();
  v31 = objc_allocWithZone(v30);
  v32 = &v31[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v33 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
  *&v31[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
  swift_beginAccess();
  sub_185A69F2C(&v60, v32);
  swift_endAccess();
  v34 = *&v31[v33];
  *&v31[v33] = 0;

  v57.receiver = v31;
  v57.super_class = v30;
  v35 = objc_msgSendSuper2(&v57, sel_init);
  (*(v27 + 8))(v20, v10);
LABEL_8:
  sub_185A6E72C(&v60, &qword_1EA8CACB8, &qword_185A92120);
  return v35;
}

uint64_t sub_185A6A9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CACC8, &qword_185A92128);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_185A7E814();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_185A6E72C(a1, &unk_1EA8CACC8, &qword_185A92128);
    sub_185A6B908(a2, a3, v10);

    return sub_185A6E72C(v10, &unk_1EA8CACC8, &qword_185A92128);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_185A6BFE4(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

id sub_185A6ABEC(uint64_t a1, uint64_t a2)
{
  v5 = sub_185A7E814();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled;
  swift_beginAccess();
  if (*(v2 + v13) != 1)
  {
    sub_185A6DFB0();
    v46 = 0u;
    v47 = 0u;
    v26 = swift_allocError();
    *v27 = 0xD000000000000017;
    *(v27 + 8) = 0x8000000185A918B0;
    *(v27 + 16) = 0;
    v28 = type metadata accessor for CNKeychainResult();
    v29 = objc_allocWithZone(v28);
    v30 = &v29[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
    *v30 = 0u;
    *(v30 + 1) = 0u;
    v31 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
    *&v29[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
    swift_beginAccess();
    sub_185A69F2C(&v46, v30);
    swift_endAccess();
    v32 = *&v29[v31];
    *&v29[v31] = v26;
    v33 = v26;

    v45.receiver = v29;
    v45.super_class = v28;
    v34 = objc_msgSendSuper2(&v45, sel_init);
LABEL_8:
    v25 = v34;

    goto LABEL_9;
  }

  v14 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keyDict;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (!*(v15 + 16))
  {
LABEL_7:
    sub_185A6DFB0();
    v46 = 0u;
    v47 = 0u;
    v26 = swift_allocError();
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 3;
    v36 = type metadata accessor for CNKeychainResult();
    v37 = objc_allocWithZone(v36);
    v38 = &v37[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
    *v38 = 0u;
    *(v38 + 1) = 0u;
    v39 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
    *&v37[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
    swift_beginAccess();
    sub_185A69F2C(&v46, v38);
    swift_endAccess();
    v40 = *&v37[v39];
    *&v37[v39] = v26;
    v41 = v26;

    v44.receiver = v37;
    v44.super_class = v36;
    v34 = objc_msgSendSuper2(&v44, sel_init);
    goto LABEL_8;
  }

  v16 = sub_185A6B608(a1, a2);
  if ((v17 & 1) == 0)
  {

    goto LABEL_7;
  }

  v18 = *(v6 + 16);
  v18(v10, *(v15 + 56) + *(v6 + 72) * v16, v5);

  (*(v6 + 32))(v12, v10, v5);
  *(&v47 + 1) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v46);
  v18(boxed_opaque_existential_0, v12, v5);
  v20 = type metadata accessor for CNKeychainResult();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
  *&v21[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
  swift_beginAccess();
  sub_185A69F2C(&v46, v22);
  swift_endAccess();
  v24 = *&v21[v23];
  *&v21[v23] = 0;

  v43.receiver = v21;
  v43.super_class = v20;
  v25 = objc_msgSendSuper2(&v43, sel_init);
  (*(v6 + 8))(v12, v5);
LABEL_9:
  sub_185A6E72C(&v46, &qword_1EA8CACB8, &qword_185A92120);
  return v25;
}

id sub_185A6B004(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CACC8, &qword_185A92128);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v35 - v7;
  v9 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled;
  swift_beginAccess();
  if (*(v2 + v9) == 1)
  {
    swift_beginAccess();
    sub_185A6B908(a1, a2, v8);
    swift_endAccess();
    v10 = sub_185A7E814();
    v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
    sub_185A6E72C(v8, &unk_1EA8CACC8, &qword_185A92128);
    if (v11 != 1)
    {
      *(&v40 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v39) = 1;
      v29 = type metadata accessor for CNKeychainResult();
      v30 = objc_allocWithZone(v29);
      v31 = &v30[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
      *v31 = 0u;
      *(v31 + 1) = 0u;
      v32 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
      *&v30[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
      swift_beginAccess();
      sub_185A69F2C(&v39, v31);
      swift_endAccess();
      v33 = *&v30[v32];
      *&v30[v32] = 0;

      v36.receiver = v30;
      v36.super_class = v29;
      v28 = objc_msgSendSuper2(&v36, sel_init);
      goto LABEL_7;
    }

    sub_185A6DFB0();
    v39 = 0u;
    v40 = 0u;
    v12 = swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 3;
    v14 = type metadata accessor for CNKeychainResult();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v17 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
    *&v15[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
    swift_beginAccess();
    sub_185A69F2C(&v39, v16);
    swift_endAccess();
    v18 = *&v15[v17];
    *&v15[v17] = v12;
    v19 = v12;

    v37.receiver = v15;
    v37.super_class = v14;
    v20 = objc_msgSendSuper2(&v37, sel_init);
  }

  else
  {
    sub_185A6DFB0();
    v39 = 0u;
    v40 = 0u;
    v12 = swift_allocError();
    *v21 = 0xD000000000000017;
    *(v21 + 8) = 0x8000000185A918B0;
    *(v21 + 16) = 2;
    v22 = type metadata accessor for CNKeychainResult();
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
    *v24 = 0u;
    *(v24 + 1) = 0u;
    v25 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
    *&v23[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
    swift_beginAccess();
    sub_185A69F2C(&v39, v24);
    swift_endAccess();
    v26 = *&v23[v25];
    *&v23[v25] = v12;
    v27 = v12;

    v38.receiver = v23;
    v38.super_class = v22;
    v20 = objc_msgSendSuper2(&v38, sel_init);
  }

  v28 = v20;

LABEL_7:
  sub_185A6E72C(&v39, &qword_1EA8CACB8, &qword_185A92120);
  return v28;
}

id sub_185A6B3A8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_185A7E914();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

id CNKeychainFacadeTestDouble.init()()
{
  v0[OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled] = 1;
  *&v0[OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keyDict] = MEMORY[0x1E69E7CC8];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNKeychainFacadeTestDouble();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_185A6B4F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_185A6B53C(UInt8 *bytes@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (bytes)
  {
    v4 = a2 - bytes;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFDataCreateWithBytesNoCopy(0, bytes, v4, *MEMORY[0x1E695E498]);
  if (v5)
  {
    v6 = v5;
    v7 = sub_185A7E6A4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  *a3 = v7;
  a3[1] = v9;
}

unint64_t sub_185A6B5C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_185A7EA84();

  return sub_185A6B6C4(a1, v5);
}

unint64_t sub_185A6B608(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_185A7EC64();
  sub_185A7E944();
  v6 = sub_185A7EC84();

  return sub_185A6B788(a1, a2, v6);
}

unint64_t sub_185A6B680(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_185A7EAD4();

  return sub_185A6B840(a1, v5);
}

unint64_t sub_185A6B6C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_185A6E4A4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_185A7EA94();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_185A6B788(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_185A7EC04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_185A6B840(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_185A6E3A4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1865FB050](v9, a1);
      sub_185A6E400(v9);
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

uint64_t sub_185A6B908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_185A6B608(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_185A6C214();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_185A7E814();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_185A6BDF8(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_185A7E814();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_185A6BA78(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_185A7E814();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADA0, &qword_185A922D0);
  v46 = a2;
  result = sub_185A7EBC4();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_185A7EC64();
      sub_185A7E944();
      result = sub_185A7EC84();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_185A6BDF8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_185A7EAC4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_185A7EC64();

      sub_185A7E944();
      v13 = sub_185A7EC84();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_185A7E814() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_185A6BFE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_185A6B608(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_185A6C214();
      goto LABEL_7;
    }

    sub_185A6BA78(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_185A6B608(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_185A7EC14();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_185A7E814();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_185A6C164(v12, a2, a3, a1, v18);
}

uint64_t sub_185A6C164(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_185A7E814();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_185A6C214()
{
  v1 = v0;
  v36 = sub_185A7E814();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADA0, &qword_185A922D0);
  v4 = *v0;
  v5 = sub_185A7EBB4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_185A6C494(uint64_t a1, unint64_t a2)
{
  v124[45] = *MEMORY[0x1E69E9840];
  v4 = sub_185A7E814();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADA8, &qword_185A922D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185A920E0;
  v8 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v114 = v8;
  v115 = inited + 32;
  v9 = *MEMORY[0x1E697B020];
  type metadata accessor for CFString();
  v113 = v9;
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E697AC40];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v112 = v11;
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E697ABD0];
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  v116 = a2;
  v14 = *v13;
  *(inited + 104) = v12;
  *(inited + 112) = v14;
  v110 = a1;
  v111 = v14;
  *(inited + 144) = v12;
  *(inited + 120) = 0x656C707061;
  *(inited + 128) = 0xE500000000000000;
  v15 = *MEMORY[0x1E697AEA8];
  if (!*MEMORY[0x1E697AEA8])
  {
    __break(1u);
  }

  v16 = v10;
  *(inited + 152) = v15;
  v17 = *MEMORY[0x1E697AF10];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADB0, &qword_185A922E0);
  v19 = MEMORY[0x1E697B390];
  *(inited + 160) = v17;
  v20 = *v19;
  *(inited + 184) = v18;
  *(inited + 192) = v20;
  v21 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v22 = *MEMORY[0x1E697AEB0];
  *(inited + 224) = v21;
  *(inited + 232) = v22;
  *(inited + 240) = 1;
  v23 = *MEMORY[0x1E697ABD8];
  *(inited + 264) = v21;
  *(inited + 272) = v23;
  v24 = *MEMORY[0x1E697AC20];
  v25 = MEMORY[0x1E697B318];
  *(inited + 280) = *MEMORY[0x1E697AC20];
  v26 = *v25;
  *(inited + 304) = v16;
  *(inited + 312) = v26;
  *(inited + 344) = v21;
  *(inited + 320) = 1;
  v27 = v17;
  v28 = v20;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v26;
  v33 = v114;
  v34 = v113;
  v35 = v112;
  v36 = v116;

  v37 = v111;
  v38 = v15;
  sub_185A76CFC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADB8, &qword_185A922E8);
  swift_arrayDestroy();
  v124[0] = 0;
  sub_185A6E4A4();
  sub_185A6E4F0();
  v39 = sub_185A7E8B4();

  v40 = SecItemCopyMatching(v39, v124);

  if (v40)
  {
    if (v40 == -25300)
    {
      if (qword_1EA8C9680 != -1)
      {
        swift_once();
      }

      v41 = sub_185A7E7D4();
      __swift_project_value_buffer(v41, qword_1EA8C9688);

      v42 = sub_185A7E7B4();
      v43 = sub_185A7EA34();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v122 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_1859F900C(v110, v36, &v122);
        _os_log_impl(&dword_1859F0000, v42, v43, "Existing encryption key with label %s not found", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x1865FC480](v45, -1, -1);
        MEMORY[0x1865FC480](v44, -1, -1);
      }

      sub_185A6DFB0();
      v122 = 0u;
      v123 = 0u;
      v46 = swift_allocError();
      *v47 = 0;
      *(v47 + 8) = 0;
      *(v47 + 16) = 3;
      v48 = type metadata accessor for CNKeychainResult();
      v49 = objc_allocWithZone(v48);
      v50 = &v49[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
      *v50 = 0u;
      *(v50 + 1) = 0u;
      v51 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
      *&v49[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
      swift_beginAccess();
      sub_185A69F2C(&v122, v50);
      swift_endAccess();
      v52 = *&v49[v51];
      *&v49[v51] = v46;
      v53 = v46;

      v117.receiver = v49;
      v117.super_class = v48;
      v54 = objc_msgSendSuper2(&v117, sel_init);
    }

    else
    {
      if (qword_1EA8C9680 != -1)
      {
        swift_once();
      }

      v66 = sub_185A7E7D4();
      __swift_project_value_buffer(v66, qword_1EA8C9688);

      v67 = sub_185A7E7B4();
      v68 = sub_185A7EA44();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v122 = v70;
        *v69 = 136315394;
        *(v69 + 4) = sub_1859F900C(v110, v36, &v122);
        *(v69 + 12) = 2080;
        v71 = SecCopyErrorMessageString(v40, 0);
        if (v71)
        {
          v72 = v71;
          v73 = sub_185A7E914();
          v75 = v74;

          v76 = v73;
        }

        else
        {
          LODWORD(v121) = v40;
          v76 = sub_185A7EBE4();
          v75 = v89;
        }

        v90 = sub_1859F900C(v76, v75, &v122);

        *(v69 + 14) = v90;
        _os_log_impl(&dword_1859F0000, v67, v68, "Error getting encryption key with label %s: %s", v69, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FC480](v70, -1, -1);
        MEMORY[0x1865FC480](v69, -1, -1);
      }

      v122 = 0u;
      v123 = 0u;
      v91 = SecCopyErrorMessageString(v40, 0);
      if (v91)
      {
        v92 = v91;
        v93 = sub_185A7E914();
        v95 = v94;
      }

      else
      {
        LODWORD(v121) = v40;
        v93 = sub_185A7EBE4();
        v95 = v96;
      }

      sub_185A6DFB0();
      v46 = swift_allocError();
      *v97 = v93;
      *(v97 + 8) = v95;
      *(v97 + 16) = 0;
      v98 = type metadata accessor for CNKeychainResult();
      v99 = objc_allocWithZone(v98);
      v100 = &v99[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
      *v100 = 0u;
      *(v100 + 1) = 0u;
      v101 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
      *&v99[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
      swift_beginAccess();
      sub_185A69F2C(&v122, v100);
      swift_endAccess();
      v102 = *&v99[v101];
      *&v99[v101] = v46;
      v103 = v46;

      v120.receiver = v99;
      v120.super_class = v98;
      v54 = objc_msgSendSuper2(&v120, sel_init);
    }

LABEL_28:
    v65 = v54;

    goto LABEL_29;
  }

  if (!v124[0] || (v121 = v124[0], swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1EA8C9680 != -1)
    {
      swift_once();
    }

    v77 = sub_185A7E7D4();
    __swift_project_value_buffer(v77, qword_1EA8C9688);

    v78 = sub_185A7E7B4();
    v79 = sub_185A7EA44();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v122 = v81;
      *v80 = 136315138;
      *(v80 + 4) = sub_1859F900C(v110, v36, &v122);
      _os_log_impl(&dword_1859F0000, v78, v79, "Search result for existing encryption key with label %s was not data", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x1865FC480](v81, -1, -1);
      MEMORY[0x1865FC480](v80, -1, -1);
    }

    sub_185A6DFB0();
    v122 = 0u;
    v123 = 0u;
    v46 = swift_allocError();
    *v82 = xmmword_185A920F0;
    *(v82 + 16) = 3;
    v83 = type metadata accessor for CNKeychainResult();
    v84 = objc_allocWithZone(v83);
    v85 = &v84[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
    *v85 = 0u;
    *(v85 + 1) = 0u;
    v86 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
    *&v84[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
    swift_beginAccess();
    sub_185A69F2C(&v122, v85);
    swift_endAccess();
    v87 = *&v84[v86];
    *&v84[v86] = v46;
    v88 = v46;

    v119.receiver = v84;
    v119.super_class = v83;
    v54 = objc_msgSendSuper2(&v119, sel_init);
    goto LABEL_28;
  }

  v55 = v122;
  sub_185A6E5E4(v122, *(&v122 + 1));
  v56 = v107;
  sub_185A7E7F4();
  v57 = v109;
  *(&v123 + 1) = v109;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v122);
  v59 = v108;
  (*(v108 + 16))(boxed_opaque_existential_0, v56, v57);
  v60 = type metadata accessor for CNKeychainResult();
  v61 = objc_allocWithZone(v60);
  v62 = &v61[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
  *v62 = 0u;
  *(v62 + 1) = 0u;
  v63 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
  *&v61[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
  swift_beginAccess();
  sub_185A69F2C(&v122, v62);
  swift_endAccess();
  v64 = *&v61[v63];
  *&v61[v63] = 0;

  v118.receiver = v61;
  v118.super_class = v60;
  v65 = objc_msgSendSuper2(&v118, sel_init);
  sub_185A6E638(v55, *(&v55 + 1));
  (*(v59 + 8))(v56, v57);
LABEL_29:
  sub_185A6E72C(&v122, &qword_1EA8CACB8, &qword_185A92120);
  swift_unknownObjectRelease();
  v104 = *MEMORY[0x1E69E9840];
  return v65;
}

void sub_185A6CF48(uint64_t a1, unint64_t a2)
{
  v4 = sub_185A7E834();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_185A7E814();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_185A6C494(a1, a2);
  v12 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value;
  swift_beginAccess();
  sub_185A6E68C(&v11[v12], &v116);
  v13 = *(&v117 + 1);
  sub_185A6E72C(&v116, &qword_1EA8CACB8, &qword_185A92120);
  if (!v13)
  {
    v14 = *&v11[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error];
    if (v14)
    {
      v115 = *&v11[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error];
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADC0, &unk_185A922F0);
      if (swift_dynamicCast())
      {
        v112 = v7;
        v16 = v116;
        v17 = v117;
        if (v117 == 3 && v116 == 0)
        {
          if (qword_1EA8C9680 != -1)
          {
            swift_once();
          }

          v18 = sub_185A7E7D4();
          v19 = __swift_project_value_buffer(v18, qword_1EA8C9688);

          v101[1] = v19;
          v20 = sub_185A7E7B4();
          v21 = sub_185A7EA34();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v111 = v20;
            v24 = v23;
            *&v116 = v23;
            *v22 = 136315138;
            *(v22 + 4) = sub_1859F900C(a1, a2, &v116);
            v25 = v21;
            v26 = v111;
            _os_log_impl(&dword_1859F0000, v111, v25, "No existing encryption key with label %s found, will create a new one", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v24);
            MEMORY[0x1865FC480](v24, -1, -1);
            MEMORY[0x1865FC480](v22, -1, -1);
          }

          else
          {
          }

          sub_185A7E824();
          sub_185A7E804();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADA8, &qword_185A922D8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_185A920E0;
          v37 = *MEMORY[0x1E697AFF8];
          *(inited + 32) = *MEMORY[0x1E697AFF8];
          v110 = v37;
          v111 = (inited + 32);
          v38 = *MEMORY[0x1E697B020];
          type metadata accessor for CFString();
          v109 = v38;
          *(inited + 40) = v38;
          v39 = *MEMORY[0x1E697AC40];
          v106 = v40;
          *(inited + 64) = v40;
          *(inited + 72) = v39;
          v108 = v39;
          v41 = MEMORY[0x1E69E6158];
          v42 = MEMORY[0x1E697ABD0];
          *(inited + 80) = a1;
          *(inited + 88) = a2;
          v43 = *v42;
          *(inited + 104) = v41;
          *(inited + 112) = v43;
          v107 = v43;
          *(inited + 144) = v41;
          *(inited + 120) = 0x656C707061;
          *(inited + 128) = 0xE500000000000000;
          v44 = *MEMORY[0x1E697AEA8];
          if (*MEMORY[0x1E697AEA8])
          {
            *(inited + 152) = v44;
            v105 = v44;
            v104 = *MEMORY[0x1E697AF10];
            v45 = v104;
            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADB0, &qword_185A922E0);
            *(inited + 160) = v45;
            v103 = *MEMORY[0x1E697B390];
            v47 = v103;
            *(inited + 184) = v46;
            *(inited + 192) = v47;
            v48 = MEMORY[0x1E69E6370];
            *(inited + 200) = 1;
            v102 = *MEMORY[0x1E697AEB0];
            v49 = v102;
            *(inited + 224) = v48;
            *(inited + 232) = v49;
            *(inited + 240) = 1;
            v50 = *MEMORY[0x1E697ABD8];
            *(inited + 264) = v48;
            *(inited + 272) = v50;
            v51 = *MEMORY[0x1E697AC20];
            *(inited + 280) = *MEMORY[0x1E697AC20];
            v52 = *MEMORY[0x1E697B3C0];
            *(inited + 304) = v106;
            *(inited + 312) = v52;
            v106 = sub_185A6E78C();

            v53 = v110;
            v54 = v109;
            v55 = v108;
            v56 = v107;
            v57 = v105;
            v58 = v104;
            v59 = v103;
            v60 = v102;
            v61 = v50;
            v62 = v51;
            v63 = v52;
            v64 = MEMORY[0x1E6969088];
            sub_185A7E654();
            v65 = v116;
            *(inited + 344) = v64;
            *(inited + 320) = v65;
            sub_185A76CFC(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADB8, &qword_185A922E8);
            swift_arrayDestroy();
            sub_185A6E4A4();
            sub_185A6E4F0();
            v66 = sub_185A7E8B4();

            v67 = SecItemAdd(v66, 0);

            if (v67)
            {

              v68 = sub_185A7E7B4();
              v69 = sub_185A7EA44();

              if (os_log_type_enabled(v68, v69))
              {
                LODWORD(v111) = v69;
                v70 = swift_slowAlloc();
                v110 = swift_slowAlloc();
                *&v116 = v110;
                *v70 = 136315394;
                *(v70 + 4) = sub_1859F900C(a1, a2, &v116);
                *(v70 + 12) = 2080;
                v71 = SecCopyErrorMessageString(v67, 0);
                if (v71)
                {
                  v72 = v71;
                  v73 = sub_185A7E914();
                  v75 = v74;

                  v76 = v73;
                }

                else
                {
                  LODWORD(v115) = v67;
                  v76 = sub_185A7EBE4();
                  v75 = v84;
                }

                v85 = sub_1859F900C(v76, v75, &v116);

                *(v70 + 14) = v85;
                _os_log_impl(&dword_1859F0000, v68, v111, "Failed to add encryption key with label %s to keychain: %s", v70, 0x16u);
                v86 = v110;
                swift_arrayDestroy();
                MEMORY[0x1865FC480](v86, -1, -1);
                MEMORY[0x1865FC480](v70, -1, -1);
              }

              v116 = 0u;
              v117 = 0u;
              v87 = SecCopyErrorMessageString(v67, 0);
              if (v87)
              {
                v88 = v87;
                v89 = sub_185A7E914();
                v91 = v90;
              }

              else
              {
                LODWORD(v115) = v67;
                v89 = sub_185A7EBE4();
                v91 = v92;
              }

              sub_185A6DFB0();
              v93 = swift_allocError();
              *v94 = v89;
              *(v94 + 8) = v91;
              *(v94 + 16) = 1;
              v95 = type metadata accessor for CNKeychainResult();
              v96 = objc_allocWithZone(v95);
              v97 = &v96[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
              *v97 = 0u;
              *(v97 + 1) = 0u;
              v98 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
              *&v96[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
              swift_beginAccess();
              sub_185A69F2C(&v116, v97);
              swift_endAccess();
              v99 = *&v96[v98];
              *&v96[v98] = v93;
              v100 = v93;

              v114.receiver = v96;
              v114.super_class = v95;
              objc_msgSendSuper2(&v114, sel_init);

              sub_185A6E72C(&v116, &qword_1EA8CACB8, &qword_185A92120);
              (v112[1])(v10, v6);
            }

            else
            {
              *(&v117 + 1) = v6;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v116);
              v78 = v112;
              (v112[2])(boxed_opaque_existential_0, v10, v6);
              v79 = type metadata accessor for CNKeychainResult();
              v80 = objc_allocWithZone(v79);
              v81 = &v80[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
              *v81 = 0u;
              *(v81 + 1) = 0u;
              v82 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
              *&v80[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
              swift_beginAccess();
              sub_185A69F2C(&v116, v81);
              swift_endAccess();
              v83 = *&v80[v82];
              *&v80[v82] = 0;

              v113.receiver = v80;
              v113.super_class = v79;
              objc_msgSendSuper2(&v113, sel_init);

              (v78[1])(v10, v6);
              sub_185A6E72C(&v116, &qword_1EA8CACB8, &qword_185A92120);
            }
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
          v27 = *(&v116 + 1);
          if (qword_1EA8C9680 != -1)
          {
            swift_once();
          }

          v28 = sub_185A7E7D4();
          __swift_project_value_buffer(v28, qword_1EA8C9688);

          sub_185A6E6FC(v16, v27, v17);
          v29 = sub_185A7E7B4();
          v30 = sub_185A7EA44();

          sub_185A6E714(v16, v27, v17);
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            *&v116 = v112;
            *v31 = 136315394;
            *(v31 + 4) = sub_1859F900C(a1, a2, &v116);
            *(v31 + 12) = 2112;
            sub_185A6DFB0();
            swift_allocError();
            *v32 = v16;
            *(v32 + 8) = v27;
            *(v32 + 16) = v17;
            sub_185A6E6FC(v16, v27, v17);
            v33 = _swift_stdlib_bridgeErrorToNSError();
            *(v31 + 14) = v33;
            v34 = v111;
            v111->isa = v33;
            _os_log_impl(&dword_1859F0000, v29, v30, "Error checking if encryption key with label %s exists: %@", v31, 0x16u);
            sub_185A6E72C(v34, &qword_1EA8CADC8, &unk_185A92480);
            MEMORY[0x1865FC480](v34, -1, -1);
            v35 = v112;
            __swift_destroy_boxed_opaque_existential_0(v112);
            MEMORY[0x1865FC480](v35, -1, -1);
            MEMORY[0x1865FC480](v31, -1, -1);
          }

          sub_185A6E714(v16, v27, v17);
        }
      }
    }
  }
}

void sub_185A6DA38(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADA8, &qword_185A922D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185A92100;
  v5 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v6 = *MEMORY[0x1E697B020];
  type metadata accessor for CFString();
  *(inited + 40) = v6;
  v7 = *MEMORY[0x1E697AC40];
  *(inited + 64) = v8;
  *(inited + 72) = v7;
  v9 = MEMORY[0x1E69E6158];
  v10 = MEMORY[0x1E697ABD0];
  v61 = a1;
  v62 = a2;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  v11 = *v10;
  *(inited + 104) = v9;
  *(inited + 112) = v11;
  *(inited + 144) = v9;
  *(inited + 120) = 0x656C707061;
  *(inited + 128) = 0xE500000000000000;
  v12 = *MEMORY[0x1E697AEA8];
  if (*MEMORY[0x1E697AEA8])
  {
    *(inited + 152) = v12;
    v13 = *MEMORY[0x1E697AF10];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADB0, &qword_185A922E0);
    *(inited + 160) = v13;
    v15 = *MEMORY[0x1E697B390];
    *(inited + 184) = v14;
    *(inited + 192) = v15;
    v16 = MEMORY[0x1E69E6370];
    v17 = MEMORY[0x1E697AEB0];
    *(inited + 200) = 1;
    v18 = *v17;
    *(inited + 224) = v16;
    *(inited + 232) = v18;
    *(inited + 264) = v16;
    *(inited + 240) = 1;
    v19 = v13;
    v20 = v15;
    v21 = v18;
    v22 = v5;
    v23 = v6;
    v24 = v7;

    v25 = v11;
    v26 = v12;
    sub_185A76CFC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADB8, &qword_185A922E8);
    swift_arrayDestroy();
    sub_185A6E4A4();
    sub_185A6E4F0();
    v27 = sub_185A7E8B4();

    v28 = SecItemDelete(v27);

    if (v28)
    {
      if (qword_1EA8C9680 != -1)
      {
        swift_once();
      }

      v29 = sub_185A7E7D4();
      __swift_project_value_buffer(v29, qword_1EA8C9688);

      v30 = sub_185A7E7B4();
      v31 = sub_185A7EA44();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v66 = v33;
        *v32 = 136315394;
        *(v32 + 4) = sub_1859F900C(v61, v62, &v66);
        *(v32 + 12) = 2080;
        v34 = SecCopyErrorMessageString(v28, 0);
        if (v34)
        {
          v35 = v34;
          v36 = sub_185A7E914();
          v38 = v37;

          v39 = v36;
        }

        else
        {
          v65 = v28;
          v39 = sub_185A7EBE4();
          v38 = v45;
        }

        v46 = sub_1859F900C(v39, v38, &v66);

        *(v32 + 14) = v46;
        _os_log_impl(&dword_1859F0000, v30, v31, "Could not delete encryption key with label %s: %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865FC480](v33, -1, -1);
        MEMORY[0x1865FC480](v32, -1, -1);
      }

      v66 = 0u;
      v67 = 0u;
      v47 = SecCopyErrorMessageString(v28, 0);
      if (v47)
      {
        v48 = v47;
        v49 = sub_185A7E914();
        v51 = v50;
      }

      else
      {
        v65 = v28;
        v49 = sub_185A7EBE4();
        v51 = v52;
      }

      sub_185A6DFB0();
      v53 = swift_allocError();
      *v54 = v49;
      *(v54 + 8) = v51;
      *(v54 + 16) = 2;
      v55 = type metadata accessor for CNKeychainResult();
      v56 = objc_allocWithZone(v55);
      v57 = &v56[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
      *v57 = 0u;
      *(v57 + 1) = 0u;
      v58 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
      *&v56[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
      swift_beginAccess();
      sub_185A69F2C(&v66, v57);
      swift_endAccess();
      v59 = *&v56[v58];
      *&v56[v58] = v53;
      v60 = v53;

      v64.receiver = v56;
      v64.super_class = v55;
      objc_msgSendSuper2(&v64, sel_init);
    }

    else
    {
      *(&v67 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v66) = 1;
      v40 = type metadata accessor for CNKeychainResult();
      v41 = objc_allocWithZone(v40);
      v42 = &v41[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_value];
      *v42 = 0u;
      *(v42 + 1) = 0u;
      v43 = OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error;
      *&v41[OBJC_IVAR____TtC18ContactsFoundation16CNKeychainResult_error] = 0;
      swift_beginAccess();
      sub_185A69F2C(&v66, v42);
      swift_endAccess();
      v44 = *&v41[v43];
      *&v41[v43] = 0;

      v63.receiver = v41;
      v63.super_class = v40;
      objc_msgSendSuper2(&v63, sel_init);
    }

    sub_185A6E72C(&v66, &qword_1EA8CACB8, &qword_185A92120);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_185A6DFB0()
{
  result = qword_1EA8C96A0;
  if (!qword_1EA8C96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8C96A0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18ContactsFoundation11SecKeyErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_185A6E0BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_185A6E104(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_185A6E14C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void type metadata accessor for CFString()
{
  if (!qword_1EA8C96C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EA8C96C8);
    }
  }
}

unint64_t sub_185A6E4A4()
{
  result = qword_1EA8C96C0;
  if (!qword_1EA8C96C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8C96C0);
  }

  return result;
}

unint64_t sub_185A6E4F0()
{
  result = qword_1EA8C96B8;
  if (!qword_1EA8C96B8)
  {
    sub_185A6E4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8C96B8);
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

uint64_t sub_185A6E5E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_185A6E638(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_185A6E68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CACB8, &qword_185A92120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185A6E6FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_185A6E714(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_185A6E72C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_185A6E78C()
{
  result = qword_1EA8C9620;
  if (!qword_1EA8C9620)
  {
    sub_185A7E814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8C9620);
  }

  return result;
}

void CNScheduler.perform(qualityOfService:execute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_185A6E8A4;
  v6[3] = &block_descriptor;
  v5 = _Block_copy(v6);

  [v3 performBlock:v5 qualityOfService:a1];
  _Block_release(v5);
}

uint64_t sub_185A6E8A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id CNScheduler.perform(_:)(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_185A6E9C4;
  v6[3] = &block_descriptor_3;
  v3 = _Block_copy(v6);

  v4 = [v2 performCancelableBlock_];
  _Block_release(v3);
  return v4;
}

void sub_185A6E9C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id CNScheduler.perform(qualityOfService:execute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185A6E9C4;
  v8[3] = &block_descriptor_6;
  v5 = _Block_copy(v8);

  v6 = [v3 performCancelableBlock:v5 qualityOfService:a1];
  _Block_release(v5);
  return v6;
}

id CNScheduler.perform(after:qualityOfService:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_185A6E8A4;
  v10[3] = &block_descriptor_9;
  v7 = _Block_copy(v10);

  v8 = [v4 afterDelay:v7 performBlock:a1 qualityOfService:a4];
  _Block_release(v7);
  return v8;
}

{
  v9 = [objc_allocWithZone(CNCancelationToken) init];
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  v15[4] = sub_185A6ED54;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_185A6E8A4;
  v15[3] = &block_descriptor_12;
  v11 = _Block_copy(v15);

  v12 = v9;

  v13 = [v4 afterDelay:v11 performBlock:a1 qualityOfService:a4];
  _Block_release(v11);
  [v12 addCancelable_];
  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_185A6EDE4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t TriageEvent.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier + 8);

  return v1;
}

uint64_t TriageEvent.eventName.getter()
{
  result = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName);
  v2 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName + 8);
  v3 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_eventName + 16);
  return result;
}

uint64_t static Logger.generalTriage.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA8CAC80 != -1)
  {
    swift_once();
  }

  v2 = sub_185A7E7D4();
  v3 = __swift_project_value_buffer(v2, qword_1EA8CAE30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TriageEvent.__allocating_init(name:logger:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  TriageEvent.init(name:logger:)(a1, a2, a3, a4);
  return v11;
}

void __swiftcall TriageEvent.Metadata.init(label:value:isSensitive:)(ContactsFoundation::TriageEvent::Metadata *__return_ptr retstr, Swift::String label, Swift::String value, Swift::Bool isSensitive)
{
  retstr->label = label;
  retstr->value = value;
  retstr->isSensitive = isSensitive;
}

uint64_t sub_185A6EFE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_185A6F8E4(a1, a2, a3, a4);
}

void __swiftcall TriageEvent.Metadata.init(label:values:isSensitive:)(ContactsFoundation::TriageEvent::Metadata *__return_ptr retstr, Swift::String label, Swift::OpaquePointer values, Swift::Bool isSensitive)
{
  retstr->label = label;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAE50, qword_185A92368);
  sub_185A6FA74();
  v6 = sub_185A7E8E4();
  v8 = v7;

  MEMORY[0x1865FAEC0](v6, v8);

  MEMORY[0x1865FAEC0](23840, 0xE200000000000000);

  retstr->value._countAndFlagsBits = 8283;
  retstr->value._object = 0xE200000000000000;
  retstr->isSensitive = isSensitive;
}

uint64_t sub_185A6F0F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = a2;
    v18 = a1;
    v20 = MEMORY[0x1E69E7CC0];
    sub_185A6F7B8(0, v5, 0);
    v6 = v20;
    v8 = a3 + 32;
    do
    {
      sub_185A6FB20(v8, v19);
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      v9 = sub_185A7EBE4();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_0(v19);
      v20 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_185A6F7B8((v12 > 1), v13 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v8 += 40;
      --v5;
    }

    while (v5);
    a2 = v17;
    a1 = v18;
  }

  v15 = sub_185A6F8E4(a1, a2, v6, a4 & 1);

  return v15;
}

uint64_t sub_185A6F22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_185A6F250, 0, 0);
}

uint64_t sub_185A6F250()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_1859F8B80();
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_185A6F350;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_185A6F350()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_185A6F4C8;
  }

  else
  {
    v3 = sub_185A6F464;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_185A6F464()
{
  v1 = *(v0 + 40);
  sub_1859F8254();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_185A6F4C8()
{
  v1 = v0[5];
  sub_1859F8254();
  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t TriageEvent.deinit()
{
  v1 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_logger;
  v2 = sub_185A7E7D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signposter;
  v4 = sub_185A7E754();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_timeProvider);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_identifier + 8);

  v7 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_metadata);

  v8 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostID;
  v9 = sub_185A7E724();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_signpostState);

  return v0;
}

uint64_t sub_185A6F650()
{
  v0 = sub_185A7E7D4();
  __swift_allocate_value_buffer(v0, qword_1EA8CAE30);
  __swift_project_value_buffer(v0, qword_1EA8CAE30);
  return sub_185A7E7C4();
}

char *sub_185A6F6C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAE68, &qword_185A92460);
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

char *sub_185A6F7B8(char *a1, int64_t a2, char a3)
{
  result = sub_185A6F7D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_185A6F7D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAE70, &qword_185A92468);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_185A6F8E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAE50, qword_185A92368);
  sub_185A6FA74();
  v9 = sub_185A7E8E4();
  MEMORY[0x1865FAEC0](v9);

  MEMORY[0x1865FAEC0](23840, 0xE200000000000000);

  v10 = OBJC_IVAR____TtC18ContactsFoundation11TriageEvent_metadata;
  swift_beginAccess();
  v11 = *(v4 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1859F8918(0, *(v11 + 2) + 1, 1, v11);
    *(v5 + v10) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1859F8918((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[40 * v14];
  *(v15 + 4) = a1;
  *(v15 + 5) = a2;
  *(v15 + 6) = 8283;
  *(v15 + 7) = 0xE200000000000000;
  v15[64] = a4 & 1;
  *(v5 + v10) = v11;
  swift_endAccess();
  return v5;
}

unint64_t sub_185A6FA74()
{
  result = qword_1EA8CAE58;
  if (!qword_1EA8CAE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CAE50, qword_185A92368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CAE58);
  }

  return result;
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

uint64_t sub_185A6FB20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for TriageEvent()
{
  result = qword_1ED5EBAF8;
  if (!qword_1ED5EBAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of TriageEvent.metadata(label:values:isSensitive:)()
{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

uint64_t dispatch thunk of TriageEvent.execute<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 288);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_185A6FDEC;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_185A6FDEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_185A6FEF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_185A6FF3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_185A6FF80()
{
  v0 = sub_185A7E7D4();
  __swift_allocate_value_buffer(v0, qword_1EA8CAE80);
  __swift_project_value_buffer(v0, qword_1EA8CAE80);
  return sub_185A7E7C4();
}

uint64_t static CNDataEncoder.decode(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_185A7E594();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_185A7E584();
  v5 = sub_185A7E5F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185A708B0(&unk_1EA8C96A8);
  sub_185A7E574();

  (*(v6 + 32))(a1, v9, v5);
  return (*(v6 + 56))(a1, 0, 1, v5);
}

id CNDataEncoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNDataEncoder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNDataEncoder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CNDataEncoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNDataEncoder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s18ContactsFoundation13CNDataEncoderC6encodey0B04DataVSgAE13TermOfAddressVFZ_0()
{
  v0 = sub_185A7E5C4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_185A7E5B4();
  sub_185A7E5F4();
  sub_185A708B0(&qword_1EA8C9678);
  v3 = sub_185A7E5A4();

  return v3;
}

uint64_t sub_185A707F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADC8, &unk_185A92480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185A7089C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_185A6E638(a1, a2);
  }

  return a1;
}

uint64_t sub_185A708B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_185A7E5F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185A708F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAED8, &qword_185A92548);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_185A7E6F4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEF0, &unk_185A925F8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_185A7EC94();
  qword_1EA8CB5E0 = result;
  return result;
}

uint64_t AsyncSerialQueue.init(priority:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v56 = a1;
  v57 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEA0, &qword_185A924D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEA8, &qword_185A924D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEB0, &qword_185A924E0);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v46 = v15;
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEB8, &qword_185A924E8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEC0, &qword_185A924F0);
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v51 = v8;
  v52 = v7;
  v27 = *(v8 + 16);
  v53 = a2;
  v27(v11, a2, v7);
  v58 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEC8, &qword_185A924F8);
  v54 = v17;
  sub_185A7EA14();
  v28 = sub_185A7E6F4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v45 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v44 - v45;
  sub_185A7E6E4();
  v32 = *(v29 + 16);
  v32(v57, v31, v28);
  v48 = v24;
  sub_185A73D70(v24, v22, &qword_1EA8CAEB8, &qword_185A924E8);
  result = (*(v26 + 48))(v22, 1, v25);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = type metadata accessor for AsyncSerialQueue();
    (*(v26 + 32))(&v57[*(v34 + 20)], v22, v25);
    v35 = sub_185A73D70(v56, v55, &qword_1EA8CAEA0, &qword_185A924D0);
    v57 = &v44;
    MEMORY[0x1EEE9AC00](v35);
    v36 = &v44 - v45;
    v32(&v44 - v45, v31, v28);
    v37 = v49;
    v38 = v50;
    v39 = v28;
    v40 = v47;
    (*(v49 + 16))(v47, v54, v50);
    v41 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v42 = (v30 + *(v37 + 80) + v41) & ~*(v37 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    (*(v29 + 32))(v43 + v41, v36, v39);
    (*(v37 + 32))(v43 + v42, v40, v38);
    sub_185A71B24(0, 0, v55, &unk_185A92508, v43);

    (*(v51 + 8))(v53, v52);
    sub_185A6E72C(v56, &qword_1EA8CAEA0, &qword_185A924D0);
    (*(v29 + 8))(v31, v39);
    (*(v37 + 8))(v54, v38);
    return sub_185A6E72C(v48, &qword_1EA8CAEB8, &qword_185A924E8);
  }

  return result;
}

uint64_t sub_185A70FA4(uint64_t a1, uint64_t a2)
{
  sub_185A6E72C(a2, &qword_1EA8CAEB8, &qword_185A924E8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEC0, &qword_185A924F0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t type metadata accessor for AsyncSerialQueue()
{
  result = qword_1EA8C9628;
  if (!qword_1EA8C9628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_185A710D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_185A710F8, 0, 0);
}

uint64_t sub_185A710F8()
{
  if (qword_1EA8C9638 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAED8, &qword_185A92548) - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_185A7E6F4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, v1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v2;
  v8 = *(MEMORY[0x1E69E8950] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_185A712F4;
  v10 = v0[2];

  return MEMORY[0x1EEE6DE98](v10, v4, &unk_185A92658, v7, 0, 0, 0xD000000000000029, 0x8000000185A91B70);
}

void sub_185A712F4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 48);
    sub_185A6E72C(*(v2 + 40), &qword_1EA8CAED8, &qword_185A92548);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_185A7143C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_185A7E6F4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEB0, &qword_185A924E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_185A745B0;

  return sub_185A710D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_185A71598(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEF8, &unk_185A92660);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_185A71664, 0, 0);
}

uint64_t sub_185A71664()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEB0, &qword_185A924E0);
  sub_185A7E9F4();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_185A71730;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_185A71730()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_185A7182C, 0, 0);
}

uint64_t sub_185A7182C()
{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v6 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_185A71980;

    return v6();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_185A71980()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  sub_185A745A0(v4);
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = sub_185A71730;
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x1EEE6D9C8](v1 + 2, 0, 0, v9);
}

uint64_t sub_185A71B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEA0, &qword_185A924D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_185A73D70(a3, v27 - v11, &qword_1EA8CAEA0, &qword_185A924D0);
  v13 = sub_185A7E9C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_185A6E72C(v12, &qword_1EA8CAEA0, &qword_185A924D0);
  }

  else
  {
    sub_185A7E9B4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_185A7E994();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_185A7E934() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_185A6E72C(a3, &qword_1EA8CAEA0, &qword_185A924D0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_185A6E72C(a3, &qword_1EA8CAEA0, &qword_185A924D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t AsyncSerialQueue.perform(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAED0, &qword_185A92510);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *(type metadata accessor for AsyncSerialQueue() + 20);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12[0] = &unk_185A92520;
  v12[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEC0, &qword_185A924F0);
  sub_185A7E9D4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_185A71F68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_185A6FDEC;

  return v6();
}

uint64_t sub_185A72050(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_185A745B0;

  return sub_185A71F68(a1, v5);
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_185A72130, 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_185A7289C, 0, 0);
}

uint64_t sub_185A72130()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_185A72218;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return sub_185A72660(v5, 0, 0, sub_185A72328, v1);
}

uint64_t sub_185A72218()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_185A72388(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[4] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_185A724B0;

  return v11(v7);
}

uint64_t sub_185A724B0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_185A725AC, 0, 0);
}

uint64_t sub_185A725AC()
{
  (*(*(v0[3] - 8) + 32))(*(*(v0[2] + 64) + 40), v0[4]);
  swift_continuation_resume();

  v1 = v0[1];

  return v1();
}

uint64_t sub_185A72660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_185A7E994();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_185A726F4, v6, v8);
}

uint64_t sub_185A726F4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_185A7279C;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_185A7279C()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_185A7289C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_185A72984;
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  return sub_185A73124(v5, 0, 0, sub_185A72C98, v1);
}

uint64_t sub_185A72984()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_185A72AC0, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_185A72AC0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_185A72B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[0] = a8;
  v21[1] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAED0, &qword_185A92510);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a1;
  v18[4] = a3;
  v18[5] = a4;
  LODWORD(a5) = *(type metadata accessor for AsyncSerialQueue() + 20);
  v19 = swift_allocObject();
  *(v19 + 16) = v21[0];
  *(v19 + 24) = v18;
  v21[2] = a9;
  v21[3] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEC0, &qword_185A924F0);
  sub_185A7E9D4();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_185A72CF8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v6 = *(a4 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v4[6] = v8;
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v4[7] = v10;
  *v10 = v4;
  v10[1] = sub_185A72E24;

  return v12(v8);
}

uint64_t sub_185A72E24()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_185A72FE8;
  }

  else
  {
    v3 = sub_185A72F38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_185A72F38()
{
  v1 = v0[4];
  (*(v0[5] + 32))(*(*(v0[3] + 64) + 40), v0[6]);
  swift_continuation_throwingResume();
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_185A72FE8()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CADC0, &unk_185A922F0);
  sub_185A73090((v0 + 2), v1, v2, v3);
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_185A73090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x1EEE6DEE8](a2, v7);
}

uint64_t sub_185A73124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_185A7E994();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_185A731B8, v6, v8);
}

uint64_t sub_185A731B8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_185A73260;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_185A73260()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t AsyncSerialQueue.Condition.hashValue.getter()
{
  v1 = *v0;
  sub_185A7EC64();
  MEMORY[0x1865FB1E0](v1);
  return sub_185A7EC84();
}

uint64_t sub_185A7340C()
{
  v1 = *v0;
  sub_185A7EC64();
  MEMORY[0x1865FB1E0](v1);
  return sub_185A7EC84();
}

uint64_t sub_185A73480()
{
  v1 = *v0;
  sub_185A7EC64();
  MEMORY[0x1865FB1E0](v1);
  return sub_185A7EC84();
}

uint64_t sub_185A73D70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_185A73DD8()
{
  result = qword_1EA8C9640;
  if (!qword_1EA8C9640)
  {
    sub_185A7E6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8C9640);
  }

  return result;
}

unint64_t sub_185A73E28()
{
  result = qword_1EA8CAEE8;
  if (!qword_1EA8CAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CAEE8);
  }

  return result;
}

void sub_185A73EA4()
{
  sub_185A7E6F4();
  if (v0 <= 0x3F)
  {
    sub_185A73F28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_185A73F28()
{
  if (!qword_1EA8C9618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CAEC8, &qword_185A924F8);
    v0 = sub_185A7E9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA8C9618);
    }
  }
}

uint64_t getEnumTagSinglePayload for AsyncSerialQueue.Condition(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AsyncSerialQueue.Condition(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_185A74100(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_185A741F8;

  return v7(a1);
}

uint64_t sub_185A741F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_185A742F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_185A6FDEC;

  return sub_185A72CF8(v3, v5, v4, v2);
}

uint64_t sub_185A7439C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_185A745B0;

  return sub_185A72388(v3, v5, v4, v2);
}

uint64_t sub_185A74448(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_185A745B0;

  return sub_185A74100(a1, v5);
}

uint64_t sub_185A74500(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_185A6FDEC;

  return sub_185A71598(a1, v4);
}

uint64_t sub_185A745A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_185A745F8()
{
  v1 = sub_185A7E904();
  aBlock[4] = sub_185A7475C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185A747D8;
  aBlock[3] = &block_descriptor_3_0;
  v2 = _Block_copy(aBlock);

  v3 = [v0 valueForKey:v1 onCacheMiss:v2];

  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_185A7EAB4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAF00, &unk_185A92670);
    swift_dynamicCast();
    return v5;
  }

  return result;
}

id sub_185A7478C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  result = [objc_allocWithZone(v3) init];
  a2[3] = v3;
  *a2 = result;
  return result;
}

id sub_185A747D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  (*(a1 + 32))(v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = sub_185A7EBF4();
  __swift_destroy_boxed_opaque_existential_0(v4);

  return v2;
}

uint64_t sub_185A74888()
{
  v1 = sub_185A7E904();
  aBlock[4] = sub_185A74774;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185A747D8;
  aBlock[3] = &block_descriptor_0;
  v2 = _Block_copy(aBlock);

  v3 = [v0 valueForKey:v1 onCacheMiss:v2];

  _Block_release(v2);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_185A7EAB4();
    swift_unknownObjectRelease();
    type metadata accessor for CNKeychainFacadeTestDouble();
    swift_dynamicCast();
    v5 = [v0 isKeychainEnabled];
    v6 = OBJC_IVAR____TtC18ContactsFoundation26CNKeychainFacadeTestDouble_keychainEnabled;
    swift_beginAccess();
    *(v7 + v6) = v5;
    return v7;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void CNData.synchronousData(withContentsOf:timeout:)(double a1)
{
  v3 = sub_185A7E664();
  v4 = [v1 synchronousDataWithContentsOfURL:v3 timeout:a1];

  if ([v4 isSuccess])
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      sub_185A7E6A4();

      return;
    }

    __break(1u);
  }

  else if ([v4 error])
  {
    swift_willThrow();

    return;
  }

  __break(1u);
}

uint64_t static ClientLoggingIdentifier.loggingIdentifier(for:)(void *a1)
{
  v1 = a1;
  v2 = sub_185A74DB4(v1);

  return v2;
}

id ClientLoggingIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ClientLoggingIdentifier.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientLoggingIdentifier();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ClientLoggingIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientLoggingIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_185A74DB4(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 bundleIdentifierForAuditToken_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_185A7E914();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  v9 = [v2 processNameForAuditToken_];
  if (!v9)
  {
LABEL_11:
    [v2 processIdentifierForAuditToken_];
    v14 = sub_185A7EBE4();
    MEMORY[0x1865FAEC0](v14);

    return 977553744;
  }

  v10 = v9;
  v5 = sub_185A7E914();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_11;
  }

  return v5;
}

uint64_t _s18ContactsFoundation23ClientLoggingIdentifierC07loggingE17ForCurrentProcessSSyFZ_0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_185A7E914();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

LABEL_6:
    v6 = objc_opt_self();
    v7 = [v6 processInfo];
    v8 = [v7 processName];

    v2 = sub_185A7E914();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {

      v12 = [v6 processInfo];
      [v12 processIdentifier];

      v13 = sub_185A7EBE4();
      MEMORY[0x1865FAEC0](v13);

      return 977553744;
    }
  }

  return v2;
}

Swift::String __swiftcall CNStringByRedactingUsername(in:)(Swift::String in)
{
  v1 = sub_185A7E904();
  v2 = v1;
  v3 = v2;
  if (v1 && [v2 length])
  {
    if ([v3 _cn_containsSubstring:@"/Users/"])
    {
      v4 = [v3 pathComponents];
      v5 = [v4 indexOfObject:@"Users"];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v5 + 1, v5 + 1 >= [v4 count]))
      {
        v8 = v3;
      }

      else
      {
        v7 = [v4 mutableCopy];
        [v7 replaceObjectAtIndex:v6 withObject:@"USER"];
        v8 = [MEMORY[0x1E696AEC0] pathWithComponents:v7];
      }
    }

    else
    {
      v8 = v3;
    }
  }

  else
  {
    v8 = &stru_1EF441028;
    v9 = &stru_1EF441028;
  }

  v10 = v8;
  v11 = sub_185A7E914();
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t CNStringByRedactingUsername(in:)()
{
  sub_185A7E674();
  v0 = sub_185A7E904();

  v1 = v0;
  v2 = v1;
  if (v0 && [v1 length])
  {
    if ([v2 _cn_containsSubstring:@"/Users/"])
    {
      v3 = [v2 pathComponents];
      v4 = [v3 indexOfObject:@"Users"];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v5 = v4 + 1, v4 + 1 >= [v3 count]))
      {
        v7 = v2;
      }

      else
      {
        v6 = [v3 mutableCopy];
        [v6 replaceObjectAtIndex:v5 withObject:@"USER"];
        v7 = [MEMORY[0x1E696AEC0] pathWithComponents:v6];
      }
    }

    else
    {
      v7 = v2;
    }
  }

  else
  {
    v7 = &stru_1EF441028;
    v8 = &stru_1EF441028;
  }

  v9 = v7;
  v10 = sub_185A7E914();

  return v10;
}

uint64_t sub_185A75340()
{
  v0 = sub_185A7E7D4();
  __swift_allocate_value_buffer(v0, qword_1EA8CAF08);
  __swift_project_value_buffer(v0, qword_1EA8CAF08);
  return sub_185A7E7C4();
}

uint64_t static BugCapture.reportBug(domain:type:subType:name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a3;
  v36 = a5;
  v34 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEA0, &qword_185A924D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v31 - v18;
  v20 = sub_185A7E9C4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185A7E9A4();
  if ((sub_185A76F54() & 1) == 0)
  {
    v33 = a7;
    v32 = a9;
    (*(v21 + 16))(v19, v24, v20);
    (*(v21 + 56))(v19, 0, 1, v20);
    v25 = swift_allocObject();
    v26 = a2;
    v27 = v25;
    v25[2] = 0;
    v25[3] = 0;
    v28 = v35;
    v25[4] = v34;
    v25[5] = v26;
    v25[6] = v28;
    v25[7] = a4;
    v25[8] = v36;
    v25[9] = a6;
    v29 = v32;
    v25[10] = v33;
    v25[11] = a8;
    v25[12] = v29;
    v25[13] = a10;
    v25[14] = 0;
    v25[15] = 0;
    v25[16] = v10;

    sub_185A71B24(0, 0, v19, &unk_185A92700, v27);
  }

  return (*(v21 + 8))(v24, v20);
}

uint64_t static BugCapture.reportBug(domain:type:subType:name:value:priority:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void), uint64_t a13)
{
  v37 = a1;
  v38 = a3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAEA0, &qword_185A924D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v31 - v22;
  result = sub_185A76F54();
  if (result)
  {
    if (a12)
    {
      return a12();
    }
  }

  else
  {
    v34 = a5;
    v35 = a9;
    v36 = a10;
    v25 = sub_185A7E9C4();
    v32 = a7;
    v33 = v13;
    v26 = v25;
    v27 = *(v25 - 8);
    (*(v27 + 16))(v23, a11, v25);
    (*(v27 + 56))(v23, 0, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v29 = v38;
    v28[4] = v37;
    v28[5] = a2;
    v28[6] = v29;
    v28[7] = a4;
    v28[8] = v34;
    v28[9] = a6;
    v28[10] = v32;
    v28[11] = a8;
    v30 = v36;
    v28[12] = v35;
    v28[13] = v30;
    v28[14] = a12;
    v28[15] = a13;
    v28[16] = v33;

    sub_185A772C8(a12);
    sub_185A71B24(0, 0, v23, &unk_185A92708, v28);
  }

  return result;
}

uint64_t sub_185A75920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v13;
  *(v8 + 112) = v14;
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_185A75968, 0, 0);
}

uint64_t sub_185A75968()
{
  v1 = *(v0 + 112);
  sub_185A759E8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v2 = *(v0 + 8);

  return v2();
}

void sub_185A759E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, void (*a11)(void), uint64_t a12)
{
  if (MEMORY[0x1E69D4F78])
  {
    v75 = a7;
    v78 = a11;
    v74 = a10;
    v76 = a9;
    v17 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v79 = [objc_allocWithZone(MEMORY[0x1E69D4F78]) init];
    v18 = sub_185A7E904();
    v71 = a3;
    v19 = sub_185A7E904();
    v72 = a5;
    v20 = sub_185A7E904();
    v77 = v17;
    v21 = [v17 processName];
    if (!v21)
    {
      sub_185A7E914();
      v21 = sub_185A7E904();
    }

    v22 = [v79 signatureWithDomain:v18 type:v19 subType:v20 detectedProcess:v21 triggerThresholdValues:0];

    if (v22)
    {
      v69 = v22;
      v70 = a12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAF20, &qword_185A92730);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_185A926D0;
      v24 = *MEMORY[0x1E69D5088];
      *(inited + 32) = sub_185A7E914();
      *(inited + 40) = v25;
      v26 = sub_185A7E6D4();
      v27 = *(v26 - 8);
      v28 = *(v27 + 64);
      MEMORY[0x1EEE9AC00](v26);
      v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_185A7E6C4();
      sub_185A7E6B4();
      v32 = v31;
      (*(v27 + 8))(v30, v26);
      v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      *(inited + 72) = sub_185A772FC();
      *(inited + 48) = v33;
      v34 = *MEMORY[0x1E69D5068];
      *(inited + 80) = sub_185A7E914();
      *(inited + 88) = v35;
      v36 = MEMORY[0x1E69E6158];
      *(inited + 120) = MEMORY[0x1E69E6158];
      v37 = v75;
      *(inited + 96) = v75;
      *(inited + 104) = a8;
      v38 = *MEMORY[0x1E69D5078];
      *(inited + 128) = sub_185A7E914();
      *(inited + 136) = v39;
      *(inited + 168) = v36;
      v40 = v74;
      *(inited + 144) = v76;
      *(inited + 152) = v40;

      v68 = sub_185A76E24(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CAF30, &qword_185A92738);
      swift_arrayDestroy();
      if (qword_1EA8CACA0 != -1)
      {
        swift_once();
      }

      v41 = sub_185A7E7D4();
      v42 = __swift_project_value_buffer(v41, qword_1EA8CAF08);

      v67 = v42;
      v43 = sub_185A7E7B4();
      v44 = sub_185A7EA54();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v45 = 136446978;
        *(v45 + 4) = sub_1859F900C(v71, a4, aBlock);
        *(v45 + 12) = 2082;
        *(v45 + 14) = sub_1859F900C(v72, a6, aBlock);
        *(v45 + 22) = 2082;
        *(v45 + 24) = sub_1859F900C(v37, a8, aBlock);
        *(v45 + 32) = 2082;
        *(v45 + 34) = sub_1859F900C(v76, v40, aBlock);
        _os_log_impl(&dword_1859F0000, v43, v44, "Capturing bug report with type %{public}s; subtype: %{public}s; name: %{public}s; value: %{public}s", v45, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1865FC480](v46, -1, -1);
        MEMORY[0x1865FC480](v45, -1, -1);
      }

      v47 = v70;
      aBlock[0] = 0;
      v48 = v69;
      sub_185A7E8C4();
      if (aBlock[0])
      {

        v49 = sub_185A7E8B4();

        sub_185A76368(v68);

        v50 = sub_185A7E8B4();

        v51 = swift_allocObject();
        v52 = v78;
        v51[2] = v73;
        v51[3] = v52;
        v51[4] = v47;
        aBlock[4] = sub_185A77348;
        aBlock[5] = v51;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_185A76B84;
        aBlock[3] = &block_descriptor_1;
        v53 = _Block_copy(aBlock);
        sub_185A772C8(v52);

        v54 = [v79 snapshotWithSignature:v49 duration:v50 event:0 payload:v53 reply:120.0];
        _Block_release(v53);

        if ((v54 & 1) == 0)
        {
          v55 = sub_185A7E7B4();
          v56 = sub_185A7EA44();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_1859F0000, v55, v56, "Failed to take snapshot", v57, 2u);
            MEMORY[0x1865FC480](v57, -1, -1);
          }

          if (v52)
          {
            v52();
          }
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_1EA8CACA0 != -1)
      {
        swift_once();
      }

      v62 = sub_185A7E7D4();
      __swift_project_value_buffer(v62, qword_1EA8CAF08);
      v63 = sub_185A7E7B4();
      v64 = sub_185A7EA44();
      v65 = v78;
      if (os_log_type_enabled(v63, v64))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1859F0000, v63, v64, "Failed to create signature", v66, 2u);
        MEMORY[0x1865FC480](v66, -1, -1);
      }

      if (v65)
      {
        v65();
      }
    }
  }

  else
  {
    if (qword_1EA8CACA0 != -1)
    {
      swift_once();
    }

    v58 = sub_185A7E7D4();
    __swift_project_value_buffer(v58, qword_1EA8CAF08);
    v59 = sub_185A7E7B4();
    v60 = sub_185A7EA44();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1859F0000, v59, v60, "SDRDiagnosticReporter symbol does not exist", v61, 2u);
      MEMORY[0x1865FC480](v61, -1, -1);
    }

    if (a11)
    {
      a11();
    }
  }
}