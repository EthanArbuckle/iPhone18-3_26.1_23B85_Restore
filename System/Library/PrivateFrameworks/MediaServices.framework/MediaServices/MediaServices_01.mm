__CFString *_MSVDebugIvarValue(unsigned int *a1, char *__s, int a3)
{
  v6 = strlen(__s);
  v7 = malloc_type_calloc(v6 + 1, 1uLL, 0x802EB7FCuLL);
  v8 = v7;
  v9 = 0;
  v10 = __s;
  v11 = v7;
  while (1)
  {
    v12 = *v10;
    if (v12 == 34)
    {
      v9 ^= 1u;
      goto LABEL_8;
    }

    if (!*v10)
    {
      break;
    }

    if (v9)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *v11++ = v12;
    }

LABEL_8:
    ++v10;
  }

  v13 = *__s;
  if (v13 != 64)
  {
    if (!strcmp(v7, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
      v14 = [MEMORY[0x1E696B098] valueWithBytes:a1 objCType:__s];
      [v14 bs_CGRectValue];
      v17 = BSNSStringFromCGRect();
      goto LABEL_37;
    }

    if (!strcmp(v8, "{CGPoint=dd}"))
    {
      v14 = [MEMORY[0x1E696B098] valueWithBytes:a1 objCType:__s];
      [v14 bs_CGPointValue];
      v17 = BSNSStringFromCGPoint();
      goto LABEL_37;
    }

    if (!strcmp(v8, "{CGSize=dd}"))
    {
      v14 = [MEMORY[0x1E696B098] valueWithBytes:a1 objCType:__s];
      [v14 bs_CGSizeValue];
      v17 = BSNSStringFromCGSize();
      goto LABEL_37;
    }

    if (!strcmp(v8, "{_NSRange=QQ}"))
    {
      v14 = [MEMORY[0x1E696B098] valueWithBytes:a1 objCType:__s];
      v26.location = [v14 rangeValue];
      v17 = NSStringFromRange(v26);
      goto LABEL_37;
    }

    if (*v8 == 94 && v8[1] == 118 && !v8[2])
    {
      v21 = MEMORY[0x1E696AEC0];
      v23 = *a1;
LABEL_86:
      v22 = @"%p";
LABEL_91:
      [v21 stringWithFormat:v22, v23, v24];
      goto LABEL_92;
    }

    if (v13 > 93)
    {
      if (v13 <= 104)
      {
        if (v13 > 98)
        {
          switch(v13)
          {
            case 'c':
              v16 = [MEMORY[0x1E696AD98] numberWithChar:*a1];
              goto LABEL_93;
            case 'd':
              v16 = [MEMORY[0x1E696AD98] numberWithDouble:*a1];
              goto LABEL_93;
            case 'f':
              LODWORD(v15) = *a1;
              v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
LABEL_93:
              v18 = v16;
              goto LABEL_38;
          }

          goto LABEL_88;
        }

        if (v13 != 94)
        {
          if (v13 == 98)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%i (?)", *a1 & ~(-1 << atoi(__s + 1)), v24];
            v16 = LABEL_92:;
            goto LABEL_93;
          }

          goto LABEL_88;
        }

        v21 = MEMORY[0x1E696AEC0];
        if ((a3 & 1) == 0)
        {
          v23 = a1;
          v24 = *a1;
          v22 = @"%p -> %p";
          goto LABEL_91;
        }

        goto LABEL_85;
      }

      if (v13 <= 112)
      {
        if (v13 == 105)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithInt:*a1];
          goto LABEL_93;
        }

        if (v13 == 108)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithLong:*a1];
          goto LABEL_93;
        }

        goto LABEL_88;
      }

      if (v13 == 113)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithLongLong:*a1];
        goto LABEL_93;
      }

      if (v13 == 115)
      {
        v16 = [MEMORY[0x1E696AD98] numberWithShort:*a1];
        goto LABEL_93;
      }

      if (v13 != 123)
      {
LABEL_88:
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Value not representable, %s", v8, v24];
        goto LABEL_92;
      }

LABEL_56:
      v16 = _MSVStructDescription(a1, __s);
      goto LABEL_93;
    }

    if (v13 > 66)
    {
      if (v13 <= 75)
      {
        if (v13 == 67)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*a1];
          goto LABEL_93;
        }

        if (v13 == 73)
        {
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a1];
          goto LABEL_93;
        }
      }

      else
      {
        switch(v13)
        {
          case 'L':
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*a1];
            goto LABEL_93;
          case 'Q':
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*a1];
            goto LABEL_93;
          case 'S':
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*a1];
            goto LABEL_93;
        }
      }

      goto LABEL_88;
    }

    if (v13 > 57)
    {
      if (v13 != 58)
      {
        if (v13 == 66)
        {
          if (*a1)
          {
            v20 = @"YES";
          }

          else
          {
            v20 = @"NO";
          }

          v16 = v20;
          goto LABEL_93;
        }

        goto LABEL_88;
      }

      if ((a3 & 1) == 0)
      {
        v16 = NSStringFromSelector(*a1);
        goto LABEL_93;
      }
    }

    else
    {
      if (v13 != 35)
      {
        if (v13 != 40)
        {
          goto LABEL_88;
        }

        goto LABEL_56;
      }

      if ((a3 & 1) == 0)
      {
        v16 = a1;
        goto LABEL_93;
      }
    }

    v21 = MEMORY[0x1E696AEC0];
LABEL_85:
    v23 = a1;
    goto LABEL_86;
  }

  v14 = *a1;
  if (a3)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v14];
    goto LABEL_31;
  }

  if (_NSIsNSString())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"@%@", v14];
    goto LABEL_31;
  }

  if (_NSIsNSNumber())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"@(%@)", v14];
    v17 = LABEL_31:;
LABEL_37:
    v18 = v17;
  }

  else
  {
    if (v14)
    {
      v17 = [v14 __msv_objectDescription];
      goto LABEL_37;
    }

    v18 = @"nil";
  }

LABEL_38:
  free(v8);

  return v18;
}

id _MSVStructDescription(_DWORD *a1, char *__s1)
{
  v4 = strdup(__s1);
  v5 = *__s1;
  v6 = @"{";
  if (v5 == 40)
  {
    v6 = CFSTR("[values are interpreted] (");
  }

  v36 = v4;
  v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n", v6];
  v4[strlen(v4) - 1] = 0;
  do
  {
    v8 = *v4++;
  }

  while (v8 != 61);
  v9 = 0;
  do
  {
    while (1)
    {
      v10 = (*v4 == 34 ? v4 + 1 : v4);
      v11 = v10;
      do
      {
        v12 = v11;
        v13 = *v11++;
      }

      while (v13 != 34);
      v14 = 0;
      *v12 = 0;
      v15 = v11;
      do
      {
        v16 = *v15;
        if (v16 == 40 || v16 == 123 || v16 == 91)
        {
          ++v14;
        }

        if (v16 == 41 || v16 == 125 || v16 == 93)
        {
          --v14;
        }

        ++v15;
      }

      while (v14 > 0);
      while (*v15)
      {
        if (*v15 == 34)
        {
          *v15 = 0;
          v4 = v15 + 1;
          goto LABEL_27;
        }

        ++v15;
      }

      v4 = 0;
LABEL_27:
      if (*v11 != 98)
      {
        break;
      }

      v17 = atoi(v12 + 2);
      v18 = v17;
      v19 = a1 + 1;
      if (v5 == 40)
      {
        v19 = a1;
      }

      if ((v9 + v17) > 0x20)
      {
        v9 = 0;
        a1 = v19;
      }

      v20 = (*a1 >> v9) & ~(-1 << v17);
      if (v17 == 1)
      {
        v21 = v20 == 0;
        v22 = @"YES";
        if (v21)
        {
          v22 = @"NO";
        }

        [v7 appendFormat:@"\t\t.%s (%s): %@\n", v10, v11, v22];
      }

      else
      {
        [v7 appendFormat:@"\t\t.%s (%s): %u\n", v10, v11, v20];
      }

      v33 = v18;
      if (v5 == 40)
      {
        v33 = 0;
      }

      v9 += v33;
      if (!v4)
      {
        goto LABEL_52;
      }
    }

    alignp = 0;
    sizep = 0;
    NSGetSizeAndAlignment(v11, &sizep, &alignp);
    v23 = a1 + 1;
    if (v9)
    {
      v24 = v5 == 40;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v23 = a1;
    }

    v25 = (v23 + alignp - 1) & -alignp;
    v26 = _MSVDebugIvarValue((v23 + alignp - 1) & -alignp, v11);
    v27 = v26;
    v28 = *v11;
    if (v28 == 123 || v28 == 40)
    {
      v29 = [v26 componentsSeparatedByString:@"\n"];
      v30 = [v29 componentsJoinedByString:@"\n\t"];

      v27 = v30;
    }

    v31 = _MSVObjCTypeDescription(v11);
    [v7 appendFormat:@"\t\t.%s (%@): %@\n", v10, v31, v27];

    v32 = sizep;
    if (v5 == 40)
    {
      v32 = 0;
    }

    a1 = (v32 + v25);

    v9 = 0;
  }

  while (v4);
LABEL_52:
  v34 = @"}";
  if (v5 == 40)
  {
    v34 = @"");
  }

  [v7 appendFormat:@"\t%@", v34];
  free(v36);

  return v7;
}

void sub_1AC83B258(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x1AC83B21CLL);
  }

  free(a12);
  objc_exception_rethrow();
}

uint64_t MSVProcessIsUsingRoots()
{
  result = os_variant_has_internal_content();
  if (result)
  {

    return dyld_shared_cache_some_image_overridden();
  }

  return result;
}

void *MSVProcessLinkMediaFrameworks()
{
  dlopen("/System/Library/Frameworks/MediaPlayer.framework/MediaPlayer", 1);
  dlopen("/System/Library/PrivateFrameworks/AirTraffic.framework/AirTraffic", 1);
  dlopen("/System/Library/PrivateFrameworks/DAAPKit.framework/DAAPKit", 1);
  dlopen("/System/Library/PrivateFrameworks/HomeSharing.framework/HomeSharing", 1);
  dlopen("/System/Library/PrivateFrameworks/iTunesCloud.framework/iTunesCloud", 1);
  dlopen("/System/Library/PrivateFrameworks/MediaLibraryCore.framework/MediaLibraryCore", 1);
  dlopen("/System/Library/PrivateFrameworks/MediaPlaybackCore.framework/MediaPlaybackCore", 1);
  dlopen("/System/Library/PrivateFrameworks/MusicLibrary.framework/MusicLibrary", 1);

  return dlopen("/System/Library/PrivateFrameworks/MediaFoundation.framework/MediaFoundation", 1);
}

