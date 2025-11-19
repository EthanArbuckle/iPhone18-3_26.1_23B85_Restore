uint64_t sub_241DA73F8()
{
  qword_280BC5E08 = objc_alloc_init(BUAccountsProvider);

  return MEMORY[0x2821F96F8]();
}

id sub_241DA750C()
{
  if (qword_280BC5E20 != -1)
  {
    sub_241DA7550();
  }

  v1 = qword_280BC5E18;

  return v1;
}

uint64_t sub_241DA7564()
{
  kdebug_trace();
  v1 = objc_msgSend_ams_sharedAccountStoreForMediaType_(MEMORY[0x277CB8F48], v0, *MEMORY[0x277CEE160]);
  v2 = qword_280BC5E18;
  qword_280BC5E18 = v1;

  return kdebug_trace();
}

void sub_241DA770C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSStringFromBUAccountsType(uint64_t a1, const char *a2)
{
  if (qword_280BC5E38 != -1)
  {
    sub_241DA77A8();
  }

  v3 = qword_280BC5E40;
  v4 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a1);
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4);

  return v6;
}

void sub_241DA77BC(uint64_t a1, const char *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_2853F9FB0;
  v4[1] = &unk_2853F9FC8;
  v5[0] = @"BUAccountsTypeNone";
  v5[1] = @"BUAccountsTypeITunesStore";
  v4[2] = &unk_2853F9FE0;
  v5[2] = @"BUAccountsTypeICloudAccount";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 3);
  v3 = qword_280BC5E40;
  qword_280BC5E40 = v2;
}

uint64_t sub_241DA7870(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_l_activeStoreAccount(*(a1 + 32), a2, a3);

  return MEMORY[0x2821F96F8]();
}

id BUDynamicCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_241DA79E8()
{
  qword_280BC5EB0 = objc_alloc_init(BUManagedRestrictionsProvider);

  return MEMORY[0x2821F96F8]();
}

void sub_241DA7B48(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedConnection(MEMORY[0x277D262A0], a2, a3);
  objc_msgSend_registerObserver_(v4, v5, *(a1 + 32));

  v8 = objc_msgSend_sharedConnection(MEMORY[0x277D262A0], v6, v7);
  v10 = objc_msgSend_effectiveBoolValueForSetting_(v8, v9, *MEMORY[0x277D25DA8]) != 2;
  objc_msgSend_setIsBookStoreAllowed_(*(a1 + 32), v11, v10);

  v14 = objc_msgSend_sharedConnection(MEMORY[0x277D262A0], v12, v13);
  v16 = objc_msgSend_effectiveBoolValueForSetting_(v14, v15, *MEMORY[0x277D25DB0]) != 2;
  objc_msgSend_setIsExplicitContentAllowed_(*(a1 + 32), v17, v16);

  v23 = objc_msgSend_sharedConnection(MEMORY[0x277D262A0], v18, v19);
  v21 = objc_msgSend_effectiveBoolValueForSetting_(v23, v20, *MEMORY[0x277D25CD0]) != 2;
  objc_msgSend_setIsAccountModificationAllowed_(*(a1 + 32), v22, v21);
}

void sub_241DA7D50(uint64_t a1)
{
  v95 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v4 = objc_msgSend_offlineCacheProvider(*(a1 + 32), v2, v3);
  objc_msgSend_setOfflineCacheProvider_(*(a1 + 32), v5, 0);
  if (objc_msgSend_runFromCache(v4, v6, v7))
  {
    if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v8, v9))
    {
      v10 = BookUtilityLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_241DCF518(v10);
      }
    }

    v11 = BookUtilityLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241DA6000, v11, OS_LOG_TYPE_INFO, "Using bag values provided by offline cache", buf, 2u);
    }

    v12 = objc_opt_new();
    v15 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v13, v14);
    objc_msgSend_setExpirationDate_(v12, v16, v15);

    objc_msgSend_setProfile_(v12, v17, @"iBooks");
    objc_msgSend_setProfileVersion_(v12, v18, @"1");
    v21 = objc_msgSend_loadCache(v4, v19, v20);
    objc_msgSend_setData_(v12, v22, v21);

    v90 = 0;
    v24 = objc_msgSend_buildWithError_(v12, v23, &v90);
    v25 = v90;
    if (v25)
    {
      v26 = BookUtilityLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_241DCF55C(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    goto LABEL_26;
  }

  v33 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v8, v9);
  v36 = objc_msgSend_executableURL(v33, v34, v35);
  v39 = objc_msgSend_lastPathComponent(v36, v37, v38);
  isEqualToString = objc_msgSend_isEqualToString_(v39, v40, @"bookdatastored");

  if (isEqualToString)
  {
    v44 = BookUtilityLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241DA6000, v44, OS_LOG_TYPE_DEFAULT, "Fixing the request process info so we actually get results...", buf, 2u);
    }

    v47 = objc_msgSend_currentProcess(MEMORY[0x277CEE620], v45, v46);
    v50 = objc_msgSend_copy(v47, v48, v49);

    objc_msgSend_setBundleIdentifier_(v50, v51, @"com.apple.bookdatastored");
    v54 = objc_msgSend_bundleIdentifier(v50, v52, v53);
    objc_msgSend_setExecutableName_(v50, v55, v54);
  }

  else
  {
    v57 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v42, v43);
    v60 = objc_msgSend_executableURL(v57, v58, v59);
    v63 = objc_msgSend_lastPathComponent(v60, v61, v62);
    v65 = objc_msgSend_isEqualToString_(v63, v64, @"booklibraryctl");

    if (!v65)
    {
      v75 = objc_msgSend_bagForProfile_profileVersion_(MEMORY[0x277CEE3F8], v66, @"iBooks", @"1");
      goto LABEL_23;
    }

    v67 = BookUtilityLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241DA6000, v67, OS_LOG_TYPE_DEFAULT, "Fixing the request process info so we actually get results...", buf, 2u);
    }

    v70 = objc_msgSend_currentProcess(MEMORY[0x277CEE620], v68, v69);
    v50 = objc_msgSend_copy(v70, v71, v72);

    objc_msgSend_setBundleIdentifier_(v50, v73, @"com.apple.iBooks");
    objc_msgSend_setExecutableName_(v50, v74, @"com.apple.iBooks");
  }

  v75 = objc_msgSend_bagForProfile_profileVersion_processInfo_(MEMORY[0x277CEE3F8], v56, @"iBooks", @"1", v50);

LABEL_23:
  v76 = BookUtilityLog();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    v79 = objc_msgSend__defaultValueDictionary(*(a1 + 32), v77, v78);
    v81 = objc_msgSend_ams_componentsJoinedByString_(v79, v80, @", ");
    *buf = 138412290;
    v94 = v81;
    _os_log_impl(&dword_241DA6000, v76, OS_LOG_TYPE_DEFAULT, "Setting up default values: %@", buf, 0xCu);
  }

  v84 = objc_msgSend__defaultValueDictionary(*(a1 + 32), v82, v83);
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = sub_241DAA0C0;
  v91[3] = &unk_278D1CD10;
  v24 = v75;
  v92 = v24;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v84, v85, v91);

  v12 = v92;
LABEL_26:

  v86 = [BUBag alloc];
  v88 = objc_msgSend_initWithBackingBag_(v86, v87, v24);
  v89 = qword_280BC5E68;
  qword_280BC5E68 = v88;

  kdebug_trace();
}

id BookUtilityLog()
{
  if (qword_280BC5E90 != -1)
  {
    sub_241DA8A30();
  }

  v1 = qword_280BC5E98;

  return v1;
}

uint64_t sub_241DA82DC()
{
  qword_280BC5E98 = os_log_create("com.apple.iBooks", "BookUtility");

  return MEMORY[0x2821F96F8]();
}

void sub_241DA8438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DA8450(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4[9])
  {
    if (objc_msgSend_hasCloudKitEntitlement(v4, a2, a3))
    {
      goto LABEL_5;
    }

    v4 = *(a1 + 32);
  }

  v5 = objc_msgSend_l_primaryAppleAccount(v4, a2, a3);
  v6 = MEMORY[0x277CCABB0];
  isManagedAppleID = objc_msgSend_aa_isManagedAppleID(v5, v7, v8);
  v11 = objc_msgSend_numberWithBool_(v6, v10, isManagedAppleID);
  v12 = *(a1 + 32);
  v13 = *(v12 + 72);
  *(v12 + 72) = v11;

LABEL_5:
  v14 = *(*(a1 + 32) + 72);
  v15 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v15, v14);
}

void sub_241DA8680()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v0)
  {
    v1 = v0;
    error = 0;
    v3 = SecTaskCopyValueForEntitlement(v0, @"com.apple.developer.icloud-services", &error);
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = BookUtilityLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_241DD0F80();
      }
    }

    else
    {
      byte_280BC5DD0 = objc_msgSend_containsObject_(v3, v2, @"CloudKit");
    }

    CFRelease(v1);
  }

  else
  {
    v4 = BookUtilityLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1018();
    }
  }
}

id sub_241DA8788()
{
  v0 = sub_241DA87BC();
  if (v0)
  {
    v1 = *v0;

    return v1;
  }

  else
  {
    sub_241DCFC9C();
    return sub_241DA87BC();
  }
}

uint64_t sub_241DA87BC()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_280BC5E80;
  v6 = qword_280BC5E80;
  if (!qword_280BC5E80)
  {
    v1 = sub_241DA88A8();
    v4[3] = dlsym(v1, "CKAccountChangedNotification");
    qword_280BC5E80 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_241DA8890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DA88A8()
{
  v0 = sub_241DA8904();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t sub_241DA8904()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_280BC5E88;
  v5 = qword_280BC5E88;
  if (!qword_280BC5E88)
  {
    v6 = xmmword_278D1D368;
    v7 = *off_278D1D378;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_280BC5E88 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_241DA8A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DA8BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DA8BE0(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_l_primaryAppleAccount(*(a1 + 32), a2, a3);

  return MEMORY[0x2821F96F8]();
}

id sub_241DA8C2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_books(BUAppGroup, a2, a3);
  v6 = objc_msgSend_userDefaults(v3, v4, v5);

  return v6;
}

uint64_t sub_241DA8CD8()
{
  v0 = [BUAppGroup alloc];
  qword_280BC5E28 = objc_msgSend_initWithIdentifier_(v0, v1, @"group.com.apple.iBooks");

  return MEMORY[0x2821F96F8]();
}

id sub_241DA8D24(void *a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_mutableCopy(a1, a2, a3);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v32, v36, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(v5, v8, v12, v32);
        v14 = objc_opt_class();
        v15 = BUDynamicCast(v14, v13);
        v16 = objc_opt_class();
        v17 = BUDynamicCast(v16, v13);
        v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v18, v19);

        if (v13 == v20)
        {
          objc_msgSend_removeObjectForKey_(v4, v21, v12);
          goto LABEL_13;
        }

        if (v15)
        {
          v23 = objc_msgSend_bu_dictionaryByRecursivelyRemovingNSNulls(v15, v21, v22);
        }

        else
        {
          if (!v17)
          {
            goto LABEL_13;
          }

          v25 = objc_opt_class();
          v23 = objc_msgSend__bu_arrayByRecursivelyRemovingNSNulls_(v25, v26, v17);
        }

        v27 = v23;
        objc_msgSend_setObject_forKeyedSubscript_(v4, v24, v23, v12);

LABEL_13:
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v32, v36, 16);
    }

    while (v9);
  }

  v30 = objc_msgSend_copy(v4, v28, v29);

  return v30;
}

id sub_241DA8F1C()
{
  v0 = objc_opt_class();
  v3 = objc_msgSend_bu_booksGroupContainerURL(v0, v1, v2);
  v5 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v3, v4, @"Documents", 1);

  return v5;
}

id sub_241DA8F78(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_books(BUAppGroup, a2, a3);
  v6 = objc_msgSend_containerURL(v3, v4, v5);

  return v6;
}

void sub_241DA9150(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a2, a3);
  v8 = objc_msgSend_environment(v3, v4, v5);

  v7 = objc_msgSend_objectForKeyedSubscript_(v8, v6, @"XCTestConfigurationFilePath");
  byte_280BC5DC0 = v7 != 0;
}

id sub_241DA925C()
{
  if (qword_280BC5E58 != -1)
  {
    sub_241DA9248();
  }

  v1 = qword_280BC5E60;

  return v1;
}

void sub_241DA92A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_bu_mediaURL(MEMORY[0x277CBEBC0], a2, a3);
  v4 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v6, v3, @"Books", 1);
  v5 = qword_280BC5E60;
  qword_280BC5E60 = v4;
}

id sub_241DA931C()
{
  if (qword_280BC5E48 != -1)
  {
    sub_241DA9308();
  }

  v1 = qword_280BC5E50;

  return v1;
}

void sub_241DA9360()
{
  if (!qword_280BC5E50)
  {
    v0 = CPSharedResourcesDirectory();
    v5 = objc_msgSend_stringByAppendingPathComponent_(v0, v1, @"Media");
    v3 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v2, v5, 1);
    v4 = qword_280BC5E50;
    qword_280BC5E50 = v3;
  }
}

void sub_241DA9610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DA9628(uint64_t a1, const char *a2)
{
  objc_msgSend__registerNotificationForAccountTypeIfNeeded_(*(a1 + 32), a2, 1);
  v4 = *(*(a1 + 32) + 48);
  if (!v4)
  {
    v5 = objc_msgSend_bu_sharedAccountStore(MEMORY[0x277CB8F48], 0, v3);
    v8 = objc_msgSend_ams_localiTunesAccount(v5, v6, v7);
    v9 = *(a1 + 32);
    v10 = *(v9 + 48);
    *(v9 + 48) = v8;

    v4 = *(*(a1 + 32) + 48);
  }

  v11 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v11, v4);
}

uint64_t sub_241DA98F4(uint64_t a1)
{
  qword_280BC5DB0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

void sub_241DA9B70(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], a2, a3);
  v8 = objc_msgSend_environment(v3, v4, v5);

  v7 = objc_msgSend_objectForKeyedSubscript_(v8, v6, @"XCTestConfigurationFilePath");
  byte_280BC5DF0 = v7 != 0;
}

uint64_t BUIsRunningTests()
{
  if (qword_280BC5E78 != -1)
  {
    sub_241DA9C2C();
  }

  return byte_280BC5DF0;
}

uint64_t sub_241DA9C40(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_buVerboseLoggingEnabled(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id BUAssertionLog()
{
  if (qword_280BC5DF8 != -1)
  {
    sub_241DA9CC0();
  }

  v1 = qword_280BC5E00;

  return v1;
}

uint64_t sub_241DA9CD4()
{
  qword_280BC5E00 = os_log_create("com.apple.iBooks", "BookUtility.Assertion");

  return MEMORY[0x2821F96F8]();
}

id BUProtocolCast(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v4 && objc_msgSend_conformsToProtocol_(v4, v5, v3))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_241DA9F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DA9FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[10];
  if (!v5)
  {
    v6 = objc_msgSend_l_activeStoreAccount(v4, 0, a3);
    v7 = MEMORY[0x277CCABB0];
    isManagedAppleID = objc_msgSend_ams_isManagedAppleID(v6, v8, v9);
    v12 = objc_msgSend_numberWithBool_(v7, v11, isManagedAppleID);
    v13 = *(a1 + 32);
    v14 = *(v13 + 80);
    *(v13 + 80) = v12;

    v5 = *(*(a1 + 32) + 80);
  }

  v15 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v15, v5);
}

void sub_241DAAF78(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = a4;
  if (v9)
  {
    v10 = BookUtilityLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF60C(v9, v10, v11, v12, v13, v14, v15, v16);
    }

LABEL_4:
    v17 = 1;
    goto LABEL_5;
  }

  if (!v6)
  {
    v10 = BookUtilityLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20[0]) = 0;
      _os_log_impl(&dword_241DA6000, v10, OS_LOG_TYPE_DEFAULT, "Defaulting isAudiobooksStoreEnabled to 1", v20, 2u);
    }

    goto LABEL_4;
  }

  v17 = objc_msgSend_BOOLValue(v6, v7, v8);
  v10 = BookUtilityLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109120;
    v20[1] = v17;
    _os_log_impl(&dword_241DA6000, v10, OS_LOG_TYPE_DEFAULT, "isAudiobooksStoreEnabled %d", v20, 8u);
  }

LABEL_5:

  v18 = MEMORY[0x245D00360](*(a1 + 32));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 16))(v18, v17);
  }
}

void sub_241DAB1AC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v9 = a4;
  if (v9)
  {
    v10 = BookUtilityLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF678(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    goto LABEL_5;
  }

  if (!v6)
  {
LABEL_5:
    v17 = 0;
    goto LABEL_8;
  }

  v17 = objc_msgSend_length(v6, v7, v8) != 0;
LABEL_8:
  v18 = MEMORY[0x245D00360](*(a1 + 32));
  v19 = v18;
  if (v18)
  {
    (*(v18 + 16))(v18, v17);
  }
}

void sub_241DAB2E0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_241DAB7E4()
{
  v0 = BUBundle();
  v9 = objc_msgSend_bundleIdentifier(v0, v1, v2);

  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v9)
  {
    v4 = v9;
  }

  else
  {
    v4 = @"com.apple.Unknown";
  }

  v5 = getpid();
  v7 = objc_msgSend_initWithFormat_(v3, v6, @"%@_%d", v4, v5);
  v8 = qword_27EC72978;
  qword_27EC72978 = v7;
}

void sub_241DAB890(void *a1, const char *a2, unint64_t a3)
{
  v20 = objc_msgSend_mutableCopy(@"          ", a2, a3);
  for (i = objc_msgSend_length(v20, v5, v6); i < a3; i = objc_msgSend_length(v20, v10, v11))
  {
    objc_msgSend_appendString_(v20, v8, v20);
  }

  v12 = objc_msgSend_length(v20, v8, v9);
  objc_msgSend_deleteCharactersInRange_(v20, v13, a3, v12 - a3);
  objc_msgSend_insertString_atIndex_(a1, v14, v20, 0);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"\n%@", v20);
  v18 = objc_msgSend_length(a1, v16, v17);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(a1, v19, @"\n", v15, 0, 0, v18);
}

id BUArrayDescription(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_count(v1, v2, v3);
  v6 = objc_msgSend_descriptionWithObject_format_(BUDescription, v5, v1, @" count=%lu", v4);;
  if (objc_msgSend_count(v1, v7, v8))
  {
    v11 = 0;
    do
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"[%lu]", v11);
      v14 = objc_msgSend_objectAtIndexedSubscript_(v1, v13, v11);
      objc_msgSend_addField_format_(v6, v15, v12, @"%@", v14);

      ++v11;
    }

    while (v11 < objc_msgSend_count(v1, v16, v17));
  }

  objc_msgSend_setFieldOptionCommaSeparated(v6, v9, v10);
  v20 = objc_msgSend_descriptionString(v6, v18, v19);

  return v20;
}

__CFString *BUObjectReferenceDescription(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = MEMORY[0x277CCACA8];
    ClassName = object_getClassName(v1);
    v7 = ClassName;
    if (isKindOfClass)
    {
      v11 = objc_msgSend_count(v1, v5, v6);
      objc_msgSend_stringWithFormat_(v3, v8, @"(%s*)%p; count=%lu", v7, v1, v11);
    }

    else
    {
      objc_msgSend_stringWithFormat_(v3, v5, @"(%s*)%p", ClassName, v1);
    }
    v9 = ;
  }

  else
  {
    v9 = @"<nil>";
  }

  return v9;
}

id sub_241DAC85C(void *a1, const char *a2, unint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_278D1CDE0[a3];
  }

  v10 = *MEMORY[0x277CCA450];
  v11[0] = v5;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v11, &v10, 1);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(a1, v7, @"com.apple.iBooks.BUIO", a3, v6);

  return v8;
}

id sub_241DAC940(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  v9 = objc_msgSend_count(v5, v7, v8);
  v11 = objc_msgSend_initWithCapacity_(v6, v10, v9 + 1);
  v13 = v11;
  if (v5)
  {
    objc_msgSend_addEntriesFromDictionary_(v11, v12, v5);
  }

  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v13, v15, v14, @"BUIOErrorType");

  return v13;
}

id sub_241DAC9F0(void *a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = objc_msgSend_bu_userInfoWithErrorType_userInfo_(a1, a2, 0, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, v4, 256, v5);

  return v7;
}

id sub_241DACA70(void *a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = objc_msgSend_bu_userInfoWithErrorType_userInfo_(a1, a2, 0, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, v4, 259, v5);

  return v7;
}

id sub_241DACAF0(void *a1, const char *a2, int a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA5B8];
  v5 = a3;
  v6 = objc_msgSend_bu_userInfoWithErrorType_userInfo_(a1, a2, 0);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v7, v4, v5, v6);

  return v8;
}

id sub_241DACB70(void *a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA050];
  v5 = objc_msgSend_bu_userInfoWithErrorType_userInfo_(a1, a2, 1, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, v4, 512, v5);

  return v7;
}

id sub_241DACBF0(void *a1, uint64_t a2, int a3, void *a4)
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = *MEMORY[0x277CCA5B8];
  v11 = objc_msgSend_bu_userInfoWithErrorType_userInfo_(a1, v10, 1, v7);

  v13 = objc_msgSend_initWithDomain_code_userInfo_(v8, v12, v9, a3, v11);

  return v13;
}

uint64_t sub_241DACCA8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = a4;
  if (a3 == 256 && (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CCA050]) & 1) != 0)
  {
    isEqual = 1;
  }

  else
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v7, @"BUIOErrorType");
    isEqual = objc_msgSend_isEqual_(v10, v11, &unk_2853F9F80);
  }

  return isEqual;
}

