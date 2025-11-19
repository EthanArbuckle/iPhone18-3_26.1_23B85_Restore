@interface CAMTapToRadarUtilities
+ (id)writeDictionary:(id)a3 toPlistFileWithName:(id)a4;
+ (void)fileRadarWithTitle:(id)a3 description:(id)a4 classification:(id)a5 reproducibility:(id)a6 componentID:(id)a7 componentName:(id)a8 componentVersion:(id)a9 keywordIdsString:(id)a10 attachmentURLs:(id)a11 includeSysDiagnose:(BOOL)a12 includePhotosDiagnose:(BOOL)a13 includeHIDContinuousRecordings:(BOOL)a14;
@end

@implementation CAMTapToRadarUtilities

+ (void)fileRadarWithTitle:(id)a3 description:(id)a4 classification:(id)a5 reproducibility:(id)a6 componentID:(id)a7 componentName:(id)a8 componentVersion:(id)a9 keywordIdsString:(id)a10 attachmentURLs:(id)a11 includeSysDiagnose:(BOOL)a12 includePhotosDiagnose:(BOOL)a13 includeHIDContinuousRecordings:(BOOL)a14
{
  v81 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v65 = a5;
  v21 = a6;
  v64 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v78 = v22;
    v79 = 2114;
    v80 = v19;
    _os_log_impl(&dword_1A3640000, v26, OS_LOG_TYPE_DEFAULT, "Tap-to-Radar initiated for component: %{public}@, title: %{public}@", buf, 0x16u);
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v27 setObject:@"1" forKeyedSubscript:@"IncludeDevicePrefixInTitle"];
  [v27 setObject:v19 forKeyedSubscript:@"Title"];
  [v27 setObject:v65 forKeyedSubscript:@"Classification"];
  [v27 setObject:v21 forKeyedSubscript:@"Reproducibility"];
  [v27 setObject:v64 forKeyedSubscript:@"ComponentID"];
  v60 = v22;
  [v27 setObject:v22 forKeyedSubscript:@"ComponentName"];
  [v27 setObject:v23 forKeyedSubscript:@"ComponentVersion"];
  [v27 setObject:v20 forKeyedSubscript:@"Description"];
  v28 = [MEMORY[0x1E695DF00] date];
  v29 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v29 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
  v56 = v29;
  v57 = v28;
  v55 = [v29 stringFromDate:v28];
  [v27 setObject:? forKeyedSubscript:?];
  if ([v24 length])
  {
    [v27 setObject:v24 forKeyedSubscript:@"Keywords"];
  }

  v61 = v21;
  if (!a12)
  {
    [v27 setObject:@"0" forKeyedSubscript:@"AutoDiagnostics"];
  }

  v30 = [MEMORY[0x1E695DF70] array];
  v31 = v30;
  if (a13)
  {
    [v30 addObject:@"com.apple.PhotoLibraryServices.PhotosDiagnostics"];
  }

  if (a14)
  {
    [v31 addObject:@"com.apple.DiagnosticExtensions.HIDContinuousRecordings"];
  }

  v58 = v24;
  if ([v31 count])
  {
    v32 = [v31 componentsJoinedByString:{@", "}];
    [v27 setObject:v32 forKeyedSubscript:@"ExtensionIdentifiers"];
  }

  v54 = v31;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v25;
  v34 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v72;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v72 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = [*(*(&v71 + 1) + 8 * i) path];
        if (v38)
        {
          [v33 addObject:v38];
        }
      }

      v35 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    }

    while (v35);
  }

  v59 = v23;
  v62 = v20;
  v63 = v19;

  v39 = [v33 componentsJoinedByString:{@", "}];
  if ([v39 length])
  {
    [v27 setObject:v39 forKeyedSubscript:@"Attachments"];
  }

  v53 = v39;
  v52 = [MEMORY[0x1E696AF20] componentsWithString:@"tap-to-radar://new"];
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v41 = v27;
  v42 = [v41 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v68;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v68 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v67 + 1) + 8 * j);
        v47 = MEMORY[0x1E696AF60];
        v48 = [v41 objectForKeyedSubscript:v46];
        v49 = [v47 queryItemWithName:v46 value:v48];
        [v40 addObject:v49];
      }

      v43 = [v41 countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v43);
  }

  [v52 setQueryItems:v40];
  v50 = [v52 URL];
  if ((CAMOpenSensitiveURLWithUnlockRequest(v50, 1) & 1) == 0)
  {
    v51 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [CAMTapToRadarUtilities fileRadarWithTitle:v50 description:v51 classification:? reproducibility:? componentID:? componentName:? componentVersion:? keywordIdsString:? attachmentURLs:? includeSysDiagnose:? includePhotosDiagnose:? includeHIDContinuousRecordings:?];
    }
  }
}

+ (id)writeDictionary:(id)a3 toPlistFileWithName:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = NSTemporaryDirectory();
    v8 = [v5 stringByAppendingString:@".plist"];

    v9 = [v7 stringByAppendingPathComponent:v8];

    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    v14 = 0;
    LOBYTE(v7) = [v6 writeToURL:v10 error:&v14];

    v11 = v14;
    if ((v7 & 1) == 0)
    {
      v12 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, "CAMTapToRadarUtilities: Failed to save tap-to-radar info, error: %{public}@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)fileRadarWithTitle:(uint64_t)a1 description:(NSObject *)a2 classification:reproducibility:componentID:componentName:componentVersion:keywordIdsString:attachmentURLs:includeSysDiagnose:includePhotosDiagnose:includeHIDContinuousRecordings:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1A3640000, a2, OS_LOG_TYPE_ERROR, "CAMTapToRadarUtilities: Failed to open radar url: %{public}@", &v2, 0xCu);
}

@end