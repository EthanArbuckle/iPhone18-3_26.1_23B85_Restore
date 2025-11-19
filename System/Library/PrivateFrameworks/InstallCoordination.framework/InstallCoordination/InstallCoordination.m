IXAppRemovabilityMetadata *IXGetUncachedRemovabilityMetadataForApp(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = _GetRemovabilityData(v7, a4);
  v9 = v8;
  if (v8)
  {
    v10 = IXGetRemovabilityMetadataForApp(v8, v7, a2, a3);
  }

  else
  {
    v10 = [[IXAppRemovabilityMetadata alloc] initWithRemovability:0 client:0];
  }

  v11 = v10;

  return v11;
}

id _GetRemovabilityData(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = IXCopyRemovabilityStorageURL();
  v5 = _CopyRemovabilityDataFromURL(v4);

  if (v5)
  {
    v31 = 0;
    v6 = [v3 resolvePersonaRespectingSandboxingWithError:&v31];
    v7 = v31;
    v8 = v7;
    if (v6)
    {
      v24 = a2;
      v25 = v3;
      v26 = v7;
      v9 = [v3 possibleSerializationsForPlistKey];
      v10 = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"RemovabilityEntries", *(*(&v27 + 1) + 8 * i)];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v13);
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"RemovabilityChangeClock", @"sequenceNumber"];
      [v10 addObject:v17];

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", @"RemovabilityChangeClock", @"guid"];
      [v10 addObject:v18];

      v19 = [v10 copy];
      v20 = *MEMORY[0x1E695E480];
      _CFPropertyListCreateFiltered();

      v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
      v3 = v25;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        _GetRemovabilityData_cold_2();
      }

      if (v24)
      {
        *v24 = 0;
      }

      v8 = 0;
    }

    else
    {
      v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        _GetRemovabilityData_cold_1();
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return 0;
}

IXAppRemovabilityMetadata *IXGetRemovabilityMetadataForApp(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mostRestrictiveRemovabilityMetadata];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [[IXAppRemovabilityMetadata alloc] initWithRemovability:a3 client:a4];
    }

    v11 = v10;
  }

  else
  {
    v11 = [[IXAppRemovabilityMetadata alloc] initWithRemovability:a3 client:a4];
  }

  return v11;
}

id _RemovabilityPListToMetadata(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = ___RemovabilityPListToMetadata_block_invoke;
  v9 = &unk_1E85C6820;
  v10 = v2;
  v11 = 3;
  v3 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:&v6];

  v4 = [v3 copy];

  return v4;
}

id IXCopyRemovabilityStorageURL()
{
  if (_sRemovabilityStorageURLOverride)
  {
    v0 = _sRemovabilityStorageURLOverride;
  }

  else
  {
    v1 = +[IXGlobalConfiguration sharedInstance];
    v6 = 0;
    v2 = [v1 removabilityDirectoryWithError:&v6];
    v3 = v6;

    if (v2)
    {
      v0 = [v2 URLByAppendingPathComponent:@"RemovabilityMetadataWithMultipleSources.plist" isDirectory:0];
    }

    else
    {
      v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        IXCopyRemovabilityStorageURL_cold_1();
      }

      v0 = 0;
    }
  }

  return v0;
}

id _CopyRemovabilityDataFromURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v18 = 0;
    v2 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v1 options:1 error:&v18];
    v3 = v18;
    v4 = v3;
    if (v2)
    {
      goto LABEL_21;
    }

    v5 = [v3 domain];
    v6 = *MEMORY[0x1E696A250];
    if ([v5 isEqualToString:*MEMORY[0x1E696A250]] && -[NSObject code](v4, "code") == 257)
    {
      v7 = [v4 userInfo];
      v8 = *MEMORY[0x1E696AA08];
      v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
      v10 = [v9 domain];
      if ([v10 isEqualToString:*MEMORY[0x1E696A798]])
      {
        v11 = [v4 userInfo];
        v12 = [v11 objectForKeyedSubscript:v8];
        v17 = [v12 code];

        if (v17 == 1)
        {
          v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            _CopyRemovabilityDataFromURL_cold_2(v1, v13);
          }

LABEL_20:

          goto LABEL_21;
        }

LABEL_14:
        v14 = [v4 domain];
        if ([v14 isEqualToString:v6])
        {
          v15 = [v4 code];

          if (v15 == 260)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          _CopyRemovabilityDataFromURL_cold_1(v1, v4, v13);
        }

        goto LABEL_20;
      }
    }

    goto LABEL_14;
  }

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    _CopyRemovabilityDataFromURL_cold_3(v4);
  }

  v2 = 0;
LABEL_21:

  return v2;
}

uint64_t _ClientProcessLookupMachPortName(uint64_t a1, void *a2)
{
  getpid();
  v4 = *MEMORY[0x1E69E9BD0];
  v5 = sandbox_check();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _ClientProcessLookupMachPortName_cold_1(a1, v6);
      }

      _CreateError("_ClientProcessLookupMachPortName", 400, @"IXErrorDomain", 1uLL, 0, 0, @"This process does not have sandbox access to mach-lookup %s", v7, a1);
    }

    else
    {
      v10 = *__error();
      v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        _ClientProcessLookupMachPortName_cold_2(a1, v10, v11);
      }

      strerror(v10);
      _CreateError("_ClientProcessLookupMachPortName", 405, @"IXErrorDomain", 1uLL, 0, 0, @"sandbox_check returned an error when checking if this process can mach-lookup %s : %s", v12, a1);
    }
    v8 = ;
    if (a2)
    {
      v8 = v8;
      v9 = 0;
      *a2 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  return v9;
}

uint64_t IXBooleanValue(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  return a2;
}

id _IXValidateObject(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id IXGetLoggingHandle(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __IXGetLoggingHandle_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (IXGetLoggingHandle_onceToken != -1)
  {
    dispatch_once(&IXGetLoggingHandle_onceToken, block);
  }

  v1 = IXGetLoggingHandle_logHandle;

  return v1;
}

__CFString *IXStringForAppRemovability(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown IXAppRemovability value: %lu", a1];
  }

  else
  {
    v2 = off_1E85C6598[a1];
  }

  return v2;
}

void sub_1DA47CFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __IXGetLoggingHandle_block_invoke(uint64_t a1)
{
  IXGetLoggingHandle_logHandle = os_log_create(*(a1 + 32), "framework");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *IXStringForPlaceholderDisposition(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown IXPlaceholderDisposition value: %lu", a1];
  }

  else
  {
    v2 = off_1E85C4E58[a1];
  }

  return v2;
}

__CFString *IXStringForUninstallDisposition(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown uninstall disposition: %lu", a1];
  }

  else
  {
    v2 = off_1E85C4E78[a1];
  }

  return v2;
}

__CFString *IXStringForIXError(void *a1, unint64_t a2)
{
  v3 = a1;
  if ([v3 isEqualToString:@"IXUserPresentableErrorDomain"])
  {
    v4 = @"Unknown error.";
    switch(a2)
    {
      case 0uLL:
        break;
      case 1uLL:
        v4 = @"Could not install at this time.";
        break;
      case 2uLL:
        v4 = @"Could not install.";
        break;
      case 3uLL:
        v4 = @"User canceled.";
        break;
      case 4uLL:
        v4 = @"Incompatible device architecture.";
        break;
      case 5uLL:
        v4 = @"Device lacks required capabilities.";
        break;
      case 6uLL:
        v4 = @"Incompatible platform.";
        break;
      case 7uLL:
        v4 = @"Needs reinstallation from MDM.";
        break;
      case 8uLL:
        v4 = @"Needs manual reinstallation.";
        break;
      case 9uLL:
        v4 = @"No longer available in App Store.";
        break;
      case 0xAuLL:
        v4 = @"Content is not owned by this user.";
        break;
      case 0xBuLL:
        v4 = @"Insufficient storage.";
        break;
      case 0xCuLL:
        v4 = @"User data for this app failed to restore from backup.";
        break;
      case 0xDuLL:
        v4 = @"Forbidden.";
        break;
      case 0xEuLL:
        v4 = @"Unable to verify integrity.";
        break;
      case 0xFuLL:
        v4 = @"SINF not for this platform.";
        break;
      case 0x10uLL:
        v4 = @"Device OS version is too low to run this app.";
        break;
      case 0x11uLL:
        v4 = @"Code signature version is no longer supported.";
        break;
      case 0x12uLL:
        v4 = @"Device is not eligible to install this app.";
        break;
      default:
        if (a2 != 54)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled reason for code: %lu in domain IXUserPresentableErrorDomain", a2, v6];
          goto LABEL_9;
        }

        v4 = @"Reached code meant only for testing.";
        break;
    }
  }

  else
  {
    if ([v3 isEqualToString:@"IXErrorDomain"])
    {
      if (a2 < 0x3E)
      {
        v4 = off_1E85C4EE0[a2];
        goto LABEL_10;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled reason for code: %lu in domain IXErrorDomain", a2, v6];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled error domain %@, code %lu", v3, a2];
    }

    v4 = LABEL_9:;
  }

LABEL_10:

  return v4;
}

id IXCreateUserPresentableError(unint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = objc_opt_new();
    v7 = v6;
    v8 = MEMORY[0x1E696A588];
    v9 = MEMORY[0x1E696A578];
    if (v5)
    {
      [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v10 = [v5 userInfo];
      v11 = [v10 objectForKeyedSubscript:*v9];

      if (v11)
      {
        [v7 setObject:v11 forKeyedSubscript:*v8];
        [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A598]];
      }
    }

    if (a2)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AlertUser"];
    }

    v12 = IXStringForIXError(@"IXUserPresentableErrorDomain", a1);
    [v7 setObject:v12 forKeyedSubscript:*v8];

    if (a1 >= 0x13)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled IXUserPresentableErrorCode %lu", a1];
    }

    else
    {
      v13 = off_1E85C50D0[a1 - 1];
    }

    [v7 setObject:v13 forKeyedSubscript:*v9];

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IXUserPresentableErrorDomain" code:a1 userInfo:v7];
  }

  else
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      IXCreateUserPresentableError_cold_1(v14);
    }

    v15 = 0;
  }

  return v15;
}