uint64_t sub_241DACD50(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3 == 259)
  {
    return objc_msgSend_isEqualToString_(a2, a2, *MEMORY[0x277CCA050]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241DACD80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = a4;
  if (a3 == 512 && (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CCA050]) & 1) != 0)
  {
    isEqual = 1;
  }

  else
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v7, @"BUIOErrorType");
    isEqual = objc_msgSend_isEqual_(v10, v11, &unk_2853F9F98);
  }

  return isEqual;
}

id sub_241DACE1C(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = 0;
  memset(&v13.tm_wday, 0, 32);
  v13.tm_isdst = -1;
  v13.tm_sec = (a3 >> 15) & 0x3E;
  v13.tm_min = (a3 >> 21) & 0x3F;
  v13.tm_hour = a3 >> 27;
  v13.tm_mday = a3 & 0x1F;
  v5 = vand_s8(vshl_u32(vdup_n_s32(a3), 0xFFFFFFF7FFFFFFFBLL), 0x7F0000000FLL);
  *&v13.tm_mon = vadd_s32(v5, 0x50FFFFFFFFLL);
  v7 = (v5.i32[0] - 13) < 0xFFFFFFF4 || a3 >> 30 == 3 || (a3 & 0x1F) == 0;
  if (!v7 && ((a3 >> 21) & 0x3F) <= 0x3B && ((a3 >> 15) & 0x3E) <= 0x3B)
  {
    v8 = a1;
    v9 = mktime(&v13);
    v4 = objc_msgSend_initWithTimeIntervalSince1970_(v8, v10, v11, v9);
  }

  return v4;
}

uint64_t sub_241DACEF8(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_timeIntervalSince1970(a1, a2, a3);
  v7 = v3;
  v4 = localtime(&v7);
  tm_year = v4->tm_year;
  if (tm_year <= 81)
  {
    LOWORD(tm_year) = 81;
  }

  return ((32 * v4->tm_mon + 32) | v4->tm_mday | ((tm_year << 9) + 24576)) | (((32 * LOWORD(v4->tm_min)) | (v4->tm_hour << 11) | (v4->tm_sec >> 1)) << 16);
}

id sub_241DACF70(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CB8F48];
  v4 = a3;
  v7 = objc_msgSend_bu_sharedAccountStore(v3, v5, v6);
  v9 = objc_msgSend_ams_iTunesAccountWithDSID_(v7, v8, v4);

  return v9;
}

void sub_241DACFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CB8F48];
  v5 = a3;
  v9 = objc_msgSend_bu_sharedAccountStore(v4, v6, v7);
  objc_msgSend_removeAccount_withCompletionHandler_(v9, v8, a1, v5);
}

id sub_241DAD054(void *a1, const char *a2)
{
  objc_msgSend_ams_setActive_forMediaType_(a1, a2, 0, 0);
  v5 = objc_msgSend_bu_sharedAccountStore(MEMORY[0x277CB8F48], v3, v4);
  v7 = objc_msgSend_ams_saveAccount_verifyCredentials_(v5, v6, a1, 0);

  return v7;
}

id sub_241DAD0C0(void *a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_length(a1, a2, a3))
  {
    v33 = a1;
    goto LABEL_14;
  }

  v6 = objc_msgSend_length(a1, v4, v5);
  v9 = objc_msgSend_length(a1, v7, v8);
  v11 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v10, v6 + (v9 >> 1));
  v12 = a1;
  v15 = objc_msgSend_bytes(v12, v13, v14);
  v35.avail_in = objc_msgSend_length(a1, v16, v17, v15, 0, 0, 0, 0, 0, 0, 0);
  v35.zalloc = 0;
  v35.zfree = 0;
  v35.total_out = 0;
  if (inflateInit2_(&v35, -15, "1.2.12", 112))
  {
    goto LABEL_12;
  }

  v20 = v9 >> 1;
  do
  {
    total_out = v35.total_out;
    if (total_out >= objc_msgSend_length(v11, v18, v19))
    {
      objc_msgSend_increaseLengthBy_(v11, v22, v20);
    }

    v23 = v11;
    v26 = objc_msgSend_mutableBytes(v23, v24, v25);
    v35.next_out = (v26 + v35.total_out);
    v29 = objc_msgSend_length(v11, v27, v28);
    v35.avail_out = v29 - LODWORD(v35.total_out);
    v30 = inflate(&v35, 2);
  }

  while (!v30);
  if (v30 != 1)
  {
    inflateEnd(&v35);
    goto LABEL_12;
  }

  if (inflateEnd(&v35))
  {
LABEL_12:
    v33 = 0;
    goto LABEL_13;
  }

  objc_msgSend_setLength_(v11, v31, v35.total_out);
  v33 = objc_msgSend_dataWithData_(MEMORY[0x277CBEA90], v32, v11);
LABEL_13:

LABEL_14:

  return v33;
}

id sub_241DAD254(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3))
  {
    memset(&v27.total_out, 0, 72);
    v4 = a1;
    v7 = objc_msgSend_bytes(v4, v5, v6);
    v27.avail_in = objc_msgSend_length(a1, v8, v9, v7, 0, 0);
    v11 = 0;
    if (!deflateInit2_(&v27, 9, 8, -15, 9, 0, "1.2.12", 112))
    {
      v14 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v10, 0x4000);
      do
      {
        total_out = v27.total_out;
        if (total_out >= objc_msgSend_length(v14, v12, v13))
        {
          objc_msgSend_increaseLengthBy_(v14, v16, 0x4000);
        }

        v17 = v14;
        v20 = objc_msgSend_mutableBytes(v17, v18, v19);
        v27.next_out = (v20 + v27.total_out);
        v23 = objc_msgSend_length(v14, v21, v22);
        v27.avail_out = v23 - LODWORD(v27.total_out);
        deflate(&v27, 4);
      }

      while (!v27.avail_out);
      deflateEnd(&v27);
      objc_msgSend_setLength_(v14, v24, v27.total_out);
      v11 = objc_msgSend_dataWithData_(MEMORY[0x277CBEA90], v25, v14);
    }
  }

  else
  {
    v11 = a1;
  }

  return v11;
}

id BUOnboardingAllBundleIDs(uint64_t a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_defaultBag(BUBag, a2, a3);
  v6 = objc_msgSend_onboardingPersonalizationID(v3, v4, v5);
  v9 = objc_msgSend_valuePromise(v6, v7, v8);

  v12 = objc_msgSend_date(MEMORY[0x277CBEAA8], v10, v11);
  v32 = 0;
  v14 = objc_msgSend_resultWithTimeout_error_(v9, v13, &v32, 1.0);
  v15 = v32;
  v18 = v15;
  if (v15 && objc_msgSend_code(v15, v16, v17) != 204)
  {
    v19 = BookUtilityLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF784(v18, v19);
    }
  }

  v20 = objc_msgSend_date(MEMORY[0x277CBEAA8], v16, v17);
  objc_msgSend_timeIntervalSinceDate_(v20, v21, v12);
  v23 = v22;

  v24 = BookUtilityLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v23;
    _os_log_impl(&dword_241DA6000, v24, OS_LOG_TYPE_DEFAULT, "BUOnboardingAllBundleIDs: resultWithTimeout elapsedTime: %f", buf, 0xCu);
  }

  v26 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v25, @"com.apple.onboarding.ibooks");
  v29 = v26;
  if (v14)
  {
    objc_msgSend_addObject_(v26, v27, v14);
  }

  v30 = objc_msgSend_copy(v29, v27, v28);

  return v30;
}

void sub_241DAD754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DAD76C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_entriesCountImpl(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_241DAD93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DAD954(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_241DAE148(uint64_t a1, const char *a2, uint64_t a3, const Bytef *a4, unint64_t a5)
{
  v8 = objc_msgSend_currentEntry(*(a1 + 32), a2, a3);
  v11 = objc_msgSend_CRC(v8, v9, v10);
  if (a5 >= 0xFFFFFFFF)
  {
    v12 = -1;
  }

  else
  {
    v12 = a5;
  }

  v13 = crc32(v11, a4, v12);
  v16 = objc_msgSend_currentEntry(*(a1 + 32), v14, v15);
  objc_msgSend_setCRC_(v16, v17, v13);

  return 1;
}

void sub_241DAE3A8(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[4];
  if (v9[16] == 1)
  {
    BUReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/AlderServices/frameworks/BookUtility/zip/BUZipWriter.m", 269, "[BUZipWriter flushCurrentEntryWithQueue:completion:]_block_invoke", "!self->_closed", @"Trying to flush while closed.", a6, a7, a8, v28);
    BUCrashBreakpoint();
    if (BUIsRunningTests())
    {
      BUCrashFinalThrow(@"Trying to flush while closed.", v10, v11, v12, v13, v14, v15, v16, v29);
    }

    __break(1u);
  }

  else
  {
    v17 = objc_msgSend_error(v9, a2, a3);

    v20 = a1[4];
    if (v17)
    {
      v21 = objc_msgSend_error(v20, v18, v19);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_241DAE568;
      block[3] = &unk_278D1CEA0;
      v22 = a1[5];
      v23 = a1[6];
      v34 = v21;
      v35 = v23;
      v24 = v21;
      dispatch_async(v22, block);
    }

    else
    {
      objc_msgSend_finishEntry(v20, v18, v19);
      v27 = objc_msgSend_channelQueue(a1[4], v25, v26);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_241DAE57C;
      v30[3] = &unk_278D1CF40;
      v30[4] = a1[4];
      v32 = a1[6];
      v31 = a1[5];
      dispatch_async(v27, v30);
    }
  }
}

void sub_241DAE57C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_channelQueue(*(a1 + 32), a2, a3);
  dispatch_suspend(v4);

  v7 = objc_msgSend_p_writeChannel(*(a1 + 32), v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241DAE64C;
  v12[3] = &unk_278D1CF18;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v8;
  v12[4] = v9;
  v13 = v10;
  objc_msgSend_flushWithCompletion_(v7, v11, v12);
}

void sub_241DAE64C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 48))
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = objc_msgSend_error(*(a1 + 32), v4, v5);
    }

    v8 = v7;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_241DAE73C;
    v16 = &unk_278D1CEA0;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v17 = v8;
    v18 = v10;
    v11 = v8;
    dispatch_async(v9, &v13);
  }

  v12 = objc_msgSend_channelQueue(*(a1 + 32), v4, v5, v13, v14, v15, v16);
  dispatch_resume(v12);
}

void sub_241DAE9F4(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  if (a2)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v7 == 0);
    }
  }
}

void sub_241DAEBBC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9[16] == 1)
  {
    BUReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/AlderServices/frameworks/BookUtility/zip/BUZipWriter.m", 350, "[BUZipWriter writeEntryWithName:force32BitSize:lastModificationDate:size:CRC:fromReadChannel:writeHandler:]_block_invoke", "!self->_closed", @"Already closed.", a6, a7, a8, v21[0]);
    BUCrashBreakpoint();
    if (BUIsRunningTests())
    {
      BUCrashFinalThrow(@"Already closed.", v10, v11, v12, v13, v14, v15, v16, v21[0]);
    }

    __break(1u);
  }

  else
  {
    v17 = objc_msgSend_writeQueue(v9, a2, a3);
    dispatch_suspend(v17);

    objc_msgSend_beginEntryWithNameImpl_force32BitSize_lastModificationDate_size_CRC_forceCalculatingSizeAndCRCForPreservingLastModificationDate_(*(a1 + 32), v18, *(a1 + 40), *(a1 + 84), *(a1 + 48), *(a1 + 72), *(a1 + 80), 0);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_241DAECD8;
    v21[3] = &unk_278D1CFB8;
    v21[4] = *(a1 + 32);
    v19 = *(a1 + 56);
    v22 = *(a1 + 64);
    objc_msgSend_readWithHandler_(v19, v20, v21);
  }
}

void sub_241DAECD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  objc_msgSend_handleWriteError_(*(a1 + 32), v8, a4);
  if (v7)
  {
    v11 = objc_msgSend_error(*(a1 + 32), v9, v10);

    if (!v11)
    {
      objc_msgSend_addDataImpl_queue_completion_(*(a1 + 32), v9, v7, 0, 0);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v18 = 0;
    v13 = objc_msgSend_error(*(a1 + 32), v9, v10);
    (*(v12 + 16))(v12, a2, v7, v13, &v18);

    if (v18 == 1)
    {
      v14 = *(a1 + 32);
      v15 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, *MEMORY[0x277CCA050], 3072, 0);
      objc_msgSend_handleWriteError_(v14, v16, v15);
    }
  }

  if (a2)
  {
    v17 = objc_msgSend_writeQueue(*(a1 + 32), v9, v10);
    dispatch_resume(v17);
  }
}