id MSVProcessCopyMediaFrameworksDescriptions()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = MEMORY[0x1E695E0F0];
  if (has_internal_content)
  {
    if (MSVProcessCopyMediaFrameworksDescriptions_onceToken != -1)
    {
      dispatch_once(&MSVProcessCopyMediaFrameworksDescriptions_onceToken, &__block_literal_global_1367);
    }

    v2 = *MEMORY[0x1E69E9A60];
    if (_dyld_process_info_create())
    {
      _dyld_process_info_get_state();
      MSVProcessCopyMediaFrameworksDescriptions_lastTimestamp = 0;
      v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(MSVProcessCopyMediaFrameworksDescriptions_frameworkNames, "count")}];
      if (os_variant_has_internal_content())
      {
        dyld_shared_cache_some_image_overridden();
      }

      v9 = MEMORY[0x1E69E9820];
      v1 = v3;
      _dyld_process_info_for_each_image();
      _dyld_process_info_release();
      os_unfair_lock_lock(&MSVProcessCopyMediaFrameworksDescriptions_lock);
      v4 = [v1 copy];
      v5 = MSVProcessCopyMediaFrameworksDescriptions_frameworkDescriptions;
      MSVProcessCopyMediaFrameworksDescriptions_frameworkDescriptions = v4;

      os_unfair_lock_unlock(&MSVProcessCopyMediaFrameworksDescriptions_lock);
      v6 = v1;
    }

    else
    {
      os_unfair_lock_lock(&MSVProcessCopyMediaFrameworksDescriptions_lock);
      v6 = [MSVProcessCopyMediaFrameworksDescriptions_frameworkDescriptions copy];
      os_unfair_lock_unlock(&MSVProcessCopyMediaFrameworksDescriptions_lock);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v1;
      }

      v1 = v7;
    }
  }

  return v1;
}

void __MSVProcessCopyMediaFrameworksDescriptions_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v22 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:4];
  v7 = [v22 lastPathComponent];
  if ([MSVProcessCopyMediaFrameworksDescriptions_frameworkNames containsObject:v7])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a3];
    if (*(a1 + 40) == 1 && ([MSVProcessCopyMediaFrameworksDescriptions_frameworkUUIDs objectForKeyedSubscript:v22], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", v8), v9, (v10 & 1) == 0))
    {
      v13 = dlopen(a4, 277);
      v14 = dlsym(v13, "_DebugMarker");
      dlclose(v13);
      v12 = v14 != 0;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v15 = MEMORY[0x1E696AAE8];
    v16 = [v22 stringByDeletingLastPathComponent];
    v17 = [v15 bundleWithPath:v16];

    v18 = [v17 infoDictionary];
    v19 = [v18 objectForKeyedSubscript:*MEMORY[0x1E695E500]];

    v20 = *(a1 + 32);
    v21 = [[MSVFrameworkDescription alloc] initWithName:v7 uuid:v8 version:v19 root:v11 debug:v12];
    [v20 addObject:v21];
  }
}

void __MSVProcessCopyMediaFrameworksDescriptions_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F215CA28];
  v1 = MSVProcessCopyMediaFrameworksDescriptions_frameworkNames;
  MSVProcessCopyMediaFrameworksDescriptions_frameworkNames = v0;

  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(MSVProcessCopyMediaFrameworksDescriptions_frameworkNames, "count")}];
  if (_dyld_get_shared_cache_uuid())
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __MSVProcessCopyMediaFrameworksDescriptions_block_invoke_2;
    v9 = &unk_1E79819B0;
    v10 = v2;
    dyld_shared_cache_iterate_text();
  }

  v3 = [v2 copy];
  v4 = MSVProcessCopyMediaFrameworksDescriptions_frameworkUUIDs;
  MSVProcessCopyMediaFrameworksDescriptions_frameworkUUIDs = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __MSVProcessCopyMediaFrameworksDescriptions_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithCString:*(a2 + 40) encoding:4];
  v5 = MSVProcessCopyMediaFrameworksDescriptions_frameworkNames;
  v8 = v4;
  v6 = [v4 lastPathComponent];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2 + 24];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

id MSVProcessCopyUUID()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  v0 = &UUID_NULL;
  if (_dyld_get_prog_image_header() && _dyld_get_image_uuid())
  {
    v0 = v4;
  }

  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v0];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t MSVGetDiskUsageForPath(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 UTF8String];
    if (dirstat_np() == -1)
    {
      v3 = os_log_create("com.apple.amp.MediaServices", "Default");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = __error();
        v5 = strerror(*v4);
        *buf = 138543618;
        v9 = v2;
        v10 = 2080;
        v11 = v5;
        _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_ERROR, "MSVGetUsageForPath encountered error. path=%{public}@ err=%s", buf, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t MSVEnableDirStatsForDirectory(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *buf = 0u;
  if (fsctl([v1 UTF8String], 0xC1104A71uLL, buf, 0))
  {
    v2 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = __error();
      v4 = strerror(*v3);
      v13 = 138478083;
      v14 = v1;
      v15 = 2080;
      v16 = v4;
      _os_log_impl(&dword_1AC81F000, v2, OS_LOG_TYPE_ERROR, "Unable to check dirstats for directory %{private}@, error %s", &v13, 0x16u);
    }
  }

  else
  {
    v10 = v19;

    if (v10)
    {
LABEL_12:
      v9 = 1;
      goto LABEL_13;
    }
  }

  v5 = os_log_create("com.apple.amp.MediaServices", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v1;
    _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_DEFAULT, "MSVEnableDirStatsForDirectory - Enabling dirstat for path %{public}@", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *buf = 0u;
  *&buf[4] = 1;
  if (!fsctl([v1 UTF8String], 0xC1104A71uLL, buf, 0))
  {
    goto LABEL_12;
  }

  v6 = os_log_create("com.apple.amp.MediaServices", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = __error();
    v8 = strerror(*v7);
    v13 = 138478083;
    v14 = v1;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_1AC81F000, v6, OS_LOG_TYPE_ERROR, "Unable to enable dirstats for directory %{private}@, error %s", &v13, 0x16u);
  }

  v9 = 0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

id MSVBundleIDForTCCIdentity(uint64_t a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:tcc_identity_get_identifier()];
  }

  else
  {
    v2 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AC81F000, v2, OS_LOG_TYPE_ERROR, "MSVBundleIDForTCCIdentity() invalid input - returning nil. [clientIdentity=nil]", v4, 2u);
    }

    v1 = 0;
  }

  return v1;
}

void MSVAuditTokenForCurrentProcess(uint64_t a1@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  *&v1 = -1;
  *(&v1 + 1) = -1;
  *a1 = v1;
  *(a1 + 16) = v1;
  task_info_outCnt = 8;
  v2 = task_info(*MEMORY[0x1E69E9A60], 0xFu, a1, &task_info_outCnt);
  if (v2)
  {
    v3 = v2;
    v4 = os_log_create("com.apple.amp.MediaServices", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = mach_error_string(v3);
      *buf = 136446466;
      v9 = v5;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_ERROR, "MSVAuditTokenForCurrentProcess() failed: %{public}s (0x%x)", buf, 0x12u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__1860(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void MSVLaunchApplicationWithOptions(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MSVLaunchApplicationWithOptions(NSString *__strong, NSDictionary *__strong, __strong dispatch_queue_t, void (^__strong)(NSError *__strong))"}];
    [v21 handleFailureInFunction:v22 file:@"MSVSystemUtilities.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"bundleID"}];
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E699F8E8]];
  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x1E699F958]];
  }

  v12 = [MEMORY[0x1E699FB70] optionsWithDictionary:v11];
  v13 = dispatch_get_global_queue(0, 0);
  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v13);
  v15 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __MSVLaunchApplicationWithOptions_block_invoke;
  v25[3] = &unk_1E7981C90;
  v26 = v14;
  v27 = v10;
  v16 = v10;
  v17 = v14;
  v18 = MEMORY[0x1B26EC6C0](v25);
  v19 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
  [v19 openApplication:v7 withOptions:v12 completion:v18];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MSVLaunchApplicationWithOptions_block_invoke_2;
  handler[3] = &unk_1E7982AD8;
  v24 = v18;
  v20 = v18;
  dispatch_source_set_event_handler(v17, handler);
  dispatch_resume(v17);
}

void __MSVLaunchApplicationWithOptions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_source_cancel(*(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void __MSVLaunchApplicationWithOptions_block_invoke_2(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A400];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Launch timed out";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v2 errorWithDomain:v3 code:-1 userInfo:v4];

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

id MSVMediaLoggingDirectory()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = MSVMobileHomeDirectory();
  v1 = MEMORY[0x1E696AEC0];
  v6[0] = v0;
  v6[1] = @"Library";
  v6[2] = @"Logs";
  v6[3] = @"MediaServices";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v3 = [v1 pathWithComponents:v2];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

id MSVHomeSharingCacheDirectory()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 lastObject];

  v7[0] = v1;
  v7[1] = @"com.apple.mobileipod";
  v7[2] = @"HomeSharingLibraries";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v3 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"unable to create cache directory"];
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id MSVCreateTemporaryFileHandle(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    v4 = NSTemporaryDirectory();
    v3 = [v4 stringByAppendingPathComponent:@"tmp.XXXXXX"];
  }

  v5 = [v3 fileSystemRepresentation];
  v6 = strlen(v5);
  v7 = strndup(v5, v6);
  v8 = mkstemp(v7);
  if (v8 < 1)
  {
    v11 = 0;
  }

  else
  {
    v9 = v8;
    if (a2)
    {
      v10 = [MEMORY[0x1E696AC08] defaultManager];
      *a2 = [v10 stringWithFileSystemRepresentation:v7 length:v6];
    }

    v11 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v9 closeOnDealloc:1];
  }

  free(v7);

  return v11;
}

id MSVGzipCompressData()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v10 = *MEMORY[0x1E69E9840];
  v1 = v0;
  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [v1 length];
  strm.next_in = [v1 bytes];
  v2 = 0;
  if (!deflateInit2_(&strm, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v3 = [MEMORY[0x1E695DF88] data];
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v9;
      v4 = deflate(&strm, 4 * (strm.avail_in == 0));
      if (v4 > 1)
      {
        break;
      }

      v5 = v4;
      if (strm.avail_out != 0x4000)
      {
        [v3 appendBytes:v9 length:0x4000 - strm.avail_out];
      }

      if (v5)
      {
        deflateEnd(&strm);
        v2 = [v3 copy];
        goto LABEL_9;
      }
    }

    deflateEnd(&strm);
    v2 = 0;
LABEL_9:
  }

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

