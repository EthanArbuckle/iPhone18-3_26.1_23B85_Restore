void sub_254C6A438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _IPDefaultLog()
{
  if (_IPDefaultLog_onceToken != -1)
  {
    _IPDefaultLog_cold_1();
  }

  v1 = _IPDefaultLog_log;

  return v1;
}

id _IPServerLog()
{
  if (_IPServerLog_onceToken != -1)
  {
    _IPServerLog_cold_1();
  }

  v1 = _IPServerLog_log;

  return v1;
}

id _IPClientLog()
{
  if (_IPClientLog_onceToken != -1)
  {
    _IPClientLog_cold_1();
  }

  v1 = _IPClientLog_log;

  return v1;
}

id IPServerExportedInterface()
{
  if (IPServerExportedInterface_onceToken != -1)
  {
    IPServerExportedInterface_cold_1();
  }

  v1 = IPServerExportedInterface_interface;

  return v1;
}

uint64_t __IPServerExportedInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286719D18];
  v1 = IPServerExportedInterface_interface;
  IPServerExportedInterface_interface = v0;

  [IPServerExportedInterface_interface setClass:objc_opt_class() forSelector:sel_actionBarrier_ argumentIndex:0 ofReply:1];
  [IPServerExportedInterface_interface setClass:objc_opt_class() forSelector:sel_registerAsProgressObserver_ argumentIndex:0 ofReply:1];
  v2 = IPServerExportedInterface_interface;
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getActiveInstallations_ argumentIndex:0 ofReply:1];

  [IPServerExportedInterface_interface setClass:objc_opt_class() forSelector:sel_getActiveInstallations_ argumentIndex:1 ofReply:1];
  v6 = IPServerExportedInterface_interface;
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_getAllInstallableStates_ argumentIndex:0 ofReply:1];

  [IPServerExportedInterface_interface setClass:objc_opt_class() forSelector:sel_getAllInstallableStates_ argumentIndex:1 ofReply:1];
  [IPServerExportedInterface_interface setClass:objc_opt_class() forSelector:sel_getProgressForIdentity_completion_ argumentIndex:0 ofReply:0];
  [IPServerExportedInterface_interface setClass:objc_opt_class() forSelector:sel_getProgressForIdentity_completion_ argumentIndex:0 ofReply:1];
  v10 = IPServerExportedInterface_interface;
  v11 = objc_opt_class();

  return [v10 setClass:v11 forSelector:sel_getProgressForIdentity_completion_ argumentIndex:1 ofReply:1];
}

id IPClientExportedInterface()
{
  if (IPClientExportedInterface_onceToken != -1)
  {
    IPClientExportedInterface_cold_1();
  }

  v1 = IPClientExportedInterface_interface;

  return v1;
}

uint64_t __IPClientExportedInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28671A570];
  v1 = IPClientExportedInterface_interface;
  IPClientExportedInterface_interface = v0;

  [IPClientExportedInterface_interface setClass:objc_opt_class() forSelector:sel_installableForIdentity_progressChanged_ argumentIndex:0 ofReply:0];
  [IPClientExportedInterface_interface setClass:objc_opt_class() forSelector:sel_installableForIdentity_progressChanged_ argumentIndex:1 ofReply:0];
  v2 = IPClientExportedInterface_interface;
  v3 = objc_opt_class();

  return [v2 setClass:v3 forSelector:sel_installableForIdentity_progressEndedForReason_ argumentIndex:0 ofReply:0];
}

void sub_254C6B750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_254C6C80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254C6CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254C6D118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254C6D248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254C6D388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254C6D4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254C6DE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_254C6DFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254C6E770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_254C6F118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void IPDoWithLock(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v3[2](v3);

  os_unfair_lock_unlock(a1);
}

id defaultBehaviorQueue()
{
  if (defaultBehaviorQueue_onceToken != -1)
  {
    defaultBehaviorQueue_cold_1();
  }

  v1 = defaultBehaviorQueue_queue;

  return v1;
}