void sub_241DAF190(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_writeQueue(*(a1 + 32), a2, a3);
  dispatch_suspend(v4);

  v7 = objc_msgSend_channelQueue(*(a1 + 32), v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241DAF24C;
  v9[3] = &unk_278D1D058;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  dispatch_async(v7, v9);
}

void sub_241DAF24C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_channelQueue(*(a1 + 32), a2, a3);
  dispatch_suspend(v4);

  v7 = objc_msgSend_p_writeChannel(*(a1 + 32), v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241DAF308;
  v10[3] = &unk_278D1CEA0;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v8;
  objc_msgSend_addBarrier_(v7, v9, v10);
}

void sub_241DAF308(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v4 = objc_msgSend_channelQueue(*(a1 + 32), v2, v3);
  dispatch_resume(v4);

  v7 = objc_msgSend_writeQueue(*(a1 + 32), v5, v6);
  dispatch_resume(v7);
}

void sub_241DAF458(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[4];
  if (v9[16] == 1)
  {
    BUReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/AlderServices/frameworks/BookUtility/zip/BUZipWriter.m", 450, "[BUZipWriter closeWithQueue:completion:]_block_invoke", "!self->_closed", @"Shouldn't have closed twice.", a6, a7, a8, v33);
    BUCrashBreakpoint();
    if (BUIsRunningTests())
    {
      BUCrashFinalThrow(@"Shouldn't have closed twice.", v10, v11, v12, v13, v14, v15, v16, v34);
    }

    __break(1u);
  }

  else
  {
    v17 = objc_msgSend_error(v9, a2, a3);

    v20 = a1[4];
    if (v17)
    {
      objc_msgSend_setClosed_(v20, v18, 1);
      v23 = objc_msgSend_error(a1[4], v21, v22);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_241DAF638;
      block[3] = &unk_278D1CEA0;
      v24 = a1[5];
      v25 = a1[6];
      v39 = v23;
      v40 = v25;
      v26 = v23;
      dispatch_async(v24, block);
    }

    else
    {
      objc_msgSend_finishEntry(v20, v18, v19);
      objc_msgSend_writeCentralDirectory(a1[4], v27, v28);
      objc_msgSend_setClosed_(a1[4], v29, 1);
      v32 = objc_msgSend_channelQueue(a1[4], v30, v31);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_241DAF64C;
      v35[3] = &unk_278D1CF40;
      v35[4] = a1[4];
      v37 = a1[6];
      v36 = a1[5];
      dispatch_async(v32, v35);
    }
  }
}

void sub_241DAF64C(void **a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_channelQueue(a1[4], a2, a3);
  dispatch_suspend(v4);

  v7 = objc_msgSend_p_writeChannel(a1[4], v5, v6);
  objc_initWeak(&location, v7);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241DAF76C;
  v9[3] = &unk_278D1D080;
  objc_copyWeak(&v12, &location);
  v9[4] = a1[4];
  v11 = a1[6];
  v10 = a1[5];
  objc_msgSend_addBarrier_(v7, v8, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_241DAF750(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241DAF76C(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  objc_msgSend_close(WeakRetained, v3, v4);
  v7 = objc_msgSend_writeQueue(a1[4], v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DAF844;
  block[3] = &unk_278D1CF40;
  block[4] = a1[4];
  v10 = a1[6];
  v9 = a1[5];
  dispatch_async(v7, block);
}

void sub_241DAF844(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_writeChannelCompletionGroup(*(a1 + 32), a2, a3);
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  if (*(a1 + 48))
  {
    v7 = objc_msgSend_error(*(a1 + 32), v5, v6);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = sub_241DAF938;
    v15 = &unk_278D1CEA0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v16 = v7;
    v17 = v9;
    v10 = v7;
    dispatch_async(v8, &v12);
  }

  v11 = objc_msgSend_channelQueue(*(a1 + 32), v5, v6, v12, v13, v14, v15);
  dispatch_resume(v11);
}

void sub_241DB02E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x245D00360](*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_241DB03D4;
      v9[3] = &unk_278D1CEA0;
      v11 = v4;
      v10 = v3;
      dispatch_async(v6, v9);
    }

    else
    {
      v7 = v4[2];
      v8 = 0;
      v7(v5, v3);
    }
  }
}

void sub_241DB04D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_channelQueue(*(a1 + 32), a2, a3);
  dispatch_suspend(v4);

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_241DAD954;
  v15[4] = sub_241DAD964;
  v16 = 0;
  v7 = objc_msgSend_p_writeChannel(*(a1 + 32), v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_241DB0618;
  v12[3] = &unk_278D1D0F8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v15;
  v12[4] = v8;
  v10 = *(a1 + 56);
  v13 = *(a1 + 48);
  objc_msgSend_writeData_offset_handler_(v7, v11, v9, v10, v12);

  _Block_object_dispose(v15, 8);
}

void sub_241DB0600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DB0618(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v10 = a4;
  if (v10 && (v11 = *(*(a1 + 48) + 8), v13 = *(v11 + 40), v12 = (v11 + 40), !v13))
  {
    objc_storeStrong(v12, a4);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v14 = objc_msgSend_writeQueue(*(a1 + 32), v8, v9);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_241DB075C;
    v21[3] = &unk_278D1D0D0;
    v15 = *(a1 + 48);
    v21[4] = *(a1 + 32);
    v21[5] = v15;
    dispatch_async(v14, v21);
  }

  v16 = MEMORY[0x245D00360](*(a1 + 40));
  v17 = v16;
  if (v16)
  {
    (*(v16 + 16))(v16, *(*(*(a1 + 48) + 8) + 40));
  }

  v20 = objc_msgSend_channelQueue(*(a1 + 32), v18, v19);
  dispatch_resume(v20);

LABEL_9:
}

void sub_241DB08BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DB08D4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_currentOffset(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_241DB0A38(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_p_writeChannel(*(a1 + 32), a2, a3);
  objc_msgSend_close(v5, v3, v4);
}

void sub_241DB0B30(uint64_t a1, const char *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = objc_msgSend_entries(*(a1 + 32), a2, a3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v46, v51, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v47 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v46 + 1) + 8 * v9);
      v11 = objc_alloc_init(BUZipEntry);
      v14 = objc_msgSend_name(v10, v12, v13);
      objc_msgSend_setName_(v11, v15, v14);

      v18 = objc_msgSend_name(v11, v16, v17);
      v19 = v18;
      v22 = objc_msgSend_UTF8String(v19, v20, v21);
      v23 = strlen(v22);
      objc_msgSend_setNameLength_(v11, v24, v23);

      v27 = objc_msgSend_lastModificationDate(v10, v25, v26);
      objc_msgSend_setLastModificationDate_(v11, v28, v27);

      v31 = objc_msgSend_size(v10, v29, v30);
      objc_msgSend_setSize_(v11, v32, v31);
      v35 = objc_msgSend_size(v10, v33, v34);
      objc_msgSend_setCompressedSize_(v11, v36, v35);
      v39 = objc_msgSend_offset(v10, v37, v38);
      objc_msgSend_setOffset_(v11, v40, v39);
      v43 = objc_msgSend_CRC(v10, v41, v42);
      objc_msgSend_setCRC_(v11, v44, v43);
      (*(*(a1 + 40) + 16))();
      LOBYTE(v10) = v50;

      if (v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v45, &v46, v51, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_241DB0D80(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_offset(a2, v5, v6);
  v10 = objc_msgSend_offset(v4, v8, v9);

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

void sub_241DB0EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DB0EF4(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend_sortedEntriesImpl(*(a1 + 32), a2, a3);

  return MEMORY[0x2821F96F8]();
}

void sub_241DB1000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DB1158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DB1170(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_entriesMap(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v8, v4, *(a1 + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_241DB17A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

double CGPointClipToRect(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  MinX = CGRectGetMinX(v15);
  v16.origin.x = a3;
  v16.origin.y = a4;
  v16.size.width = a5;
  v16.size.height = a6;
  MaxX = CGRectGetMaxX(v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  CGRectGetMinY(v17);
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  CGRectGetMaxY(v18);
  if (a1 > MaxX)
  {
    v13 = MaxX;
  }

  else
  {
    v13 = a1;
  }

  if (a1 < MinX)
  {
    return MinX;
  }

  return v13;
}

double CGPointRoundForScale(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    a3 = 1.0;
  }

  return 1.0 / a3 * round(a1 * a3);
}

double CGRectFitRectInRectNoRounding(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = *MEMORY[0x277CBF3A0];
  v9 = 0.0;
  if (a3 != *MEMORY[0x277CBF3A8] || a4 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v9 = fmin(a7 / a3, a8 / a4);
  }

  v11 = a3 * v9;
  if (a7 > v11)
  {
    return (a7 - v11) * 0.5;
  }

  return result;
}

double CGSizeScaleThatFitsInCGSize(double a1, double a2, double a3, double a4)
{
  if (a1 == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 0.0;
  }

  else
  {
    return fmin(a3 / a1, a4 / a2);
  }
}

double CGRectFitRectInRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = 0.0;
  if (a3 != *MEMORY[0x277CBF3A8] || a4 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v10 = fmin(a7 / a3, a8 / a4);
  }

  v12 = a3 * v10;
  v13 = a4 * v10;
  if (a7 > v12)
  {
    v8 = (a7 - v12) * 0.5;
  }

  if (a8 > v13)
  {
    v9 = (a8 - v13) * 0.5;
  }

  *&result = CGRectIntegral(*&v8);
  return result;
}

CGFloat CGRectFitRectInRectClip(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *MEMORY[0x277CBF3A0];
  v9 = 0.0;
  if (a3 != *MEMORY[0x277CBF3A8] || a4 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v9 = fmin(a7 / a3, a8 / a4);
  }

  v11 = a3 * v9;
  v12 = a4 * v9;
  v13 = (a7 - a3 * v9) * 0.5;
  if (a7 > v11)
  {
    v8 = v13;
  }

  if (a8 <= v12)
  {
    v14 = *(MEMORY[0x277CBF3A0] + 8);
  }

  else
  {
    v14 = (a8 - v12) * 0.5;
  }

  v15 = v14;
  v16 = v11;
  v17 = a4 * v9;
  v18 = floor(CGRectGetMinX(*&v8));
  v22.origin.x = v18;
  v22.origin.y = v14;
  v22.size.width = v11;
  v22.size.height = v12;
  v19 = floor(CGRectGetMinY(v22));
  v23.origin.x = v18;
  v23.origin.y = v19;
  v23.size.width = v11;
  v23.size.height = v12;
  v20 = floor(CGRectGetWidth(v23));
  v24.origin.x = v18;
  v24.origin.y = v19;
  v24.size.width = v20;
  v24.size.height = v12;
  CGRectGetHeight(v24);
  return v18;
}

double CGRectFitRectInRectAbsoluteNoRounding(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12 = 0.0;
  if (a3 != *MEMORY[0x277CBF3A8] || a4 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v12 = fmin(a7 / a3, a8 / a4);
  }

  v14 = a3 * v12;
  v15 = a4 * v12;
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v14;
  v20.size.height = v15;
  v17 = MidX - CGRectGetWidth(v20) * 0.5;
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMidY(v21);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v14;
  v22.size.height = v15;
  CGRectGetHeight(v22);
  return v17;
}

double CGRectCenterRectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v16 = MidX - CGRectGetWidth(v20) * 0.5;
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMidY(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetHeight(v22);
  return v16;
}

double CGRectGetCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = ceil(CGRectGetMidX(*&a1));
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return v8;
}

double CGRectGetCenterNoRounding(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

double CGRectMultiply(double result, double a2, double a3, double a4, double a5)
{
  if (a5 != 1.0)
  {
    return result * a5;
  }

  return result;
}

double CGRectRoundedForScale(double a1, double a2, double a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 == 0.0)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = a5;
  }

  if (!CGRectIsNull(*&a1))
  {
    if (v9 == 1.0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 * v9;
    }

    if (v9 == 1.0)
    {
      v11 = a2;
    }

    else
    {
      v11 = a2 * v9;
    }

    if (v9 == 1.0)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 * v9;
    }

    if (v9 != 1.0)
    {
      a4 = a4 * v9;
    }

    v14.origin.x = v10;
    v14.origin.y = v11;
    v14.size.width = v12;
    v14.size.height = a4;
    v8 = round(CGRectGetMinX(v14));
    v15.origin.x = v10;
    v15.origin.y = v11;
    v15.size.width = v12;
    v15.size.height = a4;
    round(CGRectGetMinY(v15));
    v16.origin.x = v10;
    v16.origin.y = v11;
    v16.size.width = v12;
    v16.size.height = a4;
    CGRectGetMaxX(v16);
    v17.origin.x = v10;
    v17.origin.y = v11;
    v17.size.width = v12;
    v17.size.height = a4;
    CGRectGetMaxY(v17);
    if (1.0 / v9 != 1.0)
    {
      return 1.0 / v9 * v8;
    }
  }

  return v8;
}

double CGSizeScaleThatFillsInCGSize(double a1, double a2, double a3, double a4)
{
  if (a1 == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 0.0;
  }

  else
  {
    return fmax(a3 / a1, a4 / a2);
  }
}

double CGSizeScaledToFitInSize(double a1, double a2, double a3, double a4)
{
  v4 = 0.0;
  if (a1 != *MEMORY[0x277CBF3A8] || a2 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v4 = fmin(a3 / a1, a4 / a2);
  }

  return a1 * v4;
}

double CGSizeScaledToFillInSize(double a1, double a2, double a3, double a4)
{
  v4 = 0.0;
  if (a1 != *MEMORY[0x277CBF3A8] || a2 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v4 = fmax(a3 / a1, a4 / a2);
  }

  return a1 * v4;
}

double CGSizeRoundForScale(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    a3 = 1.0;
  }

  return 1.0 / a3 * round(a1 * a3);
}

double CGSizeCeilForScale(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    a3 = 1.0;
  }

  return 1.0 / a3 * ceil(a1 * a3);
}

double CGFloatRoundForScale(double a1, double a2)
{
  if (a2 == 0.0)
  {
    a2 = 1.0;
  }

  return 1.0 / a2 * round(a2 * a1);
}

double CGFloatCeilForScale(double a1, double a2)
{
  if (a2 == 0.0)
  {
    a2 = 1.0;
  }

  return 1.0 / a2 * ceil(a2 * a1);
}

double CGSizeMakeEvenSize(double result)
{
  if (result)
  {
    return result + -1.0;
  }

  return result;
}

double CGSizeMin(double result, double a2, double a3, double a4)
{
  v4 = a3 > result;
  if (a4 > a2)
  {
    v4 = 1;
  }

  if (!v4)
  {
    return a3;
  }

  return result;
}

void CGRectEdgePointAtAngle(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  CGRectGetMidX(*&a1);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  v10 = __sincos_stret(a5);
  if (v10.__sinval <= 0.0001)
  {
    if (v10.__sinval < -0.0001)
    {
      v14.origin.x = a1;
      v14.origin.y = a2;
      v14.size.width = a3;
      v14.size.height = a4;
      CGRectGetMinY(v14);
      v15.origin.x = a1;
      v15.origin.y = a2;
      v15.size.width = a3;
      v15.size.height = a4;
      CGRectGetMinY(v15);
    }
  }

  else
  {
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetMaxY(v12);
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    CGRectGetMaxY(v13);
  }

  if (v10.__cosval <= 0.0001)
  {
    if (v10.__cosval < -0.0001)
    {
      v18.origin.x = a1;
      v18.origin.y = a2;
      v18.size.width = a3;
      v18.size.height = a4;
      CGRectGetMinX(v18);
      v19.origin.x = a1;
      v19.origin.y = a2;
      v19.size.width = a3;
      v19.size.height = a4;
      CGRectGetMinX(v19);
    }
  }

  else
  {
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMaxX(v16);
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    CGRectGetMaxX(v17);
  }
}

BOOL CGLinesIntersect(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = a5 - a3;
  v10 = a2 - a4;
  v11 = a9 - a7;
  v12 = a6 - a8;
  v13 = v9 * (a6 - a8) - v11 * (a2 - a4);
  v14 = fabs(v13);
  if (a1 && v14 >= 0.00000011920929)
  {
    v15 = a7 * v12 + v11 * a6;
    v16 = a3 * v10 + v9 * a2;
    *a1 = (v12 * v16 - v10 * v15) / v13;
    a1[1] = (v16 * -v11 + v9 * v15) / v13;
  }

  return v14 >= 0.00000011920929;
}

BOOL SegmentCanContainPoint(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a1 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  if (a1 >= a3)
  {
    v7 = a1;
  }

  else
  {
    v7 = a3;
  }

  if (a2 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a2;
  }

  if (a2 >= a4)
  {
    v9 = a2;
  }

  else
  {
    v9 = a4;
  }

  v10 = vabdd_f64(a5, v6);
  if (a5 <= v6 && v10 >= 0.00000011920929)
  {
    return 0;
  }

  v12 = vabdd_f64(a5, v7);
  if (a5 >= v7 && v12 >= 0.00000011920929)
  {
    return 0;
  }

  v14 = vabdd_f64(a6, v8);
  if (a6 <= v8 && v14 >= 0.00000011920929)
  {
    return 0;
  }

  if (a6 >= v9)
  {
    return vabdd_f64(a6, v9) < 0.00000011920929;
  }

  return 1;
}

BOOL CGLineSegmentsIntersect(_OWORD *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v23 = 0uLL;
  result = CGLinesIntersect(&v23, a2, a3, a4, a5, a6, a7, a8, a9);
  if (result)
  {
    v19 = a4;
    v20 = *(&v23 + 1);
    v21 = a5;
    v22 = *&v23;
    result = SegmentCanContainPoint(a2, a3, v19, v21, *&v23, *(&v23 + 1));
    if (result)
    {
      result = SegmentCanContainPoint(a6, a7, a8, a9, v22, v20);
      if (a1)
      {
        if (result)
        {
          *a1 = v23;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t CGRectIntersectsLineSegment(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9)
{
  v45 = *MEMORY[0x277D85DE8];
  v42 = 0uLL;
  MinX = CGRectGetMinX(*&a2);
  v46.origin.x = a2;
  v46.origin.y = a3;
  v46.size.width = a4;
  v46.size.height = a5;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = a4;
  v47.size.height = a5;
  MaxX = CGRectGetMaxX(v47);
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  v18 = CGRectGetMinY(v48);
  v19 = CGLineSegmentsIntersect(&v42, MinX, MinY, MaxX, v18, a6, a7, a8, a9);
  v20 = &v43;
  if (v19)
  {
    v43 = v42;
    v21 = 1;
    v20 = &v44;
  }

  else
  {
    v21 = 0;
  }

  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  v22 = CGRectGetMaxX(v49);
  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = a4;
  v50.size.height = a5;
  v23 = CGRectGetMinY(v50);
  v51.origin.x = a2;
  v51.origin.y = a3;
  v51.size.width = a4;
  v51.size.height = a5;
  v24 = CGRectGetMaxX(v51);
  v52.origin.x = a2;
  v52.origin.y = a3;
  v52.size.width = a4;
  v52.size.height = a5;
  MaxY = CGRectGetMaxY(v52);
  if (CGLineSegmentsIntersect(&v42, v22, v23, v24, MaxY, a6, a7, a8, a9))
  {
    if (v19)
    {
      v26 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3F847AE140000000uLL), vabdq_f64(v42, *a1)));
      if ((v26.i32[0] & v26.i32[1] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v20 = v42;
    }

    v21 = 1;
  }

  v53.origin.x = a2;
  v53.origin.y = a3;
  v53.size.width = a4;
  v53.size.height = a5;
  v27 = CGRectGetMinX(v53);
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  v28 = CGRectGetMaxY(v54);
  v55.origin.x = a2;
  v55.origin.y = a3;
  v55.size.width = a4;
  v55.size.height = a5;
  v29 = CGRectGetMaxX(v55);
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  v30 = CGRectGetMaxY(v56);
  if (CGLineSegmentsIntersect(&v42, v27, v28, v29, v30, a6, a7, a8, a9))
  {
    if (v21)
    {
      v31 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3F847AE140000000uLL), vabdq_f64(v42, *a1)));
      if ((v31.i32[0] & v31.i32[1] & 1) == 0)
      {
        v20 = &v43 + v21;
LABEL_14:
        v21 = 2;
LABEL_22:
        *v20 = v42;
        goto LABEL_23;
      }
    }

    else
    {
      v43 = v42;
    }

    v21 = 1;
  }

  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  v32 = CGRectGetMinX(v57);
  v58.origin.x = a2;
  v58.origin.y = a3;
  v58.size.width = a4;
  v58.size.height = a5;
  v33 = CGRectGetMinY(v58);
  v59.origin.x = a2;
  v59.origin.y = a3;
  v59.size.width = a4;
  v59.size.height = a5;
  v34 = CGRectGetMinX(v59);
  v60.origin.x = a2;
  v60.origin.y = a3;
  v60.size.width = a4;
  v60.size.height = a5;
  v35 = CGRectGetMaxY(v60);
  if (CGLineSegmentsIntersect(&v42, v32, v33, v34, v35, a6, a7, a8, a9))
  {
    if (!v21 || (v36 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3F847AE140000000uLL), vabdq_f64(v42, *a1))), (v36.i32[0] & v36.i32[1] & 1) == 0))
    {
      v20 = &v43 + v21++;
      goto LABEL_22;
    }

    v21 = 1;
  }

LABEL_23:
  if (a1 && v21)
  {
    v37 = v44;
    *a1 = v43;
    *(a1 + 16) = v37;
  }

  return v21;
}

void sub_241DB2A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DB2A24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DB2A3C(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_8:
      v9();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      goto LABEL_9;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(v8, data2);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = concat;
    }

    if (a2)
    {
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_8;
    }
  }

LABEL_9:
}

uint64_t sub_241DB2BF4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v7 = objc_msgSend_readToBuffer_size_(v5, v6, a2, a3);

  return v7;
}

uint64_t sub_241DB2D74(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = objc_msgSend_offset(v3, v4, v5);
  objc_msgSend_seekToOffset_(v3, v7, v6 + a2);
  v10 = objc_msgSend_offset(v3, v8, v9) - v6;

  return v10;
}

void sub_241DB2F00(void *a1)
{
  v2 = a1;
  objc_msgSend_seekToOffset_(v2, v1, 0);
}

void sub_241DB30A4(void *a1)
{
  v3 = a1;
  objc_msgSend_close(v3, v1, v2);
  CFRelease(v3);
}

double BUFractionalPart(double a1)
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

double BUClamp(double a1, double a2, double a3)
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

id sub_241DB3950(void *a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_mutableCopy(a1, a2, a3);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v21, v25, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(v5, v8, v12, v21);
        v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15);

        if (v13 == v16)
        {
          objc_msgSend_removeObjectForKey_(v4, v8, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v21, v25, 16);
    }

    while (v9);
  }

  v19 = objc_msgSend_copy(v4, v17, v18);

  return v19;
}

id sub_241DB3AB8(uint64_t a1, const char *a2, void *a3)
{
  v4 = objc_msgSend_bu_arrayByRemovingNSNulls(a3, a2, a3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241DB3B60;
  v8[3] = &unk_278D1D218;
  v8[4] = a1;
  v6 = objc_msgSend_bu_arrayByInvokingBlock_(v4, v5, v8);

  return v6;
}

id sub_241DB3B60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = BUDynamicCast(v4, v3);
  v8 = v5;
  v9 = v3;
  if (v5)
  {
    v9 = objc_msgSend_bu_dictionaryByRecursivelyRemovingNSNulls(v5, v6, v7);
  }

  v10 = objc_opt_class();
  v12 = BUDynamicCast(v10, v3);
  if (v12)
  {
    v13 = objc_msgSend__bu_arrayByRecursivelyRemovingNSNulls_(*(a1 + 32), v11, v12);

    v9 = v13;
  }

  return v9;
}

id sub_241DB3C30(uint64_t a1, const char *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_copy(a3, a2, a3);
  if (v4)
  {
    v5 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v3, v4);
    v7 = v4;
    if (v5)
    {
      v8 = objc_msgSend_scheme(v5, v3, v6);
      v11 = objc_msgSend_length(v8, v9, v10);

      if (v11)
      {
        v13 = objc_msgSend_lastPathComponent(v5, v3, v12);
        v16 = objc_msgSend_host(v5, v14, v15);
        v19 = objc_msgSend_resourceSpecifier(v5, v17, v18);
        if (objc_msgSend_length(v13, v20, v21) && (objc_msgSend_isEqualToString_(v13, v22, @"/") & 1) == 0)
        {
          objc_msgSend_stringByDeletingPathExtension(v13, v22, v23);
        }

        else if (objc_msgSend_length(v16, v22, v23))
        {
          objc_msgSend_stringByDeletingPathExtension(v16, v24, v25);
        }

        else
        {
          if (!objc_msgSend_length(v19, v24, v25))
          {
            v66 = BookUtilityLog();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v67 = 138412290;
              v68 = v5;
              _os_log_impl(&dword_241DA6000, v66, OS_LOG_TYPE_DEFAULT, "Failed to generate fileNameCandidate from URL: %@ ", &v67, 0xCu);
            }

            goto LABEL_13;
          }

          objc_msgSend_stringByDeletingPathExtension(v19, v26, v27);
        }
        v28 = ;

        v7 = v28;
LABEL_13:
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v29 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCAB50], v3, @"/");
  v32 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v30, v31);
  objc_msgSend_formUnionWithCharacterSet_(v29, v33, v32);

  v36 = objc_msgSend_illegalCharacterSet(MEMORY[0x277CCA900], v34, v35);
  objc_msgSend_formUnionWithCharacterSet_(v29, v37, v36);

  v40 = objc_msgSend_controlCharacterSet(MEMORY[0x277CCA900], v38, v39);
  objc_msgSend_formUnionWithCharacterSet_(v29, v41, v40);

  v43 = objc_msgSend_componentsSeparatedByCharactersInSet_(v7, v42, v29);
  v45 = objc_msgSend_componentsJoinedByString_(v43, v44, &stru_2853F3C08);

  if (objc_msgSend_hasPrefix_(v45, v46, @".") && objc_msgSend_length(v45, v47, v48) >= 2)
  {
    v49 = objc_msgSend_substringFromIndex_(v45, v47, 1);

    v45 = v49;
  }

  if (v45 && objc_msgSend_length(v45, v47, v48) && (objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v47, @"."), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend_componentsSeparatedByCharactersInSet_(v45, v51, v50), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend_componentsJoinedByString_(v52, v53, &stru_2853F3C08), v54 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend_length(v54, v55, v56), v54, v52, v50, v57))
  {
    v58 = v45;
  }

  else
  {
    v59 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v47, v48);
    v62 = objc_msgSend_UUIDString(v59, v60, v61);
    v58 = objc_msgSend_stringByAppendingString_(@"Book-", v63, v62);
  }

  v64 = v58;

  return v58;
}

id sub_241DB3FAC()
{
  if (qword_280BC5DE0 != -1)
  {
    sub_241DCFA70();
  }

  v1 = qword_280BC5DE8;

  return v1;
}

void sub_241DB3FF0()
{
  v0 = _CFCopyServerVersionDictionary();
  if (!v0)
  {
    v0 = _CFCopySystemVersionDictionary();
  }

  v4 = v0;
  v2 = objc_msgSend_objectForKeyedSubscript_(v0, v1, *MEMORY[0x277CBEC70]);
  v3 = qword_280BC5DE8;
  qword_280BC5DE8 = v2;
}

id sub_241DB4054()
{
  if (qword_27EC729A0 != -1)
  {
    sub_241DCFA84();
  }

  v1 = qword_27EC72998;

  return v1;
}

void sub_241DB4098()
{
  v0 = _CFCopyServerVersionDictionary();
  if (!v0)
  {
    v0 = _CFCopySystemVersionDictionary();
  }

  v4 = v0;
  v2 = objc_msgSend_objectForKeyedSubscript_(v0, v1, *MEMORY[0x277CBEC88]);
  v3 = qword_27EC72998;
  qword_27EC72998 = v2;
}

id sub_241DB40FC()
{
  if (qword_27EC729B0 != -1)
  {
    sub_241DCFA98();
  }

  v1 = qword_27EC729A8;

  return v1;
}

void sub_241DB4140()
{
  v0 = _CFCopyServerVersionDictionary();
  if (!v0)
  {
    v0 = _CFCopySystemVersionDictionary();
  }

  v4 = v0;
  v2 = objc_msgSend_objectForKeyedSubscript_(v0, v1, *MEMORY[0x277CBEC78]);
  v3 = qword_27EC729A8;
  qword_27EC729A8 = v2;
}

uint64_t sub_241DB41A4(uint64_t a1, const char *a2)
{
  v9 = 0;
  v2 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], a2, a1);
  v4 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v3, @"#");
  objc_msgSend_setCharactersToBeSkipped_(v2, v5, v4);

  objc_msgSend_scanHexInt_(v2, v6, &v9);
  v7 = v9;

  return v7;
}

id sub_241DB43B8(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc(MEMORY[0x277CBEB38]);
  v15 = objc_msgSend_initWithCapacity_(v13, v14, 2);
  v17 = v15;
  if (v11)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v16, v11, *MEMORY[0x277CCA450]);
  }

  if (v12)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v17, v16, v12, *MEMORY[0x277CCA498]);
  }

  v18 = objc_msgSend_errorWithDomain_code_userInfo_(a1, v16, v10, a4, v17);

  return v18;
}

id sub_241DB44B8(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc(MEMORY[0x277CBEB38]);
  v19 = objc_msgSend_count(v15, v17, v18);
  v21 = objc_msgSend_initWithCapacity_(v16, v20, v19 + 4);
  v23 = v21;
  if (v15)
  {
    objc_msgSend_addEntriesFromDictionary_(v21, v22, v15);
  }

  if (v13)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v23, v22, v13, *MEMORY[0x277CCA450]);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v24, v13, @"BULocalizedErrorAlertTitle");
  }

  if (v14)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v23, v22, v14, *MEMORY[0x277CCA498]);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v25, v14, @"BULocalizedErrorAlertMessage");
    objc_msgSend_setObject_forKeyedSubscript_(v23, v26, v14, *MEMORY[0x277CCA470]);
  }

  v27 = objc_msgSend_errorWithDomain_code_userInfo_(a1, v22, v12, a4, v23);

  return v27;
}

id sub_241DB4614(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a6;
  v12 = MEMORY[0x277CBEB38];
  v13 = a5;
  v14 = [v12 alloc];
  v16 = objc_msgSend_initWithCapacity_(v14, v15, 2);
  objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v13, *MEMORY[0x277CCA450]);

  if (v11)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v16, v18, v11, *MEMORY[0x277CCA7E8]);
  }

  v19 = objc_msgSend_errorWithDomain_code_userInfo_(a1, v18, v10, a4, v16);

  return v19;
}

