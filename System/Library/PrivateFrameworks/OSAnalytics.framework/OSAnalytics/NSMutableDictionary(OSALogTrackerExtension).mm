@interface NSMutableDictionary(OSALogTrackerExtension)
- (uint64_t)osa_logTracker_getForSubtype:()OSALogTrackerExtension forOwner:;
- (uint64_t)osa_logTracker_isLog:()OSALogTrackerExtension byKey:count:withinLimit:withOptions:errorDescription:;
- (uint64_t)osa_logTracker_recordNixedDuplicate:()OSALogTrackerExtension;
- (void)osa_logTracker_incrementForSubtype:()OSALogTrackerExtension signature:filepath:;
- (void)osa_logTracker_incrementForSubtype_internal:()OSALogTrackerExtension signature:filepath:scan:;
- (void)osa_logTracker_trackLogTypes_internal:()OSALogTrackerExtension forOwner:rescan:;
@end

@implementation NSMutableDictionary(OSALogTrackerExtension)

- (void)osa_logTracker_incrementForSubtype_internal:()OSALogTrackerExtension signature:filepath:scan:
{
  v40[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [a1 objectForKey:v10];
  if (v12)
  {
    v13 = v12;
    [v12 setCount:{objc_msgSend(v12, "count") + 1}];
  }

  else
  {
    v13 = +[OSALogTrackerObject tracker];
    [a1 setObject:v13 forKey:v10];
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
  v15 = [MEMORY[0x1E695DF00] date];
  if (a6)
  {
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v38 = 0;
    v17 = [v16 attributesOfItemAtPath:v14 error:&v38];
    v18 = v38;

    if (v17)
    {
      v19 = [v17 objectForKey:*MEMORY[0x1E696A308]];

      v15 = v19;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_incrementForSubtype_internal:v14 signature:v18 filepath:? scan:?];
    }
  }

  if (v13)
  {
    v20 = [v13 oldestDate];
    if (!v20)
    {
      goto LABEL_14;
    }

    v21 = v20;
    if (!v15)
    {

      goto LABEL_16;
    }

    v22 = [v13 oldestDate];
    v23 = [v22 compare:v15];

    if (v23 == 1)
    {
LABEL_14:
      [v13 setOldestDate:v15];
      [v13 setOldestLogPath:v14];
    }
  }

LABEL_16:
  v24 = [v11 length];
  if (a5 && v24)
  {
    if (!v13)
    {
      [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_incrementForSubtype_internal:signature:filepath:scan:];
    }

    v37 = v10;
    v25 = [v13 signatures];
    v26 = [v25 objectForKeyedSubscript:v11];

    if (v26)
    {
      v27 = [v26 objectForKeyedSubscript:@"dupes"];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
      v29 = [v28 copy];
      [v27 addObject:v29];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_incrementForSubtype_internal:signature:filepath:scan:];
      }
    }

    else
    {
      v39[0] = @"original";
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
      v35 = [v36 copy];
      v39[1] = @"dupes";
      v40[0] = v35;
      v30 = [MEMORY[0x1E695E0F0] mutableCopy];
      v40[1] = v30;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
      v32 = [v31 mutableCopy];
      v33 = [v13 signatures];
      [v33 setObject:v32 forKeyedSubscript:v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_incrementForSubtype_internal:signature:filepath:scan:];
      }
    }

    v10 = v37;
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)osa_logTracker_incrementForSubtype:()OSALogTrackerExtension signature:filepath:
{
  v11 = a3;
  v8 = a4;
  v9 = sAccountingSemaphore;
  v10 = dispatch_time(0, 1000000000);
  if (!dispatch_semaphore_wait(v9, v10))
  {
    [a1 osa_logTracker_incrementForSubtype_internal:v11 signature:v8 filepath:a5 scan:0];
    dispatch_semaphore_signal(sAccountingSemaphore);
  }
}

- (void)osa_logTracker_trackLogTypes_internal:()OSALogTrackerExtension forOwner:rescan:
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = sAccountingSemaphore;
  v11 = dispatch_time(0, 1000000000);
  if (!dispatch_semaphore_wait(v10, v11))
  {
    memset(&v35, 0, sizeof(v35));
    if (osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel)
    {
      if (stat([osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel UTF8String], &v35) == -1)
      {
        if (*__error() != 2 && (a5 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (!a5)
      {
LABEL_15:
        dispatch_semaphore_signal(sAccountingSemaphore);
        goto LABEL_16;
      }
    }

    v12 = osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel;
    osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel = 0;

    [a1 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_52];
    v13 = objc_autoreleasePoolPush();
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_trackLogTypes_internal:forOwner:rescan:];
    }

    v44 = @"exclude-retired";
    v45 = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v15 = [v14 mutableCopy];

    if (v9)
    {
      [v15 setObject:v9 forKeyedSubscript:@"file-owner"];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __101__NSMutableDictionary_OSALogTrackerExtension__osa_logTracker_trackLogTypes_internal_forOwner_rescan___block_invoke_54;
    v22[3] = &unk_1E7A27FF8;
    v26 = &v46;
    v24 = &v31;
    v22[4] = a1;
    v23 = v8;
    v25 = &v27;
    [OSALog iterateLogsWithOptions:v15 usingBlock:v22];
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = v32[3];
      v19 = [a1 count];
      v20 = v28[3];
      *buf = 134218754;
      v37 = v18;
      v38 = 2048;
      v39 = v19;
      v40 = 2048;
      v41 = v20;
      v42 = 2112;
      v43 = osa_logTracker_trackLogTypes_internal_forOwner_rescan__rescanSentinel;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "scanned %zu logs with %lu types and %zu unknowns (sentinel is %@)", buf, 0x2Au);
    }

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);
    objc_autoreleasePoolPop(v13);
    goto LABEL_15;
  }

