id _CreateErrorV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
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
  if (v18)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v18 arguments:a8];
    [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  [v20 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69A8CF8]];

  v23 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [v20 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69A8D28]];

  v24 = [MEMORY[0x1E696ABC0] errorWithDomain:v15 code:a4 userInfo:v20];

  return v24;
}

id _CreateError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id _CreateAndLogError(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = _CreateAndLogErrorV(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id _CreateAndLogErrorV(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a5;
  v16 = _CreateErrorV(a1, a2, a3, a4, v15, a6, a7, a8);
  v17 = [v16 userInfo];
  v18 = *MEMORY[0x1E696A578];
  v19 = [v17 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v15)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v20 = [v15 domain];
      [v15 code];
      v21 = [v15 userInfo];
      v23 = [v21 objectForKeyedSubscript:v18];
      MOLogWrite();
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  return v16;
}

BOOL _IsMalformedBundleError(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E69A8D00];
  if ([v2 isEqualToString:*MEMORY[0x1E69A8D00]] && objc_msgSend(v1, "code") == 12)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 domain];
    if ([v5 isEqualToString:v3] && objc_msgSend(v1, "code") == 11)
    {
      v4 = 1;
    }

    else
    {
      v6 = [v1 domain];
      if ([v6 isEqualToString:v3])
      {
        v4 = [v1 code] == 35;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

__CFString *MICopyUnlocalizedDescriptionForContainerExtendedError()
{
  v0 = container_error_copy_unlocalized_description();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
    free(v1);
  }

  else
  {
    v2 = @"(container_error_copy_unlocalized_description returned NULL)";
  }

  return v2;
}

uint64_t immutable_open(int a1, char *a2, int a3, uint64_t a4)
{
  v4 = open(a2, a3, a4);
  v5 = v4;
  if ((v4 & 0x80000000) == 0)
  {
    if (fcntl(v4, 68, 1) < 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v6 = __error();
      v10 = strerror(*v6);
      MOLogWrite();
    }

    if (fcntl(v5, 48, 1, v10) < 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v7 = __error();
      v11 = strerror(*v7);
      MOLogWrite();
    }

    if (fcntl(v5, 76, 1, v11) < 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v8 = __error();
      strerror(*v8);
      MOLogWrite();
    }
  }

  return v5;
}

uint64_t bom_file_error_handler(uint64_t a1, uint64_t a2, int a3)
{
  v4 = BOMCopierUserData();
  if (v4)
  {
    *v4 = a3;
    *(v4 + 4) = 1;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    strerror(a3);
    MOLogWrite();
  }

  return 2;
}

uint64_t bom_fatal_error_handler()
{
  v0 = BOMCopierUserData();
  if (v0)
  {
    *(v0 + 4) = 1;
  }

  result = gLogHandle;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    return MOLogWrite();
  }

  return result;
}

uint64_t bom_fatal_file_error_handler(uint64_t a1, uint64_t a2, int a3)
{
  result = BOMCopierUserData();
  if (result)
  {
    *result = a3;
    *(result + 4) = 1;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    strerror(a3);
    return MOLogWrite();
  }

  return result;
}

uint64_t bom_copier_copy_file_finished_handler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = BOMCopierUserData();
  if (result)
  {
    *(result + 16) += a4;
  }

  return result;
}

unint64_t *bom_copier_copy_file_update_handler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = BOMCopierUserData();
  if (result)
  {
    v5.n128_f64[0] = (result[2] + a3) / result[1] * 100.0;
    v6 = *(result[3] + 16);
    v7 = result[3];

    return v6(v7, v5);
  }

  return result;
}

void sub_1BF3518A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_1BF351FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF352308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BF352600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BF35292C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BF352C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1BF352EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF35308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF353268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ShouldContinueAfterIncrementingFreed(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1] + a2;
  a1[1] = v3;
  v4 = v2 < 0 || v3 < v2;
  v5 = v4;
  if (v4)
  {
    if (a2 && gLogHandle && *(gLogHandle + 44) >= 7)
    {
      goto LABEL_15;
    }
  }

  else if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
LABEL_15:
    MOLogWrite();
  }

  return v5;
}

uint64_t _PurgeDirectory(void *a1)
{
  v1 = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = [MEMORY[0x1E69A8D78] defaultManager];
  v15 = 0;
  v3 = [v2 itemExistsAtURL:v1 error:&v15];
  v4 = v15;
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    v10 = [v4 domain];
    if ([v10 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v11 = [v5 code];

      if (v11 == 2)
      {
        if (gLogHandle && *(gLogHandle + 44) < 5)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    if (gLogHandle && *(gLogHandle + 44) < 5)
    {
      goto LABEL_16;
    }

LABEL_15:
    v12 = [v1 path];
    MOLogWrite();

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v6 = removefile_state_alloc();
  removefile_state_set(v6, 3u, _RemovefileErrorCallback);
  [v1 fileSystemRepresentation];
  v7 = TraverseDirectoryWithPostTraversal();
  v8 = v5;

  if ((v7 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v14 = [v1 path];
    MOLogWrite();
  }

  removefile_state_free(v6);
  v9 = v17[3];
  v5 = v8;
LABEL_17:

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t _RemovefileErrorCallback(_removefile_state *a1)
{
  dst = 0;
  removefile_state_get(a1, 5u, &dst);
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    strerror(dst);
    MOLogWrite();
  }

  return 0;
}

uint64_t _ProcessDataContainer(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [v5 rootURL];
  v7 = [v5 identifier];

  if (gLogHandle && *(gLogHandle + 44) >= 7)
  {
    [v6 path];
    v17 = v16 = v7;
    v15 = a2;
    MOLogWrite();
  }

  if (a2 == 7 || a2 == 13)
  {
    goto LABEL_11;
  }

  v8 = [v6 URLByAppendingPathComponent:@"tmp" isDirectory:1];
  v9 = _PurgeDirectory(v8);
  if (v9 >= 1 && (!gLogHandle || *(gLogHandle + 44) >= 5))
  {
    v16 = a2;
    v17 = v7;
    v15 = v9;
    MOLogWrite();
  }

  ShouldContinueAfterIncrementingFreed = _ShouldContinueAfterIncrementingFreed(a3, v9);

  if (ShouldContinueAfterIncrementingFreed)
  {
LABEL_11:
    v11 = [v6 MI_URLByAppendingPathComponents:&unk_1F3DE99F0 lastIsDirectory:{1, v15, v16, v17}];
    v12 = _PurgeDirectory(v11);
    if (v12 >= 1 && (!gLogHandle || *(gLogHandle + 44) >= 5))
    {
      MOLogWrite();
    }

    v13 = _ShouldContinueAfterIncrementingFreed(a3, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t _AppURLContainsEmbeddedMobileProvisionFile(void *a1)
{
  v1 = [a1 URLByAppendingPathComponent:@"embedded.mobileprovision" isDirectory:0];
  v2 = [MEMORY[0x1E69A8D78] defaultManager];
  v3 = [v2 itemExistsAtURL:v1];

  return v3;
}

BOOL _AppContainsNetworkExtension(void *a1)
{
  v1 = a1;
  v2 = [v1 firstNetworkExtension];
  v3 = v2;
  if (v2 && (!gLogHandle || *(gLogHandle + 44) >= 5))
  {
    v4 = [v2 bundleID];
    v6 = [v1 bundleURL];
    MOLogWrite();
  }

  return v3 != 0;
}

id _FirstBuildInSeriesForBuildNumber(void *a1)
{
  v1 = a1;
  if (_FirstBuildInSeriesForBuildNumber_onceToken != -1)
  {
    _FirstBuildInSeriesForBuildNumber_cold_1();
  }

  v2 = [MEMORY[0x1E696AE88] scannerWithString:v1];
  v9 = 0;
  if ([v2 scanInt:&v9] && v9 - 100 >= 0xFFFFFF9D)
  {
    v8 = 0;
    v4 = [v2 scanCharactersFromSet:_FirstBuildInSeriesForBuildNumber_uppercaseEnglishCharacterSet intoString:&v8];
    v5 = v8;
    v6 = v5;
    if (v4 && [v5 length] == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d%@1", v9, v6];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t MIPurgeExpendableAppsAndDataForRestore(__CFString *a1, int a2, uint64_t a3, uint64_t a4)
{
  v101[16] = *MEMORY[0x1E69E9840];
  v82 = a4;
  v83 = 0;
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v77 = a3;
    v78 = a4;
    v6 = 78;
    if (a2)
    {
      v6 = 89;
    }

    v75 = a1;
    v76 = v6;
    MOLogWrite();
  }

  context = objc_autoreleasePoolPush();
  v80 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:a1 isDirectory:1 relativeToURL:0];
  v7 = 0x1E695D000uLL;
  if (!a2)
  {
    goto LABEL_29;
  }

  v8 = v80;
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    MOLogWrite();
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = qword_1BF375778[v10];
    v12 = v8;
    v13 = *(v7 + 3952);
    v14 = objc_opt_new();
    *&v88 = MEMORY[0x1E69E9820];
    *(&v88 + 1) = 3221225472;
    *&v89 = ___PurgeExpendableDataContainerContentForContainerClass_block_invoke;
    *(&v89 + 1) = &unk_1E80B9E68;
    v15 = v14;
    *&v90 = v15;
    v16 = MIEnumerateContainersOfClass(v12, v11, &v88);
    if (v16 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v75 = v11;
      v76 = v16;
      MOLogWrite();
    }

    if (![v15 count])
    {

      goto LABEL_26;
    }

    v17 = [v15 sortedArrayUsingComparator:&__block_literal_global_82];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v97 objects:v101 count:16];
    if (v19)
    {
      break;
    }

LABEL_24:

    v7 = 0x1E695D000;
LABEL_26:
    v9 = v10++ > 1;
    if (v10 == 3)
    {

      goto LABEL_29;
    }
  }

  v20 = *v98;
LABEL_18:
  v21 = v8;
  v22 = 0;
  while (1)
  {
    if (*v98 != v20)
    {
      objc_enumerationMutation(v18);
    }

    if (!_ProcessDataContainer(*(*(&v97 + 1) + 8 * v22), v11, &v82))
    {
      break;
    }

    if (v19 == ++v22)
    {
      v19 = [v18 countByEnumeratingWithState:&v97 objects:v101 count:16];
      v8 = v21;
      if (v19)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

  v7 = 0x1E695D000uLL;
  if (!v9)
  {
    goto LABEL_136;
  }

LABEL_29:
  v23 = v80;
  v24 = MICopyCurrentBuildVersion();
  v25 = [v23 MI_URLByAppendingPathComponents:&unk_1F3DE9A08 lastIsDirectory:0];

  if (v24)
  {
    v101[0] = 0;
    v26 = [MEMORY[0x1E695DF90] MI_dictionaryWithContentsOfURL:v25 options:1 error:v101];
    v27 = v101[0];
    v28 = v27;
    if (v26)
    {
      v29 = [v26 objectForKeyedSubscript:@"LastSystemVersion"];
      objc_opt_class();
      v30 = v29;
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      if (v31)
      {
        if (([(__CFString *)v24 isEqualToString:v31]& 1) != 0)
        {
          v34 = _FirstBuildInSeriesForBuildNumber(v24);
          if (v34)
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v76 = v31;
              v77 = v34;
              v75 = @"LastSystemVersion";
              MOLogWrite();
            }

            [v26 setObject:v34 forKeyedSubscript:{@"LastSystemVersion", v75, v76, v77}];
          }

          else
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v75 = v24;
              v76 = @"LastSystemVersion";
              MOLogWrite();
            }

            [v26 removeObjectForKey:{@"LastSystemVersion", v75, v76}];
          }

          goto LABEL_61;
        }

        if (!gLogHandle || *(gLogHandle + 44) >= 3)
        {
          v76 = v31;
          v77 = v24;
          v75 = @"LastSystemVersion";
          MOLogWrite();
        }

        goto LABEL_74;
      }

      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v75 = @"LastSystemVersion";
        MOLogWrite();
      }

      [v26 removeObjectForKey:{@"LastSystemVersion", v75}];
LABEL_61:
      *&v97 = v28;
      v35 = [v26 MI_writeAtomicallyToURLMatchingCurrentFileMetadata:v25 format:200 error:&v97];
      v32 = v97;

      if (v35)
      {
        v28 = v32;
        goto LABEL_74;
      }

      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v33 = [v25 path];
        v75 = v33;
        v76 = v32;
        MOLogWrite();
LABEL_66:
      }
    }

    else
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        v33 = [v25 path];
        v75 = v33;
        v76 = v28;
        MOLogWrite();
        v26 = 0;
        v31 = 0;
        v32 = v28;
        goto LABEL_66;
      }

      v26 = 0;
      v31 = 0;
      v32 = v27;
    }
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v32 = 0;
    v26 = 0;
    v31 = 0;
  }

  v36 = [MEMORY[0x1E69A8D78] defaultManager];
  *&v88 = v32;
  v37 = [v36 removeItemAtURL:v25 error:&v88];
  v28 = v88;

  v38 = gLogHandle;
  if ((v37 & 1) == 0)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_74;
    }

    v75 = [v25 path];
    v76 = v28;
    MOLogWrite();

    v38 = gLogHandle;
  }

  if (!v38 || *(v38 + 44) >= 5)
  {
    MOLogWrite();
  }

