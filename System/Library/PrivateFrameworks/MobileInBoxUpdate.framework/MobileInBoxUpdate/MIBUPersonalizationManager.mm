@interface MIBUPersonalizationManager
+ (__AMAuthInstall)_createBaseAMAIObjectForDevice:(id)a3 error:(id *)a4;
+ (id)requestTatsuTicketForDevice:(id)a3 error:(id *)a4;
@end

@implementation MIBUPersonalizationManager

+ (id)requestTatsuTicketForDevice:(id)a3 error:(id *)a4
{
  v100 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v93 = 49;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v93 length:1];
  v8 = objc_opt_new();
  theDict = 0;
  if (MIBUOnceToken != -1)
  {
    +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
  }

  v9 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_259ABF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting personalization ticket ...", buf, 0xCu);
  }

  if (MIBUOnceToken != -1)
  {
    +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
  }

  v10 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v95[0] = @"SerialNumber";
    v11 = v10;
    v82 = [v6 serialNumber];
    v96[0] = v82;
    v95[1] = @"ECID";
    v81 = [v6 ecid];
    v96[1] = v81;
    v95[2] = @"BoardID";
    v80 = [v6 boardID];
    v96[2] = v80;
    v95[3] = @"ChipID";
    v79 = [v6 chipID];
    v96[3] = v79;
    v95[4] = @"Security Domain";
    v78 = [v6 securityDomain];
    v96[4] = v78;
    v95[5] = @"APNounce";
    v77 = [v6 apNonce];
    v96[5] = v77;
    v95[6] = @"Production Mode";
    v84 = v7;
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "productionMode")}];
    v96[6] = v12;
    v95[7] = @"Security Mode";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "securityMode")}];
    v96[7] = v13;
    v95[8] = @"UID Mode";
    v83 = a1;
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "uidMode")}];
    v96[8] = v14;
    v95[9] = @"SEPNonce";
    [v6 sepNonce];
    v16 = v15 = a4;
    v96[9] = v16;
    v95[10] = @"Entitlement";
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "entitlement")}];
    v96[10] = v17;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:11];
    v19 = v18 = v8;
    *buf = 138543618;
    *&buf[4] = v6;
    v98 = 2114;
    v99 = v19;
    _os_log_impl(&dword_259ABF000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Device Info: %{public}@", buf, 0x16u);

    v8 = v18;
    v7 = v84;

    a4 = v15;
    a1 = v83;
  }

  if (os_variant_has_internal_content())
  {
    v20 = +[MIBUTestPreferences sharedInstance];
    v21 = [v20 useLiveTatsu];

    if ((v21 & 1) == 0)
    {
      if (MIBUOnceToken != -1)
      {
        +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
      }

      v37 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v6;
        _os_log_impl(&dword_259ABF000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: Faking Tatsu ticket, waiting for 30s...", buf, 0xCu);
      }

      sleep(0x1Eu);
      v38 = +[MIBUTestPreferences sharedInstance];
      v39 = [v38 fakeTatsuPayloadPath];

      if (v39)
      {
        if (MIBUOnceToken != -1)
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        v40 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          *&buf[4] = v6;
          v98 = 2114;
          v99 = v39;
          _os_log_impl(&dword_259ABF000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: Loading tatsu payload from file: %{public}@", buf, 0x16u);
        }

        v41 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v39];
        v42 = [v41 objectForKey:*MEMORY[0x277D82560]];
        if (!v42)
        {
          if (MIBUOnceToken != -1)
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          v91 = 0;
          safeAssignError(&v91, 100663296, 0, @"Failed load tatsu payload from file: %@", v72, v73, v74, v75, v39);
          v23 = v91;

          v36 = 0;
          goto LABEL_51;
        }

        v36 = v42;
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        v43 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v6;
          _os_log_impl(&dword_259ABF000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: Generating fake tatsu payload", buf, 0xCu);
        }

        v36 = [MEMORY[0x277CBEA90] generateRandomBytesOfSize:0xFFFFLL];
      }

      v23 = 0;
LABEL_51:

      goto LABEL_52;
    }
  }

  v90 = 0;
  v22 = [a1 _createBaseAMAIObjectForDevice:v6 error:&v90];
  v23 = v90;
  if (!v22)
  {
    [(MIBUPersonalizationManager *)v6 requestTatsuTicketForDevice:v23 error:&v94, buf];
    v23 = v94;
    v36 = *buf;
    goto LABEL_52;
  }

  if (!os_variant_has_internal_content())
  {
    goto LABEL_20;
  }

  v24 = +[MIBUTestPreferences sharedInstance];
  v25 = [v24 useAppleConnect];

  if (!v25)
  {
    goto LABEL_20;
  }

  if (MIBUOnceToken != -1)
  {
    +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
  }

  v26 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&dword_259ABF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Using AppleConnect for personalization ...", buf, 0xCu);
  }

  v27 = AMAuthInstallSsoInitialize();
  if (v27)
  {
    v61 = v27;
    if (MIBUOnceToken != -1)
    {
      +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
    }

    v89 = v23;
    safeAssignError(&v89, 100663296, 0, @"Failed load SSOClient.framework; status: %d", v62, v63, v64, v65, v61);
    v52 = v89;
  }

  else
  {
    v28 = AMAuthInstallSsoEnable();
    if (!v28)
    {
LABEL_20:
      v29 = @"Ap,EnableInBoxUpdate";
      if ([v6 entitlement] && objc_msgSend(v6, "entitlement") == 1)
      {
        v29 = @"Ap,EnableInBoxDiagnostics";
      }

      [v8 setObject:v7 forKey:v29];
      v30 = [v6 sepNonce];
      [v8 setObject:v30 forKey:*MEMORY[0x277D82590]];

      if ([v6 sikaFuseExists])
      {
        v31 = [v6 sikaFuse];
        [v8 setObject:v31 forKey:*MEMORY[0x277D82598]];
      }

      v32 = AMAuthInstallApImg4ServerRequestAddRequiredTags();
      if (v32)
      {
        v47 = v32;
        if (MIBUOnceToken != -1)
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        v87 = v23;
        safeAssignError(&v87, 100663296, 0, @"Failed to add measurement dict, status: %d", v48, v49, v50, v51, v47);
        v52 = v87;
      }

      else
      {
        if (MIBUOnceToken != -1)
        {
          +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
        }

        v33 = MIBUConnObj;
        if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v6;
          _os_log_impl(&dword_259ABF000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending Tatsu personalization request...", buf, 0xCu);
        }

        PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse();
        if (PersonalizedResponse || !theDict)
        {
          if (MIBUOnceToken != -1)
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          v86 = v23;
          safeAssignError(&v86, 100663296, 0, @"Fail Tatsu personalization, status: %d", v53, v54, v55, v56, PersonalizedResponse);
          v52 = v86;
        }

        else
        {
          v35 = CFDictionaryGetValue(theDict, *MEMORY[0x277D82560]);
          if (v35)
          {
            v36 = v35;
            goto LABEL_52;
          }

          if (MIBUOnceToken != -1)
          {
            +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
          }

          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
          {
            [MIBUPersonalizationManager requestTatsuTicketForDevice:v6 error:&theDict];
          }

          v85 = v23;
          safeAssignError(&v85, 100663296, 0, @"Failed to parse payload from personalization response", v57, v58, v59, v60, v76);
          v52 = v85;
        }
      }

      goto LABEL_83;
    }

    v66 = v28;
    if (MIBUOnceToken != -1)
    {
      +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      +[MIBUPersonalizationManager requestTatsuTicketForDevice:error:];
    }

    v88 = v23;
    safeAssignError(&v88, 100663296, 0, @"Failed to enable AC SSO, status: %d", v67, v68, v69, v70, v66);
    v52 = v88;
  }