LABEL_16:

  v21 = *MEMORY[0x1E69E9840];
}

- (uint64_t)osa_logTracker_getForSubtype:()OSALogTrackerExtension forOwner:
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__NSMutableDictionary_OSALogTrackerExtension__osa_logTracker_getForSubtype_forOwner___block_invoke;
  block[3] = &unk_1E7A28020;
  block[4] = a1;
  v8 = v6;
  v15 = v8;
  v9 = v7;
  v16 = v9;
  if (osa_logTracker_getForSubtype_forOwner__onceToken != -1)
  {
    dispatch_once(&osa_logTracker_getForSubtype_forOwner__onceToken, block);
  }

  v10 = [a1 objectForKey:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 count];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (uint64_t)osa_logTracker_recordNixedDuplicate:()OSALogTrackerExtension
{
  value = 0;
  getxattr(path, "Multiple", &value, 2uLL, 0, 0);
  ++value;
  setxattr(path, "Multiple", &value, 2uLL, 0, 0);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_recordNixedDuplicate:?];
  }

  return utimes(path, 0);
}

- (uint64_t)osa_logTracker_isLog:()OSALogTrackerExtension byKey:count:withinLimit:withOptions:errorDescription:
{
  v97 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [v15 objectForKeyedSubscript:@"file-owner"];
  v83 = a1;
  v85 = [a1 osa_logTracker_getForSubtype:v14 forOwner:v16];
  v17 = v13;
  v18 = v15;
  v19 = [v18 objectForKeyedSubscript:@"set-log-limit"];
  v20 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.osanalytics"];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_CountLimit", v17];
  v22 = [v20 objectForKey:v21];

  v84 = v18;
  if (([v17 isEqualToString:@"210"] & 1) == 0)
  {
    v79 = v16;
    v24 = v14;
    v25 = a5;
    v26 = a6;
    v27 = v17;
    v28 = [v18 objectForKeyedSubscript:@"override-limit"];
    v29 = [v28 BOOLValue];

    if (v29)
    {
      v23 = -1;
    }

    else
    {
      if (!v22)
      {
        v17 = v27;
        if (!v19)
        {
          v43 = [v27 isEqualToString:@"288"];
          a6 = v26;
          if ((v43 & 1) == 0)
          {
            a5 = v25;
            if (([v17 isEqualToString:@"187"] & 1) == 0)
            {
              v14 = v24;
              if ([v17 hasPrefix:@"211"])
              {
                v23 = 150;
              }

              else if ([v17 hasPrefix:@"328"])
              {
                v23 = 250;
              }

              else
              {
                v23 = 25;
              }

              goto LABEL_11;
            }

            v23 = 100;
LABEL_10:
            v14 = v24;
LABEL_11:
            v16 = v79;
            goto LABEL_12;
          }

          v23 = 100;
LABEL_9:
          a5 = v25;
          goto LABEL_10;
        }

        v23 = [v19 unsignedIntegerValue];
LABEL_8:
        a6 = v26;
        goto LABEL_9;
      }

      v23 = [v22 integerValue];
    }

    v17 = v27;
    goto LABEL_8;
  }

  v23 = -1;
