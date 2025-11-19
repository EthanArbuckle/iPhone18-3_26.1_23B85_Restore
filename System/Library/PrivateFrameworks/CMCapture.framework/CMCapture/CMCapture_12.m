uint64_t FigExternalStorageDeviceManagerCreate(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  v18 = 0;
  if (PerformFigExternalStorageDeviceManagerOneTimeInitialization_initFigExternalStorageDeviceManager != -1)
  {
    FigExternalStorageDeviceManagerCreate_cold_1();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_14:
    FigExternalStorageDeviceManagerCreate_cold_8(v15);
    goto LABEL_21;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_3:
  FigExternalStorageDeviceManagerGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    v13 = v5;
    FigExternalStorageDeviceManagerCreate_cold_2();
    goto LABEL_22;
  }

  if (dword_1EB58E6C0)
  {
    v17 = 0;
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  DerivedStorage = FigExternalStorageDeviceManagerGetDerivedStorage(v18);
  if (DerivedStorage)
  {
    v8 = DerivedStorage;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v8[4] = Mutable;
    if (Mutable)
    {
      v10 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v8[5] = v10;
      if (v10)
      {
        v11 = FigSimpleMutexCreate();
        *v8 = v11;
        if (v11)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v8[6] = v12;
          if (v12)
          {
            v13 = 0;
            *a3 = v18;
            return v13;
          }

          FigExternalStorageDeviceManagerCreate_cold_3(v15);
        }

        else
        {
          FigExternalStorageDeviceManagerCreate_cold_4(v15);
        }
      }

      else
      {
        FigExternalStorageDeviceManagerCreate_cold_5(v15);
      }
    }

    else
    {
      FigExternalStorageDeviceManagerCreate_cold_6(v15);
    }
  }

  else
  {
    FigExternalStorageDeviceManagerCreate_cold_7(v15);
  }

LABEL_21:
  v13 = v15[0];
LABEL_22:
  if (v18)
  {
    CFRelease(v18);
  }

  return v13;
}

uint64_t FigExternalStorageDeviceManagerGetDerivedStorage(uint64_t a1)
{
  if (!a1)
  {
    FigExternalStorageDeviceManagerGetDerivedStorage_cold_1();
  }

  return CMBaseObjectGetDerivedStorage();
}

uint64_t __PerformFigExternalStorageDeviceManagerOneTimeInitialization_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t FigExternalStorageDeviceManager_Finalize(uint64_t a1)
{
  result = FigExternalStorageDeviceManagerGetDerivedStorage(a1);
  if (result)
  {
    v2 = result;
    if (*(result + 24))
    {
      [MEMORY[0x1E69673E8] endMonitoringProviderDomainChanges:?];
      *(v2 + 24) = 0;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 32) = 0;
    }

    v4 = *(v2 + 40);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 40) = 0;
    }

    *(v2 + 48) = 0;

    return FigSimpleMutexDestroy();
  }

  return result;
}

__CFString *FigExternalStorageDeviceManager_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigExternalStorageDeviceManager %p>", a1);
  return Mutable;
}

uint64_t FigExternalStorageDeviceManager_CopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (cf1)
  {
    if (a4)
    {
      *a4 = 0;
      if (CFEqual(cf1, @"Supported"))
      {
        result = 0;
        *a4 = *MEMORY[0x1E695E4C0];
      }

      else
      {

        return FigSignalErrorAtGM();
      }
    }

    else
    {
      FigExternalStorageDeviceManager_CopyProperty_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigExternalStorageDeviceManager_CopyProperty_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigExternalStorageDeviceManager_BeginMonitoring(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = FigExternalStorageDeviceManagerGetDerivedStorage(a1);
  if (DerivedStorage)
  {
    v7 = DerivedStorage;
    *(DerivedStorage + 8) = a4;
    *(DerivedStorage + 16) = a3;
    global_queue = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __FigExternalStorageDeviceManager_BeginMonitoring_block_invoke;
    v10[3] = &__block_descriptor_40_e5_v8__0l;
    v10[4] = v7;
    dispatch_async(global_queue, v10);
    return 0;
  }

  else
  {
    FigExternalStorageDeviceManager_BeginMonitoring_cold_1(&v11);
    return v11;
  }
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4, void *a5)
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  DerivedStorage = FigExternalStorageDeviceManagerGetDerivedStorage(a1);
  if (!DerivedStorage)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_13(&v38);
    return v38;
  }

  if (!a3)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_12(&v38);
    return v38;
  }

  if (!a5)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_11(&v38);
    return v38;
  }

  if (!a4)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_10(&v38);
    return v38;
  }

  v11 = DerivedStorage;
  if (CFArrayGetCount(a4) <= 0)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_9(&v38);
    return v38;
  }

  FigSimpleMutexLock();
  v12 = [*(v11 + 40) objectForKey:a3];
  if (!v12)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_8(&v38);
    goto LABEL_57;
  }

  v13 = [v12 objectForKey:@"DeviceInfo_URL"];
  if (!v13)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_7(&v38);
    goto LABEL_57;
  }

  v14 = v13;
  v15 = [v13 startAccessingSecurityScopedResource];
  v16 = [v14 URLByAppendingPathComponent:@"DCIM" isDirectory:1];
  if (!v16)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_6(&v38);
    goto LABEL_57;
  }

  v17 = v16;
  v36 = v15;
  v37 = a5;
  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = *(v11 + 48);
  v19 = [v18 countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v48;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v47 + 1) + 8 * i);
        if ([objc_msgSend(v23 "directoryURL")])
        {
          updated = fesdm_updateArrayWithNextAvailableURL(v9, a4, v23);
          if (updated)
          {
            v34 = updated;
            FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_1();
            goto LABEL_41;
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  if ([v9 count])
  {
    goto LABEL_27;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3052000000;
  v41 = __Block_byref_object_copy__25;
  v25 = getPLSimpleDCIMDirectoryClass_softClass;
  v42 = __Block_byref_object_dispose__25;
  v43 = getPLSimpleDCIMDirectoryClass_softClass;
  if (!getPLSimpleDCIMDirectoryClass_softClass)
  {
    *v51 = MEMORY[0x1E69E9820];
    *&v51[8] = 3221225472;
    *&v51[16] = __getPLSimpleDCIMDirectoryClass_block_invoke;
    v52 = &unk_1E798FC38;
    v53 = &v38;
    __getPLSimpleDCIMDirectoryClass_block_invoke(v51);
    v25 = v39[5];
  }

  _Block_object_dispose(&v38, 8);
  v26 = [[v25 alloc] initWithDirectoryURL:v17 subDirectorySuffix:0 perDirectoryLimit:9999 userInfoPath:0];
  [v26 setRepresentsCameraRoll:1];
  [v26 setShouldCheckForExistingFiles:1];
  if (!v26)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_5(&v38);
    goto LABEL_57;
  }

  v27 = fesdm_updateArrayWithNextAvailableURL(v9, a4, v26);
  if (!v27)
  {
    v28 = *(v11 + 48);
    if (v28)
    {
      [v28 addObject:v26];
LABEL_27:
      if (v36)
      {
        [v14 stopAccessingSecurityScopedResource];
      }

      Count = CFArrayGetCount(a4);
      if (Count == [v9 count])
      {
        if (dword_1EB58E6C0)
        {
          v45 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v31 = v45;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            *v51 = 136315395;
            *&v51[4] = "FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray";
            *&v51[12] = 2113;
            *&v51[14] = v9;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v9)
        {
          v33 = CFRetain(v9);
        }

        else
        {
          v33 = 0;
        }

        v34 = 0;
        *v37 = v33;
        goto LABEL_41;
      }

      FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_3(&v38);
      goto LABEL_57;
    }

    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_4(&v38);
LABEL_57:
    v34 = v38;
    goto LABEL_41;
  }

  v34 = v27;
  FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_2();
LABEL_41:
  FigSimpleMutexUnlock();
  return v34;
}

void sub_1ACAF9354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4, void *a5)
{
  v43 = 0;
  v44 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  DerivedStorage = FigExternalStorageDeviceManagerGetDerivedStorage(a1);
  if (!DerivedStorage)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_13(v45);
LABEL_48:
    v28 = v45[0];
    goto LABEL_36;
  }

  if (!a3)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_12(v45);
    goto LABEL_48;
  }

  if (!a5)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_11(v45);
    goto LABEL_48;
  }

  if (!a4)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_10(v45);
    goto LABEL_48;
  }

  v11 = DerivedStorage;
  if (CFArrayGetCount(a4) <= 0)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_9(v45);
    goto LABEL_48;
  }

  v13 = FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray(a1, v12, a3, a4, &v43);
  if (v13)
  {
    v28 = v13;
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_1();
    goto LABEL_36;
  }

  FigSimpleMutexLock();
  v14 = [*(v11 + 40) objectForKey:a3];
  if (!v14)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_8(v45);
    goto LABEL_52;
  }

  v15 = [v14 objectForKey:@"DeviceInfo_URL"];
  if (!v15)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_7(v45);
LABEL_52:
    v28 = v45[0];
LABEL_38:
    FigSimpleMutexUnlock();
    goto LABEL_36;
  }

  theArray = a4;
  v35 = a5;
  v32 = v15;
  v33 = [v15 startAccessingSecurityScopedResource];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43;
  v16 = [v43 countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (!v16)
  {
    v18 = 0;
    goto LABEL_26;
  }

  v17 = v16;
  v18 = 0;
  v37 = *v40;
  v19 = *MEMORY[0x1E695E480];
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v40 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v39 + 1) + 8 * i);
      [objc_msgSend(v21 "path")];
      v22 = sandbox_extension_issue_file();
      if (!v22)
      {
        FigDebugAssert3();
        v28 = 4294948018;
        goto LABEL_34;
      }

      v23 = v22;
      v24 = strlen(v22);
      if (v18)
      {
        CFRelease(v18);
      }

      v25 = CFDataCreate(v19, v23, v24 + 1);
      if (!v25)
      {
        FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_5();
        v28 = 4294948026;
        goto LABEL_38;
      }

      v18 = v25;
      MEMORY[0x1B26F0F30](v21, v25);
      v26 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v21 readonly:0 scope:v18];
      if (!v26)
      {
        FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_4(v45);
LABEL_42:
        v28 = v45[0];
        FigSimpleMutexUnlock();
        goto LABEL_35;
      }

      v27 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v44];
      if (!v27)
      {
        FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_3(v45);
        goto LABEL_42;
      }

      if (!v9)
      {
        FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_2(v45);
        goto LABEL_42;
      }

      [v9 addObject:v27];
      free(v23);
    }

    v17 = [obj countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_26:
  if (v33)
  {
    [v32 stopAccessingSecurityScopedResource];
  }

  Count = CFArrayGetCount(theArray);
  if (Count == [v9 count])
  {
    if (v9)
    {
      v30 = CFRetain(v9);
    }

    else
    {
      v30 = 0;
    }

    v28 = 0;
    *v35 = v30;
  }

  else
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_6(v45);
    v28 = v45[0];
  }

LABEL_34:
  FigSimpleMutexUnlock();
  if (v18)
  {
LABEL_35:
    CFRelease(v18);
  }

LABEL_36:

  return v28;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  DerivedStorage = FigExternalStorageDeviceManagerGetDerivedStorage(a1);
  if (!DerivedStorage)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_19(&v29);
    return v29;
  }

  if (!a3)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_18(&v29);
    return v29;
  }

  if (!a5)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_17(&v29);
    return v29;
  }

  if (!a2)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_16(&v29);
    return v29;
  }

  v9 = DerivedStorage;
  FigSimpleMutexLock();
  *a5 = 0;
  if (FigCFEqual())
  {
    if (FigCFArrayContainsValue())
    {
      v10 = [*(v9 + 40) objectForKey:a2];
      if (!v10)
      {
        FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_3(&v29);
        goto LABEL_61;
      }

      v11 = [v10 objectForKey:@"DeviceInfo_URL"];
      if (!v11)
      {
        FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_2(&v29);
        goto LABEL_61;
      }

      StorageDeviceSizeAttributes = externalStorageDeviceManager_getStorageDeviceSizeAttributes(v11, *MEMORY[0x1E696A3C0]);
      if (!StorageDeviceSizeAttributes)
      {
        FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_1(&v29);
LABEL_61:
        v18 = v29;
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v19 = FigCFArrayContainsValue();
      v18 = 0;
      v20 = MEMORY[0x1E695E4D0];
      if (!v19)
      {
        v20 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      if (FigCFEqual())
      {
        if (FigCFArrayContainsValue())
        {
          v22 = [*(v9 + 40) objectForKey:a2];
          if (!v22)
          {
            FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_9(&v29);
            goto LABEL_61;
          }

          v23 = [v22 objectForKey:@"DeviceInfo_URL"];
          if (!v23)
          {
            FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_8(&v29);
            goto LABEL_61;
          }

          StorageDeviceSizeAttributes = externalStorageDeviceManager_getStorageDeviceSizeAttributes(v23, *MEMORY[0x1E696A3D0]);
          if (!StorageDeviceSizeAttributes)
          {
            FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_7(&v29);
            goto LABEL_61;
          }

          goto LABEL_19;
        }

        goto LABEL_25;
      }

      if (FigCFEqual())
      {
        v24 = [*(v9 + 40) objectForKey:a2];
        if (!v24)
        {
          FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_11(&v29);
          goto LABEL_61;
        }

        StorageDeviceSizeAttributes = [v24 objectForKey:@"DeviceInfo_URL"];
        if (!StorageDeviceSizeAttributes)
        {
          FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_10(&v29);
          goto LABEL_61;
        }

        goto LABEL_19;
      }

      if (FigCFEqual())
      {
        v25 = [*(v9 + 40) objectForKey:a2];
        if (!v25)
        {
          FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_14(&v29);
          goto LABEL_61;
        }

        v26 = [v25 objectForKey:@"DeviceInfo_Identifier"];
        if (!v26)
        {
          FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_13(&v29);
          goto LABEL_61;
        }

        StorageDeviceSizeAttributes = [getICCameraDeviceClass() uuidStringFromFileProviderIdentifier:v26];
        if (!StorageDeviceSizeAttributes)
        {
          FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_12(&v29);
          goto LABEL_61;
        }

        goto LABEL_19;
      }

      if (!FigCFEqual())
      {
        goto LABEL_26;
      }

      v27 = [*(v9 + 40) objectForKey:a2];
      if (!v27)
      {
        FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_15(&v29);
        goto LABEL_61;
      }

      v28 = [objc_msgSend(v27 objectForKey:{@"DeviceInfo_IsEncrypted", "BOOLValue"}];
      v18 = 0;
      v20 = MEMORY[0x1E695E4D0];
      if (!v28)
      {
        v20 = MEMORY[0x1E695E4C0];
      }
    }

    *a5 = *v20;
    goto LABEL_27;
  }

  if (!FigCFArrayContainsValue())
  {
LABEL_25:
    FigDebugAssert3();
LABEL_26:
    v18 = FigSignalErrorAtGM();
    goto LABEL_27;
  }

  v13 = [*(v9 + 40) objectForKey:a2];
  if (!v13)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_6(&v29);
    goto LABEL_61;
  }

  v14 = [v13 objectForKey:@"DeviceInfo_URL"];
  if (!v14)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_5(&v29);
    goto LABEL_61;
  }

  v15 = v14;
  v16 = [v14 startAccessingSecurityScopedResource];
  v17 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v16)
  {
    [v15 stopAccessingSecurityScopedResource];
  }

  if (!v17)
  {
    FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_4(&v29);
    goto LABEL_61;
  }

  StorageDeviceSizeAttributes = v17;
LABEL_19:
  v18 = 0;
  *a5 = CFRetain(StorageDeviceSizeAttributes);
LABEL_27:
  FigSimpleMutexUnlock();
  return v18;
}

uint64_t __fedm_startMonitoringForExternalDevices_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (dword_1EB58E6C0)
  {
    v109[0] = 0;
    type[0] = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *(a1 + 32);
  if (a3)
  {
    return (*(v6 + 8))(0, a3, *(v6 + 16));
  }

  v73 = a1;
  if (v6)
  {
    v77 = *(a1 + 32);
    FigSimpleMutexLock();
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v116 objects:v115 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v117;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v117 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = *(*(&v116 + 1) + 8 * i);
          v14 = [a2 objectForKeyedSubscript:{v13, v68, v69}];
          if ([v13 containsString:@"UserFS"])
          {
            v114 = 0u;
            v113 = 0u;
            v112 = 0u;
            v111 = 0u;
            v15 = [v14 storageURLs];
            v16 = [v15 countByEnumeratingWithState:&v111 objects:v110 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v112;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v112 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v111 + 1) + 8 * j);
                  if ([v20 isFileURL])
                  {
                    [v8 addObject:v20];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v111 objects:v110 count:16];
              }

              while (v17);
            }
          }
        }

        v10 = [a2 countByEnumeratingWithState:&v116 objects:v115 count:16];
      }

      while (v10);
    }

    v21 = v77;
    if (dword_1EB58E6C0)
    {
      v97[0] = 0;
      v84[0] = OS_LOG_TYPE_DEFAULT;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v23 = [*(v77 + 40) copy];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v72 = [v23 countByEnumeratingWithState:&v105 objects:v109 count:16];
    if (v72)
    {
      v24 = *v106;
      v70 = *v106;
      v71 = v23;
      while (2)
      {
        v25 = 0;
        do
        {
          if (*v106 != v24)
          {
            objc_enumerationMutation(v23);
          }

          key = *(*(&v105 + 1) + 8 * v25);
          if (!FigCFDictionaryGetValue())
          {
            __fedm_startMonitoringForExternalDevices_block_invoke_cold_4();
            goto LABEL_89;
          }

          Value = FigCFDictionaryGetValue();
          if (!Value)
          {
            __fedm_startMonitoringForExternalDevices_block_invoke_cold_3();
            goto LABEL_89;
          }

          v27 = Value;
          v74 = v25;
          v28 = [Value lastPathComponent];
          if (dword_1EB58E6C0)
          {
            v104 = 0;
            v103 = OS_LOG_TYPE_DEFAULT;
            v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v30 = v104;
            if (os_log_type_enabled(v29, v103))
            {
              v31 = v30;
            }

            else
            {
              v31 = v30 & 0xFFFFFFFE;
            }

            if (v31)
            {
              v32 = *(v21 + 40);
              v89 = 136315651;
              v90 = "fedm_removeDevicesDisconnected";
              v91 = 2113;
              v92 = key;
              v93 = 2113;
              v94 = v32;
              LODWORD(v69) = 32;
              v68 = &v89;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v33 = [v8 countByEnumeratingWithState:&v98 objects:v97 count:{16, v68, v69}];
          if (v33)
          {
            v34 = v33;
            v35 = *v99;
LABEL_41:
            v36 = 0;
            while (1)
            {
              if (*v99 != v35)
              {
                objc_enumerationMutation(v8);
              }

              if ([v28 isEqual:{objc_msgSend(*(*(&v98 + 1) + 8 * v36), "lastPathComponent")}])
              {
                break;
              }

              if (v34 == ++v36)
              {
                v34 = [v8 countByEnumeratingWithState:&v98 objects:v97 count:16];
                if (v34)
                {
                  goto LABEL_41;
                }

                goto LABEL_47;
              }
            }
          }

          else
          {
LABEL_47:
            if (dword_1EB58E6C0)
            {
              v104 = 0;
              v103 = OS_LOG_TYPE_DEFAULT;
              v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v38 = v104;
              if (os_log_type_enabled(v37, v103))
              {
                v39 = v38;
              }

              else
              {
                v39 = v38 & 0xFFFFFFFE;
              }

              if (v39)
              {
                v40 = *(v21 + 40);
                v89 = 136315907;
                v90 = "fedm_removeDevicesDisconnected";
                v91 = 2112;
                v92 = v27;
                v93 = 2113;
                v94 = key;
                v95 = 2113;
                v96 = v40;
                LODWORD(v69) = 42;
                v68 = &v89;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v41 = *(v21 + 40);
            if (!v41)
            {
              __fedm_startMonitoringForExternalDevices_block_invoke_cold_2();
              goto LABEL_89;
            }

            CFDictionaryRemoveValue(v41, key);
            if (dword_1EB58E6C0)
            {
              v104 = 0;
              v103 = OS_LOG_TYPE_DEFAULT;
              v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v43 = v104;
              if (os_log_type_enabled(v42, v103))
              {
                v44 = v43;
              }

              else
              {
                v44 = v43 & 0xFFFFFFFE;
              }

              if (v44)
              {
                v45 = *(v21 + 32);
                v89 = 136315651;
                v90 = "fedm_removeDevicesDisconnected";
                v91 = 2113;
                v92 = key;
                v93 = 2113;
                v94 = v45;
                LODWORD(v69) = 32;
                v68 = &v89;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v46 = *(v21 + 32);
            if (!v46)
            {
              __fedm_startMonitoringForExternalDevices_block_invoke_cold_1();
              goto LABEL_89;
            }

            v120.length = CFArrayGetCount(*(v21 + 32));
            v120.location = 0;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v46, v120, key);
            if (FirstIndexOfValue != -1)
            {
              CFArrayRemoveValueAtIndex(*(v21 + 32), FirstIndexOfValue);
              v48 = [*(v21 + 48) copy];
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v49 = [v48 countByEnumeratingWithState:&v85 objects:v84 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v86;
                do
                {
                  for (k = 0; k != v50; ++k)
                  {
                    if (*v86 != v51)
                    {
                      objc_enumerationMutation(v48);
                    }

                    v53 = *(*(&v85 + 1) + 8 * k);
                    if ([objc_msgSend(objc_msgSend(v53 directoryURL])
                    {
                      if (dword_1EB58E6C0)
                      {
                        v104 = 0;
                        v103 = OS_LOG_TYPE_DEFAULT;
                        v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                        v55 = v104;
                        if (os_log_type_enabled(v54, v103))
                        {
                          v56 = v55;
                        }

                        else
                        {
                          v56 = v55 & 0xFFFFFFFE;
                        }

                        if (v56)
                        {
                          v57 = *(v77 + 48);
                          v89 = 136315907;
                          v90 = "fedm_removeDevicesDisconnected";
                          v91 = 2113;
                          v92 = v53;
                          v93 = 2113;
                          v94 = v57;
                          v95 = 2113;
                          v96 = key;
                          LODWORD(v69) = 42;
                          v68 = &v89;
                          _os_log_send_and_compose_impl();
                        }

                        fig_log_call_emit_and_clean_up_after_send_and_compose();
                        v21 = v77;
                      }

                      [*(v21 + 48) removeObject:{v53, v68, v69}];
                    }
                  }

                  v50 = [v48 countByEnumeratingWithState:&v85 objects:v84 count:16];
                }

                while (v50);
              }

              v24 = v70;
              v23 = v71;
              if (v48)
              {
              }
            }
          }

          v25 = v74 + 1;
        }

        while (v74 + 1 != v72);
        v72 = [v23 countByEnumeratingWithState:&v105 objects:v109 count:16];
        if (v72)
        {
          continue;
        }

        break;
      }
    }

LABEL_89:
    if (v23)
    {
    }
  }

  FigSimpleMutexUnlock();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v58 = [a2 countByEnumeratingWithState:&v80 objects:v79 count:16];
  if (!v58)
  {
    return (*(*(v73 + 32) + 8))(*(*(v73 + 32) + 32), 0, *(*(v73 + 32) + 16));
  }

  v59 = v58;
  v60 = 0;
  v61 = *v81;
  do
  {
    v62 = 0;
    do
    {
      if (*v81 != v61)
      {
        objc_enumerationMutation(a2);
      }

      v63 = *(*(&v80 + 1) + 8 * v62);
      v64 = [a2 objectForKeyedSubscript:{v63, v68, v69}];
      if ([v63 containsString:@"UserFS"])
      {
        v65 = [MEMORY[0x1E69673A0] rootItemIDWithProviderDomainID:v63];
        v66 = [MEMORY[0x1E69673B0] defaultManager];
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __fedm_startMonitoringForExternalDevices_block_invoke_32;
        v78[3] = &unk_1E7998848;
        v67 = *(v73 + 32);
        v78[4] = v64;
        v78[5] = v67;
        [v66 fetchURLForItemID:v65 completionHandler:v78];
        v60 = 1;
      }

      ++v62;
    }

    while (v59 != v62);
    result = [a2 countByEnumeratingWithState:&v80 objects:v79 count:16];
    v59 = result;
  }

  while (result);
  if ((v60 & 1) == 0)
  {
    return (*(*(v73 + 32) + 8))(*(*(v73 + 32) + 32), 0, *(*(v73 + 32) + 16));
  }

  return result;
}

void __fedm_startMonitoringForExternalDevices_block_invoke_32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (dword_1EB58E6C0)
  {
    LODWORD(v25) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  FigSimpleMutexLock();
  if (a3)
  {
    (*(v5 + 8))(0, a3, *(v5 + 16));
LABEL_6:
    FigSimpleMutexUnlock();
    return;
  }

  if (!a2)
  {
LABEL_27:
    v16 = 0;
    goto LABEL_30;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(v5 + 40);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (!FigCFDictionaryGetValue())
        {
          __fedm_startMonitoringForExternalDevices_block_invoke_32_cold_2();
          goto LABEL_6;
        }

        Value = FigCFDictionaryGetValue();
        if (!Value)
        {
          __fedm_startMonitoringForExternalDevices_block_invoke_32_cold_1();
          goto LABEL_6;
        }

        if ([Value isEqual:a2])
        {
          goto LABEL_27;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = [objc_msgSend(MEMORY[0x1E696AFB0] UUID];
  [objc_msgSend(v6 "error")];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    __fedm_startMonitoringForExternalDevices_block_invoke_32_cold_5();
    return;
  }

  v16 = Mutable;
  FigCFDictionarySetValue();
  [v6 identifier];
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v17 = *(v5 + 32);
  if (v17)
  {
    CFArrayAppendValue(v17, v14);
    if (*(v5 + 40))
    {
      if (dword_1EB58E6C0)
      {
        v24 = 0;
        v23 = OS_LOG_TYPE_DEFAULT;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v19 = v24;
        if (os_log_type_enabled(v18, v23))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigCFDictionarySetValue();
LABEL_30:
      (*(v5 + 8))(*(v5 + 32), 0, *(v5 + 16));
      FigSimpleMutexUnlock();
      if (!v16)
      {
        return;
      }

      goto LABEL_31;
    }

    __fedm_startMonitoringForExternalDevices_block_invoke_32_cold_3();
  }

  else
  {
    __fedm_startMonitoringForExternalDevices_block_invoke_32_cold_4();
  }

  FigSimpleMutexUnlock();
LABEL_31:
  CFRelease(v16);
}

uint64_t fesdm_updateArrayWithNextAvailableURL(void *a1, void *a2, void *a3)
{
  if (!a2)
  {
    fesdm_updateArrayWithNextAvailableURL_cold_5(&v18);
    return v18;
  }

  if (![a2 count])
  {
    fesdm_updateArrayWithNextAvailableURL_cold_4(&v18);
    return v18;
  }

  v6 = [a3 nextAvailableFileURLWithExtension:{objc_msgSend(a2, "objectAtIndexedSubscript:", 0)}];
  if (!v6)
  {
    fesdm_updateArrayWithNextAvailableURL_cold_3(&v18);
    return v18;
  }

  v7 = [v6 URLByDeletingPathExtension];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [a2 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = [v7 URLByAppendingPathExtension:*(*(&v14 + 1) + 8 * v11)];
        if (!v12)
        {
          fesdm_updateArrayWithNextAvailableURL_cold_2(&v18);
          return v18;
        }

        if (!a1)
        {
          fesdm_updateArrayWithNextAvailableURL_cold_1(&v18);
          return v18;
        }

        [a1 addObject:v12];
        ++v11;
      }

      while (v9 != v11);
      result = [a2 countByEnumeratingWithState:&v14 objects:v13 count:16];
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

Class __getPLSimpleDCIMDirectoryClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PhotoLibraryServicesCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7998888;
    v5 = 0;
    PhotoLibraryServicesCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotoLibraryServicesCoreLibraryCore_frameworkLibrary)
  {
    __getPLSimpleDCIMDirectoryClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PLSimpleDCIMDirectory");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPLSimpleDCIMDirectoryClass_block_invoke_cold_1();
  }

  getPLSimpleDCIMDirectoryClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __PhotoLibraryServicesCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PhotoLibraryServicesCoreLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t getICCameraDeviceClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__25;
  v0 = getICCameraDeviceClass_softClass;
  v7 = __Block_byref_object_dispose__25;
  v8 = getICCameraDeviceClass_softClass;
  if (!getICCameraDeviceClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getICCameraDeviceClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getICCameraDeviceClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACAFB068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t externalStorageDeviceManager_getStorageDeviceSizeAttributes(void *a1, uint64_t a2)
{
  v9 = 0;
  v4 = [a1 startAccessingSecurityScopedResource];
  v5 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v6 = 0;
  if (v5)
  {
    v7 = v9 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && (v6 = [v5 objectForKey:a2], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    externalStorageDeviceManager_getStorageDeviceSizeAttributes_cold_1();
    return 0;
  }

  else if (v4)
  {
    [a1 stopAccessingSecurityScopedResource];
  }

  return v6;
}

Class __getICCameraDeviceClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!ImageCaptureCoreLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ImageCaptureCoreLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E79988A0;
    v5 = 0;
    ImageCaptureCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ImageCaptureCoreLibraryCore_frameworkLibrary_0)
  {
    __getICCameraDeviceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("ICCameraDevice");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getICCameraDeviceClass_block_invoke_cold_1();
  }

  getICCameraDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __ImageCaptureCoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ImageCaptureCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *BWCreateFTCinematicTapRequestFromFocusRequest(void *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = [a1 objectForKeyedSubscript:@"CinematicVideoFocusIsFixedPlaneFocus"];
  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  v4 = getkFTInvalidTrackId();
  v5 = [v1 objectForKeyedSubscript:@"CinematicVideoFocusObjectID"];
  if (!v5)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    point = _Q0;
    goto LABEL_9;
  }

  v4 = [v5 longLongValue];
  __asm { FMOV            V0.2D, #-1.0 }

  point = _Q0;
  if (v4 == -1)
  {
LABEL_9:
    v12 = [v1 objectForKeyedSubscript:@"CinematicVideoFocusPoint"];
    if (v12)
    {
      if (CGPointMakeWithDictionaryRepresentation(v12, &point))
      {
        goto LABEL_11;
      }

      BWCreateFTCinematicTapRequestFromFocusRequest_cold_1();
    }

    else
    {
      BWCreateFTCinematicTapRequestFromFocusRequest_cold_2();
    }

    return 0;
  }

LABEL_11:
  v13 = [v1 objectForKeyedSubscript:@"CinematicVideoFocusIsHardFocus"];
  if (v13)
  {
    v14 = [v13 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  v1 = [objc_alloc(getFTCinematicTapRequestClass()) init];
  [v1 setTapPoint:{point.x, point.y}];
  [v1 setTrackId:v4];
  v16[1] = @"isFixedFocus";
  v17[0] = [MEMORY[0x1E696AD98] numberWithBool:{v14, @"isHardFocus"}];
  v17[1] = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v1 setMetadata:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, v16, 2)}];
  return v1;
}

uint64_t BWIsFocusRequestForFixedPlaneFocus(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 objectForKeyedSubscript:@"CinematicVideoFocusIsFixedPlaneFocus"];
  if (!v1)
  {
    return 0;
  }

  return [v1 BOOLValue];
}

uint64_t BWIsFocusRequestForHardFocus(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"CinematicVideoFocusIsHardFocus"];

  return [v1 BOOLValue];
}

uint64_t fcs_handleStreamControlTakenByAnotherClientNotification(uint64_t a1, void *a2)
{
  if (dword_1ED844370)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a2 streaming])
  {
    [(BWFigCaptureStream *)a2 _resetStreamingState];
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

uint64_t fcs_handleStreamControlRelinquishedByAnotherClientNotification()
{
  if (dword_1ED844370)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

uint64_t fcs_handleFrameReceiveTimeout(uint64_t a1, void *a2)
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if ([a2 streaming])
  {
    [(BWFigCaptureStream *)a2 _resetStreamingState];
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return CMNotificationCenterPostNotification();
}

uint64_t fcs_reactionsInProgressChanged(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = [a2 reactionsInProgressChangedHandler];
  if (result)
  {
    CFDictionaryGetValue(a5, *off_1E798B860);
    v8 = *([a2 reactionsInProgressChangedHandler] + 16);

    return v8();
  }

  return result;
}

uint64_t fcs_suppressedGesture(uint64_t a1, void *a2)
{
  result = [a2 suppressedGestureHandler];
  if (result)
  {
    v4 = *([a2 suppressedGestureHandler] + 16);

    return v4();
  }

  return result;
}

void sifn_mergeInferenceResults(const void *a1, void *a2)
{
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{CMGetAttachment(a1, @"Inferences", 0)}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([objc_msgSend(v4 objectForKeyedSubscript:{v9), "isValid"}] & 1) == 0)
        {
          [v4 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", v9), v9}];
        }
      }

      v6 = [a2 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    CMSetAttachment(a1, @"Inferences", v4, 1u);
  }
}

uint64_t FigCaptureBinaryPlistFindIndexForIntInObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*a1 + a2);
  v4 = *v3;
  v16 = (v3 + 1);
  if ((v4 & 0xE0 | 0x10) != 0xD0)
  {
    abort();
  }

  v7 = v4 & 0xF;
  if ((v4 & 0xF) == 0xF)
  {
    v16 = (v3 + 2);
    v7 = bp_readNinc(&v16, v3[1]);
  }

  if (v7)
  {
    v8 = 0;
    v9 = v16;
    while (1)
    {
      v10 = v7 - 1;
      while (1)
      {
        v11 = (v8 + v10) >> 1;
        Noffset = bp_readNoffset(v9, *(a1 + 42), v11 * *(a1 + 42));
        v13 = bp_readNoffset(*(a1 + 8), *(a1 + 41), Noffset * *(a1 + 41));
        if ((*(*a1 + v13) & 0xF0) != 0x10)
        {
          if (v8 == v10)
          {
            return -1;
          }

          goto LABEL_13;
        }

        IntForObjectAtOffset = FigCaptureBinaryPlistGetIntForObjectAtOffset(a1, v13);
        if (IntForObjectAtOffset == a3)
        {
          return v11;
        }

        if (v8 == v10)
        {
          return -1;
        }

        if (IntForObjectAtOffset >= a3)
        {
          break;
        }

LABEL_13:
        if (v11 + 1 < v10)
        {
          v8 = v11 + 1;
        }

        else
        {
          v8 = v10;
        }
      }

      if (v11 <= v8 + 1)
      {
        v7 = v8 + 1;
      }

      else
      {
        v7 = (v8 + v10) >> 1;
      }
    }
  }

  return -1;
}

uint64_t sfsn_isSlaveFrameProcessingEnabledForMaster(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*off_1E798B730];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 allValues];
  result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    v6 = *off_1E798B688;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([objc_msgSend(*(*(&v9 + 1) + 8 * v7) objectForKeyedSubscript:{v6), "BOOLValue"}])
        {
          return 1;
        }

        ++v7;
      }

      while (v4 != v7);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ACB0DEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t cmioefcs_setFormatIndex(uint64_t a1, void *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = [a2 intValue];
  v4 = [objc_msgSend(objc_msgSend(*(a1 + 64) objectAtIndexedSubscript:{v3), "objectForKeyedSubscript:", @"NativeFormatIndex", "intValue"}];
  if (dword_1EB58E6E0)
  {
    v13 = 0;
    v12 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 16) == 1 || (os_unfair_lock_lock((a1 + 20)), *(a1 + 204) = v3, v6 = *(a1 + 8), os_unfair_lock_unlock((a1 + 20)), !v6))
  {
    v9 = FigSignalErrorAtGM();
    *(v15 + 6) = v9;
  }

  else
  {
    v7 = dispatch_semaphore_create(0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __cmioefcs_setFormatIndex_block_invoke;
    v11[3] = &unk_1E7998AD8;
    v11[5] = &v14;
    v11[6] = a1;
    v11[4] = v7;
    [v6 setActiveFormatIndex:v4 reply:v11];
    v8 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v7, v8);
    dispatch_release(v7);

    v9 = *(v15 + 6);
  }

  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t __initializeGlobalsOnce_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t CMIOExtensionFigCaptureStreamCopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (*(DerivedStorage + 88))
  {
    v4 = "[SUSPENDED]";
  }

  else
  {
    v4 = "";
  }

  return [v3 initWithFormat:@"<CMIOExtensionFigCaptureStream:%p [%@]%s>", a1, *(DerivedStorage + 56), v4];
}

uint64_t CMIOExtensionFigCaptureStreamCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CMIOExtensionFigCaptureStreamCopyProperty_sOnceToken != -1)
  {
    CMIOExtensionFigCaptureStreamCopyProperty_cold_1();
  }

  if ([CMIOExtensionFigCaptureStreamCopyProperty_noOpProperties containsObject:a2])
  {
    result = 0;
    *a4 = 0;
    return result;
  }

  if (FigCFEqual())
  {
    v8 = *(DerivedStorage + 72);
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    v8 = *(DerivedStorage + 24);
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    v8 = *(DerivedStorage + 32);
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    v8 = *(DerivedStorage + 40);
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    v8 = *(DerivedStorage + 48);
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    v8 = *(DerivedStorage + 56);
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    v8 = *(DerivedStorage + 64);
    if (!v8)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

  if (FigCFEqual())
  {
    v14 = cmioefcs_copyVideoOutputConfigurations();
    *a4 = v14;
    if (v14)
    {
      return 0;
    }

    else
    {
      return 4294954511;
    }
  }

  else
  {
    if (FigCFEqual())
    {
      v15 = cmioefcs_copyVideoOutputsEnabled();
LABEL_44:
      v11 = v15;
      goto LABEL_45;
    }

    if (FigCFEqual())
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = *(DerivedStorage + 204);
      goto LABEL_30;
    }

    if (FigCFEqual())
    {
      v8 = &unk_1F2244C80;
      goto LABEL_43;
    }

    if (FigCFEqual())
    {
      v13 = MEMORY[0x1E696AD98];
      LODWORD(v12) = *(DerivedStorage + 212);
      goto LABEL_42;
    }

    if (FigCFEqual())
    {
      v13 = MEMORY[0x1E696AD98];
      LODWORD(v12) = *(DerivedStorage + 208);
LABEL_42:
      v8 = [v13 numberWithFloat:v12];
      if (!v8)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }

    if (FigCFEqual())
    {
      os_unfair_lock_lock((DerivedStorage + 20));
      v16 = MEMORY[0x1E695E4D0];
      v17 = *(DerivedStorage + 200);
LABEL_50:
      if (!v17)
      {
        v16 = MEMORY[0x1E695E4C0];
      }

      *a4 = CFRetain(*v16);
      os_unfair_lock_unlock((DerivedStorage + 20));
      return 0;
    }

    if (FigCFEqual())
    {
      os_unfair_lock_lock((DerivedStorage + 20));
      v16 = MEMORY[0x1E695E4D0];
      v17 = *(DerivedStorage + 216);
      goto LABEL_50;
    }

    v18 = *off_1E798BCE0;
    if (FigCFEqual() || (v18 = *off_1E798C1A0, FigCFEqual()) || (v18 = *off_1E798C0F8, FigCFEqual()) || (v18 = *off_1E798BCE8, FigCFEqual()))
    {
      v19 = [*(DerivedStorage + 72) objectForKeyedSubscript:v18];
      v20 = MEMORY[0x1E695E4D0];
      if (!v19)
      {
        v20 = MEMORY[0x1E695E4C0];
      }

      v8 = *v20;
      if (!*v20)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }

    if (FigCFEqual())
    {
      cmioefcs_copyFlashSupportedProperty(DerivedStorage, a4);
      return 0;
    }

    if (FigCFEqual())
    {
      v21 = MEMORY[0x1E696AD98];
      v22 = [*(DerivedStorage + 8) availableProperties];
      v8 = [v21 numberWithBool:{objc_msgSend(v22, "containsObject:", *MEMORY[0x1E6963430])}];
      if (!v8)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }

    if (FigCFEqual())
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = *(DerivedStorage + 232);
LABEL_30:
      v8 = [v9 numberWithInt:v10];
      if (!v8)
      {
LABEL_31:
        v11 = 0;
LABEL_45:
        result = 0;
        *a4 = v11;
        return result;
      }

LABEL_43:
      v15 = CFRetain(v8);
      goto LABEL_44;
    }

    if (FigCFEqual())
    {
      v8 = *(DerivedStorage + 80);
      if (!v8)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }

    return 4294954509;
  }
}