uint64_t __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x259C29600](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_254C7022C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254C70850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254C70A5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_254C710E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_254C7140C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_254C71810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254C71A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254C71CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void __defaultBehaviorQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.InstallProgress.IPGlobalInstallableStateSourceDefaultBehavior.default", v2);
  v1 = defaultBehaviorQueue_queue;
  defaultBehaviorQueue_queue = v0;
}

void __defaultConnectionProvider_block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    v0 = &__block_literal_global_146;
  }

  else
  {
    v1 = objc_alloc_init(IPLocalNullXPCServer);
    v2 = _block_invoke_localNullServer;
    _block_invoke_localNullServer = v1;

    v0 = &__block_literal_global_153;
  }

  v3 = defaultConnectionProvider_provider;
  defaultConnectionProvider_provider = v0;
}

id __defaultConnectionProvider_block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.InstallProgress.xpc" options:0];

  return v0;
}

id __defaultConnectionProvider_block_invoke_3()
{
  v0 = [_block_invoke_localNullServer newClientConnection];

  return v0;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id _IPMakeNSErrorImpl(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = MEMORY[0x277CBEB38];
  v11 = a1;
  v12 = objc_alloc_init(v10);
  v13 = v12;
  if (v9)
  {
    [v12 addEntriesFromDictionary:v9];
  }

  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  [v13 setObject:v14 forKeyedSubscript:@"_IPFunction"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  [v13 setObject:v15 forKeyedSubscript:@"_IPLine"];

  v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v11 code:a2 userInfo:v13];

  return v16;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_2@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t IPProgressPhaseForLSInstallPhase(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_254C7A0C8[a1];
  }
}

uint64_t LSInstallPhaseForIPProgressPhase(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return -1;
  }

  else
  {
    return qword_254C7A0F0[a1 - 1];
  }
}

uint64_t IPXPCCopyDescription(uint64_t a1)
{
  if (a1)
  {
    v1 = MEMORY[0x259C29760]();
  }

  else
  {
    v1 = 0;
  }

  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = "(null)";
  }

  v4 = [v2 initWithUTF8String:v3];
  free(v1);
  return v4;
}

id IPDecodeDictionaryWithKeyClassAndValueClass(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), a3, a4, 0}];
  v10 = v7;
  v11 = v9;
  v12 = [v10 decodeObjectOfClasses:v11 forKey:v8];
  v13 = v12;
  if (v12 && (IPObjectIsKindOfClasses(v12, v11) & 1) == 0)
  {

    v14 = _IPMakeNSErrorImpl(*MEMORY[0x277CCA050], 4864, "IPDecodeObjectOfClasses", 61, 0);
    [v10 failWithError:v14];

    v13 = 0;
  }

  if (v13)
  {
    v15 = [MEMORY[0x277CBEB98] setWithObject:a3];
    v16 = [MEMORY[0x277CBEB98] setWithObject:a4];
    v17 = v13;
    v18 = v15;
    v19 = v16;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    if (_NSIsNSDictionary())
    {
      if (v18 | v19)
      {
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __IPIsDictionaryWithKeysAndValuesOfClasses_block_invoke;
        v24[3] = &unk_2797B22A0;
        v25 = v18;
        v26 = v19;
        v27 = &v28;
        [v17 enumerateKeysAndObjectsUsingBlock:v24];
      }
    }

    else
    {
      *(v29 + 24) = 0;
    }

    v20 = *(v29 + 24);
    _Block_object_dispose(&v28, 8);

    if (v20 == 1)
    {
      v21 = v17;
      goto LABEL_13;
    }

    v22 = _IPMakeNSErrorImpl(*MEMORY[0x277CCA050], 4864, "IPDecodeDictionaryWithKeyClassAndValueClass", 77, 0);
    [v10 failWithError:v22];
  }

  v21 = 0;
