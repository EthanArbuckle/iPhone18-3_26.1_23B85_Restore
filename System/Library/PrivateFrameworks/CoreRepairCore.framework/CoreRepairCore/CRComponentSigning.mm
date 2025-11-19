@interface CRComponentSigning
+ (id)sharedInstance;
- (void)prpcSign:(__CFData *)a3 outSignature:(const __CFData *)a4 outDeviceNonce:(const __CFData *)a5 outError:(int *)a6;
- (void)vcrtSign:(__CFData *)a3 outSignature:(const __CFData *)a4 outDeviceNonce:(const __CFData *)a5 outError:(int *)a6;
@end

@implementation CRComponentSigning

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CRComponentSigning sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __36__CRComponentSigning_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(CRComponentSigning);

  return MEMORY[0x1EEE66BB8]();
}

- (void)vcrtSign:(__CFData *)a3 outSignature:(const __CFData *)a4 outDeviceNonce:(const __CFData *)a5 outError:(int *)a6
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = -1;
  memset(length, 0, sizeof(length));
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = dispatch_semaphore_create(0);
  if (!a4)
  {
    v23 = handleForCategory(0);
    [CRComponentSigning vcrtSign:v23 outSignature:? outDeviceNonce:? outError:?];
LABEL_19:
    v25 = v33[0];
    goto LABEL_28;
  }

  if (!a5)
  {
    v24 = handleForCategory(0);
    [CRComponentSigning vcrtSign:v24 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_19;
  }

  v10 = [MEMORY[0x1E6997730] sharedManager];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __signVeridian_block_invoke;
  v33[3] = &unk_1E83B3F38;
  v33[4] = &v41;
  v33[5] = &v49;
  v33[6] = &v45;
  v33[7] = &v34;
  [v10 signVeridianChallenge:a3 completionHandler:v33];

  v11 = v35[5];
  v12 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    v26 = handleForCategory(0);
    [CRComponentSigning vcrtSign:v26 outSignature:? outDeviceNonce:? outError:?];
  }

  else
  {
    v13 = *(v42 + 6);
    if (a6)
    {
      *a6 = v13;
    }

    if (v13)
    {
      v27 = handleForCategory(0);
      [CRComponentSigning vcrtSign:v27 outSignature:? outDeviceNonce:? outError:?];
    }

    else
    {
      v14 = v50[3];
      if (v14)
      {
        if (v46[3])
        {
          BytePtr = CFDataGetBytePtr(v14);
          v16 = CFDataGetLength(v50[3]);
          if (createECDSADerData(BytePtr, v16, &length[1], length))
          {
            v30 = handleForCategory(0);
            [CRComponentSigning vcrtSign:v30 outSignature:&v53 outDeviceNonce:? outError:?];
          }

          else
          {
            v17 = CFDataCreateWithBytesNoCopy(0, *&length[1], length[0], *MEMORY[0x1E695E488]);
            *a4 = v17;
            if (v17)
            {
              *&length[1] = 0;
              v18 = CFDataGetBytePtr(v46[3]);
              v19 = CFDataGetLength(v46[3]);
              v20 = CFDataCreate(0, v18, v19);
              *a5 = v20;
              if (v20)
              {
                goto LABEL_12;
              }

              v32 = handleForCategory(0);
              [CRComponentSigning vcrtSign:v32 outSignature:? outDeviceNonce:? outError:?];
            }

            else
            {
              v31 = handleForCategory(0);
              [CRComponentSigning vcrtSign:v31 outSignature:? outDeviceNonce:? outError:?];
            }
          }
        }

        else
        {
          v29 = handleForCategory(0);
          [CRComponentSigning vcrtSign:v29 outSignature:? outDeviceNonce:? outError:?];
        }
      }

      else
      {
        v28 = handleForCategory(0);
        [CRComponentSigning vcrtSign:v28 outSignature:? outDeviceNonce:? outError:?];
      }
    }
  }

  v25 = v53;
LABEL_28:

LABEL_12:
  v21 = v50[3];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = v46[3];
  if (v22)
  {
    CFRelease(v22);
  }

  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
}