id MSVGzipDecompressData()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v10 = *MEMORY[0x1E69E9840];
  v1 = v0;
  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [v1 length];
  strm.next_in = [v1 bytes];
  v2 = 0;
  if (!inflateInit2_(&strm, 31, "1.2.12", 112))
  {
    v3 = [MEMORY[0x1E695DF88] data];
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v9;
      v4 = inflate(&strm, 4 * (strm.avail_in == 0));
      if (v4 > 1)
      {
        break;
      }

      v5 = v4;
      if (strm.avail_out != 0x4000)
      {
        [v3 appendBytes:v9 length:0x4000 - strm.avail_out];
      }

      if (v5)
      {
        inflateEnd(&strm);
        v2 = [v3 copy];
        goto LABEL_9;
      }
    }

    inflateEnd(&strm);
    v2 = 0;
LABEL_9:
  }

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t MSVGzipCompressFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = [v4 path];
  v6 = gzopen([v5 UTF8String], "w9");

  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    v8 = [MSVStreamReader alloc];
    v9 = [MEMORY[0x1E695DF48] inputStreamWithURL:v3];
    v10 = [(MSVStreamReader *)v8 initWithInputStream:v9 queue:0];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __MSVGzipCompressFile_block_invoke;
    v21[3] = &unk_1E7981CB8;
    v21[4] = &v22;
    v21[5] = v6;
    [(MSVStreamReader *)v10 setDidReadDataBlock:v21];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __MSVGzipCompressFile_block_invoke_2;
    v19[3] = &unk_1E7982988;
    v11 = v7;
    v20 = v11;
    [(MSVStreamReader *)v10 setDidFinishReadingBlock:v19];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __MSVGzipCompressFile_block_invoke_3;
    v16[3] = &unk_1E7981CE0;
    v18 = &v22;
    v12 = v11;
    v17 = v12;
    [(MSVStreamReader *)v10 setDidEncounterErrorBlock:v16];
    [(MSVStreamReader *)v10 start];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
    v13 = gzclose(v6);
    if (*(v23 + 24) == 1)
    {
      *(v23 + 24) = v13 == 0;
    }
  }

  v14 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return v14;
}

uint64_t __MSVGzipCompressFile_block_invoke(uint64_t a1, id a2)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = a2;
  v7 = [v6 bytes];
  v8 = [v6 length];

  result = gzwrite(v4, v7, v8);
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

gzFile_s *MSVGzipDecompressFile()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v18 = *MEMORY[0x1E69E9840];
  v3 = v0;
  v4 = v2;
  v5 = [v3 path];
  v6 = gzopen([v5 UTF8String], "r");

  if (v6)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v4 path];
    v9 = [v7 fileExistsAtPath:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [v4 path];
      [v7 createFileAtPath:v10 contents:0 attributes:0];
    }

    v11 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v4 error:0];
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        v13 = gzread(v6, buf, 0x4000u);
        if (v13 <= 0)
        {
          break;
        }

        v14 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:buf length:v13 freeWhenDone:0];
        [v12 writeData:v14];
      }

      v6 = (v13 == 0);
      if (!v13)
      {
        [v12 closeFile];

        v12 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t MSVDeviceIsiPad()
{
  if (MSVDeviceIsiPad___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPad___once, &__block_literal_global_1898);
  }

  return MSVDeviceIsiPad___deviceIsiPad;
}

uint64_t __MSVDeviceIsiPad_block_invoke()
{
  result = MGGetSInt32Answer();
  MSVDeviceIsiPad___deviceIsiPad = result == 3;
  return result;
}

uint64_t MSVDeviceHasCellularBaseband()
{
  if (MSVDeviceHasCellularBaseband___once != -1)
  {
    dispatch_once(&MSVDeviceHasCellularBaseband___once, &__block_literal_global_83);
  }

  return MSVDeviceHasCellularBaseband___deviceHasCellularBaseband;
}

uint64_t __MSVDeviceHasCellularBaseband_block_invoke()
{
  result = MGGetBoolAnswer();
  MSVDeviceHasCellularBaseband___deviceHasCellularBaseband = result;
  return result;
}

uint64_t MSVDeviceSupportsExtendedColorDisplay()
{
  if (MSVDeviceSupportsExtendedColorDisplay___once != -1)
  {
    dispatch_once(&MSVDeviceSupportsExtendedColorDisplay___once, &__block_literal_global_88);
  }

  return MSVDeviceSupportsExtendedColorDisplay___deviceSupportsExtendedColorDisplay;
}

uint64_t __MSVDeviceSupportsExtendedColorDisplay_block_invoke()
{
  result = MGGetBoolAnswer();
  MSVDeviceSupportsExtendedColorDisplay___deviceSupportsExtendedColorDisplay = result;
  return result;
}

uint64_t MSVDeviceIsiPhone()
{
  if (MSVDeviceIsiPhone___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPhone___once, &__block_literal_global_93);
  }

  return MSVDeviceIsiPhone___deviceIsPhone;
}

uint64_t MSVDeviceIsiPod()
{
  if (MSVDeviceIsiPod___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPod___once, &__block_literal_global_95);
  }

  return MSVDeviceIsiPod___deviceIsPod;
}

uint64_t __MSVDeviceIsiPod_block_invoke()
{
  result = MGGetSInt32Answer();
  MSVDeviceIsiPod___deviceIsPod = result == 2;
  return result;
}

uint64_t MSVDeviceSupportsEnhancedMusic()
{
  if (MSVDeviceSupportsLosslessMusic())
  {
    return 1;
  }

  return MSVDeviceSupportsMultiChannelMusic();
}

uint64_t MSVDeviceSupportsLosslessMusic()
{
  if (MSVDeviceIsiPhone___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPhone___once, &__block_literal_global_93);
  }

  if (MSVDeviceIsiPhone___deviceIsPhone)
  {
    goto LABEL_7;
  }

  if (MSVDeviceIsiPod___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPod___once, &__block_literal_global_95);
  }

  if (MSVDeviceIsiPod___deviceIsPod)
  {
LABEL_7:
    v0 = 1;
  }

  else
  {
    if (MSVDeviceIsiPad___once != -1)
    {
      dispatch_once(&MSVDeviceIsiPad___once, &__block_literal_global_1898);
    }

    v0 = MSVDeviceIsiPad___deviceIsiPad;
  }

  return v0 & 1;
}

uint64_t MSVDeviceSupportsMultiChannelMusic()
{
  if (MSVDeviceIsiPhone___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPhone___once, &__block_literal_global_93);
  }

  if (MSVDeviceIsiPhone___deviceIsPhone)
  {
    goto LABEL_7;
  }

  if (MSVDeviceIsiPod___once != -1)
  {
    dispatch_once(&MSVDeviceIsiPod___once, &__block_literal_global_95);
  }

  if (MSVDeviceIsiPod___deviceIsPod)
  {
LABEL_7:
    v0 = 1;
  }

  else
  {
    if (MSVDeviceIsiPad___once != -1)
    {
      dispatch_once(&MSVDeviceIsiPad___once, &__block_literal_global_1898);
    }

    v0 = MSVDeviceIsiPad___deviceIsiPad;
  }

  return v0 & 1;
}

BOOL MSVDeviceIsInternalCarry()
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.da"];
  v1 = [v0 objectForKey:@"ExperimentGroup"];
  v2 = [v1 lowercaseString];

  if (([v2 containsString:@"carry"] & 1) != 0 || objc_msgSend(v2, "containsString:", @"walkabout"))
  {
    v3 = [v0 objectForKey:@"AutomatedDeviceGroup"];
    v4 = [v3 length] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double MSVGetMaximumScreenSize()
{
  if (MSVGetMaximumScreenSize_onceToken != -1)
  {
    dispatch_once(&MSVGetMaximumScreenSize_onceToken, &__block_literal_global_122);
  }

  return *&MSVGetMaximumScreenSize_maximumScreenSize_0;
}

void __MSVGetMaximumScreenSize_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswerWithError();
  v1 = MGCopyAnswerWithError();
  if ([v0 integerValue] < 1 || objc_msgSend(v1, "integerValue") < 1)
  {
    if (MSVGetMaximumScreenScale_onceToken != -1)
    {
      dispatch_once(&MSVGetMaximumScreenScale_onceToken, &__block_literal_global_130);
    }

    CGAffineTransformMakeScale(&v6, *&MSVGetMaximumScreenScale_deviceScreenScale, *&MSVGetMaximumScreenScale_deviceScreenScale);
    *&MSVGetMaximumScreenSize_maximumScreenSize_0 = v6.c * 1024.0 + v6.a * 1366.0;
    *&MSVGetMaximumScreenSize_maximumScreenSize_1 = v6.d * 1024.0 + v6.b * 1366.0;
    v4 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *&v6.a = 67109376;
      LOWORD(v6.b) = 1024;
      *(&v6.b + 2) = 0;
      _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_ERROR, "Failed to get screen size from MobileGestalt (width_error = %d / height_error = %d", &v6, 0xEu);
    }
  }

  else
  {
    v2 = [v0 integerValue];
    v3 = [v1 integerValue];
    MSVGetMaximumScreenSize_maximumScreenSize_0 = *&v2;
    *&MSVGetMaximumScreenSize_maximumScreenSize_1 = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __MSVGetMaximumScreenScale_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswerWithError();
  v1 = v0;
  if (v0)
  {
    [v0 floatValue];
    *&MSVGetMaximumScreenScale_deviceScreenScale = v2;
  }

  else
  {
    v3 = os_log_create("com.apple.amp.MediaServices", "SystemUtilities");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v6 = 0;
      _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_ERROR, "Failed to get main screen scale from MobileGestalt (error = %d)", buf, 8u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

double MSVGetMaximumScreenScale()
{
  if (MSVGetMaximumScreenScale_onceToken != -1)
  {
    dispatch_once(&MSVGetMaximumScreenScale_onceToken, &__block_literal_global_130);
  }

  return *&MSVGetMaximumScreenScale_deviceScreenScale;
}

id MSVGetDeviceHardwarePlatform()
{
  if (MSVGetDeviceHardwarePlatform_onceToken != -1)
  {
    dispatch_once(&MSVGetDeviceHardwarePlatform_onceToken, &__block_literal_global_143);
  }

  v1 = MSVGetDeviceHardwarePlatform___hardwarePlatform;

  return v1;
}

uint64_t __MSVGetDeviceHardwarePlatform_block_invoke()
{
  MSVGetDeviceHardwarePlatform___hardwarePlatform = MGCopyAnswer();

  return MEMORY[0x1EEE66BB8]();
}

BOOL msv_dispatch_async_on_queue_with_qos(void *a1, dispatch_qos_class_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v7 == MEMORY[0x1E69E96A0] && pthread_main_np() == 1)
  {
    v8[2](v8);
    v9 = 1;
LABEL_10:
    v12 = v8;
    goto LABEL_11;
  }

  key = &key;
  dispatch_queue_set_specific(v7, &key, 1, 0);
  v10 = key;
  specific = dispatch_get_specific(key);
  dispatch_queue_set_specific(v7, v10, 0, 0);
  v9 = specific == 1;
  if (specific == 1)
  {
    v8[2](v8);
    goto LABEL_10;
  }

  v12 = v8;
  if (a2)
  {
    v12 = v8;
    if (a2 != QOS_CLASS_DEFAULT)
    {
      v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, a2, 0, v8);
    }
  }

  dispatch_async(v7, v12);
LABEL_11:

  return v9;
}