LABEL_13:

  return v21;
}

void sub_254C75CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IPObjectIsKindOfClasses(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

void __IPIsDictionaryWithKeysAndValuesOfClasses_block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a1[4];
  if (v8)
  {
    v9 = IPObjectIsKindOfClasses(v12, v8) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[5];
  if (v10)
  {
    v11 = IPObjectIsKindOfClasses(v7, v10) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if ((v9 | v11) == 1)
  {
    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }
}

id IPLSIdentityFromMIIdentity(void *a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x277CC1E70]);
  v5 = [v3 bundleID];
  v6 = [v4 initWithBundleIdentifier:v5 allowPlaceholder:1 error:a2];

  if (v6)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = v6;
    v7 = [v6 identities];
    v8 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v42;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        if ([v13 personaType] == 3 || objc_msgSend(v13, "personaType") == 1)
        {
          v14 = v13;

          v10 = v14;
        }

        v15 = [v13 personaUniqueString];
        v16 = [v3 personaUniqueString];
        v17 = [v15 isEqualToString:v16];

        if (v17)
        {
          break;
        }

        if (v9 == ++v12)
        {
          v9 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_21;
        }
      }

      v18 = v13;

      v6 = v39;
      if (v18)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v10 = 0;
LABEL_21:

      v6 = v39;
    }

    v27 = _IPDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      IPLSIdentityFromMIIdentity_cold_1();
    }

    v10 = v10;
    v18 = v10;
  }

  else
  {
    v19 = _IPDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&dword_254C69000, v19, OS_LOG_TYPE_DEFAULT, "No record found for identity %@; manually creating one from constituent values", buf, 0xCu);
    }

    v40 = 0;
    v20 = v3;
    v21 = MEMORY[0x277CC1E58];
    v22 = [v20 personaUniqueString];
    v45 = 0;
    LODWORD(v21) = [v21 personaWithUniqueString:v22 getPersonaType:&v40 error:&v45];
    v23 = v45;

    if (v21)
    {
      v10 = [v20 personaUniqueString];
      v24 = 0;
      v25 = 0;
      v26 = 1;
    }

    else
    {
      v28 = _IPDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v20 personaUniqueString];
        *buf = 138412546;
        *&buf[4] = v29;
        v48 = 2112;
        v49 = v23;
        _os_log_impl(&dword_254C69000, v28, OS_LOG_TYPE_DEFAULT, "Got error looking up persona unique string %@ (%@), falling back to personal", buf, 0x16u);
      }

      *buf = v23;
      v25 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0 withError:buf];
      v30 = *buf;

      if (v25)
      {
        v10 = [v25 userPersonaUniqueString];
        v24 = 0;
        v26 = 1;
        v40 = 1;
      }

      else
      {
        v31 = v30;
        v10 = 0;
        v26 = 0;
        v24 = v30;
      }

      v23 = v30;
    }

    v32 = v24;
    if (v26)
    {
      v33 = objc_alloc(MEMORY[0x277CC1E58]);
      v34 = [v20 bundleID];
      v18 = [v33 initWithBundleIdentifier:v34 URL:0 personaUniqueString:v10 personaType:v40];
    }

    else
    {
      v35 = _IPDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        IPLSIdentityFromMIIdentity_cold_2();
      }

      if (a2)
      {
        v36 = v32;
        v18 = 0;
        *a2 = v32;
      }

      else
      {
        v18 = 0;
      }
    }
  }

LABEL_39:

  v37 = *MEMORY[0x277D85DE8];

  return v18;
}

void IPLSIdentityFromMIIdentity_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1(&dword_254C69000, v0, v1, "falling back to identity %@ for %@");
  v2 = *MEMORY[0x277D85DE8];
}

void IPLSIdentityFromMIIdentity_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1(&dword_254C69000, v0, v1, "could not resolve persona of %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}