id sub_241DB46FC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a6;
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v13 = a3;
    v16 = objc_msgSend_userInfo(v13, v14, v15);
    v17 = objc_alloc(MEMORY[0x277CBEB38]);
    v20 = objc_msgSend_count(v16, v18, v19);
    v23 = objc_msgSend_count(v10, v21, v22);
    v25 = objc_msgSend_initWithCapacity_(v17, v24, v20 + v23 + 1);
    v27 = v25;
    if (v16)
    {
      objc_msgSend_addEntriesFromDictionary_(v25, v26, v16);
    }

    if (v10)
    {
      objc_msgSend_addEntriesFromDictionary_(v27, v26, v10);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v27, v26, v13, *MEMORY[0x277CCA7E8]);
    v30 = objc_msgSend_domain(v13, v28, v29);
    v33 = objc_msgSend_code(v13, v31, v32);

    v35 = objc_msgSend_bu_errorWithDomain_code_alertTitle_alertMessage_userInfo_(a1, v34, v30, v33, v12, v11, v27);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

id sub_241DB4860(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = *MEMORY[0x277CCA450];
  v8 = objc_msgSend_objectForKeyedSubscript_(v4, v6, *MEMORY[0x277CCA450]);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(v4, v7, @"BULocalizedErrorAlertTitle");
  v11 = v9;
  if (!v9 || objc_msgSend_isEqualToString_(v9, v10, v8))
  {

LABEL_5:
    v14 = a1;
    goto LABEL_6;
  }

  v16 = objc_msgSend_mutableCopy(v4, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v11, v5);
  v18 = objc_opt_class();
  v21 = objc_msgSend_domain(a1, v19, v20);
  v24 = objc_msgSend_code(a1, v22, v23);
  v14 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v25, v21, v24, v16);

LABEL_6:

  return v14;
}

id sub_241DB4980(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (objc_msgSend_bu_isCancelError(v1, v2, v3))
  {
    if (objc_msgSend_code(v1, v4, v5) == 3072)
    {
      v8 = objc_msgSend_domain(v1, v6, v7);
      v9 = *MEMORY[0x277CCA050];
      isEqualToString = objc_msgSend_isEqualToString_(v8, v10, *MEMORY[0x277CCA050]);

      if (isEqualToString)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = *MEMORY[0x277CCA050];
    }

    v12 = objc_opt_class();
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v1;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v19, &v18, 1);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v12, v15, v9, 3072, v14);

    v1 = v16;
  }

LABEL_7:

  return v1;
}

id sub_241DB4AB0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"BULocalizedErrorAlertTitle");
  v7 = v5;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v3, v6, *MEMORY[0x277CCA450]);
  }

  v9 = v8;

  return v9;
}

id sub_241DB4B38(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"BULocalizedErrorAlertMessage");
  v7 = v5;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v3, v6, *MEMORY[0x277CCA498]);
  }

  v9 = v8;

  return v9;
}

uint64_t sub_241DB4BCC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = a4;
  if (a3 == 2)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"com.apple.iBooks.BookUtility");
  }

  else
  {
    if (a3 == 28)
    {
      v9 = MEMORY[0x277CCA5B8];
    }

    else
    {
      if (a3 != 640)
      {
        v11 = 0;
        goto LABEL_10;
      }

      v9 = MEMORY[0x277CCA050];
    }

    isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *v9);
  }

  v11 = isEqualToString;
LABEL_10:

  return v11;
}

uint64_t sub_241DB4C70(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = a4;
  if (a3 == -999)
  {
    v9 = MEMORY[0x277CCA738];
  }

  else
  {
    if (a3 != 3072)
    {
      isEqualToString = 0;
      goto LABEL_7;
    }

    v9 = MEMORY[0x277CCA050];
  }

  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *v9);
LABEL_7:

  return isEqualToString;
}

uint64_t sub_241DB4D00(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = a4;
  if (a3 == 2)
  {
    v9 = MEMORY[0x277CCA5B8];
  }

  else
  {
    if (a3 != 260 && a3 != 4)
    {
      isEqualToString = 0;
      goto LABEL_8;
    }

    v9 = MEMORY[0x277CCA050];
  }

  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *v9);
LABEL_8:

  return isEqualToString;
}

uint64_t sub_241DB4D98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = a4;
  if (a3 == 516)
  {
    v9 = MEMORY[0x277CCA050];
  }

  else
  {
    if (a3 != 17)
    {
      isEqualToString = 0;
      goto LABEL_7;
    }

    v9 = MEMORY[0x277CCA5B8];
  }

  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *v9);
LABEL_7:

  return isEqualToString;
}

uint64_t sub_241DB4E28(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = a4;
  v9 = 0;
  if (a3 <= 512)
  {
    if (a3 != 1)
    {
      if (a3 != 257)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    if (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CCA5B8]))
    {
LABEL_12:
      v9 = 1;
      goto LABEL_14;
    }

    isEqualToString = objc_msgSend_isEqualToString_(v6, v10, @"NSFileProviderInternalErrorDomain");
LABEL_11:
    if ((isEqualToString & 1) == 0)
    {
      v9 = 0;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a3 == 513)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CCA050]);
    goto LABEL_11;
  }

  if (a3 == 5124)
  {
LABEL_7:
    v9 = objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CCA050]);
  }

LABEL_14:

  return v9;
}

void sub_241DB4F08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v7 = objc_msgSend_initWithObjects_(v5, v6, a1, 0);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v34 = 0;
    if (objc_msgSend_count(v7, v9, v10))
    {
      do
      {
        v13 = objc_msgSend_firstObject(v7, v11, v12);
        objc_msgSend_removeObjectAtIndex_(v7, v14, 0);
        v17 = objc_msgSend_userInfo(v13, v15, v16);
        if ((objc_msgSend_containsObject_(v8, v18, v13) & 1) == 0)
        {
          objc_msgSend_addObject_(v8, v19, v13);
          v22 = objc_msgSend_domain(v13, v20, v21);
          v25 = objc_msgSend_code(v13, v23, v24);
          v4[2](v4, v22, v25, v17, &v34);

          if ((v34 & 1) == 0)
          {
            v28 = objc_msgSend_underlyingErrors(v13, v26, v27);
            if (objc_msgSend_count(v28, v29, v30))
            {
              objc_msgSend_addObjectsFromArray_(v7, v31, v28);
            }
          }
        }
      }

      while (objc_msgSend_count(v7, v32, v33) && (v34 & 1) == 0);
    }
  }
}

uint64_t sub_241DB506C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_241DB515C;
    v9[3] = &unk_278D1D258;
    v10 = v4;
    v11 = &v12;
    objc_msgSend_bu_enumerateErrorUsingBlock_(a1, v6, v9);

    v7 = *(v13 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7 & 1;
}

void sub_241DB5144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DB515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

uint64_t sub_241DB56F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v2 = (a1 + 32);
  v4 = (*(*(a1 + 40) + 16))();
  v9 = 0;
  v6 = objc_msgSend_dataWithTitle_propertyList_error_(BUOSStateDataSerialization, v5, v3, v4, &v9);
  v7 = v9;

  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_241DCFAAC(v2, v7);
  }

  return v6;
}

void sub_241DB5AE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pathMonitor(*(a1 + 32), a2, a3);

  if (!v4)
  {
    v5 = nw_path_monitor_create();
    objc_msgSend_setPathMonitor_(*(a1 + 32), v6, v5);

    v9 = objc_msgSend_pathMonitor(*(a1 + 32), v7, v8);
    v12 = objc_msgSend_monitorQueue(*(a1 + 32), v10, v11);
    nw_path_monitor_set_queue(v9, v12);

    objc_initWeak(&location, *(a1 + 32));
    v15 = objc_msgSend_pathMonitor(*(a1 + 32), v13, v14);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = sub_241DB5CF8;
    v27 = &unk_278D1D2D8;
    objc_copyWeak(&v28, &location);
    nw_path_monitor_set_update_handler(v15, &v24);

    v18 = objc_msgSend_pathMonitor(*(a1 + 32), v16, v17, v24, v25, v26, v27);
    nw_path_monitor_start(v18);

    v19 = BookUtilityLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_msgSend_monitorQueue(*(a1 + 32), v20, v21);
      label = dispatch_queue_get_label(v22);
      *buf = 136315138;
      v31 = label;
      _os_log_impl(&dword_241DA6000, v19, OS_LOG_TYPE_DEFAULT, "Started monitoring network in queue: %s", buf, 0xCu);
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void sub_241DB5CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241DB5CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_setCurrentPath_(WeakRetained, v4, v3);
}

void sub_241DB5DC8(uint64_t a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pathMonitor(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_pathMonitor(*(a1 + 32), v5, v6);
    nw_path_monitor_cancel(v7);

    objc_msgSend_setPathMonitor_(*(a1 + 32), v8, 0);
    v9 = BookUtilityLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_msgSend_monitorQueue(*(a1 + 32), v10, v11);
      v13 = 136315138;
      label = dispatch_queue_get_label(v12);
      _os_log_impl(&dword_241DA6000, v9, OS_LOG_TYPE_DEFAULT, "Stopped monitoring network in queue: %s", &v13, 0xCu);
    }
  }
}

uint64_t sub_241DB5EF8()
{
  result = MGGetBoolAnswer();
  byte_27EC729B8 = result;
  return result;
}

uint64_t sub_241DB5F58()
{
  result = MGGetBoolAnswer();
  byte_27EC729C8 = result;
  return result;
}

void sub_241DB61EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BUCoalescingCallBlockLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_241DCFBEC(v2, v3);
  }
}

void sub_241DB65C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_group(*(a1 + 32), a2, a3);
  dispatch_group_enter(v4);

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v7 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v5, v6);
  v10 = objc_msgSend_UUIDString(v7, v8, v9);

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_241DB68B4;
  v38[3] = &unk_278D1D348;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v39 = v11;
  v40 = v12;
  v42 = v43;
  v13 = v10;
  v41 = v13;
  v14 = MEMORY[0x245D00360](v38);
  v19 = objc_msgSend_notifyTimeoutBlock(*(a1 + 32), v15, v16);
  if (v19)
  {
    v20 = objc_msgSend_notifyTimeoutDurationSeconds(*(a1 + 32), v17, v18) == 0;

    if (!v20)
    {
      v23 = objc_msgSend_notifyTimeoutDurationSeconds(*(a1 + 32), v21, v22);
      v24 = dispatch_time(0, 1000000000 * v23);
      v27 = objc_msgSend_sync(*(a1 + 32), v25, v26);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_241DB6B60;
      block[3] = &unk_278D1D320;
      block[4] = *(a1 + 32);
      v37 = v43;
      v36 = v13;
      dispatch_after(v24, v27, block);
    }
  }

  v28 = BUCoalescingCallBlockLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v31 = objc_msgSend_notifyBlockDescription(*(a1 + 32), v29, v30);
    *buf = 138543618;
    v46 = v31;
    v47 = 2114;
    v48 = v13;
    _os_log_impl(&dword_241DA6000, v28, OS_LOG_TYPE_INFO, "Invoking notify block '%{public}@' (%{public}@)", buf, 0x16u);
  }

  v34 = objc_msgSend_notifyBlock(*(a1 + 32), v32, v33);
  (v34)[2](v34, v14);

  _Block_object_dispose(v43, 8);
}

void sub_241DB6888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DB68B4(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v19, v23, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v19 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v8, &v19, v23, 16);
    }

    while (v5);
  }

  v11 = objc_msgSend_sync(*(a1 + 40), v9, v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB6A50;
  block[3] = &unk_278D1D320;
  block[4] = *(a1 + 40);
  v16 = *(a1 + 48);
  v12 = v16;
  v18 = v16;
  dispatch_async(v11, block);

  v15 = objc_msgSend_group(*(a1 + 40), v13, v14);
  dispatch_group_leave(v15);
}

uint64_t sub_241DB6A50(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  objc_msgSend_setInvoking_(*(a1 + 32), a2, 0);
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v3 = BUCoalescingCallBlockLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = objc_msgSend_notifyBlockDescription(*(a1 + 32), v4, v5);
    v7 = *(a1 + 40);
    v15 = 138543618;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&dword_241DA6000, v3, OS_LOG_TYPE_INFO, "Notify block '%{public}@' called completion (%{public}@)", &v15, 0x16u);
  }

  result = objc_msgSend_pending(*(a1 + 32), v8, v9);
  if (result)
  {
    result = objc_msgSend_nextCoalescingTime(*(a1 + 32), v11, v12);
    if (result == -1)
    {
      return objc_msgSend__invoke(*(a1 + 32), v13, v14);
    }
  }

  return result;
}

void sub_241DB6B60(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = BUCoalescingCallBlockLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = objc_msgSend_notifyBlockDescription(*(a1 + 32), v3, v4);
    v6 = v5;
    v7 = *(a1 + 40);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v8 = @"was";
    }

    else
    {
      v8 = @"wasn't";
    }

    *buf = 138543874;
    v19 = v5;
    v20 = 2112;
    v21 = v8;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_241DA6000, v2, OS_LOG_TYPE_INFO, "Notify block '%{public}@' completion timeout fired. Completion %@ called. (%{public}@)", buf, 0x20u);
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v13 = objc_msgSend_notifyTimeoutBlock(*(a1 + 32), v9, v10);
    if (v13)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = objc_msgSend_notifyBlockDescription(*(a1 + 32), v11, v12);
      v17 = objc_msgSend_stringWithFormat_(v14, v16, @"'%@' (%@)", v15, *(a1 + 40));
      (v13)[2](v13, v17);
    }
  }
}

void sub_241DB6EEC(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_coalescingDelay(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  if (v7 <= 0.0)
  {
    if (v6)
    {
      v35 = objc_msgSend_callbacks(*(a1 + 32), v4, v5);

      if (!v35)
      {
        v38 = objc_opt_new();
        objc_msgSend_setCallbacks_(*(a1 + 32), v39, v38);
      }

      v40 = objc_msgSend_callbacks(*(a1 + 32), v36, v37);
      v41 = MEMORY[0x245D00360](*(a1 + 40));
      objc_msgSend_addObject_(v40, v42, v41);
    }

    objc_msgSend_setPending_(*(a1 + 32), v4, 1);
    v45 = *(a1 + 32);

    objc_msgSend__invokeIfNotInProgress(v45, v43, v44);
  }

  else
  {
    if (v6)
    {
      v8 = objc_msgSend_callbacks(*(a1 + 32), v4, v5);

      if (!v8)
      {
        v11 = objc_opt_new();
        objc_msgSend_setCallbacks_(*(a1 + 32), v12, v11);
      }

      v13 = objc_msgSend_callbacks(*(a1 + 32), v9, v10);
      v14 = MEMORY[0x245D00360](*(a1 + 40));
      objc_msgSend_addObject_(v13, v15, v14);
    }

    objc_msgSend_setPending_(*(a1 + 32), v4, 1);
    objc_msgSend_coalescingDelay(*(a1 + 32), v16, v17);
    if (v20 > 0.0)
    {
      objc_msgSend_maximumDelay(*(a1 + 32), v18, v19);
      if (v21 > 0.0 && objc_msgSend_nextMaxTime(*(a1 + 32), v18, v19) == -1)
      {
        objc_msgSend_maximumDelay(*(a1 + 32), v18, v19);
        v23 = dispatch_time(0, (v22 * 1000000000.0));
        objc_msgSend_setNextMaxTime_(*(a1 + 32), v24, v23);
        MaxTime = objc_msgSend_nextMaxTime(*(a1 + 32), v25, v26);
        v30 = objc_msgSend_sync(*(a1 + 32), v28, v29);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_241DB71FC;
        block[3] = &unk_278D1D030;
        block[4] = *(a1 + 32);
        block[5] = v23;
        dispatch_after(MaxTime, v30, block);
      }
    }

    objc_msgSend_coalescingDelay(*(a1 + 32), v18, v19);
    v33 = *(a1 + 32);
    if (v34 == 0.0)
    {
      objc_msgSend__invokeIfNotInProgress(v33, v31, v32);
    }

    else
    {
      objc_msgSend_coalescingDelay(v33, v31, v32);
      v47 = dispatch_time(0, (v46 * 1000000000.0));
      CoalescingTime = objc_msgSend_nextCoalescingTime(*(a1 + 32), v48, v49);
      objc_msgSend_setNextCoalescingTime_(*(a1 + 32), v51, v47);
      if (CoalescingTime == -1)
      {
        v54 = objc_msgSend_nextCoalescingTime(*(a1 + 32), v52, v53);
        v57 = objc_msgSend_sync(*(a1 + 32), v55, v56);
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = sub_241DB7208;
        v58[3] = &unk_278D1D030;
        v58[4] = *(a1 + 32);
        v58[5] = v47;
        dispatch_after(v54, v57, v58);
      }
    }
  }
}

uint64_t sub_241DB7364(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_280BC5E88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_241DB73FC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_280BC5DD8;
  v7 = qword_280BC5DD8;
  if (!qword_280BC5DD8)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_241DB74DC;
    v3[3] = &unk_278D1CE28;
    v3[4] = &v4;
    sub_241DB74DC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_241DB74C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_241DB74DC(uint64_t a1)
{
  sub_241DA88A8();
  result = objc_getClass("CKContainer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_280BC5DD8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_241DCFC74();
    return sub_241DB7534(v3);
  }

  return result;
}

void *sub_241DB7534(uint64_t a1)
{
  v2 = sub_241DA88A8();
  result = dlsym(v2, "CKAccountChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_280BC5E80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_241DB78F4()
{
  v0 = NSTemporaryDirectory();
  v9 = objc_msgSend_stringByAppendingPathComponent_(v0, v1, @"BUUnitTest");

  v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v2, v3);
  objc_msgSend_removeItemAtPath_error_(v4, v5, v9, 0);

  v7 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v6, v9);
  v8 = qword_27EC729E0;
  qword_27EC729E0 = v7;
}

void sub_241DB7FE8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0);
  }

  else
  {
    v5 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], a2, 0);
    (*(v2 + 16))(v2, 0, v5);
  }
}

void sub_241DB82B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DB82D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DB82F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_241DB8D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_241DB8D60(uint64_t a1, const char *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_temporaryDirectoryURL(*(a1 + 32), a2, a3);

  if (v4)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v7 = objc_msgSend_fdWrapper(*(a1 + 32), v5, v6);
    v8 = objc_autoreleasePoolPush();
    objc_msgSend_createTemporaryDirectoryRelativeToURL_(*(a1 + 32), v9, *(a1 + 40));
    v12 = objc_msgSend_temporaryDirectoryURL(*(a1 + 32), v10, v11);
    v14 = objc_msgSend_URLByAppendingPathComponent_(v12, v13, @"Temp.zip");

    if (v14)
    {
      v15 = [BUFileIOChannel alloc];
      v16 = *(*(a1 + 48) + 8);
      obj = *(v16 + 40);
      v18 = objc_msgSend_initForStreamWritingURL_error_(v15, v17, v14, &obj);
      objc_storeStrong((v16 + 40), obj);
    }

    else
    {
      v18 = 0;
    }

    *(*(*(a1 + 56) + 8) + 24) = v18 != 0;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v58 = 0;
      v59 = &v58;
      v60 = 0x3032000000;
      v61 = sub_241DB82D8;
      v62 = sub_241DB82E8;
      v63 = 0;
      v19 = dispatch_group_create();
      dispatch_group_enter(v19);
      v22 = objc_msgSend_readChannel(v7, v20, v21);
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_241DB91CC;
      v54[3] = &unk_278D1D438;
      v57 = &v58;
      v23 = v19;
      v55 = v23;
      v24 = v18;
      v56 = v24;
      objc_msgSend_readFromOffset_length_handler_(v22, v25, 0, -1, v54);

      dispatch_group_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
      objc_msgSend_close(v24, v26, v27);

      v28 = v59;
      *(*(*(a1 + 56) + 8) + 24) = v59[5] == 0;
      if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v28[5]);
        v29 = BUZipLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_msgSend_path(*(a1 + 40), v30, v31);
          v45 = objc_msgSend_path(v14, v43, v44);
          v48 = objc_msgSend_code(v59[5], v46, v47);
          v51 = objc_msgSend_domain(v59[5], v49, v50);
          v52 = v59[5];
          *buf = 138413314;
          v66 = v42;
          v67 = 2112;
          v68 = v45;
          v69 = 2048;
          v70 = v48;
          v71 = 2114;
          v72 = v51;
          v73 = 2112;
          v74 = v52;
          _os_log_error_impl(&dword_241DA6000, v29, OS_LOG_TYPE_ERROR, "Failed to copy zip file from %@ to %@ with error: %zd %{public}@ %@", buf, 0x34u);
        }
      }

      _Block_object_dispose(&v58, 8);
      v18 = 0;
    }

    else
    {
      v34 = BUZipLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_241DD00EC(v14, v34, v35);
      }
    }

    v36 = *(*(a1 + 56) + 8);
    if (*(v36 + 24) == 1)
    {
      v37 = *(a1 + 32);
      v38 = *(*(a1 + 48) + 8);
      v53 = *(v38 + 40);
      v39 = objc_msgSend_reopenWithTemporaryURL_error_(v37, v32, v14, &v53);
      objc_storeStrong((v38 + 40), v53);
      v36 = *(*(a1 + 56) + 8);
    }

    else
    {
      v39 = 0;
    }

    *(v36 + 24) = v39;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_removeTemporaryDirectory(*(a1 + 32), v32, v33);
    }

    objc_autoreleasePoolPop(v8);
    objc_msgSend_waitForAccessToEnd(v7, v40, v41);
  }
}

