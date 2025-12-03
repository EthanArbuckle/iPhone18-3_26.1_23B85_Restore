@interface CKMediaObjectExportManager
+ (id)_serialBackgroundQueue;
- (CKMediaObjectExportManager)initWithMediaObject:(id)object;
- (CKMediaObjectExportManager)initWithMediaObjects:(id)objects;
- (id)_phAssetCreationRequestForMediaObject:(id)object withSyndicationIdentifier:(id)identifier;
- (void)dequeueMediaObject:(id)object;
- (void)exportMediaObject:(id)object withFileName:(id)name completion:(id)completion;
- (void)exportMediaObjects:(id)objects withFileNames:(id)names completion:(id)completion;
- (void)exportQueuedMediaObjectsWithCompletion:(id)completion;
- (void)queueMediaObject:(id)object;
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

- (CKMediaObjectExportManager)initWithMediaObject:(id)object
{
  v10 = *MEMORY[0x1E69E9840];
  if (object)
  {
    objectCopy = object;
    v4 = MEMORY[0x1E695DEC8];
    objectCopy2 = object;
    v6 = [v4 arrayWithObjects:&objectCopy count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CKMediaObjectExportManager *)self initWithMediaObjects:v6, objectCopy, v10];

  return v7;
}

- (CKMediaObjectExportManager)initWithMediaObjects:(id)objects
{
  objectsCopy = objects;
  v9.receiver = self;
  v9.super_class = CKMediaObjectExportManager;
  v6 = [(CKMediaObjectExportManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queuedMediaObjects, objects);
  }

  return v7;
}

- (void)queueMediaObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    queuedMediaObjects = [(CKMediaObjectExportManager *)self queuedMediaObjects];
    v5 = [queuedMediaObjects arrayByAddingObject:objectCopy];

    [(CKMediaObjectExportManager *)self setQueuedMediaObjects:v5];
  }
}

- (void)dequeueMediaObject:(id)object
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (object)
  {
    objectCopy = object;
    queuedMediaObjects = [(CKMediaObjectExportManager *)self queuedMediaObjects];
    v8[0] = objectCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

    v7 = [queuedMediaObjects arrayByExcludingObjectsInArray:v6];
    [(CKMediaObjectExportManager *)self setQueuedMediaObjects:v7];
  }
}

- (void)exportQueuedMediaObjectsWithCompletion:(id)completion
{
  completionCopy = completion;
  queuedMediaObjects = [(CKMediaObjectExportManager *)self queuedMediaObjects];
  [(CKMediaObjectExportManager *)self exportMediaObjects:queuedMediaObjects completion:completionCopy];
}

