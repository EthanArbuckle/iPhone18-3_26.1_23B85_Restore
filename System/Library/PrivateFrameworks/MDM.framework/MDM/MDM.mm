uint64_t sub_2561F7814()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2561F784C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2561F79CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2561F80C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MDMAnalyticsSendCommandEvent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x277D246F8];
  v6 = v3;
  v7 = v4;
  AnalyticsSendEventLazy();
}

id __MDMAnalyticsSendCommandEvent_block_invoke(uint64_t a1)
{
  v20[9] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D24760];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 domain];

    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
    v2 = v4;
  }

  else
  {
    v5 = &unk_286850320;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    v6 = *MEMORY[0x277D24758];
  }

  v7 = *MEMORY[0x277D246E8];
  v19[0] = *MEMORY[0x277D246E0];
  v19[1] = v7;
  v20[0] = v6;
  v20[1] = v5;
  v8 = *MEMORY[0x277D246F0];
  v20[2] = v2;
  v9 = *MEMORY[0x277D24770];
  v19[2] = v8;
  v19[3] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v20[3] = v10;
  v19[4] = *MEMORY[0x277D24718];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v20[4] = v11;
  v19[5] = *MEMORY[0x277D24738];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 50)];
  v20[5] = v12;
  v19[6] = *MEMORY[0x277D24740];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 51)];
  v20[6] = v13;
  v19[7] = *MEMORY[0x277D24750];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 52)];
  v20[7] = v14;
  v19[8] = *MEMORY[0x277D24748];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 53)];
  v20[8] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:9];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __MDMAnalyticsSendPushEvent_block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277D24768];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  v9[0] = v2;
  v8[1] = *MEMORY[0x277D24750];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 36)];
  v9[1] = v3;
  v8[2] = *MEMORY[0x277D24748];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 37)];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_2561FA45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2561FC774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2561FCA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2561FD1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2561FE774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&a22);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2562002B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256200AA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = [v2 userInfo];
    v4 = [v3 objectForKeyedSubscript:@"error"];

    [(MDMAbstractTunnelParser *)MDMParser responseWithError:v4];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x256200A58);
  }

  _Unwind_Resume(exception_object);
}

BOOL MDMKeybagCreateMDMEscrowWithPasscodeContextData(void *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 DMCMakeUUID];
  v36 = 0;
  v6 = MDMKeybagCopyEscrowWithACM(v5, v4, &v36);

  v7 = v36;
  if (v6)
  {
    v35 = a2;
    v34 = v6;
    v8 = MEMORY[0x277D03520];
    v9 = [MEMORY[0x277D03520] dataFromString:v5];
    v10 = *MEMORY[0x277D24D00];
    v11 = *MEMORY[0x277D24800];
    v12 = *MEMORY[0x277CDBF00];
    v13 = [MEMORY[0x277D24648] sharedConfiguration];
    v14 = [v13 personaID];
    v38 = 0;
    BYTE2(v31) = v14 != 0;
    LOWORD(v31) = 256;
    [v8 setData:v9 forService:v10 account:v11 label:0 description:0 access:v12 group:0 useSystemKeychain:v31 sysBound:&v38 enforcePersonalPersona:? outError:?];
    v15 = v38;

    if (v15)
    {
      v16 = v34;
      v17 = *DMCLogObjects();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v15;
        _os_log_impl(&dword_2561F5000, v17, OS_LOG_TYPE_ERROR, "Failed to store MDM escrow secret into keychain. Error: %@", buf, 0xCu);
      }

      a2 = v35;
    }

    else
    {
      v18 = MEMORY[0x277D03520];
      v19 = *MEMORY[0x277D247F8];
      v20 = *MEMORY[0x277CDBEE8];
      v21 = [MEMORY[0x277D24648] sharedConfiguration];
      v22 = [v21 personaID];
      v37 = 0;
      BYTE2(v32) = v22 != 0;
      LOWORD(v32) = 256;
      v23 = v18;
      v16 = v34;
      v33 = v10;
      [v23 setData:v34 forService:v10 account:v19 label:0 description:0 access:v20 group:0 useSystemKeychain:v32 sysBound:&v37 enforcePersonalPersona:? outError:?];
      v15 = v37;

      a2 = v35;
      if (!v15)
      {
LABEL_11:

        goto LABEL_12;
      }

      v24 = *DMCLogObjects();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v15;
        _os_log_impl(&dword_2561F5000, v24, OS_LOG_TYPE_ERROR, "Failed to store MDM escrow data into keychain. Error: %@", buf, 0xCu);
      }

      v25 = MEMORY[0x277D03520];
      v26 = [MEMORY[0x277D24648] sharedConfiguration];
      v27 = [v26 personaID];
      [v25 removeItemForService:v33 account:v11 label:0 description:0 useSystemKeychain:0 enforcePersonalPersona:v27 != 0 group:0];

      v16 = v34;
    }

    goto LABEL_11;
  }