LABEL_74:

  v39 = v23;
  v40 = *(v7 + 3952);
  v41 = objc_opt_new();
  *&v88 = MEMORY[0x1E69E9820];
  *(&v88 + 1) = 3221225472;
  *&v89 = ___ResetLaunchServicesDatabase_block_invoke;
  *(&v89 + 1) = &unk_1E80B9E68;
  v42 = v41;
  *&v90 = v42;
  v43 = MEMORY[0x1BFB56710](&v88);
  v44 = MIEnumerateContainersOfClass(v39, 12, v43);
  if (v44 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v75 = @"com.apple.lsd";
    v76 = v44;
    MOLogWrite();
  }

  v45 = MIEnumerateContainersOfClass(v39, 10, v43);

  if (v45 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    v75 = @"com.apple.lsd";
    v76 = v45;
    MOLogWrite();
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v46 = v42;
  v47 = [v46 countByEnumeratingWithState:&v97 objects:v101 count:16];
  if (v47)
  {
    v48 = *v98;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v98 != v48)
        {
          objc_enumerationMutation(v46);
        }

        _ProcessDataContainer(*(*(&v97 + 1) + 8 * i), 0xC, &v82);
      }

      v47 = [v46 countByEnumeratingWithState:&v97 objects:v101 count:16];
    }

    while (v47);
  }

  if ([v46 count])
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    v50 = v39;
    if (!gLogHandle || *(gLogHandle + 44) >= 5)
    {
      MOLogWrite();
    }

    v51 = *(v7 + 3952);
    v52 = objc_opt_new();
    v53 = *(v7 + 3952);
    v54 = objc_opt_new();
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = ___OffloadApps_block_invoke;
    v93[3] = &unk_1E80B9EB0;
    v55 = v54;
    v94 = v55;
    v96 = a3;
    v56 = v52;
    v95 = v56;
    v57 = MIEnumerateContainersOfClass(v50, 1, v93);
    if (v57 && (!gLogHandle || *(gLogHandle + 44) >= 3))
    {
      v75 = v57;
      MOLogWrite();
    }

    if ([v55 count] || objc_msgSend(v56, "count"))
    {
      [v55 sortUsingComparator:&__block_literal_global_146];
      v92 = v57;
      v58 = MIAssumeIdentityOfUsername();
      v59 = v92;

      v57 = v59;
      if (v58)
      {
        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          MOLogWrite();
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v60 = v55;
        v61 = [v60 countByEnumeratingWithState:&v88 objects:v101 count:16];
        if (v61)
        {
          v62 = *v89;
LABEL_108:
          v63 = 0;
          while (1)
          {
            if (*v89 != v62)
            {
              objc_enumerationMutation(v60);
            }

            v64 = *(*(&v88 + 1) + 8 * v63);
            v65 = objc_autoreleasePoolPush();
            LODWORD(v64) = _ProcessBundleContainer(a3, v64, &v82);
            objc_autoreleasePoolPop(v65);
            if (!v64)
            {
              break;
            }

            if (v61 == ++v63)
            {
              v61 = [v60 countByEnumeratingWithState:&v88 objects:v101 count:16];
              if (v61)
              {
                goto LABEL_108;
              }

              goto LABEL_114;
            }
          }

LABEL_127:
        }

        else
        {
LABEL_114:

          v66 = [v56 count];
          if (a3 && v66)
          {
            [v56 sortUsingComparator:&__block_literal_global_146];
            if (!gLogHandle || *(gLogHandle + 44) >= 5)
            {
              MOLogWrite();
            }

            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v60 = v56;
            v67 = [v60 countByEnumeratingWithState:&v84 objects:&v97 count:16];
            if (v67)
            {
              v68 = *v85;
LABEL_121:
              v69 = 0;
              while (1)
              {
                if (*v85 != v68)
                {
                  objc_enumerationMutation(v60);
                }

                v70 = *(*(&v84 + 1) + 8 * v69);
                v71 = objc_autoreleasePoolPush();
                LODWORD(v70) = _ProcessBundleContainer(a3, v70, &v82);
                objc_autoreleasePoolPop(v71);
                if (!v70)
                {
                  break;
                }

                if (v67 == ++v69)
                {
                  v67 = [v60 countByEnumeratingWithState:&v84 objects:&v97 count:16];
                  if (v67)
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_127;
                }
              }
            }

            goto LABEL_127;
          }
        }

        MIRestoreIdentity();
      }

      else if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }
    }
  }

  else
  {

    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

LABEL_136:

  objc_autoreleasePoolPop(context);
  v72 = v83;
  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    MOLogWrite();
  }

  v73 = *MEMORY[0x1E69E9840];
  return v72;
}

void sub_1BF357290(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1BF35714CLL);
    }

    v9 = objc_begin_catch(exc_buf);
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v10 = v9;
    objc_exception_throw(v9);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1BF357374(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1BF357300);
  }

  JUMPOUT(0x1BF35743CLL);
}

void sub_1BF357388(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1BF3573A8);
}

void sub_1BF35739C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v9 = objc_begin_catch(exception_object);
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      objc_end_catch();
      JUMPOUT(0x1BF35720CLL);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1BF357408(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1BF357414);
  }

  _Unwind_Resume(a1);
}

uint64_t _ProcessBundleContainer(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  v6 = [v5 rootURL];
  v7 = [v5 identifier];
  if (a1 != 1)
  {
LABEL_4:
    v9 = [v5 appURL];
    if (!v9)
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_12;
      }

LABEL_11:
      v10 = [v6 path];
      MOLogWrite();

LABEL_12:
      ShouldContinueAfterIncrementingFreed = 1;
LABEL_95:

      goto LABEL_96;
    }

    if ([v5 isPlaceholder])
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v18 = v5;
    v19 = [v18 identifier];
    v20 = [v18 appURL];
    v63 = MICopyCurrentBuildVersion();
    v21 = [MIPlaceholderConstructor alloc];
    v75 = 0;
    v70 = v20;
    v22 = [(MIPlaceholderConstructor *)v21 initWithSource:v20 byPreservingFullInfoPlist:0 error:&v75];
    v23 = v75;
    v60 = a3;
    v62 = v19;
    v64 = v22;
    if (v22)
    {
      if (a1 == 2)
      {
LABEL_22:
        if (!gLogHandle || *(gLogHandle + 44) >= 5)
        {
          [v70 path];
          v54 = v51 = v19;
          MOLogWrite();
        }

        v24 = [v18 rootURL];
        v25 = [v24 URLByAppendingPathComponent:@"com.apple.emergencyoffload.temp" isDirectory:1];

        v26 = [v18 rootURL];
        v27 = [v26 URLByAppendingPathComponent:@"BundleMetadata.plist" isDirectory:0];

        v74 = v23;
        v59 = v27;
        v28 = [MEMORY[0x1E69A8D70] metadataFromURL:v27 error:&v74];
        v29 = v74;

        v68 = v6;
        if (v28)
        {
          [v28 setInstallType:9];
          v30 = [MEMORY[0x1E695DF00] now];
          [v28 setInstallDate:v30];

          if (v63)
          {
            [v28 setInstallBuildVersion:?];
          }

          [(MIPlaceholderConstructor *)v64 setPerformPlaceholderInstallActions:1];
          v31 = [v28 alternateIconName];
          [(MIPlaceholderConstructor *)v64 setAlternateIconName:v31];

          v73 = v29;
          LOBYTE(v31) = [(MIPlaceholderConstructor *)v64 materializeIntoBundleDirectory:v25 error:&v73];
          v32 = v73;

          if ((v31 & 1) == 0)
          {
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              v52 = [v25 path];
              v55 = v32;
              MOLogWrite();
            }

            goto LABEL_59;
          }

          if (renamex_np([v25 fileSystemRepresentation], objc_msgSend(v70, "fileSystemRepresentation"), 2u))
          {
            v33 = *__error();
            if (!gLogHandle || *(gLogHandle + 44) >= 3)
            {
              __errnuma = v33;
              v34 = [v25 path];
              v55 = [v70 path];
              v56 = strerror(__errnuma);
              v52 = v34;
              MOLogWrite();
            }

LABEL_59:
            v38 = 0;
LABEL_101:

            if (v25)
            {
              v49 = [MEMORY[0x1E69A8D78] defaultManager];
              v71 = 0;
              v50 = [v49 removeItemAtURL:v25 error:&v71];
              v46 = v71;

              if ((v50 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
              {
                v53 = [v25 path];
                MOLogWrite();
              }
            }

            else
            {
              v46 = 0;
            }

            v6 = v68;
            v47 = v59;
            if (v38 >= 1 && (!gLogHandle || *(gLogHandle + 44) >= 5))
            {
              MOLogWrite();
            }

            goto LABEL_94;
          }

          v72 = v32;
          v41 = [v28 serializeToURL:v59 error:&v72];
          v29 = v72;

          if (v41)
          {
            *__errnum = v29;
            v38 = _PurgeDirectory(v25);
            v42 = [MEMORY[0x1E69A8D78] defaultManager];
            v43 = [v42 diskUsageForURL:v70];

            v44 = v38 - v43;
            if (v38 <= v43)
            {
              if (!gLogHandle || *(gLogHandle + 44) >= 3)
              {
                v55 = v43;
                v56 = v38;
                v52 = v62;
                MOLogWrite();
              }

              v32 = *__errnum;
            }

            else
            {
              if (!gLogHandle || *(gLogHandle + 44) >= 5)
              {
                v55 = v38;
                v56 = v43;
                v52 = v62;
                MOLogWrite();
              }

              v32 = *__errnum;
              v38 = v44;
            }

            goto LABEL_101;
          }

          if (!gLogHandle || *(gLogHandle + 44) >= 3)
          {
            v52 = [v59 path];
            v55 = v29;
            MOLogWrite();
          }
        }

        v38 = 0;
        v32 = v29;
        goto LABEL_101;
      }

      v37 = [(MIPlaceholderConstructor *)v22 entitlements];
      if (MIHasBetaReportsActiveEntitlement(v37))
      {
        if (gLogHandle && *(gLogHandle + 44) < 5)
        {
          goto LABEL_92;
        }
      }

      else if (MIHasMarketplaceEntitlement(v37))
      {
        if (gLogHandle && *(gLogHandle + 44) < 5)
        {
          goto LABEL_92;
        }
      }

      else if (_AppContainsNetworkExtension(v64))
      {
        if (gLogHandle && *(gLogHandle + 44) < 5)
        {
          goto LABEL_92;
        }
      }

      else if ([(MIPlaceholderConstructor *)v64 isLaunchProhibited])
      {
        if (gLogHandle && *(gLogHandle + 44) < 5)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (!_AppURLContainsEmbeddedMobileProvisionFile(v70))
        {

          goto LABEL_22;
        }

        if (gLogHandle && *(gLogHandle + 44) < 5)
        {
          goto LABEL_92;
        }
      }

      v45 = [v70 path];
      MOLogWrite();
    }

    else
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_93;
      }

      v37 = [v70 path];
      MOLogWrite();
    }