uint64_t IXUserPresentableErrorCodeIsHardError(unint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1D)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = 0xF7FFFFDu >> a2;
  }

  if (((1 << a1) & 0x34010) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (((1 << a1) & 0xA1E4) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a1 > 0x11)
  {
    v4 = 0;
  }

  return v4 & 1;
}

id IXStringifyObject(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = [v1 description];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t IXArrayContainsOnlyClass(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = _EnumerateAndCheckClass(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _EnumerateAndCheckClass(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t IXSetContainsOnlyClass(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = _EnumerateAndCheckClass(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t IXDictionaryContainsOnlyClassesCheckingValueTypes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __IXDictionaryContainsOnlyClassesCheckingValueTypes_block_invoke;
  v15[3] = &unk_1E85C5168;
  v15[4] = &v16;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = v10;
  v15[8] = a4;
  v15[9] = a5;
  v15[10] = v11;
  v15[11] = v12;
  [v9 enumerateKeysAndObjectsUsingBlock:v15];
  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v13;
}

void sub_1DA47E510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __IXDictionaryContainsOnlyClassesCheckingValueTypes_block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  v6 = a1[5];
  if (objc_opt_isKindOfClass() & 1) != 0 && (v7 = a1[6], (objc_opt_isKindOfClass()))
  {
    v8 = a1[6];
    if (v8 == a1[7])
    {
      v10 = IXDictionaryContainsOnlyClassesCheckingValueTypes(v12, a1[8], a1[9], 0, 0);
    }

    else if (v8 == a1[10])
    {
      v11 = a1[8];
      v10 = IXArrayContainsOnlyClass(v12);
    }

    else
    {
      if (v8 != a1[11])
      {
        goto LABEL_11;
      }

      v9 = a1[8];
      v10 = IXSetContainsOnlyClass(v12);
    }

    *(*(a1[4] + 8) + 24) = v10;
  }

  else
  {
    *(*(a1[4] + 8) + 24) = 0;
  }

LABEL_11:
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

BOOL IXDictionaryContainsOnlyPlistContent(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = (objc_opt_isKindOfClass() & 1) != 0 && CFPropertyListIsValid(v1, kCFPropertyListBinaryFormat_v1_0) == 1;

  return v2;
}

id IXArrayifyThing(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (IXArrayContainsOnlyClass(v1))
      {
        v2 = v1;
LABEL_7:
        v3 = v2;
        goto LABEL_12;
      }
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
        v7[0] = v1;
        v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v1 allObjects];
        if (IXArrayContainsOnlyClass(v4))
        {
          v3 = v4;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_12;
      }
    }
  }

  v3 = 0;
LABEL_12:

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

id IXFilterArrayForClass(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v3 addObject:{v9, v13}];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id IXFilterDictionaryForClass(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = MEMORY[0x1E695DF90];
    v6 = a1;
    v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __IXFilterDictionaryForClass_block_invoke;
    v11[3] = &unk_1E85C5190;
    v13 = a2;
    v14 = a3;
    v12 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];

    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __IXFilterDictionaryForClass_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 48))
  {
    v7 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (((v6 | v7) & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
  }
}

void OUTLINED_FUNCTION_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

__CFString *IXCopyProcessNameForPid()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v7 = *MEMORY[0x1E69E9840];
  v1 = proc_pidpath(v0, buffer, 0x1000u);
  if (v1 < 1)
  {
    v3 = @"Unknown Process Name";
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v1 encoding:4];
    v3 = [v2 lastPathComponent];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id IXCopyClientNameForConnection(void *a1)
{
  v1 = [a1 processIdentifier];
  v2 = MEMORY[0x1E696AEC0];
  v3 = IXCopyProcessNameForPid();
  v4 = [v2 stringWithFormat:@"%@ (pid %d)", v3, v1];

  return v4;
}

uint64_t IXHasTrueValueForEntitlement(void *a1, uint64_t a2)
{
  v2 = [a1 valueForEntitlement:a2];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t IXHasMobileInstallationSPIEntitlement(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 valueForEntitlement:@"com.apple.private.mobileinstall.allowedSPI"];
  if (!v4)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v4 isEqualToString:v3] & 1) == 0)
    {
LABEL_8:
      v5 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 containsObject:v3] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = 1;
LABEL_9:

  return v5;
}

id IXValidateMobileInstallationSPIEntitlement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (IXHasMobileInstallationSPIEntitlement(v3, v4))
  {
    v5 = 0;
  }

  else
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      IXValidateMobileInstallationSPIEntitlement_cold_1(v3, v4, v6);
    }

    v7 = IXCopyClientNameForConnection(v3);
    v5 = _CreateError("IXValidateMobileInstallationSPIEntitlement", 84, @"IXErrorDomain", 0x19uLL, 0, 0, @"Process %@ is required to have an entitlement named %@ with an array containing %@ to call this SPI.", v8, v7);
  }

  return v5;
}

id IXCopyAllowedLinkedParentBundleIDsForConnection(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.private.mobileinstall.allowed-linked-parents"];
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (objc_opt_class(), IXArrayContainsOnlyClass(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFString *IXStringForQOSClass(uint64_t a1)
{
  if (a1 > 20)
  {
    switch(a1)
    {
      case 0x15:
        v2 = @"QOS_CLASS_DEFAULT";

        break;
      case 0x21:
        v2 = @"QOS_CLASS_USER_INTERACTIVE";

        break;
      case 0x19:
        v2 = @"QOS_CLASS_USER_INITIATED";

        break;
      default:
LABEL_20:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Class: %u", a1];

        return v2;
    }
  }

  else if (a1)
  {
    if (a1 != 9)
    {
      if (a1 == 17)
      {
        v2 = @"QOS_CLASS_UTILITY";

        return v2;
      }

      goto LABEL_20;
    }

    v2 = @"QOS_CLASS_BACKGROUND";
  }

  else
  {
    v2 = @"QOS_CLASS_UNSPECIFIED";
  }

  return v2;
}

id IXSanitizeAndValidateRestrictedStoreMetadata(void *a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a1;
  v10 = [v9 copy];
  v11 = IXHasTrueValueForEntitlement(v7, @"com.apple.private.install.distributor-info-source");
  v12 = [v9 distributorInfo];

  if ((v11 & 1) != 0 || !v12)
  {
    v18 = v10;
    v17 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v13 = [v12 distributorID];
  v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v22 = IXCopyClientNameForConnection(v7);
    *buf = 136316418;
    v24 = "IXSanitizeAndValidateRestrictedStoreMetadata";
    v25 = 2112;
    v26 = v22;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = @"com.apple.private.install.distributor-info-source";
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = 0;
    _os_log_error_impl(&dword_1DA47A000, v14, OS_LOG_TYPE_ERROR, "%s: Client %@ setting the %@ did not have the required entitlement %@ = TRUE to allow the distribution info in the store metadata to be set (supplied distributor ID was '%@'). : %@", buf, 0x3Eu);
  }

  v15 = IXCopyClientNameForConnection(v7);
  v17 = _CreateError("IXSanitizeAndValidateRestrictedStoreMetadata", 142, @"IXErrorDomain", 0x19uLL, 0, 0, @"Client %@ setting the %@ did not have the required entitlement %@ = TRUE to allow the distribution info in the store metadata to be set (supplied distributor ID was '%@').", v16, v15);

  v18 = 0;
  if (a4)
  {
LABEL_8:
    if (!v18)
    {
      v19 = v17;
      *a4 = v17;
    }
  }

LABEL_10:

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_1_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return _os_log_send_and_compose_impl();
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_5()
{
  v2 = *v0;

  return _os_crash_msg();
}

id IXFrameworkBundle()
{
  if (IXFrameworkBundle_onceToken != -1)
  {
    IXFrameworkBundle_cold_1();
  }

  v1 = IXFrameworkBundle_sharedFrameworkBundle;

  return v1;
}

void __IXFrameworkBundle_block_invoke()
{
  v0 = +[IXGlobalConfiguration sharedInstance];
  v1 = [v0 frameworkURL];

  v2 = [MEMORY[0x1E696AAE8] bundleWithURL:v1];
  v3 = IXFrameworkBundle_sharedFrameworkBundle;
  IXFrameworkBundle_sharedFrameworkBundle = v2;

  if (!IXFrameworkBundle_sharedFrameworkBundle)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __IXFrameworkBundle_block_invoke_cold_1();
    }
  }
}

__CFString *IXStringKeyForError(uint64_t a1)
{
  if ((a1 - 1) > 0x11)
  {
    return @"kIXUserPresentableUnknownError";
  }

  else
  {
    return off_1E85C5338[a1 - 1];
  }
}

void IXPresentErrorHighlightingLocalizedAppName(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = [v13 count];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __IXPresentErrorHighlightingLocalizedAppName_block_invoke;
  block[3] = &unk_1E85C52D0;
  v28 = v16;
  v29 = a4;
  v23 = v11;
  v24 = v15;
  v26 = v13;
  v27 = v14;
  v25 = v12;
  v17 = v13;
  v18 = v12;
  v19 = v14;
  v20 = v15;
  v21 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __IXPresentErrorHighlightingLocalizedAppName_block_invoke(uint64_t a1)
{
  v2 = IXFrameworkBundle();
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = MEMORY[0x1E695E118];
  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"DismissOnLock"];
  [v3 setObject:v4 forKeyedSubscript:@"SBUserNotificationAllowMenuButtonDismissal"];
  v5 = IXLocalizedTitleForFirstAppName(*(a1 + 32), *(a1 + 72), *(a1 + 80));
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E695EE58]];

  v6 = *(a1 + 80);
  if (v6 == 16)
  {
    IXLocalizedBodyForOSVersionError(*(a1 + 40), *(a1 + 32), *(a1 + 72));
  }

  else
  {
    IXLocalizedBodyForFirstAppName(*(a1 + 32), *(a1 + 72), v6);
  }
  v7 = ;
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E695EE60]];

  v8 = *(a1 + 80);
  if (v8 - 4 < 6)
  {
LABEL_7:
    if (*(a1 + 72) == 1)
    {
      v9 = [v2 localizedStringForKey:@"BUTTON_TITLE_DELETE" value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E695EE78]];

      [v3 setObject:&unk_1F5607370 forKeyedSubscript:@"SBUserNotificationDefaultButtonPresentationStyle"];
      v10 = [v2 localizedStringForKey:@"BUTTON_TITLE_KEEP" value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695EE70]];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __IXPresentErrorHighlightingLocalizedAppName_block_invoke_99;
      v28[3] = &unk_1E85C5258;
      v29 = *(a1 + 64);
      v11 = MEMORY[0x1DA74F400](v28);
      v12 = v29;
