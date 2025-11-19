@interface CKMediaObjectExportManager
+ (id)_serialBackgroundQueue;
- (CKMediaObjectExportManager)initWithMediaObject:(id)a3;
- (CKMediaObjectExportManager)initWithMediaObjects:(id)a3;
- (id)_phAssetCreationRequestForMediaObject:(id)a3 withSyndicationIdentifier:(id)a4;
- (void)dequeueMediaObject:(id)a3;
- (void)exportMediaObject:(id)a3 withFileName:(id)a4 completion:(id)a5;
- (void)exportMediaObjects:(id)a3 withFileNames:(id)a4 completion:(id)a5;
- (void)exportQueuedMediaObjectsWithCompletion:(id)a3;
- (void)queueMediaObject:(id)a3;
@end

@implementation CKMediaObjectExportManager

+ (id)_serialBackgroundQueue
{
  if (_serialBackgroundQueue_onceToken != -1)
  {
    +[CKMediaObjectExportManager _serialBackgroundQueue];
  }

  v3 = _serialBackgroundQueue_queue;

  return v3;
}

void __52__CKMediaObjectExportManager__serialBackgroundQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.CKMediaObjectExportManager", v2);
  v1 = _serialBackgroundQueue_queue;
  _serialBackgroundQueue_queue = v0;
}

- (CKMediaObjectExportManager)initWithMediaObject:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CKMediaObjectExportManager *)self initWithMediaObjects:v6, v9, v10];

  return v7;
}

- (CKMediaObjectExportManager)initWithMediaObjects:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKMediaObjectExportManager;
  v6 = [(CKMediaObjectExportManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queuedMediaObjects, a3);
  }

  return v7;
}

- (void)queueMediaObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(CKMediaObjectExportManager *)self queuedMediaObjects];
    v5 = [v6 arrayByAddingObject:v4];

    [(CKMediaObjectExportManager *)self setQueuedMediaObjects:v5];
  }
}

- (void)dequeueMediaObject:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [(CKMediaObjectExportManager *)self queuedMediaObjects];
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

    v7 = [v5 arrayByExcludingObjectsInArray:v6];
    [(CKMediaObjectExportManager *)self setQueuedMediaObjects:v7];
  }
}

- (void)exportQueuedMediaObjectsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CKMediaObjectExportManager *)self queuedMediaObjects];
  [(CKMediaObjectExportManager *)self exportMediaObjects:v5 completion:v4];
}

- (void)exportMediaObject:(id)a3 withFileName:(id)a4 completion:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    if (v9)
    {
      v17[0] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    }

    else
    {
      v12 = 0;
    }

    v16 = v8;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [(CKMediaObjectExportManager *)self exportMediaObjects:v14 withFileNames:v12 completion:v11];
  }

  else if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Failed to export media object because the given media object was nil.", v15, 2u);
      }
    }

    v11[2](v11, 0, 0);
  }
}