uint64_t MSVGetCurrentThreadPriority()
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *thread_info_out = 0u;
  thread_info_outCnt = 28;
  v0 = pthread_self();
  v1 = pthread_mach_thread_np(v0);
  if (thread_info(v1, 5u, thread_info_out, &thread_info_outCnt))
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = DWORD1(v7);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t msv_dispatch_sync_BOOL(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_BOOL_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t msv_dispatch_sync_int64(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_int64_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __msv_dispatch_sync_int64_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t msv_dispatch_sync_uint64(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_uint64_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __msv_dispatch_sync_uint64_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t msv_dispatch_sync_int32(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_int32_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __msv_dispatch_sync_int32_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t msv_dispatch_sync_uint32(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_uint32_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __msv_dispatch_sync_uint32_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t msv_dispatch_sync_int(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_int_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __msv_dispatch_sync_int_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t msv_dispatch_sync_uint(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_uint_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

uint64_t __msv_dispatch_sync_uint_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

float msv_dispatch_sync_float(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_float_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = v11[6];

  _Block_object_dispose(&v10, 8);
  return v5;
}

double msv_dispatch_sync_double(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_double_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

id msv_dispatch_sync_object(NSObject *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1929;
  v14 = __Block_byref_object_dispose__1930;
  v15 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __msv_dispatch_sync_object_block_invoke;
  v7[3] = &unk_1E7981D08;
  v8 = v3;
  v9 = &v10;
  v4 = v3;
  dispatch_sync(a1, v7);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

uint64_t __Block_byref_object_copy__1929(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __msv_dispatch_sync_object_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1AC847DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2002(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC847F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC848074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC8481A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC8482DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC848410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC848544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC84867C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC8487AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC8488E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC848A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC848CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MSVSanitizedPropertyListValue(void *a1)
{
  v1 = a1;
  if (_NSIsNSArray())
  {
    v2 = [v1 msv_compactMap:&__block_literal_global_120];
LABEL_5:
    v3 = v2;
    if ([v2 count])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    goto LABEL_9;
  }

  if (_NSIsNSDictionary())
  {
    v2 = [v1 msv_compactMapValues:&__block_literal_global_122_2244];
    goto LABEL_5;
  }

  if ([MEMORY[0x1E696AE40] propertyList:v1 isValidForFormat:200])
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

LABEL_9:

  return v5;
}

void sub_1AC84F734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __MSVJSONDateFormatter()
{
  if (__MSVJSONDateFormatter_onceToken != -1)
  {
    dispatch_once(&__MSVJSONDateFormatter_onceToken, &__block_literal_global_48);
  }

  v1 = __MSVJSONDateFormatter___iso8601Formatter;

  return v1;
}

void sub_1AC8528AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MSVSignedUnionRange(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

uint64_t MSVSignedIntersectionRange(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 > result || result >= a3 + a4)
  {
    if (result <= a3 && a3 < result + a2)
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MSVSignedSubtractedRange(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result + a2 >= a3 + a4)
  {
    v4 = a3 + a4;
  }

  else
  {
    v4 = result + a2;
  }

  if (a3 > result || result >= a3 + a4)
  {
    if (a3 < result)
    {
      return result;
    }

    if (a3 >= result + a2)
    {
      return result;
    }

    v5 = a3;
    if (v4 == a3)
    {
      return result;
    }
  }

  else
  {
    v5 = result;
    if (!a2)
    {
      return result;
    }
  }

  if (v5 != result || v4 - v5 != a2)
  {
    if (a4 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a4;
    }

    v7 = v6 + a3;
    v8 = a3 + v6 - 1;
    if (a2 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = a2;
    }

    v10 = v8 < result + v9 - 1;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v10)
    {
      v11 = result;
    }

    if (a3 > result)
    {
      return v11;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t MSVReplacementRangeForRanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 + a2 >= a3 + a4)
  {
    v4 = a3 + a4;
  }

  else
  {
    v4 = a1 + a2;
  }

  if ((a3 > a1 || (v5 = a1, a1 >= a3 + a4)) && (a1 > a3 || (v5 = a3, a3 >= a1 + a2)) || v4 == v5)
  {
    if (a3 >= a1)
    {
      return a2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a1 >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = -a1;
    }

    return v5 + v6;
  }
}

uint64_t MSVSignedRangeFromString(void *a1)
{
  v1 = a1;
  if ([v1 length] < 5)
  {
    goto LABEL_37;
  }

  v2 = v1;
  if (!ParseBracesAndCommas___braceCharacters)
  {
    ParseBracesAndCommas___braceCharacters = CFCharacterSetCreateWithCharactersInString(0, @"{[,]}");
  }

  v19 = 0;
  Length = CFStringGetLength(v2);
  result.location = 0;
  result.length = 0;
  if (Length < 1)
  {
    v5 = 0;
    location = -1;
  }

  else
  {
    v4 = Length;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v18 = &v19;
    location = -1;
    v9 = Length;
    v10 = -1;
    while (1)
    {
      v21.location = v6;
      v21.length = v9;
      if (!CFStringFindCharacterFromSet(v2, ParseBracesAndCommas___braceCharacters, v21, 0, &result))
      {
        break;
      }

      if (result.location >= v4 || result.length != 1)
      {
        break;
      }

      CharacterAtIndex = CFStringGetCharacterAtIndex(v2, result.location);
      if ((CharacterAtIndex & 0xFFFFFFDF) == 0x5B)
      {
        if (!v7)
        {
          location = result.location;
        }

        ++v7;
      }

      else if (CharacterAtIndex == 44)
      {
        if (v7 == 1)
        {
          if (v5 <= 0)
          {
            *v18++ = result.location;
            v5 = 1;
            v7 = 1;
          }

          else
          {
            v7 = 1;
            v5 = 1;
          }
        }
      }

      else if ((CharacterAtIndex & 0xFFFFFFDF) == 0x5D && !--v7)
      {
        v10 = result.location;
        goto LABEL_29;
      }

      if (result.location + 1 < v4)
      {
        v9 += v6 + ~result.location;
        v6 = result.location + 1;
        if (v9 > 0)
        {
          continue;
        }
      }

      goto LABEL_29;
    }
  }

  v10 = -1;
LABEL_29:
  if (location == -1 || v10 == -1 || v5 != 1 || location >= v10 || (v13 = v19, v19 <= location + 1) || v19 >= v10 - 1)
  {

LABEL_37:
    IntValue = 0;
    goto LABEL_38;
  }

  v22.length = v19 + ~location;
  v22.location = location + 1;
  v14 = CFStringCreateWithSubstring(0, v2, v22);
  v23.location = v13 + 1;
  v23.length = v10 + ~v13;
  v15 = CFStringCreateWithSubstring(0, v2, v23);

  IntValue = CFStringGetIntValue(v14);
  CFStringGetIntValue(v15);
  CFRelease(v14);
  CFRelease(v15);
LABEL_38:

  return IntValue;
}

uint64_t __Block_byref_object_copy__2966(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC855998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3014(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC855BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC855DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _MSVTransformStateValue(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_NSIsNSArray())
  {
    v2 = v1;
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = _MSVTransformStateValue(*(*(&v18 + 1) + 8 * i));
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

LABEL_10:
    goto LABEL_21;
  }

  if (!_NSIsNSDictionary())
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v1 UUIDString];
      }

      else if ([MEMORY[0x1E696AE40] propertyList:v1 isValidForFormat:200])
      {
        v13 = v1;
      }

      else
      {
        v13 = [v1 debugDescription];
      }

      v3 = v13;
      goto LABEL_21;
    }

    v4 = [v1 _stateDumpObject];
    v3 = _MSVTransformStateValue(v4);
    goto LABEL_10;
  }

  v10 = MEMORY[0x1E695DF90];
  v11 = v1;
  v12 = [v10 dictionaryWithCapacity:{objc_msgSend(v11, "count")}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___MSVTransformStateValue_block_invoke;
  v16[3] = &unk_1E7982030;
  v3 = v12;
  v17 = v3;
  [v11 enumerateKeysAndObjectsUsingBlock:v16];

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __MSVLogAddStateHandler_block_invoke_4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _MSVTransformStateValue(v2);
  v13 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:&v13];
  v5 = v13;
  v6 = v5;
  if (v3 && v2 && v5)
  {
    v7 = os_log_create("com.apple.amp.MediaServices", "Default_Oversize");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v14[0] = @"0:value";
      v14[1] = @"1:transformedValue";
      v15[0] = v2;
      v15[1] = v3;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_FAULT, "Failure to serialize state dump: %{public}@", buf, 0xCu);
    }
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MSVLogStateHandle MSVLogAddStateHandler(__strong dispatch_queue_t _Nonnull, NSString *__strong _Nonnull, _MSVLogState  _Nullable (^__strong _Nonnull)(MSVLogStateHints, __strong _MSVLogStateEncode))_block_invoke"}];
  [v9 handleFailureInFunction:v10 file:@"OSLog+MSVAdditions.m" lineNumber:65 description:{@"Error serializing state capture: %@", v6}];

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

id MSVTimelineChartPrefix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AD60] stringWithCapacity:a4];
  if (a4 >= 1)
  {
    v9 = -a4;
    v10 = 1;
    while (1)
    {
      v11 = (1 << v10) & a3;
      if (a1 != v10)
      {
        if (a2 <= 4 && ((1 << a2) & 0x16) != 0 && v10 > a1)
        {
          if (v11)
          {
            v12 = @"╂";
          }

          else
          {
            v12 = @"─";
          }
        }

        else if (v11)
        {
          v12 = @"┃";
        }

        else
        {
          v12 = @" ";
        }

        goto LABEL_24;
      }

      if (a2 <= 2)
      {
        break;
      }

      if (a2 == 3)
      {
        v12 = @"┃";
        goto LABEL_24;
      }

      v12 = @"┖";
      if (a2 != 4)
      {
        if (a2 != 5)
        {
          goto LABEL_20;
        }

        v12 = @" ";
      }

LABEL_24:
      [v8 appendString:v12];
      ++v10;
      if (v9 + v10 == 1)
      {
        goto LABEL_27;
      }
    }

    if (a2 == 1)
    {
      if (!v11)
      {
        v12 = @"┎";
        goto LABEL_24;
      }

LABEL_23:
      v12 = @"┠";
      goto LABEL_24;
    }

    if (a2 == 2)
    {
      goto LABEL_23;
    }

LABEL_20:
    v12 = @"X";
    goto LABEL_24;
  }

LABEL_27:

  return v8;
}

void _MSVPropertyListEncoderAppendCharacters(void *a1, unsigned __int16 *a2, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = 0;
  v7 = a2 + 1;
  while (1)
  {
    if (v6 == 0 || v6 >= 0xFFFFFFFFFFFFFE71)
    {
      v8 = a3 - 1 >= v6 + 399 ? v6 + 399 : a3 - 1;
      v9 = *a2;
      if (v9 <= 0x7F)
      {
        v10 = 0;
        v11 = v8 + 1;
        while (1)
        {
          v21[v10] = v9;
          if (v8 == v10)
          {
            break;
          }

          v12 = v7[v10];
          LOBYTE(v9) = v7[v10++];
          if (v12 > 0x7F)
          {
            v11 = v10;
            goto LABEL_12;
          }
        }

        ++v10;
LABEL_12:
        if (v11 > v6)
        {
          [v5 appendBytes:v21 length:v10 - v6];
          v6 = v11;
        }
      }
    }

    v13 = a3 - v6;
    if (a3 <= v6)
    {
      break;
    }

    if (a2[v6] >= 0x80u)
    {
      v14 = *MEMORY[0x1E695E4A8];
      v15 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E4A8], &a2[v6], v13, *MEMORY[0x1E695E498]);
      if (v15)
      {
        v16 = v15;
        ExternalRepresentation = CFStringCreateExternalRepresentation(v14, v15, 0x8000100u, 0);
        if (ExternalRepresentation)
        {
          v18 = ExternalRepresentation;
          BytePtr = CFDataGetBytePtr(ExternalRepresentation);
          [v5 appendBytes:BytePtr length:CFDataGetLength(v18)];
          CFRelease(v18);
        }

        CFRelease(v16);
      }

      break;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1AC85C370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3802(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _MSVFileExtensionForCoderTypeAndCompressionAlgorithm(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"NSKeyedArchive"])
  {
    v2 = @"keyedArchive";
  }

  else
  {
    if (([v1 isEqualToString:@"MSVOPACKCoder"] & 1) == 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _MSVFileExtensionForCoderTypeAndCompressionAlgorithm(NSString * _Nonnull __strong)"];
      [v5 handleFailureInFunction:v6 file:@"MSVSegmentedCodingPackage.m" lineNumber:50 description:{@"Unsupported coder type %@", v1}];

      abort();
    }

    v2 = @"opackCoder";
  }

  v3 = [(__CFString *)v2 stringByAppendingPathExtension:@"gz"];

  return v3;
}

void sub_1AC85C9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC85D460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AC85DCE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AC85F3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AC860648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

os_log_t _MSVLogCategoryStreamReader()
{
  v0 = os_log_create("com.apple.amp.MediaServices", "StreamReader");

  return v0;
}

os_log_t _MSVLogCategoryQuickRelay()
{
  v0 = os_log_create("com.apple.amp.MediaServices", "QuickRelay");

  return v0;
}

os_log_t _MSVLogCategoryLyricsTTMLParser()
{
  v0 = os_log_create("com.apple.amp.MediaServices", "LyricsTTMLParser");

  return v0;
}

os_log_t _MSVLogCategorySQL()
{
  v0 = os_log_create("com.apple.amp.MediaServices", "SQL");

  return v0;
}

void sub_1AC8622C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    v14 = objc_opt_class();
    a11 = 0;
    v15 = [v14 __categorizeException:v13 intoError:&a11];
    v16 = a11;
    if (v15)
    {
      v17 = v16;
      [v12 __setError:v16];
      if (v11)
      {
        v18 = v17;
        *v11 = v17;
      }

      objc_end_catch();
      JUMPOUT(0x1AC86222CLL);
    }

    v19 = v13;
    objc_exception_throw(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC862C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSDRDiagnosticReporterClass_block_invoke(uint64_t a1)
{
  SymptomDiagnosticReporterLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SDRDiagnosticReporter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSDRDiagnosticReporterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSDRDiagnosticReporterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MSVAutoBugCapture.m" lineNumber:31 description:{@"Unable to find class %s", "SDRDiagnosticReporter"}];

    __break(1u);
  }
}

void sub_1AC8637FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkSymptomDiagnosticReplySuccessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplySuccess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SymptomDiagnosticReporterLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SymptomDiagnosticReporterLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E79825B0;
    v7 = 0;
    SymptomDiagnosticReporterLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SymptomDiagnosticReporterLibraryCore_frameworkLibrary;
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SymptomDiagnosticReporterLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"MSVAutoBugCapture.m" lineNumber:30 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void *__getkSymptomDiagnosticReplySessionIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplySessionID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticReplyReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplyReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplyReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticReplyReasonStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticReplyReasonString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticErrorDisabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticErrorDisabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticErrorDisabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticErrorHourlyLimitExceededSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticErrorHourlyLimitExceeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticErrorHourlyLimitExceededSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticErrorDailyLimitExceededSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticErrorDailyLimitExceeded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticErrorDailyLimitExceededSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkSymptomDiagnosticErrorRandomizedSuppressionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SymptomDiagnosticReporterLibrary();
  result = dlsym(v2, "kSymptomDiagnosticErrorRandomizedSuppression");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSymptomDiagnosticErrorRandomizedSuppressionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SymptomDiagnosticReporterLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SymptomDiagnosticReporterLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC864664(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

void sub_1AC864ADC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1AC864AE8);
  }

  _Unwind_Resume(a1);
}

void sub_1AC864AF8(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1AC864B10(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1AC864B1CLL);
}

void sub_1AC864D94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1AC8650BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4603(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *MSVWeakLinkSymbol(const char *a1, void *a2)
{
  result = _MSVDYLDHandle(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

uint64_t _MSVDYLDHandle(void *a1)
{
  v39[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v3 = v1;
  }

  else
  {
    v4 = @"/";
    v5 = MEMORY[0x1E696AEC0];
    v38[0] = @"/";
    v38[1] = @"System";
    v38[2] = @"Library";
    v38[3] = @"PrivateFrameworks";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    v6 = [v5 pathWithComponents:v24];
    v39[0] = v6;
    v7 = MEMORY[0x1E696AEC0];
    v37[0] = @"/";
    v37[1] = @"System";
    v37[2] = @"Library";
    v37[3] = @"Frameworks";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    v9 = [v7 pathWithComponents:v8];
    v39[1] = v9;
    v10 = MEMORY[0x1E696AEC0];
    v36[0] = @"/";
    v36[1] = @"AppleInternal";
    v36[2] = @"Library";
    v36[3] = @"Frameworks";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    v12 = [v10 pathWithComponents:v11];
    v39[2] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:&v32 count:16];
    if (v15)
    {
      v16 = *v29;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = [*(*(&v28 + 1) + 8 * i) stringByAppendingPathComponent:v1];
          v19 = [v18 stringByAppendingPathExtension:@"framework"];

          if ([v2 fileExistsAtPath:v19])
          {
            v3 = [v19 stringByAppendingPathComponent:v1];

            goto LABEL_13;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v28 objects:&v32 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
LABEL_13:
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (_MSVDYLDHandle___once != -1)
  {
    dispatch_once(&_MSVDYLDHandle___once, &__block_literal_global_4767);
    if (v3)
    {
      goto LABEL_16;
    }

LABEL_18:
    NSLog(&cfstr_FrameworkCould.isa, v1);
    goto LABEL_19;
  }

  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_16:
  v20 = __handlesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___MSVDYLDHandle_block_invoke_2;
  block[3] = &unk_1E7982B78;
  v27 = &v32;
  v26 = v3;
  dispatch_sync(v20, block);

LABEL_19:
  v21 = v33[3];
  _Block_object_dispose(&v32, 8);

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

id *MSVWeakLinkStringConstant(const char *a1, void *a2)
{
  v3 = _MSVDYLDHandle(a2);
  if (v3)
  {
    v3 = dlsym(v3, a1);
    if (v3)
    {
      v3 = *v3;
    }
  }

  return v3;
}

Class MSVWeakLinkClass(void *a1, void *a2)
{
  v3 = a1;
  if (_MSVDYLDHandle(a2))
  {
    v4 = NSClassFromString(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void sub_1AC867068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC86720C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC867444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4829(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1B26EC6C0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t MSVKeychainCopyKeychainValue(void *a1, void *a2)
{
  v2 = _MSVCreateKeychainQuery(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CFDictionarySetValue(v2, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  result = 0;
  v4 = SecItemCopyMatching(v3, &result);
  v5 = result;
  v6 = v5;
  if (v4 || ![v5 length])
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  }

  CFRelease(v3);

  return v7;
}

__CFDictionary *_MSVCreateKeychainQuery(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E697AC30], v3);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E697AE88], v4);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E697B3A8], *MEMORY[0x1E695E4D0]);
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

void MSVKeychainSetKeychainValue(void *a1, void *a2, void *a3)
{
  v12 = a1;
  v5 = a2;
  v6 = a3;
  v7 = _MSVCreateKeychainQuery(v5, v6);
  if (v7)
  {
    v8 = v7;
    if ([v12 length])
    {
      v9 = [v12 dataUsingEncoding:4];
      v10 = MSVKeychainCopyKeychainValue(v5, v6);
      if (v10)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E697B3C0], v9);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697AC20]);
        SecItemUpdate(v8, Mutable);
        CFRelease(Mutable);
      }

      else
      {
        CFDictionarySetValue(v8, *MEMORY[0x1E697B3C0], v9);
        CFDictionarySetValue(v8, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697AC20]);
        SecItemAdd(v8, 0);
      }
    }

    else
    {
      SecItemDelete(v8);
    }

    CFRelease(v8);
  }
}

uint64_t carrayColumn(uint64_t a1, sqlite3_context *a2, int a3)
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v10 = *(a1 + 8) - 1;
        goto LABEL_34;
      }

      if (a3 == 2)
      {
        if (*(a1 + 32) == 5)
        {
          v4 = *(a1 + 16) + 17 * *(a1 + 8);
LABEL_33:
          v10 = *(v4 - 8);
          goto LABEL_34;
        }

        v10 = -1;
LABEL_34:
        sqlite3_result_int64(a2, v10);
        return 0;
      }

      return 1;
    }

    v8 = *(a1 + 32);
    if (v8 <= 2)
    {
      if (!*(a1 + 32))
      {
        sqlite3_result_int(a2, *(*(a1 + 16) + 4 * *(a1 + 8) - 4));
        return 0;
      }

      if (v8 == 1)
      {
        v4 = *(a1 + 16) + 8 * *(a1 + 8);
        goto LABEL_33;
      }

      if (v8 != 2)
      {
        return 1;
      }

      v9 = *(*(a1 + 16) + 8 * *(a1 + 8) - 8);
      goto LABEL_18;
    }

    if (v8 != 3)
    {
      if (v8 == 4)
      {
        v14 = *(a1 + 16) + 16 * *(a1 + 8);
        sqlite3_result_blob(a2, *(v14 - 16), *(v14 - 8), 0xFFFFFFFFFFFFFFFFLL);
        return 0;
      }

      if (v8 != 5)
      {
        return 1;
      }

      v11 = *(a1 + 16) + 17 * *(a1 + 8);
      v12 = *(v11 - 17);
      if (v12 != 2)
      {
        if (v12 != 1)
        {
          if (!*(v11 - 17))
          {
            v10 = *(v11 - 16);
            goto LABEL_34;
          }

          return 1;
        }

        v9 = *(v11 - 16);
LABEL_18:
        sqlite3_result_double(a2, v9);
        return 0;
      }

      v15 = *(v11 - 16);
      v16 = [v15 UTF8String];
      v7 = [v15 length];
      v6 = a2;
      v5 = v16;
      goto LABEL_12;
    }

    v5 = *(*(a1 + 16) + 8 * *(a1 + 8) - 8);
LABEL_11:
    v6 = a2;
    v7 = -1;
LABEL_12:
    sqlite3_result_text(v6, v5, v7, 0);
    return 0;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v10 = *(a1 + 24);
      goto LABEL_34;
    }

    if (a3 != 5)
    {
      return 1;
    }

    v5 = azType[*(a1 + 32)];
    goto LABEL_11;
  }

  return 0;
}