LABEL_9:

      goto LABEL_17;
    }

LABEL_16:
    v17 = [v2 localizedStringForKey:@"BUTTON_TITLE_OK" value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];
    [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x1E695EE78]];

    v11 = 0;
    goto LABEL_17;
  }

  if (v8 > 0x12)
  {
LABEL_13:
    if (v8 == 10 && *(a1 + 72) == 1)
    {
      v15 = [v2 localizedStringForKey:@"BUTTON_TITLE_VIEW_IN_APP_STORE" value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x1E695EE78]];

      v16 = [v2 localizedStringForKey:@"BUTTON_TITLE_OK" value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x1E695EE70]];

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __IXPresentErrorHighlightingLocalizedAppName_block_invoke_2_103;
      v24[3] = &unk_1E85C52A8;
      v27 = *(a1 + 72);
      v25 = *(a1 + 48);
      v26 = *(a1 + 56);
      v11 = MEMORY[0x1DA74F400](v24);

      v12 = v25;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (((1 << v8) & 0x6A000) != 0)
  {
    goto LABEL_7;
  }

  if (v8 != 11)
  {
    if (v8 == 16)
    {
      v13 = [v2 localizedStringForKey:@"BUTTON_TITLE_SETTINGS" value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x1E695EE78]];

      v14 = [v2 localizedStringForKey:@"BUTTON_TITLE_OK" value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];
      [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x1E695EE70]];

      v11 = &__block_literal_global_85;
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v22 = [v2 localizedStringForKey:@"BUTTON_TITLE_SETTINGS" value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];
  [v3 setObject:v22 forKeyedSubscript:*MEMORY[0x1E695EE78]];

  v23 = [v2 localizedStringForKey:@"BUTTON_TITLE_OK" value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];
  [v3 setObject:v23 forKeyedSubscript:*MEMORY[0x1E695EE70]];

  v11 = &__block_literal_global_77;
LABEL_17:
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 56) objectAtIndexedSubscript:0];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<%lu bundleIDs>", *(a1 + 72)];
  }
  v18 = ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ShowUserNotice_block_invoke;
  block[3] = &unk_1E85C52F8;
  v31 = v3;
  v32 = v18;
  v33 = v11;
  v34 = 0;
  v19 = v11;
  v20 = v3;
  v21 = v18;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id IXLocalizedTitleForFirstAppName(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IXStringKeyForError(a3);
  v7 = v6;
  if (a2 >= 2)
  {
    v8 = @"_TITLE_MULTIPLE";
  }

  else
  {
    v8 = @"_TITLE";
  }

  v9 = [v6 stringByAppendingString:v8];
  v10 = IXFrameworkBundle();
  v11 = [v10 localizedStringForKey:v9 value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v11, v5];

  return v12;
}

id IXLocalizedBodyForOSVersionError(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A8D20]];

    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69A8D18]];

    v11 = @"kIXUserPresentableDeviceOSVersionTooLowError";
    if (v10)
    {
      if ([v10 unsignedIntegerValue] != 1 && a3 < 2)
      {
        v11 = @"kIXUserPresentableDeviceOSVersionTooLowDiffPlatformError";
      }
    }
  }

  else
  {
    v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      IXLocalizedBodyForOSVersionError_cold_1();
    }

    v8 = 0;
    v11 = @"kIXUserPresentableDeviceOSVersionTooLowError";
  }

  v14 = IXLocalizedBody(v11, v8, v6, a3);

  return v14;
}

id IXLocalizedBodyForFirstAppName(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IXStringKeyForError(a3);
  v7 = IXLocalizedBody(v6, v5, v5, a2);

  return v7;
}

void __IXPresentErrorHighlightingLocalizedAppName_block_invoke_2()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = 0;
  v2 = [v1 openSensitiveURL:v0 withOptions:0 error:&v5];
  v3 = v5;

  if ((v2 & 1) == 0)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __IXPresentErrorHighlightingLocalizedAppName_block_invoke_2_cold_1();
    }
  }
}

void __IXPresentErrorHighlightingLocalizedAppName_block_invoke_83()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  v1 = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [v1 openSensitiveURL:v0 withOptions:0];

  if ((v2 & 1) == 0)
  {
    v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "IXPresentErrorHighlightingLocalizedAppName_block_invoke";
      _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Failed to open software update Settings", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __IXPresentErrorHighlightingLocalizedAppName_block_invoke_99(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __IXPresentErrorHighlightingLocalizedAppName_block_invoke_2_103(uint64_t a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1 && (v2 = *(a1 + 32)) != 0 && ([v2 iTunesMetadata], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "storeItemIdentifier"), v3, v4))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v6 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"action" value:@"lookup"];
    v7 = objc_alloc(MEMORY[0x1E696AF60]);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v4];
    v9 = [v7 initWithName:@"ids" value:v8];

    [v5 setScheme:@"itms-apps"];
    [v5 setHost:&stru_1F55F76E0];
    v17[0] = v6;
    v17[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    [v5 setQueryItems:v10];

    v11 = [v5 URL];

    v12 = [MEMORY[0x1E6963608] defaultWorkspace];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __IXPresentErrorHighlightingLocalizedAppName_block_invoke_3;
    v15[3] = &unk_1E85C5280;
    v16 = *(a1 + 40);
    [v12 openURL:v11 configuration:0 completionHandler:v15];

    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];

    _LaunchAppStore();
  }
}

void _LaunchAppStore()
{
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openApplicationWithBundleIdentifier:@"com.apple.AppStore" configuration:0 completionHandler:&__block_literal_global_153];
}

void __IXPresentErrorHighlightingLocalizedAppName_block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v8 = 136315650;
      v9 = "IXPresentErrorHighlightingLocalizedAppName_block_invoke_3";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to open app with bundle ID %@ in the App Store. Error: %@", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

id IXLocalizedBody(void *a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (a4 >= 2)
  {
    v10 = @"_BODY_MULTIPLE";
  }

  else
  {
    v10 = @"_BODY";
  }

  v11 = [v7 stringByAppendingString:v10];
  v12 = IXFrameworkBundle();
  v13 = [v12 localizedStringForKey:v11 value:&stru_1F55F76E0 table:@"IXUserPresentableErrors"];

  if (a4 > 1)
  {
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v13, v9, a4 - 1];
  }

  else
  {
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:v13, v8, v16];
  }
  v14 = ;

  return v14;
}

void sub_1DA4854E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

__CFString *_StringForIXCoordinatorIntent(unint64_t a1)
{
  if (a1 >= 8)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown intent value %lu", a1];
  }

  else
  {
    v2 = off_1E85C5E60[a1];
  }

  return v2;
}

void sub_1DA4862F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA487314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 + 40));
  _Unwind_Resume(a1);
}

void sub_1DA4889E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Unwind_Resume(a1);
}

void sub_1DA488EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CheckCancelRequestSanity(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _CheckCancelRequestSanity_cold_1();
    }

    v7 = @"Cancellation method on IXAppInstallCoordinator was called with client of IXClientNone which is invalid";
    v8 = 722;
  }

  else
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _CheckCancelRequestSanity_cold_2();
    }

    v7 = @"Reason passed to IXAppInstallCoordinator cancellation method was nil!";
    v8 = 718;
  }

  v4 = _CreateError("_CheckCancelRequestSanity", v8, @"IXErrorDomain", 4uLL, 0, 0, v7, v6, v11);
LABEL_11:

  return v4;
}

void sub_1DA489768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA489F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA48A4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA48AA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA48B798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1DA48C5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA48CD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DA48D16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DA48E174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

id _ProcessRemovabilityMetadataListMap(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ProcessRemovabilityMetadataListMap_block_invoke;
  v6[3] = &unk_1E85C5E40;
  v7 = v2;
  v3 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v6];

  v4 = [v3 copy];

  return v4;
}

void sub_1DA48E8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA48EC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DA48F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA48FB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DA490610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA490AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA491278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4916C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA492038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DA492474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA492D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA493108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA493444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49394C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4940B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49443C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA494870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DA494DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_1DA495530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1DA495D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49619C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA496A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA496E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4974C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DA497950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DA497D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA498348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA498790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DA498B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA498FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4994F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_1DA499C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1DA49A0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49A648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_1DA49ADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_1DA49B250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49B718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49C2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49C6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49CAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49CF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49D310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49D660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49D9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49DE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49E2C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49F784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DA49FE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A0144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A0400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A0718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A4524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A4FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A52B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A5440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A5768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A5A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A5DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4A6688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a2 + 4) = v3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = a3;
  *(a2 + 22) = 2112;
  *(a2 + 24) = result;
  *(a2 + 32) = 2112;
  *(a2 + 34) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2112;
  *(a3 + 14) = result;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
  *(a3 + 32) = 2112;
  *(a3 + 34) = 0;
  return result;
}