void sub_241DB91A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DB91CC(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && !(v8 | *(*(*(a1 + 48) + 8) + 40)))
  {
    dispatch_group_enter(*(a1 + 32));
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_241DB92DC;
    v15[3] = &unk_278D1D410;
    v10 = *(a1 + 40);
    v17 = *(a1 + 48);
    v16 = *(a1 + 32);
    objc_msgSend_writeData_handler_(v10, v11, v7, v15);
  }

  if (a2)
  {
    if (v9)
    {
      v12 = *(*(a1 + 48) + 8);
      v14 = *(v12 + 40);
      v13 = (v12 + 40);
      if (!v14)
      {
        objc_storeStrong(v13, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_241DB92DC(uint64_t a1, int a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  v8 = v7;
  if (a2)
  {
    if (v7)
    {
      v9 = *(*(a1 + 40) + 8);
      v11 = *(v9 + 40);
      v10 = (v9 + 40);
      if (!v11)
      {
        objc_storeStrong(v10, a4);
      }
    }

    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_241DB9424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DB9540(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_fdWrapper(*(a1 + 32), a2, a3);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_fileDescriptor(v4, v5, v6);
    v9 = dup(v8);
    if ((v9 & 0x80000000) != 0)
    {
      v21 = BUZipLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_241DD0180();
      }
    }

    else
    {
      v12 = v9;
      objc_msgSend_beginAccess(v7, v10, v11);
      v13 = [BUFileIOChannel alloc];
      v16 = objc_msgSend_accessQueue(*(a1 + 32), v14, v15);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_241DB969C;
      v22[3] = &unk_278D1D488;
      v24 = v12;
      v23 = v7;
      v18 = objc_msgSend_initForReadingDescriptor_queue_cleanupHandler_(v13, v17, v12, v16, v22);
      v19 = *(*(a1 + 40) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = v23;
    }
  }

  else
  {
    v21 = BUZipLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_241DD020C(v21);
    }
  }
}

uint64_t sub_241DB969C(uint64_t a1)
{
  close(*(a1 + 40));
  v3 = *(a1 + 32);

  return MEMORY[0x2821F9670](v3, sel_endAccess, v2);
}

void sub_241DB978C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_fdWrapper(*(a1 + 32), a2, a3);
  if (v6)
  {
    v7 = objc_msgSend_fdWrapper(*(a1 + 32), v4, v5);
    v10 = objc_msgSend_fileDescriptor(v7, v8, v9);
  }

  else
  {
    v10 = -1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v10 >= 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v11 = 0;
    *(*(*(a1 + 40) + 8) + 24) = read(v10, &v11, 0) == 0;
  }
}

void sub_241DB9B34(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void BUCastStatsDump()
{
  NSLog(&cfstr_CastPerFile.isa);
  sub_241DB9BD0(v0, qword_27EC729E8);
  NSLog(&cfstr_CastPerCallsit.isa);
  sub_241DB9BD0(v1, qword_27EC729F8);
  NSLog(&cfstr_CastPerType.isa);
  sub_241DB9BD0(v2, qword_27EC729F0);
  NSLog(&cfstr_TotalCastsLu.isa, qword_27EC72A00);
}

void sub_241DB9BD0(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = objc_msgSend_allKeys(v2, v3, v4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_241DB9CEC;
  v13[3] = &unk_278D1D4B0;
  v6 = v2;
  v14 = v6;
  v8 = objc_msgSend_sortedArrayUsingComparator_(v5, v7, v13);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241DB9D78;
  v11[3] = &unk_278D1D4D8;
  v12 = v6;
  v9 = v6;
  objc_msgSend_enumerateObjectsUsingBlock_(v8, v10, v11);
}

uint64_t sub_241DB9CEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(v5, v7, a2);
  v11 = objc_msgSend_unsignedIntegerValue(v8, v9, v10);

  v13 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v12, v6);

  v16 = objc_msgSend_unsignedIntegerValue(v13, v14, v15);
  if (v11 < v16)
  {
    return -1;
  }

  else
  {
    return v11 > v16;
  }
}

void sub_241DB9D78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v8 = objc_msgSend_objectForKeyedSubscript_(v2, v4, v3);
  v7 = objc_msgSend_unsignedIntegerValue(v8, v5, v6);
  NSLog(&cfstr_8lu.isa, v7, v3);
}

void BUCastRecord(uint64_t a1, int a2, uint64_t a3)
{
  if (qword_27EC72A10 != -1)
  {
    sub_241DD0250();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB9ED4;
  block[3] = &unk_278D1D4F8;
  block[4] = a1;
  block[5] = a3;
  v7 = a2;
  dispatch_sync(qword_27EC72A08, block);
}

uint64_t sub_241DB9E94()
{
  qword_27EC72A08 = dispatch_queue_create("BookUtility.castStats", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_241DB9ED4(uint64_t a1, const char *a2)
{
  ++qword_27EC72A00;
  if (!qword_27EC729E8)
  {
    v3 = objc_opt_new();
    v4 = qword_27EC729E8;
    qword_27EC729E8 = v3;
  }

  if (!qword_27EC729F0)
  {
    v5 = objc_opt_new();
    v6 = qword_27EC729F0;
    qword_27EC729F0 = v5;
  }

  if (!qword_27EC729F8)
  {
    v7 = objc_opt_new();
    v8 = qword_27EC729F8;
    qword_27EC729F8 = v7;
  }

  v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, *(a1 + 32));
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, *(a1 + 40));
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s:%lu", *(a1 + 32), *(a1 + 48));
  v13 = MEMORY[0x277CCABB0];
  v15 = objc_msgSend_objectForKeyedSubscript_(qword_27EC729E8, v14, v40);
  v18 = objc_msgSend_unsignedIntegerValue(v15, v16, v17);
  v20 = objc_msgSend_numberWithUnsignedInteger_(v13, v19, v18 + 1);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27EC729E8, v21, v20, v40);

  v22 = MEMORY[0x277CCABB0];
  v24 = objc_msgSend_objectForKeyedSubscript_(qword_27EC729F0, v23, v10);
  v27 = objc_msgSend_unsignedIntegerValue(v24, v25, v26);
  v29 = objc_msgSend_numberWithUnsignedInteger_(v22, v28, v27 + 1);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27EC729F0, v30, v29, v10);

  v31 = MEMORY[0x277CCABB0];
  v33 = objc_msgSend_objectForKeyedSubscript_(qword_27EC729F8, v32, v12);
  v36 = objc_msgSend_unsignedIntegerValue(v33, v34, v35);
  v38 = objc_msgSend_numberWithUnsignedInteger_(v31, v37, v36 + 1);
  objc_msgSend_setObject_forKeyedSubscript_(qword_27EC729F8, v39, v38, v12);
}

id BUStaticCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id BUStaticProtocolCast(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v4 && objc_msgSend_conformsToProtocol_(v4, v5, v3))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id BUClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v15 = &a9;
    if (!a3)
    {
LABEL_6:
      v13 = v10;
      goto LABEL_8;
    }

    while (1)
    {
      v12 = v15++;
      if ((objc_msgSend_conformsToProtocol_(v10, v11, *v12) & 1) == 0)
      {
        break;
      }

      if (!--a3)
      {
        goto LABEL_6;
      }
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

id BUStaticClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = &a9;
    if (!a3)
    {
LABEL_6:
      v14 = v10;
      goto LABEL_9;
    }

    while (1)
    {
      v11 = v16++;
      v12 = *v11;
      if ((objc_msgSend_conformsToProtocol_(v10, v13, v12) & 1) == 0)
      {
        break;
      }

      if (!--a3)
      {
        goto LABEL_6;
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

CFTypeRef BUCFTypeCast(uint64_t a1, CFTypeRef cf)
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

void sub_241DBAE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241DBAE48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = MEMORY[0x245D00360](WeakRetained[21]);
    v3 = v2;
    if (v2)
    {
      (*(v2 + 16))(v2);
    }

    v4 = v5[21];
    v5[21] = 0;

    WeakRetained = v5;
  }
}

void sub_241DBB1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DBB218(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DBB238(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = MEMORY[0x245D00360](WeakRetained[21]);
    v3 = v2;
    if (v2)
    {
      (*(v2 + 16))(v2);
    }

    v4 = v5[21];
    v5[21] = 0;

    WeakRetained = v5;
  }
}

void sub_241DBB2BC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_241DBB584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DBB5A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  objc_msgSend_addObject_(v4, v6, v5);
  v9 = objc_msgSend_size(v5, v7, v8);

  *(*(*(a1 + 40) + 8) + 24) += v9;
}

uint64_t sub_241DBB604(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_offset(a2, v5, v6);
  v10 = objc_msgSend_offset(v4, v8, v9);

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

void sub_241DBB888(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = objc_msgSend_size(*(a1 + 40), a2, a3);
    v8 = objc_msgSend_completedUnitCount(v4, v6, v7);
    objc_msgSend_setCompletedUnitCount_(v4, v9, v8 + v5);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);

    objc_msgSend_copyRemainingEntries_fromArchive_progress_completionHandler_(v11, v10, v12, v14, v13, v15);
  }

  else
  {
    v16 = MEMORY[0x245D00360](*(a1 + 72));
    if (v16)
    {
      v19 = v16;
      v18 = objc_msgSend_bu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v17, 0);
      v19[2](v19, v18);

      v16 = v19;
    }
  }
}

uint64_t sub_241DBBA88(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (a2)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, v7 == 0);
    }
  }

  return MEMORY[0x2821F9730]();
}

void sub_241DBC1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a68, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DBC2A8(void *a1, uint64_t a2, NSObject *a3, void *a4, _BYTE *a5)
{
  v13 = a4;
  if (a3)
  {
    *(*(a1[5] + 8) + 24) += dispatch_data_get_size(a3);
  }

  v8 = (*(a1[4] + 16))();
  v9 = v13;
  if (!v13 && (*a5 & 1) != 0)
  {
    v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], 0, *MEMORY[0x277CCA050], 3072, 0);
    v9 = v8;
  }

  if (v9)
  {
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    v8 = (v10 + 40);
    if (!v11)
    {
      v14 = v9;
      objc_storeStrong(v8, v9);
      v9 = v14;
    }
  }

  return MEMORY[0x2821F96F8](v8, v9);
}

void sub_241DBC398(void *a1, uint64_t a2)
{
  v2 = a2;
  v7 = 0;
  v4 = a1[4];
  if (!a2)
  {
    v2 = *(*(a1[5] + 8) + 40);
  }

  (*(v4 + 16))(v4, 1, a1[6], a1[6], v2, &v7);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_241DBC5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DBC5F8(uint64_t a1, const char *a2, void *a3, _BYTE *a4)
{
  result = objc_msgSend_size(a3, a2, a3);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_241DBC908(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_userInfo(v6, v7, v8);
    v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"BUZipArchiveErrorDescription");
    v13 = v12;
    v14 = &stru_2853F3C08;
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v16 = BUZipLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_241DD04AC();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_241DBC9E8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_close(*(a1 + 32), v4, v5);
  if (v3)
  {
    v8 = 0;
  }

  else
  {
    if (objc_msgSend_options(*(a1 + 40), v6, v7))
    {
      objc_msgSend_collapseCommonRootDirectory(*(a1 + 40), v9, v10);
    }

    v8 = *(a1 + 40);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DBCAE4;
  block[3] = &unk_278D1D6F0;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v17 = v3;
  v18 = v12;
  v16 = v8;
  v13 = v3;
  v14 = v8;
  dispatch_async(v11, block);
}

void sub_241DBCAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v6 = *(a1 + 56);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_241DBCC08;
    v12[3] = &unk_278D1D740;
    v12[4] = v8;
    v13 = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v14 = v9;
    v15 = v10;
    objc_msgSend_readEndOfCentralDirectoryData_eocdOffset_channel_completion_(v8, v11, a2, v6, v13, v12);
  }
}

void sub_241DBCC08(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_msgSend_options(*(a1 + 32), v4, v5) & 4) != 0 && objc_msgSend_code(v3, v6, v7) == 259 && (objc_msgSend_domain(v3, v6, v8), v9 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v9, v10, *MEMORY[0x277CCA050]), v9, isEqualToString))
  {
    v13 = objc_msgSend_userInfo(v3, v6, v12);
    v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"BUZipArchiveErrorDescription");

    if (v15)
    {
      v16 = BUZipLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_241DD0530();
      }

      objc_msgSend_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion_(*(a1 + 32), v17, *(a1 + 40), 0, 0, 0, 0, *(a1 + 48));
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (!v3)
    {
      objc_msgSend_setEndOfLastEntry_(*(a1 + 32), v6, *(a1 + 56));
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_241DBCD3C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], a2, 0);
  (*(v2 + 16))(v2, 0, v3);
}

uint64_t sub_241DBD154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return MEMORY[0x2821F9670](*(a1 + 32), sel_readZip64EndOfCentralDirectoryLocatorData_channel_completion_, a2);
  }
}

uint64_t sub_241DBD44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return MEMORY[0x2821F9670](*(a1 + 32), sel_readZip64EndOfCentralDirectoryData_channel_completion_, a2);
  }
}

uint64_t sub_241DBD7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return MEMORY[0x2821F9670](*(a1 + 32), sel_readCentralDirectoryData_entryCount_completion_, a2);
  }
}

void sub_241DBE4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v6 = *(a1 + 64);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_241DBE620;
    v15[3] = &unk_278D1D7E0;
    v9 = *(a1 + 48);
    v19 = *(a1 + 76);
    v18 = *(a1 + 72);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v16 = v13;
    v17 = v12;
    objc_msgSend_readLocalFileHeaderData_atOffset_channel_completion_(v8, v14, a2, v6, v7, v15);
  }
}

void sub_241DBE620(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v10 = a3;
  if (v10)
  {
    v11 = *(*(a1 + 56) + 16);
LABEL_3:
    v11();
    goto LABEL_10;
  }

  if (!v7)
  {
    if (a4)
    {
LABEL_37:
      v11 = *(*(a1 + 56) + 16);
      goto LABEL_3;
    }

    v25 = *(a1 + 64);
    if (*(a1 + 68))
    {
      if (v25)
      {
LABEL_22:
        v30 = 1;
        v27 = 100;
        goto LABEL_23;
      }
    }

    else
    {
      v26 = objc_msgSend_compressedSize(*(a1 + 40), v8, v9);
      if (v26 >= 0x64)
      {
        v27 = 100;
      }

      else
      {
        v27 = v26;
      }

      if (v27 != v25)
      {
        if (!v25)
        {
          v41 = v26;
          v42 = BUZipLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_241DD0598(a1, v42, v43);
          }

          if (v41)
          {
            v31 = 1;
            goto LABEL_32;
          }

          goto LABEL_34;
        }

        v30 = 0;
LABEL_23:
        if (v27 > v25)
        {
          v31 = (v25 + 1);
          if (v30)
          {
            v32 = objc_msgSend_offset(*(a1 + 40), v8, v9);
            v35 = objc_msgSend_fileHeaderLength(*(a1 + 40), v33, v34);
            v39 = v32 + v31 + v35 + objc_msgSend_compressedSize(*(a1 + 40), v36, v37);
            v40 = 1;
LABEL_33:
            objc_msgSend_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion_(*(a1 + 32), v38, *(a1 + 48), v39, *(a1 + 40), v31, v40, *(a1 + 56));
            goto LABEL_10;
          }

LABEL_32:
          v44 = objc_msgSend_offset(*(a1 + 40), v8, v9);
          v47 = objc_msgSend_fileHeaderLength(*(a1 + 40), v45, v46);
          v50 = objc_msgSend_compressedSize(*(a1 + 40), v48, v49);
          v40 = 0;
          v39 = v44 - v31 + v47 + v50;
          goto LABEL_33;
        }

LABEL_34:
        v51 = BUZipLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          sub_241DD06C0();
        }

        goto LABEL_37;
      }
    }

    v28 = BUZipLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_241DD062C(a1, v28, v29);
    }

    LODWORD(v25) = 0;
    goto LABEL_22;
  }

  objc_msgSend_addEntry_(*(a1 + 32), v8, v7);
  v14 = *(a1 + 40);
  if (v14 && (*(a1 + 68) & 1) == 0 && *(a1 + 64))
  {
    v15 = objc_msgSend_compressedSize(*(a1 + 40), v12, v13);
    objc_msgSend_setCompressedSize_(v14, v16, v15 - *(a1 + 64));
  }

  v17 = objc_msgSend_offset(v7, v12, v13);
  v20 = objc_msgSend_fileHeaderLength(v7, v18, v19) + v17;
  v23 = objc_msgSend_compressedSize(v7, v21, v22);
  objc_msgSend_readLocalFileHeaderEntriesFromChannel_offset_previousEntry_seekAttempts_seekForward_completion_(*(a1 + 32), v24, *(a1 + 48), v20 + v23, v7, 0, 0, *(a1 + 56));
LABEL_10:
}

void sub_241DBEC8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  if (v7 || (v8 = *(a1 + 32), v9 = *(a1 + 40), v24 = 0, v10 = objc_msgSend_readLocalFileHeaderFilenameAndExtraFieldsData_forEntry_error_(v8, v6, v5, v9, &v24), v7 = v24, !v10))
  {
    v23 = *(*(a1 + 48) + 16);
  }

  else
  {
    v13 = objc_msgSend_offset(*(a1 + 40), v11, v12);
    v16 = objc_msgSend_fileHeaderLength(*(a1 + 40), v14, v15) + v13;
    v19 = v16 + objc_msgSend_compressedSize(*(a1 + 40), v17, v18);
    if (v19 > objc_msgSend_endOfLastEntry(*(a1 + 32), v20, v21))
    {
      objc_msgSend_setEndOfLastEntry_(*(a1 + 32), v22, v19);
    }

    v23 = *(*(a1 + 48) + 16);
  }

  v23();
}

id sub_241DBF140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [BUZipInflateReadChannel alloc];
  objc_msgSend_size(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_size(*(a1 + 32), v7, v8);
  v12 = objc_msgSend_CRC(*(a1 + 32), v10, v11);
  Channel_uncompressedSize_CRC_validateCRC = objc_msgSend_initWithReadChannel_uncompressedSize_CRC_validateCRC_(v4, v13, v3, v9, v12, *(a1 + 40));

  return Channel_uncompressedSize_CRC_validateCRC;
}

void sub_241DBF704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DBF72C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DBF744(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v38 = objc_msgSend_pathComponents(a2, a2, a3);
  if (objc_msgSend_count(v38, v6, v7) < 2 || (objc_msgSend_objectAtIndexedSubscript_(v38, v8, 0), v10 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"__MACOSX"), v10, v13 = v38, (isEqualToString & 1) == 0))
  {
    v14 = *(*(*(a1 + 32) + 8) + 40);
    if (v14)
    {
      v17 = 0;
      if (!objc_msgSend_count(v14, v8, v9))
      {
        goto LABEL_10;
      }

      do
      {
        if (v17 >= objc_msgSend_count(v38, v15, v16))
        {
          break;
        }

        v18 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 32) + 8) + 40), v15, v17);
        v20 = objc_msgSend_objectAtIndexedSubscript_(v38, v19, v17);
        v22 = objc_msgSend_compare_options_(v18, v21, v20, *(a1 + 40));

        if (v22)
        {
          break;
        }

        ++v17;
      }

      while (v17 < objc_msgSend_count(*(*(*(a1 + 32) + 8) + 40), v15, v16));
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = *(*(a1 + 32) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = 0;

        *a4 = 1;
      }

      else
      {
LABEL_10:
        v25 = v17 >= objc_msgSend_count(*(*(*(a1 + 32) + 8) + 40), v15, v16);
        v13 = v38;
        if (v25)
        {
          goto LABEL_14;
        }

        v28 = *(*(*(a1 + 32) + 8) + 40);
        v29 = objc_msgSend_count(v28, v26, v27);
        objc_msgSend_removeObjectsInRange_(v28, v30, v17, v29 - v17);
      }
    }

    else
    {
      v31 = objc_alloc(MEMORY[0x277CBEB18]);
      v33 = objc_msgSend_initWithArray_(v31, v32, v38);
      v34 = *(*(a1 + 32) + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v33;

      objc_msgSend_removeLastObject(*(*(*(a1 + 32) + 8) + 40), v36, v37);
    }

    v13 = v38;
  }

LABEL_14:
}

void sub_241DBF920(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (objc_msgSend_length(v15, v6, v7) <= (*(a1 + 48) + 1))
  {
    v11 = objc_msgSend_entries(*(a1 + 40), v8, v9);
    objc_msgSend_removeObject_(v11, v14, v5);
  }

  else
  {
    if (objc_msgSend_hasPrefix_(v15, v8, @"__MACOSX"))
    {
      goto LABEL_6;
    }

    v11 = objc_msgSend_substringFromIndex_(v15, v10, *(a1 + 48) + 1);
    objc_msgSend_setCollapsedName_(v5, v12, v11);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v13, v5, v11);
  }

LABEL_6:
}