uint64_t carrayFilter(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, sqlite3_value **a5)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v8 = (a1 + 16);
  if (a2 - 2 >= 2)
  {
    if (a2 != 1)
    {
      goto LABEL_10;
    }

    v11 = sqlite3_value_pointer(*a5, "carray-bind");
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = *(v11 + 2);
    *(a1 + 16) = *v11;
    *(a1 + 24) = v12;
    LOBYTE(v10) = v11[12] & 7;
  }

  else
  {
    v9 = sqlite3_value_pointer(*a5, "carray");
    *v8 = v9;
    if (v9)
    {
      v9 = sqlite3_value_int64(a5[1]);
    }

    *(a1 + 24) = v9;
    if (a2 >= 3)
    {
      v14 = sqlite3_value_text(a5[2]);
      v10 = 0;
      while (sqlite3_stricmp(v14, azType[v10]))
      {
        if (++v10 == 6)
        {
          *(*a1 + 16) = sqlite3_mprintf("unknown datatype: %Q", v14);
          return 1;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  *(a1 + 32) = v10;
LABEL_10:
  result = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t carrayOpen(uint64_t a1, void *a2)
{
  v3 = sqlite3_malloc(40);
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  result = 0;
  v4[4] = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *a2 = v4;
  return result;
}

uint64_t carrayBestIndex(uint64_t a1, uint64_t a2)
{
  if (*a2 < 1)
  {
    goto LABEL_19;
  }

  v2 = 0;
  v3 = (*(a2 + 8) + 5);
  v4 = -1;
  v5 = -1;
  v6 = -1;
  do
  {
    if (*v3 && *(v3 - 1) == 2)
    {
      v7 = *(v3 - 5);
      if (v7 == 3)
      {
        v8 = v2;
      }

      else
      {
        v8 = v6;
      }

      if (v7 == 4)
      {
        v8 = v6;
        v9 = v2;
      }

      else
      {
        v9 = v5;
      }

      if (v7 == 5)
      {
        v4 = v2;
      }

      else
      {
        v6 = v8;
        v5 = v9;
      }
    }

    ++v2;
    v3 += 12;
  }

  while (*a2 != v2);
  if ((v6 & 0x80000000) != 0)
  {
LABEL_19:
    *(a2 + 64) = 0x41DFFFFFFFC00000;
    *(a2 + 72) = 0x7FFFFFFFLL;
    *(a2 + 40) = 0;
  }

  else
  {
    v10 = *(a2 + 32);
    v11 = v10 + 8 * v6;
    *v11 = 1;
    *(v11 + 4) = 1;
    *(a2 + 64) = 0x3FF0000000000000;
    *(a2 + 72) = 100;
    *(a2 + 40) = 1;
    if ((v5 & 0x80000000) == 0)
    {
      v12 = v10 + 8 * v5;
      *v12 = 2;
      *(v12 + 4) = 1;
      *(a2 + 40) = 2;
      if ((v4 & 0x80000000) == 0)
      {
        v13 = v10 + 8 * v4;
        *v13 = 3;
        *(v13 + 4) = 1;
        *(a2 + 40) = 3;
      }
    }
  }

  return 0;
}

uint64_t carrayConnect(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sqlite3_declare_vtab(a1, "CREATE TABLE x(value,idx,tag,pointer hidden,count hidden,ctype hidden)");
  if (!result)
  {
    v7 = sqlite3_malloc(24);
    *a5 = v7;
    if (v7)
    {
      v8 = v7;
      result = 0;
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

_DWORD *msv_sql_carray_bind(sqlite3_stmt *a1, int a2, uint64_t a3, int a4, int a5)
{
  result = sqlite3_malloc64(0x18uLL);
  if (result)
  {
    result[2] = a4;
    result[3] = a5;
    *result = a3;
    *(result + 2) = 0;

    return sqlite3_bind_pointer(a1, a2, result, "carray-bind", carrayBindDel);
  }

  return result;
}

void carrayBindDel(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v2(*a1);
  }

  sqlite3_free(a1);
}

uint64_t __Block_byref_object_copy__4910(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

_DWORD *_MSV_XXH_XXH32_update(_DWORD *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    v6 = result[1];
    v7 = *result + __n;
    v9 = __n > 0xF || v7 > 0xF;
    *result = v7;
    result[1] = v6 | v9;
    v10 = result[10];
    if (v10 + __n <= 0xF)
    {
      result = memcpy(result + v10 + 24, __src, __n);
      LODWORD(v11) = v5[10] + v3;
LABEL_18:
      v5[10] = v11;
      return result;
    }

    v12 = &__src[__n];
    if (v10)
    {
      result = memcpy(result + v10 + 24, __src, (16 - v10));
      HIDWORD(v13) = v5[2] - 2048144777 * v5[6];
      LODWORD(v13) = HIDWORD(v13);
      v14 = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[3] - 2048144777 * v5[7];
      LODWORD(v13) = HIDWORD(v13);
      v5[2] = v14;
      v5[3] = -1640531535 * (v13 >> 19);
      v15 = v5[9];
      HIDWORD(v13) = v5[4] - 2048144777 * v5[8];
      LODWORD(v13) = HIDWORD(v13);
      v5[4] = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[5] - 2048144777 * v15;
      LODWORD(v13) = HIDWORD(v13);
      v5[5] = -1640531535 * (v13 >> 19);
      v4 += (16 - v5[10]);
      v5[10] = 0;
    }

    if (v4 <= v12 - 16)
    {
      v16 = v5[2];
      v17 = v5[3];
      v18 = v5[4];
      v19 = v5[5];
      do
      {
        HIDWORD(v20) = v16 - 2048144777 * *v4;
        LODWORD(v20) = HIDWORD(v20);
        v16 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v17 - 2048144777 * *(v4 + 1);
        LODWORD(v20) = HIDWORD(v20);
        v17 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v18 - 2048144777 * *(v4 + 2);
        LODWORD(v20) = HIDWORD(v20);
        v18 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v19 - 2048144777 * *(v4 + 3);
        LODWORD(v20) = HIDWORD(v20);
        v19 = -1640531535 * (v20 >> 19);
        v4 += 16;
      }

      while (v4 <= v12 - 16);
      v5[2] = v16;
      v5[3] = v17;
      v5[4] = v18;
      v5[5] = v19;
    }

    if (v4 < v12)
    {
      v11 = v12 - v4;
      result = memcpy(v5 + 6, v4, v11);
      goto LABEL_18;
    }
  }

  return result;
}

void _aggregateFunctionFinal(sqlite3_context *a1)
{
  _aggregateFunctionValue(a1);
  v2 = *sqlite3_aggregate_context(a1, 8);
  if (v2)
  {
  }
}

void _aggregateFunctionValue(sqlite3_context *a1)
{
  v2 = sqlite3_user_data(a1);
  v3 = [_MSVSQLDatabaseFunctionContext alloc];
  if (v3)
  {
    v11.receiver = v3;
    v11.super_class = _MSVSQLDatabaseFunctionContext;
    v4 = [(sqlite3_context *)&v11 init];
    v5 = v4;
    if (v4)
    {
      *(v4 + 1) = a1;
      *(v4 + 4) = 0;
      *(v4 + 3) = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *sqlite3_aggregate_context(a1, 8);
  if (v2)
  {
    v7 = v2[7];
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(v7 + 16))(v7, v5, v6);
  if (v8 != v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _aggregateFunctionValue(sqlite3_context *)"];
    [v9 handleFailureInFunction:v10 file:@"MSVSQLDatabase.m" lineNumber:1411 description:@"function did not return any result"];
  }
}

void _aggregateFunctionStep(sqlite3_context *a1, int a2, uint64_t a3)
{
  v6 = sqlite3_user_data(a1);
  v7 = [_MSVSQLDatabaseFunctionContext alloc];
  if (v7)
  {
    v19.receiver = v7;
    v19.super_class = _MSVSQLDatabaseFunctionContext;
    v8 = [(sqlite3_context *)&v19 init];
    v9 = v8;
    if (v8)
    {
      *(v8 + 1) = a1;
      *(v8 + 4) = a2;
      *(v8 + 3) = a3;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = sqlite3_aggregate_context(a1, 8);
  v11 = *v10;
  if (!*v10)
  {
    if (v6)
    {
      v12 = v6[4];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12[2];
    v14 = v12;
    v11 = v13();

    *v10 = v11;
  }

  if (v6)
  {
    v15 = v6[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15[2];
  v17 = v15;
  v18 = v16();

  *v10 = v18;
}

void _aggregateFunctionInverse(sqlite3_context *a1, int a2, uint64_t a3)
{
  v6 = sqlite3_user_data(a1);
  v7 = [_MSVSQLDatabaseFunctionContext alloc];
  if (v7)
  {
    v16.receiver = v7;
    v16.super_class = _MSVSQLDatabaseFunctionContext;
    v8 = [(sqlite3_context *)&v16 init];
    v9 = v8;
    if (v8)
    {
      *(v8 + 1) = a1;
      *(v8 + 4) = a2;
      *(v8 + 3) = a3;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = sqlite3_aggregate_context(a1, 8);
  v11 = *v10;
  if (v6)
  {
    v12 = v6[6];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12[2];
  v14 = v12;
  v15 = v13();

  *v10 = v15;
}

void _scalarFunctionImplementation(sqlite3_context *a1, int a2, uint64_t a3)
{
  v6 = sqlite3_user_data(a1);
  v7 = [_MSVSQLDatabaseFunctionContext alloc];
  if (v7)
  {
    v13.receiver = v7;
    v13.super_class = _MSVSQLDatabaseFunctionContext;
    v8 = [(sqlite3_context *)&v13 init];
    v9 = v8;
    if (v8)
    {
      *(v8 + 1) = a1;
      *(v8 + 4) = a2;
      *(v8 + 3) = a3;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = (v6)[2](v6, v9);
  if (v10 != v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _scalarFunctionImplementation(sqlite3_context *, int, sqlite3_value **)"}];
    [v11 handleFailureInFunction:v12 file:@"MSVSQLDatabase.m" lineNumber:1378 description:@"function did not return any result"];
  }
}

uint64_t _MSV_XXH_XXH32_digest(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = vaddvq_s32(vorrq_s8(vshlq_u32(*(a1 + 8), xmmword_1AC881C30), vshlq_u32(*(a1 + 8), xmmword_1AC881C20)));
  }

  else
  {
    v1 = *(a1 + 16) + 374761393;
  }

  v2 = *a1 + v1;
  v3 = (a1 + 24);
  v4 = *(a1 + 40) & 0xF;
  if ((*(a1 + 40) & 0xFu) >= 4)
  {
    do
    {
      v5 = *v3++;
      HIDWORD(v6) = v2 - 1028477379 * v5;
      LODWORD(v6) = HIDWORD(v6);
      v2 = 668265263 * (v6 >> 15);
      v4 -= 4;
    }

    while (v4 > 3);
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    HIDWORD(v8) = v2 + 374761393 * v7;
    LODWORD(v8) = HIDWORD(v8);
    v2 = -1640531535 * (v8 >> 21);
  }

  v9 = -1028477379 * ((-2048144777 * (v2 ^ (v2 >> 15))) ^ ((-2048144777 * (v2 ^ (v2 >> 15))) >> 13));
  return v9 ^ HIWORD(v9);
}

void MSVWithCStringArray(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if ([v8 count])
  {
    v4 = [v8 count];
    v5 = malloc_type_malloc(8 * v4, 0x10040436913F5uLL);
    bzero(v5, 8 * v4);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        v7 = [v8 objectAtIndexedSubscript:i];
        *(v5 + i) = [v7 UTF8String];
      }
    }

    v3[2](v3, v5);
    free(v5);
  }
}

void *__MSVNanoIDSetTestingArc4StateSeed(uint64_t a1, unint64_t a2)
{
  if (__MSVNanoIDTestingArc4State)
  {
    free(__MSVNanoIDTestingArc4State);
    __MSVNanoIDTestingArc4State = 0;
  }

  result = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
  __MSVNanoIDTestingArc4State = result;
  if (result)
  {
    v5 = result;
    *result = 0;
    result = malloc_type_malloc(0x100uLL, 0xBDE05430uLL);
    v6 = 0;
    v5[1] = result;
    do
    {
      *(v5[1] + v6) = v6;
      ++v6;
    }

    while (v6 != 256);
    v7 = __MSVNanoIDTestingArc4State;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = *(v7 + 8);
  do
  {
    v11 = *(v10 + v8);
    v9 += v11 + *(a1 + v8 % a2);
    *(v10 + v8) = *(v10 + v9);
    *(v10 + v9) = v11;
    ++v8;
  }

  while (v8 != 255);
  v12 = *(v7 + 8);
  v13 = 768;
  LODWORD(v14) = *v7;
  v15 = *(v7 + 4);
  do
  {
    v14 = (v14 + 1);
    v16 = *(v12 + v14);
    LOBYTE(v15) = v16 + v15;
    *(v12 + v14) = *(v12 + v15);
    *(v12 + v15) = v16;
    --v13;
  }

  while (v13);
  *v7 = v14;
  *(v7 + 4) = v15;
  return result;
}

id MSVNanoIDCreateWithRandomSource(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = [a3 mutableBytesWithLength:a2];
  v7 = [v5 length];
  v8 = [v5 cStringUsingEncoding:4];
  v9 = [v6 mutableBytes];
  if (a2 >= 1)
  {
    v10 = v9;
    v11 = a2;
    do
    {
      *v10 = *(v8 + *v10 % v7);
      ++v10;
      --v11;
    }

    while (v11);
  }

  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v9 length:a2 encoding:4];

  return v12;
}

uint64_t MSVNanoIDCreateFourChar()
{
  v0 = MSVNanoIDCreateWithCharacters(@"346789ABCDEFGHJKLMNPQRTUVWXYabcdefghijkmnpqrtwxyz", 4);
  v1 = [v0 UTF8String];
  v2 = (v1[1] << 16) | (*v1 << 24) | (v1[2] << 8);
  v3 = v1[3];

  return v2 | v3;
}

uint64_t MSVNanoIDCreateEightChar()
{
  v0 = MSVNanoIDCreateWithCharacters(@"346789ABCDEFGHJKLMNPQRTUVWXYabcdefghijkmnpqrtwxyz", 8);
  v1 = [v0 UTF8String];
  v2.i32[0] = *v1;
  v3 = vmovl_u16(*&vmovl_u8(v2));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5 = vshrq_n_s64(vshlq_n_s64(v4, 0x38uLL), 0x38uLL);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  v6 = vorrq_s8(vshlq_u64(v5, xmmword_1AC881C70), vshlq_u64(vshrq_n_s64(vshlq_n_s64(v4, 0x38uLL), 0x38uLL), xmmword_1AC881C60));
  v7 = *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | (*(v1 + 4) << 24);
  v8 = (*(v1 + 5) << 16) | (*(v1 + 6) << 8) | *(v1 + 7);

  return v7 | v8;
}

void sub_1AC874104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void *__getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBUserNotificationForcesModalAlertAppearance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUserNotificationForcesModalAlertAppearanceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *SpringBoardServicesLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E79828E0;
    v7 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SpringBoardServicesLibraryCore_frameworkLibrary;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"MSVSystemDialog.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

void *__getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBUserNotificationDisplayActionButtonOnLockScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUserNotificationDisplayActionButtonOnLockScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBUserNotificationDismissesOverlaysInLockScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUserNotificationDismissesOverlaysInLockScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBUserNotificationAllowedApplicationsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardServicesLibrary();
  result = dlsym(v2, "SBUserNotificationAllowedApplicationsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUserNotificationAllowedApplicationsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _MSVSystemDialogUserNotificationCallback(__CFUserNotification *a1, char a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = +[MSVSystemDialogManager sharedManager];
  v5 = [v4 systemDialogForUserNotification:a1];
  if (!v5)
  {
    goto LABEL_17;
  }

  if ((a2 & 3) != 0)
  {
    v6 = 2 * ((a2 & 3) == 1);
  }

  else
  {
    v6 = 1;
  }

  ResponseDictionary = CFUserNotificationGetResponseDictionary(a1);
  if (ResponseDictionary)
  {
    v8 = CFDictionaryGetValue(ResponseDictionary, *MEMORY[0x1E695EEA8]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = 0;
        goto LABEL_13;
      }

      v9 = v8;
    }

    v10 = v9;
LABEL_13:

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  v11 = [[MSVSystemDialogResponse alloc] initWithIdentifier:v6 textFieldValues:v10];
  v12 = [v5 pendingCompletion];
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, v11);
  }

  [v4 unregisterSystemDialogWithUserNotification:a1];
  [v5 setPresentedUserNotification:0];
  [v5 setPendingCompletion:0];
  [v5 setActiveRunLoopSource:0];

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__5286(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id MSVImageUtilitiesCopyUTTypeForImageFormat(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *MSVImageUtilitiesCopyUTTypeForImageFormat(MSVImageFormat)"];
    [v2 handleFailureInFunction:v3 file:@"MSVImageUtilities.m" lineNumber:33 description:@"Unsupported MSVImageFormat"];

    v1 = 0;
  }

  else
  {
    v1 = off_1E7982918[a1];
  }

  v4 = [(__CFString *)v1 copy];

  return v4;
}

id MSVImageUtilitiesCopyUTTypeForImage()
{
  Property = CGImageGetProperty();
  if (Property)
  {
    v1 = Property;
    v2 = CFGetTypeID(Property);
    if (v2 == CFStringGetTypeID())
    {
      Property = v1;
    }

    else
    {
      Property = 0;
    }
  }

  return Property;
}

CGImageSourceRef MSVImageUtilitiesCreateImageSource(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGImageSourceRef MSVImageUtilitiesCreateImageSource(NSURL *__strong)"];
    [v7 handleFailureInFunction:v8 file:@"MSVImageUtilities.m" lineNumber:53 description:@"MSVImageUtilitiesCreateImageSource: imageURL cannot be NULL"];
  }

  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v1 path];
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = CGImageSourceCreateWithURL(v1, 0);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CGImageRef MSVImageUtilitiesCreateImageFromSource(CGImageSource *a1, size_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef MSVImageUtilitiesCreateImageFromSource(CGImageSourceRef, size_t)"}];
    [v8 handleFailureInFunction:v9 file:@"MSVImageUtilities.m" lineNumber:64 description:@"MSVImageUtilitiesCreateImageFromSource: imageSource cannot be NULL"];
  }

  v10 = *MEMORY[0x1E696E0A8];
  v11[0] = MEMORY[0x1E695E110];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, a2, v4);

  v6 = *MEMORY[0x1E69E9840];
  return ImageAtIndex;
}

CGImageDestinationRef MSVImageUtilitiesCreateDataImageDestination(unint64_t a1, void *a2, size_t a3)
{
  v5 = a2;
  v6 = MSVImageUtilitiesCopyUTTypeForImageFormat(a1);
  v7 = CGImageDestinationCreateWithData(v5, v6, a3, 0);

  return v7;
}

CGImageDestinationRef MSVImageUtilitiesCreateFileImageDestination(unint64_t a1, void *a2, size_t a3)
{
  v5 = a2;
  v6 = MSVImageUtilitiesCopyUTTypeForImageFormat(a1);
  v7 = CGImageDestinationCreateWithURL(v5, v6, a3, 0);

  return v7;
}

BOOL MSVImageUtilitiesResizeSourceImageToDestination(CGImageSource *a1, size_t a2, uint64_t a3, CGImageDestination *a4, double a5)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL MSVImageUtilitiesResizeSourceImageToDestination(CGImageSourceRef, size_t, MSVImageFormat, CGImageDestinationRef, CGFloat)"}];
    [v16 handleFailureInFunction:v17 file:@"MSVImageUtilities.m" lineNumber:83 description:@"MSVImageUtilitiesResizeSourceImageToDestination: imageSource cannot be NULL"];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL MSVImageUtilitiesResizeSourceImageToDestination(CGImageSourceRef, size_t, MSVImageFormat, CGImageDestinationRef, CGFloat)"}];
  [v18 handleFailureInFunction:v19 file:@"MSVImageUtilities.m" lineNumber:84 description:@"MSVImageUtilitiesResizeSourceImageToDestination: imageDestination cannot be NULL"];

LABEL_3:
  v20[0] = *MEMORY[0x1E696E100];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v20[1] = *MEMORY[0x1E696DFE8];
  v21[0] = v10;
  v21[1] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a1, a2, v11);
  if (ThumbnailAtIndex)
  {
    v13 = _MSVImageUtilitiesCreateImageProperties(a3, 0.0, a5);
    CGImageDestinationAddImage(a4, ThumbnailAtIndex, v13);
    CFRelease(ThumbnailAtIndex);
  }

  v14 = *MEMORY[0x1E69E9840];
  return ThumbnailAtIndex != 0;
}

id _MSVImageUtilitiesCreateImageProperties(uint64_t a1, double a2, double a3)
{
  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E696E0A8]];
  if (a3 > 0.00000011920929)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696D328]];
  }

  if (a1 == 2)
  {
    [v6 setObject:*MEMORY[0x1E696D3E8] forKeyedSubscript:*MEMORY[0x1E696D8A0]];
    [v6 setObject:&unk_1F215CBD8 forKeyedSubscript:*MEMORY[0x1E696D3E0]];
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E696D400]];
    [v6 setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E696D408]];
    v9 = &unk_1F215CBF0;
    v10 = MEMORY[0x1E696D338];
  }

  else
  {
    if (a1)
    {
      goto LABEL_10;
    }

    if (a2 > 0.00000011920929)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
      [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696D338]];
    }

    v9 = MEMORY[0x1E695E118];
    v10 = MEMORY[0x1E696D370];
  }

  [v6 setObject:v9 forKeyedSubscript:*v10];