void OUTLINED_FUNCTION_10(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x2Au);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4A8138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL _CompareObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 != 0) == (v4 != 0) && (!v3 || !v4 || [v3 isEqual:v4]);

  return v6;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1DA4AA79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4AABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4AB070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id IXEncodeRootObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v4 encodeObject:v3 forKey:*MEMORY[0x1E696A508]];
  v5 = [v4 encodedData];

  if (a2 && !v5)
  {
    v6 = 0;
    *a2 = 0;
  }

  return v5;
}

id IXUserPresentableErrorForInsufficientSpaceError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:@"IXUserPresentableErrorDomain"])
  {
    v3 = [v1 code];

    if (v3 == 11)
    {
      v4 = v1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v5 = v1;
  v4 = v5;
  if (v5)
  {
    v6 = *MEMORY[0x1E696A798];
    v7 = *MEMORY[0x1E696AA08];
    v8 = v5;
    while (1)
    {
      v9 = [v8 domain];
      if ([v9 isEqualToString:v6])
      {
        v10 = [v8 code];

        if (v10 == 28)
        {
          v13 = [v4 domain];
          v14 = [v13 isEqual:@"IXUserPresentableErrorDomain"];

          if (v14)
          {
            v15 = [v4 userInfo];
            v16 = [v15 objectForKeyedSubscript:@"AlertUser"];
            v14 = IXBooleanValue(v16, 0);
          }

          v4 = IXCreateUserPresentableError(0xBuLL, v14, v4);

          break;
        }
      }

      else
      {
      }

      v11 = [v8 userInfo];
      v12 = [v11 objectForKeyedSubscript:v7];

      v8 = v12;
      if (!v12)
      {
        v4 = 0;
        break;
      }
    }
  }

LABEL_16:

  return v4;
}

void IXDispatchAsyncWithAutoreleasePool(NSObject *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __IXDispatchAsyncWithAutoreleasePool_block_invoke;
  block[3] = &unk_1E85C5258;
  v6 = v3;
  v4 = v3;
  dispatch_async(a1, block);
}

void __IXDispatchAsyncWithAutoreleasePool_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void IXAsyncTransaction(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = os_transaction_create();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __IXAsyncTransaction_block_invoke;
  v8[3] = &unk_1E85C5448;
  v9 = v5;
  v10 = v3;
  v6 = v5;
  v7 = v3;
  dispatch_async(v4, v8);
}

void __IXAsyncTransaction_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

dispatch_queue_global_t IXQueueForConcurrentOperations()
{
  v0 = qos_class_self();

  return dispatch_get_global_queue(v0, 0);
}

uint64_t _SelectorsRespondedToByDelegate()
{
  v0 = 0;
  v1 = 0;
  v7[28] = *MEMORY[0x1E69E9840];
  v7[0] = sel_coordinatorShouldPrioritize_;
  v7[1] = 1;
  v7[2] = sel_coordinatorShouldResume_;
  v7[3] = 2;
  v7[4] = sel_coordinatorShouldPause_;
  v7[5] = 4;
  v7[6] = sel_coordinator_configuredPromiseDidBeginFulfillment_;
  v7[7] = 8;
  v7[8] = sel_coordinatorDidInstallPlaceholder_;
  v7[9] = 16;
  v7[10] = sel_coordinatorDidCompleteSuccessfully_;
  v7[11] = 32;
  v7[12] = sel_coordinator_canceledWithReason_client_;
  v7[13] = 64;
  v7[14] = sel_shouldPrioritizeAppWithBundleID_;
  v7[15] = 128;
  v7[16] = sel_coordinatorShouldBeginRestoringUserData_;
  v7[17] = 256;
  v7[18] = sel_coordinatorDidInstallPlaceholder_forApplicationRecord_;
  v7[19] = 2048;
  v7[20] = sel_coordinatorDidCompleteSuccessfully_forApplicationRecord_;
  v7[21] = 4096;
  v7[22] = sel_shouldPrioritizeAppWithIdentity_;
  v7[23] = 0x2000;
  v7[24] = sel_coordinatorShouldBeginPostProcessing_forApplicationRecord_;
  v7[25] = 0x4000;
  v7[26] = sel_mayUninstallAppWithIdentity_;
  v7[27] = 0x8000;
  do
  {
    v2 = v7[v0];
    v3 = v7[v0 + 1];
    if (objc_opt_respondsToSelector())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v1 |= v4;
    v0 += 2;
  }

  while (v0 != 28);
  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

id _IXStringForObserverRespondsToSelectors(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v3 = v2;
  if (a1)
  {
    if ([v2 length] <= 1)
    {
      v7 = @"%s";
    }

    else
    {
      v7 = @" %s";
    }

    [v3 appendFormat:v7, "Prioritize"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if ([v3 length] <= 1)
  {
    v8 = @"%s";
  }

  else
  {
    v8 = @" %s";
  }

  [v3 appendFormat:v8, "Resume"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_30:
  if ([v3 length] <= 1)
  {
    v9 = @"%s";
  }

  else
  {
    v9 = @" %s";
  }

  [v3 appendFormat:v9, "Pause"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_34:
  if ([v3 length] <= 1)
  {
    v10 = @"%s";
  }

  else
  {
    v10 = @" %s";
  }

  [v3 appendFormat:v10, "PromiseBegin"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_38:
  if ([v3 length] <= 1)
  {
    v11 = @"%s";
  }

  else
  {
    v11 = @" %s";
  }

  [v3 appendFormat:v11, "InstallPlaceholder"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_42:
  if ([v3 length] <= 1)
  {
    v12 = @"%s";
  }

  else
  {
    v12 = @" %s";
  }

  [v3 appendFormat:v12, "Complete"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_46:
  if ([v3 length] <= 1)
  {
    v13 = @"%s";
  }

  else
  {
    v13 = @" %s";
  }

  [v3 appendFormat:v13, "Cancel"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_50:
  if ([v3 length] <= 1)
  {
    v14 = @"%s";
  }

  else
  {
    v14 = @" %s";
  }

  [v3 appendFormat:v14, "PrioritizeBundleID"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_54:
  if ([v3 length] <= 1)
  {
    v15 = @"%s";
  }

  else
  {
    v15 = @" %s";
  }

  [v3 appendFormat:v15, "BeginRestoringUserData"];
  if ((a1 & 0x800) == 0)
  {
LABEL_11:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_58:
  if ([v3 length] <= 1)
  {
    v16 = @"%s";
  }

  else
  {
    v16 = @" %s";
  }

  [v3 appendFormat:v16, "InstallPlaceholderForRecord"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_12:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_62:
  if ([v3 length] <= 1)
  {
    v17 = @"%s";
  }

  else
  {
    v17 = @" %s";
  }

  [v3 appendFormat:v17, "CompleteForRecord"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_13:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

LABEL_70:
    if ([v3 length] <= 1)
    {
      v19 = @"%s";
    }

    else
    {
      v19 = @" %s";
    }

    [v3 appendFormat:v19, "ShouldBeginPostProcessing"];
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_66:
  if ([v3 length] <= 1)
  {
    v18 = @"%s";
  }

  else
  {
    v18 = @" %s";
  }

  [v3 appendFormat:v18, "PrioritizeAppWithIdentity"];
  if ((a1 & 0x4000) != 0)
  {
    goto LABEL_70;
  }

LABEL_14:
  if ((a1 & 0x8000) != 0)
  {
LABEL_15:
    if ([v3 length] <= 1)
    {
      v4 = @"%s";
    }

    else
    {
      v4 = @" %s";
    }

    [v3 appendFormat:v4, "MayUninstallAppWithIdentity"];
  }

LABEL_19:
  [v3 appendFormat:@" (%lu)]", a1];
  v5 = [v3 copy];

  return v5;
}

__CFString *IXStringForPlaceholderType(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown IXPlaceholderType value %lu", a1];
  }

  else
  {
    v2 = off_1E85C6140[a1];
  }

  return v2;
}

__CFString *IXStringForClientID(unint64_t a1)
{
  if (a1 < 0x1F && ((0x5FFFFFFFu >> a1) & 1) != 0)
  {
    v2 = off_1E85C6160[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown IXClientIdentifier: %lu", a1];
  }

  return v2;
}

void sub_1DA4B0968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4B0CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4B1078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x2Au);
}

void sub_1DA4B1400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4B175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void IXSyncLSDatabase(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "IXSyncLSDatabase";
    v8 = 2112;
    v9 = v1;
    _os_log_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_DEFAULT, "%s: %@; re-fetching local LS database", &v6, 0x16u);
  }

  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 acquireDatabase];

  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "IXSyncLSDatabase";
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Fetch of local LS database complete", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

id IXApplicationRecordForRecordPromise(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v9 = @"Did not receive a LSRecordPromise";
    goto LABEL_19;
  }

  v36 = 0;
  v5 = [v3 fulfillReturningError:&v36];
  v6 = v36;
  v7 = v6;
  if (!v5)
  {
    v10 = [v6 domain];
    if ([v10 isEqualToString:*MEMORY[0x1E696A768]])
    {
      v11 = [v7 code];

      if (v11 == -10814)
      {
        v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v39 = "_FulfillLSRecordPromise";
          v40 = 2112;
          v41 = v3;
          _os_log_impl(&dword_1DA47A000, v12, OS_LOG_TYPE_DEFAULT, "%s: Could not fulfill record promise %@; the record was likely superseded or the app was uninstalled. Falling back to fetching the current record", buf, 0x16u);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      IXApplicationRecordForRecordPromise_cold_2();
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      IXApplicationRecordForRecordPromise_cold_1(v3, v5, v12);
    }

LABEL_15:

    v8 = 0;
    goto LABEL_16;
  }

  v8 = v5;
LABEL_16:

  if (v8)
  {
    v30 = v3;
    v13 = v4;
    v14 = 0;
LABEL_22:
    v16 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v17 = [v8 applicationExtensionRecords];
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v31 + 1) + 8 * i);
          v23 = [v22 extensionPointRecord];
          if (v23)
          {
            [v16 addObject:v23];
          }

          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v19);
    }

    [v16 addObject:v8];
    v24 = MEMORY[0x1E6963688];
    v25 = [v16 copy];
    [v24 resolveAllPropertiesOfRecords:v25 andDetachOnQueue:0];

    v4 = v13;
    v3 = v30;
    goto LABEL_32;
  }

  v9 = @"Could not fulfill LSRecordPromise";
LABEL_19:
  IXSyncLSDatabase(v9);
  if (v4)
  {
    v35 = 0;
    v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v35];
    v15 = v35;
    v14 = v15;
    if (v8)
    {
      v30 = v3;
      v13 = v4;
      goto LABEL_22;
    }

    v28 = [v15 domain];
    if ([v28 isEqualToString:*MEMORY[0x1E696A768]])
    {
      v29 = [v14 code];

      if (v29 == -10814)
      {
        v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v39 = "IXApplicationRecordForRecordPromise";
          v40 = 2112;
          v41 = v4;
          _os_log_impl(&dword_1DA47A000, v16, OS_LOG_TYPE_DEFAULT, "%s: Application record for %@ was not found and its LSRecordPromise could not be fulfilled; likely the application was uninstalled. Caller will get a nil LSApplicationRecord", buf, 0x16u);
        }

LABEL_44:
        v8 = 0;
LABEL_32:

        goto LABEL_34;
      }
    }

    else
    {
    }

    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      IXApplicationRecordForRecordPromise_cold_3();
    }

    goto LABEL_44;
  }

  v14 = 0;
  v8 = 0;
LABEL_34:

  v26 = *MEMORY[0x1E69E9840];

  return v8;
}

id IXApplicationRecordForIdentityInDomain(void *a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__6;
  v38 = __Block_byref_object_dispose__6;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  v6 = [v5 bundleID];
  switch(a2)
  {
    case 1:
      v7 = 0;
      break;
    case 2:
LABEL_10:
      v13 = [MEMORY[0x1E6963648] sharedDatabaseContext];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __IXApplicationRecordForIdentityInDomain_block_invoke;
      v23[3] = &unk_1E85C6288;
      v25 = &v28;
      v26 = &v34;
      v24 = v6;
      [v13 accessSystemScopeUsingBlock:v23];

LABEL_14:
      goto LABEL_15;
    case 3:
      v7 = 1;
      break;
    default:
      v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = MIStringForInstallationDomain();
        IXApplicationRecordForIdentityInDomain_cold_1(v15, buf, v14);
      }

      v16 = MIStringForInstallationDomain();
      v18 = _CreateError("IXApplicationRecordForIdentityInDomain", 140, @"IXErrorDomain", 1uLL, 0, 0, @"Unexpected value for installation domain: %@", v17, v16);

      v13 = v29[5];
      v29[5] = v18;
      goto LABEL_14;
  }

  v8 = objc_alloc(MEMORY[0x1E69635F8]);
  v9 = (v29 + 5);
  obj = v29[5];
  v10 = [v8 initWithBundleIdentifier:v6 allowPlaceholder:1 error:&obj];
  objc_storeStrong(v9, obj);
  v11 = v35[5];
  v35[5] = v10;

  if (v35[5])
  {
    v12 = 1;
  }

  else
  {
    v12 = v7;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  v19 = v35[5];
  if (a3 && !v19)
  {
    *a3 = v29[5];
    v19 = v35[5];
  }

  v20 = v19;

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

void sub_1DA4B2290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __IXApplicationRecordForIdentityInDomain_block_invoke(void *a1, char a2, void *a3)
{
  v6 = a3;
  if (v6 || (a2 & 1) == 0)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E69635F8]);
    v8 = a1[4];
    v9 = *(a1[5] + 8);
    obj = *(v9 + 40);
    v10 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:1 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

id IXApplicationRecordPromiseForIdentityInDomain(void *a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v4 = IXApplicationRecordForIdentityInDomain(a1, a2, &v11);
  v5 = v11;
  if (v4)
  {
    v10 = v5;
    v6 = [objc_alloc(MEMORY[0x1E6963690]) initWithRecord:v4 error:&v10];
    v7 = v10;

    v5 = v7;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v8 = v5;
    *a3 = v5;
  }

LABEL_7:

  return v6;
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x20u);
}

void sub_1DA4B7D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4B8408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4B8830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4B97BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BA2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BA6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BAB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BAFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BB8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BBCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BCF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BD6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BDF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BE3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BE768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BEBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BEE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BF00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BF6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4BF99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void IXDisplayUserPresentableErrorForAppWithIdentity(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[IXServerConnection sharedConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __IXDisplayUserPresentableErrorForAppWithIdentity_block_invoke;
  v6[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v6[4] = a2;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 _remote_displayUserPresentableErrorForApp:v3 code:a2];
}

void __IXDisplayUserPresentableErrorForAppWithIdentity_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __IXDisplayUserPresentableErrorForAppWithIdentity_block_invoke_cold_1(a1);
  }
}

void IXDisplayUserPresentableErrorForAppsWithIdentitites(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[IXServerConnection sharedConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __IXDisplayUserPresentableErrorForAppsWithIdentitites_block_invoke;
  v6[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v6[4] = a2;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 _remote_displayUserPresentableErrorForApps:v3 code:a2];
}

void __IXDisplayUserPresentableErrorForAppsWithIdentitites_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __IXDisplayUserPresentableErrorForAppsWithIdentitites_block_invoke_cold_1(a1);
  }
}