uint64_t CMIOExtensionFigCaptureStreamSetProperty(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CMIOExtensionFigCaptureStreamSetProperty_sOnceToken != -1)
  {
    CMIOExtensionFigCaptureStreamSetProperty_cold_1();
  }

  if ([CMIOExtensionFigCaptureStreamSetProperty_noOpProperties containsObject:a2])
  {
    return 0;
  }

  v70 = a3;
  if (FigCFEqual())
  {
    if (DerivedStorage)
    {
      if (a3)
      {
        os_unfair_lock_lock((DerivedStorage + 20));
        v7 = *(DerivedStorage + 96);
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*off_1E798CA98, *off_1E798CAB0, *off_1E798CA80, *off_1E798CAB8, 0}];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        obj = v8;
        v69 = [v8 countByEnumeratingWithState:&v80 objects:v79 count:16];
        if (v69)
        {
          v68 = *v81;
          v67 = *off_1E798C9D8;
          v65 = *off_1E798CA48;
          v64 = *off_1E798C9F8;
          do
          {
            for (i = 0; i != v69; ++i)
            {
              if (*v81 != v68)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v80 + 1) + 8 * i);
              if ([a3 objectForKeyedSubscript:v10])
              {
                v11 = [v70 objectForKeyedSubscript:v10];
                if ([v11 objectForKeyedSubscript:v67])
                {
                  v12 = [objc_msgSend(v11 objectForKeyedSubscript:{v65), "intValue"}];
                  v13 = [objc_msgSend(v11 objectForKeyedSubscript:{v64), "intValue"}];
                  if (v12 && v13 != 0)
                  {
                    v15 = v13;
                    v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v11];
                    v85.size.width = v12;
                    v85.size.height = v15;
                    v85.origin.x = 0.0;
                    v85.origin.y = 0.0;
                    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v85);
                    [v11 setObject:DictionaryRepresentation forKeyedSubscript:v67];
                  }
                }

                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v17 = [v11 allKeys];
                v18 = [v17 countByEnumeratingWithState:&v75 objects:&v71 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v76;
                  do
                  {
                    for (j = 0; j != v19; ++j)
                    {
                      if (*v76 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      [objc_msgSend(v7 objectForKeyedSubscript:{v10), "setObject:forKeyedSubscript:", objc_msgSend(v11, "objectForKeyedSubscript:", *(*(&v75 + 1) + 8 * j)), *(*(&v75 + 1) + 8 * j)}];
                    }

                    v19 = [v17 countByEnumeratingWithState:&v75 objects:&v71 count:16];
                  }

                  while (v19);
                }
              }

              a3 = v70;
            }

            v69 = [obj countByEnumeratingWithState:&v80 objects:v79 count:16];
          }

          while (v69);
        }

        v22 = (DerivedStorage + 20);
        goto LABEL_29;
      }

      CMIOExtensionFigCaptureStreamSetProperty_cold_2();
    }

    else
    {
      CMIOExtensionFigCaptureStreamSetProperty_cold_3();
    }

    return 4294954516;
  }

  if (FigCFEqual())
  {
    if (!DerivedStorage)
    {
      CMIOExtensionFigCaptureStreamSetProperty_cold_5();
      return 4294954516;
    }

    if (!a3)
    {
      CMIOExtensionFigCaptureStreamSetProperty_cold_4();
      return 4294954516;
    }

    os_unfair_lock_lock((DerivedStorage + 20));
    v24 = [a3 objectForKeyedSubscript:*off_1E798CA98];
    v25 = MEMORY[0x1E695E738];
    if (v24)
    {
      v26 = v24;
      v27 = [v24 objectForKeyedSubscript:*off_1E798CA68];
      if (v27)
      {
        v28 = v27;

        *(DerivedStorage + 120) = 0;
        if (!CFEqual(v28, *v25))
        {
          *(DerivedStorage + 120) = v28;
        }
      }

      v29 = [v26 objectForKeyedSubscript:*off_1E798CA70];
      if (v29)
      {
        v30 = v29;

        *(DerivedStorage + 112) = 0;
        if (!CFEqual(v30, *v25))
        {
          *(DerivedStorage + 112) = v30;
        }
      }
    }

    v31 = [a3 objectForKeyedSubscript:*off_1E798CA80];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 objectForKeyedSubscript:*off_1E798CA68];
      if (v33)
      {
        v34 = v33;

        *(DerivedStorage + 152) = 0;
        if (!CFEqual(v34, *v25))
        {
          *(DerivedStorage + 152) = v34;
        }
      }

      v35 = [v32 objectForKeyedSubscript:*off_1E798CA70];
      if (v35)
      {
        v36 = v35;

        *(DerivedStorage + 144) = 0;
        if (!CFEqual(v36, *v25))
        {
          *(DerivedStorage + 144) = v36;
        }
      }
    }

    v37 = [a3 objectForKeyedSubscript:*off_1E798CAB8];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 objectForKeyedSubscript:*off_1E798CA68];
      if (v39)
      {
        v40 = v39;

        *(DerivedStorage + 184) = 0;
        if (!CFEqual(v40, *v25))
        {
          *(DerivedStorage + 184) = v40;
        }
      }

      v41 = [v38 objectForKeyedSubscript:*off_1E798CA70];
      if (v41)
      {
        v42 = v41;

        *(DerivedStorage + 176) = 0;
        if (!CFEqual(v42, *v25))
        {
          *(DerivedStorage + 176) = v42;
        }
      }

      v43 = [v38 objectForKeyedSubscript:*off_1E798CA50];
      if (v43)
      {
        v44 = v43;

        *(DerivedStorage + 192) = 0;
        if (!CFEqual(v44, *v25))
        {
          *(DerivedStorage + 192) = v44;
        }
      }
    }

    os_unfair_lock_unlock((DerivedStorage + 20));
LABEL_80:
    if (![a3 objectForKeyedSubscript:{*off_1E798CAB0, v62, v63}] && !objc_msgSend(a3, "objectForKeyedSubscript:", *off_1E798CAA8) && !objc_msgSend(a3, "objectForKeyedSubscript:", *off_1E798CAA0) && !objc_msgSend(a3, "objectForKeyedSubscript:", *off_1E798CAC0) && !objc_msgSend(a3, "objectForKeyedSubscript:", *off_1E798CAC8) && !objc_msgSend(a3, "objectForKeyedSubscript:", *off_1E798CAD0) && !objc_msgSend(a3, "objectForKeyedSubscript:", *off_1E798CA78))
    {
      result = [a3 objectForKeyedSubscript:*off_1E798CA90];
      if (!result)
      {
        return result;
      }
    }

    return 4294954516;
  }

  if (FigCFEqual())
  {
    if (!DerivedStorage)
    {
      CMIOExtensionFigCaptureStreamSetProperty_cold_7();
      return 4294954516;
    }

    if (!a3)
    {
      CMIOExtensionFigCaptureStreamSetProperty_cold_6();
      return 4294954516;
    }

    os_unfair_lock_lock((DerivedStorage + 20));
    v45 = *off_1E798CA98;
    *(DerivedStorage + 104) = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798CA98), "BOOLValue"}];
    v46 = *off_1E798CA80;
    *(DerivedStorage + 136) = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798CA80), "BOOLValue"}];
    v47 = *off_1E798CAB8;
    *(DerivedStorage + 168) = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798CAB8), "BOOLValue"}];
    if ((*(DerivedStorage + 104) & 1) == 0)
    {
      cmioefcs_releaseClientBufferPool(DerivedStorage, v45);
    }

    if ((*(DerivedStorage + 136) & 1) == 0)
    {
      cmioefcs_releaseClientBufferPool(DerivedStorage, v46);
    }

    if ((*(DerivedStorage + 168) & 1) == 0)
    {
      cmioefcs_releaseClientBufferPool(DerivedStorage, v47);
    }

    os_unfair_lock_unlock((DerivedStorage + 20));
    v48 = [objc_msgSend(a3 objectForKeyedSubscript:{v47), "BOOLValue"}];
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    if ((*(DerivedStorage + 16) & 1) == 0)
    {
      if (*(DerivedStorage + 17) == 1)
      {
        v63 = v3;
        LODWORD(v62) = 0;
        FigDebugAssert3();
        v56 = -12782;
      }

      else
      {
        v49 = v48;
        v50 = [*(DerivedStorage + 8) availableProperties];
        v51 = *MEMORY[0x1E6963430];
        if ([v50 containsObject:*MEMORY[0x1E6963430]])
        {
          os_unfair_lock_lock((DerivedStorage + 20));
          *(DerivedStorage + 217) = v49;
          v52 = *(DerivedStorage + 8);
          os_unfair_lock_unlock((DerivedStorage + 20));
          if (v52)
          {
            v53 = dispatch_semaphore_create(0);
            *&v75 = v51;
            *&v80 = [MEMORY[0x1E696AD98] numberWithBool:v49];
            v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v75 count:1];
            v79[0] = MEMORY[0x1E69E9820];
            v79[1] = 3221225472;
            v79[2] = __cmioefcs_setAsyncStillCaptureEnabled_block_invoke;
            v79[3] = &unk_1E7998A48;
            v79[4] = v53;
            v79[5] = &v71;
            [v52 setPropertyValues:v54 reply:v79];
            v55 = dispatch_time(0, 5000000000);
            dispatch_semaphore_wait(v53, v55);
            dispatch_release(v53);

LABEL_79:
            _Block_object_dispose(&v71, 8);
            goto LABEL_80;
          }

          goto LABEL_127;
        }

        v56 = -12787;
      }

LABEL_78:
      *(v72 + 6) = v56;
      goto LABEL_79;
    }

LABEL_127:
    v56 = FigSignalErrorAtGM();
    goto LABEL_78;
  }

  if (FigCFEqual())
  {

    return cmioefcs_setFormatIndex(DerivedStorage, a3);
  }

  if (FigCFEqual())
  {

    return cmioefcs_setMinFrameRate(DerivedStorage, a3);
  }

  if (FigCFEqual())
  {

    return cmioefcs_setMaxFrameRate(DerivedStorage, a3);
  }

  if (FigCFEqual())
  {
    os_unfair_lock_lock((DerivedStorage + 20));
    *(DerivedStorage + 200) = *MEMORY[0x1E695E4D0] == a3;
    v22 = (DerivedStorage + 20);
LABEL_29:
    os_unfair_lock_unlock(v22);
    return 0;
  }

  if (FigCFEqual())
  {
    v57 = DerivedStorage;
    v58 = a3;
LABEL_101:

    return cmioefcs_setObjectDetectionConfiguration(v57, v58);
  }

  if (FigCFEqual())
  {
    if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v59 = [a3 BOOLValue];
    }

    else
    {
      v59 = 0;
    }

    return cmioefcs_setCinematicFramingEnabled(DerivedStorage, v59);
  }

  else if (FigCFEqual())
  {

    return cmioefcs_setCenterStageRectOfInterest(DerivedStorage, a3);
  }

  else
  {
    if (FigCFEqual())
    {
      v60 = [a3 intValue];
      result = 0;
      *(DerivedStorage + 232) = v60;
      return result;
    }

    if (FigCFEqual())
    {
      os_unfair_lock_lock((DerivedStorage + 20));
      v61 = cmioefcs_captureAsyncStillImage(DerivedStorage, a3);
      os_unfair_lock_unlock((DerivedStorage + 20));
      return v61;
    }

    if (FigCFEqual())
    {
      v57 = DerivedStorage;
      v58 = a3;
      goto LABEL_101;
    }

    if (FigCFEqual())
    {

      return cmioefcs_setVideoZoomFactor(DerivedStorage, a3);
    }

    else
    {
      return 4294954509;
    }
  }
}

void sub_1ACB10304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMIOExtensionFigCaptureStreamStop()
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 16) == 1)
  {
    goto LABEL_17;
  }

  if (*(DerivedStorage + 17) != 1)
  {
    goto LABEL_16;
  }

  [*(DerivedStorage + 248) unprepare];
  cmioefcs_setAsyncStillCaptureConfigurations(v1, MEMORY[0x1E695E0F8]);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 8);
  os_unfair_lock_unlock((v1 + 20));
  if (!v2)
  {
LABEL_17:
    *(v19 + 6) = -12785;
    goto LABEL_16;
  }

  v3 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __CMIOExtensionFigCaptureStreamStop_block_invoke;
  v17[3] = &unk_1E7998A20;
  v17[5] = v3;
  v17[6] = &v18;
  v17[4] = v2;
  [v2 stopStream:v17];
  v4 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v3, v4);
  dispatch_release(v3);

  os_unfair_lock_lock((v1 + 20));
  *(v1 + 17) = 0;
  if ([*(v1 + 224) count])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  v5 = *(v1 + 240);
  if (v5)
  {
    CFRelease(v5);
    *(v1 + 240) = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(v1 + 96);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        cmioefcs_releaseClientBufferPool(v1, *(*(&v13 + 1) + 8 * i));
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock((v1 + 20));
LABEL_16:
  v10 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v10;
}

void cmioefcs_setAsyncStillCaptureConfigurations(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (!a1 || !a2)
  {
    FigDebugAssert3();
    v10 = -12780;
    goto LABEL_9;
  }

  if (*(a1 + 16))
  {
    goto LABEL_14;
  }

  if (*(a1 + 17) == 1)
  {
    FigDebugAssert3();
    v10 = -12782;
    goto LABEL_9;
  }

  v4 = [*(a1 + 8) availableProperties];
  v5 = *MEMORY[0x1E6963428];
  if (![v4 containsObject:*MEMORY[0x1E6963428]])
  {
    v10 = -12787;
LABEL_9:
    *(v15 + 6) = v10;
    goto LABEL_10;
  }

  os_unfair_lock_lock((a1 + 20));
  v6 = *(a1 + 8);
  os_unfair_lock_unlock((a1 + 20));
  if (!v6)
  {
LABEL_14:
    v10 = FigSignalErrorAtGM();
    goto LABEL_9;
  }

  v7 = dispatch_semaphore_create(0);
  v12 = v5;
  v13 = a2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __cmioefcs_setAsyncStillCaptureConfigurations_block_invoke;
  v11[3] = &unk_1E7998A48;
  v11[4] = v7;
  v11[5] = &v14;
  [v6 setPropertyValues:v8 reply:v11];
  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v7, v9);
  dispatch_release(v7);

LABEL_10:
  _Block_object_dispose(&v14, 8);
}

void sub_1ACB107D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t __CMIOExtensionFigCaptureStreamStop_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 48) + 8) + 24) = [a2 code];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t cmioefcs_releaseClientBufferPool(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return cmioefcs_releaseClientBufferPool_cold_2();
  }

  if (!a2)
  {
    return cmioefcs_releaseClientBufferPool_cold_1();
  }

  os_unfair_lock_assert_owner((a1 + 20));
  v4 = [*(a1 + 96) objectForKeyedSubscript:a2];
  v5 = *off_1E798C9B8;

  return [v4 setObject:0 forKeyedSubscript:v5];
}

intptr_t __cmioefcs_setAsyncStillCaptureConfigurations_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

uint64_t __CMIOExtensionFigCaptureStreamCopyProperty_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{*off_1E798BE58, *off_1E798C298, *off_1E798BC18, 0}];
  CMIOExtensionFigCaptureStreamCopyProperty_noOpProperties = result;
  return result;
}

CFTypeRef cmioefcs_copyFlashSupportedProperty(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(objc_msgSend(*(a1 + 8) cachedPropertyStateForProperty:{*MEMORY[0x1E6963440]), "value"), "BOOLValue"}];
  v4 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t __CMIOExtensionFigCaptureStreamSetProperty_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{*off_1E798BE58, *off_1E798C298, *off_1E798BC18, 0}];
  CMIOExtensionFigCaptureStreamSetProperty_noOpProperties = result;
  return result;
}

uint64_t cmioefcs_setMinFrameRate(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  [a2 floatValue];
  v4 = v3;
  if (dword_1EB58E6E0)
  {
    v20 = 0;
    v19 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 16) == 1 || (os_unfair_lock_lock((a1 + 20)), *(a1 + 212) = v4, v6 = *(a1 + 8), os_unfair_lock_unlock((a1 + 20)), !v6))
  {
    v12 = FigSignalErrorAtGM();
    *(v22 + 6) = v12;
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
    CMTimeMake(&v17, 100000, (v4 * 100000.0));
    v7 = *MEMORY[0x1E695E480];
    time = v17;
    v8 = CMTimeCopyAsDictionary(&time, v7);
    if (v8)
    {
      v9 = dispatch_semaphore_create(0);
      v15 = *MEMORY[0x1E6963450];
      v16 = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      CFRelease(v8);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __cmioefcs_setMinFrameRate_block_invoke;
      v14[3] = &unk_1E7998A20;
      v14[5] = v9;
      v14[6] = &v21;
      v14[4] = v6;
      [v6 setPropertyValues:v10 reply:v14];
      v11 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v9, v11);
      dispatch_release(v9);
    }

    v12 = *(v22 + 6);
  }

  _Block_object_dispose(&v21, 8);
  return v12;
}

uint64_t cmioefcs_setMaxFrameRate(uint64_t a1, void *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  [a2 floatValue];
  v4 = v3;
  if (dword_1EB58E6E0)
  {
    v20 = 0;
    v19 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 16) == 1 || (os_unfair_lock_lock((a1 + 20)), *(a1 + 208) = v4, v6 = *(a1 + 8), os_unfair_lock_unlock((a1 + 20)), !v6))
  {
    v12 = FigSignalErrorAtGM();
    *(v22 + 6) = v12;
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
    CMTimeMake(&v17, 100000, (v4 * 100000.0));
    v7 = *MEMORY[0x1E695E480];
    time = v17;
    v8 = CMTimeCopyAsDictionary(&time, v7);
    if (v8)
    {
      v9 = dispatch_semaphore_create(0);
      v15 = *MEMORY[0x1E6963448];
      v16 = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      CFRelease(v8);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __cmioefcs_setMaxFrameRate_block_invoke;
      v14[3] = &unk_1E7998A20;
      v14[5] = v9;
      v14[6] = &v21;
      v14[4] = v6;
      [v6 setPropertyValues:v10 reply:v14];
      v11 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v9, v11);
      dispatch_release(v9);
    }

    v12 = *(v22 + 6);
  }

  _Block_object_dispose(&v21, 8);
  return v12;
}

uint64_t cmioefcs_setObjectDetectionConfiguration(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a1 + 16) == 1)
    {
      cmioefcs_setObjectDetectionConfiguration_cold_2(&v8);
      return v8;
    }

    else
    {
      v4 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B920), "intValue"}];
      v5 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B918), "intValue"}];
      v6 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B928), "intValue"}];
      os_unfair_lock_lock((a1 + 20));
      [*(a1 + 248) setMaxHumanFaces:v4];
      [*(a1 + 248) setHumanFaceEyeDetectionEnabled:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B8E8), "BOOLValue")}];
      [*(a1 + 248) setHumanFaceSmileDetectionEnabled:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B8F0), "BOOLValue")}];
      [*(a1 + 248) setHumanFaceBlinkDetectionEnabled:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B8E0), "BOOLValue")}];
      [*(a1 + 248) setMaxHumanHeads:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B938), "intValue")}];
      [*(a1 + 248) setMaxHumanBodies:v5];
      [*(a1 + 248) setMaxHumanFullBodies:v6];
      [*(a1 + 248) setMaxDogBodies:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B908), "intValue")}];
      [*(a1 + 248) setMaxDogHeads:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B910), "intValue")}];
      [*(a1 + 248) setMaxCatBodies:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B8F8), "intValue")}];
      [*(a1 + 248) setMaxCatHeads:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B900), "intValue")}];
      [*(a1 + 248) setMaxSalientObjects:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B940), "intValue")}];
      [*(a1 + 248) setMaxSportsBalls:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *off_1E798B948), "intValue")}];
      os_unfair_lock_unlock((a1 + 20));
      return 0;
    }
  }

  else
  {
    cmioefcs_setObjectDetectionConfiguration_cold_1();
    return 4294954516;
  }
}

