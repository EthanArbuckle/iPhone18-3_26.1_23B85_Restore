@interface CAMTapToRadarUtilities
+ (id)writeDictionary:(id)dictionary toPlistFileWithName:(id)name;
+ (void)fileRadarWithTitle:(id)title description:(id)description classification:(id)classification reproducibility:(id)reproducibility componentID:(id)d componentName:(id)name componentVersion:(id)version keywordIdsString:(id)self0 attachmentURLs:(id)self1 includeSysDiagnose:(BOOL)self2 includePhotosDiagnose:(BOOL)self3 includeHIDContinuousRecordings:(BOOL)self4;
@end

@implementation CAMTapToRadarUtilities

+ (void)fileRadarWithTitle:(id)title description:(id)description classification:(id)classification reproducibility:(id)reproducibility componentID:(id)d componentName:(id)name componentVersion:(id)version keywordIdsString:(id)self0 attachmentURLs:(id)self1 includeSysDiagnose:(BOOL)self2 includePhotosDiagnose:(BOOL)self3 includeHIDContinuousRecordings:(BOOL)self4
{
  v81 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  descriptionCopy = description;
  classificationCopy = classification;
  reproducibilityCopy = reproducibility;
  dCopy = d;
  nameCopy = name;
  versionCopy = version;
  stringCopy = string;
  lsCopy = ls;
  v26 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v78 = nameCopy;
    v79 = 2114;
    v80 = titleCopy;
    _os_log_impl(&dword_1A3640000, v26, OS_LOG_TYPE_DEFAULT, "Tap-to-Radar initiated for component: %{public}@, title: %{public}@", buf, 0x16u);
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v27 setObject:@"1" forKeyedSubscript:@"IncludeDevicePrefixInTitle"];
  [v27 setObject:titleCopy forKeyedSubscript:@"Title"];
  [v27 setObject:classificationCopy forKeyedSubscript:@"Classification"];
  [v27 setObject:reproducibilityCopy forKeyedSubscript:@"Reproducibility"];
  [v27 setObject:dCopy forKeyedSubscript:@"ComponentID"];
  v60 = nameCopy;
  [v27 setObject:nameCopy forKeyedSubscript:@"ComponentName"];
  [v27 setObject:versionCopy forKeyedSubscript:@"ComponentVersion"];
  [v27 setObject:descriptionCopy forKeyedSubscript:@"Description"];
  date = [MEMORY[0x1E695DF00] date];
  v29 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v29 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
  v56 = v29;
  v57 = date;
  v55 = [v29 stringFromDate:date];
  [v27 setObject:? forKeyedSubscript:?];
  if ([stringCopy length])
  {
    [v27 setObject:stringCopy forKeyedSubscript:@"Keywords"];
  }

  v61 = reproducibilityCopy;
  if (!diagnose)
  {
    [v27 setObject:@"0" forKeyedSubscript:@"AutoDiagnostics"];
  }

  array = [MEMORY[0x1E695DF70] array];
  v31 = array;
  if (photosDiagnose)
  {
    [array addObject:@"com.apple.PhotoLibraryServices.PhotosDiagnostics"];
  }

  if (recordings)
  {
    [v31 addObject:@"com.apple.DiagnosticExtensions.HIDContinuousRecordings"];
  }

  v58 = stringCopy;
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
  obj = lsCopy;
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

        path = [*(*(&v71 + 1) + 8 * i) path];
        if (path)
        {
          [v33 addObject:path];
        }
      }

      v35 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
    }

    while (v35);
  }

  v59 = versionCopy;
  v62 = descriptionCopy;
  v63 = titleCopy;

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

+ (id)writeDictionary:(id)dictionary toPlistFileWithName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  if (dictionary)
  {
    nameCopy = name;
    dictionaryCopy = dictionary;
    v7 = NSTemporaryDirectory();
    v8 = [nameCopy stringByAppendingString:@".plist"];

    v9 = [v7 stringByAppendingPathComponent:v8];

    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    v14 = 0;
    LOBYTE(v7) = [dictionaryCopy writeToURL:v10 error:&v14];

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