void IXDisplayUserPresentableErrorForApp(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v3];

  IXDisplayUserPresentableErrorForAppWithIdentity(v4, a2);
}

void IXDisplayUserPresentableErrorForApps(uint64_t a1, uint64_t a2)
{
  v3 = [IXApplicationIdentity identitiesForBundleIdentifiers:a1];
  IXDisplayUserPresentableErrorForAppsWithIdentitites(v3, a2);
}

void IXDisplayUserPresentableErrorForAppWithLocalizedName(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[IXServerConnection sharedConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __IXDisplayUserPresentableErrorForAppWithLocalizedName_block_invoke;
  v6[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v6[4] = a2;
  v5 = [v4 remoteObjectProxyWithErrorHandler:v6];
  [v5 _remote_displayUserPresentableErrorForAppWithLocalizedName:v3 code:a2];
}

void __IXDisplayUserPresentableErrorForAppWithLocalizedName_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __IXDisplayUserPresentableErrorForAppWithLocalizedName_block_invoke_cold_1(a1);
  }
}

__CFString *IXStringForCoordinatorImportance(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unhandled";
  }

  else
  {
    return off_1E85C63B8[a1];
  }
}

BOOL IXOncePerBootWorkNeeded(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  if (v2 >= 0x20)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Identifier %s must be less <= %d bytes in length but was %ld bytes", v1, 31, v2}];
  }

  v3 = sem_open(v1, 0);
  v4 = v3;
  if (v3 != -1)
  {
    sem_close(v3);
  }

  return v4 == -1;
}

void IXSetOncePerBootWorkCompleted(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  if (v2 >= 0x20)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Identifier %s must be less <= %d bytes in length but was %ld bytes", v1, 31, v2}];
  }

  v3 = sem_open(v1, 512, 256, 0);
  if (v3 == -1)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __error();
      v7 = strerror(*v6);
      *buf = 136315650;
      v10 = "IXSetOncePerBootWorkCompleted";
      v11 = 2080;
      v12 = v1;
      v13 = 2080;
      v14 = v7;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to create semaphore %s: %s", buf, 0x20u);
    }

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];

    sem_close(v3);
  }
}

BOOL IXRunOncePerBootWork(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = IXOncePerBootWorkNeeded(v3);
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v4[2](v4);
    objc_autoreleasePoolPop(v6);
    IXSetOncePerBootWorkCompleted(v3);
  }

  return v5;
}

void _RemoveDelegateFromMap(void *a1)
{
  v1 = sAppInstallCoordinatorQueue;
  v2 = a1;
  dispatch_assert_queue_V2(v1);
  [sOutstandingDelegates removeObject:v2];
}

void sub_1DA4C2AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 248), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _AddDelegateToMap(void *a1)
{
  v1 = sAppInstallCoordinatorQueue;
  v2 = a1;
  dispatch_assert_queue_V2(v1);
  [sOutstandingDelegates addObject:v2];
}

void sub_1DA4C372C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4C3AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4C4784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4C5078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4C53D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4C6134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4C65C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4C6A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

__CFString *IXStringForAppRemovabilityClient(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown IXAppRemovabilityClient value: %lu", a1];
  }

  else
  {
    v2 = off_1E85C65B8[a1];
  }

  return v2;
}

void sub_1DA4C7358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *IXStringForCoordinatorScopeRequirement(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Coordinator Scope Requirement: %hhu", a1];
  }

  else
  {
    v2 = off_1E85C6680[a1];
  }

  return v2;
}

void sub_1DA4CA044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4CABE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4CF6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4CFEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4D03A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4D1650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4D1DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1DA4D2330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4D2764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA4D2B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

__CFString *IXStringForCoordinatorScope(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown IXCoordinatorScope value %hhu", a1];
  }

  else
  {
    v2 = off_1E85C6800[a1];
  }

  return v2;
}