uint64_t cmioefcs_setCinematicFramingEnabled(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (!a1)
  {
    FigDebugAssert3();
    v9 = v15;
    v8 = 4294954516;
    goto LABEL_8;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_11:
    v8 = FigSignalErrorAtGM();
    *(v15 + 6) = v8;
    goto LABEL_9;
  }

  if (([objc_msgSend(*(a1 + 8) "availableProperties")] & 1) == 0)
  {
    v9 = v15;
    v8 = 4294954509;
LABEL_8:
    *(v9 + 6) = v8;
    goto LABEL_9;
  }

  os_unfair_lock_lock((a1 + 20));
  v4 = *(a1 + 8);
  os_unfair_lock_unlock((a1 + 20));
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = dispatch_semaphore_create(0);
  v12 = CMIOExtensionPropertyFromPropertyAddress();
  v13 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __cmioefcs_setCinematicFramingEnabled_block_invoke;
  v11[3] = &unk_1E7998A48;
  v11[4] = v5;
  v11[5] = &v14;
  [v4 setPropertyValues:v6 reply:v11];
  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v5, v7);
  dispatch_release(v5);

  v8 = *(v15 + 6);
  if (!v8)
  {
    *(a1 + 216) = a2;
  }

LABEL_9:
  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t cmioefcs_setCenterStageRectOfInterest(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (!a1)
  {
    FigDebugAssert3();
    v6 = v17;
    v7 = 4294954516;
    goto LABEL_10;
  }

  if (*(a1 + 16) == 1)
  {
    goto LABEL_13;
  }

  if (([objc_msgSend(*(a1 + 8) "availableProperties")] & 1) == 0)
  {
    v6 = v17;
    goto LABEL_9;
  }

  v4 = [*(a1 + 8) availableProperties];
  v5 = [v4 containsObject:*MEMORY[0x1E6963438]];
  v6 = v17;
  if ((v5 & 1) == 0)
  {
LABEL_9:
    v7 = 4294954509;
LABEL_10:
    *(v6 + 6) = v7;
    goto LABEL_11;
  }

  v7 = *(v17 + 6);
  if (!v7)
  {
    os_unfair_lock_lock((a1 + 20));
    v8 = *(a1 + 8);
    os_unfair_lock_unlock((a1 + 20));
    if (v8)
    {
      v9 = dispatch_semaphore_create(0);
      v14 = CMIOExtensionPropertyFromPropertyAddress();
      v15 = a2;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __cmioefcs_setCenterStageRectOfInterest_block_invoke;
      v13[3] = &unk_1E7998A48;
      v13[4] = v9;
      v13[5] = &v16;
      [v8 setPropertyValues:v10 reply:v13];
      v11 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(v9, v11);
      dispatch_release(v9);

      v7 = *(v17 + 6);
      goto LABEL_11;
    }

LABEL_13:
    v7 = FigSignalErrorAtGM();
    *(v17 + 6) = v7;
  }

LABEL_11:
  _Block_object_dispose(&v16, 8);
  return v7;
}

uint64_t cmioefcs_captureAsyncStillImage(uint64_t a1, void *a2)
{
  if ((*(a1 + 17) & 1) == 0)
  {
    cmioefcs_captureAsyncStillImage_cold_1(v10);
    return v10[0];
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    cmioefcs_captureAsyncStillImage_cold_2(v10);
    return v10[0];
  }

  v4 = atomic_fetch_add_explicit(&cmioefcs_captureAsyncStillImage_sStillCaptureUniqueID, 1uLL, memory_order_relaxed) + 1;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  if (a2)
  {
    [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C508), @"CompressedFormat"}];
    [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C518), @"HighResolutionCapture"}];
    [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C510), @"FlashMode"}];
    [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C530), @"PhotoQualityPrioritization"}];
    [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C528), @"MaxPhotoDimensionsWidth"}];
    [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C520), @"MaxPhotoDimensionsHeight"}];
    v6 = v5;
    v5 = a2;
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 224) setObject:v5 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", v4)}];
  v7 = *(a1 + 8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __cmioefcs_captureAsyncStillImage_block_invoke;
  v13[3] = &__block_descriptor_48_e43_v24__0__opaqueCMSampleBuffer__8__NSError_16l;
  v13[4] = a1;
  v13[5] = v4;
  [v7 captureAsyncStillImage:v4 options:v6 reply:v13];
  if (dword_1EB58E6E0)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t cmioefcs_setVideoZoomFactor(uint64_t a1, void *a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  [a2 floatValue];
  v4 = v3;
  if (dword_1EB58E6E0)
  {
    v17 = 0;
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(a1 + 16) == 1 || (os_unfair_lock_lock((a1 + 20)), v6 = *(a1 + 8), os_unfair_lock_unlock((a1 + 20)), !v6))
  {
    v11 = FigSignalErrorAtGM();
    *(v19 + 6) = v11;
  }

  else
  {
    v7 = dispatch_semaphore_create(0);
    v14 = *MEMORY[0x1E6963460];
    LODWORD(v8) = v4;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __cmioefcs_setVideoZoomFactor_block_invoke;
    v13[3] = &unk_1E7998A20;
    v13[5] = v7;
    v13[6] = &v18;
    v13[4] = v6;
    [v6 setPropertyValues:v9 reply:v13];
    v10 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v7, v10);
    dispatch_release(v7);

    v11 = *(v19 + 6);
  }

  _Block_object_dispose(&v18, 8);
  return v11;
}

intptr_t __cmioefcs_setAsyncStillCaptureEnabled_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t __cmioefcs_setMinFrameRate_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 48) + 8) + 24) = [a2 code];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t __cmioefcs_setMaxFrameRate_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 48) + 8) + 24) = [a2 code];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t __cmioefcs_setCinematicFramingEnabled_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

intptr_t __cmioefcs_setCenterStageRectOfInterest_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

void __cmioefcs_captureAsyncStillImage_block_invoke(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetPresentationTimeStamp(&v18, sbuf);
  os_unfair_lock_lock((v5 + 20));
  v7 = [*(v5 + 224) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v6)}];
  [*(v5 + 224) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", v6)}];
  if (*(v5 + 17) != 1)
  {
    goto LABEL_29;
  }

  if (!sbuf || a3)
  {
    __cmioefcs_captureAsyncStillImage_block_invoke_cold_3();
    goto LABEL_28;
  }

  if ((*(v5 + 168) & 1) == 0)
  {
    __cmioefcs_captureAsyncStillImage_block_invoke_cold_1();
    goto LABEL_28;
  }

  if (!*(v5 + 176))
  {
    __cmioefcs_captureAsyncStillImage_block_invoke_cold_2();
    goto LABEL_28;
  }

  if (![v7 objectForKeyedSubscript:*off_1E798C508])
  {
    time.value = 0;
    v21 = 0;
    if (CMSampleBufferGetDataBuffer(sbuf))
    {
      if (!CMPhotoDecompressionSessionCreate())
      {
        CMSampleBufferGetDataBuffer(sbuf);
        if (!CMPhotoDecompressionSessionCreateContainer())
        {
          v14 = [objc_msgSend(objc_msgSend(*(v5 + 96) objectForKeyedSubscript:{*off_1E798CAB8), "objectForKeyedSubscript:", *off_1E798CA10), "intValue"}];
          if (v14)
          {
            v19 = *MEMORY[0x1E6991AE8];
            v20 = [MEMORY[0x1E696AD98] numberWithInt:v14];
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          }

          CMPhotoDecompressionContainerCreateImageForIndex();
        }
      }

      if (v21)
      {
        CFRelease(v21);
      }
    }

    goto LABEL_28;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  if (!DataBuffer)
  {
    __cmioefcs_captureAsyncStillImage_block_invoke_cold_4(sbuf);
LABEL_28:
    __cmioefcs_captureAsyncStillImage_block_invoke_cold_5();
LABEL_29:
    os_unfair_lock_unlock((v5 + 20));
    return;
  }

  v9 = DataBuffer;
  CFRetain(DataBuffer);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  CMSetAttachment(v9, @"CMIOBlockBufferFormatDescription", FormatDescription, 1u);
  if (dword_1EB58E6E0)
  {
    LODWORD(v21) = 0;
    LOBYTE(v20) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v21;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v20))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      time = v18;
      CMTimeGetSeconds(&time);
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *(v5 + 192);
  os_unfair_lock_unlock((v5 + 20));
  if (v15)
  {
    v16 = *(v15 + 16);
    time = v18;
    v16(v15, v9, &time);
  }

  CFRelease(v9);
}

intptr_t __cmioefcs_setVideoZoomFactor_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 48) + 8) + 24) = [a2 code];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t CMIOExtensionFigCaptureStreamStart()
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  if (*(DerivedStorage + 16) == 1)
  {
    goto LABEL_10;
  }

  if (*(DerivedStorage + 17))
  {
    goto LABEL_9;
  }

  [*(DerivedStorage + 248) prepareForVideoFormat:0];
  if (*(v1 + 217) == 1)
  {
    v8 = @"MaxPhotoQualityPrioritization";
    v9 = [MEMORY[0x1E696AD98] numberWithInt:*(v1 + 232)];
    cmioefcs_setAsyncStillCaptureConfigurations(v1, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1]);
  }

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 8);
  os_unfair_lock_unlock((v1 + 20));
  if (!v2)
  {
LABEL_10:
    *(v11 + 6) = -12785;
    goto LABEL_9;
  }

  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CMIOExtensionFigCaptureStreamStart_block_invoke;
  v7[3] = &unk_1E7998A20;
  v7[5] = v3;
  v7[6] = &v10;
  v7[4] = v2;
  [v2 startStream:v7];
  v4 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v3, v4);
  dispatch_release(v3);

  os_unfair_lock_lock((v1 + 20));
  *(v1 + 224) = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!*(v11 + 6))
  {
    *(v1 + 17) = 1;
  }

  os_unfair_lock_unlock((v1 + 20));
LABEL_9:
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t CMIOExtensionFigCaptureStreamAddAttachmentsToSampleBuffer(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  v3 = *off_1E798A3C8;
  v4 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  if (v4)
  {
    v5 = v4;
    v6 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v8 = ImageBuffer;
  if (ImageBuffer)
  {
    v9 = CVBufferCopyAttachment(ImageBuffer, @"SampleBufferPropagatableAttachments", 0);
    if (v9)
    {
      v10 = CFAutorelease(v9);
      if (v10)
      {
        CMSetAttachments(a2, v10, 1u);
        CVBufferRemoveAttachment(v8, @"SampleBufferPropagatableAttachments");
      }
    }

    v11 = CVBufferCopyAttachment(v8, @"SampleBufferNonPropagatableAttachments", 0);
    if (v11)
    {
      v12 = CFAutorelease(v11);
      if (v12)
      {
        CMSetAttachments(a2, v12, 0);
        CVBufferRemoveAttachment(v8, @"SampleBufferNonPropagatableAttachments");
      }
    }

    v13 = CMGetAttachment(a2, v3, 0);
    if (v13)
    {
      [v5 addEntriesFromDictionary:v13];
    }

    v14 = CMGetAttachment(v8, v3, 0);
  }

  else
  {
    v14 = 0;
  }

  v15 = *off_1E798B7B0;
  if (![v5 objectForKeyedSubscript:*off_1E798B7B0])
  {
    v16 = [v14 objectForKeyedSubscript:v15];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = &unk_1F224C1E0;
    }

    [v5 setObject:v17 forKeyedSubscript:v15];
  }

  if (v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v5;
  }

  CMSetAttachment(v8, v3, [MEMORY[0x1E695DF90] dictionaryWithDictionary:v18], 1u);
  CMSetAttachment(a2, v3, v5, 1u);
  return 0;
}

uint64_t CMIOExtensionFigCaptureStreamEnqueueReactionEffect(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = *(CMBaseObjectGetDerivedStorage() + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CMIOExtensionFigCaptureStreamEnqueueReactionEffect_block_invoke;
  v6[3] = &unk_1E7998A90;
  v6[4] = &v7;
  [v3 enqueueReactionEffect:a2 reply:v6];
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1ACB12D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t __CMIOExtensionFigCaptureStreamStart_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 48) + 8) + 24) = [a2 code];
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __CMIOExtensionFigCaptureStreamEnqueueReactionEffect_block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = [a2 code];
    *(*(*(v2 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t __cmioefcs_sortFigCaptureSourceFormats_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *off_1E798C988;
  v6 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C988), "intValue"}];
  v7 = *off_1E798C980;
  v8 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C980), "intValue"}] * v6;
  v9 = [objc_msgSend(a3 objectForKeyedSubscript:{v5), "intValue"}];
  v10 = [objc_msgSend(a3 objectForKeyedSubscript:{v7), "intValue"}];
  if (v8 >= v10 * v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v8 > v10 * v9)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

intptr_t __cmioefcs_setFormatIndex_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 40) + 8) + 24) = [a2 code];
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t FigFlashlightServerStart()
{
  v1[0] = 1;
  v1[1] = flashlightServer_handleReplyMessage;
  v1[2] = flashlightServer_handleNoReplyMessage;
  memset(&v1[3], 0, 24);
  return FigCaptureXPCServerStart("com.apple.coremedia.flashlight", v1, 0);
}

uint64_t flashlightServer_handleNoReplyMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v1 = OpCode;
    flashlightServer_handleNoReplyMessage_cold_1();
  }

  else
  {
    v1 = 4294966630;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v1;
}

uint64_t flashlightServer_handleGlobalFlashlightCreationMessage(_xpc_connection_s *a1, void *a2)
{
  xpc_connection_get_pid(a1);
  if (flashlightServer_handleGlobalFlashlightCreationMessage_onceToken != -1)
  {
    flashlightServer_handleGlobalFlashlightCreationMessage_cold_1();
  }

  FigSimpleMutexLock();
  if (flashlightServer_handleGlobalFlashlightCreationMessage_sFlashlight)
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    v3 = FigFlashlightCreate(*MEMORY[0x1E695E480], 1, 0, 0, &flashlightServer_handleGlobalFlashlightCreationMessage_sFlashlight);
    FigSimpleMutexUnlock();
    if (v3)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v7, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Flashlight/FigFlashlightServer.m", 78, @"LastShownDate:FigFlashlightServer.m:78", @"LastShownBuild:FigFlashlightServer.m:78", 0);
      free(v7);
      return v3;
    }
  }

  v3 = FigXPCServerAssociateObjectWithConnection();
  if (v3)
  {
    flashlightServer_handleGlobalFlashlightCreationMessage_cold_2();
  }

  else
  {
    xpc_dictionary_set_uint64(a2, *MEMORY[0x1E69615A0], 0);
  }

  return v3;
}

uint64_t __flashlightServer_handleGlobalFlashlightCreationMessage_block_invoke()
{
  result = FigSimpleMutexCreate();
  flashlightServer_handleGlobalFlashlightCreationMessage_sFlashlightCreationLock = result;
  return result;
}

uint64_t FigCaptureSessionAttachSession(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigCaptureSessionAttachSession_block_invoke;
  v4[3] = &unk_1E7998B00;
  v4[4] = &v5;
  v4[5] = a1;
  v4[6] = a2;
  captureSession_performBlockOnWorkerQueueSynchronously(a1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void captureSession_performBlockOnWorkerQueueSynchronously(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __captureSession_performBlockOnWorkerQueueSynchronously_block_invoke;
    block[3] = &unk_1E798FEA0;
    block[4] = a2;
    dispatch_sync(v4, block);
  }

  else
  {
    captureSession_performBlockOnWorkerQueueSynchronously_cold_1();
  }
}

void FigCaptureSessionStopAttachedSession(const void *a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __FigCaptureSessionStopAttachedSession_block_invoke;
  v2[3] = &__block_descriptor_41_e5_v8__0l;
  v2[4] = a1;
  v3 = a2;
  captureSession_performBlockOnWorkerQueue(a1, v2);
}

void __FigCaptureSessionStopAttachedSession_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*(a1 + 40) == 1)
  {
    os_unfair_lock_lock(DerivedStorage + 96);
    v4 = *&v3[178]._os_unfair_lock_opaque;
    if (v4)
    {
      CFRelease(v4);
      *&v3[178]._os_unfair_lock_opaque = 0;
    }

    os_unfair_lock_unlock(v3 + 96);
  }

  v5 = *(a1 + 32);

  captureSession_updateSessionStateWithNewInputCondition(v5, &v3[101], 1, 0, 0);
}

void FigCaptureSessionStartDetachedSession(const void *a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __FigCaptureSessionStartDetachedSession_block_invoke;
  v1[3] = &__block_descriptor_40_e5_v8__0l;
  v1[4] = a1;
  captureSession_performBlockOnWorkerQueue(a1, v1);
}

void __FigCaptureSessionStartDetachedSession_block_invoke(uint64_t a1)
{
  v2 = (CMBaseObjectGetDerivedStorage() + 396);
  v3 = *(a1 + 32);

  captureSession_updateSessionStateWithNewInputCondition(v3, v2, 1, 0, 0);
}

uint64_t cs_actionCamera2p8kOutputDimensions(int a1)
{
  v1 = 0x87000000F00;
  if (a1 <= 2)
  {
    cs_actionCamera2p8kOutputDimensions_cold_1();
  }

  else if ((a1 - 3) < 2)
  {
    return 0x63000000B00;
  }

  return v1;
}

uint64_t FigCaptureSessionSetClientCompositingSinkCallback(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {

    return FigSignalErrorAtGM();
  }

  else
  {
    v5 = DerivedStorage;
    os_unfair_lock_lock((DerivedStorage + 264));

    *(v5 + 272) = [a2 copy];
    os_unfair_lock_unlock((v5 + 264));
    return 0;
  }
}

void captureSession_suspendTrueVideoVISProcessing(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 868));
  v3 = *(DerivedStorage + 856);
  if (v3 && (*(DerivedStorage + 864) & 1) == 0)
  {
    if (dword_1ED844050)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v3 = *(DerivedStorage + 856);
    }

    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    *(DerivedStorage + 864) = 1;
    v5 = *(DerivedStorage + 856);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __captureSession_suspendTrueVideoVISProcessing_block_invoke;
    v7[3] = &unk_1E7998C60;
    v7[4] = v5;
    v7[5] = a1;
    v6 = CMBaseObjectGetDerivedStorage();
    captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(a1, *(v6 + 760), v7, 4.0);
  }

  os_unfair_lock_unlock((DerivedStorage + 868));
}

unint64_t captureSession_servicePendingIrisRecordings(const void *a1, void *a2, char a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_servicePendingIrisRecordings_cold_1();
  }

  result = [objc_msgSend(a2 "pendingIrisRecordings")];
  if (result)
  {
    while (1)
    {
      v6 = [objc_msgSend(a2 "pendingIrisRecordings")];
      if (dword_1ED844050)
      {
        LODWORD(v55.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v55.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
        {
          v9 = value;
        }

        else
        {
          v9 = value & 0xFFFFFFFE;
        }

        if (v9)
        {
          v10 = *(DerivedStorage + 104);
          LODWORD(lhs.value) = 136315650;
          *(&lhs.value + 4) = "captureSession_servicePendingIrisRecordings";
          LOWORD(lhs.flags) = 2114;
          *(&lhs.flags + 2) = v10;
          HIWORD(lhs.epoch) = 2112;
          v57 = v6;
          LODWORD(v49) = 32;
          p_lhs = &lhs;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if ([v6 isEmpty])
      {
        break;
      }

      v18 = [v6 irisMovieInfo];
      v55 = **&MEMORY[0x1E6960CC0];
      type = v55;
      if (![-[FigCaptureMovieFileSinkPipeline irisStagingNode](a2) valveIsOpen])
      {
        if ([v18 isMomentCaptureMovieRecording])
        {
          v20 = [objc_msgSend(-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](a2) objectAtIndexedSubscript:{0), "sinkID"}];
          v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(v20, objc_msgSend(objc_msgSend(v18, "settings"), "settingsID"), 0)}];
          v22 = MEMORY[0x1E696AD98];
          [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](a2) torchLevel];
          [v21 setObject:objc_msgSend(v22 forKeyedSubscript:{"numberWithFloat:"), @"TorchEnabled"}];
          v23 = [objc_msgSend(v18 "settings")];
          [v21 setObject:objc_msgSend(v23 forKeyedSubscript:{"objectForKeyedSubscript:", @"AVVideoWidthKey", @"IrisMovieWidth"}];
          [v21 setObject:objc_msgSend(v23 forKeyedSubscript:{"objectForKeyedSubscript:", @"AVVideoHeightKey", @"IrisMovieHeight"}];
          if ([v18 spatialOverCaptureExpected])
          {
            [v21 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SpatialOverCaptureMovieEnabled"];
          }

          captureSession_postNotificationWithPayload(a1, @"DidBeginRecordingMomentCaptureMovie", v21);
        }

        v24 = [a2 sinkID];
        v25 = [v18 settings];
        captureSession_fileStartRecording(a1, v24, v25, v18, MEMORY[0x1E6960C88]);
        v26 = [-[FigCaptureMovieFileSinkPipeline irisStagingNode](a2) openValveWithIrisRequest:v18];
        if (!v26)
        {
          goto LABEL_48;
        }

        v27 = v26;
        v28 = [a2 sinkID];
        v29 = CMBaseObjectGetDerivedStorage();
        if (!_FigIsCurrentDispatchQueue())
        {
          captureSession_servicePendingIrisRecordings_cold_2();
        }

        v30 = [*(v29 + 784) movieFileSinkPipelineWithSinkID:v28];
        v31 = v30;
        if (v30)
        {
          v32 = [(FigCaptureMovieFileSinkPipeline *)v30 fileCoordinatorNode];
        }

        else
        {
          v32 = -[FigCaptureAudioFileSinkPipeline fileCoordinatorNode]([*(v29 + 784) audioFileSinkPipelineWithSinkID:v28]);
        }

        if (!v32)
        {
          captureSession_servicePendingIrisRecordings_cold_3();
          goto LABEL_48;
        }

        [v32 cancelStartRecordingWithSettings:{objc_msgSend(v18, "settings")}];
        [v31 setRecording:0];
        v35 = a1;
        v34 = v28;
        goto LABEL_46;
      }

      v19 = [(FigCaptureMovieFileSinkPipeline *)a2 fileCoordinatorNode];
      if (v18)
      {
        [v18 audioOffset];
      }

      else
      {
        memset(&v60, 0, sizeof(v60));
      }

      lhs = **&MEMORY[0x1E6960C88];
      result = [v19 updateStopPTS:&lhs audioOffset:&v60 previousStopPTS:&v55 previousAudioOffset:&type];
      if (!result)
      {
        goto LABEL_40;
      }

      v38 = [-[FigCaptureMovieFileSinkPipeline irisStagingNode](a2) enqueueIrisRequest:v18];
      if (v38)
      {
        v27 = v38;
        v39 = [(FigCaptureMovieFileSinkPipeline *)a2 fileCoordinatorNode];
        v60 = v55;
        lhs = type;
        result = [v39 updateStopPTS:&v60 audioOffset:&lhs previousStopPTS:0 previousAudioOffset:0];
        if (v27 == -16953)
        {
LABEL_40:
          if ((a3 & 1) == 0)
          {
            return result;
          }

          v27 = 4294950340;
        }

        else if (v27 == -16957 || v27 == -15543)
        {
          memset(&v60, 0, sizeof(v60));
          if (v18)
          {
            [v18 stillImageCaptureTime];
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          CMTimeMake(&rhs, 1, 1000);
          CMTimeSubtract(&v60, &lhs, &rhs);
          v46 = [(FigCaptureMovieFileSinkPipeline *)a2 irisStagingNode];
          lhs = v60;
          return [v46 prepareToFinishAllEnqueuedIrisRequestsWithEndTime:&lhs];
        }

        LODWORD(rhs.value) = 0;
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v34 = [a2 sinkID];
        v35 = a1;
LABEL_46:
        v36 = v18;
        v37 = v27;
LABEL_47:
        captureSession_postNotificationsForIrisRequestCompletedWithError(v35, v34, v36, v37);
      }

LABEL_48:
      [objc_msgSend(a2 pendingIrisRecordings];
      result = [objc_msgSend(a2 "pendingIrisRecordings")];
      if (!result)
      {
        return result;
      }
    }

    mach_absolute_time();
    [v6 enqueuedHostTime];
    result = FigHostTimeToNanoseconds();
    if (result < 0x28FA6AE00)
    {
      if (dword_1ED844050)
      {
        LODWORD(v55.value) = 0;
        LOBYTE(type.value) = 0;
        v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v42 = v55.value;
        if (os_log_type_enabled(v41, type.value))
        {
          v43 = v42;
        }

        else
        {
          v43 = v42 & 0xFFFFFFFE;
        }

        if (v43)
        {
          v44 = *(DerivedStorage + 104);
          v45 = [objc_msgSend(v6 "settings")];
          LODWORD(lhs.value) = 136315650;
          *(&lhs.value + 4) = "captureSession_servicePendingIrisRecordings";
          LOWORD(lhs.flags) = 2114;
          *(&lhs.flags + 2) = v44;
          HIWORD(lhs.epoch) = 2048;
          v57 = v45;
          _os_log_send_and_compose_impl();
        }

        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return result;
    }

    if (dword_1ED844050)
    {
      v11 = result;
      LODWORD(v55.value) = 0;
      LOBYTE(type.value) = 0;
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v13 = v55.value;
      if (os_log_type_enabled(v12, type.value))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = (v11 / 0x3B9ACA00);
        v16 = *(DerivedStorage + 104);
        v17 = [objc_msgSend(v6 "settings")];
        LODWORD(lhs.value) = 136315906;
        *(&lhs.value + 4) = "captureSession_servicePendingIrisRecordings";
        LOWORD(lhs.flags) = 2114;
        *(&lhs.flags + 2) = v16;
        HIWORD(lhs.epoch) = 2048;
        v57 = v17;
        v58 = 2048;
        v59 = v15;
        LODWORD(v50) = 42;
        v48 = &lhs;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v33 = +[BWIrisMovieInfo emptyIrisMovieInfoWithFigCaptureMovieFileRecordingSettings:](BWIrisMovieInfo, "emptyIrisMovieInfoWithFigCaptureMovieFileRecordingSettings:", [v6 settings]);
    v34 = [a2 sinkID];
    v35 = a1;
    v36 = v33;
    v37 = 4294951756;
    goto LABEL_47;
  }

  return result;
}

uint64_t cs_resetImageControlModeAndStreamSelection(uint64_t a1, int a2)
{
  if ([-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](a1) autoImageControlMode] == 2)
  {
    [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](a1) setAutoImageControlMode:a2 ^ 1u];
  }

  result = [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](a1) isBravoVariant];
  if (result)
  {
    v5 = [(FigCaptureMovieFileSinkPipeline *)a1 primaryCaptureDevice];

    return [v5 setBravoStreamSelectionConfigurationForRecordingEnabled:0];
  }

  return result;
}

void captureSession_postNotificationsForIrisRequestCompletedWithError(const void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if (a3)
    {
      v5 = a4;
      if (a4)
      {
        if (a4 == -16418 || a4 == -15433 || a4 == -15542)
        {
          [a3 processingTimeInMilliseconds];
          if (v8 > 0.0)
          {
            [a3 processingTimeInMilliseconds];
            if (v9 < 500.0)
            {
              CMBaseObjectGetDerivedStorage();
              if (dword_1ED844050)
              {
                v20 = 0;
                v19 = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v5 = 4294951862;
            }
          }
        }

        v11 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, [objc_msgSend(a3 settings], v5);
        v18[0] = a2;
        v17[0] = @"SectionID";
        v17[1] = @"SettingsID";
        v18[1] = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objc_msgSend(a3, "settings"), "settingsID")}];
        v17[2] = @"IsOriginalPhotoMovie";
        v18[2] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(a3, "isOriginalPhotoRecording")}];
        v17[3] = @"ErrorStatus";
        v18[3] = [MEMORY[0x1E696AD98] numberWithInt:v5];
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
        if ([a3 spatialOverCaptureExpected])
        {
          v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v12];
          [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsSpatialOverCaptureMovie"];
        }

        else
        {
          v13 = 0;
        }

        if ([a3 numberOfRequestedVariants] >= 1)
        {
          v14 = 0;
          do
          {
            captureSession_postNotificationWithPayload(a1, @"IrisDidRecordIrisMovie", v11);
            captureSession_postNotificationWithPayload(a1, @"IrisDidFinishRecordingIrisMovie", v12);
            if (v13)
            {
              captureSession_postNotificationWithPayload(a1, @"IrisDidFinishRecordingIrisMovie", v13);
            }

            ++v14;
          }

          while (v14 < [a3 numberOfRequestedVariants]);
        }

        cs_reportLivePhotoMovieCoreAnalyticsData(a1, a3, v5, 0);
      }
    }
  }
}

void captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (cs_initializeVideoRecordingWhileMultitaskingStatics_onceToken != -1)
  {
    captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary_cold_1();
  }

  os_unfair_lock_lock(&sVideoRecordingWhileMultitaskingDialogLock);
  if (sVideoRecordingWhileMultitaskingDialogDisplayed == 1)
  {
    if (!dword_1ED844050)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (sVideoRecordingWhileMultitaskingDialogInFlight == 1)
  {
LABEL_17:
    error = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_14:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

  if (dword_1ED844050)
  {
    error = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  error = 0;
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:{@"com.apple.CMCapture", v15, v16}];
  v3 = [v2 localizedStringForKey:@"VIDEO_RECORDING_WHILE_MULTITASKING_OK_BUTTON" value:&stru_1F216A3D0 table:@"Localizable"];
  v4 = [v2 localizedStringForKey:@"VIDEO_RECORDING_WHILE_MULTITASKING_MESSAGE" value:&stru_1F216A3D0 table:@"Localizable"];
  v5 = *MEMORY[0x1E695EE60];
  v26[0] = *MEMORY[0x1E695EE78];
  v26[1] = v5;
  v27[0] = v3;
  v27[1] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v7 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, &error, v6);
  if (!v7)
  {
    *type = 0;
    v23 = OS_LOG_TYPE_DEFAULT;
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = *type;
    if (os_log_type_enabled(v10, v23))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v13 = *(DerivedStorage + 104);
      v17 = 136315650;
      v18 = "captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary";
      v19 = 2114;
      v20 = v13;
      v21 = 1024;
      v22 = error;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_14;
  }

  v8 = v7;
  sVideoRecordingWhileMultitaskingDialogInFlight = 1;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = v8;
  block[5] = DerivedStorage;
  dispatch_async(global_queue, block);
LABEL_15:
  os_unfair_lock_unlock(&sVideoRecordingWhileMultitaskingDialogLock);
}