LABEL_12:
  if (a2 && v7)
  {
    v28 = v7;
    *a2 = v7;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v7 == 0;
}

id MDMKeybagCopyEscrowWithACM(void *a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = MDMCreateLAContextWithPasscode(a1);
  v7 = [v6 externalizedContext];
  if (+[MDMMCInterface isPasscodeSet](MDMMCInterface, "isPasscodeSet") && ![v5 length])
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D033D0];
    v22 = DMCErrorArray();
    v14 = [v20 DMCErrorWithDomain:v21 code:37002 descriptionArray:v22 errorType:{*MEMORY[0x277D032F8], 0}];
  }

  else
  {
    EscrowWithACM = MKBKeyBagCreateEscrowWithACM();
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v29 = EscrowWithACM;
      _os_log_impl(&dword_2561F5000, v9, OS_LOG_TYPE_INFO, "MKBKeyBagCreateEscrowWithACM finished with result: %d", buf, 8u);
    }

    if (EscrowWithACM)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277D033D0];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:EscrowWithACM];
      v13 = DMCErrorArray();
      v14 = [v10 DMCErrorWithDomain:v11 code:37003 descriptionArray:v13 errorType:{*MEMORY[0x277D032F8], v12, 0}];
    }

    else
    {
      v15 = MKBKeyBagCopyData();
      if (v15)
      {
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277D033D0];
        v18 = [MEMORY[0x277CCABB0] numberWithInt:v15];
        v19 = DMCErrorArray();
        v14 = [v16 DMCErrorWithDomain:v17 code:37004 descriptionArray:v19 errorType:{*MEMORY[0x277D032F8], v18, 0}];
      }

      else
      {
        v27 = *DMCLogObjects();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v29 = 0;
          v30 = 2112;
          v31 = 0;
          _os_log_impl(&dword_2561F5000, v27, OS_LOG_TYPE_INFO, "MKBKeyBagCopyData finished with result: %d %@", buf, 0x12u);
        }

        v14 = 0;
      }
    }
  }

  if (v14)
  {
    if (a3)
    {
      v23 = v14;
      v24 = 0;
      *a3 = v14;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

BOOL MDMKeybagCreateMDMEscrowWithPasscode(void *a1, void *a2)
{
  v3 = MDMCreateLAContextWithPasscode(a1);
  v4 = [v3 externalizedContext];
  MDMEscrowWithPasscodeContextData = MDMKeybagCreateMDMEscrowWithPasscodeContextData(v4, a2);

  return MDMEscrowWithPasscodeContextData;
}

id MDMCreateLAContextWithPasscode(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = MDMCreateLAContextWithPasscodeData(v1);

  return v2;
}

id MDMKeybagRetrieveMDMEscrowDataIfPresent(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D03520];
  v3 = *MEMORY[0x277D24D00];
  v4 = *MEMORY[0x277D247F8];
  v5 = [MEMORY[0x277D24648] sharedConfiguration];
  v6 = [v5 personaID];
  v18 = 0;
  LOBYTE(v17) = v6 != 0;
  v7 = [v2 dataFromService:v3 account:v4 label:0 description:0 group:0 useSystemKeychain:0 enforcePersonalPersona:v17 outError:&v18];
  v8 = v18;

  if (!v7)
  {
    if (a1)
    {
      v9 = v8;
      *a1 = v8;
    }

    v10 = *DMCLogObjects();
    if (v8)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      *buf = 138412290;
      v20 = v8;
      v11 = "Unable to retrieve escrow keybag from the keychain. Error: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 12;
    }

    else
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v11 = "No escrow keybag found in the keychain.";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
      v14 = 2;
    }

    _os_log_impl(&dword_2561F5000, v12, v13, v11, buf, v14);
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

void MDMKeybagDeleteMDMEscrowData()
{
  v0 = MEMORY[0x277D03520];
  v1 = *MEMORY[0x277D24D00];
  v2 = *MEMORY[0x277D247F8];
  v4 = [MEMORY[0x277D24648] sharedConfiguration];
  v3 = [v4 personaID];
  [v0 removeItemForService:v1 account:v2 label:0 description:0 useSystemKeychain:0 enforcePersonalPersona:v3 != 0 group:0];
}

void MDMKeybagDeleteMDMEscrowSecret()
{
  v0 = MEMORY[0x277D03520];
  v1 = *MEMORY[0x277D24D00];
  v2 = *MEMORY[0x277D24800];
  v4 = [MEMORY[0x277D24648] sharedConfiguration];
  v3 = [v4 personaID];
  [v0 removeItemForService:v1 account:v2 label:0 description:0 useSystemKeychain:0 enforcePersonalPersona:v3 != 0 group:0];
}

id MDMCreateLAContextWithPasscodeData(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v3 = [v2 setCredential:v1 type:-8];

    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v5 = *DMCLogObjects();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_ERROR, "Failed to set credential for context", v7, 2u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MDMKeybagCreateSupervisionEscrowWithPasscode(void *a1, void *a2)
{
  v3 = MDMCreateLAContextWithPasscode(a1);
  v4 = [v3 externalizedContext];
  v11 = 0;
  v5 = MDMKeybagCopyEscrowWithACM(@"com.apple.Chaperone", v4, &v11);
  v6 = v11;
  v7 = v6;
  if (v6)
  {
    if (a2)
    {
      v8 = v6;
      v9 = 0;
      *a2 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

void sub_2562029B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256202ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_256203484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25620921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getPRSettingsProviderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!ProximityReaderLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __ProximityReaderLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27982C0E0;
    v7 = 0;
    ProximityReaderLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (ProximityReaderLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PRSettingsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRSettingsProviderClass_block_invoke_cold_1();
  }

  getPRSettingsProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ProximityReaderLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ProximityReaderLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_256209E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256214A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_256220830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2562277D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
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

void sub_256229724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_256229C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25622C880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25622DC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25622DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25622E9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose((v67 - 224), 8);
  _Block_object_dispose((v67 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25622F698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose((v35 - 128), 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_256230454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 168), 8);
  _Block_object_dispose((v32 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_256230C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2562333C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256237378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256237A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2562394CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256239790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256239DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25623A088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25623A594(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25623A6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25623B154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25623C094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_25623CB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25623D360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v26 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_25623DED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25623FBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256240034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2562406FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256240CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25624197C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_256241B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2562423F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2562425FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25624319C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_256244D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256245194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256245C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _performBlockOnMainThread(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [MEMORY[0x277CCACC8] mainThread];

  if (v2 == v3)
  {
    v1[2](v1);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___performBlockOnMainThread_block_invoke;
    block[3] = &unk_27982CC88;
    v5 = v1;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

void sub_256248F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256249100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25624949C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256249768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_256249F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_25624A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_25624D42C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_25624D47C();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25624A6C4, 0, 0);
}

uint64_t sub_25624A6C4()
{
  v1 = v0[9];
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D03160], v0[4]);
  sub_25624D46C();
  v2 = *(MEMORY[0x277D03180] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_25624A790;
  v4 = v0[9];

  return MEMORY[0x2821593E8]();
}

uint64_t sub_25624A790()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_25624BBAC;
  }

  else
  {
    v3 = sub_25624BBA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25624A8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F832A78, &qword_256252670) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_25624B694(a3, v26 - v10);
  v12 = sub_25624D4BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25624B704(v11);
  }

  else
  {
    sub_25624D4AC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25624D49C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25624D48C() + 32;
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

      sub_25624B704(a3);

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

  sub_25624B704(a3);
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

void sub_25624ABA0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_25624D41C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_25624AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_25624D42C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_25624D47C();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25624AF34, 0, 0);
}

uint64_t sub_25624AF34()
{
  v1 = v0[9];
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D03160], v0[4]);
  sub_25624D46C();
  v2 = *(MEMORY[0x277D03168] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_25624B000;
  v4 = v0[9];

  return MEMORY[0x2821593C8]();
}

uint64_t sub_25624B000()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_25624B1A8;
  }

  else
  {
    v3 = sub_25624B114;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25624B114()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 48);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25624B1A8()
{
  v1 = v0[11];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1);

  v5 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25624B29C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F832A78, &qword_256252670) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v18 - v11;
  v13 = _Block_copy(a3);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = sub_25624D4BC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a6;
  v16[5] = v14;
  sub_25624A8A4(0, 0, v12, a7, v16);
}

DMCAppsClientLite __swiftcall DMCAppsClientLite.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for DMCAppsClientLite()
{
  result = qword_27F832CE8;
  if (!qword_27F832CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F832CE8);
  }

  return result;
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

uint64_t sub_25624B508()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25624B5A0;

  return sub_25624AE18(v4, v5, v6, v2, v3);
}

uint64_t sub_25624B5A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25624B694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F832A78, &qword_256252670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25624B704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F832A78, &qword_256252670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25624B76C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25624B864;

  return v7(a1);
}

uint64_t sub_25624B864()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25624B95C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25624BBA8;

  return sub_25624B76C(a1, v5);
}

uint64_t sub_25624BA14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25624B5A0;

  return sub_25624B76C(a1, v5);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25624BB0C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25624BBA8;

  return sub_25624A5A8(v4, v5, v6, v2, v3);
}