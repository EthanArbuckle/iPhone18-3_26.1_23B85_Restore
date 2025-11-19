@interface FigCaptureSourceBackingsProvider
+ (id)sharedCaptureSourceBackingsProvider;
+ (uint64_t)initialize;
+ (void)initialize;
- (uint64_t)_addBackingsForSourceInfoDictionaries:(uint64_t)result;
- (uint64_t)_removeBackingsWithDeviceIDs:(uint64_t)result;
- (uint64_t)updateBackingCachedPropertiesByDeviceID:(uint64_t)result;
- (void)dealloc;
- (void)initWithSourceInfoDictionaries:(void *)a3 commonSettings:;
@end

@implementation FigCaptureSourceBackingsProvider

+ (id)sharedCaptureSourceBackingsProvider
{
  FigSimpleMutexLock();
  if (gSourceInfoArrayChanged != 1)
  {
    v4 = gCaptureSourceBackings;
    if (gCaptureSourceBackings)
    {
      goto LABEL_66;
    }

    goto LABEL_10;
  }

  gSourceInfoArrayChanged = 0;
  v2 = gDefaultDeviceStreamsChanged;
  if (gDefaultDeviceStreamsChanged == 1)
  {

    gCaptureSourceBackings = 0;
    gDefaultDeviceStreamsChanged = 0;
  }

  if (dword_1EB58DF60)
  {
    LODWORD(v74) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (gCaptureSourceBackings)
  {
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
LABEL_10:
    v5 = CFPreferencesCopyValue(@"CaptureSourceInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (v5)
    {
      v48 = v5;
      if (dword_1EB58DF60)
      {
        LODWORD(v74) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v49 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v50 = v74;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v50;
        }

        else
        {
          v51 = v50 & 0xFFFFFFFE;
        }

        if (v51)
        {
          *v69 = 136315650;
          *&v69[4] = "cs_getBackingsForBuiltInCameras";
          v70 = 2112;
          v71 = @"com.apple.cameracapture.volatile";
          v72 = 2112;
          v73 = @"CaptureSourceInfo";
          LODWORD(v59) = 32;
          v57 = v69;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      gCaptureSourceBackings = csu_createBackingsFromCaptureSourceInfoDict(v48);
    }

    if (gCaptureSourceBackings)
    {
      goto LABEL_12;
    }
  }

  if (dword_1EB58DF60)
  {
    LODWORD(v74) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v46 = v74;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 0xFFFFFFFE;
    }

    if (v47)
    {
      *v69 = 136315650;
      *&v69[4] = "cs_getBackingsForBuiltInCameras";
      v70 = 2112;
      v71 = @"com.apple.cameracapture.volatile";
      v72 = 2112;
      v73 = @"CaptureSourceInfo";
      LODWORD(v59) = 32;
      v57 = v69;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v79 = 0x1F21702D0;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:{1, v57, v59}];
  v80[0] = 0;
  *v69 = 0;
  if (csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs(v52, v80, v69))
  {
    +[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider];
    v54 = 0;
  }

  else
  {
    v53 = [FigCaptureSourceBackingsProvider alloc];
    v54 = [(FigCaptureSourceBackingsProvider *)v53 initWithSourceInfoDictionaries:*v69 commonSettings:?];
  }

  gCaptureSourceBackings = v54;
  v55 = CFPreferencesCopyValue(@"CaptureSourceInfo", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v55)
  {
    v56 = v55;

    gCaptureSourceBackings = csu_createBackingsFromCaptureSourceInfoDict(v56);
  }

LABEL_12:
  if (dword_1EB58DF60)
  {
    LODWORD(v74) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = v74;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v9 = [objc_msgSend(gCaptureSourceBackings "sourceBackings")];
      *v69 = 136315394;
      *&v69[4] = "cs_getBackingsForBuiltInCameras";
      v70 = 1024;
      LODWORD(v71) = v9;
      LODWORD(v59) = 18;
      v57 = v69;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_19:
  v78 = 0;
  v61 = [MEMORY[0x1E695DF70] array];
  v10 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  v11 = [MEMORY[0x1E695DF70] arrayWithArray:v10];
  [v11 removeObject:0x1F21702D0];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v12 = [gCaptureSourceBackings sourceBackings];
  v13 = [v12 countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v75;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v75 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v74 + 1) + 8 * i);
        if ([v17 mediaType] == 1986618469)
        {
          v18 = [objc_msgSend(v17 "attributes")];
          [v11 removeObject:v18];
          if (([v10 containsObject:v18] & 1) == 0)
          {
            if (dword_1EB58DF60)
            {
              v19 = v12;
              v20 = v10;
              v21 = v11;
              LODWORD(v68) = 0;
              v67[0] = OS_LOG_TYPE_DEFAULT;
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v23 = v68;
              if (os_log_type_enabled(v22, v67[0]))
              {
                v24 = v23;
              }

              else
              {
                v24 = v23 & 0xFFFFFFFE;
              }

              if (v24)
              {
                *type = 136315394;
                v63 = "cs_getBackingsForBuiltInCameras";
                v64 = 2112;
                v65[0] = v18;
                LODWORD(v60) = 22;
                v58 = type;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v11 = v21;
              v10 = v20;
              v12 = v19;
            }

            [v61 addObject:{v18, v58, v60}];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v74 objects:v80 count:16];
    }

    while (v14);
  }

  v68 = 0;
  v25 = csu_createSourceInfoDictionariesFromAVCaptureSessionPlistForCaptureDeviceIDs(v11, &v78, &v68);
  if (v25)
  {
    v26 = v25;
    *v67 = 0;
    v66 = OS_LOG_TYPE_DEFAULT;
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v28 = *v67;
    if (os_log_type_enabled(v27, v66))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      *type = 136315650;
      v63 = "cs_getBackingsForBuiltInCameras";
      v64 = 1024;
      LODWORD(v65[0]) = v26;
      WORD2(v65[0]) = 2112;
      *(v65 + 6) = v78;
      LODWORD(v60) = 28;
      v58 = type;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([v78 count])
  {
    if (gCaptureSourceBackings)
    {
      [(FigCaptureSourceBackingsProvider *)gCaptureSourceBackings _addBackingsForSourceInfoDictionaries:v78];
    }

    else
    {
      v44 = [FigCaptureSourceBackingsProvider alloc];
      gCaptureSourceBackings = [(FigCaptureSourceBackingsProvider *)v44 initWithSourceInfoDictionaries:v78 commonSettings:v68];
    }
  }

  if ([v61 count])
  {
    [FigCaptureSourceBackingsProvider _removeBackingsWithDeviceIDs:?];
  }

  if (dword_1EB58DF60)
  {
    *v67 = 0;
    v66 = OS_LOG_TYPE_DEFAULT;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v31 = *v67;
    if (os_log_type_enabled(v30, v66))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (v32)
    {
      v33 = [v78 count];
      *type = 136315394;
      v63 = "cs_getBackingsForBuiltInCameras";
      v64 = 1024;
      LODWORD(v65[0]) = v33;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB58DF60)
    {
      *v67 = 0;
      v66 = OS_LOG_TYPE_DEFAULT;
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v35 = *v67;
      if (os_log_type_enabled(v34, v66))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        v37 = [v61 count];
        *type = 136315394;
        v63 = "cs_getBackingsForBuiltInCameras";
        v64 = 1024;
        LODWORD(v65[0]) = v37;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB58DF60)
      {
        *v67 = 0;
        v66 = OS_LOG_TYPE_DEFAULT;
        v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v39 = *v67;
        if (os_log_type_enabled(v38, v66))
        {
          v40 = v39;
        }

        else
        {
          v40 = v39 & 0xFFFFFFFE;
        }

        if (v40)
        {
          v41 = [objc_msgSend(gCaptureSourceBackings "sourceBackings")];
          *type = 136315394;
          v63 = "cs_getBackingsForBuiltInCameras";
          v64 = 1024;
          LODWORD(v65[0]) = v41;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  v4 = gCaptureSourceBackings;
LABEL_66:
  v42 = v4;
  FigSimpleMutexUnlock();
  return v42;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    gCaptureSourceBackingsLock = FigSimpleMutexCreate();
    sCurrentInterpreterBuildDate = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s %s", "Oct 15 2025", "21:14:12"];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    if (!+[BWFigCaptureDeviceVendor videoCaptureDeviceFirmwareIsLoaded])
    {
      v2 = *MEMORY[0x1E695E8B8];
      v3 = *MEMORY[0x1E695E898];
      CFPreferencesSetValue(@"CaptureSourceInfo", 0, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFPreferencesSynchronize(@"com.apple.cameracapture.volatile", v2, v3);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterAddWeakListener())
    {
      +[FigCaptureSourceBackingsProvider initialize];
    }

    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterAddWeakListener())
    {
      +[FigCaptureSourceBackingsProvider initialize];
    }

    CMNotificationCenterGetDefaultLocalCenter();
    if (FigNotificationCenterAddWeakListener())
    {
      +[FigCaptureSourceBackingsProvider initialize];
    }
  }
}

uint64_t __46__FigCaptureSourceBackingsProvider_initialize__block_invoke(uint64_t a1, void *a2)
{
  if (([objc_msgSend(a2 "name")] & 1) == 0)
  {
    return __46__FigCaptureSourceBackingsProvider_initialize__block_invoke_cold_1();
  }

  return csu_postSourceInfoArrayChangedNotificationIfNecessary(0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSourceBackingsProvider;
  [(FigCaptureSourceBackingsProvider *)&v3 dealloc];
}

- (void)initWithSourceInfoDictionaries:(void *)a3 commonSettings:
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = FigCaptureSourceBackingsProvider;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(FigCaptureSourceBackingsProvider *)v5 _addBackingsForSourceInfoDictionaries:a2];
    v5[2] = [[FigCaptureSourceCommonSettings alloc] initWithCommonSettingsDictionary:a3];
  }

  return v5;
}

- (uint64_t)_addBackingsForSourceInfoDictionaries:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = FigSimpleMutexCheckIsLockedOnThisThread();
    result = OUTLINED_FUNCTION_56_8(v4, v5, v6, v7, v8, v9);
    v24 = result;
    if (result)
    {
      v23 = MEMORY[0];
      do
      {
        v10 = 0;
        do
        {
          if (MEMORY[0] != v23)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(8 * v10);
          v12 = [objc_msgSend(v11 objectForKeyedSubscript:{@"MediaType", "intValue"}];
          if (v12 == 1936684398)
          {
            if (*(v3 + 24))
            {
              goto LABEL_11;
            }

            *(v3 + 24) = 1;
          }

          v25 = [FigCaptureSourceBacking alloc];
          v18 = [objc_msgSend(v11 objectForKeyedSubscript:{@"MediaType", "intValue"}];
          v19 = [v11 objectForKeyedSubscript:@"Attributes"];
          v20 = [v11 objectForKeyedSubscript:@"CachedProperties"];
          v21 = [v11 objectForKeyedSubscript:@"Formats"];
          [v11 objectForKeyedSubscript:@"MissingFormats"];
          v2 = -[FigCaptureSourceBacking initWithMediaType:attributes:cachedProperties:formats:missingFormatNames:synchronizedStreamUniqueIDs:unsynchronizedStreamUniqueIDs:](v25, "initWithMediaType:attributes:cachedProperties:formats:missingFormatNames:synchronizedStreamUniqueIDs:unsynchronizedStreamUniqueIDs:", v18, v19, v20, v21, v2, [OUTLINED_FUNCTION_53_0() objectForKeyedSubscript:@"SynchronizedStreamUniqueIDs"], objc_msgSend(v11, "objectForKeyedSubscript:", @"UnsynchronizedStreamUniqueIDs"));
          [*(v3 + 8) addObject:v2];

LABEL_11:
          ++v10;
        }

        while (v24 != v10);
        result = OUTLINED_FUNCTION_56_8(v12, v13, v14, v15, v16, v17);
        v24 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)_removeBackingsWithDeviceIDs:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = *(v1 + 8);
    v11 = OUTLINED_FUNCTION_55_8(v2, v4, v5, v6, v7, v8, v9, v10, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v95, v97, v99, v101, v103, v105, v107);
    if (v11)
    {
      v19 = v11;
      v20 = MEMORY[0];
      do
      {
        v21 = 0;
        do
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(v3);
          }

          v22 = *(8 * v21);
          [objc_msgSend(v22 "attributes")];
          v23 = [OUTLINED_FUNCTION_8() containsObject:?];
          if (v23)
          {
            if ([v22 mediaType] == 1936684398)
            {
              *(v1 + 24) = 0;
            }

            v23 = [v2 addObject:v22];
          }

          ++v21;
        }

        while (v19 != v21);
        v11 = OUTLINED_FUNCTION_55_8(v23, v24, v25, v26, v27, v28, v29, v30, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v96, v98, v100, v102, v104, v106, v108);
        v19 = v11;
      }

      while (v11);
    }

    result = OUTLINED_FUNCTION_1_3(v11, v12, v13, v14, v15, v16, v17, v18, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, 0);
    if (result)
    {
      v31 = result;
      do
      {
        v32 = 0;
        do
        {
          OUTLINED_FUNCTION_49_7();
          if (!v33)
          {
            objc_enumerationMutation(v2);
          }

          v34 = [*(v1 + 8) removeObject:*(8 * v32++)];
        }

        while (v31 != v32);
        result = OUTLINED_FUNCTION_1_3(v34, v35, v36, v37, v38, v39, v40, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92);
        v31 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)updateBackingCachedPropertiesByDeviceID:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    v2 = FigSimpleMutexCheckIsLockedOnThisThread();
    v3 = *(v1 + 8);
    result = OUTLINED_FUNCTION_1_3(v2, v4, v5, v6, v7, v8, v9, v10, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, 0);
    if (result)
    {
      v11 = result;
      v12 = MEMORY[0];
      do
      {
        v13 = 0;
        do
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v3);
          }

          v14 = *(8 * v13);
          [objc_msgSend(v14 "attributes")];
          v15 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
          v16 = [v15 count];
          if (v16)
          {
            [(FigCaptureSourceBacking *)v14 updateCachedProperties:v15];
          }

          ++v13;
        }

        while (v11 != v13);
        result = OUTLINED_FUNCTION_1_3(v16, v17, v18, v19, v20, v21, v22, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v56);
        v11 = result;
      }

      while (result);
    }
  }

  return result;
}

+ (uint64_t)initialize
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

@end