- (void)exportMediaObjects:(id)a3 withFileNames:(id)a4 completion:(id)a5
{
  v108 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v59 = a4;
  v61 = a5;
  v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v7;
  v8 = 0;
  v9 = 0;
  v10 = [obj countByEnumeratingWithState:&v100 objects:v107 count:16];
  if (v10)
  {
    v11 = *v101;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v101 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v100 + 1) + 8 * i);
        if ([v13 isPhotosCompatible])
        {
          [v65 addObject:v13];
          if ([v13 mediaType] == 3)
          {
            ++v9;
          }

          else if ([v13 mediaType] == 2)
          {
            ++v8;
          }
        }

        else
        {
          [v67 addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v100 objects:v107 count:16];
    }

    while (v10);
  }

  group = dispatch_group_create();
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 1;
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__60;
  v94 = __Block_byref_object_dispose__60;
  v95 = 0;
  v14 = [v65 count];
  v15 = &off_190DCE000;
  if (v14)
  {
    dispatch_group_enter(group);
    v16 = [MEMORY[0x1E696AFB0] UUID];
    v63 = [v16 UUIDString];

    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v18 = v65;
    v19 = [v18 countByEnumeratingWithState:&v86 objects:v106 count:16];
    if (v19)
    {
      v20 = *v87;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v87 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v86 + 1) + 8 * j);
          v23 = [v22 syndicationIdentifier];
          if (!v23)
          {
            v24 = IMLogHandleForCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v105 = v22;
              _os_log_error_impl(&dword_19020E000, v24, OS_LOG_TYPE_ERROR, "Syndication identifier was nil for media object. mediaObject: %@", buf, 0xCu);
            }

            v23 = v63;
          }

          [v17 addObject:v23];
        }

        v19 = [v18 countByEnumeratingWithState:&v86 objects:v106 count:16];
      }

      while (v19);
    }

    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v105 = v17;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Saving media objects with syndication identifiers to photo library %@", buf, 0xCu);
      }
    }

    v26 = [v18 count];
    v27 = [objc_opt_class() _serialBackgroundQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke;
    block[3] = &unk_1E72F6890;
    v76 = v18;
    v77 = v17;
    v78 = v63;
    v79 = self;
    v83 = v26;
    v84 = v9;
    v85 = v8;
    v81 = &v96;
    v82 = &v90;
    v80 = group;
    v28 = v63;
    v29 = v17;
    dispatch_async(v27, block);

    v15 = &off_190DCE000;
  }

  v30 = 0;
  v31 = *(v15 + 189);
  while (v30 < [v67 count])
  {
    v32 = [v67 objectAtIndex:v30];
    dispatch_group_enter(group);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 isAudioMessage])
    {
      v64 = [v32 fileURL];
      if ([v32 isFromMe])
      {
        v33 = CKFrameworkBundle();
        v34 = [v33 localizedStringForKey:@"AUDIO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        v33 = [v32 senderHandle];
        v48 = MEMORY[0x1E696AEC0];
        v49 = CKFrameworkBundle();
        v50 = [v49 localizedStringForKey:@"AUDIO_MESSAGE_FROM" value:&stru_1F04268F8 table:@"ChatKit"];
        v51 = [v33 fullName];
        v52 = [v48 stringWithFormat:v50, v51];

        v53 = [MEMORY[0x1E69DC668] sharedApplication];
        v54 = [v53 userInterfaceLayoutDirection] == 1;

        if (v54)
        {
          v55 = @"\u200F";
        }

        else
        {
          v55 = @"\u200E";
        }

        v34 = [(__CFString *)v55 stringByAppendingString:v52];
      }

      v56 = MEMORY[0x1E69E06E0];
      v57 = [MEMORY[0x1E695DF00] date];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = v31;
      v73[2] = __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke_263;
      v73[3] = &unk_1E72F1C08;
      v74 = v61;
      [v56 importRecordingWithSourceAudioURL:v64 name:v34 date:v57 completionHandler:v73];

      v36 = v74;
      goto LABEL_53;
    }

    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_54;
    }

    v64 = [MEMORY[0x1E696AC08] defaultManager];
    v35 = [v32 transfer];
    v36 = [v35 filename];

    if ([v36 length])
    {
      v37 = [v32 transfer];
      v38 = [v37 fileURL];
      v39 = [v38 path];

      v40 = [v64 URLsForDirectory:15 inDomains:1];
      v41 = [v40 firstObject];

      v42 = [v41 URLByAppendingPathComponent:v36];
      v43 = [v42 path];

      if ([v64 fileExistsAtPath:v43])
      {
        v44 = [v43 uniqueSavePath];
      }

      else
      {
        v44 = v43;
      }

      v46 = v44;
      v72 = 0;
      v47 = [v64 copyItemAtPath:v39 toPath:v44 error:&v72];
      v34 = v72;

      if (v47)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v45 = IMLogHandleForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v105 = v32;
        _os_log_error_impl(&dword_19020E000, v45, OS_LOG_TYPE_ERROR, "Transfer filename was empty for mediaObject: %@", buf, 0xCu);
      }

      v34 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CKFileTransferErrorDomain" code:0 userInfo:0];
    }

    *(v97 + 24) = 0;
    objc_storeStrong(v91 + 5, v34);
LABEL_47:
    dispatch_group_leave(group);
LABEL_53:

LABEL_54:
    ++v30;
  }

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = v31;
  v68[2] = __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke_267;
  v68[3] = &unk_1E72F68B8;
  v69 = v61;
  v70 = &v96;
  v71 = &v90;
  v58 = v61;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], v68);

  _Block_object_dispose(&v90, 8);
  _Block_object_dispose(&v96, 8);
}

void __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v3 = [v2 isRedesignedDetailsViewEnabled];

  if (v3)
  {
    [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:1 error:0];
  }

  else
  {
    [MEMORY[0x1E69789A8] sharedPhotoLibrary];
  }
  v4 = ;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke_2;
  v19[3] = &unk_1E72EBEF8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = *(a1 + 56);
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v20 = v8;
  v21 = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke_3;
  v13[3] = &unk_1E72F6868;
  v13[4] = *(&v7 + 1);
  v17 = *(a1 + 88);
  v18 = *(a1 + 104);
  v9 = *(a1 + 40);
  v10 = *(a1 + 80);
  v14 = v9;
  v16 = v10;
  v12 = *(a1 + 64);
  v11 = v12;
  v15 = v12;
  [v4 performChanges:v19 completionHandler:v13];
}