- (void)exportMediaObject:(id)object withFileName:(id)name completion:(id)completion
{
  v17[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  nameCopy = name;
  completionCopy = completion;
  v11 = completionCopy;
  if (objectCopy)
  {
    if (nameCopy)
    {
      v17[0] = nameCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    }

    else
    {
      v12 = 0;
    }

    v16 = objectCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [(CKMediaObjectExportManager *)self exportMediaObjects:v14 withFileNames:v12 completion:v11];
  }

  else if (completionCopy)
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

- (void)exportMediaObjects:(id)objects withFileNames:(id)names completion:(id)completion
{
  v108 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  namesCopy = names;
  completionCopy = completion;
  v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = objectsCopy;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

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
          syndicationIdentifier = [v22 syndicationIdentifier];
          if (!syndicationIdentifier)
          {
            v24 = IMLogHandleForCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v105 = v22;
              _os_log_error_impl(&dword_19020E000, v24, OS_LOG_TYPE_ERROR, "Syndication identifier was nil for media object. mediaObject: %@", buf, 0xCu);
            }

            syndicationIdentifier = uUIDString;
          }

          [v17 addObject:syndicationIdentifier];
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
    _serialBackgroundQueue = [objc_opt_class() _serialBackgroundQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke;
    block[3] = &unk_1E72F6890;
    v76 = v18;
    v77 = v17;
    v78 = uUIDString;
    selfCopy = self;
    v83 = v26;
    v84 = v9;
    v85 = v8;
    v81 = &v96;
    v82 = &v90;
    v80 = group;
    v28 = uUIDString;
    v29 = v17;
    dispatch_async(_serialBackgroundQueue, block);

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
      fileURL = [v32 fileURL];
      if ([v32 isFromMe])
      {
        senderHandle = CKFrameworkBundle();
        v34 = [senderHandle localizedStringForKey:@"AUDIO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
      }

      else
      {
        senderHandle = [v32 senderHandle];
        v48 = MEMORY[0x1E696AEC0];
        v49 = CKFrameworkBundle();
        v50 = [v49 localizedStringForKey:@"AUDIO_MESSAGE_FROM" value:&stru_1F04268F8 table:@"ChatKit"];
        fullName = [senderHandle fullName];
        v52 = [v48 stringWithFormat:v50, fullName];

        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        v54 = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

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
      date = [MEMORY[0x1E695DF00] date];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = v31;
      v73[2] = __74__CKMediaObjectExportManager_exportMediaObjects_withFileNames_completion___block_invoke_263;
      v73[3] = &unk_1E72F1C08;
      v74 = completionCopy;
      [v56 importRecordingWithSourceAudioURL:fileURL name:v34 date:date completionHandler:v73];

      filename = v74;
      goto LABEL_53;
    }

    if (!CKIsRunningInMacCatalyst())
    {
      goto LABEL_54;
    }

    fileURL = [MEMORY[0x1E696AC08] defaultManager];
    transfer = [v32 transfer];
    filename = [transfer filename];

    if ([filename length])
    {
      transfer2 = [v32 transfer];
      fileURL2 = [transfer2 fileURL];
      path = [fileURL2 path];

      v40 = [fileURL URLsForDirectory:15 inDomains:1];
      firstObject = [v40 firstObject];

      v42 = [firstObject URLByAppendingPathComponent:filename];
      path2 = [v42 path];

      if ([fileURL fileExistsAtPath:path2])
      {
        uniqueSavePath = [path2 uniqueSavePath];
      }

      else
      {
        uniqueSavePath = path2;
      }

      v46 = uniqueSavePath;
      v72 = 0;
      v47 = [fileURL copyItemAtPath:path toPath:uniqueSavePath error:&v72];
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
  v69 = completionCopy;
  v70 = &v96;
  v71 = &v90;
  v58 = completionCopy;
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

- (id)_phAssetCreationRequestForMediaObject:(id)object withSyndicationIdentifier:(id)identifier
{
  v34[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  identifierCopy = identifier;
  if ([objectCopy isPhotosCompatible])
  {
    fileURL = [objectCopy fileURL];
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isLQMHQEnabled = [mEMORY[0x1E69A8070] isLQMHQEnabled];

    if (isLQMHQEnabled)
    {
      v11 = [identifierCopy length];
      v12 = v11 <= 2 ? 2 : v11;
      v13 = [identifierCopy substringFromIndex:(v12 - 2)];
      v14 = [v13 isEqualToString:@"hq"];

      if (v14)
      {
        getPHAssetClass();
        if (objc_opt_respondsToSelector())
        {
          v15 = dispatch_group_create();
          dispatch_group_enter(v15);
          mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
          isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070]2 isRedesignedDetailsViewEnabled];

          if (isRedesignedDetailsViewEnabled)
          {
            [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:1 error:0];
          }

          else
          {
            [MEMORY[0x1E69789A8] sharedPhotoLibrary];
          }
          v19 = ;
          librarySpecificFetchOptions = [v19 librarySpecificFetchOptions];
          [librarySpecificFetchOptions setIncludeTrashedAssets:0];
          [librarySpecificFetchOptions setIncludeHiddenAssets:1];
          PHAssetClass = getPHAssetClass();
          v22 = [identifierCopy substringToIndex:{objc_msgSend(identifierCopy, "length") - 2}];
          v34[0] = v22;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
          v24 = [PHAssetClass fetchAssetsWithSyndicationIdentifiers:v23 options:librarySpecificFetchOptions includeRejected:1];

          if ([v24 count])
          {
            firstObject = [v24 firstObject];
            [firstObject fetchPropertySetsIfNeeded];
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __94__CKMediaObjectExportManager__phAssetCreationRequestForMediaObject_withSyndicationIdentifier___block_invoke;
            v32[3] = &unk_1E72EBA18;
            v33 = firstObject;
            v26 = firstObject;
            [v19 performChanges:v32 completionHandler:&__block_literal_global_275_1];
          }
        }
      }
    }

    if (identifierCopy && ![(CKMediaObjectExportManager *)self ignoreSyndicationIdentifiers])
    {
      creationRequestForAsset = [MEMORY[0x1E6978698] creationRequestForAssetWithSyndicationIdentifier:identifierCopy];
    }

    else
    {
      creationRequestForAsset = [MEMORY[0x1E6978698] creationRequestForAsset];
    }

    v18 = creationRequestForAsset;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 addResourceWithType:2 fileURL:fileURL options:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v18 addResourceWithType:1 fileURL:fileURL options:0];
        v28 = objectCopy;
        if ([v28 isIrisAsset])
        {
          calculateIrisVideoPath = [v28 calculateIrisVideoPath];
          v30 = [MEMORY[0x1E695DFF8] fileURLWithPath:calculateIrisVideoPath isDirectory:0];
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