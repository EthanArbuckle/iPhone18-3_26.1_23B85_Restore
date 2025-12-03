@interface AVURLAsset(MediaAnalysis)
- (id)vcp_firstEnabledTrackWithMediaType:()MediaAnalysis;
@end

@implementation AVURLAsset(MediaAnalysis)

- (id)vcp_firstEnabledTrackWithMediaType:()MediaAnalysis
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__73;
  v36 = __Block_byref_object_dispose__73;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__73;
  v30 = __Block_byref_object_dispose__73;
  v31 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __64__AVURLAsset_MediaAnalysis__vcp_firstEnabledTrackWithMediaType___block_invoke;
  v22[3] = &unk_1E8351E20;
  v24 = &v32;
  v25 = &v26;
  v6 = v5;
  v23 = v6;
  [self loadTracksWithMediaType:v4 completionHandler:v22];
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v33[5];
  if (v7 && !v27[5])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v38 count:16];
    if (v12)
    {
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([v15 isEnabled])
          {
            v16 = v15;

            goto LABEL_16;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v18 objects:v38 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v27[5];
    *buf = 138412546;
    v40 = v8;
    v41 = 2112;
    v42 = v9;
    v10 = v8;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to load tracks, error: %@", buf, 0x16u);
  }

  v16 = 0;
LABEL_16:

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v16;
}

@end