void cs_reportLivePhotoMovieCoreAnalyticsData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  v8 = *(DerivedStorage + 456);
  os_unfair_lock_unlock((DerivedStorage + 384));
  v9 = objc_alloc_init(BWLivePhotoMovieAnalyticsPayload);
  [(BWLivePhotoMovieAnalyticsPayload *)v9 setClientApplicationID:*(DerivedStorage + 88)];
  [(BWLivePhotoMovieAnalyticsPayload *)v9 setRecordingSucceeded:a4];
  [(BWLivePhotoMovieAnalyticsPayload *)v9 setErrorStatus:a3];
  [(BWLivePhotoMovieAnalyticsPayload *)v9 setSessionStatus:v8];
  -[BWLivePhotoMovieAnalyticsPayload setLongPressMovie:](v9, "setLongPressMovie:", [objc_msgSend(a2 "settings")]);
  -[BWLivePhotoMovieAnalyticsPayload setOriginalRecording:](v9, "setOriginalRecording:", [a2 isOriginalPhotoRecording]);
  if (a2)
  {
    [a2 stillImageCaptureTime];
    [(BWLivePhotoMovieAnalyticsPayload *)v9 setHasStillImagePTS:BYTE4(v24) & 1];
    [a2 movieTrimEndTime];
    [a2 movieTrimStartTime];
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    [(BWLivePhotoMovieAnalyticsPayload *)v9 setHasStillImagePTS:0];
    memset(&lhs, 0, sizeof(lhs));
    memset(&v20, 0, sizeof(v20));
  }

  CMTimeSubtract(&time, &lhs, &v20);
  [(BWLivePhotoMovieAnalyticsPayload *)v9 setMovieDurationInSeconds:CMTimeGetSeconds(&time)];
  if (a2)
  {
    [a2 stillImageCaptureTime];
    [a2 movieTrimStartTime];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
    memset(&v20, 0, sizeof(v20));
  }

  CMTimeSubtract(&time, &lhs, &v20);
  [(BWLivePhotoMovieAnalyticsPayload *)v9 setStillTimeOffsetInSeconds:CMTimeGetSeconds(&time)];
  if (a2)
  {
    [a2 stillTimeOffsetToVideoPrerollStartTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  [(BWLivePhotoMovieAnalyticsPayload *)v9 setStillTimeOffsetToVideoPrerollStartInMilliseconds:CMTimeGetSeconds(&time) * 1000.0];
  if (a2)
  {
    [a2 stillTimeOffsetToVideoPrerollStopTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  [(BWLivePhotoMovieAnalyticsPayload *)v9 setStillTimeOffsetToVideoPrerollStopInMilliseconds:CMTimeGetSeconds(&time) * 1000.0];
  if (a2)
  {
    [a2 stillTimeOffsetToAudioPrerollStartTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  [(BWLivePhotoMovieAnalyticsPayload *)v9 setStillTimeOffsetToAudioPrerollStartInMilliseconds:CMTimeGetSeconds(&time) * 1000.0];
  if (a2)
  {
    [a2 stillTimeOffsetToAudioPrerollStopTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  [(BWLivePhotoMovieAnalyticsPayload *)v9 setStillTimeOffsetToAudioPrerollStopInMilliseconds:CMTimeGetSeconds(&time) * 1000.0];
  -[BWLivePhotoMovieAnalyticsPayload setOverlappingCapture:](v9, "setOverlappingCapture:", [a2 isOverlappingRequest]);
  -[BWLivePhotoMovieAnalyticsPayload setStillCaptureLuxLevel:](v9, "setStillCaptureLuxLevel:", [a2 stillImageCaptureLuxLevel]);
  -[BWLivePhotoMovieAnalyticsPayload setStillCapturePortType:](v9, "setStillCapturePortType:", [objc_msgSend(a2 "stillImageCaptureSettings")]);
  -[BWLivePhotoMovieAnalyticsPayload setStillCaptureType:](v9, "setStillCaptureType:", [objc_msgSend(a2 "stillImageCaptureSettings")]);
  -[BWLivePhotoMovieAnalyticsPayload setStillCaptureResolutionFlavor:](v9, "setStillCaptureResolutionFlavor:", [objc_msgSend(a2 "stillImageRequestSettings")]);
  -[BWLivePhotoMovieAnalyticsPayload setMaxSystemPressureLevel:](v9, "setMaxSystemPressureLevel:", [a2 maxSystemPressureLevel]);
  [a2 targetFrameRate];
  [(BWLivePhotoMovieAnalyticsPayload *)v9 setTargetFrameRate:v10];
  -[BWLivePhotoMovieAnalyticsPayload setNumberOfFramesDropped:](v9, "setNumberOfFramesDropped:", [a2 numberOfFramesDropped]);
  -[BWLivePhotoMovieAnalyticsPayload setRetimingRecipeIdentifier:](v9, "setRetimingRecipeIdentifier:", [a2 irisSequenceAdjusterRecipeIdentifier]);
  if ([a2 isTransitionVitalityScoreValid])
  {
    [a2 transitionVitalityScoreV1];
    [(BWLivePhotoMovieAnalyticsPayload *)v9 setTransitionVitalityScoreV1:v11];
  }

  -[BWLivePhotoMovieAnalyticsPayload setTransitionVitalityFeatures:](v9, "setTransitionVitalityFeatures:", [a2 transitionVitalityFeatures]);
  v12 = [a2 stagingNodeOverallVideoFrameReceptionStats];
  if (v12)
  {
    v13 = v12;
    if ([v12 numberOfSamples] >= 1)
    {
      -[BWLivePhotoMovieAnalyticsPayload setStagingNodeOverallNumberOfVideoFramesReceived:](v9, "setStagingNodeOverallNumberOfVideoFramesReceived:", [v13 numberOfSamples]);
      [v13 average];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setStagingNodeOverallAverageTimeBetweenVideoFramesInMilliseconds:?];
      [v13 standardDeviation];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setStagingNodeOverallStandardDeviationOfTimeBetweenVideoFramesInMilliseconds:?];
      [v13 min];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setStagingNodeOverallMinimumTimeBetweenVideoFramesInMilliseconds:?];
      [v13 max];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setStagingNodeOverallMaximumTimeBetweenVideoFramesInMilliseconds:?];
    }
  }

  v14 = [a2 stagingNodeValveActiveVideoFrameReceptionStats];
  if (v14)
  {
    v15 = v14;
    if ([v14 numberOfSamples] >= 1)
    {
      -[BWLivePhotoMovieAnalyticsPayload setStagingNodeValveActiveNumberOfVideoFramesReceived:](v9, "setStagingNodeValveActiveNumberOfVideoFramesReceived:", [v15 numberOfSamples]);
      [v15 average];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setStagingNodeValveActiveAverageTimeBetweenVideoFramesInMilliseconds:?];
      [v15 standardDeviation];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setStagingNodeValveActiveStandardDeviationOfTimeBetweenVideoFramesInMilliseconds:?];
      [v15 min];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setStagingNodeValveActiveMinimumTimeBetweenVideoFramesInMilliseconds:?];
      [v15 max];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setStagingNodeValveActiveMaximumTimeBetweenVideoFramesInMilliseconds:?];
    }
  }

  v16 = [a2 fileCoordinatorToWriterMovingWindowLatencyStats];
  if (v16)
  {
    v17 = v16;
    if ([v16 numberOfSamples] >= 1)
    {
      -[BWLivePhotoMovieAnalyticsPayload setFileCoordinatorToWriterMovingWindowLatencyNumberOfSamples:](v9, "setFileCoordinatorToWriterMovingWindowLatencyNumberOfSamples:", [v17 numberOfSamples]);
      [v17 average];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setFileCoordinatorToWriterMovingWindowLatencyAverageInMilliseconds:?];
      [v17 standardDeviation];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setFileCoordinatorToWriterMovingWindowLatencyStandardDeviationInMilliseconds:?];
      [v17 min];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setFileCoordinatorToWriterMovingWindowLatencyMinimumInMilliseconds:?];
      [v17 max];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setFileCoordinatorToWriterMovingWindowLatencyMaximumInMilliseconds:?];
    }
  }

  v18 = [a2 videoFrameDurationStats];
  if (v18)
  {
    v19 = v18;
    if ([v18 numberOfSamples] >= 1)
    {
      [v19 min];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setMinVideoFrameDurationInMilliseconds:?];
      [v19 max];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setMaxVideoFrameDurationInMilliseconds:?];
      [v19 average];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setAverageVideoFrameDurationInMilliseconds:?];
      [v19 median];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setMedianVideoFrameDurationInMilliseconds:?];
      [v19 standardDeviation];
      [(BWLivePhotoMovieAnalyticsPayload *)v9 setVideoFrameDurationStandardDeviationInMilliseconds:?];
    }
  }

  [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v9];
}

uint64_t cs_setSceneClassifierSuspended(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_msgSend(objc_msgSend(a2 "primaryStillImageConnectionConfiguration")];
  v7 = [objc_msgSend(a2 "primaryStillImageConnectionConfiguration")];
  -[FigCaptureMovieFileSinkPipeline setSceneClassifierSuspended:]([a1 movieFileSinkPipelineWithSourceID:v6 sourceDeviceType:v7], a3);
  [objc_msgSend(a1 previewSinkPipelineWithSourceID:v6 sourceDeviceType:{v7), "setSceneClassifierSuspended:", a3}];
  -[FigCaptureMetadataSinkPipeline setSceneClassifierSuspended:]([a1 metadataSinkPipelineWithSourceID:v6 sourceDeviceType:v7], a3);

  return FigMemoryBarrier();
}

uint64_t cs_cameraSensorOrientationCompensationDegreesCW(void *a1, void *a2)
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  v4 = [a2 cameraSensorOrientationCompensationEnabled];
  if (v4)
  {
    v4 = [FigCaptureSourceGetAttribute(a1 @"CameraSensorOrientationCompensation"];
  }

  return FigCaptureNormalizeAngle(v4);
}

void captureSession_didCaptureIrisStill(const void *a1, void *a2, void *a3, void *a4, void *a5, CMTime *a6, uint64_t a7, _BYTE *a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v51 = a6;
  if (dword_1ED844050)
  {
    LODWORD(v56.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = [a3 primaryStillImageSinkPipeline];
  if (a5)
  {
    v15 = [a5 captureType] == 3;
  }

  else
  {
    v15 = 0;
  }

  if ([a4 movieMode])
  {
    v49 = v15;
    v16 = [a2 movieFileSinkPipelineWithSinkID:{objc_msgSend(v14, "sinkID")}];
    v17 = [a3 primaryCameraSourcePipeline];
    v18 = [a4 movieRecordingSettings];
    toClockOrTimebase = 0;
    cs_getMasterClockAndType(a2, &toClockOrTimebase, 0);
    v56 = **&MEMORY[0x1E6960C70];
    if ([a4 movieMode] == 2)
    {
      if (cs_touchDownMomentStillCaptureEnabled_onceToken != -1)
      {
        captureSession_didCaptureIrisStill_cold_1();
      }

      CMTimeMake(&rhs, a6->timescale / 1000, a6->timescale);
      type = *a6;
      CMTimeAdd(&time, &type, &rhs);
      *a6 = time;
      v19 = [(FigCaptureCameraSourcePipeline *)v17 clock];
      time = *a6;
      CMSyncConvertTime(&v56, &time, v19, toClockOrTimebase);
      if (dword_1ED844050)
      {
        v20 = v16;
        LODWORD(type.value) = 0;
        v54 = OS_LOG_TYPE_DEFAULT;
        v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = type.value;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = value;
        }

        else
        {
          v23 = value & 0xFFFFFFFE;
        }

        if (v23)
        {
          v24 = a5;
          v25 = *(DerivedStorage + 104);
          time = v56;
          Seconds = CMTimeGetSeconds(&time);
          LODWORD(rhs.value) = 136315650;
          *(&rhs.value + 4) = "captureSession_didCaptureIrisStill";
          LOWORD(rhs.flags) = 2114;
          *(&rhs.flags + 2) = v25;
          a5 = v24;
          HIWORD(rhs.epoch) = 2048;
          v59 = Seconds;
          LODWORD(v45) = 32;
          p_rhs = &rhs;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v16 = v20;
      }

      CMTimeMake(&rhs, 1, 2);
      type = *a6;
      CMTimeAdd(&time, &type, &rhs);
      *a6 = time;
    }

    memset(&time, 0, sizeof(time));
    v27 = [(FigCaptureCameraSourcePipeline *)v17 clock];
    rhs = *a6;
    CMSyncConvertTime(&time, &rhs, v27, toClockOrTimebase);
    if (a7)
    {
      if (![a4 providesOriginalImage] || !objc_msgSend(a4, "movieURLForOriginalImage"))
      {
        return;
      }

      v18 = [v18 copy];
      [v18 setOutputURL:{objc_msgSend(a4, "movieURLForOriginalImage")}];
      if ([a4 movieLevelMetadataForOriginalImage])
      {
        [v18 setMovieLevelMetadata:{objc_msgSend(a4, "movieLevelMetadataForOriginalImage")}];
      }

      if ([v18 spatialOverCaptureMovieURL])
      {
        [v18 setSpatialOverCaptureMovieURL:{objc_msgSend(a4, "spatialOverCaptureMovieURLForOriginalImage")}];
        [v18 setSpatialOverCaptureMovieLevelMetadata:{objc_msgSend(a4, "spatialOverCaptureMovieLevelMetadataForOriginalImage")}];
      }
    }

    v28 = [a4 semanticStyle];
    if ([v28 isIdentity])
    {
      v29 = 0;
    }

    else
    {
      v30 = [v18 isIrisMovieRecording];
      v29 = 0;
      if (v28 && (v30 & 1) == 0)
      {
        v31 = v16;
        v32 = [objc_msgSend(a5 "metadata")];
        v33 = objc_alloc_init(BWColorLookupCache);
        v34 = BWSemanticStyleFiltersForSemanticStyleAndFilterToCombine(v28, v32, 1, 0, 0, v33, 0);

        v35 = [v34 firstObject];
        NSClassFromString(&cfstr_Cicolorcubesmi.isa);
        if (objc_opt_isKindOfClass())
        {
          [v18 setPersonSegmentationRenderingEnabled:1];
          [v18 setPersonSegmentationForegroundColorCube:{objc_msgSend(v35, "cube0Data")}];
          [v18 setPersonSegmentationBackgroundColorCube:{objc_msgSend(v35, "cube1Data")}];
        }

        v29 = v28;
        v16 = v31;
        a6 = v51;
      }
    }

    [a4 stillImageCaptureAbsoluteStartTime];
    rhs = time;
    type = *a6;
    v36 = [BWIrisMovieInfo irisMovieInfoWithFigCaptureMovieFileRecordingSettings:v18 stillImageCaptureTime:&rhs stillImageCaptureHostTime:&type stillImageCaptureAbsoluteStartTime:a4 stillImageRequestSettings:a5 stillImageCaptureSettings:a7 originalPhotoRecording:v29 semanticStyle:?];
    if ([a4 movieMode] == 2)
    {
      [(BWIrisMovieInfo *)v36 setMomentCaptureMovieRecording:1];
    }

    if (a5)
    {
      [(BWIrisMovieInfo *)v36 setSpatialOverCaptureExpected:0];
    }

    else
    {
      v37 = [(FigCaptureCameraSourcePipeline *)v17 captureDevice];
      if ([v18 spatialOverCaptureMovieURL])
      {
        v38 = [v37 needsToRelieveSystemPressure] ^ 1;
      }

      else
      {
        v38 = 0;
      }

      [(BWIrisMovieInfo *)v36 setSpatialOverCaptureExpected:v38];
      if (a8)
      {
        *a8 = [(BWIrisMovieInfo *)v36 spatialOverCaptureExpected];
      }
    }

    [a4 nonDestructiveCropSize];
    [(BWIrisMovieInfo *)v36 setNonDestructiveCropSize:?];
    if (!captureSession_checkClientIsAllowedToWriteToOutputURLsInRecordingSettings(a1, v18))
    {
      v39 = 4294951864;
      goto LABEL_46;
    }

    if ([v16 checkIfFileAlreadyExistForMFO] && (captureSession_checkIfOutputURLsInRecordingSettingsAlreadyExist(v18) & 1) != 0)
    {
      v39 = 4294950886;
LABEL_46:
      captureSession_postNotificationsForIrisRequestCompletedWithError(a1, [v16 sinkID], v36, v39);
      return;
    }

    if ([(FigCaptureMovieFileSinkPipeline *)v16 sdofCompressorNodes])
    {
      if (v49)
      {
        if (a7)
        {
          v40 = 2;
        }

        else
        {
          v40 = 1;
        }
      }

      else if ([a4 providesOriginalImage] && objc_msgSend(a4, "movieURLForOriginalImage"))
      {
        -[BWIrisMovieInfo setOutputURLForSDOFOriginalMovie:](v36, "setOutputURLForSDOFOriginalMovie:", [a4 movieURLForOriginalImage]);
        -[BWIrisMovieInfo setMovieLevelMetadataForSDOFOriginalMovie:](v36, "setMovieLevelMetadataForSDOFOriginalMovie:", [a4 movieLevelMetadataForOriginalImage]);
        v40 = 3;
      }

      else
      {
        v40 = 1;
      }

      [(BWIrisMovieInfo *)v36 setRequestedSDOFVariants:v40];
    }

    os_unfair_lock_lock((DerivedStorage + 384));
    os_unfair_lock_unlock((DerivedStorage + 384));
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __captureSession_didCaptureIrisStill_block_invoke;
    v52[3] = &unk_1E7998D98;
    v53 = v56;
    v52[4] = a4;
    v52[5] = v36;
    v52[6] = v16;
    v52[7] = a5;
    v52[8] = DerivedStorage;
    v52[9] = a1;
    v41 = CMBaseObjectGetDerivedStorage();
    captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(a1, *(v41 + 760), v52, 0.0);
  }
}

unint64_t cs_removeEmptyPendingIrisRecording(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    cs_removeEmptyPendingIrisRecording_cold_1();
  }

  v21 = DerivedStorage;
  v6 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:a2];
  v22 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [v6 pendingIrisRecordings];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        if ([objc_msgSend(v12 settings] == a3)
        {
          if ([v12 isEmpty])
          {
            [v22 addObject:v12];
            if (dword_1ED844050)
            {
              v30 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v14 = v30;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v15 = v14;
              }

              else
              {
                v15 = v14 & 0xFFFFFFFE;
              }

              if (v15)
              {
                v16 = *(v21 + 104);
                v23 = 136315650;
                v24 = "cs_removeEmptyPendingIrisRecording";
                v25 = 2114;
                v26 = v16;
                v27 = 2112;
                v28 = v12;
                LODWORD(v19) = 32;
                v18 = &v23;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v9);
  }

  [objc_msgSend(v6 pendingIrisRecordings];
  return captureSession_servicePendingIrisRecordings(a1, v6, 0);
}

unint64_t stillImageSinkPipelineSessionStorage_stillImageOutputDimensionsForSettings(void *a1, uint64_t a2, void *a3, float *a4)
{
  v8 = [a3 outputDimensions];
  [a3 videoStabilizationOverscanCropMultiplier];
  v10 = v9;
  v11 = [a1 cameraSourcePipelineForStillImageSinkPipeline:a2];
  v12 = [objc_msgSend(a1 stillImageConnectionConfigurationForStillImageSinkPipeline:{a2), "sourceConfiguration"}];
  v13 = [-[FigCaptureCameraSourcePipeline captureDevice](v11) aspectRatio];
  v14 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v11) highResStillImageDimensions];
  v15 = [FigCaptureSourceFormatDimensions identifySourceFormatDimensionsFromDimensions:v8 availableHighResStillImageDimensions:v14 aspectRatio:v13];
  v16 = v15;
  if (v10 != 0.0 && [v15 flavor])
  {
    v8 = [objc_msgSend(v14 "firstObject")];
  }

  v17 = v8;
  v18 = HIDWORD(v8);
  if (!v18 && !v17)
  {
    v19 = [(FigCaptureCameraSourcePipeline *)v11 firmwareStillImageDimensionsAfterOverscanCropping];
    v17 = v19;
    if (v19 < 1 || (v18 = HIDWORD(v19), v19 <= 0))
    {
      v21 = [(FigCaptureCameraSourcePipeline *)v11 stillImageOutputVideoFormat];
      v22 = [v21 width];
      LODWORD(v18) = [v21 height];
      v20 = v18 > 0;
      v17 = v22;
    }

    else
    {
      v20 = 1;
    }

    if (v17 < 1 || !v20)
    {
      v23 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v11) defaultHighResStillImageDimensions];
      v18 = HIDWORD(v23);
      v17 = v23;
    }

    if (([v12 cinematicFramingEnabled] & 1) != 0 || objc_msgSend(v12, "manualCinematicFramingEnabled"))
    {
      v24 = [objc_msgSend(-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v11) "highResStillImageDimensions")];
      if (v24)
      {
        v25 = [v24 dimensions];
      }

      else
      {
        v25 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v11) cinematicFramingOutputDimensions];
      }
    }

    else
    {
      v26 = [(FigCaptureCameraSourcePipeline *)v11 captureSource];
      if (!FigCaptureSourceGetBoolAttribute(v26, @"GeometricDistortionCorrectionExpandsImageDimensions", 0))
      {
        goto LABEL_21;
      }

      v25 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v11) defaultHighResStillImageDimensions];
    }

    v18 = HIDWORD(v25);
    v17 = v25;
  }

LABEL_21:
  if (a4)
  {
    v27 = *a4;
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v27 = 0.0;
    if (!v13)
    {
      goto LABEL_36;
    }
  }

  if ([v16 flavor])
  {
    v28 = [v16 dimensions];
    v29 = HIDWORD(v28);
    v17 = v28;
  }

  else
  {
    v29 = v18;
  }

  v30 = BWAspectRatioValueFromAspectRatio(v13);
  v31 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v17 | (v29 << 32), v30);
  v17 = v31;
  v18 = HIDWORD(v31);
  v32 = [v16 flavor];
  if (v27 != 0.0 && !v32)
  {
    v33 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](v11) sensorDimensions];
    v34 = v33;
    if (v33 >= 1 && SHIDWORD(v33) >= 1)
    {
      v35 = BWAspectRatioValueFromAspectRatio(v13);
      v36 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v34, v35);
      if ((v27 * (v18 / SHIDWORD(v36))) >= 1.0)
      {
        v27 = v27 * (v18 / SHIDWORD(v36));
      }

      else
      {
        v27 = 1.0;
      }
    }
  }

  [a3 setSquareCropEnabled:0];
LABEL_36:
  [a3 setAspectRatio:v13];
  v37 = [a3 squareCropEnabled];
  if (v17 >= v18)
  {
    LODWORD(v38) = v18;
  }

  else
  {
    LODWORD(v38) = v17;
  }

  if (v37)
  {
    v39 = v38;
  }

  else
  {
    v39 = v18;
  }

  if (v37)
  {
    v38 = v38;
  }

  else
  {
    v38 = v17;
  }

  v40 = BWDimensionsConformingToZoomWithoutUpscalingIfRequired(v38 | (v39 << 32), a3, v27);
  v41 = v40;
  v42 = HIDWORD(v40);
  if (v10 != 0.0)
  {
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v40, v40 >> 32, (1.0 - v10) * 0.5, (1.0 - v10) * 0.5, v10, v10, v40 / SHIDWORD(v40));
    width = v47.size.width;
    height = v47.size.height;
    IsNull = CGRectIsNull(v47);
    v42 = IsNull ? v42 : height;
    if (!IsNull)
    {
      v41 = width;
    }
  }

  if (a4)
  {
    *a4 = v27;
  }

  return v41 | (v42 << 32);
}

uint64_t captureSession_updateOutputDimensionsAndResolutionFlavor(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = [-[FigCaptureCameraSourcePipeline captureSourceVideoFormat](a2) highResStillImageDimensions];
  v7 = [a3 aspectRatio];
  if ([a3 resolutionFlavor])
  {
    v8 = +[FigCaptureSourceFormatDimensions identifyDimensionsFromFlavor:availableHighResStillImageDimensions:](FigCaptureSourceFormatDimensions, "identifyDimensionsFromFlavor:availableHighResStillImageDimensions:", [a3 resolutionFlavor], v6);
    a1 = [v8 dimensions];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = [FigCaptureSourceFormatDimensions identifySourceFormatDimensionsFromDimensions:a1 availableHighResStillImageDimensions:v6 aspectRatio:v7];
  if (v7)
  {
LABEL_3:
    v9 = BWAspectRatioValueFromAspectRatio(v7);
    a1 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(a1, v9);
  }

LABEL_4:
  v10 = HIDWORD(a1);
  v11 = [-[FigCaptureCameraSourcePipeline captureDevice](a2) baseZoomFactorsByPortType];
  [objc_msgSend(v11 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(-[FigCaptureCameraSourcePipeline captureDevice](a2), "masterCaptureStream"), "portType")), "floatValue"}];
  if (v12 == 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v12;
  }

  [-[FigCaptureCameraSourcePipeline captureDevice](a2) zoomFactor];
  v15 = v14 / v13;
  if (v15 >= 1.0)
  {
    v17 = [v8 maxUpscalingDimensions];
    v16 = 0;
    if (v17 >= 1 && SHIDWORD(v17) >= 1)
    {
      v18 = BWCropRectDimensionsForZoomFactor(a1, v15);
      v10 = HIDWORD(v18);
      a1 = v18;
      if (v18 <= [v8 maxUpscalingDimensions] && v10 <= (objc_msgSend(v8, "maxUpscalingDimensions") >> 32))
      {
        v19 = [v8 maxUpscalingDimensions];
        v16 = 0;
        v10 = HIDWORD(v19);
        a1 = v19;
      }

      else
      {
        v16 = 1;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  [a3 setOutputWidth:a1];
  [a3 setOutputHeight:v10];
  [a3 setResolutionFlavor:{objc_msgSend(v8, "flavor")}];

  return [a3 setBypassUpscaling:v16];
}

void sub_1ACB17C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t cs_figCaptureColorSpaceFromSourcePipeline(uint64_t a1)
{
  v1 = [(FigCaptureCameraSourcePipeline *)a1 colorSpaceProperties];
  if (v1 > 0xB || (result = 1, ((1 << v1) & 0x818) == 0))
  {
    if ((v1 & 0xFFFFFFFD) == 5)
    {
      return 5;
    }

    else
    {
      v3 = v1 - 6;
      if (v3 > 6)
      {
        return 0;
      }

      else
      {
        return dword_1AD055FC4[v3];
      }
    }
  }

  return result;
}

void captureSession_postSinkRemoteQueueUpdatedNotification(const void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5[0] = @"SectionID";
    v5[1] = @"RemoteQueueReceiver";
    v6[0] = a2;
    v6[1] = a3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
    if (v4)
    {
      captureSession_postNotificationWithPayload(a1, @"RemoteQueueUpdated", v4);
    }
  }
}

void captureSession_generateStateDump(uint64_t a1, uint64_t a2)
{
  if (dword_1ED844050)
  {
    v18 = 0;
    v17 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  v6 = [v5 stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@-%@.plist", FigCaptureStateDumpDirectory(), a2, v6];
  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    captureSession_generateStateDump_cold_3();
  }

  else
  {
    v12 = 0;
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if (v12)
    {
      captureSession_generateStateDump_cold_1();
    }

    else
    {
      OSStateData = FigCaptureSessionGetOSStateData(a1, 1);
      if (OSStateData && ([OSStateData writeToURL:objc_msgSend(MEMORY[0x1E695DFF8] atomically:{"fileURLWithPath:", v7), 1}] & 1) == 0)
      {
        captureSession_generateStateDump_cold_2();
      }
    }
  }

  if (dword_1ED844050)
  {
    v18 = 0;
    v17 = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v18;
    if (os_log_type_enabled(v9, v17))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v13 = 136315394;
      v14 = "captureSession_generateStateDump";
      v15 = 2112;
      v16 = a2;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void captureSession_updateRemainingSinkNodesToWaitForBeforeStartingDeferredPrepare(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  if (a2 && [*(DerivedStorage + 608) containsObject:a2])
  {
    [*(DerivedStorage + 608) removeObject:a2];
  }

  v5 = [*(DerivedStorage + 608) count];
  os_unfair_lock_unlock((DerivedStorage + 384));
  if (!v5)
  {

    captureSession_updateDeferredGraphSetupStartCondition(a1, (DerivedStorage + 601), 1);
  }
}

void cs_detectSessionStartFailLoopTTR(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (a2 != 561015905 && a2 != 561017449)
  {
    v5 = UpTimeNanoseconds;
    os_unfair_lock_lock((DerivedStorage + 960));
    if (!a2)
    {
LABEL_12:
      *(DerivedStorage + 968) = 0;
      *(DerivedStorage + 976) = 0;
      goto LABEL_13;
    }

    v6 = v5 / 0xF4240;
    v7 = *(DerivedStorage + 976);
    if (v7)
    {
      v8 = *(DerivedStorage + 968);
      v9 = v7 + 1;
      *(DerivedStorage + 976) = v9;
      if (v9 < 3)
      {
LABEL_13:
        os_unfair_lock_unlock((DerivedStorage + 960));
        return;
      }

      if ((v6 - v8) <= 30000)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Client application ID: %@\nClient process ID: %d", *(DerivedStorage + 88), *(DerivedStorage + 16)];
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (a2 == -73197)
        {
          v12 = _os_log_send_and_compose_impl();
          FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
          FigCapturePleaseFileRadar(FrameworkRadarComponent, v12, v10, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 18068, @"LastShownDate:FigCaptureSession.m:18068", @"LastShownBuild:FigCaptureSession.m:18068", 0);
        }

        else
        {
          v12 = _os_log_send_and_compose_impl();
          v14 = FigCaptureGetFrameworkRadarComponent();
          FigCapturePleaseFileRadar(v14, v12, v10, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCaptureSession.m", 18071, @"LastShownDate:FigCaptureSession.m:18071", @"LastShownBuild:FigCaptureSession.m:18071", 0);
        }

        free(v12);
        goto LABEL_12;
      }
    }

    *(DerivedStorage + 968) = v6;
    *(DerivedStorage + 976) = 1;
    goto LABEL_13;
  }
}

void captureSession_abandonCameraAppSessionStartupTelemetry()
{
  os_unfair_lock_assert_owner(&sFigCaptureSessionCameraAppStartupTelemetry);
  if (!dword_1ED84495C)
  {
    goto LABEL_22;
  }

  v0 = MEMORY[0x1E695FF58];
  if (dword_1ED84495C != 2)
  {
    if (dword_1ED84495C != 1 || *MEMORY[0x1E695FF58] == 0)
    {
      goto LABEL_13;
    }

    v1 = fig_log_handle();
    if (!os_signpost_enabled(v1))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v2 = "CameraLaunchWithoutPrewarm";
    v3 = buf;
    goto LABEL_12;
  }

  if (*MEMORY[0x1E695FF58])
  {
    v1 = fig_log_handle();
    if (os_signpost_enabled(v1))
    {
      v10 = 0;
      v2 = "CameraAppLaunchWithOrigin";
      v3 = &v10;
LABEL_12:
      _os_signpost_emit_with_name_impl(&dword_1AC90E000, v1, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v2, &unk_1AD0FC9CB, v3, 2u);
    }
  }

LABEL_13:
  if (xmmword_1ED844988)
  {
    v5 = *(&xmmword_1ED844988 + 1) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && *v0 != 0)
  {
    v7 = fig_log_handle();
    if (os_signpost_enabled(v7))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AC90E000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CaptureDeviceStolenDuringLaunch", &unk_1AD0FC9CB, v8, 2u);
    }
  }

LABEL_22:
  os_unfair_lock_assert_owner(&sFigCaptureSessionCameraAppStartupTelemetry);
  dword_1ED84495C = 0;
  byte_1ED844960 = 0;
  xmmword_1ED844968 = 0u;
  *&qword_1ED844978 = 0u;
  xmmword_1ED844988 = 0u;
  qword_1ED8449A0 = 0;
  *(&qword_1ED8449A0 + 5) = 0;

  qword_1ED844998 = 0;
}

void cs_reportCameraAppLaunchCoreAnalyticsData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = objc_alloc_init(BWCameraAppLaunchAnalyticsPayload);
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setIsPrewarmed:a1];
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setLaunchMode:@"Photo"];
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setDevicePosition:1];
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setPrewarmReason:a2];
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setLaunchDuration:a3];
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setMemoryStatusLevel:qword_1ED8449A0];
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setThermalLevel:HIDWORD(qword_1ED8449A0)];
  -[BWCameraAppLaunchAnalyticsPayload setIspStartDuration:](v8, "setIspStartDuration:", [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")]);
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setNumberOfGraphStartsDuringLaunch:dword_1ED8449A8];
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setDeviceIsLocked:byte_1ED8449AC];
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setIsColdLaunch:byte_1ED844960];
  [(BWCameraAppLaunchAnalyticsPayload *)v8 setDeviceStolenCondition:0];
  if (xmmword_1ED844988 && (!byte_1ED8449AD ? (v6 = 1) : (v6 = 2), [(BWCameraAppLaunchAnalyticsPayload *)v8 setDeviceStolenCondition:v6], *(&xmmword_1ED844988 + 1)))
  {
    v7 = ((FigHostTimeToNanoseconds() / 1000 + 999) / 1000);
  }

  else
  {
    v7 = 0;
  }

  [(BWCameraAppLaunchAnalyticsPayload *)v8 setDeviceStolenDuration:v7];
  [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v8];
}