id IXCopyRemovabilityStorageWithChangeClockURL()
{
  if (_sRemovabilityStorageWithChangeClockURLOverride)
  {
    v0 = _sRemovabilityStorageWithChangeClockURLOverride;
  }

  else
  {
    v1 = +[IXGlobalConfiguration sharedInstance];
    v6 = 0;
    v2 = [v1 removabilityDirectoryWithError:&v6];
    v3 = v6;

    if (v2)
    {
      v0 = [v2 URLByAppendingPathComponent:@"ClockedRemovabilityMetadata.plist" isDirectory:0];
    }

    else
    {
      v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        IXCopyRemovabilityStorageWithChangeClockURL_cold_1();
      }

      v0 = 0;
    }
  }

  return v0;
}

uint64_t IXGetRemovabilityForAppByClient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    a3 = [v6 removabilityForClient:a4 notFoundRemovability:a3];
  }

  return a3;
}

uint64_t IXGetUncachedRemovabilityMetadataForAppByClient(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = _GetRemovabilityData(v7, a4);
  v9 = v8;
  if (v8)
  {
    v10 = IXGetRemovabilityForAppByClient(v8, v7, a3, a2);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

NSObject *IXGetUncachedRemovabilityDataStore(NSObject **a1)
{
  v2 = IXCopyRemovabilityStorageURL();
  v3 = _CopyRemovabilityDataFromURL(v2);

  if (!v3)
  {
    v11 = 0;
    goto LABEL_49;
  }

  v26 = 0;
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v26];
  v5 = v26;
  if (v4)
  {
    objc_opt_class();
    v6 = v4;
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v7 objectForKeyedSubscript:@"RemovabilityEntries"];
      if (v8)
      {
        objc_opt_class();
        v9 = v8;
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          v12 = [v7 objectForKeyedSubscript:@"RemovabilityChangeClock"];
          if (v12)
          {
            objc_opt_class();
            v13 = v12;
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }

            if (v14)
            {
              v25 = _RemovabilityPListToMetadata(v9);
              if (v25)
              {
                v18 = [IXDataStoreClock newClockWithDictionary:v13];
                if (v18)
                {
                  v19 = v18;
                  if (a1)
                  {
                    v20 = v18;
                    *a1 = v19;
                  }

                  v16 = 1;
                  v15 = v25;
                  goto LABEL_42;
                }

                v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  IXGetUncachedRemovabilityDataStore_cold_2();
                }

                v15 = 0;
                v19 = 0;
              }

              else
              {
                v19 = IXGetLoggingHandle(kIXLoggingSubsystem);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  IXGetUncachedRemovabilityDataStore_cold_3();
                }

                v15 = 0;
              }

              v16 = 0;
LABEL_42:

              v17 = v25;
              goto LABEL_43;
            }

            v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              IXGetUncachedRemovabilityDataStore_cold_4();
            }
          }

          else
          {
            v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              IXGetUncachedRemovabilityDataStore_cold_5();
            }
          }

          v15 = 0;
          v16 = 0;
LABEL_43:

          goto LABEL_44;
        }

        v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          IXGetUncachedRemovabilityDataStore_cold_6();
        }
      }

      else
      {
        v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          IXGetUncachedRemovabilityDataStore_cold_7();
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_44:

      v22 = v15;
      v23 = v22;
      if (v16)
      {
        v11 = v22;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_48;
    }

    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      IXGetUncachedRemovabilityDataStore_cold_1();
    }
  }

  else
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      IXGetUncachedRemovabilityDataStore_cold_8();
    }
  }

  v11 = 0;
LABEL_48:

LABEL_49:

  return v11;
}

id LoadInfoPlistFromBundleAtURL(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *MEMORY[0x1E695E480];
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v9 = Unique;
    v17 = 0;
    v10 = LoadInfoPlistFromBundle(Unique, v6, &v17);
    v11 = v17;
    CFRelease(v9);
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LoadInfoPlistFromBundleAtURL_cold_1(v5);
  }

  v13 = [v5 path];
  v11 = _CreateError("LoadInfoPlistFromBundleAtURL", 24, @"IXErrorDomain", 0xAuLL, 0, 0, @"Failed to create CFBundle from %@", v14, v13);

  v10 = 0;
  if (a3)
  {
LABEL_7:
    if (!v10)
    {
      v15 = v11;
      *a3 = v11;
    }
  }

LABEL_9:

  return v10;
}

id LoadInfoPlistFromBundle(__CFBundle *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    v8 = CFBundleGetInfoDictionary(a1);
    FilteredInfoPlist = v8;
    if (v8)
    {
      v9 = [v8 mutableCopy];
      v7 = v9;
      if (v9)
      {
        [v9 removeObjectForKey:@"CFBundleInfoPlistURL"];
      }

      goto LABEL_8;
    }

    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LoadInfoPlistFromBundle_cold_3();
    }

    _CreateError("LoadInfoPlistFromBundle", 72, @"IXErrorDomain", 0xFuLL, 0, 0, @"CFBundleGetInfoDictionary returned NULL for bundle %@", v17, a1);
    goto LABEL_18;
  }

  FilteredInfoPlist = _CFBundleCreateFilteredInfoPlist();
  if (!FilteredInfoPlist)
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LoadInfoPlistFromBundle_cold_2();
    }

    _CreateError("LoadInfoPlistFromBundle", 55, @"IXErrorDomain", 0xFuLL, 0, 0, @"Failed to get filtered Info.plist with keys %@ from bundle %@", v12, v5);
    v10 = LABEL_18:;
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LoadInfoPlistFromBundle_cold_1();
    }

    v14 = objc_opt_class();
    v20 = NSStringFromClass(v14);
    v10 = _CreateError("LoadInfoPlistFromBundle", 60, @"IXErrorDomain", 0x10uLL, 0, 0, @"Object returned from _CFBundleCreateFilteredInfoPlist for %@ was not a dictionary, was type %@", v15, a1);

    goto LABEL_19;
  }

  v7 = [FilteredInfoPlist mutableCopy];
LABEL_8:
  v10 = 0;
LABEL_20:

  if (a3 && !v7)
  {
    v18 = v10;
    *a3 = v10;
  }

  return v7;
}

id AppURLFromExtractedPayloadDir(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v28 = 0;
  v4 = IXUrlsForItemsInDirectoryAtURL(v3, 1, &v28);
  v5 = v28;
  if (!v4)
  {
LABEL_16:
    if (a2)
    {
      v19 = v5;
      v14 = 0;
      *a2 = v5;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_19;
  }

  v22 = a2;
  v23 = v3;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v7)
  {
LABEL_10:

LABEL_13:
    v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
    v3 = v23;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      AppURLFromExtractedPayloadDir_cold_1(v23);
    }

    v16 = [v23 path];
    v18 = _CreateError("AppURLFromExtractedPayloadDir", 112, @"IXErrorDomain", 0xAuLL, 0, 0, @"Failed to find a .app inside the extracted contents at %@", v17, v16);

    v5 = v18;
    a2 = v22;
    goto LABEL_16;
  }

  v8 = v7;
  v9 = *v25;
LABEL_4:
  v10 = 0;
  while (1)
  {
    if (*v25 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v24 + 1) + 8 * v10);
    v12 = [v11 pathExtension];
    v13 = [v12 isEqualToString:@"app"];

    if (v13)
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v14 = v11;

  if (!v14)
  {
    goto LABEL_13;
  }

  v3 = v23;
LABEL_19:

  v20 = *MEMORY[0x1E69E9840];

  return v14;
}

void _RemoveDelegateFromMap_0(void *a1)
{
  v1 = sAppInstallCoordinatorQueue_0;
  v2 = a1;
  dispatch_assert_queue_V2(v1);
  [sOutstandingDelegates_0 removeObject:v2];
}

void _AddDelegateToMap_0(void *a1)
{
  v1 = sAppInstallCoordinatorQueue_0;
  v2 = a1;
  dispatch_assert_queue_V2(v1);
  [sOutstandingDelegates_0 addObject:v2];
}

void sub_1DA4D4DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4D4FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t *OUTLINED_FUNCTION_2_2@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

__CFString *IXStatusForInstallationProgress(int a1)
{
  if (a1 <= 39)
  {
    if (a1 > 19)
    {
      switch(a1)
      {
        case 20:
          return @"InspectingPackage";
        case 30:
          return @"PreflightingApplication";
        case 35:
          return @"PatchingApplication";
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          return @"InstallingEmbeddedProfile";
        case 5:
          return @"CreatingStagingDirectory";
        case 15:
          return @"ExtractingPackage";
      }
    }
  }

  else if (a1 <= 69)
  {
    switch(a1)
    {
      case '(':
        return @"VerifyingApplication";
      case '2':
        return @"CreatingContainer";
      case '<':
        return @"InstallingApplication";
    }
  }

  else if (a1 > 89)
  {
    if (a1 == 90)
    {
      return @"GeneratingApplicationMap";
    }

    if (a1 == 100)
    {
      return @"InstallComplete";
    }
  }

  else
  {
    if (a1 == 70)
    {
      return @"PostflightingApplication";
    }

    if (a1 == 80)
    {
      return @"SandboxingApplication";
    }
  }

  return @"UnknownStatus";
}

__CFString *IXStatusForUninstallationProgress(int a1)
{
  v1 = @"UnknownStatus";
  if (a1 == 90)
  {
    v1 = @"GeneratingApplicationMap";
  }

  if (a1 == 50)
  {
    return @"RemovingApplication";
  }

  else
  {
    return v1;
  }
}