LABEL_83:
  v71 = v52;

  v36 = 0;
  v23 = v71;
LABEL_52:
  if (a4)
  {
    v44 = v23;
    *a4 = v23;
  }

  AMSupportSafeRelease();

  v45 = *MEMORY[0x277D85DE8];

  return v36;
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_15()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_53()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_56()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_59()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_65()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_68()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_71()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_74()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_80()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_92()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_98()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_101()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __64__MIBUPersonalizationManager_requestTatsuTicketForDevice_error___block_invoke_107()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (__AMAuthInstall)_createBaseAMAIObjectForDevice:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  AMAuthInstallLogSetHandler();
  if (MIBUOnceToken != -1)
  {
    +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
  }

  v6 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543618;
    v50 = v5;
    v51 = 2112;
    LibraryVersionString = AMAuthInstallSupportGetLibraryVersionString();
    _os_log_impl(&dword_259ABF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Building base AMAI object from %@", buf, 0x16u);
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = AMAuthInstallCreate();
  if (v9)
  {
    v10 = CFURLCreateWithString(v8, @"https://gs.apple.com:443", 0);
    if (v10)
    {
      if (AMAuthInstallSetSigningServerURL())
      {
        v42 = &v46;
        [(MIBUPersonalizationManager *)v5 _createBaseAMAIObjectForDevice:v10 error:&v46];
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          v42 = &v45;
          +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
          v38 = 1;
          goto LABEL_47;
        }

        v12 = *MEMORY[0x277D82508];
        v13 = [v5 ecid];
        if (v13)
        {
          v14 = [v5 ecid];
          CFDictionarySetValue(Mutable, v12, v14);
        }

        else
        {
          CFDictionarySetValue(Mutable, v12, *MEMORY[0x277CBEEE8]);
        }

        v15 = *MEMORY[0x277D82500];
        v16 = [v5 chipID];
        if (v16)
        {
          v17 = [v5 chipID];
          CFDictionarySetValue(Mutable, v15, v17);
        }

        else
        {
          CFDictionarySetValue(Mutable, v15, *MEMORY[0x277CBEEE8]);
        }

        v18 = *MEMORY[0x277D824F8];
        v19 = [v5 boardID];
        if (v19)
        {
          v20 = [v5 boardID];
          CFDictionarySetValue(Mutable, v18, v20);
        }

        else
        {
          CFDictionarySetValue(Mutable, v18, *MEMORY[0x277CBEEE8]);
        }

        v21 = *MEMORY[0x277D82520];
        v22 = [v5 securityDomain];
        if (v22)
        {
          v23 = [v5 securityDomain];
          CFDictionarySetValue(Mutable, v21, v23);
        }

        else
        {
          CFDictionarySetValue(Mutable, v21, *MEMORY[0x277CBEEE8]);
        }

        v24 = *MEMORY[0x277D82528];
        v25 = [v5 securityMode];
        v26 = *MEMORY[0x277CBED28];
        v27 = *MEMORY[0x277CBED10];
        if (v25)
        {
          v28 = *MEMORY[0x277CBED28];
        }

        else
        {
          v28 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(Mutable, v24, v28);
        v29 = *MEMORY[0x277D82510];
        if ([v5 productionMode])
        {
          v30 = v26;
        }

        else
        {
          v30 = v27;
        }

        CFDictionarySetValue(Mutable, v29, v30);
        CFDictionarySetValue(Mutable, *MEMORY[0x277D82530], v26);
        v31 = *MEMORY[0x277D824F0];
        v32 = [v5 apNonce];
        if (v32)
        {
          v33 = [v5 apNonce];
          CFDictionarySetValue(Mutable, v31, v33);
        }

        else
        {
          CFDictionarySetValue(Mutable, v31, *MEMORY[0x277CBEEE8]);
        }

        v34 = *MEMORY[0x277D82538];
        if ([v5 uidMode])
        {
          v35 = v26;
        }

        else
        {
          v35 = v27;
        }

        CFDictionarySetValue(Mutable, v34, v35);
        CFDictionarySetValue(Mutable, *MEMORY[0x277D82518], v26);
        if (AMAuthInstallApSetParameters())
        {
          v42 = &v44;
          +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
        }

        else
        {
          v36 = AMAuthInstallApImg4ForceServerSigning();
          if (!v36)
          {
            v37 = 0;
            v38 = 1;
            if (!a4)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          v42 = &v43;
          [(MIBUPersonalizationManager *)v5 _createBaseAMAIObjectForDevice:v36 error:&v43];
        }
      }
    }

    else
    {
      v42 = &v47;
      +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
    }
  }

  else
  {
    v42 = &v48;
    +[MIBUPersonalizationManager _createBaseAMAIObjectForDevice:error:];
  }

  v38 = 0;
LABEL_47:
  v37 = *v42;
  if (a4)
  {
LABEL_36:
    v39 = v37;
    *a4 = v37;
  }

LABEL_37:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if ((v38 & 1) == 0)
  {
    AMSupportSafeRelease();
    v9 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v9;
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_118()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_124()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_130()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_136()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_142()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __67__MIBUPersonalizationManager__createBaseAMAIObjectForDevice_error___block_invoke_148()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (void)requestTatsuTicketForDevice:error:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)requestTatsuTicketForDevice:error:.cold.10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)requestTatsuTicketForDevice:error:.cold.12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)requestTatsuTicketForDevice:error:.cold.14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)requestTatsuTicketForDevice:(uint64_t)a1 error:(uint64_t *)a2 .cold.17(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)requestTatsuTicketForDevice:error:.cold.19()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)requestTatsuTicketForDevice:(void *)a3 error:(void *)a4 .cold.20(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_70);
  }

  v8 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = a1;
    _os_log_error_impl(&dword_259ABF000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create AMAI object", &v10, 0xCu);
  }

  *a4 = 0;
  *a3 = a2;
  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_createBaseAMAIObjectForDevice:(void *)a3 error:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_132);
  }

  v6 = MIBUConnObj;
  v7 = os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    *buf = 138543618;
    v16 = a1;
    v17 = 2114;
    v18 = a2;
    _os_log_error_impl(&dword_259ABF000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed to set signing server URL to %{public}@", buf, 0x16u);
  }

  *a3 = 0;
  OUTLINED_FUNCTION_3(v7, v8, v9, @"Failed to set signing server URL to %@", v10, v11, v12, v13, a2);
  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_createBaseAMAIObjectForDevice:error:.cold.3()
{
  OUTLINED_FUNCTION_7();
  v15 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_144);
  }

  v1 = OUTLINED_FUNCTION_8();
  if (v1)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_3(v1, v2, v3, @"Failed to set auth install ap img4 parameters", v4, v5, v6, v7, v14);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_createBaseAMAIObjectForDevice:(void *)a3 error:.cold.4(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_150);
  }

  v6 = MIBUConnObj;
  v7 = os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    *buf = 138543618;
    v16 = a1;
    v17 = 1024;
    v18 = a2;
    _os_log_error_impl(&dword_259ABF000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Failed server signing, status: %d", buf, 0x12u);
  }

  *a3 = 0;
  OUTLINED_FUNCTION_3(v7, v8, v9, @"Failed server signing, status: %d", v10, v11, v12, v13, a2);
  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_createBaseAMAIObjectForDevice:error:.cold.5()
{
  OUTLINED_FUNCTION_7();
  v15 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_138);
  }

  v1 = OUTLINED_FUNCTION_8();
  if (v1)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_3(v1, v2, v3, @"Failed to allocate options dictionary", v4, v5, v6, v7, v14);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_createBaseAMAIObjectForDevice:error:.cold.6()
{
  OUTLINED_FUNCTION_7();
  v15 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_126);
  }

  v1 = OUTLINED_FUNCTION_8();
  if (v1)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v9, v10, v11, v12, v13, 0x16u);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_3(v1, v2, v3, @"Failed to create server URL object", v4, v5, v6, v7, v14);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_createBaseAMAIObjectForDevice:error:.cold.7()
{
  OUTLINED_FUNCTION_7();
  v15 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_120);
  }

  v1 = OUTLINED_FUNCTION_8();
  if (v1)
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_3(v1, v2, v3, @"Failed to create AMAuthInstall object", v4, v5, v6, v7, v14);
  v8 = *MEMORY[0x277D85DE8];
}

@end