void sub_241DBFCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DBFCFC(uint64_t a1, const char *a2, void *a3)
{
  result = objc_msgSend_size(a3, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void sub_241DC0424(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_241DC0444(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v10 = objc_msgSend_stringByAppendingPathComponent_(v7, v9, v8);
  if (objc_msgSend_fileExistsAtPath_(a1, v11, v10))
  {
    v14 = objc_msgSend_pathExtension(v8, v12, v13);
    v18 = objc_msgSend_stringByDeletingPathExtension(v8, v15, v16);
    v19 = 1;
    v26 = v8;
    v20 = v8;
    do
    {
      v21 = v20;
      v22 = v10;
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%@ %d.%@", v18, v19, v14);

      v10 = objc_msgSend_stringByAppendingPathComponent_(v7, v23, v20);

      v19 = (v19 + 1);
    }

    while ((objc_msgSend_fileExistsAtPath_(a1, v24, v10) & 1) != 0);

    v8 = v26;
  }

  else
  {
    v20 = v8;
  }

  return v20;
}

id sub_241DC058C(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(a1, v6, v7);
  CC_MD5(v5, v8, md);
  v11 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v9, 32);
  for (i = 0; i != 16; ++i)
  {
    objc_msgSend_appendFormat_(v11, v10, @"%02x", md[i]);
  }

  v14 = objc_msgSend_copy(v11, v10, v13);

  return v14;
}

id sub_241DC0678(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_bu_md5(a1, a2, a3);
  v6 = objc_msgSend_uppercaseString(v3, v4, v5);

  return v6;
}

id sub_241DC06C4(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(a1, v6, v7);
  CC_SHA1(v5, v8, md);
  v12 = objc_msgSend_string(MEMORY[0x277CCAB68], v9, v10);
  for (i = 0; i != 20; ++i)
  {
    objc_msgSend_appendFormat_(v12, v11, @"%02x", md[i]);
  }

  return v12;
}

id sub_241DC079C(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v5 = objc_msgSend_bytes(v2, v3, v4);
  v8 = objc_msgSend_length(a1, v6, v7);
  CC_SHA256(v5, v8, md);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; i != 32; ++i)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%02x", md[i]);
    objc_msgSend_addObject_(v10, v13, v12);
  }

  v14 = objc_msgSend_componentsJoinedByString_(v10, v9, &stru_2853F3C08);

  return v14;
}

id sub_241DC08B0(void *a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_length(a1, a2, a3);
  if (v4)
  {
    v5 = v4;
    memset(&v16, 0, sizeof(v16));
    CC_SHA384_Init(&v16);
    v6 = a1;
    v9 = objc_msgSend_bytes(v6, v7, v8);
    if (v5 < 0x10000)
    {
      goto LABEL_5;
    }

    do
    {
      CC_SHA384_Update(&v16, v9, 0x10000u);
      v9 += 0x10000;
      v5 -= 0x10000;
    }

    while (v5 >> 16);
    if (v5)
    {
LABEL_5:
      CC_SHA384_Update(&v16, v9, v5);
    }

    CC_SHA384_Final(md, &v16);
    v10 = 0;
    v18 = 0;
    v11 = v17 + 1;
    memset(v17, 0, sizeof(v17));
    do
    {
      v12 = md[v10];
      *(v11 - 1) = a0123456789abcd[v12 >> 4];
      *v11 = a0123456789abcd[v12 & 0xF];
      v11 += 2;
      ++v10;
    }

    while (v10 != 48);
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = objc_msgSend_initWithBytes_length_encoding_(v13, v14, v17, 96, 4);
  }

  return v4;
}

__CFString *sub_241DC0A18(void *a1, const char *a2)
{
  v2 = objc_msgSend_base64EncodedStringWithOptions_(a1, a2, 0);
  if (objc_msgSend_length(v2, v3, v4))
  {
    v5 = objc_alloc(MEMORY[0x277CCAB68]);
    v8 = objc_msgSend_length(@"data:image/png;base64,", v6, v7);
    v11 = objc_msgSend_length(v2, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v5, v12, v11 + v8);
    objc_msgSend_appendString_(v13, v14, @"data:image/png;base64,");
    objc_msgSend_appendString_(v13, v15, v2);
  }

  else
  {
    v13 = &stru_2853F3C08;
  }

  return v13;
}

id sub_241DC0AC8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_length(a1, a2, a3);
  v6 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v5, 2 * v4);
  v7 = a1;
  v10 = objc_msgSend_bytes(v7, v8, v9);
  if (v4)
  {
    v12 = v10;
    do
    {
      v13 = *v12++;
      objc_msgSend_appendFormat_(v6, v11, @"%02x", v13);
      --v4;
    }

    while (v4);
  }

  return v6;
}

id sub_241DC0B64(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5))
  {
    v8 = objc_msgSend_length(v3, v6, v7);
    v9 = v8 >> 1;
    v10 = malloc_type_malloc(v8 >> 1, 0xD04A3A47uLL);
    if (v10)
    {
      v11 = v10;
      v12 = v3;
      v15 = objc_msgSend_UTF8String(v12, v13, v14);
      if (v8 < 2)
      {
LABEL_7:
        v18 = objc_alloc(MEMORY[0x277CBEA90]);
        v20 = objc_msgSend_initWithBytesNoCopy_length_(v18, v19, v11, v9);
        goto LABEL_10;
      }

      v16 = v15;
      v17 = 0;
      while (1)
      {
        v22 = 0;
        if (sscanf(v16, "%1hhx%1hhx", &v22 + 1, &v22) < 2)
        {
          break;
        }

        v11[v17++] = v22 + 16 * HIBYTE(v22);
        v16 += 2;
        if (v9 == v17)
        {
          goto LABEL_7;
        }
      }

      free(v11);
    }
  }

  v20 = 0;
LABEL_10:

  return v20;
}

void sub_241DC0DD8(uint64_t a1)
{
  v4 = MEMORY[0x245D00360](*(*(a1 + 32) + 16));
  if (v4)
  {
    v4[2]();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void sub_241DC10D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_241DC10F8(uint64_t a1)
{
  if ((*(a1 + 56) & 1) != 0 || *(*(a1 + 32) + 16))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v1 = (a1 + 32);
    *(*(v1[2] + 8) + 24) = *(*(a1 + 32) + 16) == 0;
    ++*(*v1 + 16);
    v2 = BUAssertionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_241DD0908(v1, v2);
    }
  }
}

void sub_241DC1194(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend__endAssertion(*(a1 + 32), a2, a3))
  {
    v4 = BUAssertionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_241DD0988(v4);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    objc_msgSend_countingAssertProviderTransitionToZero_(WeakRetained, v6, *(a1 + 32));
  }
}

void BUHaltDebugger()
{
  v35 = *MEMORY[0x277D85DE8];
  if (BUGrantDebuggerPermissionToStopExecution == 1)
  {
    if (qword_280BC5E78 != -1)
    {
      sub_241DA9C2C();
    }

    if (byte_280BC5DF0 != 1 || BUForceUnitTestsToHaltDebugger == 1)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      v5 = 0u;
      memset(v4, 0, sizeof(v4));
      *v1 = 0xE00000001;
      v2 = 1;
      v3 = getpid();
      v0 = 648;
      sysctl(v1, 4u, v4, &v0, 0, 0);
      if ((v5 & 0x800) != 0)
      {
        __debugbreak();
      }
    }
  }
}

void BUReportAssertionFailureWithMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a5;
  if (objc_msgSend_length(v13, v14, v15))
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_msgSend_initWithFormat_arguments_(v17, v18, v13, &a9);
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_5:
    v20 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v16, a1, 1);
    v23 = objc_msgSend_lastPathComponent(v20, v21, v22);

    if (v23)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v19 = &stru_2853F3C08;
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v23 = &stru_2853F3C08;
LABEL_7:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v25 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, a2);
    *buf = 136316162;
    v27 = a4;
    v28 = 2080;
    v29 = a3;
    v30 = 2112;
    v31 = v23;
    v32 = 2112;
    v33 = v25;
    v34 = 2112;
    v35 = v19;
    _os_log_error_impl(&dword_241DA6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s in %s - %@:%@ %@", buf, 0x34u);
  }
}

void BUCrashFinalThrow(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  if (objc_msgSend_length(v9, v10, v11))
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = objc_msgSend_initWithFormat_arguments_(v13, v14, v9, &a9);
    objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v16, @"BUCrash", v15, 0);
  }

  else
  {
    objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v12, @"BUCrash", &stru_2853F3C08, 0);
  }
  v17 = ;
  objc_exception_throw(v17);
}

BOOL BUEncodedBlockInfoAreEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_encodedLength(v3, v5, v6);
  if (v7 == objc_msgSend_encodedLength(v4, v8, v9))
  {
    v12 = objc_msgSend_decodedLength(v3, v10, v11);
    v15 = v12 == objc_msgSend_decodedLength(v4, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id BUEncodedBlockInfoCreate(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v3 = [BUEncodedBlockInfoInternal alloc];
    v5 = objc_msgSend_initWithEncodedLength_(v3, v4, a1);
  }

  else
  {
    v7 = [BUEncodedBlockInfoWithDecodedLengthInternal alloc];
    v5 = objc_msgSend_initWithEncodedLength_decodedLength_(v7, v8, a1, a2);
  }

  return v5;
}

void sub_241DC1D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DC1D7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v4 = MEMORY[0x245D00360](*(a1 + 32));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4, a2);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_241DC1DF4(uint64_t a1, uint64_t a2)
{
  close(*(a1 + 40));
  if (a2)
  {
    v4 = BUZipLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_241DD0AB4(a2);
    }
  }

  v5 = MEMORY[0x245D00360](*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, a2);
  }
}

void sub_241DC2140(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = BUZipLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_241DD0AB4(a2);
    }
  }

  v5 = MEMORY[0x245D00360](*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_241DC224C;
      v10[3] = &unk_278D1D920;
      v11 = v5;
      v12 = a2;
      dispatch_async(v7, v10);
    }

    else
    {
      v8 = v5[2];
      v9 = 0;
      v8(v6, a2);
    }
  }
}

void sub_241DC23B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  if (a4)
  {
    v7 = objc_msgSend_bu_fileReadPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v6, a4, 0);
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_241DC2538(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = a3;
  if (a4)
  {
    v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v6, *MEMORY[0x277CCA5B8], a4, 0);
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_241DC26C0(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = a3;
  if (a4)
  {
    v7 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v6, *MEMORY[0x277CCA5B8], a4, 0);
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_241DC2928(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_channel(*(a1 + 32), a2, a3);
  descriptor = dispatch_io_get_descriptor(v4);

  if (descriptor != -1 && fsync(descriptor) == -1)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = __error();
    v11 = objc_msgSend_bu_fileReadPOSIXErrorWithNumber_userInfo_(v6, v8, *v7, 0);
  }

  else
  {
    v11 = 0;
  }

  v9 = MEMORY[0x245D00360](*(a1 + 40));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v11);
  }
}

void sub_241DC2AB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_channel(*(a1 + 32), a2, a3);
  descriptor = dispatch_io_get_descriptor(v4);

  if (descriptor != -1 && ftruncate(descriptor, *(a1 + 48)) == -1)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = __error();
    v11 = objc_msgSend_bu_fileReadPOSIXErrorWithNumber_userInfo_(v6, v8, *v7, 0);
  }

  else
  {
    v11 = 0;
  }

  v9 = MEMORY[0x245D00360](*(a1 + 40));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v11);
  }
}

unint64_t BUStoreIdFromObject(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v5 = BUDynamicCast(v2, v1);
  if (v5)
  {
    v6 = objc_msgSend_unsignedLongLongValue(v1, v3, v4);
  }

  else
  {
    v7 = objc_opt_class();
    v8 = BUDynamicCast(v7, v1);
    v9 = v8;
    if (v8 && (v10 = v8, (v13 = objc_msgSend_UTF8String(v10, v11, v12)) != 0))
    {
      v6 = strtoull(v13, 0, 10);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id BUStoreIdStringFromObject(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = BUDynamicCast(v2, v1);
  if (!v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = objc_msgSend_stringValue(v1, v4, v5);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_241DC30E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DC3128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DC3140(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v9 = a4;
  v10 = *(*(a1 + 48) + 8);
  if (v9 && *(v10 + 24))
  {
    *(v10 + 24) = 0;
    objc_msgSend_handleFailureWithHandler_error_(*(a1 + 32), v8, *(a1 + 40), v9);
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!*(v10 + 24))
  {
LABEL_12:
    v15 = v7;
    goto LABEL_13;
  }

  v11 = *(*(*(a1 + 56) + 8) + 40);
  if (!v11)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    concat = dispatch_data_create_concat(v11, v7);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = concat;

    v11 = *(*(*(a1 + 56) + 8) + 40);
  }

  v15 = v11;

  size = dispatch_data_get_size(v15);
  if ((a2 & 1) != 0 || size >= 0x1E)
  {
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    v25 = 0;
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_readFileHeaderFromData_headerLength_(*(a1 + 32), v19, v15, &v25);
    v20 = v25;
    *(*(*(a1 + 64) + 8) + 24) = v25 != *(a1 + 80);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        objc_msgSend_readWithFileHeaderLength_handler_(*(a1 + 32), v8, v20, *(a1 + 40));
      }

      else
      {
        v21 = dispatch_data_get_size(v15);
        if (v21 >= v20)
        {
          subrange = dispatch_data_create_subrange(v15, v20, v21 - v20);

          v15 = subrange;
        }

        else
        {
          v22 = BUZipLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_241DD0B30((a1 + 32), v22, v23);
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
        }
      }
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_handleFailureWithHandler_error_(*(a1 + 32), v8, *(a1 + 40), 0);
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

LABEL_13:
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_processData_CRC_isDone_handler_(*(a1 + 32), v8, v15, *(*(a1 + 72) + 8) + 24, a2, *(a1 + 40));
  }
}

void sub_241DC35C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  v17 = 0;
  if (v7 || !objc_msgSend_readFileHeaderFromData_headerLength_(*(a1 + 32), v6, v5, &v17))
  {
    objc_msgSend_handleFailureWithHandler_error_(*(a1 + 32), v6, *(a1 + 40), v7);
  }

  else
  {
    v9 = objc_msgSend_archiveReadChannel(*(a1 + 32), v6, v8);
    v12 = objc_msgSend_entry(*(a1 + 32), v10, v11);
    v15 = objc_msgSend_offset(v12, v13, v14);
    objc_msgSend_readFromOffset_length_handler_(v9, v16, v17 + *(a1 + 48) + v15, *(a1 + 56), *(a1 + 40));
  }
}

void sub_241DC398C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  if (!v8 || !*(v9 + 24))
  {
    if (!*(v9 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v9 + 24) = 0;
  objc_msgSend_handleFailureWithHandler_error_(*(a1 + 32), v7, *(a1 + 40), v8);
  if (*(*(*(a1 + 48) + 8) + 24))
  {
LABEL_6:
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_processData_CRC_isDone_handler_(*(a1 + 32), v7, v10, *(*(a1 + 56) + 8) + 24, a2, *(a1 + 40));
  }

LABEL_7:
}

uint64_t sub_241DC3B90(uint64_t a1, int a2, int a3, Bytef *buf, unint64_t a5)
{
  v6 = **(a1 + 32);
  if (a5 >= 0xFFFFFFFF)
  {
    v7 = -1;
  }

  else
  {
    v7 = a5;
  }

  **(a1 + 32) = crc32(v6, buf, v7);
  return 1;
}

id BUCoalescingCallBlockLog()
{
  if (qword_280BC5EA0 != -1)
  {
    sub_241DD0DF0();
  }

  v1 = qword_280BC5EA8;

  return v1;
}

uint64_t sub_241DC3DD8()
{
  v0 = os_log_create("com.apple.iBooks", "BookUtility.CoalescingCallBlock");
  v1 = qword_280BC5EA8;
  qword_280BC5EA8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id BUZipLog()
{
  if (qword_27EC72A28 != -1)
  {
    sub_241DD0E04();
  }

  v1 = qword_27EC72A20;

  return v1;
}

uint64_t sub_241DC3E60()
{
  v0 = os_log_create("com.apple.iBooks", "BookUtility.Zip");
  v1 = qword_27EC72A20;
  qword_27EC72A20 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_241DC4068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DC40AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DC4660(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_241DC4698(uint64_t a1)
{
  v8 = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_activeStoreAccount(v8, v1, v2);
  v6 = objc_msgSend_ams_DSID(v3, v4, v5);
  objc_msgSend_nq_setupNotifyBlockForAccountType_currentAccountIdentifier_(v8, v7, 1, v6);
}

void sub_241DC4728(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BookUtilityLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_241DD0ED0();
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_241DC4828;
    v9[3] = &unk_278D1DA60;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = v5;
    dispatch_async(v8, v9);

    objc_destroyWeak(&v11);
  }
}

void sub_241DC4828(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_recordName(*(a1 + 32), v2, v3);
  v7 = objc_msgSend_copy(v4, v5, v6);
  objc_msgSend_nq_setupNotifyBlockForAccountType_currentAccountIdentifier_(WeakRetained, v8, 2, v7);
}

void sub_241DC4A1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_nq_teardownNotifyBlockForAccountType_(WeakRetained, v1, 1);
}

void sub_241DC4A60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_nq_teardownNotifyBlockForAccountType_(WeakRetained, v1, 2);
}

void sub_241DC4B64(uint64_t a1)
{
  if (!notify_is_valid_token(*(*(a1 + 32) + 24)))
  {
    out_token = -1;
    objc_initWeak(&location, *(a1 + 32));
    v4 = objc_msgSend_UTF8String(@"com.apple.tcc.access.changed", v2, v3);
    v5 = *(*(a1 + 32) + 88);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_241DC4C7C;
    handler[3] = &unk_278D1D540;
    objc_copyWeak(&v9, &location);
    v6 = notify_register_dispatch(v4, &out_token, v5, handler);
    v7 = out_token;
    if (v6)
    {
      v7 = -1;
    }

    *(*(a1 + 32) + 24) = v7;
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void sub_241DC4C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241DC4C7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = BookUtilityLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_241DA6000, v2, OS_LOG_TYPE_DEFAULT, "Received TCC access change notification, reset iCloud and Store Account caches", v7, 2u);
    }

    objc_msgSend_nq_resetAppleAccountCachedValues(WeakRetained, v3, v4);
    objc_msgSend_nq_resetStoreAccountCachedValues(WeakRetained, v5, v6);
  }
}

uint64_t sub_241DC4E14(uint64_t a1, const char *a2)
{
  objc_msgSend_setActiveStoreAccount_(*(a1 + 32), a2, 0);
  objc_msgSend_setLocalStoreAccount_(*(a1 + 32), v3, 0);
  v4 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_setCachedIsStoreAccountManagedAppleID_, 0);
}

uint64_t sub_241DC4EF4(uint64_t a1)
{
  v2 = BookUtilityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_241DA6000, v2, OS_LOG_TYPE_DEFAULT, "[PrimaryAppleAccount] setting primaryAppleAccount to nil", v6, 2u);
  }

  objc_msgSend_setPrimaryAppleAccount_(*(a1 + 32), v3, 0);
  return objc_msgSend_setCachedIsPrimaryAccountManagedAppleID_(*(a1 + 32), v4, 0);
}

void sub_241DC5078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DC5090(void *a1, const char *a2)
{
  v3 = *(a1[4] + 104);
  v4 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a1[7]);
  v14 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4);

  if (!v14)
  {
    v14 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v6, v7);
    v8 = *(a1[4] + 104);
    v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, a1[7]);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v11, v14, v10);
  }

  objc_msgSend_addObject_(v14, v6, a1[5]);
  *(*(a1[6] + 8) + 24) = objc_msgSend_count(v14, v12, v13);
}

void sub_241DC5278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DC5290(void *a1, const char *a2)
{
  v3 = *(a1[4] + 104);
  v4 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a1[7]);
  v9 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4);

  objc_msgSend_removeObject_(v9, v6, a1[5]);
  *(*(a1[6] + 8) + 24) = objc_msgSend_count(v9, v7, v8);
}

void sub_241DC5448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DC5460(void *a1, const char *a2)
{
  v3 = *(a1[4] + 104);
  v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a1[6]);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, v11);
  v8 = objc_msgSend_allObjects(v5, v6, v7);
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_241DC55C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DC55E0(void *a1, const char *a2)
{
  v3 = *(a1[4] + 104);
  v4 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a1[6]);
  v8 = objc_msgSend_objectForKeyedSubscript_(v3, v5, v4);

  *(*(a1[5] + 8) + 24) = objc_msgSend_count(v8, v6, v7);
}

void sub_241DC5878(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_241DC58A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__didReceiveNotification_(WeakRetained, v4, v3);
}

void sub_241DC58FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__didReceiveNotification_(WeakRetained, v4, v3);
}

void sub_241DC5B74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    kdebug_trace();
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    v6 = objc_msgSend__singleAccountTypeForNotification_(WeakRetained, v5, v4);
    v7 = BookUtilityLog();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        sub_241DD1054(v3, v7, v9);
      }

      v12 = objc_msgSend_notifyBlocks(WeakRetained, v10, v11);
      v14 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, v6);
      v7 = objc_msgSend_objectForKeyedSubscript_(v12, v15, v14);

      kdebug_trace();
      objc_msgSend_signalWithCompletion_(v7, v16, &unk_2853F2D48);
      kdebug_trace();
    }

    else if (v8)
    {
      sub_241DD10DC(v3, v7, v9);
    }

    kdebug_trace();
  }
}

void sub_241DC5EF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_241DC5FC0;
  v5[3] = &unk_278D1DB50;
  objc_copyWeak(v6, (a1 + 40));
  v6[1] = *(a1 + 48);
  dispatch_async(v4, v5);
  v3[2](v3);
  objc_destroyWeak(v6);
}

uint64_t sub_241DC5FC0(uint64_t a1)
{
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_nq_updateAccountIdentifierAndNotifyObserversForAccountType_(WeakRetained, v3, *(a1 + 40));

  return kdebug_trace();
}

void sub_241DC64E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_241DC650C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241DC65F4;
  v10[3] = &unk_278D1DBA0;
  objc_copyWeak(&v13, (a1 + 48));
  v10[4] = *(a1 + 40);
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v13);
}