void captureSession_reportCancelledLockScreenCameraLaunch()
{
  os_unfair_lock_assert_owner(&sLockScreenCameraLaunchTelemetry);
  v0 = word_1EB58EC10;
  v1 = HIBYTE(word_1EB58EC10);
  [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportLockScreenCameraLaunchCancelledWithPrewarming:"reportLockScreenCameraLaunchCancelledWithPrewarming:ispStreamingStarted:" ispStreamingStarted:word_1EB58EC10, HIBYTE(word_1EB58EC10)];
  v2 = objc_alloc_init(BWCameraLockScreenLaunchAnalyticsPayload);
  [(BWCameraLockScreenLaunchAnalyticsPayload *)v2 setCompleted:0];
  [(BWCameraLockScreenLaunchAnalyticsPayload *)v2 setPrewarmed:v0];
  [(BWCameraLockScreenLaunchAnalyticsPayload *)v2 setIspStreamingStarted:v1];
  [(BWCameraLockScreenLaunchAnalyticsPayload *)v2 setLaunchError:0];
  [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v2];

  os_unfair_lock_assert_owner(&sLockScreenCameraLaunchTelemetry);
  byte_1EB58EC04 = 0;
  word_1EB58EC10 = 0;
  dword_1EB58EC14 = 0;
}

uint64_t FigCaptureSessionCreate(uint64_t a1, __int128 *a2, void *a3, void *a4)
{
  v40 = 0;
  if (initializeGlobals_initializeGlobalsOnceToken != -1)
  {
    FigCaptureSessionPrewarm_cold_1();
  }

  if (dword_1ED844050)
  {
    v39 = 0;
    v38 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3)
  {
    v10 = a2[1];
    v36 = *a2;
    v37 = v10;
    if (!FigCaptureClientIsWebBrowserRenderingExtension(&v36))
    {
      FigCaptureSessionCreate_cold_2();
      return 4294954516;
    }

LABEL_10:
    FigCaptureSessionGetClassID();
    v11 = CMDerivedObjectCreate();
    if (v11)
    {
      FigCaptureSessionCreate_cold_4(v11, &v40, &v36);
      return v36;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = a2[1];
    v36 = *a2;
    v37 = v13;
    *(DerivedStorage + 16) = FigCaptureGetPIDFromAuditToken(&v36);
    v14 = *a2;
    *(DerivedStorage + 36) = a2[1];
    *(DerivedStorage + 20) = v14;
    *(DerivedStorage + 84) = 0;
    *(DerivedStorage + 96) = [a3 copy];
    *(DerivedStorage + 384) = 0;
    *(DerivedStorage + 488) = objc_alloc_init(BWMultitaskingSessionAnalyticsPayload);
    v15 = [FigCaptureSessionParsedConfigurationRestrictions alloc];
    v16 = *(DerivedStorage + 36);
    v36 = *(DerivedStorage + 20);
    v37 = v16;
    *(DerivedStorage + 496) = [(FigCaptureSessionParsedConfigurationRestrictions *)v15 initWithClientAuditToken:&v36];
    *(DerivedStorage + 664) = -1;
    *(DerivedStorage + 672) = 0;
    *(DerivedStorage + 224) = 0;
    *(DerivedStorage + 256) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 264) = 0;
    *(DerivedStorage + 136) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 144) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 152) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 160) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 168) = 1;
    *(DerivedStorage + 200) = FigDispatchQueueCreateWithPriority();
    v17 = [BWFigCaptureSession alloc];
    *(DerivedStorage + 832) = [(BWFigCaptureSession *)v17 initWithFigCaptureSession:v40];
    *(DerivedStorage + 840) = objc_alloc_init(FigCaptureThermalMonitor);
    v18 = +[FigCaptureSessionObservatory sharedObservatory];
    [v18 captureSessionWasCreated:v40];
    v19 = a2[1];
    v36 = *a2;
    v37 = v19;
    captureSession_createClientApplicationStateMonitor(v40, &v36);
    v20 = [FigCaptureSessionLoggingPrefix alloc];
    v21 = a2[1];
    v36 = *a2;
    v37 = v21;
    *(DerivedStorage + 104) = [(FigCaptureSessionLoggingPrefix *)v20 initWithClientAuditToken:v40 captureSession:?];
    v22 = v40;
    v34 = *a2;
    v35 = a2[1];
    os_unfair_lock_lock(&sSessionIDLock);
    v23 = sNextSessionCount + 1;
    if ((sNextSessionCount + 1) > 1)
    {
      v24 = sNextSessionCount + 1;
    }

    else
    {
      v24 = 1;
    }

    sNextSessionCount = v24;
    os_unfair_lock_unlock(&sSessionIDLock);
    v36 = v34;
    v37 = v35;
    v25 = FigCaptureCopyClientCodeSigningIdentifier(&v36);
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%@][%llu]>", v22, v25, v23];

    *(DerivedStorage + 8) = v26;
    *(DerivedStorage + 868) = 0;
    *(DerivedStorage + 900) = 0;
    *(DerivedStorage + 904) = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(DerivedStorage + 920) = 0;
    *(DerivedStorage + 113) = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
    *(DerivedStorage + 184) = 1;
    *(DerivedStorage + 960) = 0;
    if (FigDebugIsInternalBuild())
    {
      if (dword_1ED844050)
      {
        v39 = 0;
        v38 = OS_LOG_TYPE_DEFAULT;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v28 = v39;
        if (os_log_type_enabled(v27, v38))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          FigCapturePlatformIdentifierString();
          FigCapturePlatformChipRevisionIdentifierString();
          _os_log_send_and_compose_impl();
        }

LABEL_27:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if (dword_1ED844050)
    {
      v39 = 0;
      v38 = OS_LOG_TYPE_DEFAULT;
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v31 = v39;
      if (os_log_type_enabled(v30, v38))
      {
        v32 = v31;
      }

      else
      {
        v32 = v31 & 0xFFFFFFFE;
      }

      if (v32)
      {
        _os_log_send_and_compose_impl();
      }

      goto LABEL_27;
    }

    result = 0;
    *a4 = v40;
    return result;
  }

  v8 = a2[1];
  v36 = *a2;
  v37 = v8;
  if (!FigCaptureClientIsWebBrowserRenderingExtension(&v36))
  {
    goto LABEL_10;
  }

  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  if (FigCaptureClientHasEntitlement(&v36, @"com.apple.private.avfoundation.capture.temporary.no-media-environment.allow"))
  {
    goto LABEL_10;
  }

  FigCaptureSessionCreate_cold_3();
  return 4294954516;
}

uint64_t FigCaptureSessionGetStatus()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock(DerivedStorage + 96);
  os_unfair_lock_opaque = DerivedStorage[114]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(DerivedStorage + 96);
  return os_unfair_lock_opaque;
}

void *FigCaptureSessionGetOSStateData(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = [MEMORY[0x1E695DF90] dictionary];
  IsInternalBuild = FigDebugIsInternalBuild();
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", *DerivedStorage), @"Invalid"}];
  os_unfair_lock_lock(DerivedStorage + 21);
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(DerivedStorage + 4)), @"ClientPID"}];
  v6 = *(DerivedStorage + 68);
  v27[0] = *(DerivedStorage + 52);
  v27[1] = v6;
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", FigCaptureGetPIDFromAuditToken(v27)), @"ClientPIDPreviouslyUsed"}];
  os_unfair_lock_unlock(DerivedStorage + 21);
  if (IsInternalBuild)
  {
    [v4 setObject:*(DerivedStorage + 11) forKeyedSubscript:@"ClientApplicationID"];
  }

  v21 = a2;
  [v4 setObject:*(DerivedStorage + 12) forKeyedSubscript:@"MediaEnvironment"];
  [v4 setObject:objc_msgSend(*(DerivedStorage + 13) forKeyedSubscript:{"description"), @"LoggingPrefix"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[112]), @"PrewarmingSupported"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[113]), @"HighPriorityLaunchFromLockScreenSupported"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[128]), @"ApplicationStateMonitoringEnabled"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[168]), @"NotificationsEnabled"}];
  v7 = *(DerivedStorage + 119);
  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:@"ImageQueueUpdatedInfo"];
  }

  os_unfair_lock_lock(DerivedStorage + 96);
  v8 = [MEMORY[0x1E695DF90] dictionary];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[388]), @"ShouldRun"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(DerivedStorage + 98)), @"InterruptionError"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[396]), @"ClientStartedSession"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[397]), @"ClientRequestedPrewarming"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[398]), @"UsesCamera"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[399]), @"MultitaskingModeAllowed"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[400]), @"Backgrounded"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[401]), @"InMultitaskingMode"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[402]), @"InWindow"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[403]), @"InPictureInPicture"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[404]), @"CameraStolen"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[405]), @"StopFromCameraStolen"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[416]), @"CameraShutDownDueToSystemPressure"}];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(DerivedStorage + 53), "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = *(DerivedStorage + 53);
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(*(*(&v23 + 1) + 8 * i), "reason"))}];
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v12);
  }

  [v8 setObject:v9 forKeyedSubscript:@"InterruptionStatusReasons"];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[432]), @"UsesMic"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[433]), @"MicStolen"}];
  [v8 setObject:*(DerivedStorage + 55) forKeyedSubscript:@"PrewarmReason"];
  v15 = *(DerivedStorage + 112);
  if (v15 > 2)
  {
    v16 = "Unknown";
  }

  else
  {
    v16 = off_1E7999098[v15];
  }

  [v8 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithCString:encoding:", v16, 4), @"LaunchPrewarmStatus"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[452]), @"LaunchPrewarmingSupported"}];
  v17 = *(DerivedStorage + 114);
  if (v17 > 3)
  {
    v18 = "Invalid Session Status";
  }

  else
  {
    v18 = off_1E79990C8[v17];
  }

  [v8 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithCString:encoding:", v18, 4), @"Status"}];
  [v8 setObject:0 forKeyedSubscript:@"LastStartOrReconfigureTime"];
  [v8 setObject:0 forKeyedSubscript:@"LastStopRunningTime"];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[600]), @"PreviewPipelinesReadyForPropertySetting"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[601]), @"PreviewDidDisplayFirstFrame"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[602]), @"ClientForegroundInDisplayLayout"}];
  [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[616]), @"RunningForPrewarmedHomeScreenIconResume"}];
  [v8 setObject:0 forKeyedSubscript:@"PrewarmForegroundTransitionTime"];
  [v8 setObject:0 forKeyedSubscript:@"ForegroundAutoResumeStopTime"];
  [v8 setObject:objc_msgSend(*(DerivedStorage + 64) forKeyedSubscript:{"osStatePropertyList"), @"CommittedConfiguration"}];
  [v4 setObject:v8 forKeyedSubscript:@"State"];
  if (v21)
  {
    v19 = [MEMORY[0x1E695DF90] dictionary];
    [v19 setObject:objc_msgSend(*(DerivedStorage + 94) forKeyedSubscript:{"osStatePropertyList"), @"graph"}];
    [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", *(DerivedStorage + 95)), @"graphID"}];
    [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[768]), @"graphRunning"}];
    [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[769]), @"graphEmpty"}];
    [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[770]), @"graphHasStartedDeferredSetup"}];
    [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[771]), @"graphHasStartedStillCapture"}];
    [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", DerivedStorage[772]), @"haveStartedRecordingDuringDeferredSetup"}];
    [v4 setObject:v19 forKeyedSubscript:@"Graph"];
  }

  os_unfair_lock_unlock(DerivedStorage + 96);
  return v4;
}

uint64_t FigCaptureSessionSetVideoPreviewTapCallback(const void *a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v8 = DerivedStorage;
    os_unfair_lock_lock((DerivedStorage + 224));
    v9 = *(v8 + 232);
    if (a2)
    {
      if (v9)
      {
        os_unfair_lock_unlock((v8 + 224));
        goto LABEL_2;
      }

      *(v8 + 232) = a2;
      *(v8 + 240) = a3;
      *(v8 + 248) = 0;
      os_unfair_lock_unlock((v8 + 224));
      captureSession_updatePreviewSinkConnectionEnabledState(a1);
    }

    else
    {
      v10 = *(v8 + 240);
      *(v8 + 232) = 0;
      *(v8 + 240) = 0;
      os_unfair_lock_unlock((v8 + 224));
      if (!v9)
      {
        goto LABEL_2;
      }

      captureSession_updatePreviewSinkConnectionEnabledState(a1);
      v11 = *(v8 + 256);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __FigCaptureSessionSetVideoPreviewTapCallback_block_invoke;
      v12[3] = &__block_descriptor_48_e5_v8__0l;
      v12[4] = v9;
      v12[5] = v10;
      dispatch_async(v11, v12);
    }

    return 0;
  }

LABEL_2:

  return FigSignalErrorAtGM();
}

void captureSession_updatePreviewSinkConnectionEnabledState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __captureSession_updatePreviewSinkConnectionEnabledState_block_invoke;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v3[4] = DerivedStorage;
  v3[5] = a1;
  captureSession_performBlockOnWorkerQueue(a1, v3);
}

uint64_t FigCaptureSessionSupportsLaunchPrewarmingBundleID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    *a2 = *(DerivedStorage + 88);
  }

  return *(v4 + 452);
}

uint64_t FigCaptureSessionDetachFromClient(const void *a1, _BYTE *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (*DerivedStorage)
  {
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

  else
  {
    v5 = DerivedStorage;
    captureSession_updateSessionStateWithApplicationAndLayoutState(a1, 1, 0, 0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __FigCaptureSessionDetachFromClient_block_invoke;
    v7[3] = &unk_1E7998B00;
    v7[5] = v5;
    v7[6] = a1;
    v7[4] = &v8;
    captureSession_performBlockOnWorkerQueueSynchronously(a1, v7);
  }

  if (a2)
  {
    *a2 = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);
  return 0;
}

uint64_t captureSession_shouldEnableDeferredNodePrepare(void *a1)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    v5 = 1;
    v6 = 1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        v8 = v6;
        v9 = v5;
        if (*v17 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v10 = [objc_msgSend(*(*(&v16 + 1) + 8 * i) "sinkConfiguration")];
        v5 &= v10;
        v6 &= v10 ^ 1;
      }

      v11 = v10;
      v3 = [a1 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v3);
    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void FigCaptureSessionCancelPrewarm(void *a1)
{
  if (initializeGlobals_initializeGlobalsOnceToken != -1)
  {
    FigCaptureSessionPrewarm_cold_1();
  }

  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  if (a1)
  {
    v2 = [objc_msgSend(qword_1ED844908 objectForKeyedSubscript:{a1), "referencedObject"}];
    v3 = byte_1ED844950;
    os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
    if (v2)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      os_unfair_lock_lock(DerivedStorage + 96);
      os_unfair_lock_opaque = DerivedStorage[114]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(DerivedStorage + 96);
      captureSession_cancelPrewarming(v2, 0);
      v6 = os_unfair_lock_opaque != 2;
      goto LABEL_15;
    }
  }

  else
  {
    v3 = byte_1ED844950;
    os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
  }

  if (dword_1ED844050)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (([a1 isEqualToString:{0x1F216ED50, v8, v9}] & 1) != 0 || objc_msgSend(a1, "isEqualToString:", 0x1F2185310))
  {
    os_unfair_lock_lock(&sLockScreenCameraLaunchTelemetry);
    if (byte_1EB58EC04 == 1)
    {
      captureSession_reportCancelledLockScreenCameraLaunch();
    }

    os_unfair_lock_unlock(&sLockScreenCameraLaunchTelemetry);
    os_unfair_lock_lock(&sFigCaptureSessionCameraAppStartupTelemetry);
    captureSession_abandonCameraAppSessionStartupTelemetry();
    os_unfair_lock_unlock(&sFigCaptureSessionCameraAppStartupTelemetry);
  }

  v6 = 1;
LABEL_15:
  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  captureSession_cancelMemoryPoolPrewarmingLocked(0, v3 == 0 && v6);
  os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
}

void captureSession_primeMemoryPoolPrewarmTimer()
{
  os_unfair_lock_assert_owner(&sFigCaptureSessionPrewarming);
  v0 = *&dword_1ED844928;
  if (*&dword_1ED844928 <= 0.0)
  {
    dword_1ED844928 = 1077936128;
    v0 = 3.0;
  }

  if (qword_1ED844918)
  {
    if (dword_1ED844050)
    {
      v9 = 0;
      v8 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    captureSession_cancelMemoryPoolPrewarmingTimeoutTimer();
  }

  else if (dword_1ED844050)
  {
    v9 = 0;
    v8 = 0;
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = qword_1ED844920;
  if (!qword_1ED844920)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v3 = dispatch_queue_create("com.apple.coremedia.capturesession.memoryPoolTimeout", v4);
    qword_1ED844920 = v3;
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
  v6 = dispatch_time(0, (v0 * 1000000000.0));
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, (v0 * 0.1 * 1000000000.0));
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __captureSession_primeMemoryPoolPrewarmTimer_block_invoke;
  handler[3] = &unk_1E798F870;
  handler[4] = v5;
  dispatch_source_set_event_handler(v5, handler);
  qword_1ED844918 = v5;
  dispatch_activate(v5);
}

void captureSession_cancelPrewarming(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v5 = DerivedStorage;
    os_unfair_lock_lock((DerivedStorage + 384));
    if (!a2 || *(v5 + 640) == a2)
    {
      if (dword_1ED844050)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(v5 + 397) == 1)
      {
        *(v5 + 397) = 0;
        *(v5 + 616) = 0;
        captureSession_updateRunningCondition(a1, 0, 0);
      }

      captureSession_cancelPrewarmingTimeoutTimer();
    }

    else if (dword_1ED844050)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    os_unfair_lock_unlock((v5 + 384));
  }
}

void __captureSession_performBlockOnWorkerQueueSynchronously_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __captureSession_updateSessionStateWithNewInputCondition_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = captureSession_notificationPayloadWithErrorStatus(v1, *(a1 + 40));

  captureSession_postNotificationWithPayload(v1, @"DidStopRunning", v2);
}

void captureSession_resumeTrueVideoVISProcessingForSemaphore(uint64_t a1, NSObject *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 868));
  v4 = *(DerivedStorage + 856);
  if (v4 && (!a2 || v4 == a2))
  {
    if (*(DerivedStorage + 864) == 1)
    {
      if (dword_1ED844050)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 = *(DerivedStorage + 856);
      }

      dispatch_semaphore_signal(v4);
    }

    else if (dword_1ED844050)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 856) = 0;
  }

  os_unfair_lock_unlock((DerivedStorage + 868));
}

void captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(const void *a1, uint64_t a2, uint64_t a3, float a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v9 = DerivedStorage;
    if (a4 <= 0.0)
    {
      v10 = 0;
      if (!a1)
      {
LABEL_7:
        v11 = *(v9 + 136);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter_block_invoke;
        v12[3] = &unk_1E79912B0;
        v12[4] = a3;
        v12[5] = v9;
        v12[6] = a2;
        v12[7] = a1;
        dispatch_after(v10, v11, v12);
        return;
      }
    }

    else
    {
      v10 = dispatch_time(0, (a4 * 1000000000.0));
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    CFRetain(a1);
    goto LABEL_7;
  }
}

void __captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  captureSession_isGraphCalloutCancelled(a1[5], a1[6]);
  (*(a1[4] + 16))();
  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

BOOL captureSession_isGraphCalloutCancelled(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 384));
  v4 = *(a1 + 456);
  os_unfair_lock_unlock((a1 + 384));
  if (v4)
  {
    v5 = v4 == 3;
  }

  else
  {
    v5 = 1;
  }

  return v5 || *(a1 + 760) != a2 || *(a1 + 752) == 0;
}