LABEL_12:

  v30 = v85;
  v31 = v23;
  if (v85 < v23 || (v82 = v23, [v83 osa_logTracker_trackLogTypes_internal:v14 forOwner:v16 rescan:osa_logTracker_isLog_byKey_count_withinLimit_withOptions_errorDescription__rescanOldFiles], v30 = objc_msgSend(v83, "osa_logTracker_getForSubtype:forOwner:", v14, v16), v31 = v23, v30 < v23))
  {
    v32 = 1;
    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v86 = v30;
  v78 = [v18 objectForKeyedSubscript:@"Signature"];
  if (v78)
  {
    v35 = sAccountingSemaphore;
    v36 = dispatch_time(0, 1000000000);
    if (!dispatch_semaphore_wait(v35, v36))
    {
      v37 = [v83 objectForKey:v14];
      if (!v37)
      {
        [NSMutableDictionary(OSALogTrackerExtension) osa_logTracker_isLog:byKey:count:withinLimit:withOptions:errorDescription:];
      }

      v38 = v37;
      v39 = [v37 signatures];
      v40 = [v39 objectForKeyedSubscript:v78];

      v41 = v40;
      if (v40)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "known duplicate signature", buf, 2u);
        }

        v42 = [v40 objectForKeyedSubscript:@"original"];
        [v83 osa_logTracker_recordNixedDuplicate:{objc_msgSend(v42, "fileSystemRepresentation")}];

        v41 = v40;
        goto LABEL_55;
      }

      v74 = v17;
      v75 = a5;
      v80 = v16;
      v76 = v14;
      v77 = a6;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v44 = [v38 signatures];
      v89 = [v44 countByEnumeratingWithState:&v90 objects:v96 count:16];
      if (v89)
      {
        v45 = 0;
        obj = v44;
        v88 = *v91;
        do
        {
          for (i = 0; i != v89; ++i)
          {
            if (*v91 != v88)
            {
              objc_enumerationMutation(obj);
            }

            v47 = *(*(&v90 + 1) + 8 * i);
            v48 = [v38 signatures];
            v49 = [v48 objectForKeyedSubscript:v47];
            v50 = [v49 objectForKeyedSubscript:@"dupes"];
            v51 = v38;
            v52 = [v50 count];
            v53 = [v45 objectForKeyedSubscript:@"dupes"];
            v54 = v45;
            v55 = [v53 count];

            if (v52 <= v55)
            {
              v38 = v51;
              v45 = v54;
            }

            else
            {
              v56 = [v51 signatures];
              v45 = [v56 objectForKeyedSubscript:v47];

              v38 = v51;
            }
          }

          v89 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
        }

        while (v89);

        v41 = 0;
        if (v45)
        {
          v14 = v76;
          a6 = v77;
          a5 = v75;
          v16 = v80;
          do
          {
            v57 = [v45 objectForKeyedSubscript:@"dupes"];
            v58 = [v57 count];

            if (v58 < 2)
            {
              break;
            }

            v59 = [v45 objectForKeyedSubscript:@"dupes"];
            v60 = [v59 objectAtIndex:0];

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v95 = v60;
              _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "new signature found -- prioritizing over duplicate (removing %@)", buf, 0xCu);
            }

            v61 = [v45 objectForKeyedSubscript:@"dupes"];
            [v61 removeObjectAtIndex:0];

            v62 = [v45 objectForKeyedSubscript:@"original"];
            [v83 osa_logTracker_recordNixedDuplicate:{objc_msgSend(v62, "fileSystemRepresentation")}];

            v63 = [v60 fileSystemRepresentation];
            remove(v63, v64);
            [v38 setCount:{objc_msgSend(v38, "count") - 1}];

            --v86;
            v41 = 0;
          }

          while (v86 >= v82);

LABEL_54:
          v17 = v74;
LABEL_55:
          dispatch_semaphore_signal(sAccountingSemaphore);

          goto LABEL_56;
        }
      }

      else
      {
      }

      v14 = v76;
      a6 = v77;
      a5 = v75;
      v16 = v80;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "new signature found -- but no room available", buf, 2u);
      }

      goto LABEL_54;
    }
  }

LABEL_56:
  if (osa_logTracker_isLog_byKey_count_withinLimit_withOptions_errorDescription__rescanOldFiles == 1)
  {
    osa_logTracker_isLog_byKey_count_withinLimit_withOptions_errorDescription__rescanOldFiles = 0;
  }

  if (v86 >= v82)
  {
    if ([v83 osa_logTracker_shouldRotateLog:v17])
    {
      v65 = a6;
      v66 = v17;
      v67 = +[OSALogTrackerObject sharedTrackers];
      v68 = [v67 objectForKey:v14];

      v69 = [v68 oldestLogPath];
      v70 = [MEMORY[0x1E696AC08] defaultManager];
      v71 = v70;
      if (v69 && [v70 fileExistsAtPath:v69] && (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "removeItemAtPath:error:", v69, 0), v72, !v73))
      {
        v32 = 0;
        if (a8)
        {
          *a8 = @"Delete oldest file failed";
        }
      }

      else
      {
        v32 = 1;
        osa_logTracker_isLog_byKey_count_withinLimit_withOptions_errorDescription__rescanOldFiles = 1;
      }

      v17 = v66;
      a6 = v65;
    }

    else
    {
      v32 = 0;
      if (a8)
      {
        *a8 = @"Log limit exceeded";
      }
    }
  }

  else
  {
    v32 = 1;
  }

  v30 = v86;
  v31 = v82;
  if (a5)
  {
LABEL_15:
    *a5 = v30;
  }

LABEL_16:
  if (a6)
  {
    *a6 = v31;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (void)osa_logTracker_incrementForSubtype_internal:()OSALogTrackerExtension signature:filepath:scan:.cold.1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to retrieve file attributes at path %@. Error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)osa_logTracker_incrementForSubtype_internal:()OSALogTrackerExtension signature:filepath:scan:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)osa_logTracker_incrementForSubtype_internal:()OSALogTrackerExtension signature:filepath:scan:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)osa_logTracker_recordNixedDuplicate:()OSALogTrackerExtension .cold.1(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

@end