LABEL_92:

LABEL_93:
    v46 = 0;
    v47 = 0;
    v28 = 0;
    v25 = 0;
    v38 = 0;
LABEL_94:
    ShouldContinueAfterIncrementingFreed = _ShouldContinueAfterIncrementingFreed(v60, v38);

    goto LABEL_95;
  }

  v8 = v5;
  if ([v8 isAppleApp])
  {

    goto LABEL_4;
  }

  v67 = v6;
  v12 = [v8 rootURL];
  v13 = [v8 identifier];
  v14 = [v12 URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];
  v75 = 0;
  v15 = [MEMORY[0x1E69A8DB8] metadataFromPlistAtURL:v14 error:&v75];
  v69 = v75;
  if (v15)
  {
    v16 = [v15 itemID];
    v17 = v16;
    if (!v16 || ![v16 unsignedLongLongValue])
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        goto LABEL_35;
      }

      goto LABEL_85;
    }

    if ([v15 sideLoadedDeviceBasedVPP])
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
LABEL_35:
        v35 = [v12 path];
        MOLogWrite();
LABEL_36:
        v36 = v69;

LABEL_86:
        goto LABEL_87;
      }

LABEL_85:
      v36 = v69;
      goto LABEL_86;
    }

    if ([v15 deviceBasedVPP])
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        goto LABEL_35;
      }

      goto LABEL_85;
    }

    v61 = a3;
    v39 = [v15 appleID];

    if (!v39)
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        goto LABEL_35;
      }

      goto LABEL_85;
    }

    v40 = [v15 purchaserID];
    v35 = v40;
    if (v40 && [v40 unsignedLongLongValue])
    {
      v65 = [v15 altDSID];

      if (v65)
      {

        v6 = v67;
        a3 = v61;
        goto LABEL_4;
      }

      if (gLogHandle && *(gLogHandle + 44) < 5)
      {
        goto LABEL_36;
      }
    }

    else if (gLogHandle && *(gLogHandle + 44) < 5)
    {
      goto LABEL_36;
    }

    v66 = [v12 path];
    MOLogWrite();

    goto LABEL_36;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 5)
  {
    v17 = [v14 path];
    v36 = v69;
    MOLogWrite();
    goto LABEL_86;
  }

LABEL_87:
  ShouldContinueAfterIncrementingFreed = 1;
  v6 = v67;
LABEL_96:

  return ShouldContinueAfterIncrementingFreed;
}

void sub_1BF358550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id MobileInstallationHelperServiceProtocolInterface()
{
  os_unfair_lock_lock(&MobileInstallationHelperServiceProtocolInterface_lock);
  WeakRetained = objc_loadWeakRetained(&MobileInstallationHelperServiceProtocolInterface_weakInterface);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3DEF088];
    v1 = MEMORY[0x1E695DFD8];
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = [v1 setWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
    [WeakRetained setClasses:v5 forSelector:sel_stagingLocationForInstallLocation_withinStagingSubsytem_usingUniqueName_completion_ argumentIndex:0 ofReply:0];

    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [WeakRetained setClasses:v6 forSelector:sel_stagingLocationForSystemContentWithinSubsystem_completion_ argumentIndex:0 ofReply:1];

    v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [WeakRetained setClasses:v7 forSelector:sel_stagingLocationForUserContentWithinSubsystem_completion_ argumentIndex:0 ofReply:1];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    [WeakRetained setClasses:v10 forSelector:sel_allStagingLocationsWithinSubsystem_completion_ argumentIndex:0 ofReply:1];

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [WeakRetained setClasses:v11 forSelector:sel_stagingLocationForURL_withinStagingSubsytem_usingUniqueName_completion_ argumentIndex:0 ofReply:1];

    objc_storeWeak(&MobileInstallationHelperServiceProtocolInterface_weakInterface, WeakRetained);
  }

  os_unfair_lock_unlock(&MobileInstallationHelperServiceProtocolInterface_lock);

  return WeakRetained;
}

void sub_1BF358C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BF363BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF363EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF3640E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF36430C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF364528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1BF364754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF3648F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF364AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MobileInstallationInstallApp(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v32 = a1;
  v31 = a2;
  v30 = a4;
  v14 = a5;
  v15 = a9;
  v16 = a10;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__1;
  v63 = __Block_byref_object_dispose__1;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__1;
  v57 = __Block_byref_object_dispose__1;
  v58 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__1;
  v49 = __Block_byref_object_dispose__1;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __MobileInstallationInstallApp_block_invoke;
  v37[3] = &unk_1E80BA268;
  v40 = v51;
  v17 = v15;
  v39 = v17;
  v18 = v14;
  v38 = v18;
  v19 = MEMORY[0x1BFB56710](v37);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __MobileInstallationInstallApp_block_invoke_3;
  v34[3] = &unk_1E80BA240;
  v20 = v16;
  v36 = v20;
  v21 = v18;
  v35 = v21;
  v22 = MEMORY[0x1BFB56710](v34);
  v23 = [MIInstallerClient installerWithProgressBlock:v19 releaseTerminationAssertionBlock:v22];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __MobileInstallationInstallApp_block_invoke_5;
  v33[3] = &unk_1E80BA2B8;
  v33[4] = &v45;
  v33[5] = &v53;
  v33[6] = &v59;
  v33[7] = &v41;
  [v23 installURL:v32 identity:v31 targetingDomain:a3 withOptions:v30 returningResultInfo:a6 != 0 completion:v33];

  if (v42[3])
  {
    if (a6)
    {
      *a6 = v60[5];
    }
  }

  else
  {
    if (a8)
    {
      *a8 = v46[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v26 = v46[5];
      MOLogWrite();
    }

    _SendError(v19, v46[5]);
  }

  if (a7)
  {
    *a7 = v54[5];
  }

  v24 = *(v42 + 24);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  return v24;
}

void sub_1BF364FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 232), 8);
  _Block_object_dispose((v42 - 200), 8);
  _Block_object_dispose((v42 - 152), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationInstallApp_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v5 = [v3 objectForKeyedSubscript:@"Error"];

    if (v5)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[4];
      if (v7)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __MobileInstallationInstallApp_block_invoke_2;
        v8[3] = &unk_1E80BA240;
        v10 = v6;
        v9 = v4;
        dispatch_sync(v7, v8);
      }

      else
      {
        (v6)[2](v6, v4);
      }
    }
  }
}

void __MobileInstallationInstallApp_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __MobileInstallationInstallApp_block_invoke_4;
      block[3] = &unk_1E80BA290;
      v6 = v2;
      dispatch_sync(v3, block);
    }

    else
    {
      v4 = v2[2];

      v4();
    }
  }
}

void __MobileInstallationInstallApp_block_invoke_5(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a5);
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *(*(a1[7] + 8) + 24) = a2;
  }
}

void _SendError(void *a1, void *a2)
{
  v15 = a1;
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  if (v4)
  {
    v5 = [v3 domain];
    v6 = v5;
    if (v5 != *MEMORY[0x1E696A250])
    {

LABEL_4:
      v7 = [v3 userInfo];
      v8 = [v7 objectForKeyedSubscript:@"LegacyErrorString"];

      v9 = v8;
      if (!v8)
      {
        if (gLogHandle && *(gLogHandle + 44) >= 7)
        {
          MOLogWrite();
        }

        v9 = @"APIInternalError";
      }

      [v4 setObject:v9 forKeyedSubscript:@"Error"];
      v10 = [v3 userInfo];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A8D08]];

      if (v11)
      {
        [v4 setObject:v11 forKeyedSubscript:@"ErrorDetail"];
      }

      goto LABEL_19;
    }

    if ([v3 code] == 4097)
    {
    }

    else
    {
      v12 = [v3 code];

      if (v12 != 4099)
      {
        goto LABEL_4;
      }
    }

    [v4 setObject:@"ServiceConnectionInterrupted" forKeyedSubscript:@"Error"];
LABEL_19:
    v13 = [v3 userInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

    if (v14)
    {
      [v4 setObject:v14 forKeyedSubscript:@"ErrorDescription"];
    }

    v15[2](v15, v4);

    goto LABEL_22;
  }

  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

LABEL_22:
}

id MobileInstallationStageApplicationUpdate(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v12 = objc_opt_new();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __MobileInstallationStageApplicationUpdate_block_invoke;
  v16[3] = &unk_1E80BA2E0;
  v16[4] = &v17;
  v16[5] = &v23;
  [v12 stageInstallURL:v9 identity:v10 targetingDomain:a3 withOptions:v11 completion:v16];

  if (!v18[5])
  {
    if (a5)
    {
      *a5 = v24[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v15 = v24[5];
      MOLogWrite();
    }
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

void sub_1BF365734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void __MobileInstallationStageApplicationUpdate_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

uint64_t MobileInstallationInstallParallelPlaceholderForStagedUpdate(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v29 = a1;
  v28 = a2;
  v13 = a3;
  v14 = a7;
  v15 = a8;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__1;
  v60 = __Block_byref_object_dispose__1;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__1;
  v54 = __Block_byref_object_dispose__1;
  v55 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__1;
  v46 = __Block_byref_object_dispose__1;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __MobileInstallationInstallParallelPlaceholderForStagedUpdate_block_invoke;
  v34[3] = &unk_1E80BA268;
  v37 = v48;
  v16 = v14;
  v36 = v16;
  v17 = v13;
  v35 = v17;
  v18 = MEMORY[0x1BFB56710](v34);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __MobileInstallationInstallParallelPlaceholderForStagedUpdate_block_invoke_3;
  v31[3] = &unk_1E80BA240;
  v19 = v15;
  v33 = v19;
  v20 = v17;
  v32 = v20;
  v21 = MEMORY[0x1BFB56710](v31);
  v22 = [MIInstallerClient installerWithProgressBlock:v18 releaseTerminationAssertionBlock:v21];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __MobileInstallationInstallParallelPlaceholderForStagedUpdate_block_invoke_5;
  v30[3] = &unk_1E80BA2B8;
  v30[4] = &v42;
  v30[5] = &v50;
  v30[6] = &v56;
  v30[7] = &v38;
  [v22 installParallelPlaceholderForStagedIdentifier:v29 fromURL:v28 returningResultInfo:a4 != 0 completion:v30];

  if (v39[3])
  {
    if (a4)
    {
      *a4 = v57[5];
    }

    if (a5)
    {
      *a5 = v51[5];
    }
  }

  else
  {
    if (a6)
    {
      *a6 = v43[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v25 = v43[5];
      MOLogWrite();
    }

    _SendError(v18, v43[5]);
  }

  v23 = *(v39 + 24);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  return v23;
}

void sub_1BF365BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 232), 8);
  _Block_object_dispose((v40 - 200), 8);
  _Block_object_dispose((v40 - 152), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationInstallParallelPlaceholderForStagedUpdate_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v5 = [v3 objectForKeyedSubscript:@"Error"];

    if (v5)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[4];
      if (v7)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __MobileInstallationInstallParallelPlaceholderForStagedUpdate_block_invoke_2;
        v8[3] = &unk_1E80BA240;
        v10 = v6;
        v9 = v4;
        dispatch_sync(v7, v8);
      }

      else
      {
        (v6)[2](v6, v4);
      }
    }
  }
}