void captureSession_fileStartRecording(const void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v147[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [a3 outputURL];
  IsFileOnExternalStorageDevice = FigFileIsFileOnExternalStorageDevice();
  if (_FigIsCurrentDispatchQueue())
  {
    if (!IsFileOnExternalStorageDevice)
    {
      goto LABEL_10;
    }

LABEL_3:
    v12 = *(DerivedStorage + 928);
    if (v12)
    {
    }

    v13 = *(DerivedStorage + 936);
    if (v13)
    {
    }

    *(DerivedStorage + 928) = a3;
    *(DerivedStorage + 936) = a2;
    *(DerivedStorage + 944) = 0;
    v147[0] = FigExternalStorageDeviceManagerCreate(*MEMORY[0x1E695E480], 0, (DerivedStorage + 920));
    if (v147[0])
    {
      captureSession_fileStartRecording_cold_2();
    }

    else
    {
      v14 = *(DerivedStorage + 920);
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v15)
      {
        v147[0] = v15(v14, 0, a1, captureSession_externalStorageDeviceManagerCallback);
        if (!v147[0])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v147[0] = -12782;
      }

      captureSession_fileStartRecording_cold_3();
    }

    v16 = 0;
    goto LABEL_70;
  }

  captureSession_fileStartRecording_cold_1();
  if (IsFileOnExternalStorageDevice)
  {
    goto LABEL_3;
  }

LABEL_10:
  if (captureSession_isPrewarming())
  {
    captureSession_fileStartRecording_cold_8();
LABEL_156:
    v16 = 0;
LABEL_157:
    if (!*lhs)
    {
      return;
    }

    goto LABEL_71;
  }

  if ((*(DerivedStorage + 768) & 1) == 0)
  {
    captureSession_fileStartRecording_cold_4();
    goto LABEL_156;
  }

  v16 = [*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:a2];
  v17 = [*(DerivedStorage + 784) cameraSourcePipelineWithSourceID:-[FigCaptureMovieFileSinkPipeline videoSourceID](v16)];
  if ([*(DerivedStorage + 752) resumesConnectionsAsNodesArePrepared] && (a4 || -[FigCaptureCameraSourcePipeline trueVideoCaptureEnabled](v17)))
  {
    *(DerivedStorage + 772) = 1;
    captureSession_startDeferredGraphSetup(a1);
  }

  else
  {
    captureSession_waitForGraphToStart(a1, 0);
  }

  if ((captureSession_checkClientIsAllowedToWriteToOutputURLsInRecordingSettings(a1, a3) & 1) == 0)
  {
    v147[0] = -15432;
    goto LABEL_22;
  }

  if ([v16 checkIfFileAlreadyExistForMFO] && captureSession_checkIfOutputURLsInRecordingSettingsAlreadyExist(a3))
  {
    v147[0] = -16410;
LABEL_22:
    FigDebugAssert3();
    goto LABEL_70;
  }

  if (!v16)
  {
    v18 = [*(DerivedStorage + 784) audioFileSinkPipelineWithSinkID:a2];
    [*(DerivedStorage + 880) setObject:0 forKeyedSubscript:a2];
    [*(DerivedStorage + 888) setObject:0 forKeyedSubscript:a2];
    v19 = [(FigCaptureAudioFileSinkPipeline *)v18 fileCoordinatorNode];
    v127 = 0;
    v134 = 0;
    if (v19)
    {
      goto LABEL_25;
    }

    goto LABEL_143;
  }

  [*(DerivedStorage + 880) setObject:0 forKeyedSubscript:a2];
  [*(DerivedStorage + 888) setObject:0 forKeyedSubscript:a2];
  v129 = [(FigCaptureMovieFileSinkPipeline *)v16 fileCoordinatorNode];
  v127 = [(FigCaptureMovieFileSinkPipeline *)v16 videoCompressorNodes]!= 0;
  v90 = [(FigCaptureMovieFileSinkPipeline *)v16 videoSourceID];
  captureSession_setRestoreForcedOffOverCaptureActiveSlaveStreamEnabled(a1, v90, 0);
  if (!v17)
  {
    goto LABEL_141;
  }

  v91 = [objc_msgSend(a3 "videoSettings")];
  v92 = [v91 objectForKeyedSubscript:*MEMORY[0x1E6983858]];
  if (v92)
  {
    v93 = [v92 BOOLValue];
  }

  else
  {
    v93 = 1;
  }

  v102 = [(FigCaptureCameraSourcePipeline *)v17 captureSource];
  Attribute = FigCaptureSourceGetAttribute(v102, @"AVHEVCSettings", v147);
  if (v147[0])
  {
    captureSession_fileStartRecording_cold_5();
    goto LABEL_70;
  }

  if (([objc_msgSend(Attribute objectForKeyedSubscript:{@"MotionCompensatedTemporalFilteringSupported", "BOOLValue"}] & v93) == 1)
  {
    v117 = a5;
    v133 = a2;
    *lhs = 0;
    HasFullResolutionVideoOutput = cs_captureSourcePipelineHasFullResolutionVideoOutput(DerivedStorage, v16);
    v105 = [(FigCaptureMovieFileSinkPipeline *)v16 primaryMovieFileVideoCaptureConnectionConfiguration];
    v106 = [(FigCaptureCameraSourcePipeline *)v17 cameraConfiguration];
    LODWORD(v105) = FigCaptureSessionMotionCompensatedTemporalFilteringStatusForVideoCaptureConnectionConfiguration(v105, v106);
    v124 = v17;
    v107 = [(FigCaptureCameraSourcePipeline *)v17 cameraConfiguration];
    v122 = a4;
    v134 = FigCaptureSessionMotionCompensatedTemporalFilteringEnabled(a3, a4, Attribute, v107, HasFullResolutionVideoOutput ^ 1u, v105, lhs);
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v108 = [*(DerivedStorage + 784) cameraSourcePipelines];
    v109 = [v108 countByEnumeratingWithState:&v143 objects:v142 count:16];
    if (v109)
    {
      v110 = v109;
      v111 = *v144;
      v112 = *lhs;
      do
      {
        for (i = 0; i != v110; ++i)
        {
          if (*v144 != v111)
          {
            objc_enumerationMutation(v108);
          }

          v114 = *(*(&v143 + 1) + 8 * i);
          [-[FigCaptureCameraSourcePipeline captureDevice](v114) setTemporalNoiseReductionStrengthHighEnabled:v134 ^ 1u];
          [-[FigCaptureCameraSourcePipeline captureDevice](v114) setTemporalNoiseReductionBand0StrengthModulation:v112];
        }

        v110 = [v108 countByEnumeratingWithState:&v143 objects:v142 count:16];
      }

      while (v110);
    }

    a4 = v122;
    v17 = v124;
    a2 = v133;
    a5 = v117;
  }

  else
  {
LABEL_141:
    v134 = 0;
  }

  v19 = v129;
  if (!v129)
  {
LABEL_143:
    captureSession_fileStartRecording_cold_7();
    goto LABEL_157;
  }

LABEL_25:
  v128 = v19;
  v131 = 2;
  v132 = 0;
  if ([(FigCaptureMovieFileSinkPipeline *)v16 movieFileSinkNodes]&& [(FigCaptureMovieFileSinkPipeline *)v16 primaryCaptureDevice])
  {
    v20 = [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v16) maximumFrameRate];
    v131 = v21;
    v132 = v20;
  }

  v22 = [*(DerivedStorage + 784) cinematographyPipelineWithSourceID:{objc_msgSend(v17, "sourceID")}];
  if (v22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [(FigCaptureCinematographyPipeline *)v22 globalMetadata];
      MovieLevelMetadataWithCinematicVideoGlobalMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithCinematicVideoGlobalMetadata([a3 movieLevelMetadata], v23);
      [a3 setMovieLevelMetadata:MovieLevelMetadataWithCinematicVideoGlobalMetadata];
    }
  }

  if ([(FigCaptureMovieFileSinkPipeline *)v16 videoStabilizationStrength]>= 3)
  {
    v25 = [a3 movieLevelMetadata];
    v26 = [(FigCaptureMovieFileSinkPipeline *)v16 videoStabilizationStrength];
    MovieLevelMetadataWithActionCameraGlobalMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithActionCameraGlobalMetadata(v25, v26);
    [a3 setMovieLevelMetadata:MovieLevelMetadataWithActionCameraGlobalMetadata];
  }

  v130 = v22;
  CurrentSmartStyle = cs_getCurrentSmartStyle();
  if (!a4 && CurrentSmartStyle)
  {
    MovieLevelMetadataWithSmartStyleMetadata = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSmartStyleMetadata([a3 movieLevelMetadata], CurrentSmartStyle, 0);
    [a3 setMovieLevelMetadata:MovieLevelMetadataWithSmartStyleMetadata];
  }

  v30 = [(FigCaptureMovieFileSinkPipeline *)v16 videoCompressorNodes];
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = -[FigCaptureMicSourcePipeline sourceNode]([*(DerivedStorage + 784) micSourcePipeline]);
      if (a3)
      {
        v32 = v31;
        if ([a3 audioSettings])
        {
          if (![v32 audioCaptureMode] && objc_msgSend(v32, "isAudioPlayingToBuiltinSpeaker"))
          {
            v33 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a3, "audioSettings")}];
            *lhs = xmmword_1AD055F74;
            *&lhs[16] = *algn_1AD055F84;
            [v33 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", lhs, 32), 0x1F2175610}];
            [v33 setObject:&unk_1F2244CE0 forKeyedSubscript:0x1F21754D0];
            [a3 setAudioSettings:v33];
          }
        }
      }

      v121 = a4;
      if ([-[FigCaptureMicSourcePipeline sourceNode](objc_msgSend(*(DerivedStorage + 784) "micSourcePipeline"))])
      {
        [a3 setAudioWasPlayingDuringCapture:cs_isOtherAppExcludingWhitelistedAppsPlayingAudio(0)];
      }

      v123 = v17;
      v116 = a5;
      [a3 setAudioMixWithOthersEnabled:{objc_msgSend(-[FigCaptureMicSourcePipeline sourceNode](objc_msgSend(*(DerivedStorage + 784), "micSourcePipeline")), "mixWithOthersEnabled")}];
      v34 = *(DerivedStorage + 288);
      if (FigCapturePixelFormatIsPackedBayerRaw([objc_msgSend(objc_msgSend(objc_msgSend(v30 "firstObject")]))
      {
        v35 = 0;
      }

      else
      {
        v35 = [objc_msgSend(objc_msgSend(objc_msgSend(v30 "firstObject")];
      }

      v36 = v130;
      IsHDR = BWColorSpacePropertiesIsHDR(v35);
      if ([a3 isIrisMovieRecording])
      {
        v48 = *MEMORY[0x1E695F058];
        v49 = *(MEMORY[0x1E695F058] + 8);
        v51 = *(MEMORY[0x1E695F058] + 16);
        v50 = *(MEMORY[0x1E695F058] + 24);
      }

      else
      {
        v48 = [(FigCaptureMovieFileSinkPipeline *)v16 irisVISCleanOutputRectForCLAP];
        v49 = v52;
        v51 = v53;
        v50 = v54;
      }

      if ([a3 isIrisRecording])
      {
        allocator = [a3 isIrisMovieRecording] ^ 1;
      }

      else
      {
        allocator = 0;
      }

      if ([(FigCaptureMovieFileSinkPipeline *)v16 smartStyleReversibilityEnabled])
      {
        v55 = [objc_msgSend(v121 "settings")];
      }

      else
      {
        v55 = 0;
      }

      v56 = [a3 videoSettings];
      if (v35 || v34 || (v55 & 1) != 0 || (v30 = v56, v148.origin.x = v48, v148.origin.y = v49, v148.size.width = v51, v148.size.height = v50, allocator & 1 | !CGRectIsEmpty(v148) | IsHDR))
      {
        v115 = v55;
        v57 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a3, "videoSettings")}];
        v125 = v57;
        if (v34)
        {
          v58 = [v57 objectForKeyedSubscript:@"AVVideoEncoderSpecificationKey"];
          v59 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v58];
          [v59 setObject:v34 forKeyedSubscript:*MEMORY[0x1E6984260]];
          [v125 setObject:v59 forKeyedSubscript:@"AVVideoEncoderSpecificationKey"];
        }

        if (v35 || (v149.origin.x = v48, v149.origin.y = v49, v149.size.width = v51, v149.size.height = v50, allocator & 1 | !CGRectIsEmpty(v149) | IsHDR))
        {
          v60 = [v125 objectForKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
          v61 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v60];
          if (v35)
          {
            [v61 setValuesForKeysWithDictionary:{+[BWVideoFormat compressionPropertiesForColorSpaceProperties:](BWVideoFormat, "compressionPropertiesForColorSpaceProperties:", v35)}];
          }

          if (IsHDR)
          {
            [v61 setObject:*MEMORY[0x1E6983CB0] forKeyedSubscript:*MEMORY[0x1E6983670]];
          }

          v150.origin.x = v48;
          v150.origin.y = v49;
          v150.size.width = v51;
          v150.size.height = v50;
          if (!CGRectIsEmpty(v150))
          {
            v139[0] = *MEMORY[0x1E6965D80];
            v140[0] = [MEMORY[0x1E696AD98] numberWithInt:v51];
            v139[1] = *MEMORY[0x1E6965D60];
            v62 = [MEMORY[0x1E696AD98] numberWithInt:v50];
            v63 = *MEMORY[0x1E6965D68];
            v140[1] = v62;
            v140[2] = &unk_1F2244CB0;
            v64 = *MEMORY[0x1E6965D78];
            v139[2] = v63;
            v139[3] = v64;
            v140[3] = &unk_1F2244CB0;
            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:4];
            [v61 setObject:v65 forKeyedSubscript:*MEMORY[0x1E69835A0]];
          }

          if (allocator)
          {
            [v61 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6983520]];
          }

          if (v134)
          {
            v66 = MEMORY[0x1E695E118];
            v67 = v61;
          }

          else
          {
            v67 = v61;
            v66 = 0;
          }

          [v67 setObject:v66 forKeyedSubscript:*MEMORY[0x1E6983858]];
          [v125 setObject:v61 forKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
        }

        v68 = [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v16) aspectRatio];
        if (v68)
        {
          v69 = v68;
          v70 = [objc_msgSend(v125 objectForKeyedSubscript:{@"AVVideoWidthKey", "intValue"}];
          v71 = [objc_msgSend(v125 objectForKeyedSubscript:{@"AVVideoHeightKey", "intValue"}];
          if (v70 >= 1 && v71 >= 1)
          {
            v72 = v70 | (v71 << 32);
            v73 = FigCaptureAspectRatioForDimensions(v72);
            if (FigCaptureGetAspectRatioFromFractionalAspectRatio(v73) != v69)
            {
              v74 = FigCaptureConvertDimensionsForAspectRatio(v72, v69);
              v75 = HIDWORD(v74);
              [v125 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v74), @"AVVideoWidthKey"}];
              [v125 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v75), @"AVVideoHeightKey"}];
            }
          }
        }

        v76 = v123;
        v30 = v125;
        if (v115)
        {
          v77 = *MEMORY[0x1E695E480];
          allocatora = *MEMORY[0x1E695E480];
          v78 = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v125, 1uLL);
          v79 = [v78 objectForKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
          [v79 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6983518]];
          cs_applyCompressionPropertiesOverridesForSmartStyleReversibility(v125, 0);
          DeepCopy = CFPropertyListCreateDeepCopy(v77, v78, 1uLL);
          v81 = *MEMORY[0x1E6983FB0];
          v82 = [DeepCopy objectForKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
          v83 = *MEMORY[0x1E69837D0];
          v135 = *MEMORY[0x1E69837D0];
          [v82 setObject:v81 forKeyedSubscript:*MEMORY[0x1E69837D0]];
          cs_applyCompressionPropertiesOverridesForSmartStyleReversibility(DeepCopy, @"SmartStyleMasksSettings");
          [v125 setObject:DeepCopy forKeyedSubscript:0x1F21A9870];

          v84 = CFPropertyListCreateDeepCopy(allocatora, v78, 1uLL);
          v85 = *MEMORY[0x1E6983F78];
          [objc_msgSend(v84 objectForKeyedSubscript:{@"AVVideoCompressionPropertiesKey", "setObject:forKeyedSubscript:", *MEMORY[0x1E6983F78], v83}];
          cs_applyCompressionPropertiesOverridesForSmartStyleReversibility(v84, @"SmartStyleLinearThumbnailSettings");
          [v125 setObject:v84 forKeyedSubscript:0x1F21A9890];

          v86 = CFPropertyListCreateDeepCopy(allocatora, v78, 1uLL);
          cs_applyCompressionPropertiesOverridesForSmartStyleReversibility(v86, @"SmartStyleDeltaMapSettings");
          [objc_msgSend(v86 objectForKeyedSubscript:{@"AVVideoCompressionPropertiesKey", "setObject:forKeyedSubscript:", v85, v135}];
          v87 = *MEMORY[0x1E6965F60];
          v88 = [v86 objectForKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
          [v88 setObject:v87 forKeyedSubscript:*MEMORY[0x1E6983878]];
          memset(lhs, 0, 24);
          v89 = [-[FigCaptureMovieFileSinkPipeline primaryMovieFileVideoCaptureConnectionConfiguration](v16) irisSinkConfiguration];
          if (v89)
          {
            [v89 irisMovieDuration];
          }

          else
          {
            memset(lhs, 0, 24);
          }

          memset(&rhs, 0, sizeof(rhs));
          v94 = [-[FigCaptureMovieFileSinkPipeline primaryMovieFileVideoCaptureConnectionConfiguration](v16) irisSinkConfiguration];
          v76 = v123;
          if (v94)
          {
            [v94 irisMovieVideoFrameDuration];
          }

          else
          {
            memset(&rhs, 0, sizeof(rhs));
          }

          if (lhs[12] & 1) != 0 && (rhs.flags)
          {
            time = *lhs;
            Seconds = CMTimeGetSeconds(&time);
            time = rhs;
            LODWORD(v95) = vcvtpd_u64_f64(Seconds / CMTimeGetSeconds(&time));
          }

          else
          {
            v95 = 90;
          }

          v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v95];
          v98 = [v86 objectForKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
          [v98 setObject:v97 forKeyedSubscript:*MEMORY[0x1E6983820]];
          v30 = v125;
          [v125 setObject:v86 forKeyedSubscript:0x1F21A98B0];
        }

        v36 = v130;
        if (v130 | [(FigCaptureCameraSourcePipeline *)v76 captureSourceDepthDataFormat])
        {
          v99 = [-[FigCaptureCameraSourcePipeline captureSourceDepthDataFormat](v76) dimensions];
          if (v130)
          {
            v99 = [(FigCaptureCinematographyPipeline *)v130 depthOutputDimensions];
          }

          [v30 setObject:captureSession_defaultDepthRecordingSettings(v34 forKeyedSubscript:{v99), 0x1F21A9850}];
        }
      }

      if ([-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v16) isBravoVariant])
      {
        a5 = v116;
        a4 = v121;
        if ([a3 isIrisRecording] && !objc_msgSend(a3, "isIrisMovieRecording"))
        {
          v17 = v123;
        }

        else
        {
          v126 = v30;
          memset(lhs, 0, 20);
          v17 = v123;
          if (a3)
          {
            [a3 bravoCameraSelectionConfigurationForRecording];
            v100 = *&lhs[4];
            v101 = *&lhs[12];
          }

          else
          {
            v101 = 0;
            v100 = 0;
          }

          [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v16) setBravoStreamSelectionConfigurationForRecording:{v100, v101}];
          [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v16) setBravoStreamSelectionConfigurationForRecordingEnabled:lhs[0]];
          v36 = v130;
          v30 = v126;
        }
      }

      else
      {
        a5 = v116;
        a4 = v121;
        v17 = v123;
      }

      goto LABEL_49;
    }

    v30 = 0;
  }

  v36 = v130;
LABEL_49:
  v136 = **&MEMORY[0x1E6960C70];
  if (v36)
  {
    v37 = [(FigCaptureMovieFileSinkPipeline *)v16 primaryCaptureDevice];
    if (v37)
    {
      [v37 mostRecentPTS];
    }

    else
    {
      memset(lhs, 0, 24);
    }

    v38 = [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v16) minimumFrameRate];
    v40 = FigCaptureFrameRateAsFloat(v38, v39);
    CMTimeMakeWithSeconds(&rhs, 1.0 / v40, 1000000000);
    CMTimeAdd(&v136, lhs, &rhs);
  }

  [(FigCaptureCameraSourcePipeline *)v17 startIncrementalPrefetchingOfSourcePoolsIfNecessary];
  *lhs = *a5;
  *&lhs[16] = *(a5 + 16);
  rhs = v136;
  v41 = [v128 startRecordingWithSettings:a3 videoSettings:v30 maxFrameRate:v132 stopAtPTS:v131 startAfterPTS:{lhs, &rhs}];
  v147[0] = v41;
  if (v41)
  {
    captureSession_fileStartRecording_cold_6(v41, v147, v16, lhs);
    v16 = *lhs;
  }

  else
  {
    if (([-[FigCaptureCameraSourcePipeline captureDevice](v17) captureInitiatedOnce] & 1) == 0)
    {
      [-[FigCaptureCameraSourcePipeline captureDevice](v17) setCaptureInitiatedOnce:1];
    }

    [-[FigCaptureCameraSourcePipeline captureDevice](v17) setFrameSkippingWhenNotRecordingEnabled:0];
    if ([(FigCaptureMovieFileSinkPipeline *)v16 overCaptureEnabled])
    {
      objc_opt_class();
      v42 = (objc_opt_isKindOfClass() & 1) != 0 && [a3 spatialOverCaptureMovieURL] != 0;
      [(FigCaptureMovieFileSinkPipeline *)v16 setOverCaptureTailPipelineRenderingEnabled:v42];
    }

    os_unfair_lock_lock((DerivedStorage + 384));
    v43 = *(DerivedStorage + 401);
    os_unfair_lock_unlock((DerivedStorage + 384));
    [v16 setRecording:1];
    [v16 setRecordedWhileMultitasking:v43];
    if (v127 && [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v16) autoImageControlMode] == 1)
    {
      v44 = [a4 isMomentCaptureMovieRecording];
      if (!a4 && (v44 & 1) == 0)
      {
        [-[FigCaptureMovieFileSinkPipeline primaryCaptureDevice](v16) setAutoImageControlMode:2];
      }
    }
  }

LABEL_70:
  if (!v147[0])
  {
    return;
  }

LABEL_71:
  if (a4)
  {
    v45 = [v16 sinkID];
    captureSession_postNotificationsForIrisRequestCompletedWithError(a1, v45, a4, v147[0]);
  }

  else
  {
    v46 = [a3 settingsID];
    v47 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(a2, v46, v147[0]);
    captureSession_postNotificationWithPayload(a1, @"DidStopRecording", v47);
  }
}

uint64_t captureSession_isPrewarming()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  v1 = *(DerivedStorage + 397);
  os_unfair_lock_unlock((DerivedStorage + 384));
  return v1;
}

uint64_t captureSession_startDeferredGraphSetup(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_startDeferredGraphSetup_cold_1();
  }

  v3 = *(DerivedStorage + 752);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __captureSession_startDeferredGraphSetup_block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = a1;
  return [v3 notifyWhenNonDeferredSourceNodesHaveStarted:v5];
}

NSObject *captureSession_waitForGraphToStart(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = _FigIsCurrentDispatchQueue();
  if (!result)
  {
    result = captureSession_waitForGraphToStart_cold_1();
  }

  if (dword_1ED844050)
  {
    v22 = 0;
    v21 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((*(DerivedStorage + 769) & 1) == 0)
  {
    if (!a2)
    {
      captureSession_startDeferredGraphSetupWork(a1);
      return [*(DerivedStorage + 752) waitForStartOrCommitToComplete];
    }

    if (*(DerivedStorage + 771))
    {
      if (dword_1ED844050)
      {
        v22 = 0;
        v21 = OS_LOG_TYPE_DEFAULT;
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v8 = v22;
        if (os_log_type_enabled(v7, v21))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFE;
        }

        if (v9)
        {
          v10 = *(DerivedStorage + 104);
          v17 = 136315394;
          v18 = "captureSession_waitForGraphToStart";
          v19 = 2114;
          v20 = v10;
          LODWORD(v16) = 22;
          v15 = &v17;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else if ((*(DerivedStorage + 772) & 1) == 0)
    {
      [*(DerivedStorage + 752) cancelDeferredSourceNodeStart];
      [*(DerivedStorage + 752) cancelDeferredNodePrepare];
LABEL_27:
      [*(DerivedStorage + 752) waitForStartOrCommitToComplete];
      result = *(DerivedStorage + 176);
      if (result)
      {
        return dispatch_group_wait(result, 0xFFFFFFFFFFFFFFFFLL);
      }

      return result;
    }

    if (*(DerivedStorage + 772) == 1 && dword_1ED844050)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = v22;
      if (os_log_type_enabled(v11, v21))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = *(DerivedStorage + 104);
        v17 = 136315394;
        v18 = "captureSession_waitForGraphToStart";
        v19 = 2114;
        v20 = v14;
        LODWORD(v16) = 22;
        v15 = &v17;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    captureSession_startDeferredGraphSetupWork(a1);
    goto LABEL_27;
  }

  return result;
}

uint64_t captureSession_checkClientIsAllowedToWriteToOutputURLsInRecordingSettings(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([a2 outputURL])
  {
    [v3 addObject:{objc_msgSend(a2, "outputURL")}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 spatialOverCaptureMovieURL])
  {
    [v3 addObject:{objc_msgSend(a2, "spatialOverCaptureMovieURL")}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = *v13;
LABEL_8:
  v7 = 0;
  while (1)
  {
    if (*v13 != v6)
    {
      objc_enumerationMutation(v3);
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = *(DerivedStorage + 36);
    v16 = *(DerivedStorage + 20);
    v17 = v9;
    result = FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken();
    if (!result)
    {
      return result;
    }

    if (v5 == ++v7)
    {
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v5)
      {
        goto LABEL_8;
      }

      return 1;
    }
  }
}

uint64_t captureSession_checkIfOutputURLsInRecordingSettingsAlreadyExist(void *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  if ([a1 outputURL])
  {
    [v2 addObject:{objc_msgSend(a1, "outputURL")}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 spatialOverCaptureMovieURL])
  {
    [v2 addObject:{objc_msgSend(a1, "spatialOverCaptureMovieURL")}];
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (FigFileDoesFileExist())
        {
          return 1;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t cs_captureSourcePipelineHasFullResolutionVideoOutput(uint64_t a1, uint64_t a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*(a1 + 784) videoDataSinkPipelines];
  result = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(FigCaptureVideoDataSinkPipeline *)v8 sourceID];
        if ([v9 isEqualToString:-[FigCaptureMovieFileSinkPipeline videoSourceID](a2)] && !-[FigCaptureVideoDataSinkPipeline optimizedForPreview](v8))
        {
          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v11 objects:v10 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t cs_getCurrentSmartStyle()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ([objc_msgSend(*(DerivedStorage + 784) "cinematographyPipelines")])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v1 = [*(DerivedStorage + 784) cinematographyPipelines];
    result = [v1 countByEnumeratingWithState:&v18 objects:v17 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v19;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v19 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = *(*(&v18 + 1) + 8 * i);
          if ([(FigCaptureCinematographyPipeline *)v6 getSmartStyle])
          {
            return [(FigCaptureCinematographyPipeline *)v6 getSmartStyle];
          }
        }

        v3 = [v1 countByEnumeratingWithState:&v18 objects:v17 count:16];
        result = 0;
        if (v3)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    result = [objc_msgSend(*(DerivedStorage + 784) "cameraSourcePipelines")];
    if (result)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = [*(DerivedStorage + 784) cameraSourcePipelines];
      result = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (result)
      {
        v8 = result;
        v9 = *v14;
        while (2)
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v13 + 1) + 8 * j);
            if ([(FigCaptureCameraSourcePipeline *)v11 getSmartStyle])
            {
              return [(FigCaptureCameraSourcePipeline *)v11 getSmartStyle];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
          result = 0;
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

BOOL cs_isOtherAppExcludingWhitelistedAppsPlayingAudio(_DWORD *a1)
{
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEB08]];
  if (![v3 count])
  {
    return 0;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69AEB20];
  while (1)
  {
    v6 = [objc_msgSend(objc_msgSend(v3 objectAtIndexedSubscript:{v4), "objectForKey:", *v5), "integerValue"}];
    v11 = 0;
    v7 = [MEMORY[0x1E69C75D0] handleForIdentifier:objc_msgSend(MEMORY[0x1E696AD98] error:{"numberWithInt:", v6), &v11}];
    v8 = v11 == 0;
    if (v11)
    {
      break;
    }

    v9 = [objc_msgSend(v7 "bundle")];
    if ((FigCaptureClientApplicationIDIsCameraOrDerivative(v9) & 1) == 0 && (FigCaptureClientApplicationIDIsVoiceOver(v9) & 1) == 0)
    {
      if (a1)
      {
        *a1 = v6;
      }

      return v8;
    }

    if ([v3 count] <= ++v4)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t cs_applyCompressionPropertiesOverridesForSmartStyleReversibility(void *a1, void *a2)
{
  if (cs_applyCompressionPropertiesOverridesForSmartStyleReversibility_onceToken == -1)
  {
    if (!a2)
    {
LABEL_4:
      v4 = cs_applyCompressionPropertiesOverridesForSmartStyleReversibility_compressionPropertiesOverridesForFullResTracks;
      goto LABEL_9;
    }
  }

  else
  {
    cs_applyCompressionPropertiesOverridesForSmartStyleReversibility_cold_1();
    if (!a2)
    {
      goto LABEL_4;
    }
  }

  if ([a2 isEqualToString:0x1F21A98B0])
  {
    goto LABEL_4;
  }

  if (([a2 isEqualToString:0x1F21A9870] & 1) != 0 || objc_msgSend(a2, "isEqualToString:", 0x1F21A9890))
  {
    v4 = cs_applyCompressionPropertiesOverridesForSmartStyleReversibility_compressionPropertiesOverridesForLowResTracks;
  }

  else
  {
    v4 = 0;
  }

LABEL_9:
  result = [v4 count];
  if (result)
  {
    v6 = [a1 objectForKeyedSubscript:@"AVVideoCompressionPropertiesKey"];

    return [v6 setValuesForKeysWithDictionary:v4];
  }

  return result;
}

void *captureSession_defaultDepthRecordingSettings(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  v5 = HIDWORD(a2) * a2;
  v6 = 4;
  v7 = &unk_1AD055FC0;
  while (1)
  {
    v8 = (&unk_1AD055F94 + 8 * v6);
    v9 = *v8;
    if (v5 >= *v8)
    {
      break;
    }

    --v6;
    v7 -= 2;
    if (v6 == -1)
    {
      v10 = 0;
      goto LABEL_6;
    }
  }

  v11 = v8[1];
  v12 = (*v7 - v11) / (*(v7 - 1) - v9);
  v10 = ((v11 - (v12 * v9)) + (v12 * v5));
LABEL_6:
  v13 = *MEMORY[0x1E6983518];
  v14 = MEMORY[0x1E695E118];
  v37[0] = MEMORY[0x1E695E118];
  v15 = *MEMORY[0x1E6983558];
  v36[0] = v13;
  v36[1] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  v17 = *MEMORY[0x1E6983638];
  v37[1] = v16;
  v37[2] = &unk_1F2244D10;
  v18 = *MEMORY[0x1E69837F0];
  v36[2] = v17;
  v36[3] = v18;
  v19 = *MEMORY[0x1E6983570];
  v37[3] = v14;
  v37[4] = &unk_1F2244D10;
  v20 = *MEMORY[0x1E6983520];
  v36[4] = v19;
  v36[5] = v20;
  v21 = *MEMORY[0x1E6983728];
  v37[5] = v14;
  v37[6] = v14;
  v22 = *MEMORY[0x1E6983810];
  v36[6] = v21;
  v36[7] = v22;
  v23 = *MEMORY[0x1E6983710];
  v37[7] = v14;
  v37[8] = &unk_1F2244D28;
  v24 = *MEMORY[0x1E69836F0];
  v36[8] = v23;
  v36[9] = v24;
  v25 = *MEMORY[0x1E69837D0];
  v26 = *MEMORY[0x1E6983FA8];
  v37[9] = &unk_1F2244D40;
  v37[10] = v26;
  v27 = *MEMORY[0x1E69837C8];
  v36[10] = v25;
  v36[11] = v27;
  v37[11] = &unk_1F2244D58;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:12];
  v29 = MEMORY[0x1E695DF90];
  v34[0] = @"AVVideoCompressionPropertiesKey";
  v34[1] = @"AVVideoCodecKey";
  v35[0] = v28;
  v35[1] = @"dish";
  v34[2] = @"AVVideoWidthKey";
  v35[2] = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v34[3] = @"AVVideoHeightKey";
  v34[4] = @"AVVideoScalingModeKey";
  v35[3] = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v35[4] = @"AVVideoScalingModeResize";
  v30 = [v29 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v35, v34, 5)}];
  if (a1)
  {
    v32 = *MEMORY[0x1E6984260];
    v33 = a1;
    [v30 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v33, &v32, 1), @"AVVideoEncoderSpecificationKey"}];
  }

  return v30;
}

void __captureSession_externalStorageDeviceManagerCallback_block_invoke(uint64_t a1)
{
  v17 = 0;
  v2 = *(a1 + 32);
  if (v2 && CFArrayGetCount(v2))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      v7 = *MEMORY[0x1E695E480];
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (v17)
          {
            CFRelease(v17);
            v17 = 0;
          }

          v10 = *(*(a1 + 48) + 920);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v11 || v11(v10, v9, @"Device_BaseURL", v7, &v17))
          {
            __captureSession_externalStorageDeviceManagerCallback_block_invoke_cold_1();
            goto LABEL_17;
          }

          if ([objc_msgSend(objc_msgSend(*(*(a1 + 48) + 928) "outputURL")])
          {
            goto LABEL_17;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    captureSession_throwErrorForSSDDisconnected(*(a1 + 40));
  }

  else
  {
    captureSession_throwErrorForSSDDisconnected(*(a1 + 40));
    *(*(a1 + 48) + 944) = 0;
  }

LABEL_17:
  if (v17)
  {
    CFRelease(v17);
  }
}

void captureSession_throwErrorForSSDDisconnected(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = cs_notificationPayloadWithSectionIDAndSettingsIDAndErrorStatus(*(DerivedStorage + 936), [*(DerivedStorage + 928) settingsID], 4294954513);

  captureSession_postNotificationWithPayload(a1, @"DidStopRecording", v3);
}

void __captureSession_startDeferredGraphSetup_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __captureSession_startDeferredGraphSetup_block_invoke_2;
  v3[3] = &__block_descriptor_40_e8_v12__0B8l;
  v3[4] = v1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSession_dispatchGraphCalloutWithGraphIDToWorkerQueueAfter(v1, *(DerivedStorage + 760), v3, 0.0);
}

uint64_t __captureSession_startDeferredGraphSetup_block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return captureSession_startDeferredGraphSetupWork(*(result + 32));
  }

  return result;
}