unint64_t __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke_2(id *a1)
{
  result = [a1[4] count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v4 = [a1[4] objectAtIndex:i];
      v5 = [a1[5] objectAtIndex:i];
      if ([a1[6] isEqualToString:v5])
      {

        v5 = 0;
      }

      v6 = [a1[7] _phAssetCreationRequestForMediaObject:v4 withSyndicationIdentifier:v5];

      result = [a1[4] count];
    }
  }

  return result;
}

void __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "CKImageMediaObject PHAssetChangeRequest performed changes. success: %@, error %@", buf, 0x16u);
    }
  }

  v8 = IMOSLoggingEnabled();
  if (a2)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Successfully saved media objects to photo library.", buf, 2u);
      }
    }

    v10 = [MEMORY[0x1E69A8168] sharedInstance];
    v11 = [*(a1 + 32) metricsSource];
    v12 = v11;
    v13 = *MEMORY[0x1E69A7668];
    if (v11)
    {
      v13 = v11;
    }

    v23[0] = v13;
    v22[1] = *MEMORY[0x1E69A7608];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
    v23[1] = v14;
    v22[2] = *MEMORY[0x1E69A7610];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
    v23[2] = v15;
    v22[3] = *MEMORY[0x1E69A7670];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 88)];
    v23[3] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
    [v10 trackEvent:*MEMORY[0x1E69A7600] withDictionary:v17];

    v18 = [MEMORY[0x1E69A5C30] sharedInstance];
    [v18 cacheCompletedSaveForSyndicationIdentifiers:*(a1 + 40)];
  }

  else
  {
    if (v8)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v5;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "CKMediaObjectExportManager Failed to save media objects to photo library. error: %@", buf, 0xCu);
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v20 = *(*(a1 + 64) + 8);
    v21 = v5;
    v18 = *(v20 + 40);
    *(v20 + 40) = v21;
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke_263(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

uint64_t __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke_267(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (id)_phAssetCreationRequestForMediaObject:(id)a3 withSyndicationIdentifier:(id)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 isPhotosCompatible])
  {
    v8 = [v6 fileURL];
    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v10 = [v9 isLQMHQEnabled];

    if (v10)
    {
      v11 = [v7 length];
      v12 = v11 <= 2 ? 2 : v11;
      v13 = [v7 substringFromIndex:(v12 - 2)];
      v14 = [v13 isEqualToString:@"hq"];

      if (v14)
      {
        getPHAssetClass();
        if (objc_opt_respondsToSelector())
        {
          v15 = dispatch_group_create();
          dispatch_group_enter(v15);
          v16 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          v17 = [v16 isRedesignedDetailsViewEnabled];

          if (v17)
          {
            [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:1 error:0];
          }

          else
          {
            [MEMORY[0x1E69789A8] sharedPhotoLibrary];
          }
          v19 = ;
          v20 = [v19 librarySpecificFetchOptions];
          [v20 setIncludeTrashedAssets:0];
          [v20 setIncludeHiddenAssets:1];
          PHAssetClass = getPHAssetClass();
          v22 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 2}];
          v34[0] = v22;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
          v24 = [PHAssetClass fetchAssetsWithSyndicationIdentifiers:v23 options:v20 includeRejected:1];

          if ([v24 count])
          {
            v25 = [v24 firstObject];
            [v25 fetchPropertySetsIfNeeded];
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __94__CKMediaObjectExportManager__phAssetCreationRequestForMediaObject_withSyndicationIdentifier___block_invoke;
            v32[3] = &unk_1E72EBA18;
            v33 = v25;
            v26 = v25;
            [v19 performChanges:v32 completionHandler:&__block_literal_global_275_1];
          }
        }
      }
    }

    if (v7 && ![(CKMediaObjectExportManager *)self ignoreSyndicationIdentifiers])
    {
      v27 = [MEMORY[0x1E6978698] creationRequestForAssetWithSyndicationIdentifier:v7];
    }

    else
    {
      v27 = [MEMORY[0x1E6978698] creationRequestForAsset];
    }

    v18 = v27;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 addResourceWithType:2 fileURL:v8 options:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v18 addResourceWithType:1 fileURL:v8 options:0];
        v28 = v6;
        if ([v28 isIrisAsset])
        {
          v29 = [v28 calculateIrisVideoPath];
          v30 = [MEMORY[0x1E695DFF8] fileURLWithPath:v29 isDirectory:0];
          [v18 addResourceWithType:9 fileURL:v30 options:0];
        }
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __94__CKMediaObjectExportManager__phAssetCreationRequestForMediaObject_withSyndicationIdentifier___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6978648];
  v3[0] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 deleteAssets:v2];
}

void __94__CKMediaObjectExportManager__phAssetCreationRequestForMediaObject_withSyndicationIdentifier___block_invoke_2()
{
  v0 = IMLogHandleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __94__CKMediaObjectExportManager__phAssetCreationRequestForMediaObject_withSyndicationIdentifier___block_invoke_2_cold_1(v0);
  }
}

@end