LABEL_10:

  return v6;
}

BOOL MSVImageUtilitiesResizeSourceImageToJPEGDestination(CGImageSource *a1, size_t a2, CGImageDestination *a3, double a4, double a5)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL MSVImageUtilitiesResizeSourceImageToJPEGDestination(CGImageSourceRef, size_t, CGImageDestinationRef, CGFloat, CGFloat)"}];
    [v16 handleFailureInFunction:v17 file:@"MSVImageUtilities.m" lineNumber:102 description:@"MSVImageUtilitiesResizeSourceImageToJPEGDestination: imageSource cannot be NULL"];

    if (a3)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL MSVImageUtilitiesResizeSourceImageToJPEGDestination(CGImageSourceRef, size_t, CGImageDestinationRef, CGFloat, CGFloat)"}];
  [v18 handleFailureInFunction:v19 file:@"MSVImageUtilities.m" lineNumber:103 description:@"MSVImageUtilitiesResizeSourceImageToJPEGDestination: imageDestination cannot be NULL"];

LABEL_3:
  v20[0] = *MEMORY[0x1E696E100];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v20[1] = *MEMORY[0x1E696DFE8];
  v21[0] = v10;
  v21[1] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a1, a2, v11);
  if (ThumbnailAtIndex)
  {
    v13 = _MSVImageUtilitiesCreateImageProperties(0, a4, a5);
    CGImageDestinationAddImage(a3, ThumbnailAtIndex, v13);
    CFRelease(ThumbnailAtIndex);
  }

  v14 = *MEMORY[0x1E69E9840];
  return ThumbnailAtIndex != 0;
}