void sub_1DA4D6098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA4D67E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA4D6AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IXRemoveItemAtURL(void *a1, int a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = removefile_state_alloc();
  v8 = v6;
  value = 0;
  if (!v5)
  {
    v19 = *MEMORY[0x1E696A798];
    v20 = @"nil url passed to -removeItemAtURL:error:";
    v21 = 54;
    v22 = 14;
LABEL_19:
    _CreateError("IXRemoveItemAtURL", v21, v19, v22, 0, 0, v20, v7, v31);
    goto LABEL_20;
  }

  if (removefile_state_set(v6, 3u, _removefile_error_callback))
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 136315394;
      v34 = "IXRemoveItemAtURL";
      v35 = 2080;
      v36 = v11;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: removefile_state_set REMOVEFILE_STATE_ERROR_CALLBACK failed: %s", buf, 0x16u);
    }
  }

  if (removefile_state_set(v8, 4u, &value))
  {
    v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = __error();
      v14 = strerror(*v13);
      *buf = 136315394;
      v34 = "IXRemoveItemAtURL";
      v35 = 2080;
      v36 = v14;
      _os_log_impl(&dword_1DA47A000, v12, OS_LOG_TYPE_DEFAULT, "%s: removefile_state_set REMOVEFILE_STATE_ERROR_CONTEXT failed: %s", buf, 0x16u);
    }
  }

  if (a2)
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  if (removefile([v5 fileSystemRepresentation], v8, v15) && *__error() != 2)
  {
    v23 = *MEMORY[0x1E696A798];
    v24 = *__error();
    v25 = __error();
    v31 = v5;
    strerror(*v25);
    v20 = @"removefile of %@ failed: %s";
    v21 = 75;
    v19 = v23;
    v22 = v24;
    goto LABEL_19;
  }

  v16 = value;
  if ((value & 0xFFFFFFFD) == 0)
  {
    removefile_state_free(v8);
    v26 = 0;
    v28 = 1;
    goto LABEL_24;
  }

  v17 = *MEMORY[0x1E696A798];
  strerror(value);
  _CreateError("IXRemoveItemAtURL", 81, v17, v16, 0, 0, @"removefile of %@ failed: %s", v18, v5);
  v26 = LABEL_20:;
  removefile_state_free(v8);
  if (a3)
  {
    v27 = v26;
    v28 = 0;
    *a3 = v26;
  }

  else
  {
    v28 = 0;
  }

LABEL_24:

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t _removefile_error_callback(_removefile_state *a1, uint64_t a2, _DWORD *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  dst = 0;
  if (removefile_state_get(a1, 5u, &dst))
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "_removefile_error_callback";
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: removefile hit error for %s but we failed to get the error number", buf, 0x16u);
    }

    dst = 2;
  }

  else if (dst != 2)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = strerror(dst);
      *buf = 136315650;
      v12 = "_removefile_error_callback";
      v13 = 2080;
      v14 = a2;
      v15 = 2080;
      v16 = v7;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: removefile hit error for %s : %s", buf, 0x20u);
    }
  }

  if (a3 && !*a3)
  {
    *a3 = dst;
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL IXCopyItemAtURL(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  if ((a3 & 1) != 0 || (memset(&v21, 0, sizeof(v21)), !lstat([v7 fileSystemRepresentation], &v21)))
  {
    if (!copyfile([v7 fileSystemRepresentation], objc_msgSend(v8, "fileSystemRepresentation"), 0, 0x10C800Fu))
    {
      v19 = 0;
      v10 = 1;
      goto LABEL_14;
    }

    v11 = *MEMORY[0x1E696A798];
    v12 = *__error();
    v13 = __error();
    strerror(*v13);
    v19 = _CreateError("IXCopyItemAtURL", 121, v11, v12, 0, 0, @"copyfile of %@ to %@ failed: %s", v14, v7);
    v10 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = *__error();
    v10 = v9 == 2;
    if (v9 == 2)
    {
      v19 = 0;
      if (!a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = *MEMORY[0x1E696A798];
      v16 = *__error();
      v17 = __error();
      strerror(*v17);
      v19 = _CreateError("IXCopyItemAtURL", 106, v15, v16, 0, 0, @"stat of %@ failed: %s", v18, v7);
      if (!a4)
      {
        goto LABEL_14;
      }
    }
  }

  if (!v10)
  {
    v19 = v19;
    v10 = 0;
    *a4 = v19;
  }

LABEL_14:

  return v10;
}

BOOL IXItemExistsAtURL(void *a1, BOOL *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  memset(&v15, 0, sizeof(v15));
  v6 = lstat([v5 fileSystemRepresentation], &v15);
  if (v6)
  {
    v7 = *__error();
    if (v7 != 2)
    {
      v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = strerror(v7);
        *buf = 136315650;
        v17 = "IXItemExistsAtURL";
        v18 = 2112;
        v19 = v5;
        v20 = 2080;
        v21 = v9;
        _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to determine if %@ exists: %s", buf, 0x20u);
      }
    }

    if (a3)
    {
      v10 = *MEMORY[0x1E696A798];
      v11 = [v5 fileSystemRepresentation];
      strerror(v7);
      *a3 = _CreateError("IXItemExistsAtURL", 155, v10, v7, 0, 0, @"lstat of %s failed: %s", v12, v11);
    }
  }

  else if (a2)
  {
    *a2 = (v15.st_mode & 0xF000) == 0x4000;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6 == 0;
}

BOOL IXCreateDirectoryAtURL(void *a1, int a2, mode_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = [v9 fileSystemRepresentation];
  if (a2)
  {
    v11 = mkpath_np(v10, a3);
    if (v11)
    {
      v12 = v11;
      if (v11 != 17)
      {
        v13 = *MEMORY[0x1E696A798];
        v14 = [v9 path];
        strerror(v12);
        v16 = _CreateError("IXCreateDirectoryAtURL", 171, v13, v12, 0, 0, @"mkpath_np of %@ failed: %s", v15, v14);

        goto LABEL_15;
      }
    }
  }

  else if (mkdir(v10, a3) && *__error() != 17)
  {
    v32 = *MEMORY[0x1E696A798];
    v33 = *__error();
    v29 = [v9 path];
    v34 = __error();
    strerror(*v34);
    _CreateError("IXCreateDirectoryAtURL", 177, v32, v33, 0, 0, @"mkdir of %@ failed: %s", v35, v29);
    goto LABEL_14;
  }

  if (a4 == -1)
  {
    v16 = 0;
    v21 = 1;
    goto LABEL_21;
  }

  v17 = opendir([v9 fileSystemRepresentation]);
  if (!v17)
  {
    v27 = *MEMORY[0x1E696A798];
    v28 = *__error();
    v29 = [v9 path];
    v30 = __error();
    strerror(*v30);
    _CreateError("IXCreateDirectoryAtURL", 189, v27, v28, 0, 0, @"opendir of %@ failed: %s", v31, v29);
    v16 = LABEL_14:;

LABEL_15:
    v21 = 0;
    if (!a5)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v18 = v17;
  v19 = dirfd(v17);
  v20 = fcntl(v19, 64, a4);
  v21 = v20 == 0;
  if (v20)
  {
    v22 = *MEMORY[0x1E696A798];
    v23 = *__error();
    v24 = [v9 path];
    v25 = __error();
    strerror(*v25);
    v16 = _CreateError("IXCreateDirectoryAtURL", 195, v22, v23, 0, 0, @"Failed to setclass(%d) on directory %@: %s", v26, a4);
  }

  else
  {
    v16 = 0;
  }

  closedir(v18);
  if (a5)
  {
LABEL_19:
    if (!v21)
    {
      v36 = v16;
      v21 = 0;
      *a5 = v16;
    }
  }

LABEL_21:

  return v21;
}

id IXUrlsForItemsInDirectoryAtURL(void *a1, char a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = objc_opt_new();
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v7 = v38;
  v38[0] = __IXUrlsForItemsInDirectoryAtURL_block_invoke;
  v38[1] = &unk_1E85C69D8;
  v41 = a2;
  v8 = v5;
  v39 = v8;
  v9 = v6;
  v40 = v9;
  v10 = v8;
  v11 = v37;
  memset(&v44, 0, 512);
  v42 = 0;
  v12 = open([v10 fileSystemRepresentation], 1048832);
  if ((v12 & 0x80000000) == 0)
  {
    v13 = fdopendir(v12);
    if (v13)
    {
      v14 = v13;
      v35 = v9;
      v36 = a3;
      while (1)
      {
        v15 = readdir_r(v14, &v44, &v42);
        if (v15 || !v42)
        {
LABEL_17:
          closedir(v14);
          v9 = v35;
          a3 = v36;
          goto LABEL_19;
        }

        v16 = objc_autoreleasePoolPush();
        v17 = v42;
        if (!v42->d_type)
        {
          break;
        }

LABEL_16:
        v26 = (v38[0])(v11, v17);
        objc_autoreleasePoolPop(v16);
        if ((v26 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v18 = v7;
      memset(&v43, 0, sizeof(v43));
      v19 = MEMORY[0x1E696AEC0];
      d_namlen = v42->d_namlen;
      v21 = v10;
      v22 = [v19 stringWithFileSystemRepresentation:v17->d_name length:d_namlen];
      v23 = [v21 URLByAppendingPathComponent:v22 isDirectory:0];

      if (!lstat([v23 fileSystemRepresentation], &v43))
      {
        v24 = v43.st_mode & 0xF000;
        switch(v24)
        {
          case 16384:
            v25 = 4;
            goto LABEL_14;
          case 32768:
            v25 = 8;
            goto LABEL_14;
          case 40960:
            v25 = 10;
LABEL_14:
            v17->d_type = v25;
            break;
        }
      }

      v17 = v42;
      v7 = v18;
      goto LABEL_16;
    }
  }

  v15 = *__error();
LABEL_19:

  if (v15)
  {
    v27 = *MEMORY[0x1E696A798];
    v28 = [v10 fileSystemRepresentation];
    strerror(v15);
    v30 = _CreateError("IXUrlsForItemsInDirectoryAtURL", 298, v27, v15, 0, 0, @"_IterateDirectory for %s returned %s", v29, v28);
    v31 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v31 = [v9 copy];
    v30 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  if (!v31)
  {
    v32 = v30;
    *a3 = v30;
  }

LABEL_25:

  v33 = *MEMORY[0x1E69E9840];

  return v31;
}

uint64_t __IXUrlsForItemsInDirectoryAtURL_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2 + 21;
  if (*(a2 + 21) != 46 || *(a2 + 22) && (*(a2 + 22) != 46 || *(a2 + 23)))
  {
    if (*(a2 + 20) == 10 && *(a1 + 48) == 1)
    {
      v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __IXUrlsForItemsInDirectoryAtURL_block_invoke_cold_1(a1, v4, v5);
      }
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:a2 + 21 length:*(a2 + 18)];
      v5 = [v6 URLByAppendingPathComponent:v7 isDirectory:*(a2 + 20) == 4];

      if (v5)
      {
        [*(a1 + 40) addObject:v5];
      }

      else
      {
        v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 32) path];
          v12 = 136315650;
          v13 = "IXUrlsForItemsInDirectoryAtURL_block_invoke";
          v14 = 2080;
          v15 = v4;
          v16 = 2112;
          v17 = v9;
          _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to create URL by appending %s to %@", &v12, 0x20u);
        }
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

id IXCreateTemporaryDirectoryInDirectoryURL(void *a1, void *a2)
{
  v3 = [a1 URLByAppendingPathComponent:@"temp.XXXXXX" isDirectory:1];
  v4 = strdup([v3 fileSystemRepresentation]);
  if (mkdtemp(v4))
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
    v6 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = __error();
    v6 = _CreateError("IXCreateTemporaryDirectoryInDirectoryURL", 321, *MEMORY[0x1E696A798], *v7, 0, 0, @"Failed to create temp dir at path %s", v8, v4);
    v5 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (!v5)
  {
    v9 = v6;
    *a2 = v6;
  }

LABEL_7:
  free(v4);

  return v5;
}

id _CreateErrorV(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = [v17 mutableCopy];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  v21 = IXStringForIXError(v15, a4);
  [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696A588]];

  if (v18)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v18 arguments:a8];
    [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  [v20 setObject:v23 forKeyedSubscript:@"FunctionName"];

  v24 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [v20 setObject:v24 forKeyedSubscript:@"SourceFileLine"];

  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:v15 code:a4 userInfo:v20];

  return v25;
}

id _CreateError(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

void sub_1DA4DD570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void IXCreateUserPresentableError_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "IXCreateUserPresentableError";
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: Client attempted to create IXUserPresentableError with invalid code (kIXUserPresentableUnknownError)", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void IXValidateMobileInstallationSPIEntitlement_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = IXCopyClientNameForConnection(a1);
  v7 = 136316162;
  v8 = "IXValidateMobileInstallationSPIEntitlement";
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = @"com.apple.private.mobileinstall.allowedSPI";
  v13 = 2112;
  v14 = a2;
  v15 = 2112;
  v16 = 0;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: Process %@ is required to have an entitlement named %@ with an array containing %@ to call this SPI. : %@", &v7, 0x34u);

  v6 = *MEMORY[0x1E69E9840];
}

void __IXFrameworkBundle_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to load bundle for our framework at %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void IXLocalizedBodyForOSVersionError_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_1DA47A000, v1, OS_LOG_TYPE_ERROR, "%s: Underlying error was nil when constructing OS version error for app name %@ and number of apps %lu", v3, 0x20u);
  v2 = *MEMORY[0x1E69E9840];
}

void __IXPresentErrorHighlightingLocalizedAppName_block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to open Settings : %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void _CheckCancelRequestSanity_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CheckCancelRequestSanity_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void IXEncodeRootObject_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = "IXEncodeRootObject";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  v10 = 2112;
  v11 = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: Got exception while trying to encode object %@ : %@ : %@", &v4, 0x2Au);
  v3 = *MEMORY[0x1E69E9840];
}