- (void)prpcSign:(__CFData *)a3 outSignature:(const __CFData *)a4 outDeviceNonce:(const __CFData *)a5 outError:(int *)a6
{
  v81 = *MEMORY[0x1E69E9840];
  v9 = handleForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CRComponentSigning prpcSign:v9 outSignature:? outDeviceNonce:? outError:?];
  }

  obj = self;
  objc_sync_enter(obj);
  CFStringGetCStringPtr(@"Savage", 0x8000100u);
  v77 = 0;
  v76 = 0;
  v75 = 0;
  if (!a4)
  {
    v46 = handleForCategory(0);
    [CRComponentSigning prpcSign:v46 outSignature:? outDeviceNonce:? outError:?];
LABEL_70:
    v68 = 0;
    value = 0;
    v67 = 0;
    goto LABEL_64;
  }

  if (!a5)
  {
    v47 = handleForCategory(0);
    [CRComponentSigning prpcSign:v47 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_70;
  }

  if (!a3)
  {
    v48 = handleForCategory(0);
    [CRComponentSigning prpcSign:v48 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_70;
  }

  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CRComponentSigning prpcSign:a3 outSignature:v10 outDeviceNonce:? outError:?];
  }

  v67 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:@"/private/preboot/active" encoding:1 error:0];
  if (!v67)
  {
    v49 = handleForCategory(0);
    [CRComponentSigning prpcSign:v49 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_70;
  }

  value = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s/%@/", "/private/preboot/", v67];
  if (!value)
  {
    v50 = handleForCategory(0);
    [CRComponentSigning prpcSign:v50 outSignature:? outDeviceNonce:? outError:?];
    v68 = 0;
    value = 0;
    goto LABEL_64;
  }

  v72 = +[CRPersonalizationManager getDefaultAMAuthInstallRef];
  if (!v72)
  {
    v51 = handleForCategory(0);
    [CRComponentSigning prpcSign:v51 outSignature:? outDeviceNonce:? outError:?];
    v68 = 0;
    goto LABEL_64;
  }

  if (+[CRPersonalizationManager shouldPersonalizeWithSSOByDefault]&& [CRPersonalizationManager enableSSO:v72])
  {
    v62 = handleForCategory(0);
    [CRComponentSigning prpcSign:v62 outSignature:? outDeviceNonce:? outError:?];
    v68 = 0;
    goto LABEL_64;
  }

  v68 = +[CRPersonalizationManager SOCKSInfo];
  if (!v68)
  {
    goto LABEL_18;
  }

  v11 = [v68 objectForKeyedSubscript:@"SOCKSHost"];
  v12 = [v68 objectForKeyedSubscript:@"SOCKSPort"];
  v13 = v12;
  if (v11 && v12 && AMAuthInstallSetSOCKSProxyInformation())
  {
    v63 = handleForCategory(0);
    [CRComponentSigning prpcSign:v63 outSignature:v13 outDeviceNonce:v11 outError:?];
LABEL_64:
    v38 = 1;
    if (!a6)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_18:
  v14 = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!theDict)
  {
    v52 = handleForCategory(0);
    [CRComponentSigning prpcSign:v52 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v53 = handleForCategory(0);
    [CRComponentSigning prpcSign:v53 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  v15 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v15)
  {
    v54 = handleForCategory(0);
    [CRComponentSigning prpcSign:v54 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  CFDictionarySetValue(theDict, *MEMORY[0x1E69E9FC0], value);
  CFDictionarySetValue(theDict, *MEMORY[0x1E69E9FB8], *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(theDict, @"PreflightContext", @"Limited");
  CFDictionarySetValue(theDict, @"AuthChallengeOption", a3);
  CFDictionarySetValue(theDict, @"PersonalizedFirmwareRootPath", @"/private/var/tmp/usr/standalone/firmware/Savage/");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69E9FE8], *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(theDict, *MEMORY[0x1E69E9FE0], Mutable);
  CFDictionaryAddValue(v15, *MEMORY[0x1E69E9FA8], theDict);
  CFDictionarySetValue(v15, @"BundlePath", value);
  v16 = handleForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEDC5000, v16, OS_LOG_TYPE_DEFAULT, "Creating Savage Updater", buf, 2u);
  }

  if (!SavageUpdaterCreate())
  {
    v55 = handleForCategory(0);
    [CRComponentSigning prpcSign:v55 outSignature:&v75 outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  v17 = 0;
  v18 = *MEMORY[0x1E69E5218];
  while (!SavageUpdaterIsDone())
  {
    v73[1] = 0;
    v74 = 0;
    if (v17 == 30)
    {
      v40 = handleForCategory(0);
      [CRComponentSigning prpcSign:v40 outSignature:buf outDeviceNonce:? outError:?];
LABEL_58:

      goto LABEL_64;
    }

    v19 = handleForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v15;
      v79 = 1024;
      v80 = v17 + 1;
      _os_log_impl(&dword_1CEDC5000, v19, OS_LOG_TYPE_DEFAULT, "updaterOptions: %@ updaterLoopCount: %d", buf, 0x12u);
    }

    if (!SavageUpdaterExecCommand() || v75)
    {
      v41 = handleForCategory(0);
      [CRComponentSigning prpcSign:v41 outSignature:&v75 outDeviceNonce:buf outError:?];
      goto LABEL_58;
    }

    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v74;
      _os_log_impl(&dword_1CEDC5000, v20, OS_LOG_TYPE_DEFAULT, "deviceInfoDict: %@", buf, 0xCu);
    }

    v21 = handleForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v21, OS_LOG_TYPE_DEFAULT, "Add response ticket ...", buf, 2u);
    }

    CFDictionarySetValue(v15, v18, v74);
    v22 = [CRPersonalizationManager initWithAuthInstallObj:v72];
    v23 = v22;
    if (!v22)
    {
      v42 = handleForCategory(0);
      [CRComponentSigning prpcSign:v42 outSignature:? outDeviceNonce:? outError:?];
      goto LABEL_62;
    }

    v73[0] = 0;
    v24 = [v22 AddResponseTicketForSavageUpdaterOptions:v15 auth:1 error:v73];
    v25 = v73[0];
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    if ((v26 & 1) == 0)
    {
      v43 = v25;
      v44 = handleForCategory(0);
      [CRComponentSigning prpcSign:v44 outSignature:? outDeviceNonce:? outError:?];
      goto LABEL_63;
    }

    v27 = handleForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&dword_1CEDC5000, v27, OS_LOG_TYPE_DEFAULT, "perform next stage: %@", buf, 0xCu);
    }

    if (!SavageUpdaterExecCommand() || v75)
    {
      v45 = handleForCategory(0);
      [CRComponentSigning prpcSign:v45 outSignature:&v75 outDeviceNonce:buf outError:?];
LABEL_62:
      v43 = *buf;
LABEL_63:

      goto LABEL_64;
    }

    AMSupportSafeRelease();
    AMSupportSafeRelease();

    ++v17;
  }

  if (v75)
  {
    v56 = handleForCategory(0);
    [CRComponentSigning prpcSign:v56 outSignature:&v75 outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  v28 = handleForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&dword_1CEDC5000, v28, OS_LOG_TYPE_DEFAULT, "SavageUpdater work done. LoopCounter = %d.", buf, 8u);
  }

  v29 = copyCameraIORegValue(@"SavageAuthResponse");
  v30 = copyCameraIORegValue(@"SavageAuthSalt");
  v31 = v30;
  if (!v29)
  {
    v57 = handleForCategory(0);
    [CRComponentSigning prpcSign:v57 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  if (!v30)
  {
    v58 = handleForCategory(0);
    [CRComponentSigning prpcSign:v58 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  BytePtr = CFDataGetBytePtr(v29);
  Length = CFDataGetLength(v29);
  if (createECDSADerData(BytePtr, Length, &v77, &v76))
  {
    v59 = handleForCategory(0);
    [CRComponentSigning prpcSign:v59 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  v34 = CFDataCreateWithBytesNoCopy(0, v77, v76, *MEMORY[0x1E695E488]);
  *a4 = v34;
  if (!v34)
  {
    v60 = handleForCategory(0);
    [CRComponentSigning prpcSign:v60 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  v35 = CFDataGetBytePtr(v31);
  v36 = CFDataGetLength(v31);
  v37 = CFDataCreate(0, v35, v36);
  *a5 = v37;
  if (!v37)
  {
    v61 = handleForCategory(0);
    [CRComponentSigning prpcSign:v61 outSignature:? outDeviceNonce:? outError:?];
    goto LABEL_64;
  }

  v38 = 0;
  if (!a6)
  {
    goto LABEL_55;
  }

LABEL_54:
  *a6 = v38;
LABEL_55:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();

  objc_sync_exit(obj);
  v39 = *MEMORY[0x1E69E9840];
}

@end