uint64_t captureSession_startDeferredGraphSetupWork(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = _FigIsCurrentDispatchQueue();
  if (!result)
  {
    result = captureSession_startDeferredGraphSetupWork_cold_1();
  }

  if (dword_1ED844050)
  {
    v53 = 0;
    v52 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ((*(DerivedStorage + 770) & 1) == 0)
  {
    *(DerivedStorage + 770) = 1;
    os_unfair_lock_lock((DerivedStorage + 384));

    *(DerivedStorage + 608) = 0;
    os_unfair_lock_unlock((DerivedStorage + 384));
    captureSession_postNotificationWithPayload(a1, @"WillRunDeferredStart", 0);
    if (([*(DerivedStorage + 88) isEqualToString:0x1F216ED50] & 1) != 0 || objc_msgSend(*(DerivedStorage + 88), "isEqualToString:", 0x1F2185310))
    {
      os_unfair_lock_lock(&sLockScreenCameraLaunchTelemetry);
      if (byte_1EB58EC04 == 1)
      {
        os_unfair_lock_assert_owner(&sLockScreenCameraLaunchTelemetry);
        v5 = word_1EB58EC10;
        v6 = dword_1EB58EC14;
        v7 = HIBYTE(word_1EB58EC10);
        [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportLockScreenCameraLaunchCompletedWithPrewarming:"reportLockScreenCameraLaunchCompletedWithPrewarming:restartedSessionDueToError:" restartedSessionDueToError:word_1EB58EC10, dword_1EB58EC14];
        v8 = objc_alloc_init(BWCameraLockScreenLaunchAnalyticsPayload);
        [(BWCameraLockScreenLaunchAnalyticsPayload *)v8 setCompleted:1];
        [(BWCameraLockScreenLaunchAnalyticsPayload *)v8 setPrewarmed:v5];
        [(BWCameraLockScreenLaunchAnalyticsPayload *)v8 setIspStreamingStarted:v7];
        [(BWCameraLockScreenLaunchAnalyticsPayload *)v8 setLaunchError:v6];
        [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v8];

        os_unfair_lock_assert_owner(&sLockScreenCameraLaunchTelemetry);
        byte_1EB58EC04 = 0;
        word_1EB58EC10 = 0;
        dword_1EB58EC14 = 0;
      }

      os_unfair_lock_unlock(&sLockScreenCameraLaunchTelemetry);
    }

    if ([*(DerivedStorage + 752) deferredNodePrepareEnabled])
    {
      [*(DerivedStorage + 752) startDeferredSourceNodesIfNeeded];
    }

    if (*(DerivedStorage + 112) == 1)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v9 = *(DerivedStorage + 776);
      v10 = [v9 countByEnumeratingWithState:&v48 objects:v47 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v49;
        do
        {
          v13 = 0;
          do
          {
            if (*v49 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(DerivedStorage + 776) objectForKeyedSubscript:*(*(&v48 + 1) + 8 * v13)];
            if (v14)
            {
              v15 = v14;
              v14 = v14[1];
              v16 = v15[2];
            }

            else
            {
              v16 = 0;
            }

            FigVideoCaptureSourceSetSessionProperty(v14, v16, @"ResumeAdjustingFocusNotifications_FigCaptureSessionOnly", 0);
            ++v13;
          }

          while (v11 != v13);
          v17 = [v9 countByEnumeratingWithState:&v48 objects:v47 count:16];
          v11 = v17;
        }

        while (v17);
      }
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = [*(DerivedStorage + 784) cameraSourcePipelines];
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [-[FigCaptureCameraSourcePipeline captureDevice](*(*(&v43 + 1) + 8 * i)) startupFaceDetectionIfNeeded];
        }

        v20 = [v18 countByEnumeratingWithState:&v43 objects:v42 count:16];
      }

      while (v20);
    }

    if (FigVideoCaptureSourcesNeedDeferredTimeOfFlightAFEnablement())
    {
      v23 = FigDispatchQueueCreateWithPriority();
      v24 = *(DerivedStorage + 760);
      v25 = *(DerivedStorage + 176);
      if (!v25)
      {
        v25 = dispatch_group_create();
        *(DerivedStorage + 176) = v25;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __captureSession_startDeferredGraphSetupWork_block_invoke;
      block[3] = &__block_descriptor_48_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = v24;
      dispatch_group_async(v25, v23, block);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    if ([*(DerivedStorage + 752) deferredNodePrepareEnabled])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v26 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorages];
      v27 = [v26 countByEnumeratingWithState:&v37 objects:v36 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v38;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [objc_msgSend(*(*(&v37 + 1) + 8 * j) "primaryStillImageSinkPipeline")];
          }

          v28 = [v26 countByEnumeratingWithState:&v37 objects:v36 count:16];
        }

        while (v28);
      }

      v31 = *(DerivedStorage + 752);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __captureSession_startDeferredGraphSetupWork_block_invoke_2;
      v35[3] = &__block_descriptor_40_e5_v8__0l;
      v35[4] = DerivedStorage;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __captureSession_startDeferredGraphSetupWork_block_invoke_3;
      v34[3] = &__block_descriptor_48_e5_v8__0l;
      v34[4] = a1;
      v34[5] = DerivedStorage;
      return [v31 startDeferredNodePrepareIfNeededWithDidPrepareCriticalPriorityNodesHandler:v35 completionHandler:v34];
    }

    else
    {
      return [*(DerivedStorage + 752) startDeferredSourceNodesIfNeeded];
    }
  }

  return result;
}

uint64_t __captureSession_startDeferredGraphSetupWork_block_invoke(uint64_t a1)
{
  result = captureSession_isGraphCalloutCancelled(*(a1 + 32), *(a1 + 40));
  if ((result & 1) == 0)
  {

    return FigVideoCaptureSourcesEnableTimeOfFlightAFIfSupported();
  }

  return result;
}

uint64_t __captureSession_startDeferredGraphSetupWork_block_invoke_2(uint64_t a1)
{
  if ([objc_msgSend(*(*(a1 + 32) + 784) "cinematographyPipelines")])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = [*(*(a1 + 32) + 784) cinematographyPipelines];
    result = [v2 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v18;
      do
      {
        v6 = 0;
        do
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [(FigCaptureCinematographyPipeline *)*(*(&v17 + 1) + 8 * v6++) loadInferenceNetworksForSmartStyle];
        }

        while (v4 != v6);
        result = [v2 countByEnumeratingWithState:&v17 objects:v16 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  else
  {
    result = [objc_msgSend(*(*(a1 + 32) + 784) "cameraSourcePipelines")];
    if (result)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [*(*(a1 + 32) + 784) cameraSourcePipelines];
      result = [v7 countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (result)
      {
        v8 = result;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [(FigCaptureCameraSourcePipeline *)*(*(&v12 + 1) + 8 * v10++) loadInferenceNetworkForSmartStyle];
          }

          while (v8 != v10);
          result = [v7 countByEnumeratingWithState:&v12 objects:v11 count:16];
          v8 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

uint64_t __cs_applyCompressionPropertiesOverridesForSmartStyleReversibility_block_invoke()
{
  cs_applyCompressionPropertiesOverridesForSmartStyleReversibility_compressionPropertiesOverridesForFullResTracks = objc_alloc_init(MEMORY[0x1E695DF90]);
  [cs_applyCompressionPropertiesOverridesForSmartStyleReversibility_compressionPropertiesOverridesForFullResTracks setObject:&unk_1F2244CF8 forKeyedSubscript:*MEMORY[0x1E69836F0]];
  cs_applyCompressionPropertiesOverridesForSmartStyleReversibility_compressionPropertiesOverridesForLowResTracks = objc_alloc_init(MEMORY[0x1E695DF90]);
  v0 = [MEMORY[0x1E695DFB0] null];
  v1 = cs_applyCompressionPropertiesOverridesForSmartStyleReversibility_compressionPropertiesOverridesForLowResTracks;
  v2 = *MEMORY[0x1E69835A0];

  return [v1 setObject:v0 forKeyedSubscript:v2];
}

void __captureSession_showRecordingVideoWhileMultitaskingDialogIfNecessary_block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 32), 0.0, &responseFlags);
  if (dword_1ED844050)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&sVideoRecordingWhileMultitaskingDialogLock);
  sVideoRecordingWhileMultitaskingDialogInFlight = 0;
  if (!responseFlags)
  {
    sVideoRecordingWhileMultitaskingDialogDisplayed = 1;
    CFPreferencesSetValue(@"VideoRecordingWhileMultitaskingDialogDisplayed", *MEMORY[0x1E695E4D0], @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  os_unfair_lock_unlock(&sVideoRecordingWhileMultitaskingDialogLock);
  CFRelease(*(a1 + 32));
}

uint64_t __cs_initializeVideoRecordingWhileMultitaskingStatics_block_invoke()
{
  sVideoRecordingWhileMultitaskingDialogLock = 0;
  result = CFPreferencesGetAppBooleanValue(@"VideoRecordingWhileMultitaskingDialogDisplayed", @"com.apple.cameracapture", 0);
  sVideoRecordingWhileMultitaskingDialogDisplayed = result != 0;
  return result;
}

unint64_t __captureSession_didCaptureIrisStill_block_invoke(unint64_t result, int a2)
{
  v2 = result;
  if (a2)
  {
    if (dword_1ED844050)
    {
      LODWORD(type[1].value) = 0;
      LOBYTE(type[0].value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return result;
  }

  if (*(result + 92))
  {
    rhs = *(result + 80);
    [*(result + 40) setBeginTrimMasterPTS:&rhs];
  }

  if (![objc_msgSend(*(v2 + 48) "pendingIrisRecordings")])
  {
LABEL_12:
    if (![*(v2 + 48) pendingIrisRecordings])
    {
      [*(v2 + 48) setPendingIrisRecordings:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
    }

    v7 = +[BWPendingIrisRecordingRequest irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:](BWPendingIrisRecordingRequest, "irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:", [*(v2 + 40) settings]);
    [(BWPendingIrisRecordingRequest *)v7 setIrisMovieInfo:*(v2 + 40)];
    [objc_msgSend(*(v2 + 48) "pendingIrisRecordings")];
    LODWORD(type[1].value) = 0;
    LOBYTE(type[0].value) = 0;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    goto LABEL_15;
  }

  v4 = 0;
  while (1)
  {
    v5 = [objc_msgSend(*(v2 + 48) "pendingIrisRecordings")];
    v6 = [objc_msgSend(v5 "settings")];
    if (v6 == [objc_msgSend(*(v2 + 40) "settings")])
    {
      break;
    }

LABEL_11:
    if ([objc_msgSend(*(v2 + 48) "pendingIrisRecordings")] <= ++v4)
    {
      goto LABEL_12;
    }
  }

  if (([v5 isEmpty] & 1) == 0)
  {
    [v5 isPairedRequestCreated];
    goto LABEL_11;
  }

  v9 = [objc_msgSend(*(v2 + 48) "pendingIrisRecordings")];
  [v9 setIrisMovieInfo:*(v2 + 40)];
  memset(&type[1], 0, sizeof(CMTime));
  if (v9)
  {
    [v9 momentCaptureMovieRecordingMasterEndTime];
  }

  if ([*(v2 + 40) isMomentCaptureMovieRecording] && (type[1].flags & 1) != 0)
  {
    memset(type, 0, 24);
    v10 = *(v2 + 40);
    if (v10)
    {
      [v10 stillImageCaptureTime];
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    lhs = type[1];
    CMTimeSubtract(type, &lhs, &rhs);
    memset(&v43, 0, sizeof(v43));
    CMTimeMake(&v43, 500, 1000);
    if ((type[0].flags & 1) == 0 || (rhs = type[0], lhs = v43, CMTimeCompare(&rhs, &lhs) < 0))
    {
      v11 = *(v2 + 40);
      if (v11)
      {
        [v11 stillImageCaptureTime];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      v42 = v43;
      CMTimeAdd(&rhs, &lhs, &v42);
      type[1] = rhs;
      if (dword_1ED844050)
      {
        LODWORD(v42.value) = 0;
        v41 = OS_LOG_TYPE_DEFAULT;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v42.value;
        if (os_log_type_enabled(v12, v41))
        {
          v14 = value;
        }

        else
        {
          v14 = value & 0xFFFFFFFE;
        }

        if (v14)
        {
          v15 = *(*(v2 + 64) + 104);
          rhs = type[1];
          Seconds = CMTimeGetSeconds(&rhs);
          v17 = [objc_msgSend(v9 "settings")];
          LODWORD(lhs.value) = 136315906;
          *(&lhs.value + 4) = "captureSession_didCaptureIrisStill_block_invoke";
          LOWORD(lhs.flags) = 2114;
          *(&lhs.flags + 2) = v15;
          HIWORD(lhs.epoch) = 2048;
          v38 = Seconds;
          v39 = 2048;
          v40[0] = v17;
          LODWORD(v36) = 42;
          p_lhs = &lhs;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    rhs = type[1];
    [*(v2 + 40) setMomentCaptureMovieRecordingMasterEndTime:{&rhs, p_lhs, v36, lhs.value, *&lhs.timescale, lhs.epoch}];
    if (dword_1ED844050)
    {
      LODWORD(v42.value) = 0;
      v41 = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = v42.value;
      if (os_log_type_enabled(v18, v41))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = *(*(v2 + 64) + 104);
        v22 = [objc_msgSend(v9 "settings")];
        rhs = type[1];
        v23 = CMTimeGetSeconds(&rhs);
        LODWORD(lhs.value) = 136315906;
        *(&lhs.value + 4) = "captureSession_didCaptureIrisStill_block_invoke";
        LOWORD(lhs.flags) = 2114;
        *(&lhs.flags + 2) = v21;
        HIWORD(lhs.epoch) = 2048;
        v38 = *&v22;
        v39 = 2048;
        *v40 = v23;
        LODWORD(v36) = 42;
        p_lhs = &lhs;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (dword_1ED844050)
  {
    LODWORD(type[0].value) = 0;
    LOBYTE(v43.value) = 0;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = type[0].value;
    if (os_log_type_enabled(v24, v43.value))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (v26)
    {
      v27 = *(*(v2 + 64) + 104);
      v28 = [objc_msgSend(*(v2 + 40) "settings")];
      LODWORD(lhs.value) = 136316162;
      *(&lhs.value + 4) = "captureSession_didCaptureIrisStill_block_invoke";
      LOWORD(lhs.flags) = 2114;
      *(&lhs.flags + 2) = v27;
      HIWORD(lhs.epoch) = 2048;
      v38 = *&v28;
      v39 = 1024;
      LODWORD(v40[0]) = v4;
      WORD2(v40[0]) = 2112;
      *(v40 + 6) = v9;
      LODWORD(v36) = 48;
      p_lhs = &lhs;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([*(v2 + 56) deliverOriginalImage])
  {
    if (([v9 isPairedRequestCreated] & 1) == 0)
    {
      v29 = +[BWPendingIrisRecordingRequest irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:](BWPendingIrisRecordingRequest, "irisRecordingRequestWithFigCaptureMovieFileRecordingSettings:", [v9 settings]);
      [(BWPendingIrisRecordingRequest *)v29 setPairedRequestCreated:1];
      [objc_msgSend(*(v2 + 48) "pendingIrisRecordings")];
      [(BWPendingIrisRecordingRequest *)v29 setEnqueuedHostTime:mach_absolute_time()];
      if (dword_1ED844050)
      {
        LODWORD(type[0].value) = 0;
        LOBYTE(v43.value) = 0;
        v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v31 = type[0].value;
        if (os_log_type_enabled(v30, v43.value))
        {
          v32 = v31;
        }

        else
        {
          v32 = v31 & 0xFFFFFFFE;
        }

        if (v32)
        {
          v33 = *(*(v2 + 64) + 104);
          v34 = [(FigCaptureRecordingSettings *)[(BWPendingIrisRecordingRequest *)v29 settings] settingsID];
          LODWORD(lhs.value) = 136315650;
          *(&lhs.value + 4) = "captureSession_didCaptureIrisStill_block_invoke";
          LOWORD(lhs.flags) = 2114;
          *(&lhs.flags + 2) = v33;
          HIWORD(lhs.epoch) = 2048;
          v38 = *&v34;
          _os_log_send_and_compose_impl();
        }

LABEL_15:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return captureSession_servicePendingIrisRecordings(*(v2 + 72), *(v2 + 48), 0);
}

void captureSession_stopRunningInternal(const void *a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_stopRunningInternal_cold_1();
  }

  if (*DerivedStorage)
  {
    v7 = a2 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = mach_absolute_time();
    os_unfair_lock_lock((DerivedStorage + 384));
    v9 = *(DerivedStorage + 388);
    v10 = *(DerivedStorage + 456);
    if (*(DerivedStorage + 392) || [*(DerivedStorage + 424) count])
    {
      IsFatal = cs_errorIsFatal(a3);
    }

    else
    {
      IsFatal = 0;
    }

    if (((*(DerivedStorage + 405) & 1) != 0 || (v9 & 1) == 0) && v10 != 3 && v10)
    {
      *(DerivedStorage + 480) = v8;
      os_unfair_lock_unlock((DerivedStorage + 384));
      if (!dword_1ED844050)
      {
LABEL_19:
        captureSession_transitionToSessionStatus(a1, 3, a3);
        captureSession_stopGraph(a1, a3, 0, 0, 0, 100, 0);
        captureSession_transitionToSessionStatus(a1, 0, a3);
        os_unfair_lock_lock((DerivedStorage + 384));
        if (*(DerivedStorage + 720))
        {
          v14 = CMBaseObjectGetDerivedStorage();

          v14[90] = 0;
          v14[91] = 0;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v15 = [v14[92] allValues];
          v16 = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v31;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                FigVideoCaptureSourceDeactivateAttachedCaptureSource(*(*(&v30 + 1) + 8 * i));
              }

              v17 = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
            }

            while (v17);
          }

          v14[92] = 0;
        }

        else if (*(DerivedStorage + 712))
        {
          v22 = CMBaseObjectGetDerivedStorage();
          v23 = *(v22 + 8);
          v24 = *(v22 + 712);
          v25 = CMBaseObjectGetDerivedStorage();
          os_unfair_lock_lock((v25 + 384));
          if ([*(v25 + 736) objectForKeyedSubscript:v23])
          {
            FigVideoCaptureSourceDeactivateAttachedCaptureSource([*(v25 + 736) objectForKeyedSubscript:v23]);
            [*(v25 + 736) setObject:0 forKeyedSubscript:v23];
            if (![*(v25 + 736) count])
            {

              *(v25 + 736) = 0;
            }
          }

          if ([*(v25 + 720) objectForKeyedSubscript:{v23, v27, v28}])
          {
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = &__captureSession_detachFromHostSession_block_invoke;
            v29[3] = &unk_1E7990178;
            v29[4] = v23;
            v29[5] = v24;
            captureSession_performBlockOnWorkerQueue(v24, v29);
          }

          os_unfair_lock_unlock((v25 + 384));
          v26 = *(v22 + 712);
          if (v26)
          {
            CFRelease(v26);
            *(v22 + 712) = 0;
          }
        }

        os_unfair_lock_unlock((DerivedStorage + 384));
        return;
      }

      v12 = 1;
    }

    else
    {
      os_unfair_lock_unlock((DerivedStorage + 384));
      if (!dword_1ED844050)
      {
        goto LABEL_29;
      }

      v12 = 0;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v12)
    {
      goto LABEL_19;
    }

LABEL_29:
    if (IsFatal)
    {
      *(DerivedStorage + 392) = 0;
      v20 = captureSession_notificationPayloadWithErrorStatus(a1, a3);
      captureSession_postNotificationWithPayload(a1, @"DidStopRunning", v20);
    }

    else
    {
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

void __captureSession_updateRunningCondition_block_invoke_2(uint64_t a1)
{
  v2 = captureSession_notificationPayloadWithErrorStatus(*(a1 + 32), *(a1 + 40));
  v3 = cs_notificationPayloadForAttachingSession(*(a1 + 32), v2);
  v4 = *(a1 + 32);

  captureSession_postNotificationWithPayload(v4, @"DidStopRunning", v3);
}

id cs_notificationPayloadForAttachingSession(uint64_t a1, id a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  if (([*(DerivedStorage + 504) eligibleToAttachToExistingCaptureSession] & 1) != 0 || *(DerivedStorage + 396) == 1)
  {
    a2 = [a2 mutableCopy];
    if ([*(DerivedStorage + 504) eligibleToAttachToExistingCaptureSession])
    {
      [a2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21864B0];
    }

    if (*(DerivedStorage + 396) == 1)
    {
      [a2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21864D0];
    }
  }

  os_unfair_lock_unlock((DerivedStorage + 384));
  return a2;
}

void __captureSession_updateRunningCondition_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = captureSession_notificationPayloadWithErrorStatus(v1, *(a1 + 40));

  captureSession_postNotificationWithPayload(v1, @"DidStopRunning", v2);
}

void captureSession_resetSessionRunningStateOnFatalError(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (cs_errorIsFatal(a2))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    os_unfair_lock_lock((DerivedStorage + 384));
    *(DerivedStorage + 396) = 0;
    *(DerivedStorage + 616) = 0;
    *(DerivedStorage + 388) = 0;
    os_unfair_lock_unlock((DerivedStorage + 384));
  }

  else
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void captureSession_setIsUsingCamera(const void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v5 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __captureSession_setIsUsingCamera_block_invoke;
  block[3] = &__block_descriptor_49_e5_v8__0l;
  v7 = a2;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v5, block);
}

void captureSession_cancelMemoryPoolPrewarmingLocked(uint64_t a1, int a2)
{
  os_unfair_lock_assert_owner(&sFigCaptureSessionPrewarming);
  if (!a1 || qword_1ED844918 == a1)
  {
    if (byte_1ED844930 == 1)
    {
      if (dword_1ED844050)
      {
        v15 = 0;
        v14 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      byte_1ED844930 = 0;
      captureSession_cancelMemoryPoolPrewarmingTimeoutTimer();
      v6 = qword_1ED844940;
      qword_1ED844940 = 0;
      if (v6)
      {
        v7 = v13;
        v8 = v12;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v13[0] = __captureSession_cancelMemoryPoolPrewarmingLocked_block_invoke;
        v13[1] = &unk_1E798F870;
        v13[2] = v6;
      }

      else
      {
        v8 = 0;
        v7 = 16;
      }

      v9 = [BWMemoryPool sharedMemoryPool:v10];
      if (a2 && v9)
      {
        qword_1ED844938 = 0;
        [(BWMemoryPool *)v9 disableWithCompletionHandler:v8];
      }

      else if (v8)
      {
        (*v7)(v8);
      }
    }
  }

  else if (dword_1ED844050)
  {
    v15 = 0;
    v14 = 0;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void captureSession_cancelMemoryPoolPrewarmingTimeoutTimer()
{
  if (qword_1ED844918)
  {
    dispatch_source_cancel(qword_1ED844918);

    qword_1ED844918 = 0;
  }
}

uint64_t __captureSession_startAVConferenceBackgroundRunningTrackingTimerIfNeeded_block_invoke()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    __captureSession_startAVConferenceBackgroundRunningTrackingTimerIfNeeded_block_invoke_cold_1();
  }

  result = [*(DerivedStorage + 120) applicationState];
  if (result == 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

void captureSession_stopObservingInvalidAudioRecordingState()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_stopObservingInvalidAudioRecordingState_cold_1();
  }

  v1 = *(DerivedStorage + 208);
  if (v1)
  {
    if (dword_1ED844050)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v1 = *(DerivedStorage + 208);
    }

    dispatch_source_cancel(v1);
    dispatch_release(*(DerivedStorage + 208));
    *(DerivedStorage + 208) = 0;
  }
}

void __captureSession_commitInflightConfiguration_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 48) + 8);
  v96[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    __captureSession_commitInflightConfiguration_block_invoke_cold_1();
  }

  v4 = [*(DerivedStorage + 752) createAndBeginLiveExtension];
  v5 = *(DerivedStorage + 728);
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(DerivedStorage + 728) = v5;
  }

  [v5 setObject:v4 forKeyedSubscript:v2];
  v6 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:v1 clientSetsUserInitiatedCaptureRequestTime:captureSession_clientSetsUserInitiatedCaptureRequestTime() restrictions:*(DerivedStorage + 496)];
  if (v6)
  {
    v7 = v6;
    v8 = [*(DerivedStorage + 784) cameraSourcePipelineWithSessionID:v2];
    v64 = [*(DerivedStorage + 784) metadataSinkPipelineWithSessionID:v2];
    v9 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(-[FigCaptureCameraSourcePipeline metadataObjectConnectionConfigurationForSessionID:](v8, v2), "metadataIdentifiers")}];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = [(FigCaptureSessionParsedConfiguration *)v7 parsedCameraSourceConfigurations];
    v10 = [(NSArray *)obj countByEnumeratingWithState:&v92 objects:&v84 count:16];
    v49 = v10;
    if (v10)
    {
      v52 = *v93;
      do
      {
        v11 = 0;
        do
        {
          if (*v93 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v55 = v11;
          v12 = *(*(&v92 + 1) + 8 * v11);
          v80 = 0u;
          v81 = 0u;
          *v82 = 0u;
          v83 = 0u;
          v58 = [v12 metadataObjectConnectionConfigurations];
          v13 = [v58 countByEnumeratingWithState:&v80 objects:&v67 count:16];
          if (v13)
          {
            v14 = v13;
            v61 = *v81;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                v16 = v4;
                if (*v81 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                v17 = *(*(&v80 + 1) + 8 * i);
                [(FigCaptureCameraSourcePipeline *)v8 setMetadataObjectConnectionConfiguration:v17 forSessionID:v2];
                v18 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v17, "metadataIdentifiers")}];
                v19 = [v18 copy];
                [v18 removeObjectsInArray:v9];
                [v9 removeObjectsInArray:v19];
                v20 = [v17 copy];
                if ([v18 count])
                {
                  [(FigCaptureCameraSourcePipeline *)v8 addMetadataOutputNetworksForSessionID:v2 graph:*(DerivedStorage + 752), v21, v22, v23, v24, v25, v43, obj, v49, v52, v55, v58, v61, v64, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, *(&v77 + 1)];
                  [v20 setMetadataIdentifiers:v18];
                  v31 = [(FigCaptureCameraSourcePipeline *)v8 metadataOutputsByCategoryForSessionID:v2 connectionConfiguration:v20, v26, v27, v28, v29, v30, v44, obja, v50, v53, v56, v59, v62, v65, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82[0], v82[1], v83, *(&v83 + 1), v84, v85, v86, v87, v88, v89, v90, v91];
                  [(FigCaptureMetadataSinkPipeline *)v64 extendForNodeOutputs:v31 withConnectionConfiguration:v17];
                }

                v4 = v16;
                if (([*(DerivedStorage + 752) commitLiveExtension:v16 withError:v96] & 1) == 0 && v96[0])
                {
                  __captureSession_commitInflightConfiguration_block_invoke_cold_2();
                  LODWORD(v10) = 0;
                  goto LABEL_28;
                }

                [*(DerivedStorage + 752) prepareLiveExtensionToBecomeLive:v16];
                [(FigCaptureCameraSourcePipeline *)v8 activateSecureMetadataOutputConfigurationForSessionID:v2];
                if ([v9 count])
                {
                  [v20 setMetadataIdentifiers:v9];
                  v37 = [(FigCaptureCameraSourcePipeline *)v8 metadataOutputsByCategoryForSessionID:v2 connectionConfiguration:v20, v32, v33, v34, v35, v36, v43, obj, v49, v52, v55, v58, v61, v64, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82[0], v82[1], v83, *(&v83 + 1), v84, v85, v86, v87, v88, v89, v90, v91];
                  [(FigCaptureCameraSourcePipeline *)v8 removeMetadataOutputNetworksForOutputs:v37 graph:*(DerivedStorage + 752) sessionID:v2, v38, v39, v40, v41, v45, objb, v51, v54, v57, v60, v63, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1), v82[0], v82[1], v83, *(&v83 + 1), v84, v85, v86, v87, v88, v89, v90, v91];
                  [(FigCaptureMetadataSinkPipeline *)v64 removeNodeOutputs:v37 withConnectionConfiguration:v17];
                }
              }

              v14 = [v58 countByEnumeratingWithState:&v80 objects:&v67 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v11 = v55 + 1;
        }

        while (v55 + 1 != v49);
        v42 = [(NSArray *)obj countByEnumeratingWithState:&v92 objects:&v84 count:16];
        LODWORD(v10) = 0;
        v49 = v42;
      }

      while (v42);
    }
  }

  else
  {
    __captureSession_commitInflightConfiguration_block_invoke_cold_3(&v84);
    LODWORD(v10) = v84;
    if (v84)
    {
      goto LABEL_30;
    }
  }

LABEL_28:
  if (v96[0])
  {
    LODWORD(v10) = [v96[0] code];
  }

LABEL_30:
  if (v10)
  {
    [*(DerivedStorage + 752) cancelLiveExtension:v4];
  }

  [*(DerivedStorage + 728) setObject:0 forKeyedSubscript:v2];
  if (![*(DerivedStorage + 728) count])
  {

    *(DerivedStorage + 728) = 0;
  }
}

uint64_t cs_notificationPayloadWithConfigurationIDAndErrorStatus(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E695DF20];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a1];
  if (a2)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  }

  else
  {
    v5 = 0;
  }

  return [v3 dictionaryWithObjectsAndKeys:{v4, @"ConfigurationID", v5, @"ErrorStatus", 0}];
}

void __captureSession_updateGraphConfiguration_block_invoke(void *a1)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) willLiveReconfigureGraph];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v4);
  }

  v7 = *(a1[6] + 136);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __captureSession_updateGraphConfiguration_block_invoke_2;
  v9[3] = &unk_1E7990178;
  v8 = a1[7];
  v9[4] = a1[5];
  v9[5] = v8;
  dispatch_async(v7, v9);
}

uint64_t captureSession_updateGraphForMetadataConnectionConfigurationChanges(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateGraphForMetadataConnectionConfigurationChanges_cold_1();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a2 parsedMetadataSinkConfigurations];
  result = [v4 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) metadataObjectConnectionConfiguration];
        v10 = [*(DerivedStorage + 784) metadataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(v9, "sinkConfiguration"), "sinkID")}];
        [v9 metadataRectOfInterest];
        [(FigCaptureMetadataSinkPipeline *)v10 setRectOfInterest:v11, v12, v13, v14];
        -[FigCaptureMetadataSinkPipeline setFaceTrackingSuspended:](v10, [v9 faceTrackingSuspended]);
        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v16 objects:v15 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t captureSession_updateGraphForStillImageSinkConfigurationChanges(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateGraphForStillImageSinkConfigurationChanges_cold_1();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [a2 parsedStillImageSinkConfigurations];
  result = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [-[FigCaptureCameraSourcePipeline captureDevice](objc_msgSend(objc_msgSend(*(DerivedStorage + 784) stillImageSinkPipelineSessionStorageWithSinkID:{objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v10 + 1) + 8 * v8), "primaryStillImageConnectionConfiguration"), "sinkConfiguration"), "sinkID")), "primaryCameraSourcePipeline")), "setExifFocalLengthsByZoomFactor:", objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v10 + 1) + 8 * v8), "primaryStillImageConnectionConfiguration"), "irisSinkConfiguration"), "exifFocalLengthsByZoomFactor")}];
        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t captureSession_updateGraphForConnectionConfigurationEnabledChanges(const void *a1, void *a2, void *a3, _BYTE *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [a3 parsedPreviewSinkConfigurations];
  v7 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v28 = 0;
    v24 = a3;
    v25 = a4;
    v9 = *v38;
    v27 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v37 + 1) + 8 * i) videoPreviewSinkConnectionConfiguration];
        if (v11)
        {
          v12 = v11;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v13 = [a2 parsedPreviewSinkConfigurations];
          v14 = [v13 countByEnumeratingWithState:&v32 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v33;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v33 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v32 + 1) + 8 * j) videoPreviewSinkConnectionConfiguration];
                if ([objc_msgSend(objc_msgSend(v18 "sinkConfiguration")])
                {
                  if (v18)
                  {
                    v19 = [*(DerivedStorage + 784) previewSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(v12, "sinkConfiguration"), "sinkID")}];
                    if (([v18 enabled] & 1) != 0 || !objc_msgSend(v12, "enabled"))
                    {
                      if ([v18 enabled] && (objc_msgSend(v12, "enabled") & 1) == 0)
                      {
                        captureSession_setPreviewRunning(a1, 0, v19);
                      }
                    }

                    else
                    {
                      [objc_msgSend(v19 "imageQueueSinkNode")];
                      v20 = v28;
                      if (!v28)
                      {
                        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      }

                      v28 = v20;
                      [v20 addObject:v19];
                      v27 = 0;
                    }
                  }

                  goto LABEL_25;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v32 objects:v31 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_25:
        ;
      }

      v8 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v8);
    if (v28)
    {
      os_unfair_lock_lock((DerivedStorage + 384));
      v21 = *(DerivedStorage + 528);
      a3 = v24;
      a4 = v25;
      if (v21)
      {
        [v21 addObjectsFromArray:v28];
      }

      else
      {
        *(DerivedStorage + 528) = v28;
      }

      v22 = v27;
      os_unfair_lock_unlock((DerivedStorage + 384));
    }

    else
    {
      a3 = v24;
      a4 = v25;
      v22 = v27;
    }
  }

  else
  {
    v22 = 1;
  }

  captureSession_updateGraphConnectionEnabledState(a1, a3);
  result = FigMemoryBarrier();
  *a4 = v22 & 1;
  return result;
}