void sub_241DC65F4(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_msgSend__observersForAccountType_(*(a1 + 32), v3, 2);
  if (*(a1 + 40))
  {
    v6 = BookUtilityLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1164();
    }

LABEL_27:

    goto LABEL_28;
  }

  if (WeakRetained)
  {
    v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v4, 2);
    v9 = objc_msgSend_accountIdentifiers(WeakRetained, v7, v8);
    v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v6);

    v14 = objc_msgSend_recordName(*(a1 + 48), v12, v13);
    v17 = objc_msgSend_copy(v14, v15, v16);

    if (objc_msgSend_isEqualToString_(v11, v18, v17))
    {
      v21 = 0;
    }

    else
    {
      if (objc_msgSend_length(v11, v19, v20) && objc_msgSend_length(v17, v22, v23))
      {
        v21 = 102;
      }

      else if (objc_msgSend_length(v11, v22, v23) || !objc_msgSend_length(v17, v22, v23))
      {
        if (objc_msgSend_length(v11, v22, v23))
        {
          if (objc_msgSend_length(v17, v22, v23))
          {
            v21 = 0;
          }

          else
          {
            v21 = 101;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 100;
      }

      v24 = objc_msgSend_accountIdentifiers(WeakRetained, v22, v23);
      objc_msgSend_setObject_forKeyedSubscript_(v24, v25, v17, v6);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v5;
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v33, v37, 16);
    if (v28)
    {
      v30 = v28;
      v31 = *v34;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(v26);
          }

          objc_msgSend_account_didChangeWithReason_(*(*(&v33 + 1) + 8 * i), v29, 2, v21, v33);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v33, v37, 16);
      }

      while (v30);
    }

    goto LABEL_27;
  }

LABEL_28:
}

void sub_241DC6B34(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_241DC6E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DC6E54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DC6E6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_observers(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_allObjects(v9, v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t sub_241DC7794(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3);
  objc_msgSend_setLastBlockCallDate_(*(a1 + 32), v5, v4);

  v7 = *(a1 + 32);

  return objc_msgSend_setRunning_(v7, v6, 0);
}

void sub_241DC7E3C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((objc_msgSend_isStreamOutputDone(*(a1 + 32), v9, v10) & 1) == 0)
  {
    if (v8)
    {
      v12 = BUZipLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_241DD11DC(v8, v12, v13);
      }

      objc_msgSend_setStreamOutputDone_(*(a1 + 32), v14, 1);
    }

    else
    {
      if (v7)
      {
        v15 = *(a1 + 32);
        size = dispatch_data_get_size(v7);
        v19 = objc_msgSend_streamOutputLength(v15, v17, v18);
        objc_msgSend_setStreamOutputLength_(v15, v20, v19 + size);
        v25 = objc_msgSend_currentStreamOutputData(*(a1 + 32), v21, v22);
        v26 = *(a1 + 32);
        if (v25)
        {
          v27 = objc_msgSend_currentStreamOutputData(v26, v23, v24);
          concat = dispatch_data_create_concat(v27, v7);
          objc_msgSend_setCurrentStreamOutputData_(*(a1 + 32), v29, concat);
        }

        else
        {
          objc_msgSend_setCurrentStreamOutputData_(v26, v23, v7);
        }
      }

      objc_msgSend_setStreamOutputDone_(*(a1 + 32), v11, a2);
    }
  }
}

void sub_241DC8050(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sourceReadChannelError(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = *(a1 + 40);
    v14 = objc_msgSend_sourceReadChannelError(*(a1 + 32), v5, v6);
    (*(v7 + 16))(v7, 1, 0, v14);
  }

  else
  {
    v8 = objc_msgSend_readQueue(*(a1 + 32), v5, v6);
    dispatch_suspend(v8);

    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);

    objc_msgSend__readFromOffset_length_handler_(v12, v9, v10, v11, v13);
  }
}

void sub_241DC82FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241DC8314(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_sourceReadChannelError(*(a1 + 32), v9, v10);

  if (v11)
  {
    goto LABEL_22;
  }

  v14 = objc_msgSend_streamReadChannelSourceHandler(*(a1 + 32), v12, v13);

  if (!(v8 | v14))
  {
    v8 = objc_msgSend_bu_fileReadUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v15, 0);
  }

  if (v8)
  {
    v17 = BUZipLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1278(v8, v17, v18);
    }

    (*(*(a1 + 40) + 16))();
    objc_msgSend_setSourceReadChannelError_(*(a1 + 32), v19, v8);
    v22 = objc_msgSend_readQueue(*(a1 + 32), v20, v21);
    dispatch_resume(v22);

    goto LABEL_22;
  }

  if (v7)
  {
    size = dispatch_data_get_size(v7);
  }

  else
  {
    size = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) += size;
  if (a2)
  {
    v24 = *(*(*(a1 + 48) + 8) + 24) < *(a1 + 56);
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = 0;
    if (v7)
    {
LABEL_16:
      v25 = objc_msgSend_streamReadChannelSourceHandler(*(a1 + 32), v15, v16);
      (v25)[2](v25, v24, v7, 0);

      goto LABEL_17;
    }
  }

  if (v24)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (a2)
  {
    v26 = *(a1 + 32);
    v27 = *(*(a1 + 48) + 8);
    v28 = objc_msgSend_sourceOffset(v26, v15, v16);
    objc_msgSend_setSourceOffset_(v26, v29, *(v27 + 24) + v28);
    if (objc_msgSend_sourceLength(*(a1 + 32), v30, v31) != -1)
    {
      v34 = *(a1 + 32);
      v35 = *(*(a1 + 48) + 8);
      v36 = objc_msgSend_sourceLength(v34, v32, v33);
      objc_msgSend_setSourceLength_(v34, v37, v36 - *(v35 + 24));
    }

    objc_msgSend__readFromOffset_length_handler_(*(a1 + 32), v32, *(a1 + 64), *(a1 + 72), *(a1 + 40));
  }

  v8 = 0;
LABEL_22:
}

void sub_241DC8780(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t sub_241DC8A84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    shouldCopyItemToURL = objc_msgSend_shouldCopyItemToURL_(*(a1 + 32), v5, v4);
  }

  else
  {
    shouldCopyItemToURL = 1;
  }

  return shouldCopyItemToURL;
}

void sub_241DC8AE0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 32);
    v9 = objc_msgSend_size(v11, v6, v7);
    objc_msgSend_didCopyItemToURL_fileSize_(v8, v10, v5, v9);
  }
}

void sub_241DC8E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DC8E2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DC8E44(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  if (data2)
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      concat = dispatch_data_create_concat(v9, data2);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = concat;
    }

    else
    {
      v13 = data2;
      v12 = *(v8 + 40);
      *(v8 + 40) = v13;
    }
  }

  v14 = *(*(a1 + 48) + 8);
  v16 = *(v14 + 40);
  v15 = (v14 + 40);
  if (v16)
  {
    if (!a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  objc_storeStrong(v15, a4);
  if (a2)
  {
LABEL_8:
    dispatch_group_leave(*(a1 + 32));
  }

LABEL_9:
}

void sub_241DC9E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_241DC9E94(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    goto LABEL_3;
  }

  if (!v5)
  {
    goto LABEL_3;
  }

  v9 = (a1 + 32);
  if (objc_msgSend_isSymLink(*(a1 + 32), v6, v7))
  {
    v50 = 0;
    v11 = objc_msgSend_stringWithContentsOfURL_encoding_error_(MEMORY[0x277CCACA8], v10, v5, 4, &v50);
    v12 = v50;
    if (!objc_msgSend_length(v11, v13, v14))
    {
      v39 = BUZipLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1888();
      }

      v40 = *(*(a1 + 56) + 8);
      v29 = v12;
      v17 = *(v40 + 40);
      *(v40 + 40) = v29;
      goto LABEL_24;
    }

    v17 = objc_msgSend_URLByDeletingLastPathComponent(*(a1 + 40), v15, v16);
    v19 = objc_msgSend_fileURLWithPath_relativeToURL_(MEMORY[0x277CBEBC0], v18, v11, v17);
    v22 = v19;
    if ((*(a1 + 72) & 1) != 0 || objc_msgSend_bu_isContainedWithinFileURL_(v19, v20, *(a1 + 48)))
    {
      v23 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v20, v21, v22);
      v26 = objc_msgSend_path(*(a1 + 40), v24, v25);
      v49 = v12;
      v28 = objc_msgSend_createSymbolicLinkAtPath_withDestinationPath_error_(v23, v27, v26, v11, &v49);
      v29 = v49;

      *(*(*(a1 + 64) + 8) + 24) = v28;
      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v22 = v47;
LABEL_23:

LABEL_24:
        goto LABEL_3;
      }

      v41 = BUZipLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v46 = objc_msgSend_path(*(a1 + 40), v42, v43);
        *buf = 138412802;
        v52 = v46;
        v53 = 2112;
        v54 = v11;
        v55 = 2112;
        v56 = v29;
        _os_log_error_impl(&dword_241DA6000, v41, OS_LOG_TYPE_ERROR, "Error creating symlink at %@ with destination %@: %@", buf, 0x20u);
      }

      v44 = *(*(a1 + 56) + 8);
      v12 = v29;
      v45 = *(v44 + 40);
      *(v44 + 40) = v12;
      v22 = v47;
    }

    else
    {
      v45 = BUZipLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_241DD17E8(v9, v11, v45);
      }
    }

    v29 = v12;
    goto LABEL_23;
  }

  v30 = BUZipLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 40);
    *buf = 138412546;
    v52 = v5;
    v53 = 2112;
    v54 = v31;
    _os_log_impl(&dword_241DA6000, v30, OS_LOG_TYPE_DEFAULT, "Moving temporary %@ to requested URL: %@", buf, 0x16u);
  }

  v34 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v32, v33);
  v35 = *(a1 + 40);
  v36 = *(*(a1 + 56) + 8);
  obj = *(v36 + 40);
  v38 = objc_msgSend_moveItemAtURL_toURL_error_(v34, v37, v5, v35, &obj);
  objc_storeStrong((v36 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v38;

LABEL_3:
}

void sub_241DCA674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_241DCA6B8(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else if (v7)
  {
    dispatch_group_enter(*(a1 + 32));
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_241DCA7C4;
    v13[3] = &unk_278D1D410;
    v12 = *(a1 + 32);
    v10 = v12;
    v14 = v12;
    objc_msgSend_writeData_handler_(v9, v11, v7, v13);
  }

  if (a2)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_241DCA7C4(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v7 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  if (a2)
  {
    dispatch_group_leave(*(a1 + 32));
  }
}

void sub_241DCA85C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t BUBundle()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return MEMORY[0x2821F9670](v0, sel_bundleForClass_, v1);
}

void sub_241DCAF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DCAF64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DCAF7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_241DCB23C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_count(a1, v8, v9);
  v12 = v10;
  if (v10 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = v10;
    do
    {
      v15 = v13 + (v14 - v13) / 2;
      v16 = objc_msgSend_objectAtIndex_(a1, v11, v15);
      v18 = objc_msgSend_valueForKeyPath_(v16, v17, v7);

      if (objc_msgSend_compare_(v18, v19, v6) == -1)
      {
        v13 = v15 + 1;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v13 < v14);
  }

  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 < v12)
  {
    v21 = objc_msgSend_objectAtIndex_(a1, v11, v13);
    v23 = objc_msgSend_valueForKeyPath_(v21, v22, v7);
    v25 = objc_msgSend_compare_(v23, v24, v6);

    if (!v25)
    {
      v20 = v13;
    }
  }

  return v20;
}

id sub_241DCB364(void *a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = objc_msgSend_reverseObjectEnumerator(a1, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v22, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_addObject_(v7, v13, *(*(&v18 + 1) + 8 * i));
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v18, v22, 16);
    }

    while (v14);
  }

  return v7;
}

uint64_t sub_241DCB490(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (!objc_msgSend_caseInsensitiveCompare_(*(*(&v12 + 1) + 8 * i), v7, v4, v12))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

uint64_t sub_241DCB59C(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (!objc_msgSend_localizedCaseInsensitiveCompare_(*(*(&v12 + 1) + 8 * i), v7, v4, v12))
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v12, v16, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

id sub_241DCB6A8(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = objc_msgSend_copy(a1, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v24, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v21 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v20 + 1) + 8 * v15);
      v19 = 0;
      if (v4[2](v4, v16, &v19))
      {
        objc_msgSend_addObject_(v7, v17, v16);
      }

      if (v19)
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v20, v24, 16);
        if (v13)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v7;
}

id sub_241DCB814(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_indexesOfObjectsWithOptions_passingTest_(a1, a2, a3);
  v6 = objc_msgSend_objectsAtIndexes_(a1, v5, v4);

  return v6;
}

id sub_241DCB86C(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_241DCB904;
  v4[3] = &unk_278D1DD58;
  v4[4] = a1;
  v1 = MEMORY[0x245D00360](v4);
  v2 = MEMORY[0x245D00360]();

  return v2;
}

uint64_t sub_241DCB904(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = *(a1 + 32);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v18;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_compareObject_toObject_(*(*(&v17 + 1) + 8 * v13), v10, v5, v6, v17);
        if (v14)
        {
          v15 = v14;
          goto LABEL_11;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

id sub_241DCBA34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_count(a1, v6, v7);
  if (v8)
  {
    v11 = v8;
    for (i = 0; i != v11; ++i)
    {
      v13 = objc_msgSend_objectAtIndex_(a1, v9, i);
      v16 = objc_msgSend_null(MEMORY[0x277CBEB68], v14, v15);

      if (v13 == v16)
      {
        v18 = MEMORY[0x245D00360](v4);
        v19 = v18;
        if (v18)
        {
          (*(v18 + 16))(v18, i);
        }
      }

      else
      {
        objc_msgSend_addObject_(v5, v17, v13);
      }
    }
  }

  v20 = objc_msgSend_copy(v5, v9, v10);

  return v20;
}

id sub_241DCBB3C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    v8 = objc_msgSend_count(a1, v6, v7);
    if (v8)
    {
      v11 = v8;
      v12 = 0;
      while (1)
      {
        v13 = objc_msgSend_objectAtIndex_(a1, v9, v12);
        v14 = v4[2](v4, v13);
        if (!v14)
        {
          break;
        }

        v16 = v14;
        objc_msgSend_addObject_(v5, v15, v14);

        if (v11 == ++v12)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_9:
    v18 = objc_msgSend_count(v5, v9, v10);
    if (v18 == objc_msgSend_count(a1, v19, v20))
    {
      v17 = objc_msgSend_copy(v5, v21, v22);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_241DCBC54(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], a2, a1);
  v5 = objc_msgSend_allObjects(v2, v3, v4);

  return v5;
}

id sub_241DCBCAC(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = a1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = objc_msgSend_valueForKey_(v14, v10, v4, v20);
        if ((objc_msgSend_containsObject_(v6, v16, v15) & 1) == 0)
        {
          objc_msgSend_addObject_(v6, v17, v15);
          objc_msgSend_addObject_(v5, v18, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
    }

    while (v11);
  }

  return v5;
}

id sub_241DCBE28(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  if (objc_msgSend_count(v4, v6, v7))
  {
    v10 = objc_msgSend_mutableCopy(v5, v8, v9);
    objc_msgSend_removeObjectsInArray_(v10, v11, v4);
    v14 = objc_msgSend_copy(v10, v12, v13);

    v5 = v14;
  }

  return v5;
}

id sub_241DCBEB0(void *a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a1;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v27, v31, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = objc_msgSend_valueForKey_(v12, v8, v4);
        v14 = objc_opt_class();
        v21 = BUClassAndProtocolCast(v13, v14, 1, v15, v16, v17, v18, v19, &unk_285401360);
        if (v21)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v5, v20, v12, v21);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v27, v31, 16);
    }

    while (v9);
  }

  v24 = objc_msgSend_copy(v5, v22, v23);

  return v24;
}

id sub_241DCC04C(void *a1)
{
  v2 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_msgSend_initWithString_(v2, v3, @"[");
  v6 = objc_msgSend_componentsJoinedByString_(a1, v5, @",");
  objc_msgSend_appendString_(v4, v7, v6);

  objc_msgSend_appendString_(v4, v8, @"]");
  v11 = objc_msgSend_copy(v4, v9, v10);

  return v11;
}

void sub_241DCC0E4(id a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v67 = a5;
  if (v8 != a1 && v8)
  {
    v69 = objc_msgSend_count(v8, v10, v11);
    v66 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB70], v12, v8);
    v13 = a1;
    v15 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB40], v14, v13);
    v70 = v13;
    v17 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v16, v13);
    v65 = v8;
    v19 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], v18, v8);
    v68 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v20, v19);
    objc_msgSend_minusSet_(v68, v21, v17);
    v64 = v17;
    v23 = objc_msgSend_setWithSet_(MEMORY[0x277CBEB58], v22, v17);
    v63 = v19;
    objc_msgSend_minusSet_(v23, v24, v19);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v25 = v23;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v71, v75, 16);
    if (v27)
    {
      v29 = v27;
      v30 = *v72;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v72 != v30)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v71 + 1) + 8 * i);
          v33 = objc_msgSend_indexOfObject_(v15, v28, v32);
          if (v33 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v34 = v33;
            objc_msgSend_removeObjectAtIndex_(v70, v28, v33);
            objc_msgSend_removeObjectAtIndex_(v15, v35, v34);
            if (v9)
            {
              v9[2](v9, v32, v34);
            }
          }
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v71, v75, 16);
      }

      while (v29);
    }

    v36 = v70;
    if (objc_msgSend_count(v70, v37, v38))
    {
      v40 = 0;
      v41 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v42 = objc_msgSend_objectAtIndex_(v70, v39, v40);
        v44 = objc_msgSend_indexOfObject_(v66, v43, v42);
        if (v41 == 0x7FFFFFFFFFFFFFFFLL || v44 > v41)
        {
          ++v40;
          v41 = v44;
        }

        else
        {
          objc_msgSend_removeObjectAtIndex_(v70, v45, v40);
          objc_msgSend_removeObjectAtIndex_(v15, v46, v40);
          if (v9)
          {
            v9[2](v9, v42, v40);
          }

          objc_msgSend_addObject_(v68, v47, v42);
        }
      }

      while (v40 < objc_msgSend_count(v70, v48, v49));
    }

    v8 = v65;
    if (v69)
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = objc_msgSend_objectAtIndex_(v65, v39, v50);
        if (objc_msgSend_containsObject_(v68, v53, v52))
        {
          v56 = v51;
          while (v69 != v56)
          {
            v57 = objc_msgSend_objectAtIndex_(v65, v54, v56);
            v59 = objc_msgSend_indexOfObject_(v15, v58, v57);

            ++v56;
            if (v59 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v36 = v70;
              objc_msgSend_insertObject_atIndex_(v70, v54, v52, v59);
              objc_msgSend_insertObject_atIndex_(v15, v60, v52, v59);
              goto LABEL_30;
            }
          }

          v36 = v70;
          v59 = objc_msgSend_count(v70, v54, v55);
          objc_msgSend_addObject_(v70, v61, v52);
          objc_msgSend_addObject_(v15, v62, v52);
LABEL_30:
          if (v67)
          {
            v67[2](v67, v52, v59);
          }
        }

        ++v50;
        ++v51;
      }

      while (v50 != v69);
    }
  }
}

void sub_241DCC8D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

BOOL sub_241DCC918(void *a1, int a2, int a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v6);
  *(*(a1[5] + 8) + 24) -= v6;
  *(*(a1[6] + 8) + 24) += v6;
  v7 = a1[4];
  v10 = objc_msgSend_offset(v7, v8, v9);
  objc_msgSend_setOffset_(v7, v11, v10 + v6);
  return *(*(a1[5] + 8) + 24) != 0;
}

uint64_t sub_241DCC9BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_241DCC9D4(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    if (v8)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
    }
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_241DCCBAC;
    v19[3] = &unk_278D1DDA8;
    v20 = *(a1 + 48);
    v19[4] = *(a1 + 32);
    v21 = &v22;
    dispatch_data_apply(v7, v19);
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      size = dispatch_data_get_size(v7);
      if (size > v23[3])
      {
        v13 = size;
        v14 = objc_msgSend_leftoverData(*(a1 + 32), v11, v12);
        subrange = dispatch_data_create_subrange(v7, v23[3], v13 - v23[3]);
        concat = dispatch_data_create_concat(v14, subrange);
        objc_msgSend_setLeftoverData_(*(a1 + 32), v17, concat);
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  v18 = a2 ^ 1;
  if (v9)
  {
    v18 = 0;
  }

  if ((v18 & 1) == 0 && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void sub_241DCCB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_241DCCBAC(void *a1, int a2, uint64_t a3, void *__src, size_t a5)
{
  if (*(*(a1[5] + 8) + 24) >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = *(*(a1[5] + 8) + 24);
  }

  memcpy(*(*(a1[6] + 8) + 24), __src, v7);
  *(*(a1[5] + 8) + 24) -= v7;
  *(*(a1[6] + 8) + 24) += v7;
  v8 = a1[4];
  v11 = objc_msgSend_offset(v8, v9, v10);
  objc_msgSend_setOffset_(v8, v12, v11 + v7);
  *(*(a1[7] + 8) + 24) = v7 + a3;
  return *(*(a1[5] + 8) + 24) != 0;
}

void sub_241DCD110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_241DCD154(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v9 = a4;
  v10 = *(*(a1 + 48) + 8);
  if (v9 && *(v10 + 24))
  {
    *(v10 + 24) = 0;
    objc_msgSend_handleFailureWithHandler_error_(*(a1 + 32), v7, *(a1 + 40), v9);
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!*(v10 + 24))
  {
    goto LABEL_10;
  }

  v11 = *(*(a1 + 56) + 8);
  if (!*(v11 + 24))
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      objc_msgSend_prepareBuffer(*(a1 + 32), v7, v8);
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v11 = *(*(a1 + 56) + 8);
    }

    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_processData_inflateResult_CRC_isDone_handler_(*(a1 + 32), v7, v12, v11 + 24, *(*(a1 + 72) + 8) + 24, a2, *(a1 + 40));
  }

LABEL_10:
}