void MSVImageUtilitiesAddSourceImageToDestination(CGImageSource *a1, size_t a2, uint64_t a3, CGImageDestination *a4)
{
  if (a1)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MSVImageUtilitiesAddSourceImageToDestination(CGImageSourceRef, size_t, MSVImageFormat, CGImageDestinationRef)"}];
    [v8 handleFailureInFunction:v9 file:@"MSVImageUtilities.m" lineNumber:121 description:@"MSVImageUtilitiesAddSourceImageToDestination: imageSource cannot be NULL"];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MSVImageUtilitiesAddSourceImageToDestination(CGImageSourceRef, size_t, MSVImageFormat, CGImageDestinationRef)"}];
  [v10 handleFailureInFunction:v11 file:@"MSVImageUtilities.m" lineNumber:122 description:@"MSVImageUtilitiesAddSourceImageToDestination: imageDestination cannot be NULL"];

LABEL_3:
  v12 = _MSVImageUtilitiesCreateImageProperties(a3, 0.0, 0.0);
  CGImageDestinationAddImageFromSource(a4, a1, a2, v12);
}

void MSVImageUtilitiesAddSourceImageToJPEGDestination(CGImageSource *a1, size_t a2, CGImageDestination *a3, double a4)
{
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MSVImageUtilitiesAddSourceImageToJPEGDestination(CGImageSourceRef, size_t, CGImageDestinationRef, CGFloat)"}];
    [v8 handleFailureInFunction:v9 file:@"MSVImageUtilities.m" lineNumber:129 description:@"MSVImageUtilitiesAddSourceImageToJPEGDestination: imageSource cannot be NULL"];

    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MSVImageUtilitiesAddSourceImageToJPEGDestination(CGImageSourceRef, size_t, CGImageDestinationRef, CGFloat)"}];
  [v10 handleFailureInFunction:v11 file:@"MSVImageUtilities.m" lineNumber:130 description:@"MSVImageUtilitiesAddSourceImageToJPEGDestination: imageDestination cannot be NULL"];

LABEL_3:
  v12 = _MSVImageUtilitiesCreateImageProperties(0, a4, 0.0);
  CGImageDestinationAddImageFromSource(a3, a1, a2, v12);
}