void __MobileInstallationInstallParallelPlaceholderForStagedUpdate_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __MobileInstallationInstallParallelPlaceholderForStagedUpdate_block_invoke_4;
      block[3] = &unk_1E80BA290;
      v6 = v2;
      dispatch_sync(v3, block);
    }

    else
    {
      v4 = v2[2];

      v4();
    }
  }
}

void __MobileInstallationInstallParallelPlaceholderForStagedUpdate_block_invoke_5(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a5);
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *(*(a1[7] + 8) + 24) = a2;
  }
}

uint64_t MobileInstallationMakeStagedUpdateLiveForIdentifier(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v26 = a1;
  v11 = a2;
  v12 = a6;
  v13 = a7;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__1;
  v57 = __Block_byref_object_dispose__1;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__1;
  v51 = __Block_byref_object_dispose__1;
  v52 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__1;
  v43 = __Block_byref_object_dispose__1;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __MobileInstallationMakeStagedUpdateLiveForIdentifier_block_invoke;
  v31[3] = &unk_1E80BA268;
  v34 = v45;
  v14 = v12;
  v33 = v14;
  v15 = v11;
  v32 = v15;
  v16 = MEMORY[0x1BFB56710](v31);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __MobileInstallationMakeStagedUpdateLiveForIdentifier_block_invoke_3;
  v28[3] = &unk_1E80BA240;
  v17 = v13;
  v30 = v17;
  v18 = v15;
  v29 = v18;
  v19 = MEMORY[0x1BFB56710](v28);
  v20 = [MIInstallerClient installerWithProgressBlock:v16 releaseTerminationAssertionBlock:v19];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __MobileInstallationMakeStagedUpdateLiveForIdentifier_block_invoke_5;
  v27[3] = &unk_1E80BA2B8;
  v27[4] = &v39;
  v27[5] = &v47;
  v27[6] = &v53;
  v27[7] = &v35;
  [v20 finalizeStagedInstallForIdentifier:v26 returningResultInfo:a3 != 0 completion:v27];

  if (v36[3])
  {
    if (a3)
    {
      *a3 = v54[5];
    }

    if (a4)
    {
      *a4 = v48[5];
    }
  }

  else
  {
    if (a5)
    {
      *a5 = v40[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v23 = v40[5];
      MOLogWrite();
    }

    _SendError(v16, v40[5]);
  }

  v21 = *(v36 + 24);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  return v21;
}

void sub_1BF3662B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 232), 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 152), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationMakeStagedUpdateLiveForIdentifier_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v5 = [v3 objectForKeyedSubscript:@"Error"];

    if (v5)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[4];
      if (v7)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __MobileInstallationMakeStagedUpdateLiveForIdentifier_block_invoke_2;
        v8[3] = &unk_1E80BA240;
        v10 = v6;
        v9 = v4;
        dispatch_sync(v7, v8);
      }

      else
      {
        (v6)[2](v6, v4);
      }
    }
  }
}

void __MobileInstallationMakeStagedUpdateLiveForIdentifier_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __MobileInstallationMakeStagedUpdateLiveForIdentifier_block_invoke_4;
      block[3] = &unk_1E80BA290;
      v6 = v2;
      dispatch_sync(v3, block);
    }

    else
    {
      v4 = v2[2];

      v4();
    }
  }
}

void __MobileInstallationMakeStagedUpdateLiveForIdentifier_block_invoke_5(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a5);
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *(*(a1[7] + 8) + 24) = a2;
  }
}

uint64_t MobileInstallationCancelUpdateForStagedIdentifiersWithError(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationCancelUpdateForStagedIdentifiersWithError_block_invoke;
  v8[3] = &unk_1E80BA308;
  v8[4] = &v9;
  v8[5] = &v13;
  [v4 cancelUpdateForStagedIdentifiers:v3 completion:v8];

  if ((v10[3] & 1) == 0)
  {
    if (a2)
    {
      *a2 = v14[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v7 = v14[5];
      MOLogWrite();
    }
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v5;
}

void sub_1BF36674C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void __MobileInstallationCancelUpdateForStagedIdentifiersWithError_block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

id MobileInstallationGetAllStagedUpdateIdentifiers(void *a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v2 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MobileInstallationGetAllStagedUpdateIdentifiers_block_invoke;
  v6[3] = &unk_1E80B9DD8;
  v6[4] = &v13;
  v6[5] = &v7;
  [v2 allStagedUpdatesWithCompletion:v6];

  if (!v8[5])
  {
    if (a1)
    {
      *a1 = v14[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v5 = v14[5];
      MOLogWrite();
    }
  }

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v3;
}

void sub_1BF3669A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationGetAllStagedUpdateIdentifiers_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

id MobileInstallationRegisterPlaceholderForReference(void *a1, void *a2)
{
  v3 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationRegisterPlaceholderForReference_block_invoke;
  v8[3] = &unk_1E80BA330;
  v8[4] = &v15;
  v8[5] = &v9;
  [v4 registerPlaceholderForReference:v3 completion:v8];

  if (!v16[5])
  {
    if (a2)
    {
      *a2 = v10[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v7 = v10[5];
      MOLogWrite();
    }
  }

  v5 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void sub_1BF366C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationRegisterPlaceholderForReference_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

uint64_t MobileInstallationRevertForInstallCoordinationWithError(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = MEMORY[0x1E69A8D68];
  v12 = a6;
  v13 = a3;
  v14 = a2;
  v15 = a1;
  v16 = [[v11 alloc] initWithBundleID:v15];

  v17 = MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError(v16, v14, v13, a4, a5, v12, 0);
  return v17;
}

uint64_t MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v60 = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__1;
  v57[4] = __Block_byref_object_dispose__1;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__1;
  v55 = __Block_byref_object_dispose__1;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__1;
  v45 = __Block_byref_object_dispose__1;
  v46 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError_block_invoke;
  v37[3] = &unk_1E80BA268;
  v40 = v59;
  v17 = v15;
  v39 = v17;
  v18 = v14;
  v38 = v18;
  v19 = MEMORY[0x1BFB56710](v37);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError_block_invoke_3;
  v34[3] = &unk_1E80BA240;
  v20 = v16;
  v36 = v20;
  v21 = v18;
  v35 = v21;
  v23 = MEMORY[0x1BFB56710](v34);
  if (v12)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = [MIInstallerClient installerWithProgressBlock:v19 releaseTerminationAssertionBlock:v23];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError_block_invoke_5;
    v33[3] = &unk_1E80BA2B8;
    v33[4] = &v41;
    v33[5] = v57;
    v33[6] = &v51;
    v33[7] = &v47;
    [v25 revertIdentity:v12 withOptions:v13 completion:v33];

    objc_autoreleasePoolPop(v24);
  }

  else
  {
    v26 = _CreateAndLogError("MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError", 1872, *MEMORY[0x1E69A8D00], 25, 0, &unk_1F3DE99C8, @"Bundle ID supplied to revert was nil.", v22, v30);
    v27 = v42[5];
    v42[5] = v26;
  }

  if (a4 && *(v48 + 24))
  {
    *a4 = v52[5];
  }

  else if ((v48[3] & 1) == 0)
  {
    if (a5)
    {
      *a5 = v42[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v31 = v42[5];
      MOLogWrite();
    }

    _SendError(v19, v42[5]);
  }

  v28 = *(v48 + 24);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);

  return v28;
}

void sub_1BF3671B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 232), 8);
  _Block_object_dispose((v38 - 184), 8);
  _Block_object_dispose((v38 - 136), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v5 = [v3 objectForKeyedSubscript:@"Error"];

    if (v5)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[4];
      if (v7)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError_block_invoke_2;
        v8[3] = &unk_1E80BA240;
        v10 = v6;
        v9 = v4;
        dispatch_sync(v7, v8);
      }

      else
      {
        (v6)[2](v6, v4);
      }
    }
  }
}

void __MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError_block_invoke_4;
      block[3] = &unk_1E80BA290;
      v6 = v2;
      dispatch_sync(v3, block);
    }

    else
    {
      v4 = v2[2];

      v4();
    }
  }
}

void __MobileInstallationRevertApplicationWithIdentityAndAssertionBlockWithError_block_invoke_5(void *a1, char a2, void *a3, void *a4, void *a5)
{
  v12 = a3;
  v10 = a4;
  v11 = a5;
  if (a2)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
    *(*(a1[7] + 8) + 24) = 1;
  }

  else
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a5);
  }
}

id MobileInstallationUninstallForInstallCoordinationWithError(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v5 = MEMORY[0x1E69A8D58];
  v6 = MobileInstallationICLRecordsUninstallForInstallCoordinationWithError(a1, a2, a3, a4, a5);
  v7 = [v5 uninstallRecordArrayToDictionary:v6];

  return v7;
}

id MobileInstallationICLRecordsUninstallForInstallCoordinationWithError(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__1;
  v39 = __Block_byref_object_dispose__1;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __MobileInstallationICLRecordsUninstallForInstallCoordinationWithError_block_invoke;
  v25[3] = &unk_1E80BA268;
  v28 = v41;
  v13 = v12;
  v27 = v13;
  v14 = v11;
  v26 = v14;
  v15 = MEMORY[0x1BFB56710](v25);
  v16 = [MIInstallerClient installerWithProgressBlock:v13];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __MobileInstallationICLRecordsUninstallForInstallCoordinationWithError_block_invoke_3;
  v21[3] = &unk_1E80BA358;
  v23 = &v29;
  v17 = v15;
  v22 = v17;
  v24 = &v35;
  [v16 uninstallIdentifiers:v9 withOptions:v10 completion:v21];

  if (!v36[5])
  {
    if (a4)
    {
      *a4 = v30[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v20 = v30[5];
      MOLogWrite();
    }
  }

  v18 = v36[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(v41, 8);

  return v18;
}

void sub_1BF3677F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationICLRecordsUninstallForInstallCoordinationWithError_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v5 = [v3 objectForKeyedSubscript:@"Error"];

    if (v5)
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = a1[4];
      if (v7)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __MobileInstallationICLRecordsUninstallForInstallCoordinationWithError_block_invoke_2;
        v8[3] = &unk_1E80BA240;
        v10 = v6;
        v9 = v4;
        dispatch_sync(v7, v8);
      }

      else
      {
        (v6)[2](v6, v4);
      }
    }
  }
}

void __MobileInstallationICLRecordsUninstallForInstallCoordinationWithError_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    _SendError(*(a1 + 32), v6);
  }

  else if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }
}

uint64_t MobileInstallationUninstallAppWithIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MobileInstallationUninstallAppWithIdentity_block_invoke;
  v11[3] = &unk_1E80BA380;
  v11[4] = &v12;
  v11[5] = &v18;
  [v7 uninstallIdentity:v5 withOptions:v6 completion:v11];

  if ((v19[3] & 1) == 0)
  {
    if (a3)
    {
      *a3 = v13[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v10 = v13[5];
      MOLogWrite();
    }
  }

  v8 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void sub_1BF367B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationUninstallAppWithIdentity_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id MIFinalizeReferenceForInstalledAppWithError(void *a1, void *a2)
{
  v3 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MIFinalizeReferenceForInstalledAppWithError_block_invoke;
  v8[3] = &unk_1E80BA330;
  v8[4] = &v9;
  v8[5] = &v15;
  [v4 finalizeReference:v3 withCompletion:v8];

  if (!v10[5])
  {
    if (a2)
    {
      *a2 = v16[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v7 = v16[5];
      MOLogWrite();
    }
  }

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void sub_1BF367DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void __MIFinalizeReferenceForInstalledAppWithError_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

id MIAcquireReferenceForInstalledAppWithError(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v9 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MIAcquireReferenceForInstalledAppWithError_block_invoke;
  v13[3] = &unk_1E80BA3A8;
  v13[4] = &v14;
  v13[5] = &v20;
  [v9 acquireReferenceforInstalledAppWithIdentity:v7 inDomain:a2 matchingInstallSessionID:v8 withCompletion:v13];

  if (!v15[5])
  {
    if (a4)
    {
      *a4 = v21[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v12 = v21[5];
      MOLogWrite();
    }
  }

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void sub_1BF368084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void __MIAcquireReferenceForInstalledAppWithError_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

uint64_t MIInvalidateReferenceForInstalledAppWithError(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MIInvalidateReferenceForInstalledAppWithError_block_invoke;
  v8[3] = &unk_1E80BA380;
  v8[4] = &v13;
  v8[5] = &v9;
  [v4 invalidateReference:v3 withCompletion:v8];

  if ((v10[3] & 1) == 0)
  {
    if (a2)
    {
      *a2 = v14[5];
    }

    else if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v7 = v14[5];
      MOLogWrite();
    }
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v5;
}

void sub_1BF3682B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void __MIInvalidateReferenceForInstalledAppWithError_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MobileInstallationLookupUninstalled(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (!a1)
  {
    v4 = objc_opt_new();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __MobileInstallationLookupUninstalled_block_invoke;
    v6[3] = &unk_1E80BA3D0;
    v6[4] = &v7;
    [v4 lookupUninstalledWithOptions:0 completion:v6];

    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  objc_autoreleasePoolPop(v2);
  return v3;
}

void sub_1BF368434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationLookupUninstalled_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

uint64_t MobileInstallationClearUninstalled(const __CFArray *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a2)
  {
    v5 = 0xFFFFFFFFLL;
  }

  else if (CFArrayGetCount(a1))
  {
    v6 = objc_opt_new();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __MobileInstallationClearUninstalled_block_invoke;
    v8[3] = &unk_1E80B9D88;
    v8[4] = &v9;
    [v6 clearUninstalledIdentifiers:a1 withOptions:0 completion:v8];

    v5 = *(v10 + 6);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v9, 8);
  objc_autoreleasePoolPop(v4);
  return v5;
}

void sub_1BF3685FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MobileInstallationClearUninstalled_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v3 = gLogHandle;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v6 = v4;
      v3 = MOLogWrite();
      v4 = v6;
    }

    *(*(*(a1 + 32) + 8) + 24) = -1;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

uint64_t MobileInstallationLookupSystemAppState(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MobileInstallationLookupSystemAppState_block_invoke;
  v6[3] = &unk_1E80BA3D0;
  v6[4] = &v7;
  [v3 lookupSystemAppStateWithOptions:a1 completion:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_1BF368778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationLookupSystemAppState_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

uint64_t MobileInstallationUpdateSystemAppState(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationUpdateSystemAppState_block_invoke;
  v8[3] = &unk_1E80B9D88;
  v8[4] = &v9;
  [v5 updateSystemAppStateForIdentifier:a1 appState:a2 completion:v8];

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  objc_autoreleasePoolPop(v4);
  return v6;
}

void sub_1BF368928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MobileInstallationUpdateSystemAppState_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v3 = gLogHandle;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      v6 = v4;
      v3 = MOLogWrite();
      v4 = v6;
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

uint64_t MobileInstallationCopyInstalledDeveloperAppsForLaunchServices()
{
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  return 0;
}

uint64_t MobileInstallationRegisterContentsForDiskImageAtURL(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationRegisterContentsForDiskImageAtURL_block_invoke;
  v8[3] = &unk_1E80BA380;
  v8[4] = &v13;
  v8[5] = &v9;
  [v5 registerContentsForDiskImageAtURL:v3 completion:v8];

  objc_autoreleasePoolPop(v4);
  v6 = *(v10 + 24);
  if (a2 && (v10[3] & 1) == 0)
  {
    *a2 = v14[5];
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6 & 1;
}

void sub_1BF368B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationRegisterContentsForDiskImageAtURL_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MobileInstallationUnregisterContentsForDiskImageAtURL(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationUnregisterContentsForDiskImageAtURL_block_invoke;
  v8[3] = &unk_1E80BA380;
  v8[4] = &v13;
  v8[5] = &v9;
  [v5 unregisterContentsForDiskImageAtURL:v3 completion:v8];

  objc_autoreleasePoolPop(v4);
  v6 = *(v10 + 24);
  if (a2 && (v10[3] & 1) == 0)
  {
    *a2 = v14[5];
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6 & 1;
}

void sub_1BF368DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationUnregisterContentsForDiskImageAtURL_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MobileInstallationRegisterContentsOnOSModuleAtURL(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationRegisterContentsOnOSModuleAtURL_block_invoke;
  v8[3] = &unk_1E80BA380;
  v8[4] = &v13;
  v8[5] = &v9;
  [v5 registerContentsOnOSModuleAtURL:v3 completion:v8];

  objc_autoreleasePoolPop(v4);
  v6 = *(v10 + 24);
  if (a2 && (v10[3] & 1) == 0)
  {
    *a2 = v14[5];
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6 & 1;
}

void sub_1BF368FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationRegisterContentsOnOSModuleAtURL_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MobileInstallationUnregisterContentsOnOSModuleAtURL(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationUnregisterContentsOnOSModuleAtURL_block_invoke;
  v8[3] = &unk_1E80BA380;
  v8[4] = &v13;
  v8[5] = &v9;
  [v5 unregisterContentsOnOSModuleAtURL:v3 completion:v8];

  objc_autoreleasePoolPop(v4);
  v6 = *(v10 + 24);
  if (a2 && (v10[3] & 1) == 0)
  {
    *a2 = v14[5];
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6 & 1;
}

void sub_1BF369200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationUnregisterContentsOnOSModuleAtURL_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MobileInstallationReconcileContentsOnKnownOSModules(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationReconcileContentsOnKnownOSModules_block_invoke;
  v8[3] = &unk_1E80BA380;
  v8[4] = &v13;
  v8[5] = &v9;
  [v5 reconcileContentsOnKnownOSModules:v3 completion:v8];

  objc_autoreleasePoolPop(v4);
  v6 = *(v10 + 24);
  if (a2 && (v10[3] & 1) == 0)
  {
    *a2 = v14[5];
    v6 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v6 & 1;
}

void sub_1BF36942C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationReconcileContentsOnKnownOSModules_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id MobileInstallationEnumerateAllInstalledItemDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v5 = [MIInstallerClient installerWithAppDictionaryEnumerator:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationEnumerateAllInstalledItemDictionaries_block_invoke;
  v8[3] = &unk_1E80B9D88;
  v8[4] = &v9;
  [v5 enumerateInstalledAppsWithOptions:v3 completion:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1BF369628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MobileInstallationUpdatePlaceholderMetadata(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v11 = objc_opt_new();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __MobileInstallationUpdatePlaceholderMetadata_block_invoke;
  v14[3] = &unk_1E80B9D88;
  v14[4] = &v15;
  [v11 updatePlaceholderMetadataForApp:v9 installType:a2 failureReason:a3 underlyingError:v10 failureSource:a5 completion:v14];

  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

void sub_1BF3697A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MobileInstallationCopyAppMetadata(void *a1, void *a2)
{
  v3 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationCopyAppMetadata_block_invoke;
  v8[3] = &unk_1E80BA3F8;
  v8[4] = &v9;
  v8[5] = &v15;
  [v4 getAppMetadataForApp:v3 completion:v8];

  v5 = v10[5];
  if (a2 && !v5)
  {
    *a2 = v16[5];
    v5 = v10[5];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void sub_1BF369950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationCopyAppMetadata_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id MobileInstallationCopyFrameworkInfoForLaunchServices(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MobileInstallationCopyFrameworkInfoForLaunchServices_block_invoke;
  v11[3] = &unk_1E80BA420;
  v11[4] = &v18;
  v11[5] = &v12;
  [v7 fetchInfoForFrameworkAtURL:v5 options:v6 completion:v11];

  v8 = v19[5];
  if (a3 && !v8)
  {
    *a3 = v13[5];
    v8 = v19[5];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void sub_1BF369B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationCopyFrameworkInfoForLaunchServices_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E69A8D38] bundleRecordArrayToInfoDictionaryArray:a2];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

id MobileInstallationGetFrameworkBundleRecordsForLaunchServices(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MobileInstallationGetFrameworkBundleRecordsForLaunchServices_block_invoke;
  v11[3] = &unk_1E80BA420;
  v11[4] = &v18;
  v11[5] = &v12;
  [v7 fetchInfoForFrameworkAtURL:v5 options:v6 completion:v11];

  v8 = v19[5];
  if (a3 && !v8)
  {
    *a3 = v13[5];
    v8 = v19[5];
  }

  v9 = v8;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v9;
}

void sub_1BF369DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationGetFrameworkBundleRecordsForLaunchServices_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

id MobileInstallationCopyContainerizedAppInfoForLaunchServices(void *a1, void *a2, void *a3)
{
  v3 = MEMORY[0x1E69A8D38];
  v4 = MobileInstallationGetContainerizedAppBundleRecordsForLaunchServices(a1, a2, a3);
  v5 = [v3 bundleRecordArrayToInfoDictionaryArray:v4];

  return v5;
}

id MobileInstallationGetContainerizedAppBundleRecordsForLaunchServices(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MobileInstallationGetContainerizedAppBundleRecordsForLaunchServices_block_invoke;
  v12[3] = &unk_1E80BA420;
  v12[4] = &v13;
  v12[5] = &v19;
  [v8 fetchInfoForContainerizedAppWithBundleID:v5 options:v6 completion:v12];

  objc_autoreleasePoolPop(v7);
  v9 = v20[5];
  if (a3 && !v9)
  {
    *a3 = v14[5];
    v9 = v20[5];
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v10;
}

void sub_1BF36A090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationGetContainerizedAppBundleRecordsForLaunchServices_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

uint64_t MobileInstallationCopyAppInfoForLaunchServicesWithWrapperURL(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _CreateAndLogError("MobileInstallationCopyAppInfoForLaunchServicesWithWrapperURL", 2422, *MEMORY[0x1E69A8D00], 161, 0, 0, @"%s is unavailable on this platform", a8, "MobileInstallationCopyAppInfoForLaunchServicesWithWrapperURL");
  if (a3)
  {
    v9 = v9;
    *a3 = v9;
  }

  return 0;
}

uint64_t MobileInstallationUpdateSinfDataForInstallCoordinationWithWrapperURL(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _CreateAndLogError("MobileInstallationUpdateSinfDataForInstallCoordinationWithWrapperURL", 2452, *MEMORY[0x1E69A8D00], 161, 0, 0, @"%s is unavailable on this platform", a8, "MobileInstallationUpdateSinfDataForInstallCoordinationWithWrapperURL");
  if (a4)
  {
    v9 = v9;
    *a4 = v9;
  }

  return 0;
}

BOOL MobileInstallationUpdateiTunesMetadataForInstallCoordinationWithWrapperURL(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _CreateAndLogError("MobileInstallationUpdateiTunesMetadataForInstallCoordinationWithWrapperURL", 2476, *MEMORY[0x1E69A8D00], 161, 0, 0, @"%s is unavailable on this platform", a8, "MobileInstallationUpdateiTunesMetadataForInstallCoordinationWithWrapperURL");
  if (a4 && v9)
  {
    v9 = v9;
    *a4 = v9;
  }

  v10 = v9 == 0;

  return v10;
}

uint64_t MobileInstallationCopyDiskUsageForLaunchServices(void *a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  if (!a2)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v5 = CFGetTypeID(a1);
  if (CFStringGetTypeID() != v5)
  {
    if (CFArrayGetTypeID() == v5)
    {
      v6 = a1;
      goto LABEL_9;
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
LABEL_13:
      v9 = 0;
      goto LABEL_14;
    }

LABEL_12:
    MOLogWrite();
    goto LABEL_13;
  }

  v12[0] = a1;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
LABEL_9:
  v7 = v6;
  v8 = [MEMORY[0x1E69A8D60] defaultWorkspace];
  v9 = [v8 diskUsageForLaunchServicesWithBundleIDs:v7 options:a2 withError:0];

LABEL_14:
  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t MobileInstallationRegisterSafeHarbor(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:a3 length:strlen(a3)];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69A8D68]) initWithBundleID:a2];
    v8 = MobileInstallationRegisterSafeHarborForContainerClassWithIdentity(v6, v7, 2, 0, 0) - 1;
  }

  else
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v8 = 0xFFFFFFFFLL;
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

uint64_t MobileInstallationRegisterSafeHarborForContainerClassWithIdentity(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v13 = objc_autoreleasePoolPush();
  if (v11)
  {
    v14 = _CreateAndLogError("MobileInstallationRegisterSafeHarborForContainerClassWithIdentity", 2558, *MEMORY[0x1E69A8D00], 25, 0, 0, @"The options parameter is currently unused and must be nil", v12, v18[0]);
    v15 = v20[5];
    v20[5] = v14;
  }

  else
  {
    v15 = objc_opt_new();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __MobileInstallationRegisterSafeHarborForContainerClassWithIdentity_block_invoke;
    v18[3] = &unk_1E80BA380;
    v18[4] = &v19;
    v18[5] = &v25;
    [v15 registerSafeHarborAtPath:v9 forIdentity:v10 ofType:a3 withOptions:0 completion:v18];
  }

  objc_autoreleasePoolPop(v13);
  v16 = *(v26 + 24);
  if (a5 && (v26[3] & 1) == 0)
  {
    *a5 = v20[5];
    v16 = *(v26 + 24);
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v16 & 1;
}

void sub_1BF36A6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t MobileInstallationRegisterSafeHarborForContainerType(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x1E69A8D68]) initWithBundleID:a2];
  v8 = _ContainerTypeForMCMContainerType(a3);
  v9 = MobileInstallationRegisterSafeHarborForContainerClassWithIdentity(a1, v7, v8, 0, 0);

  objc_autoreleasePoolPop(v6);
  return v9;
}

uint64_t _ContainerTypeForMCMContainerType(uint64_t result)
{
  if ((result - 1) >= 0xF)
  {
    return 0;
  }

  return result;
}

void __MobileInstallationRegisterSafeHarborForContainerClassWithIdentity_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MobileInstallationRemoveSafeHarborForContainerType(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E69A8D68]) initWithBundleID:a1];
  v6 = _ContainerTypeForMCMContainerType(a2);
  v7 = MobileInstallationRemoveSafeHarborForContainerClassWithIdentity(v5, v6, 0, 0);

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t MobileInstallationRemoveSafeHarborForContainerClassWithIdentity(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v10 = objc_autoreleasePoolPush();
  if (v8)
  {
    v11 = _CreateAndLogError("MobileInstallationRemoveSafeHarborForContainerClassWithIdentity", 2618, *MEMORY[0x1E69A8D00], 25, 0, 0, @"The options parameter is currently unused and must be nil", v9, v15[0]);
    v12 = v17[5];
    v17[5] = v11;
  }

  else
  {
    v12 = objc_opt_new();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __MobileInstallationRemoveSafeHarborForContainerClassWithIdentity_block_invoke;
    v15[3] = &unk_1E80BA380;
    v15[4] = &v16;
    v15[5] = &v22;
    [v12 removeSafeHarborForIdentity:v7 ofType:a2 withOptions:0 completion:v15];
  }

  objc_autoreleasePoolPop(v10);
  v13 = *(v23 + 24);
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v17[5];
    v13 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  return v13 & 1;
}

void sub_1BF36AA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationRemoveSafeHarborForContainerClassWithIdentity_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MobileInstallationCopySafeHarborsForContainerType(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _ContainerTypeForMCMContainerType(a1);
  v4 = [MEMORY[0x1E69A8D80] sharedInstance];
  v5 = [v4 primaryPersonaString];
  v6 = MobileInstallationCopySafeHarborsForContainerClass(v3, v5, 0, 0);

  objc_autoreleasePoolPop(v2);
  return v6;
}

id MobileInstallationCopySafeHarborsForContainerClass(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1;
  v23 = __Block_byref_object_dispose__1;
  v24 = 0;
  v10 = objc_autoreleasePoolPush();
  if (v8)
  {
    v11 = @"The options parameter is currently unused and must be nil";
    v12 = 2672;
  }

  else
  {
    if (v7)
    {
      v14 = objc_opt_new();
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __MobileInstallationCopySafeHarborsForContainerClass_block_invoke;
      v18[3] = &unk_1E80BA448;
      v18[4] = &v19;
      v18[5] = &v25;
      [v14 listSafeHarborsOfType:a1 forPersona:v7 withOptions:0 completion:v18];
      goto LABEL_6;
    }

    v11 = @"The persona parameter must be specified";
    v12 = 2678;
  }

  v13 = _CreateAndLogError("MobileInstallationCopySafeHarborsForContainerClass", v12, *MEMORY[0x1E69A8D00], 25, 0, 0, v11, v9, v18[0]);
  v14 = v20[5];
  v20[5] = v13;
LABEL_6:

  objc_autoreleasePoolPop(v10);
  v15 = v26;
  if (a4 && !v26[5])
  {
    *a4 = v20[5];
    v15 = v26;
  }

  v16 = v15[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v16;
}

void sub_1BF36AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationCopySafeHarborsForContainerClass_block_invoke(uint64_t a1, void *a2, void *a3)
{
  obj = a2;
  v5 = a3;
  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v6 = 32;
    v7 = v5;
  }

  else
  {
    if (!obj)
    {
      goto LABEL_9;
    }

    v6 = 40;
    v7 = obj;
  }

  objc_storeStrong((*(*(a1 + v6) + 8) + 40), v7);
LABEL_9:
}

uint64_t MobileInstallationCheckCapabilitiesMatch(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationCheckCapabilitiesMatch_block_invoke;
  v8[3] = &unk_1E80BA3D0;
  v8[4] = &v9;
  [v5 checkCapabilities:a1 withOptions:a2 completion:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  objc_autoreleasePoolPop(v4);
  return v6;
}

void sub_1BF36AFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationCheckCapabilitiesMatch_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

id MobileInstallationUpdateSinfDataForInstallCoordination(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __MobileInstallationUpdateSinfDataForInstallCoordination_block_invoke;
  v15[3] = &unk_1E80BA470;
  v15[4] = &v16;
  v15[5] = &v22;
  [v11 updateSinfForIXWithIdentifier:v7 withOptions:v8 sinfData:v9 completion:v15];

  objc_autoreleasePoolPop(v10);
  v12 = v23[5];
  if (a4 && !v12)
  {
    *a4 = v17[5];
    v12 = v23[5];
  }

  v13 = v12;
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void sub_1BF36B25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationUpdateSinfDataForInstallCoordination_block_invoke(uint64_t a1, void *a2, void *a3)
{
  obj = a2;
  v5 = a3;
  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v6 = 32;
    v7 = v5;
  }

  else
  {
    if (!obj)
    {
      goto LABEL_9;
    }

    v6 = 40;
    v7 = obj;
  }

  objc_storeStrong((*(*(a1 + v6) + 8) + 40), v7);
LABEL_9:
}

BOOL MobileInstallationUpdateiTunesMetadataForInstallCoordination(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_opt_new();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MobileInstallationUpdateiTunesMetadataForInstallCoordination_block_invoke;
  v12[3] = &unk_1E80B9D88;
  v12[4] = &v13;
  [v8 updateiTunesMetadataForIXWithIdentifier:v5 metadata:v6 completion:v12];

  objc_autoreleasePoolPop(v7);
  v9 = v14[5];
  if (a3 && v9)
  {
    *a3 = v9;
    v9 = v14[5];
  }

  v10 = v9 == 0;
  _Block_object_dispose(&v13, 8);

  return v10;
}

void sub_1BF36B484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationUpdateiTunesMetadataForInstallCoordination_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t MobileInstallationAppLaunchEnabled()
{
  if (!gLogHandle || *(gLogHandle + 44) >= 3)
  {
    MOLogWrite();
  }

  return 0;
}

uint64_t MobileInstallationSetAppLaunchState(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _CreateAndLogError("MobileInstallationSetAppLaunchState", 2830, *MEMORY[0x1E69A8D00], 10, 0, 0, @"MobileInstallationSetAppLaunchState called on unsupported OS for %@", a8, a1);
  v10 = v9;
  if (a4)
  {
    *a4 = v9;
  }

  return 0;
}

uint64_t MobileInstallationWatchKitInstallerSnapshotWKApp(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MobileInstallationWatchKitInstallerSnapshotWKApp_block_invoke;
  v13[3] = &unk_1E80BA448;
  v13[4] = &v14;
  v13[5] = &v18;
  [v9 snapshotWKAppInCompanionAppID:a1 toURL:a2 options:a3 completion:v13];

  if (a4 && !v19[3])
  {
    *a4 = v15[3];
  }

  else
  {
    v10 = v15[3];
    if (v10)
    {
      CFRelease(v10);
    }
  }

  v11 = v19[3];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  objc_autoreleasePoolPop(v8);
  return v11;
}

void sub_1BF36B72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationWatchKitInstallerSnapshotWKApp_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      MOLogWrite();
    }

    v6 = 32;
    v7 = v5;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v6 = 40;
    v7 = v8;
  }

  *(*(*(a1 + v6) + 8) + 24) = v7;
LABEL_9:
}

BOOL MobileInstallationSetSystemAppMigrationComplete(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MobileInstallationSetSystemAppMigrationComplete_block_invoke;
  v8[3] = &unk_1E80B9D88;
  v8[4] = &v9;
  [v3 setSystemAppMigrationComplete:v8];

  objc_autoreleasePoolPop(v2);
  v4 = v10;
  if (a1)
  {
    v5 = v10[5];
    if (v5)
    {
      *a1 = v5;
      v4 = v10;
    }
  }

  v6 = v4[5] == 0;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1BF36B930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MobileInstallationWaitForSystemAppMigrationToComplete(void *a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v2 = objc_autoreleasePoolPush();
  HasCompleted = MISystemAppMigrationHasCompleted();
  if ((HasCompleted & 1) == 0)
  {
    v4 = objc_opt_new();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __MobileInstallationWaitForSystemAppMigrationToComplete_block_invoke;
    v8[3] = &unk_1E80BA380;
    v8[4] = &v9;
    v8[5] = &v13;
    [v4 waitForSystemAppMigratorToComplete:v8];
  }

  objc_autoreleasePoolPop(v2);
  if (HasCompleted)
  {
    v5 = 1;
  }

  else
  {
    if (a1)
    {
      v6 = v14[5];
      if (v6)
      {
        *a1 = v6;
      }
    }

    v5 = *(v10 + 24);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v5 & 1;
}

void sub_1BF36BAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationWaitForSystemAppMigrationToComplete_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v4 = v5;
  }
}

void MobileInstallationWaitForSystemAppMigrationWithCompletion(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  if (MISystemAppMigrationHasCompleted())
  {
    v1[2](v1, 0);
  }

  else
  {
    v3 = objc_opt_new();
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __MobileInstallationWaitForSystemAppMigrationWithCompletion_block_invoke;
    v4[3] = &unk_1E80BA498;
    v5 = v1;
    [v3 waitForSystemAppMigratorWithCompletion:v4];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t MobileInstallationGetSystemAppMigrationStatus(_BYTE *a1, void *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v4 = objc_autoreleasePoolPush();
  HasCompleted = MISystemAppMigrationHasCompleted();
  v6 = HasCompleted;
  if (HasCompleted)
  {
    *a1 = 1;
  }

  else
  {
    v7 = objc_opt_new();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __MobileInstallationGetSystemAppMigrationStatus_block_invoke;
    v11[3] = &unk_1E80BA4C0;
    v11[4] = &v12;
    v11[5] = a1;
    [v7 systemAppMigratorHasCompleted:v11];
  }

  objc_autoreleasePoolPop(v4);
  v8 = 1;
  if ((v6 & 1) == 0)
  {
    if (a2)
    {
      v9 = v13[5];
      if (v9)
      {
        v8 = 0;
        *a2 = v9;
      }
    }
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void sub_1BF36BD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationGetSystemAppMigrationStatus_block_invoke(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }

  else
  {
    **(a1 + 40) = a2;
  }
}

uint64_t MobileInstallationGetInstalldPid()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = [v1 pidForTesting];

  objc_autoreleasePoolPop(v0);
  return v2;
}

void MobileInstallationKillInstalld()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  [v1 dieForTesting];

  objc_autoreleasePoolPop(v0);
}

id MobileInstallationSimulateExceptionInDaemon()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = [v1 raiseException];

  objc_autoreleasePoolPop(v0);

  return v2;
}

uint64_t MobileInstallationGetHelperServicePid()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -1;
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MobileInstallationHelperService"];
  if (v0)
  {
    v1 = MobileInstallationHelperServiceProtocolInterface();
    [v0 setRemoteObjectInterface:v1];

    [v0 resume];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __MobileInstallationGetHelperServicePid_block_invoke;
    v7[3] = &unk_1E80BA4E8;
    v2 = v0;
    v8 = v2;
    v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v7];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __MobileInstallationGetHelperServicePid_block_invoke_2;
    v6[3] = &unk_1E80BA1F0;
    v6[4] = &v9;
    [v3 getPidForTestingWithCompletion:v6];

    [v2 invalidate];
    v4 = *(v10 + 6);
  }

  else
  {
    NSLog(&cfstr_WarningCouldnT.isa, @"com.apple.MobileInstallationHelperService");
    v4 = *(v10 + 6);
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

void __MobileInstallationGetHelperServicePid_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serviceName];
  NSLog(&cfstr_WarningCouldnT_0.isa, v4, v3);
}

void MobileInstallationKillHelperService()
{
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MobileInstallationHelperService"];
  if (v0)
  {
    v1 = MobileInstallationHelperServiceProtocolInterface();
    [v0 setRemoteObjectInterface:v1];

    [v0 resume];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __MobileInstallationKillHelperService_block_invoke;
    v4[3] = &unk_1E80BA4E8;
    v2 = v0;
    v5 = v2;
    v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v4];
    [v3 dieForTesting];

    [v2 invalidate];
  }

  else
  {
    NSLog(&cfstr_WarningCouldnT.isa, @"com.apple.MobileInstallationHelperService");
  }
}

void __MobileInstallationKillHelperService_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serviceName];
  NSLog(&cfstr_WarningCouldnT_1.isa, v4, v3);
}

uint64_t MobileInstallationSetTestMode(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v8 = 0;
  v4 = [v3 setTestMode:&v8];
  v5 = v8;

  objc_autoreleasePoolPop(v2);
  if (a1 && (v4 & 1) == 0)
  {
    v6 = v5;
    *a1 = v5;
  }

  return v4;
}

uint64_t MobileInstallationEndTestMode(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v8 = 0;
  v4 = [v3 endTestMode:&v8];
  v5 = v8;

  objc_autoreleasePoolPop(v2);
  if (a1 && (v4 & 1) == 0)
  {
    v6 = v5;
    *a1 = v5;
  }

  return v4;
}

uint64_t MobileInstallationGetTestModeEnabled(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v10 = 0;
  v6 = [v5 getTestModeEnabled:a1 outError:&v10];
  v7 = v10;

  objc_autoreleasePoolPop(v4);
  if (a2 && (v6 & 1) == 0)
  {
    v8 = v7;
    *a2 = v7;
  }

  return v6;
}

uint64_t MobileInstallationSetTestFlags(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v10 = 0;
  v6 = [v5 setTestFlags:a1 withError:&v10];
  v7 = v10;

  objc_autoreleasePoolPop(v4);
  if (a2 && (v6 & 1) == 0)
  {
    v8 = v7;
    *a2 = v7;
  }

  return v6;
}

uint64_t MobileInstallationClearTestFlags(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v10 = 0;
  v6 = [v5 clearTestFlags:a1 withError:&v10];
  v7 = v10;

  objc_autoreleasePoolPop(v4);
  if (a2 && (v6 & 1) == 0)
  {
    v8 = v7;
    *a2 = v7;
  }

  return v6;
}

uint64_t MobileInstallationSetEligibilityTestOverrides(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v10 = 0;
  v6 = [v5 setEligibilityTestOverrides:v3 withError:&v10];
  v7 = v10;

  objc_autoreleasePoolPop(v4);
  if (a2 && (v6 & 1) == 0)
  {
    v8 = v7;
    *a2 = v7;
  }

  return v6;
}

uint64_t MICreateSerializedPlaceholderForInstalledApplication(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v10 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MICreateSerializedPlaceholderForInstalledApplication_block_invoke;
  v13[3] = &unk_1E80BA380;
  v13[4] = &v14;
  v13[5] = &v20;
  [v10 cloneSerializedPlaceholderForInstalledAppWithBundeID:v7 personaUniqueString:v8 atResultURL:v9 withCompletion:v13];

  v11 = *(v21 + 24);
  if (a4 && (v21[3] & 1) == 0)
  {
    *a4 = v15[5];
    v11 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v11 & 1;
}

void sub_1BF36C7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MICreateSerializedPlaceholderForInstalledApplication_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MISetLaunchWarning(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v10 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __MISetLaunchWarning_block_invoke;
  v13[3] = &unk_1E80BA380;
  v13[4] = &v14;
  v13[5] = &v20;
  [v10 setLaunchWarningForApp:v7 withUniqueInstallIdentifier:v8 warningData:v9 completion:v13];

  v11 = *(v21 + 24);
  if (a4 && (v21[3] & 1) == 0)
  {
    *a4 = v15[5];
    v11 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v11 & 1;
}

void sub_1BF36C9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MISetLaunchWarning_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id MIGetReferencesForBundleWithIdentifier(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v6 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MIGetReferencesForBundleWithIdentifier_block_invoke;
  v10[3] = &unk_1E80BA448;
  v10[4] = &v11;
  v10[5] = &v17;
  [v6 referencesForBundleWithIdentifier:v5 inDomain:a2 withCompletion:v10];

  v7 = v18[5];
  if (a3 && !v7)
  {
    *a3 = v12[5];
    v7 = v18[5];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void sub_1BF36CBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MIGetReferencesForBundleWithIdentifier_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

uint64_t MobileInstallationSetPersonaForDataSeparatedApps(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MobileInstallationSetPersonaForDataSeparatedApps_block_invoke;
  v10[3] = &unk_1E80BA380;
  v10[4] = &v15;
  v10[5] = &v11;
  [v7 setDataSeparatedAppsWithBundleIDs:v5 withPersona:v6 withCompletion:v10];

  v8 = *(v12 + 24);
  if (a3 && (v12[3] & 1) == 0)
  {
    *a3 = v16[5];
    v8 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v8 & 1;
}

void sub_1BF36CE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationSetPersonaForDataSeparatedApps_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MobileInstallationAddDataSeparatedAppsToPersona(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MobileInstallationAddDataSeparatedAppsToPersona_block_invoke;
  v10[3] = &unk_1E80BA380;
  v10[4] = &v15;
  v10[5] = &v11;
  [v7 addDataSeparatedAppsWithBundleIDs:v5 toPersona:v6 withCompletion:v10];

  v8 = *(v12 + 24);
  if (a3 && (v12[3] & 1) == 0)
  {
    *a3 = v16[5];
    v8 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v8 & 1;
}

void sub_1BF36CFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationAddDataSeparatedAppsToPersona_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t MobileInstallationRemoveDataSeparatedAppsFromPersona(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MobileInstallationRemoveDataSeparatedAppsFromPersona_block_invoke;
  v10[3] = &unk_1E80BA380;
  v10[4] = &v15;
  v10[5] = &v11;
  [v7 removeDataSeparatedAppsWithBundleIDs:v5 fromPersona:v6 withCompletion:v10];

  v8 = *(v12 + 24);
  if (a3 && (v12[3] & 1) == 0)
  {
    *a3 = v16[5];
    v8 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v8 & 1;
}

void sub_1BF36D1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationRemoveDataSeparatedAppsFromPersona_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

id MobileInstallationLinkedBundleIDsForIdentity(void *a1, void *a2)
{
  v3 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v4 = [v3 bundleID];
  if ([v4 isEqualToString:@"com.apple.Playgrounds"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.mock.Playgrounds"))
  {
    v5 = objc_opt_new();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __MobileInstallationLinkedBundleIDsForIdentity_block_invoke;
    v10[3] = &unk_1E80B9DD8;
    v10[4] = &v17;
    v10[5] = &v11;
    [v5 linkedBundleIDsForAppIdentity:v3 withCompletion:v10];
  }

  else
  {
    v6 = objc_opt_new();
    v5 = v12[5];
    v12[5] = v6;
  }

  v7 = v12[5];
  if (a2 && !v7)
  {
    *a2 = v18[5];
    v7 = v12[5];
  }

  v8 = v7;

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v8;
}

void sub_1BF36D460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void __MobileInstallationLinkedBundleIDsForIdentity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

uint64_t MIGetBooleanEntitlement(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 objectForKeyedSubscript:v5];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        a3 = [v6 BOOLValue];
      }

      else if (gLogHandle && *(gLogHandle + 44) >= 7)
      {
        MOLogWrite();
      }
    }

    else
    {
      a3 = 0;
    }
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

uint64_t MIGetFirstTrueBooleanEntitlement(void *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a2;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (MIGetBooleanEntitlement(v5, *(*(&v14 + 1) + 8 * v10), a3))
        {
          v11 = 1;
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

BOOL MIHasSeatbeltProfilesEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"seatbelt-profiles"];
  v2 = v1 != 0;

  return v2;
}

id MICopyPlaceholderEntitlements(void *a1, uint64_t a2)
{
  v3 = [a1 URLByAppendingPathComponent:@"PlaceholderEntitlements.plist" isDirectory:0];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3 error:a2];

  return v4;
}

uint64_t MIWritePlaceholderEntitlements(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 URLByAppendingPathComponent:@"PlaceholderEntitlements.plist" isDirectory:0];
  v7 = [v5 MI_writeToURL:v6 format:200 options:268435457 error:a3];

  return v7;
}

id _MICommonCopyGroupEntitlement(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:v3];
  if (!v4)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if (isKindOfClass)
  {
    if (MIArrayContainsOnlyClass(v4))
    {
      v6 = v4;
LABEL_7:
      v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
      v8 = [v7 allObjects];

      goto LABEL_16;
    }

    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

LABEL_13:
    MOLogWrite();
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (gLogHandle && *(gLogHandle + 44) < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_15:
  v8 = 0;
LABEL_16:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

BOOL MIHasAnyApplicationGroupEntitlements(void *a1)
{
  v1 = _MICommonCopyGroupEntitlement(a1, @"com.apple.security.application-groups");
  v2 = v1 != 0;

  return v2;
}

id MICopySystemGroupEntitlement(void *a1)
{
  v1 = a1;
  v2 = _MICommonCopyGroupEntitlement(v1, @"com.apple.security.system-groups");
  v3 = v2;
  if (!v2 || ![v2 count])
  {
    v4 = _MICommonCopyGroupEntitlement(v1, @"com.apple.security.system-group-containers");

    v3 = v4;
  }

  return v3;
}

BOOL MIHasAnySystemGroupEntitlements(void *a1)
{
  v1 = MICopySystemGroupEntitlement(a1);
  v2 = v1 != 0;

  return v2;
}

id MICopyParentIdentifiersEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.parent-application-identifiers"];
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

  if (v3 && (objc_opt_class(), MIArrayContainsOnlyClass(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MICopyApplicationIdentifierEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"application-identifier"];
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

  return v3;
}

id MICopyPreviousApplicationIdentifiersEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"previous-application-identifiers"];
  objc_opt_class();
  v2 = MIArrayifyThing(v1);

  return v2;
}

id MICopyKeychainAccessGroupEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"keychain-access-groups"];
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

  if (v3 && (objc_opt_class(), MIArrayContainsOnlyClass(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MICopyAppManagementDomainEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.app-management-domain"];
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

  return v3;
}

uint64_t MIClassifyAppManagementDomainValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasPrefix:@"swift-playgrounds"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"com.apple.WebKit.PushBundles"])
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t MIClassifyAppManagementDomainEntitlement(void *a1)
{
  v1 = MICopyAppManagementDomainEntitlement(a1);
  v2 = MIClassifyAppManagementDomainValue(v1);

  return v2;
}

id MICopyNetworkExtensionEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.networking.networkextension"];
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

  if (v3 && (objc_opt_class(), MIArrayContainsOnlyClass(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MICopyAssociatedAppClipsEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.associated-appclip-app-identifiers"];
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

  if (v3 && (objc_opt_class(), MIArrayContainsOnlyClass(v3)))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id MICopyDataProtectionClassEntitlement(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"com.apple.developer.default-data-protection"];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = [v1 objectForKeyedSubscript:@"data-protection-class"];
    objc_opt_class();
    v6 = v5;
    v4 = (objc_opt_isKindOfClass() & 1) != 0 ? v6 : 0;

    if (!v4)
    {
      v7 = [v1 objectForKeyedSubscript:@"DataProtectionClass"];
      objc_opt_class();
      v8 = v7;
      if (objc_opt_isKindOfClass())
      {
        v4 = v8;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

id MICopyDataProtectionIfAvailableEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.default-data-protection-if-available"];
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

  if (v3)
  {
    v4 = v2;
  }

  else
  {
    objc_opt_class();
    v5 = v2;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = v5;
      objc_opt_class();
      v4 = MIArrayFilteredToContainOnlyClass(v7);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

id MICopyMemoryTransferAcceptEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.memory.transfer-accept"];
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

  return v3;
}

id MICopyMemoryTransferSendEntitlement(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"com.apple.developer.memory.transfer-send"];
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

  return v3;
}

uint64_t MISystemAppMigrationHasCompleted()
{
  v0 = [MEMORY[0x1E69A8D80] sharedInstance];
  v1 = [v0 migrationPlistURL];
  v2 = MIIsBuildUpgrade();

  return v2 ^ 1u;
}

uint64_t MIBooleanValue(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  return a2;
}

uint64_t MIArrayContainsOnlyClass(void *a1)
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

id MIArrayFilteredToContainOnlyClass(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t MIDictionaryContainsOnlyClasses(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MIDictionaryContainsOnlyClasses_block_invoke;
  v8[3] = &unk_1E80BA510;
  v8[4] = &v9;
  v8[5] = a2;
  v8[6] = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1BF36F9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MIDictionaryContainsOnlyClasses_block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (a1[5] && (objc_opt_isKindOfClass() & 1) == 0 || a1[6] && (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }
}

id MIStringifyObject(void *a1)
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
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v1];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id MIArrayifyThing(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (MIArrayContainsOnlyClass(v1))
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
        if (MIArrayContainsOnlyClass(v4))
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

BOOL MICompareObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 != 0) == (v4 != 0) && (!v3 || !v4 || [v3 isEqual:v4]);

  return v6;
}

void *MIEnumerateContainersOfClass(void *a1, uint64_t a2, void *a3)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = [MEMORY[0x1E69A8D78] defaultManager];
  v8 = v5;
  v9 = v8;
  if (a2 <= 6)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v26[0] = @"mobile";
        v26[1] = @"Containers";
        v26[2] = @"Data";
        v26[3] = @"Application";
        v10 = MEMORY[0x1E695DEC8];
        v11 = v26;
        goto LABEL_22;
      }

      if (a2 == 4)
      {
        v25[0] = @"mobile";
        v25[1] = @"Containers";
        v25[2] = @"Data";
        v25[3] = @"PluginKitPlugin";
        v10 = MEMORY[0x1E695DEC8];
        v11 = v25;
        goto LABEL_22;
      }

LABEL_14:
      if (!gLogHandle || *(gLogHandle + 44) >= 3)
      {
        MOLogWrite();
      }

      goto LABEL_26;
    }

    v12 = &unk_1F3DE9A20;
LABEL_20:
    v14 = [v8 MI_URLByAppendingPathComponents:v12 lastIsDirectory:1];
    goto LABEL_23;
  }

  if (a2 > 11)
  {
    if (a2 == 12)
    {
      v12 = &unk_1F3DE9A38;
    }

    else
    {
      if (a2 != 13)
      {
        goto LABEL_14;
      }

      v12 = &unk_1F3DE9A50;
    }

    goto LABEL_20;
  }

  if (a2 == 7)
  {
    v24[0] = @"mobile";
    v24[1] = @"Containers";
    v24[2] = @"Shared";
    v24[3] = @"AppGroup";
    v10 = MEMORY[0x1E695DEC8];
    v11 = v24;
    goto LABEL_22;
  }

  if (a2 != 10)
  {
    goto LABEL_14;
  }

  v23[0] = @"mobile";
  v23[1] = @"Containers";
  v23[2] = @"Data";
  v23[3] = @"InternalDaemon";
  v10 = MEMORY[0x1E695DEC8];
  v11 = v23;
LABEL_22:
  v15 = [v10 arrayWithObjects:v11 count:4];
  v14 = [v9 MI_URLByAppendingPathComponents:v15 lastIsDirectory:1];

LABEL_23:
  if (!v14)
  {
LABEL_26:
    v16 = _CreateAndLogError("MIEnumerateContainersOfClass", 75, *MEMORY[0x1E69A8D00], 4, 0, 0, @"Failed to get the path to containers of class %llu in %@", v13, a2);
    v14 = 0;
    goto LABEL_27;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __MIEnumerateContainersOfClass_block_invoke;
  v21[3] = &unk_1E80BA538;
  v22 = v6;
  v16 = [v7 enumerateURLsForItemsInDirectoryAtURL:v14 ignoreSymlinks:1 withBlock:v21];

  if (!v16)
  {
LABEL_27:
    v17 = 0;
    goto LABEL_28;
  }

  v17 = v16;
  v16 = v17;
LABEL_28:
  v18 = v16;

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __MIEnumerateContainersOfClass_block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (a3 == 4)
  {
    v7 = [v5 URLByAppendingPathComponent:@".com.apple.mobile_container_manager.metadata.plist" isDirectory:0];
    v18 = 0;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7 error:&v18];
    v9 = v18;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"MCMMetadataIdentifier"];
      objc_opt_class();
      v11 = v10;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v14 = [v8 objectForKeyedSubscript:@"MCMMetadataInfo"];
      objc_opt_class();
      v15 = v14;
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v13 = (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        v13 = 1;
        goto LABEL_15;
      }

      v12 = [v7 path];
      MOLogWrite();
      v13 = 1;
    }

LABEL_15:
    goto LABEL_16;
  }

  v13 = 1;
LABEL_16:
  objc_autoreleasePoolPop(v6);

  return v13;
}

void _MILogTransactionStep(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v16;
  if (a2 == 1)
  {
    v18 = "Start";
    if (v16)
    {
      goto LABEL_12;
    }

LABEL_14:
    if ((a1 - 1) > 0xE)
    {
      v22 = "Unknown";
    }

    else
    {
      v22 = off_1E80BA558[a1 - 1];
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s : %s", v18, v22, v24, 0];
    v21 = LABEL_20:;
    goto LABEL_21;
  }

  if (a2 == 2)
  {
    if (!v16)
    {
      v19 = "Fail";
      if (a3)
      {
        v19 = "Success";
      }

      if ((a1 - 1) > 0xE)
      {
        v20 = "Unknown";
      }

      else
      {
        v20 = off_1E80BA558[a1 - 1];
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (%s) : %s", v19, "End", v20, 0];
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (a2 != 3)
  {
    v18 = "Unknown Phase";
    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v18 = "Start (Asynch)";
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_12:
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v16 arguments:&a9];
LABEL_21:
  v23 = v21;
  [AITransactionLog logStep:a1 byParty:7 phase:a2 success:a3 forBundleID:v14 persona:v15 description:v21];
}

void sub_1BF371610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF372604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UUIDData()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  MEMORY[0x1BFB56A30](v3);
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:v3 length:16];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

id MobileInstallerDelegateProtocolInterface()
{
  os_unfair_lock_lock(&MobileInstallerDelegateProtocolInterface_lock);
  WeakRetained = objc_loadWeakRetained(&MobileInstallerDelegateProtocolInterface_weakInterface);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3DEB9C0];
    objc_storeWeak(&MobileInstallerDelegateProtocolInterface_weakInterface, WeakRetained);
  }

  os_unfair_lock_unlock(&MobileInstallerDelegateProtocolInterface_lock);

  return WeakRetained;
}

id MobileInstallerProtocolInterface()
{
  os_unfair_lock_lock(&MobileInstallerProtocolInterface_lock);
  WeakRetained = objc_loadWeakRetained(&MobileInstallerProtocolInterface_weakInterface);
  if (!WeakRetained)
  {
    WeakRetained = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3DEF448];
    v1 = ICLKnownBundleRecordClasses();
    v2 = [v1 setByAddingObject:objc_opt_class()];

    v3 = MEMORY[0x1E695DFD8];
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v3 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
    [WeakRetained setClasses:v7 forSelector:sel_checkCapabilities_withOptions_completion_ argumentIndex:0 ofReply:0];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    [WeakRetained setClasses:v10 forSelector:sel_uninstallIdentifiers_withOptions_completion_ argumentIndex:0 ofReply:1];

    [WeakRetained setClasses:v2 forSelector:sel_installURL_identity_targetingDomain_options_returningResultInfo_completion_ argumentIndex:1 ofReply:1];
    [WeakRetained setClasses:v2 forSelector:sel_fetchInfoForContainerizedAppWithIdentity_inDomain_options_completion_ argumentIndex:0 ofReply:1];
    [WeakRetained setClasses:v2 forSelector:sel_fetchInfoForFrameworkAtURL_options_completion_ argumentIndex:0 ofReply:1];
    [WeakRetained setClasses:v2 forSelector:sel_cancelUpdateForStagedIdentifiers_completion_ argumentIndex:0 ofReply:1];
    [WeakRetained setClasses:v2 forSelector:sel_finalizeStagedInstallForIdentifier_returningResultInfo_completion_ argumentIndex:1 ofReply:1];
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    [WeakRetained setClasses:v13 forSelector:sel_reconcileContentsOnKnownOSModules_completion_ argumentIndex:0 ofReply:0];

    objc_storeWeak(&MobileInstallerProtocolInterface_weakInterface, WeakRetained);
  }

  os_unfair_lock_unlock(&MobileInstallerProtocolInterface_lock);

  return WeakRetained;
}