void IXApplicationRecordForRecordPromise_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 136315906;
  v10 = "_FulfillLSRecordPromise";
  v11 = 2112;
  v12 = a1;
  v13 = 2112;
  v14 = v7;
  v15 = 2112;
  v16 = a2;
  _os_log_fault_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_FAULT, "%s: Expected LSApplicationRecord instance from fulfilling LSRecord promise %@ but got instance with class %@ instead (%@)", &v9, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void IXApplicationRecordForRecordPromise_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1DA47A000, v0, v1, "%s: Failed to fulfill record promise %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void IXApplicationRecordForRecordPromise_cold_3()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_4(&dword_1DA47A000, v0, v1, "%s: Failed to look up LSApplicationRecord from fallback bundle ID %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void IXApplicationRecordForIdentityInDomain_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "IXApplicationRecordForIdentityInDomain";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: Unexpected value for installation domain: %@ : %@", buf, 0x20u);
}

void __IXDisplayUserPresentableErrorForAppWithIdentity_block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v2, v3, "%s: Failed to contact installcoordinationd to present error %lu : %@", v5);
  v4 = *MEMORY[0x1E69E9840];
}

void __IXDisplayUserPresentableErrorForAppsWithIdentitites_block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v2, v3, "%s: Failed to contact installcoordinationd to present error %lu : %@", v5);
  v4 = *MEMORY[0x1E69E9840];
}

void __IXDisplayUserPresentableErrorForAppWithLocalizedName_block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = 136315650;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v2, v3, "%s: Failed to contact installcoordinationd to present error %lu : %@", v5);
  v4 = *MEMORY[0x1E69E9840];
}

void IXCopyRemovabilityStorageURL_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void IXCopyRemovabilityStorageWithChangeClockURL_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _GetRemovabilityData_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5_2();
  _os_log_fault_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_FAULT, "%s: Failed to read removability data because the persona for %@ couldn't be resolved. This defeats a daemon launch avoidance optimization: %@", v2, 0x20u);
  v1 = *MEMORY[0x1E69E9840];
}

void _GetRemovabilityData_cold_2()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to fetch removability for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void _GetRemovabilityData_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void _GetRemovabilityData_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _GetRemovabilityData_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _GetRemovabilityData_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void _GetRemovabilityData_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void _GetRemovabilityData_cold_8()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Received non dictionary object for requested keys %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void IXGetUncachedRemovabilityDataStore_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void IXGetUncachedRemovabilityDataStore_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void IXGetUncachedRemovabilityDataStore_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void IXGetUncachedRemovabilityDataStore_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void IXGetUncachedRemovabilityDataStore_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void IXGetUncachedRemovabilityDataStore_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void IXGetUncachedRemovabilityDataStore_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void IXGetUncachedRemovabilityDataStore_cold_8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CopyRemovabilityDataFromURL_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 path];
  v8[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v9 = v6;
  v10 = a2;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: Failed to read removability data from %@ : %@", v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

void _CopyRemovabilityDataFromURL_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_fault_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_FAULT, "%s: Failed to read removability data from %@ because it wasn't accessible due to sandboxing restrictions on this process. This defeats a daemon launch avoidance optimization.", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

void _CopyRemovabilityDataFromURL_cold_3(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "_CopyRemovabilityDataFromURL";
  _os_log_fault_impl(&dword_1DA47A000, log, OS_LOG_TYPE_FAULT, "%s: removabilityURL was nil, so returning nil.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void LoadInfoPlistFromBundleAtURL_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

void LoadInfoPlistFromBundle_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v7 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x2Au);

  v6 = *MEMORY[0x1E69E9840];
}

void LoadInfoPlistFromBundle_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  v4[0] = 136315906;
  OUTLINED_FUNCTION_1_5();
  v5 = v0;
  v6 = v1;
  v7 = 0;
  _os_log_error_impl(&dword_1DA47A000, v2, OS_LOG_TYPE_ERROR, "%s: Failed to get filtered Info.plist with keys %@ from bundle %@ : %@", v4, 0x2Au);
  v3 = *MEMORY[0x1E69E9840];
}

void LoadInfoPlistFromBundle_cold_3()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_1_5();
  v3 = 0;
  _os_log_error_impl(&dword_1DA47A000, v0, OS_LOG_TYPE_ERROR, "%s: CFBundleGetInfoDictionary returned NULL for bundle %@ : %@", v2, 0x20u);
  v1 = *MEMORY[0x1E69E9840];
}

void AppURLFromExtractedPayloadDir_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

void __IXUrlsForItemsInDirectoryAtURL_block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) fileSystemRepresentation];
  v7 = 136315650;
  v8 = "IXUrlsForItemsInDirectoryAtURL_block_invoke";
  v9 = 2080;
  v10 = v5;
  v11 = 2080;
  v12 = a2;
  _os_log_debug_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_DEBUG, "%s: Ignoring symlink at %s/%s", &v7, 0x20u);
  v6 = *MEMORY[0x1E69E9840];
}

void _ClientProcessLookupMachPortName_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "_ClientProcessLookupMachPortName";
  v5 = 2080;
  v6 = a1;
  v7 = 2112;
  v8 = 0;
  _os_log_error_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_ERROR, "%s: This process does not have sandbox access to mach-lookup %s : %@", &v3, 0x20u);
  v2 = *MEMORY[0x1E69E9840];
}

void _ClientProcessLookupMachPortName_cold_2(int a1, int __errnum, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  strerror(__errnum);
  v5 = 136315906;
  v6 = "_ClientProcessLookupMachPortName";
  v7 = 2080;
  OUTLINED_FUNCTION_2_3();
  v8 = 2112;
  v9 = 0;
  _os_log_error_impl(&dword_1DA47A000, a3, OS_LOG_TYPE_ERROR, "%s: sandbox_check returned an error when checking if this process can mach-lookup %s : %s : %@", &v5, 0x2Au);
  v4 = *MEMORY[0x1E69E9840];
}