uint64_t cs_shouldSetCinematicFramingControlsWhileRunning(void *a1, void *a2)
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [a2 sinkConfigurations];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v5)
  {
    v6 = *v34;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        if ([objc_msgSend(v8 "sinkID")])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 cinematicFramingSupported])
          {
            LODWORD(v5) = 1;
            goto LABEL_13;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v33 objects:v32 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [a1 connectionConfigurations];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    while (2)
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v28 + 1) + 8 * j) "sourceConfiguration")])
        {
          v14 = 1;
          goto LABEL_23;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_23:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [a2 connectionConfigurations];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    while (2)
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v23 + 1) + 8 * k) "sourceConfiguration")])
        {
          v20 = 1;
          goto LABEL_33;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_33:
  if ((v5 | v14 & v20))
  {
    return 1;
  }

  else
  {
    return cs_configurationsTransitionBetweenCenterStageAndManualFraming(a1, a2);
  }
}

uint64_t captureSession_updateGraphForSourceConfigurationChanges(uint64_t a1, void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateGraphForSourceConfigurationChanges_cold_1();
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [a2 parsedCameraSourceConfigurations];
  result = [obj countByEnumeratingWithState:&v65 objects:v64 count:16];
  if (result)
  {
    v5 = result;
    v51 = *v66;
    do
    {
      v6 = 0;
      do
      {
        if (*v66 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v65 + 1) + 8 * v6);
        v8 = [v7 cameraConfiguration];
        v9 = [*(DerivedStorage + 784) cameraSourcePipelineWithSourceID:{objc_msgSend(v8, "sourceID")}];
        if (a3)
        {
          if (os_variant_is_darwinos())
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v10 = [a2 parsedVideoDataSinkConfigurations];
            v11 = [v10 countByEnumeratingWithState:&v60 objects:v59 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v61;
              while (2)
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v61 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  if ([objc_msgSend(objc_msgSend(*(*(&v60 + 1) + 8 * i) "videoDataConnectionConfiguration")])
                  {
                    v15 = 1;
                    goto LABEL_22;
                  }
                }

                v12 = [v10 countByEnumeratingWithState:&v60 objects:v59 count:16];
                v15 = 0;
                if (v12)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = [v8 cinematicFramingEnabled];
          }

LABEL_22:
          [v8 manualFramingPanningAngleX];
          v17 = v16;
          [v8 manualFramingPanningAngleY];
          v19 = v18;
          [v8 videoZoomFactor];
          v21 = v20;
          [v8 manualFramingDefaultZoomFactor];
          [(FigCaptureCameraSourcePipeline *)v9 setCinematicFramingControlsWhileRunning:v15 panningAngleX:v17 panningAngleY:v19 videoZoomFactor:v21 manualFramingDefaultZoomFactor:v22];
        }

        [v8 backgroundBlurEnabled];
        [v8 studioLightingEnabled];
        [v8 reactionEffectsEnabled];
        [v8 backgroundReplacementEnabled];
        [FigCaptureCameraSourcePipeline setBackgroundBlurNodePropertiesWhileRunning:v9 studioLightingEnabled:? reactionEffectsEnabled:? backgroundReplacementEnabled:?];
        -[FigCaptureCameraSourcePipeline setSmartStyle:](v9, [a2 smartStyle]);
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v23 = [v7 metadataObjectConnectionConfigurations];
        v24 = [v23 countByEnumeratingWithState:&v55 objects:v54 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v56;
          v27 = 0.0;
          v28 = 0.0;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v56 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v30 = *(*(&v55 + 1) + 8 * j);
              [v30 motionToWakeTargetFrameRate];
              if (v28 <= v31)
              {
                [v30 motionToWakeTargetFrameRate];
                v28 = v32;
              }

              [v30 objectDetectionTargetFrameRate];
              if (v27 <= v33)
              {
                [v30 objectDetectionTargetFrameRate];
                v27 = v34;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v55 objects:v54 count:16];
          }

          while (v25);
        }

        [FigCaptureCameraSourcePipeline setMotionToWakeTargetFrameRate:v9];
        [FigCaptureCameraSourcePipeline setObjectDetectionTargetFrameRate:v9];
        if ([v8 nonDestructiveCropEnabled])
        {
          [v8 normalizedNonDestructiveCropSize];
          DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v69);
          v36 = [v8 source];
          v37 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v37)
          {
            v37(v36, @"NonDestructiveCropSize", DictionaryRepresentation);
          }

          CFRelease(DictionaryRepresentation);
        }

        v38 = [v8 source];
        v39 = [(FigCaptureCameraSourcePipeline *)v9 captureDevice];
        v40 = [v8 requiredMaxFrameRate];
        v42 = FigCaptureFrameRateAsData(v40, v41);
        FigVideoCaptureSourceSetSessionProperty(v38, v39, @"ActiveMaxFrameRate_FigCaptureSessionOnly", v42);
        v43 = [v8 requiredMinFrameRate];
        v45 = FigCaptureFrameRateAsData(v43, v44);
        FigVideoCaptureSourceSetSessionProperty(v38, v39, @"ActiveMinFrameRate_FigCaptureSessionOnly", v45);
        v46 = [v8 requiredMinFrameRate];
        [v39 setMinimumFrameRate:{v46, v47}];
        v48 = [v8 requiredMaxFrameRate];
        [v39 setMaximumFrameRate:{v48, v49}];
        ++v6;
      }

      while (v6 != v5);
      result = [obj countByEnumeratingWithState:&v65 objects:v64 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t captureSession_updateGraphForCinematographyConfigurationChanges(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateGraphForCinematographyConfigurationChanges_cold_1();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [a2 parsedCameraSourceConfigurations];
  result = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[FigCaptureCinematographyPipeline setSmartStyle:]([*(DerivedStorage + 784) cinematographyPipelineWithSourceID:{objc_msgSend(objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "cameraConfiguration"), "sourceID")}], objc_msgSend(a2, "smartStyle"));
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t captureSession_updateGraphForVideoDataSinkConfigurationChanges(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureSession_updateGraphForVideoDataSinkConfigurationChanges_cold_1();
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [a2 parsedVideoDataSinkConfigurations];
  result = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v34;
    v22 = v4;
    v23 = DerivedStorage;
    v24 = *v34;
    do
    {
      v8 = 0;
      v25 = v6;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = [objc_msgSend(objc_msgSend(v9 "videoDataConnectionConfiguration")];
        v11 = [*(DerivedStorage + 784) cameraSourcePipelineWithSourceID:v10];
        if (([v4 containsObject:v10] & 1) == 0)
        {
          [v4 addObject:v10];
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = [a2 parsedCameraSourceConfigurations];
          v13 = [v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = a2;
            v16 = *v29;
LABEL_11:
            v17 = 0;
            while (1)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v28 + 1) + 8 * v17);
              if ([objc_msgSend(objc_msgSend(v18 "cameraConfiguration")])
              {
                break;
              }

              if (v14 == ++v17)
              {
                v14 = [v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
                if (v14)
                {
                  goto LABEL_11;
                }

                v18 = 0;
                break;
              }
            }

            a2 = v15;
            v4 = v22;
            DerivedStorage = v23;
          }

          else
          {
            v18 = 0;
          }

          v19 = [(FigCaptureCameraSourcePipeline *)v11 captureSourceVideoFormat];
          v20 = FigCaptureConnectionConfigurationWithSinkType([v18 videoCaptureConnectionConfigurations], 4);
          shouldEnableVideoHDRImageStatisticsFromConnectionConfigurations = cs_shouldEnableVideoHDRImageStatisticsFromConnectionConfigurations(v19, v20, [v18 videoDataConnectionConfigurations]);
          [(FigCaptureCameraSourcePipeline *)v11 setVideoHDRImageStatisticsEnabled:?];
          v7 = v24;
          v6 = v25;
        }

        -[FigCaptureVideoDataSinkPipeline setVideoHDRImageStatisticsEnabled:]([*(DerivedStorage + 784) videoDataSinkPipelineWithSinkID:{objc_msgSend(objc_msgSend(objc_msgSend(v9, "videoDataConnectionConfiguration"), "sinkConfiguration"), "sinkID")}], objc_msgSend(objc_msgSend(objc_msgSend(v9, "videoDataConnectionConfiguration"), "videoDataSinkConfiguration"), "preservesDynamicHDRMetadata"));
        ++v8;
      }

      while (v8 != v6);
      result = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t cs_pulseGeneratorFrameRate(void *a1)
{
  v1 = [a1 cameraConfiguration];
  v2 = [v1 lockedFrameRate];
  if (FigCaptureFrameRateIsValidRational(v2, v3))
  {
    return [v1 lockedFrameRate];
  }

  v5 = [v1 externalSyncFrameRate];
  if (FigCaptureFrameRateIsValidRational(v5, v6))
  {
    return [v1 externalSyncFrameRate];
  }

  else
  {
    return 0;
  }
}

uint64_t cs_timeOfFlightAssistedAutoFocusEnabled(void *a1)
{
  BoolAttribute = FigCaptureSourceGetBoolAttribute([a1 source], 0x1F219F9D0, 0);
  if ([&unk_1F2248D18 containsObject:{objc_msgSend(FigCaptureDeviceCoreRepairStatusesByKeys(), "objectForKeyedSubscript:", @"RearCameraAssembly"}])
  {
    if (dword_1ED844050)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (BoolAttribute)
  {
    [objc_msgSend(a1 "requiredFormat")];
    return 1;
  }

  return 0;
}

void captureSession_stopGraph(const void *a1, int a2, unsigned int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v211 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v141 = DerivedStorage;
  if (dword_1ED844050)
  {
    v210 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if ((*(DerivedStorage + 769) & 1) == 0)
  {
    captureSession_waitForGraphToStart(a1, 1);
    os_unfair_lock_lock((DerivedStorage + 384));
    v136 = *(DerivedStorage + 456);
    if (v136 == 2)
    {
      v14 = a5;
      *(DerivedStorage + 472) = mach_absolute_time();
      [objc_msgSend(objc_msgSend(*(DerivedStorage + 584) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(DerivedStorage + 584), "allKeys"), "firstObject")), "previewStitcherNode"), "primaryCameraAspectRatio"}];
      v16 = v15;
      os_unfair_lock_unlock((DerivedStorage + 384));
      v208 = 0u;
      v207 = 0u;
      v206 = 0u;
      v205 = 0u;
      v17 = [*(DerivedStorage + 784) cameraSourcePipelines];
      v18 = [v17 countByEnumeratingWithState:&v205 objects:v204 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = v16;
        v21 = *v206;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v206 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v205 + 1) + 8 * i);
            [-[FigCaptureCameraSourcePipeline captureDevice](v23) setStoppingForTrueVideoTransition:a3];
            v24 = [(FigCaptureCameraSourcePipeline *)v23 captureDevice];
            *&v25 = v20;
            [v24 setAspectRatioForTrueVideoTransition:v25];
          }

          v19 = [v17 countByEnumeratingWithState:&v205 objects:v204 count:16];
        }

        while (v19);
      }

      v203 = 0u;
      v202 = 0u;
      v201 = 0u;
      v200 = 0u;
      v26 = [*(v141 + 784) previewSinkPipelines];
      v27 = [v26 countByEnumeratingWithState:&v200 objects:v199 count:16];
      a5 = v14;
      if (v27)
      {
        v28 = v27;
        v29 = *v201;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v201 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v200 + 1) + 8 * j) setStoppingForModeSwitch:1 parallelGraphRebuildEnabled:a3 ispFastSwitchEnabled:a4 smartStyleRenderingEnabledInTrueVideoGraph:a7];
          }

          v28 = [v26 countByEnumeratingWithState:&v200 objects:v199 count:16];
        }

        while (v28);
      }
    }

    else
    {
      os_unfair_lock_unlock((DerivedStorage + 384));
    }

    v137 = a5;
    if (a5)
    {
      if ((a4 & 1) == 0)
      {
        v198 = 0u;
        v197 = 0u;
        v196 = 0u;
        v195 = 0u;
        v31 = *(v141 + 776);
        v32 = [v31 countByEnumeratingWithState:&v195 objects:v194 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v196;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v196 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(v141 + 776) objectForKeyedSubscript:{*(*(&v195 + 1) + 8 * k), v132, v134}];
              if (v36)
              {
                v36 = v36[2];
              }

              [objc_msgSend(objc_msgSend(v36 "captureStream")];
            }

            v33 = [v31 countByEnumeratingWithState:&v195 objects:v194 count:16];
          }

          while (v33);
        }
      }

      v193 = 0u;
      v192 = 0u;
      v191 = 0u;
      v190 = 0u;
      v37 = [*(v141 + 784) stillImageSinkPipelineSessionStorages];
      v38 = [v37 countByEnumeratingWithState:&v190 objects:v189 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v191;
        do
        {
          for (m = 0; m != v39; ++m)
          {
            if (*v191 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v190 + 1) + 8 * m);
            if ([objc_msgSend(objc_msgSend(v42 "primaryStillImageSinkPipeline")])
            {
              [*(v141 + 752) setGraphStateTransitionTimeoutSeconds:30];
            }

            [objc_msgSend(objc_msgSend(v42 "primaryStillImageSinkPipeline")];
          }

          v39 = [v37 countByEnumeratingWithState:&v190 objects:v189 count:16];
        }

        while (v39);
      }
    }

    if (a2 == -16403)
    {
      v188 = 0u;
      v187 = 0u;
      v186 = 0u;
      v185 = 0u;
      v43 = [*(v141 + 784) previewSinkPipelines];
      v44 = [v43 countByEnumeratingWithState:&v185 objects:v184 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v186;
        do
        {
          for (n = 0; n != v45; ++n)
          {
            if (*v186 != v46)
            {
              objc_enumerationMutation(v43);
            }

            [*(*(&v185 + 1) + 8 * n) setStoppingForClientBackgrounded:{1, v132, v134}];
          }

          v45 = [v43 countByEnumeratingWithState:&v185 objects:v184 count:16];
        }

        while (v45);
      }
    }

    v183 = 0u;
    v182 = 0u;
    v181 = 0u;
    v180 = 0u;
    obj = [*(v141 + 784) movieFileSinkPipelines];
    v140 = [obj countByEnumeratingWithState:&v180 objects:v179 count:16];
    v144 = a1;
    if (v140)
    {
      v139 = *v181;
      v48 = 0x1E695D000uLL;
      do
      {
        v49 = 0;
        do
        {
          if (*v181 != v139)
          {
            objc_enumerationMutation(obj);
          }

          v142 = v49;
          v50 = *(*(&v180 + 1) + 8 * v49);
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v178 = 0u;
          v51 = [(FigCaptureMovieFileSinkPipeline *)v50 movieFileSinkNodes];
          v52 = [v51 countByEnumeratingWithState:&v175 objects:v174 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v176;
            v145 = *v176;
            v146 = v51;
            do
            {
              for (ii = 0; ii != v53; ++ii)
              {
                if (*v176 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v56 = *(*(&v175 + 1) + 8 * ii);
                if ([v56 irisMovieProcessingSuspended])
                {
                  [v56 setIrisMovieProcessingSuspended:0];
                  v57 = [v50 sinkID];
                  *&v213[0] = @"SectionID";
                  v212[0] = v57;
                  captureSession_postNotificationWithPayload(a1, @"DidResumeIrisMovieProcessing", [*(v48 + 3872) dictionaryWithObjects:v212 forKeys:v213 count:1]);
                }

                if ([(FigCaptureMovieFileSinkPipeline *)v50 irisStagingNode])
                {
                  v58 = [(FigCaptureMovieFileSinkPipeline *)v50 irisStagingNode];
                  if (v58)
                  {
                    [v58 endIrisMovieCaptureTime];
                    if ((v172 & 0x100000000) != 0)
                    {
                      v59 = [v50 sinkID];
                      v60 = CMBaseObjectGetDerivedStorage();
                      if (!_FigIsCurrentDispatchQueue())
                      {
                        captureSession_stopGraph_cold_1();
                      }

                      os_unfair_lock_lock((v60 + 384));
                      v61 = *(v60 + 504);
                      os_unfair_lock_unlock((v60 + 384));
                      v214 = 0u;
                      v215 = 0u;
                      memset(v213, 0, sizeof(v213));
                      v62 = [v61 connectionConfigurations];
                      v63 = [v62 countByEnumeratingWithState:v213 objects:v212 count:16];
                      if (v63)
                      {
                        v64 = v63;
                        v65 = **&v213[1];
LABEL_70:
                        v66 = 0;
                        while (1)
                        {
                          if (**&v213[1] != v65)
                          {
                            objc_enumerationMutation(v62);
                          }

                          v67 = [*(*(&v213[0] + 1) + 8 * v66) irisSinkConfiguration];
                          if ([objc_msgSend(v67 "sinkID")])
                          {
                            break;
                          }

                          if (v64 == ++v66)
                          {
                            v64 = [v62 countByEnumeratingWithState:v213 objects:v212 count:16];
                            if (v64)
                            {
                              goto LABEL_70;
                            }

                            goto LABEL_76;
                          }
                        }

                        v68 = [v67 preservesIrisMovieCaptureSuspendedOnSessionStop];

                        a1 = v144;
                        v48 = 0x1E695D000uLL;
                        v54 = v145;
                        v51 = v146;
                        if (v68)
                        {
                          continue;
                        }
                      }

                      else
                      {
LABEL_76:

                        a1 = v144;
                        v48 = 0x1E695D000;
                        v54 = v145;
                        v51 = v146;
                      }

                      captureSession_updateInflightConfigurationWithIrisSinkPropertyForKey(a1, [v50 sinkID], @"BeginIrisMovieCaptureHostTime", 0);
                      v69 = [v50 sinkID];
                      *&v213[0] = @"SectionID";
                      v212[0] = v69;
                      captureSession_postNotificationWithPayload(a1, @"DidResumeIrisMovieCapture", [*(v48 + 3872) dictionaryWithObjects:v212 forKeys:v213 count:1]);
                    }
                  }

                  else
                  {
                    v172 = 0;
                    v171 = 0;
                    v173 = 0;
                  }
                }
              }

              v53 = [v51 countByEnumeratingWithState:&v175 objects:v174 count:16];
            }

            while (v53);
          }

          if (a3)
          {
            mach_absolute_time();
            v70 = [(FigCaptureMovieFileSinkPipeline *)v50 fileCoordinatorNode];
            LODWORD(v71) = 1036831949;
            [v70 waitForRecordingToStopWithTimeout:v71];
            mach_absolute_time();
            v72 = (FigHostTimeToNanoseconds() / 1000) / 1000000.0;
            v73 = [(FigCaptureMovieFileSinkPipeline *)v50 primaryCaptureDevice];
            *&v74 = v72;
            [v73 setDurationAlreadyWaitedForRecordingStop:v74];
          }

          v49 = v142 + 1;
        }

        while (v142 + 1 != v140);
        v140 = [obj countByEnumeratingWithState:&v180 objects:v179 count:16];
      }

      while (v140);
    }

    DerivedStorage = v141;
    os_unfair_lock_lock((v141 + 384));
    v75 = *(v141 + 744);
    os_unfair_lock_unlock((v141 + 384));
    if (v75)
    {
      mach_absolute_time();
      v76 = dispatch_time(0, 400000000);
      v77 = dispatch_group_wait(v75, v76);
      mach_absolute_time();
      v78 = (FigHostTimeToNanoseconds() / 1000) / 1000000.0;
      v79 = -[FigCaptureMovieFileSinkPipeline primaryCaptureDevice]([objc_msgSend(*(v141 + 784) "movieFileSinkPipelines")]);
      [v79 durationAlreadyWaitedForRecordingStop];
      *&v81 = v78 + v80;
      [v79 setDurationAlreadyWaitedForRecordingStop:v81];
      if (dword_1ED844050)
      {
        v210 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v83 = v210;
        if (os_log_type_enabled(v82, type))
        {
          v84 = v83;
        }

        else
        {
          v84 = v83 & 0xFFFFFFFE;
        }

        if (v84)
        {
          v85 = *(v141 + 104);
          LODWORD(v213[0]) = 136315906;
          *(v213 + 4) = "captureSession_stopGraph";
          WORD6(v213[0]) = 2114;
          *(v213 + 14) = v85;
          WORD3(v213[1]) = 2048;
          *(&v213[1] + 1) = v78 * 1000.0;
          LOWORD(v214) = 1024;
          *(&v214 + 2) = v77 != 0;
          LODWORD(v135) = 38;
          v133 = v213;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      DerivedStorage = v141;
    }

    if ([*(DerivedStorage + 784) stillImageSinkPipelineSessionStorages])
    {
      mach_absolute_time();
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v147 = [*(DerivedStorage + 784) stillImageSinkPipelineSessionStorages];
      v86 = [v147 countByEnumeratingWithState:&v167 objects:v166 count:16];
      if (v86)
      {
        v87 = v86;
        v88 = *v168;
        do
        {
          for (jj = 0; jj != v87; ++jj)
          {
            if (*v168 != v88)
            {
              objc_enumerationMutation(v147);
            }

            v90 = *(*(&v167 + 1) + 8 * jj);
            v162 = 0u;
            v163 = 0u;
            v164 = 0u;
            v165 = 0u;
            v91 = [v90 stillImageSinkPipelines];
            v92 = [v91 countByEnumeratingWithState:&v162 objects:v161 count:16];
            if (v92)
            {
              v93 = v92;
              v94 = *v163;
              do
              {
                for (kk = 0; kk != v93; ++kk)
                {
                  if (*v163 != v94)
                  {
                    objc_enumerationMutation(v91);
                  }

                  [objc_msgSend(*(*(&v162 + 1) + 8 * kk) "stillImageCoordinatorNode")];
                }

                v93 = [v91 countByEnumeratingWithState:&v162 objects:v161 count:16];
              }

              while (v93);
            }

            v159 = 0u;
            v160 = 0u;
            v157 = 0u;
            v158 = 0u;
            v96 = [v90 cameraSourcePipelines];
            v97 = [v96 countByEnumeratingWithState:&v157 objects:v156 count:16];
            if (v97)
            {
              v98 = v97;
              v99 = *v158;
              do
              {
                for (mm = 0; mm != v98; ++mm)
                {
                  if (*v158 != v99)
                  {
                    objc_enumerationMutation(v96);
                  }

                  [-[FigCaptureCameraSourcePipeline captureDevice](*(*(&v157 + 1) + 8 * mm)) setAdaptiveUnifiedBracketingController:0];
                }

                v98 = [v96 countByEnumeratingWithState:&v157 objects:v156 count:16];
              }

              while (v98);
            }
          }

          v87 = [v147 countByEnumeratingWithState:&v167 objects:v166 count:16];
        }

        while (v87);
      }

      mach_absolute_time();
      v101 = (FigHostTimeToNanoseconds() / 1000) / 1000000.0;
      DerivedStorage = v141;
      v102 = -[FigCaptureMovieFileSinkPipeline primaryCaptureDevice]([objc_msgSend(*(v141 + 784) "movieFileSinkPipelines")]);
      [v102 durationAlreadyWaitedForRecordingStop];
      *&v104 = v101 + v103;
      [v102 setDurationAlreadyWaitedForRecordingStop:v104];
      a1 = v144;
    }

    v105 = *(DerivedStorage + 752);
    if (!a3)
    {
      goto LABEL_137;
    }

    if (v137 && !*(DerivedStorage + 848))
    {
      *(DerivedStorage + 848) = [objc_msgSend(*(DerivedStorage + 752) "memoryPool")];
    }

    mach_absolute_time();
    if (dword_1ED844050)
    {
      v210 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v106 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v107 = v210;
      if (os_log_type_enabled(v106, type))
      {
        v108 = v107;
      }

      else
      {
        v108 = v107 & 0xFFFFFFFE;
      }

      if (v108)
      {
        v109 = *(v141 + 104);
        LODWORD(v213[0]) = 136315394;
        *(v213 + 4) = "captureSession_stopGraph";
        WORD6(v213[0]) = 2114;
        *(v213 + 14) = v109;
        LODWORD(v134) = 22;
        v132 = v213;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      DerivedStorage = v141;
    }

    [-[FigCaptureMicSourcePipeline sourceNode](objc_msgSend(*(DerivedStorage + 784) micSourcePipeline];
    [v105 stopSources:&v211];
    [-[FigCaptureMicSourcePipeline sourceNode](objc_msgSend(*(DerivedStorage + 784) "micSourcePipeline"))];
    mach_absolute_time();
    v110 = FigHostTimeToNanoseconds();
    if (dword_1ED844050)
    {
      v111 = v110;
      v210 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v113 = v210;
      if (os_log_type_enabled(v112, type))
      {
        v114 = v113;
      }

      else
      {
        v114 = v113 & 0xFFFFFFFE;
      }

      if (v114)
      {
        v115 = *(v141 + 104);
        LODWORD(v213[0]) = 136315650;
        *(v213 + 4) = "captureSession_stopGraph";
        WORD6(v213[0]) = 2114;
        *(v213 + 14) = v115;
        WORD3(v213[1]) = 2048;
        *(&v213[1] + 1) = ((v111 / 1000) / 1000.0);
        LODWORD(v134) = 32;
        v132 = v213;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      DerivedStorage = v141;
    }

    if (v137)
    {
LABEL_137:
      captureSession_resumeTrueVideoVISProcessingForSemaphore(a1, 0);
    }

    if (v136 != 2 || (a3 & 1) == 0)
    {
      os_unfair_lock_lock((DerivedStorage + 384));
      v116 = [*(DerivedStorage + 584) objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(DerivedStorage + 584), "allKeys"), "firstObject")}];
      [*(DerivedStorage + 584) removeAllObjects];
      os_unfair_lock_unlock((DerivedStorage + 384));
      if (v116)
      {
        [objc_msgSend(v116 "previewStitcherNode")];

        if (dword_1ED844050)
        {
          v210 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v118 = v210;
          if (os_log_type_enabled(v117, type))
          {
            v119 = v118;
          }

          else
          {
            v119 = v118 & 0xFFFFFFFE;
          }

          if (v119)
          {
            v120 = *(v141 + 104);
            LODWORD(v213[0]) = 136316162;
            *(v213 + 4) = "captureSession_stopGraph";
            WORD6(v213[0]) = 2114;
            *(v213 + 14) = v120;
            WORD3(v213[1]) = 2048;
            *(&v213[1] + 1) = v116;
            LOWORD(v214) = 1024;
            *(&v214 + 2) = v136 == 2;
            WORD3(v214) = 1024;
            DWORD2(v214) = a3;
            LODWORD(v134) = 44;
            v132 = v213;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          DerivedStorage = v141;
        }
      }
    }

    os_unfair_lock_lock((DerivedStorage + 384));
    *(DerivedStorage + 600) = 0;
    os_unfair_lock_unlock((DerivedStorage + 384));
    if (a3 && (v137 & 1) != 0)
    {
      v121 = 0;
    }

    else
    {
      v121 = *(DerivedStorage + 848);
      *(DerivedStorage + 848) = 0;
    }

    v122 = *(DerivedStorage + 832);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __captureSession_stopGraph_block_invoke;
    block[3] = &unk_1E7998E20;
    v155 = a3;
    block[4] = v105;
    block[5] = v122;
    block[6] = v121;
    if (a3)
    {
      dispatch_async(*(DerivedStorage + 144), block);
    }

    else
    {
      __captureSession_stopGraph_block_invoke(block);
    }
  }

  *(DerivedStorage + 768) = 0;
  *(DerivedStorage + 770) = 0;
  *(DerivedStorage + 772) = 0;
  if (*(DerivedStorage + 824))
  {
    v123 = mach_absolute_time();
    v124 = *(DerivedStorage + 824);
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v125 = [*(DerivedStorage + 784) cameraSourcePipelines];
    v126 = [v125 countByEnumeratingWithState:&v150 objects:v149 count:16];
    if (v126)
    {
      v127 = v126;
      v128 = v123 - v124;
      v129 = *v151;
      do
      {
        for (nn = 0; nn != v127; ++nn)
        {
          if (*v151 != v129)
          {
            objc_enumerationMutation(v125);
          }

          -[FigCaptureCameraSourcePipeline logCameraStreamingInformationToAggd:applicationID:](*(*(&v150 + 1) + 8 * nn), v128, [*(v141 + 752) clientApplicationID]);
        }

        v127 = [v125 countByEnumeratingWithState:&v150 objects:v149 count:16];
      }

      while (v127);
    }

    DerivedStorage = v141;
    *(v141 + 824) = 0;
  }

  os_unfair_lock_lock((DerivedStorage + 384));
  v131 = *(DerivedStorage + 520);
  *(DerivedStorage + 520) = 0;
  *(DerivedStorage + 601) = 0;
  *(DerivedStorage + 603) = 0;
  *(DerivedStorage + 616) = 0;
  os_unfair_lock_unlock((DerivedStorage + 384));
}