void sub_241DCD438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_241DCD458(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (HIDWORD(a5))
  {
    v9 = BUZipLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1B7C();
    }

LABEL_4:

LABEL_31:
    v12 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_32;
  }

  v10 = *(a1 + 32);
  if (!*(v10 + 40))
  {
    goto LABEL_31;
  }

  *(v10 + 16) = a5;
  *(*(a1 + 32) + 8) = a4;
  v11 = *(a1 + 32);
  v12 = 1;
  if (*(v11 + 16))
  {
    v13 = *MEMORY[0x277D85CB0];
    while (1)
    {
      if (**(a1 + 56))
      {
LABEL_30:
        v12 = 1;
        goto LABEL_32;
      }

      v14 = inflate((v11 + 8), 0);
      **(a1 + 56) = v14;
      if ((v14 + 5) > 6 || ((1 << (v14 + 5)) & 0x61) == 0)
      {
        break;
      }

      v18 = v14;
      v11 = *(a1 + 32);
      if (v18 == 1 || !*(v11 + 40))
      {
        v19 = objc_msgSend_outBufferSize(v11, v15, v16) - *(*(a1 + 32) + 40);
        if (objc_msgSend_validateCRC(*(a1 + 32), v20, v21))
        {
          v24 = *(a1 + 64);
          if (v24)
          {
            if (v19 >= 0xFFFFFFFF)
            {
              v25 = -1;
            }

            else
            {
              v25 = v19;
            }

            **(a1 + 64) = crc32(*v24, *(*(a1 + 32) + 120), v25);
          }
        }

        v26 = *(a1 + 32);
        v27 = v26[15];
        v28 = objc_msgSend_outBufferSize(v26, v22, v23);
        v29 = dispatch_data_create(v27, v28, 0, v13);
        if (objc_msgSend_outBufferSize(*(a1 + 32), v30, v31) == v19)
        {
          subrange = v29;
        }

        else
        {
          subrange = dispatch_data_create_subrange(v29, 0, v19);
        }

        v33 = subrange;
        (*(*(a1 + 40) + 16))();
        objc_msgSend_setOutBufferSize_(*(a1 + 32), v34, 0);
        *(*(a1 + 32) + 120) = 0;
        v37 = objc_msgSend_remainingUncompressedSize(*(a1 + 32), v35, v36);
        v39 = 0;
        v40 = *(a1 + 32);
        if (v37 > v19)
        {
          v39 = objc_msgSend_remainingUncompressedSize(*(a1 + 32), v38, 0) - v19;
        }

        objc_msgSend_setRemainingUncompressedSize_(v40, v38, v39);
        if (v18 != 1)
        {
          objc_msgSend_prepareBuffer(*(a1 + 32), v41, v42);
        }

        v11 = *(a1 + 32);
      }

      if (!*(v11 + 16))
      {
        goto LABEL_30;
      }
    }

    v9 = BUZipLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1B00();
    }

    goto LABEL_4;
  }

LABEL_32:

  return v12;
}

void sub_241DCD828(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 alloc];
  v11 = objc_msgSend_initWithObjectsAndKeys_(v5, v6, v4, @"BUErrorExceptionUserInfoKey", 0);

  v8 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v7, @"BUErrorException", @"NSError exception", v11);
  objc_msgSend_raise(v8, v9, v10);
}

id sub_241DCD8C4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"BUErrorExceptionUserInfoKey");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_241DCD948(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5))
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%@://%@", @"ibooks", @"assetid");
    v10 = objc_msgSend_URLWithString_(v7, v9, v8);

    v12 = objc_msgSend_URLByAppendingPathComponent_(v10, v11, v3);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_241DCDA0C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_scheme(a1, a2, a3);
  v7 = objc_msgSend_host(a1, v5, v6);
  if (objc_msgSend_length(v4, v8, v9) && !objc_msgSend_caseInsensitiveCompare_(v4, v10, @"ibooks"))
  {
    v14 = objc_msgSend_pathComponents(a1, v11, v12);
    if (objc_msgSend_length(v7, v15, v16))
    {
      v13 = objc_msgSend_bu_storeURLTypeFromHost_(a1, v17, v7);
    }

    else if (objc_msgSend_count(v14, v17, v18) < 3)
    {
      v13 = 3;
    }

    else
    {
      v20 = objc_msgSend_objectAtIndexedSubscript_(v14, v19, 1);
      v13 = objc_msgSend_bu_storeURLTypeFromHost_(a1, v21, v20);
    }
  }

  else
  {
    v13 = 3;
  }

  return v13;
}

id sub_241DCDB00(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pathComponents(a1, a2, a3);
  if (objc_msgSend_bu_storeURLType(a1, v5, v6) == 3)
  {
    goto LABEL_2;
  }

  v10 = objc_msgSend_host(a1, v7, v8);
  v13 = objc_msgSend_length(v10, v11, v12);

  if (v13)
  {
    objc_msgSend_objectAtIndexedSubscript_(v4, v14, 1);
  }

  else
  {
    if (objc_msgSend_count(v4, v14, v15) < 3)
    {
LABEL_2:
      v9 = 0;
      goto LABEL_8;
    }

    objc_msgSend_objectAtIndexedSubscript_(v4, v16, 2);
  }
  v9 = ;
LABEL_8:

  return v9;
}

id sub_241DCDBB0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_host(a1, a2, a3);
  v6 = objc_msgSend_caseInsensitiveCompare_(v4, v5, @"play");

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_bu_dictionaryForQueryItems(a1, v7, v8);
    v9 = objc_msgSend_objectForKey_(v10, v11, @"pid");
  }

  return v9;
}

id sub_241DCDC40(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_bu_isbnForURI(a1, a2, a3);
  if (objc_msgSend_length(v3, v4, v5))
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"itms-books://itunes.apple.com/book/isbn%@", v3);
    v10 = objc_msgSend_URLWithString_(v7, v9, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_241DCDCE0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_bu_isbnForURI(a1, v5, v6);
  if (objc_msgSend_length(v7, v8, v9))
  {
    v12 = objc_msgSend_defaultBag(BUBag, v10, v11);
    v15 = objc_msgSend_booksISBNURL(v12, v13, v14);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_241DCDE4C;
    v23[3] = &unk_278D1DE58;
    v16 = &v24;
    v24 = v7;
    v25 = v4;
    v17 = v4;
    objc_msgSend_valueWithCompletion_(v15, v18, v23);

    v19 = v25;
  }

  else
  {
    v19 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241DCDF44;
    block[3] = &unk_278D1CEC8;
    v16 = &v22;
    v22 = v4;
    v20 = v4;
    dispatch_async(v19, block);
  }
}

void sub_241DCDE4C(uint64_t a1, void *a2)
{
  v14 = a2;
  if (!objc_msgSend_length(v14, v3, v4) || (v6 = objc_msgSend_rangeOfString_(v14, v5, @"{isbn}"), v6 == 0x7FFFFFFFFFFFFFFFLL) && (v6 = objc_msgSend_rangeOfString_(v14, v7, @"%@"), v6 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CBEBC0];
    v10 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v14, v7, v6, v7, *(a1 + 32));
    v8 = objc_msgSend_URLWithString_(v9, v11, v10);
  }

  v12 = MEMORY[0x245D00360](*(a1 + 40));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, v8);
  }
}

void sub_241DCDF44(uint64_t a1)
{
  v1 = MEMORY[0x245D00360](*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2](v1, 0);
    v1 = v2;
  }
}

uint64_t sub_241DCDF94(void *a1, const char *a2, uint64_t a3)
{
  v58[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3);
  v56 = 0;
  v8 = objc_msgSend_path(a1, v6, v7);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v5, v9, v8, &v56);

  if (v56 == 1)
  {
    v47 = v5;
    v13 = *MEMORY[0x277CBE868];
    v14 = *MEMORY[0x277CBE908];
    v58[0] = *MEMORY[0x277CBE868];
    v58[1] = v14;
    v48 = v14;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v58, 2);
    v18 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v16, v17);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_241DCE27C;
    v55[3] = &unk_278D1DE78;
    v55[4] = a3;
    v46 = v15;
    v20 = objc_msgSend_enumeratorAtURL_includingPropertiesForKeys_options_errorHandler_(v18, v19, a1, v15, 0, v55);

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = v20;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v51, v57, 16);
    if (v23)
    {
      v25 = v23;
      v26 = 0;
      v27 = *v52;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v52 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v51 + 1) + 8 * i);
          v50 = 0;
          ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v29, v24, &v50, v13, a3);
          v31 = v50;
          v34 = v31;
          if (!ResourceValue_forKey_error)
          {
            goto LABEL_19;
          }

          if ((objc_msgSend_BOOLValue(v31, v32, v33) & 1) == 0)
          {
            v49 = 0;
            v36 = objc_msgSend_getResourceValue_forKey_error_(v29, v35, &v49, v48, a3);
            v37 = v49;
            v40 = v37;
            if (!v36)
            {

LABEL_19:
              goto LABEL_20;
            }

            v26 += objc_msgSend_unsignedLongLongValue(v37, v38, v39);
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v51, v57, 16);
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_20:

    v41 = v46;
    v5 = v47;
    goto LABEL_21;
  }

  if (isDirectory)
  {
    v41 = objc_msgSend_path(a1, v11, v12);
    v21 = objc_msgSend_attributesOfItemAtPath_error_(v5, v42, v41, a3);
    v26 = objc_msgSend_fileSize(v21, v43, v44);
LABEL_21:

    goto LABEL_22;
  }

  v26 = 0;
LABEL_22:

  return v26;
}

uint64_t sub_241DCE27C(uint64_t a1, int a2, id a3)
{
  if (*(a1 + 32))
  {
    v5 = a3;
    **(a1 + 32) = a3;
  }

  return 0;
}

id sub_241DCE2C0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_absoluteString(a1, a2, a3);
  v5 = objc_msgSend_dataUsingEncoding_(v3, v4, 2483028224);

  v8 = objc_msgSend_bu_sha1(v5, v6, v7);

  return v8;
}

uint64_t sub_241DCE328(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_isFileURL(a1, v5, v6) && objc_msgSend_isFileURL(v4, v7, v8))
  {
    v11 = objc_msgSend_baseURL(a1, v9, v10);

    if (v11)
    {
      v14 = MEMORY[0x277CBEBC0];
      v15 = objc_msgSend_relativeString(a1, v12, v13);
      v18 = objc_msgSend_baseURL(a1, v16, v17);
      v21 = objc_msgSend_URLByStandardizingPath(v18, v19, v20);
      v23 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(v14, v22, v15, 0, v21);
    }

    else
    {
      v23 = a1;
    }

    v27 = objc_msgSend_path(v23, v24, v25);
    v30 = objc_msgSend_stringByStandardizingPath(v27, v28, v29);
    v33 = objc_msgSend_stringByResolvingSymlinksInPath(v30, v31, v32);

    v36 = objc_msgSend_path(v4, v34, v35);
    v39 = objc_msgSend_stringByStandardizingPath(v36, v37, v38);
    v42 = objc_msgSend_stringByResolvingSymlinksInPath(v39, v40, v41);

    if ((objc_msgSend_hasSuffix_(v42, v43, @"/") & 1) == 0)
    {
      v45 = objc_msgSend_stringByAppendingString_(v42, v44, @"/");

      v42 = v45;
    }

    hasPrefix = objc_msgSend_hasPrefix_(v33, v44, v42);
  }

  else
  {
    hasPrefix = 0;
  }

  return hasPrefix;
}

id sub_241DCE4B8(void *a1, const char *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_scheme(a1, a2, a3);
  v6 = objc_msgSend_caseInsensitiveCompare_(v4, v5, @"urn");

  if (v6)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v9 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v7, a1, 0);
  v12 = objc_msgSend_path(v9, v10, v11);
  v14 = objc_msgSend_componentsSeparatedByString_(v12, v13, @":");

  if (objc_msgSend_count(v14, v15, v16) == 2)
  {
    v18 = objc_msgSend_objectAtIndex_(v14, v17, 0);
    v20 = objc_msgSend_caseInsensitiveCompare_(v18, v19, @"isbn");

    if (!v20)
    {
      v23 = objc_msgSend_objectAtIndex_(v14, v21, 1);
      v25 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v23, v24, @"-", &stru_2853F3C08);

      if (objc_msgSend_length(v25, v26, v27) == 10)
      {
        v41[1] = unk_241DD6278;
        v42 = unk_241DD627A;
        objc_msgSend_getCharacters_range_(v25, v28, v41, 0, 9, *L"978");
        v31 = 0;
        v32 = 0;
        v33 = 1;
        do
        {
          v34 = *&v40[2 * v31];
          if ((v34 - 48) >= 0xA)
          {
            while (v31 != 11)
            {
              v34 = *&v40[2 * v31++ + 2];
              if ((v34 - 48) <= 9)
              {
                v33 = 0;
                goto LABEL_16;
              }
            }

            goto LABEL_28;
          }

LABEL_16:
          v35 = v34 - 48;
          if (v31)
          {
            v36 = 3;
          }

          else
          {
            v36 = 1;
          }

          v32 += (v35 * v36);
          ++v31;
        }

        while (v31 != 12);
        if ((v33 & 1) == 0)
        {
          goto LABEL_28;
        }

        v37 = v32 % 0xA;
        if (v37)
        {
          v38 = 58 - v37;
        }

        else
        {
          v38 = 48;
        }

        HIWORD(v42) = v38;
        v39 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v30, v40, 13);
      }

      else
      {
        if (objc_msgSend_length(v25, v28, v29) != 13)
        {
LABEL_28:
          v8 = 0;
          goto LABEL_29;
        }

        v39 = v25;
      }

      v8 = v39;
LABEL_29:

      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

LABEL_7:

  return v8;
}

uint64_t sub_241DCE72C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_bu_utType(a1, a2, a3);
  if (!v4)
  {
    v5 = BookUtilityLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1BF0();
    }
  }

  v6 = objc_msgSend_conformsToType_(v4, v3, *MEMORY[0x277CE1D50]);

  return v6;
}

uint64_t sub_241DCE7B0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_bu_utType(a1, a2, a3);
  if (!v4)
  {
    v5 = BookUtilityLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1C64();
    }
  }

  v6 = objc_msgSend_conformsToType_(v4, v3, *MEMORY[0x277CE1D80]);

  return v6;
}

id sub_241DCE834(void *a1, const char *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBE7B8];
  v13[0] = *MEMORY[0x277CBE7B8];
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v13, 1);
  v12 = 0;
  v6 = objc_msgSend_resourceValuesForKeys_error_(a1, v5, v4, &v12);
  v7 = v12;

  if (v7)
  {
    v9 = BookUtilityLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1CD8();
    }

LABEL_4:

    v10 = 0;
    goto LABEL_6;
  }

  v10 = objc_msgSend_objectForKeyedSubscript_(v6, v8, v3);
  if (!v10)
  {
    v9 = BookUtilityLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1D58(v9);
    }

    goto LABEL_4;
  }

LABEL_6:

  return v10;
}

uint64_t sub_241DCE984(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_length(v3, v4, v5))
  {
    if (objc_msgSend_caseInsensitiveCompare_(v3, v6, @"assetid"))
    {
      if (objc_msgSend_caseInsensitiveCompare_(v3, v7, @"storeid"))
      {
        if (objc_msgSend_caseInsensitiveCompare_(v3, v8, @"audiobookstoreid"))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
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
  }

  else
  {
    v9 = 3;
  }

  return v9;
}

id sub_241DCEA14(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v4 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x277CCACE0], v3, a1, 0);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = objc_msgSend_queryItems(v4, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = objc_msgSend_value(v15, v10, v11);
        v19 = objc_msgSend_name(v15, v17, v18);
        objc_msgSend_setObject_forKeyedSubscript_(v2, v20, v16, v19);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v25, v29, 16);
    }

    while (v12);
  }

  v23 = objc_msgSend_copy(v2, v21, v22);

  return v23;
}

id sub_241DCEB9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v37 = v5;
  v8 = objc_msgSend_componentsSeparatedByString_(v5, v7, @"&");
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v39, v43, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v40;
    v15 = @"=";
    do
    {
      v16 = 0;
      v38 = v13;
      do
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v17 = objc_msgSend_componentsSeparatedByString_(*(*(&v39 + 1) + 8 * v16), v11, v15);
        if (objc_msgSend_count(v17, v18, v19) == 2)
        {
          v22 = objc_msgSend_firstObject(v17, v20, v21);
          v25 = objc_msgSend_lastObject(v17, v23, v24);
          v28 = v25;
          if (a4)
          {
            objc_msgSend_stringByRemovingPercentEncoding(v25, v26, v27);
            v29 = v14;
            v30 = v15;
            v31 = v8;
            v32 = v6;
            v34 = v33 = a4;

            v28 = v34;
            a4 = v33;
            v6 = v32;
            v8 = v31;
            v15 = v30;
            v14 = v29;
            v13 = v38;
          }

          objc_msgSend_setObject_forKeyedSubscript_(v6, v26, v28, v22);
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v39, v43, 16);
    }

    while (v13);
  }

  v35 = objc_msgSend_copy(v6, v11, v12);

  return v35;
}

id sub_241DCED98()
{
  if (qword_27EC72A38 != -1)
  {
    sub_241DD1D9C();
  }

  v1 = qword_27EC72A30;

  return v1;
}

uint64_t sub_241DCEDDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCAB50], a2, a3);
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);
  v7 = qword_27EC72A30;
  qword_27EC72A30 = v6;

  v8 = qword_27EC72A30;

  return MEMORY[0x2821F9670](v8, sel_removeCharactersInString_, @"?=&+");
}

id sub_241DCEE40(void *a1, uint64_t a2, void *a3, int a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  obj = objc_msgSend_allKeys(v4, v7, v8);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v32, v36, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v33;
    v28 = v5;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v18 = objc_msgSend_objectForKeyedSubscript_(v4, v11, v15);
        if (a4)
        {
          objc_msgSend_bu_URLQueryParameterValueAllowedCharacterSet(a1, v16, v17);
          v20 = v19 = v13;
          v22 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v18, v21, v20);

          v13 = v19;
          v5 = v28;
          v18 = v22;
        }

        if (objc_msgSend_length(v5, v16, v17))
        {
          objc_msgSend_appendFormat_(v5, v23, @"&%@=%@", v15, v18);
        }

        else
        {
          objc_msgSend_appendFormat_(v5, v23, @"%@=%@", v15, v18);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v32, v36, 16);
    }

    while (v12);
  }

  v26 = objc_msgSend_copy(v5, v24, v25);

  return v26;
}

id sub_241DCF018(void *a1, uint64_t a2, void *a3, int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_path(a1, v7, v8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v10 = v9;
  v13 = objc_msgSend_UTF8String(v10, v11, v12);

  v14 = v6;
  v17 = objc_msgSend_UTF8String(v14, v15, v16);
  if (a4)
  {
    v18 = 8;
  }

  else
  {
    v18 = 0;
  }

  v19 = xattr_name_with_flags(v17, v18);
  if (v19)
  {
    v20 = v19;
    v21 = getxattr(v13, v19, 0, 0x100uLL, 0, 0);
    if (v21 != -1)
    {
      v22 = v21;
      if (v21 <= 0xFF)
      {
        v23 = &v30;
        getxattr(v13, v20, &v30, 0x100uLL, 0, 0);
      }

      else
      {
        v23 = malloc_type_calloc(v21 + 1, 1uLL, 0x100004077774924uLL);
        getxattr(v13, v20, v23, v22, 0, 0);
        if (!v23)
        {
LABEL_16:
          v25 = 0;
LABEL_23:
          free(v20);
          goto LABEL_24;
        }
      }

      if (*v23)
      {
        v27 = objc_alloc(MEMORY[0x277CCACA8]);
        v25 = objc_msgSend_initWithCString_encoding_(v27, v28, v23, 4);
      }

      else
      {
        v25 = 0;
      }

      if (v23 != &v30)
      {
        free(v23);
      }

      goto LABEL_23;
    }

    if (*__error() != 93)
    {
      v26 = BookUtilityLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_241DD1DB0();
      }
    }

    goto LABEL_16;
  }

  v24 = BookUtilityLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_241DD1E44();
  }

  v25 = 0;
LABEL_24:

  return v25;
}

uint64_t sub_241DCF264(void *a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_UTF8String(v9, v10, v11);
  v13 = strlen(v12);
  v14 = v8;
  v17 = objc_msgSend_UTF8String(v14, v15, v16);
  if (a5)
  {
    v18 = 8;
  }

  else
  {
    v18 = 0;
  }

  v19 = xattr_name_with_flags(v17, v18);
  if (v19)
  {
    v22 = v19;
    v23 = objc_msgSend_path(a1, v20, v21);
    v24 = v23;
    v27 = objc_msgSend_UTF8String(v24, v25, v26);
    v28 = setxattr(v27, v22, v12, v13, 0, 0);

    free(v22);
    if (!v28)
    {
      v30 = 1;
      goto LABEL_12;
    }

    v29 = BookUtilityLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1ED8();
    }
  }

  else
  {
    v29 = BookUtilityLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1F5C();
    }
  }

  v30 = 0;
LABEL_12:

  return v30;
}

BOOL sub_241DCF38C(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = v6;
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  if (a4)
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = xattr_name_with_flags(v10, v11);
  v15 = v12 == 0;
  if (!v12)
  {
    v23 = BookUtilityLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_241DD2064();
    }

    goto LABEL_12;
  }

  v16 = v12;
  v17 = objc_msgSend_path(a1, v13, v14);
  v18 = v17;
  v21 = objc_msgSend_UTF8String(v18, v19, v20);
  v22 = removexattr(v21, v16, 0);

  free(v16);
  if (v22 && *__error() != 93)
  {
    v23 = BookUtilityLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_241DD1FE0();
    }

LABEL_12:

    goto LABEL_13;
  }

  v15 = 1;
LABEL_13:

  return v15;
}