void MSVImageUtilitiesAddImageToDestination(CGImage *a1, uint64_t a2, CGImageDestination *a3)
{
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MSVImageUtilitiesAddImageToDestination(CGImageRef, MSVImageFormat, CGImageDestinationRef)"}];
    [v6 handleFailureInFunction:v7 file:@"MSVImageUtilities.m" lineNumber:137 description:@"MSVImageUtilitiesAddImageToDestination: image cannot be NULL"];

    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MSVImageUtilitiesAddImageToDestination(CGImageRef, MSVImageFormat, CGImageDestinationRef)"}];
  [v8 handleFailureInFunction:v9 file:@"MSVImageUtilities.m" lineNumber:138 description:@"MSVImageUtilitiesAddImageToDestination: imageDestination cannot be NULL"];

LABEL_3:
  v10 = _MSVImageUtilitiesCreateImageProperties(a2, 0.0, 0.0);
  CGImageDestinationAddImage(a3, a1, v10);
}

void MSVImageUtilitiesAddJPEGToDestination(CGImage *a1, CGImageDestination *a2, double a3)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MSVImageUtilitiesAddJPEGToDestination(CGImageRef, CGFloat, CGImageDestinationRef)"}];
    [v6 handleFailureInFunction:v7 file:@"MSVImageUtilities.m" lineNumber:145 description:@"MSVImageUtilitiesAddJPEGToDestination: image cannot be NULL"];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MSVImageUtilitiesAddJPEGToDestination(CGImageRef, CGFloat, CGImageDestinationRef)"}];
  [v8 handleFailureInFunction:v9 file:@"MSVImageUtilities.m" lineNumber:146 description:@"MSVImageUtilitiesAddJPEGToDestination: imageDestination cannot be NULL"];

LABEL_3:
  v10 = _MSVImageUtilitiesCreateImageProperties(0, a3, 0.0);
  CGImageDestinationAddImage(a2, a1, v10);
}

double MSVImageUtilitiesMakeBoundingBoxSize(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0 || a2 == 0.0)
  {
    result = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v4 = a3 / a1;
    v5 = a4 / a2;
    if (v4 >= v5)
    {
      v4 = v5;
    }

    return a1 * v4;
  }

  return result;
}

__CFString *NSStringFromMSVErrorCode(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"MissingDependency";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
    }
  }

  else
  {
    v2 = @"Unknown";
  }

  return v2;
}

__CFString *NSStringFromMSVHasherErrorCode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E7982948[a1];
  }

  return v2;
}

__CFString *NSStringFromMSVSQLDatabaseErrorCode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E7982960[a1];
  }

  return v2;
}

void sub_1AC877B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  objc_destroyWeak((v12 + 56));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v11 + 40));
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v13 - 104));
  _Unwind_Resume(a1);
}

void sub_1AC878F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6051(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE70FE8](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE70FF0](a1, a2);
  result.rem = v3;
  result.quot = v2;
  return result;
}