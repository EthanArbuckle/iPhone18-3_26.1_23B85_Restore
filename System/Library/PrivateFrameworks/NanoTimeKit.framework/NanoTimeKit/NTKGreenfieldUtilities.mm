@interface NTKGreenfieldUtilities
+ (BOOL)shouldAutoDismissViewControllerForAddFaceFlow:(id)flow;
+ (BOOL)shouldPresentUnreleasedFeaturesInternalWarningForFace:(id)face;
+ (BOOL)validateFaceType:(id)type faceBundleId:(id)id;
+ (id)_addGenericDeviceBorderToWatchFaceImage:(id)image includesTransparentPadding:(BOOL)padding;
+ (id)_addGreyBorderToWatchFaceImage:(id)image;
+ (id)_companionAppIdFromWatchAppBundleId:(id)id;
+ (id)_decodeFaceFromDataPath:(id)path;
+ (id)_greenfieldWatchFaceJsonForFace:(id)face;
+ (id)_metadataDictForWatchFace:(id)face slotToSampleTemplateMapping:(id)mapping slotToItemIdMapping:(id)idMapping slotToBundleIdMapping:(id)bundleIdMapping watchFaceDataPath:(id)path;
+ (id)_queue_encodeDraftRecipe:(id)recipe;
+ (id)_queue_greenfieldPreviewFromUrl:(id)url;
+ (id)_queue_snapshotFace:(id)face borderType:(unint64_t)type;
+ (id)addBorder:(unint64_t)border toWatchFaceImage:(id)image;
+ (id)createXPCServiceConnection;
+ (id)encodeQueue;
+ (id)temporaryGreenfieldDirectory;
+ (id)temporaryGreenfieldNoBordersSnapshotPath;
+ (id)unzipWatchFaceFileAtUrl:(id)url;
+ (void)_updateSystemDeletableAppItemIdForSlotToItemIdMapping:(id)mapping face:(id)face;
+ (void)decodeWatchFaceFromUrl:(id)url completionBlock:(id)block;
+ (void)encodeRecipeFromDraftRecipe:(id)recipe completionBlock:(id)block;
+ (void)generateFacePreviewImageFromDraftRecipe:(id)recipe borderType:(unint64_t)type completionBlock:(id)block;
+ (void)generateFacePreviewImageFromUrl:(id)url completionBlock:(id)block;
+ (void)migrateComplicationsOnFace:(id)face;
@end

@implementation NTKGreenfieldUtilities

+ (id)temporaryGreenfieldDirectory
{
  if (temporaryGreenfieldDirectory_onceToken != -1)
  {
    +[NTKGreenfieldUtilities temporaryGreenfieldDirectory];
  }

  v3 = temporaryGreenfieldDirectory_tempDir;

  return v3;
}

void __54__NTKGreenfieldUtilities_temporaryGreenfieldDirectory__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v0 bundleIdentifier];

  v1 = [v7 containsString:@"com.apple.NanoTimeKit.GreenfieldDecodingService"];
  v2 = NSTemporaryDirectory();
  v3 = v2;
  if (v1)
  {
    v4 = temporaryGreenfieldDirectory_tempDir;
    temporaryGreenfieldDirectory_tempDir = v2;
    v3 = v4;
  }

  else
  {
    v5 = [v2 stringByAppendingPathComponent:@"com.apple.watchface"];
    v6 = temporaryGreenfieldDirectory_tempDir;
    temporaryGreenfieldDirectory_tempDir = v5;
  }
}

+ (id)temporaryGreenfieldNoBordersSnapshotPath
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = NSTemporaryDirectory();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [v3 stringByAppendingPathComponent:uUIDString];

  [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  return v6;
}

+ (void)generateFacePreviewImageFromDraftRecipe:(id)recipe borderType:(unint64_t)type completionBlock:(id)block
{
  recipeCopy = recipe;
  blockCopy = block;
  encodeQueue = [objc_opt_class() encodeQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __93__NTKGreenfieldUtilities_generateFacePreviewImageFromDraftRecipe_borderType_completionBlock___block_invoke;
  v13[3] = &unk_278782DB8;
  selfCopy = self;
  typeCopy = type;
  v14 = recipeCopy;
  v15 = blockCopy;
  v11 = blockCopy;
  v12 = recipeCopy;
  dispatch_async(encodeQueue, v13);
}

void __93__NTKGreenfieldUtilities_generateFacePreviewImageFromDraftRecipe_borderType_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) faceForSharing];
  v4 = [v2 _queue_snapshotFace:v3 borderType:*(a1 + 56)];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __93__NTKGreenfieldUtilities_generateFacePreviewImageFromDraftRecipe_borderType_completionBlock___block_invoke_2;
  v7[3] = &unk_27877E570;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

+ (void)encodeRecipeFromDraftRecipe:(id)recipe completionBlock:(id)block
{
  recipeCopy = recipe;
  blockCopy = block;
  encodeQueue = [objc_opt_class() encodeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NTKGreenfieldUtilities_encodeRecipeFromDraftRecipe_completionBlock___block_invoke;
  block[3] = &unk_278782DE0;
  v13 = blockCopy;
  selfCopy = self;
  v12 = recipeCopy;
  v9 = blockCopy;
  v10 = recipeCopy;
  dispatch_async(encodeQueue, block);
}

void __70__NTKGreenfieldUtilities_encodeRecipeFromDraftRecipe_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _queue_encodeDraftRecipe:*(a1 + 32)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__NTKGreenfieldUtilities_encodeRecipeFromDraftRecipe_completionBlock___block_invoke_2;
  block[3] = &unk_27877E570;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (id)_queue_encodeDraftRecipe:(id)recipe
{
  v99 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  faceForSharing = [recipeCopy faceForSharing];
  tempPathOverride = [recipeCopy tempPathOverride];
  v7 = tempPathOverride;
  if (tempPathOverride)
  {
    temporaryGreenfieldDirectory = tempPathOverride;
  }

  else
  {
    temporaryGreenfieldDirectory = [self temporaryGreenfieldDirectory];
  }

  v9 = temporaryGreenfieldDirectory;

  v10 = [self _queue_snapshotFace:faceForSharing borderType:0];
  v11 = v10;
  if (!v10 || (([(UIImage *)v10 size], v14 = *MEMORY[0x277CBF3A8], v13 = *(MEMORY[0x277CBF3A8] + 8), v15 == *MEMORY[0x277CBF3A8]) ? (v16 = v12 == v13) : (v16 = 0), v16))
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to generate snapshot without border for face: %@, faceWithoutBorderImage:%@", faceForSharing, v11}];
    v26 = 0;
    goto LABEL_62;
  }

  v17 = [self _addGreyBorderToWatchFaceImage:v11];
  v18 = v17;
  if (!v17 || (([(UIImage *)v17 size], v20 == v14) ? (v21 = v19 == v13) : (v21 = 0), v21))
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to generate snapshot image with grey border for face: %@, faceWithGreyBorderImage:%@", faceForSharing, v18}];
    v26 = 0;
    goto LABEL_61;
  }

  v22 = [self _addGenericDeviceBorderToWatchFaceImage:v11 includesTransparentPadding:0];
  v23 = v22;
  if (!v22 || ([(UIImage *)v22 size], v25 == v14) && v24 == v13)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to generate snapshot image with device border for face: %@, faceWithDeviceBorderImage:%@", faceForSharing, v23}];
    v26 = 0;
    goto LABEL_60;
  }

  v84 = [self _greenfieldWatchFaceJsonForFace:faceForSharing];
  [MEMORY[0x277CCAA00] defaultManager];
  v27 = v80 = self;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v30 = [v9 stringByAppendingPathComponent:uUIDString];

  [v27 removeItemAtPath:v30 error:0];
  v95 = 0;
  v83 = v27;
  [v27 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v95];
  v31 = v95;
  if (v31)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to create the directory at path: %@ error: %@", v30, v31}];
    v32 = v30;
    v81 = 0;
    v26 = 0;
    goto LABEL_59;
  }

  v75 = v11;
  v78 = v18;
  v79 = v30;
  v76 = v9;
  v77 = v23;
  v86 = objc_opt_new();
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  slotToSampleTemplateMapping = [recipeCopy slotToSampleTemplateMapping];
  allKeys = [slotToSampleTemplateMapping allKeys];

  v35 = [allKeys countByEnumeratingWithState:&v91 objects:v98 count:16];
  v85 = recipeCopy;
  if (!v35)
  {
    goto LABEL_35;
  }

  v36 = v35;
  v37 = *v92;
  do
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v92 != v37)
      {
        objc_enumerationMutation(allKeys);
      }

      v39 = *(*(&v91 + 1) + 8 * i);
      v40 = [faceForSharing complicationForSlot:v39];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        slotToSampleTemplateMapping2 = [recipeCopy slotToSampleTemplateMapping];
        v41 = [slotToSampleTemplateMapping2 objectForKey:v39];

        recipeCopy = v85;
LABEL_32:
        [v86 setObject:v41 forKey:v39];
        goto LABEL_33;
      }

      v41 = [NTKGreenfieldDraftRecipe templateForComplicationAtSlot:v39 face:faceForSharing];
      if (v41 && [recipeCopy canShareTemplate:v41 slot:v39])
      {
        goto LABEL_32;
      }

LABEL_33:
    }

    v36 = [allKeys countByEnumeratingWithState:&v91 objects:v98 count:16];
  }

  while (v36);
LABEL_35:

  slotToItemIdMapping = [recipeCopy slotToItemIdMapping];
  slotToBundleIdMapping = [recipeCopy slotToBundleIdMapping];
  v45 = [v80 _metadataDictForWatchFace:faceForSharing slotToSampleTemplateMapping:v86 slotToItemIdMapping:slotToItemIdMapping slotToBundleIdMapping:slotToBundleIdMapping watchFaceDataPath:v30];

  if (!v45)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:@"Failed to encode the metadata."];
  }

  v90 = 0;
  v46 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v84 options:0 error:&v90];
  v47 = v90;
  v11 = v75;
  v23 = v77;
  v18 = v78;
  if (v47)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to encode the face dict into json string: error: %@", v47}];
  }

  v26 = UIImagePNGRepresentation(v78);
  recipeCopy = v85;
  v74 = v26;
  if (v26)
  {
    v73 = UIImagePNGRepresentation(v77);
    if (v73)
    {
      v82 = UIImagePNGRepresentation(v75);
      if (v82)
      {
        v71 = v45;
        v72 = v46;
        v89 = v47;
        v48 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v45 options:0 error:&v89];
        v49 = v89;

        if (v49)
        {
          [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to encode the metadata json dict into NSData with error: %@", v49}];
        }

        v69 = v49;
        v50 = [v79 stringByAppendingPathComponent:@"snapshot.png"];
        [(NTKGreenfieldEncodedRecipe *)v26 writeToFile:v50 atomically:1];

        v51 = [v79 stringByAppendingPathComponent:@"no_borders_snapshot.png"];
        [v82 writeToFile:v51 atomically:1];

        v52 = [v79 stringByAppendingPathComponent:@"face.json"];
        [v72 writeToFile:v52 atomically:1];

        v53 = [v79 stringByAppendingPathComponent:@"metadata.json"];
        v70 = v48;
        [v48 writeToFile:v53 atomically:1];

        v9 = v76;
        if ([faceForSharing shouldIncludeResourceDirectoryForSharing])
        {
          v54 = [v79 stringByAppendingPathComponent:@"Resources"];
          v55 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v97 = v54;
            _os_log_impl(&dword_22D9C5000, v55, OS_LOG_TYPE_DEFAULT, "Preparing resource directory for sharing: '%@'", buf, 0xCu);
          }

          v88 = 0;
          v56 = [faceForSharing createResourceDirectorySuitableForSharingAtPath:v54 error:&v88];
          v57 = v88;
          if ((v56 & 1) == 0)
          {
            [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to prepare resource directory for sharing at path: %@ error: %@", v54, v57}];
          }
        }

        v68 = objc_opt_new();
        v58 = [v68 zippedDataForPath:v79];
        [v83 removeItemAtPath:v79 error:0];
        v59 = MEMORY[0x277CCACA8];
        faceSharingName = [faceForSharing faceSharingName];
        v61 = [v59 stringWithFormat:@"%@.watchface", faceSharingName];

        v62 = v58;
        v63 = [v76 stringByAppendingPathComponent:v61];
        v64 = [MEMORY[0x277CBEBC0] fileURLWithPath:v63];
        v87 = 0;
        [v62 writeToURL:v64 options:0 error:&v87];
        v65 = v87;
        if (v65)
        {
          [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to write .watchFace file to disk with error: %@", v65}];
        }

        faceSharingName2 = [faceForSharing faceSharingName];
        v26 = [[NTKGreenfieldEncodedRecipe alloc] initWithWatchFaceDataUrl:v64 watchFaceImage:v75 watchFaceName:faceSharingName2];

        v47 = v69;
        recipeCopy = v85;
        v23 = v77;
        v18 = v78;
        v45 = v71;
        v46 = v72;
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to convert into NSData, faceWithoutBorderImage:%@", v75}];
        v26 = 0;
        v9 = v76;
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to convert into NSData faceWithDeviceBorderImage:%@", v77}];
      v26 = 0;
      v9 = v76;
    }

    v81 = v47;
  }

  else
  {
    v81 = v47;
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesEncodingException" format:{@"Failed to convert into NSData faceWithGreyBorderImage:%@", v78}];
    v9 = v76;
  }

  v32 = v79;
  v31 = 0;
LABEL_59:

LABEL_60:
LABEL_61:

LABEL_62:

  return v26;
}

+ (id)_queue_snapshotFace:(id)face borderType:(unint64_t)type
{
  v58 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  encodeQueue = [self encodeQueue];
  dispatch_assert_queue_V2(encodeQueue);

  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke;
  aBlock[3] = &unk_27877DE58;
  v49 = v52;
  selfCopy = self;
  v8 = faceCopy;
  v48 = v8;
  v51 = 20;
  v9 = _Block_copy(aBlock);
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__31;
  v45 = __Block_byref_object_dispose__31;
  v46 = 0;
  v10 = dispatch_semaphore_create(0);
  v11 = +[NTKFaceSnapshotter defaultModernSnapshotOptions];
  v12 = [v11 mutableCopy];

  [v12 setObject:&unk_2841831F0 forKeyedSubscript:@"NTKSnapshotPriorityKey"];
  [v12 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"NTKSnapshotPersistableKey"];
  v13 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "_queue_snapshotFace: %@ willSnapshot.", buf, 0xCu);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke_120;
  v34[3] = &unk_278782E08;
  v14 = v8;
  v35 = v14;
  v37 = v52;
  v38 = &v41;
  selfCopy2 = self;
  typeCopy = type;
  v15 = v10;
  v36 = v15;
  v16 = _Block_copy(v34);
  if ([v14 faceStyle] == 21 || objc_msgSend(v14, "faceStyle") == 221)
  {
    v17 = +[NTKFaceSnapshotClient sharedInstance];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke_123;
    v32[3] = &unk_278780000;
    v33 = v16;
    [v17 snapshotFace:v14 options:v12 completion:v32];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v55 = __Block_byref_object_copy__31;
    v56 = __Block_byref_object_dispose__31;
    v57 = objc_alloc_init(NTKFaceSnapshotter);
    v18 = *(*&buf[8] + 40);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke_2;
    v29[3] = &unk_278782E30;
    v30 = v16;
    v31 = buf;
    [v18 provideSnapshotOfFace:v14 options:v12 completion:v29];

    _Block_object_dispose(buf, 8);
  }

  v19 = dispatch_time(0, 20000000000);
  dispatch_semaphore_wait(v15, v19);
  v9[2](v9);
  selfCopy3 = self;
  objc_sync_enter(selfCopy3);
  v21 = v42[5];
  objc_sync_exit(selfCopy3);

  v22 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "_queue_snapshotFace: %@ result: %@", buf, 0x16u);
  }

  if (v21)
  {
    v23 = objc_alloc(MEMORY[0x277D75560]);
    [v21 size];
    v24 = [v23 initWithSize:?];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke_126;
    v27[3] = &unk_2787820A8;
    v25 = v21;
    v28 = v25;
    v21 = [v24 imageWithActions:v27];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(v52, 8);

  return v21;
}

void __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  objc_sync_enter(v2);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  objc_sync_exit(v2);

  if ((v3 & 1) == 0)
  {
    v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke_cold_1(a1, v4);
    }
  }
}

void __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke_120(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "_queue_snapshotFace: %@ didReceiveSnapshot: %@", &v10, 0x16u);
  }

  v6 = *(a1 + 64);
  objc_sync_enter(v6);
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v7 = [*(a1 + 64) addBorder:*(a1 + 72) toWatchFaceImage:v3];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  objc_sync_exit(v6);
  dispatch_semaphore_signal(*(a1 + 40));
}

void __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke_126(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [MEMORY[0x277D75348] clearColor];
  [v3 setFill];

  [*(a1 + 32) size];
  v5 = v4;
  [*(a1 + 32) size];
  v7 = v6;
  v8 = [MEMORY[0x277CBBAE8] currentDevice];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277D75208];
    [v8 screenCornerRadius];
    v12 = [v10 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v5, v7, v11}];
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextAddPath(CurrentContext, [v12 CGPath]);
    v14 = UIGraphicsGetCurrentContext();
    CGContextClip(v14);
  }

  v15 = [v20 CGContext];
  [*(a1 + 32) size];
  v17 = v16;
  [*(a1 + 32) size];
  v22.size.height = v18;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v17;
  CGContextFillRect(v15, v22);
  [*(a1 + 32) drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v19 = UIGraphicsGetCurrentContext();
  CGContextResetClip(v19);
}

+ (id)_greenfieldWatchFaceJsonForFace:(id)face
{
  deepCopy = [face deepCopy];
  [deepCopy clearMetrics];
  [deepCopy prepareForSharing];
  greenfieldJSONObjectRepresentation = [deepCopy greenfieldJSONObjectRepresentation];

  return greenfieldJSONObjectRepresentation;
}

+ (id)_metadataDictForWatchFace:(id)face slotToSampleTemplateMapping:(id)mapping slotToItemIdMapping:(id)idMapping slotToBundleIdMapping:(id)bundleIdMapping watchFaceDataPath:(id)path
{
  faceCopy = face;
  mappingCopy = mapping;
  pathCopy = path;
  bundleIdMappingCopy = bundleIdMapping;
  idMappingCopy = idMapping;
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __140__NTKGreenfieldUtilities__metadataDictForWatchFace_slotToSampleTemplateMapping_slotToItemIdMapping_slotToBundleIdMapping_watchFaceDataPath___block_invoke;
  v34[3] = &unk_27877F4E8;
  v19 = mappingCopy;
  v35 = v19;
  v20 = pathCopy;
  v36 = v20;
  v21 = v18;
  v37 = v21;
  [faceCopy enumerateComplicationSlotsWithBlock:v34];
  v22 = [idMappingCopy mutableCopy];

  [self _updateSystemDeletableAppItemIdForSlotToItemIdMapping:v22 face:faceCopy];
  [v17 setObject:v21 forKeyedSubscript:@"complication_sample_templates"];
  [v17 setObject:v22 forKeyedSubscript:@"complications_item_ids"];
  [v17 setObject:bundleIdMappingCopy forKeyedSubscript:@"complications_bundle_ids"];

  v23 = objc_opt_new();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __140__NTKGreenfieldUtilities__metadataDictForWatchFace_slotToSampleTemplateMapping_slotToItemIdMapping_slotToBundleIdMapping_watchFaceDataPath___block_invoke_2;
  v31[3] = &unk_27877F498;
  v24 = faceCopy;
  v32 = v24;
  v25 = v23;
  v33 = v25;
  [v24 enumerateComplicationSlotsWithBlock:v31];
  [v17 setObject:v25 forKeyedSubscript:@"complications_names"];
  createSharingMetadata = [v24 createSharingMetadata];
  if (createSharingMetadata)
  {
    [v17 setObject:createSharingMetadata forKey:@"watchface_metadata"];
  }

  [v17 setObject:&unk_284183208 forKey:@"version"];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v28 = currentDevice;
  if (currentDevice)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(currentDevice, "sizeClass")}];
    [v17 setObject:v29 forKey:@"device_size"];
  }

  return v17;
}

void __140__NTKGreenfieldUtilities__metadataDictForWatchFace_slotToSampleTemplateMapping_slotToItemIdMapping_slotToBundleIdMapping_watchFaceDataPath___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:*(a1 + 40)];
    v5 = [v4 URLByAppendingPathComponent:@"complicationData"];

    v6 = [v5 URLByAppendingPathComponent:v11];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v6 path];
    [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

    v9 = [v6 path];
    v10 = [v3 JSONObjectRepresentationWritingResourcesToBundlePath:v9 purpose:1];

    if (v10 || [0 count])
    {
      [*(a1 + 48) setObject:v10 forKeyedSubscript:v11];
    }
  }
}

void __140__NTKGreenfieldUtilities__metadataDictForWatchFace_slotToSampleTemplateMapping_slotToItemIdMapping_slotToBundleIdMapping_watchFaceDataPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 complicationForSlot:v4];
  v5 = [v6 localizedSectionHeaderName];
  [*(a1 + 40) setObject:v5 forKeyedSubscript:v4];
}

+ (id)createXPCServiceConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.NanoTimeKit.GreenfieldDecodingService"];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A872358];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_unzipWatchfaceFromURL_withSandboxExtension_writeSandboxExtension_completionBlock_ argumentIndex:0 ofReply:1];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

+ (BOOL)validateFaceType:(id)type faceBundleId:(id)id
{
  idCopy = id;
  v12 = -1;
  NTKFaceBundleGetFaceStyleFromString(type, &v12);
  if (v12 == -1)
  {
    goto LABEL_5;
  }

  if (v12 != 44)
  {
    v8 = [NTKFaceDescriptor alloc];
    v6 = [(NTKFaceDescriptor *)v8 initWithFaceStyle:v12];
    goto LABEL_7;
  }

  if (!idCopy)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_11;
  }

  v6 = [[NTKFaceDescriptor alloc] initWithBundleIdentifier:idCopy];
LABEL_7:
  v9 = v6;
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  if ([(NTKFaceDescriptor *)v9 isAvailableForDevice:currentDevice])
  {
    v7 = [(NTKFaceDescriptor *)v9 isAvailableForDevice:currentDevice];
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  return v7;
}

+ (void)migrateComplicationsOnFace:(id)face
{
  v12 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  v4 = +[NTKBundleComplicationFaceMigrator sharedInstance];
  v5 = dispatch_semaphore_create(0);
  v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = faceCopy;
    _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "migrateComplicationsOnFace about to migrate face %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__NTKGreenfieldUtilities_migrateComplicationsOnFace___block_invoke;
  v8[3] = &unk_27877E8E0;
  v9 = v5;
  v7 = v5;
  [v4 migrateFace:faceCopy completion:v8];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

+ (void)decodeWatchFaceFromUrl:(id)url completionBlock:(id)block
{
  urlCopy = url;
  blockCopy = block;
  encodeQueue = [objc_opt_class() encodeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke;
  block[3] = &unk_278782DE0;
  v12 = urlCopy;
  v13 = blockCopy;
  selfCopy = self;
  v9 = blockCopy;
  v10 = urlCopy;
  dispatch_async(encodeQueue, block);
}

void __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke(id *a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 startAccessingSecurityScopedResource];
    [a1[4] fileSystemRepresentation];
    v4 = sandbox_extension_issue_file();
    v5 = [a1[6] temporaryGreenfieldDirectory];
    [v5 UTF8String];
    v6 = sandbox_extension_issue_file();

    v7 = [a1[6] createXPCServiceConnection];
    [v7 resume];
    v8 = dispatch_group_create();
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__31;
    v38[4] = __Block_byref_object_dispose__31;
    v39 = 0;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = __Block_byref_object_copy__31;
    v36[4] = __Block_byref_object_dispose__31;
    v37 = 0;
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy__31;
    v34[4] = __Block_byref_object_dispose__31;
    v35 = 0;
    v9 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v3];
      *buf = 138412802;
      v44 = v10;
      v45 = 2112;
      v46 = v11;
      v47 = 2080;
      v48 = v4;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "[myConnection remoteObjectProxy] start decoding watch face from url: %@, scopedResource:%@, sandboxExtension: %s", buf, 0x20u);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_150;
    v31[3] = &unk_278782E58;
    v33 = v34;
    v12 = v8;
    v32 = v12;
    v13 = [v7 remoteObjectProxyWithErrorHandler:v31];
    v14 = a1[4];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_152;
    v26[3] = &unk_278782E80;
    v28 = v36;
    v29 = v38;
    v30 = v4;
    v15 = v12;
    v27 = v15;
    [v13 unzipWatchfaceFromURL:v14 withSandboxExtension:v4 writeSandboxExtension:v6 completionBlock:v26];
    dispatch_group_enter(v15);
    v16 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_154;
    block[3] = &unk_278782EA8;
    v21 = v34;
    v20 = a1[5];
    v22 = v36;
    v23 = v38;
    v24 = a1[6];
    v25 = v3;
    v19 = a1[4];
    dispatch_group_notify(v15, v16, block);

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(v36, 8);

    _Block_object_dispose(v38, 8);
  }

  else
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not load url %@", 0];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_2;
    v40[3] = &unk_27877FF60;
    v41 = v17;
    v42 = a1[5];
    v7 = v17;
    dispatch_async(MEMORY[0x277D85CD0], v40);

    v15 = v41;
  }
}

void __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] greenfield_decodeWatchFaceErrorWithCode:5 message:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_150(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_150_cold_1();
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_152(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 56);
    v15 = 138412802;
    v16 = v5;
    v17 = 2080;
    v18 = v8;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "[myConnection remoteObjectProxy] completion block called with url: %@, sandboxExtension: %s, extractionError: %@", &v15, 0x20u);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_154(uint64_t a1)
{
  v2 = a1 + 48;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v3 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_154_cold_1(v2);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_155;
    block[3] = &unk_278780F80;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v30 = v4;
    v31 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = v30;
LABEL_9:

    goto LABEL_10;
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_154_cold_2(a1 + 56);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_156;
    v26[3] = &unk_278780F80;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v27 = v8;
    v28 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v26);
    v6 = v27;
    goto LABEL_9;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v10 = [objc_opt_class() _decodeFaceFromDataPath:*(*(*(a1 + 64) + 8) + 40)];
    if (v10)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_2_157;
      v23[3] = &unk_27877E570;
      v25 = *(a1 + 40);
      v24 = v10;
      dispatch_async(MEMORY[0x277D85CD0], v23);

      v11 = v25;
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] greenfield_decodeWatchFaceErrorWithCode:0 message:@"Recipe must not be nil"];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_3;
      v20[3] = &unk_27877E570;
      v16 = *(a1 + 40);
      v21 = v15;
      v22 = v16;
      v11 = v15;
      dispatch_async(MEMORY[0x277D85CD0], v20);
    }
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_154_cold_4();
    }

    v13 = [MEMORY[0x277CCA9B8] greenfield_decodeWatchFaceErrorWithCode:6 message:@"Decoding service timed out."];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_166;
    v17[3] = &unk_27877E570;
    v14 = *(a1 + 40);
    v18 = v13;
    v19 = v14;
    v10 = v13;
    dispatch_async(MEMORY[0x277D85CD0], v17);
  }

LABEL_10:
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }
}

+ (id)unzipWatchFaceFileAtUrl:(id)url
{
  v4 = MEMORY[0x277CCAA00];
  urlCopy = url;
  defaultManager = [v4 defaultManager];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  temporaryGreenfieldDirectory = [self temporaryGreenfieldDirectory];
  v10 = [temporaryGreenfieldDirectory stringByAppendingPathComponent:uUIDString];

  v18 = 0;
  [defaultManager createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v18];
  v11 = v18;
  if (v11)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Failed to create path at %@ with error %@", v10, v11}];
  }

  v17 = 0;
  [defaultManager removeItemAtPath:v10 error:&v17];
  v12 = v17;
  v13 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  v14 = [NTKUnzipUtilities unzipFile:urlCopy toPath:v13];

  v15 = 0;
  if (v14)
  {
    v15 = v10;
  }

  return v15;
}

+ (id)_decodeFaceFromDataPath:(id)path
{
  v132 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v82 = [pathCopy stringByAppendingPathComponent:@"metadata.json"];
  if (([defaultManager fileExistsAtPath:v82] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Failed to locate the metadata.json in path: %@", v82}];
  }

  v81 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v82];
  v89 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v81 options:0 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Cannot decode watch face, metadataDict is not dict %@, metadataPath: %@, url %@", v89, v82, pathCopy}];
  }

  v80 = [v89 objectForKey:@"version"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Failed to load the version number: %@", v80}];
  }

  if ([v80 integerValue] >= 3)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Version number is not supported. File: %@ Current: %lu", v80, 2}];
  }

  v88 = [pathCopy stringByAppendingPathComponent:@"face.json"];
  if (([defaultManager fileExistsAtPath:v88] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Failed to locate the face.json in path: %@", v88}];
  }

  v79 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v88];
  if (!v79)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Failed to create jsonWatchFaceData from file at path: %@", v88}];
  }

  v125 = 0;
  v85 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v79 options:0 error:&v125];
  v75 = v125;
  if (v75 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v85 allValues], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count") == 0, v3, v4))
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Failed to load face.json into dict: %@", v88}];
  }

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy__31;
  v123 = __Block_byref_object_dispose__31;
  v124 = 0;
  v5 = dispatch_semaphore_create(0);
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __50__NTKGreenfieldUtilities__decodeFaceFromDataPath___block_invoke;
  v116[3] = &unk_278782ED0;
  v118 = &v119;
  v6 = v5;
  v117 = v6;
  [NTKFace greenfieldFaceWithJSONObjectRepresentation:v85 forDevice:currentDevice withCompletion:v116];
  v7 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v6, v7);
  if (!v120[5])
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesIncompatibleDeviceException" format:{@"Face is nil.face path %@", v88}];
  }

  [pathCopy stringByAppendingPathComponent:@"Resources"];
  v9 = v8 = v89;
  if ([defaultManager fileExistsAtPath:v9])
  {
    if (([defaultManager isReadableFileAtPath:v9] & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Could not read file at: %@", v9}];
    }

    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
    v11 = NTKNewUniqueTeporaryResourceDirectory();
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
    v13 = v6;
    v115 = 0;
    v14 = [defaultManager copyItemAtURL:v10 toURL:v12 error:&v115];
    v15 = v115;
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    if ((v16 & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Could not copy file %@ to %@. Error: %@", v9, v11, v15}];
    }

    v8 = v89;
    v6 = v13;
  }

  else
  {
    v11 = 0;
  }

  [v120[5] setResourceDirectory:v11];
  v17 = [v8 objectForKey:@"watchface_metadata"];
  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Cannot decode watch face, watchFaceMetadataDictionary is not dict %@, face.json: %@", v17, v85}];
    }
  }

  [v120[5] handleSharingMetadata:v17];
  v91 = objc_opt_new();
  v18 = [v8 objectForKeyedSubscript:@"complication_sample_templates"];
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Cannot decode watch face, complicationSlotToTemplateStringMapping is not dict %@, face.json: %@", v18, v85}];
    }
  }

  v73 = v11;
  v74 = v17;
  v71 = v6;
  v72 = v9;
  v19 = [v8 objectForKeyedSubscript:@"complications_item_ids"];
  v20 = [v19 mutableCopy];

  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Cannot decode watch face, complicationSlotToItemIdMapping is not dict %@, face.json: %@", v20, v85}];
    }
  }

  v21 = [v89 objectForKeyedSubscript:@"complications_bundle_ids"];
  if (v21)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Cannot decode watch face, complicationSlotToBundleIdMapping is not dict %@, face.json: %@", v20, v85}];
    }
  }

  else
  {
    v21 = MEMORY[0x277CBEC10];
  }

  [objc_opt_class() migrateComplicationsOnFace:v120[5]];
  array = [MEMORY[0x277CBEB18] array];
  v23 = v120[5];
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __50__NTKGreenfieldUtilities__decodeFaceFromDataPath___block_invoke_2;
  v109[3] = &unk_278782EF8;
  v114 = &v119;
  v92 = v18;
  v110 = v92;
  v24 = array;
  v111 = v24;
  v87 = v21;
  v112 = v87;
  v86 = v20;
  v113 = v86;
  [v23 enumerateComplicationSlotsWithBlock:v109];
  v76 = [v24 count];
  v96 = v24;
  if ([v24 count])
  {
    v25 = [v87 mutableCopy];
    [v25 removeObjectsForKeys:v96];
    v94 = [v25 copy];

    v26 = [v86 mutableCopy];
    [v26 removeObjectsForKeys:v96];
    v83 = [v26 copy];

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v27 = v96;
    v28 = [v27 countByEnumeratingWithState:&v105 objects:v131 count:16];
    if (v28)
    {
      v29 = *v106;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v106 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v105 + 1) + 8 * i);
          v32 = v120[5];
          v33 = +[NTKComplication nullComplication];
          [v32 setComplication:v33 forSlot:v31];
        }

        v28 = [v27 countByEnumeratingWithState:&v105 objects:v131 count:16];
      }

      while (v28);
    }

    v86 = v83;
    v87 = v94;
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  allKeys = [v92 allKeys];
  v35 = [allKeys countByEnumeratingWithState:&v101 objects:v130 count:16];
  if (v35)
  {
    v36 = *v102;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v102 != v36)
        {
          objc_enumerationMutation(allKeys);
        }

        v38 = *(*(&v101 + 1) + 8 * j);
        if ([v96 containsObject:v38])
        {
          v39 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          *buf = 138412290;
          v127 = v38;
          v40 = v39;
          v41 = "Dropping template for slot '%@' as it doesn't have a complication anymore";
LABEL_62:
          _os_log_impl(&dword_22D9C5000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
          goto LABEL_70;
        }

        v42 = [v120[5] complicationForSlot:v38];
        v43 = [v42 complicationType] == 56;

        if (v43)
        {
          v39 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          *buf = 138412290;
          v127 = v38;
          v40 = v39;
          v41 = "Dropping template for slot '%@' as it contains an Apricot complication and we don't need a template";
          goto LABEL_62;
        }

        v39 = [v92 objectForKeyedSubscript:v38];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Cannot decode watch face, templateJSON is not a dictionary"}];
        }

        v44 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
        v45 = [v44 URLByAppendingPathComponent:@"complicationData"];

        v46 = [v45 URLByAppendingPathComponent:v38];

        v47 = [objc_alloc(MEMORY[0x277CCA8D8]) initWithURL:v46];
        v48 = [MEMORY[0x277CBB720] complicationTemplateWithJSONObjectRepresentation:v39 bundle:v47 purpose:1];
        if (!v48)
        {
          v49 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v127 = v38;
            v128 = 2112;
            v129 = v39;
            _os_log_error_impl(&dword_22D9C5000, v49, OS_LOG_TYPE_ERROR, "Cannot decode template for slot:%@, dictionary:\n%@", buf, 0x16u);
          }
        }

        [v91 setObject:v48 forKeyedSubscript:v38];

LABEL_70:
      }

      v35 = [allKeys countByEnumeratingWithState:&v101 objects:v130 count:16];
    }

    while (v35);
  }

  v50 = [v89 objectForKeyedSubscript:@"complications_names"];
  [v50 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_229];
  v51 = [pathCopy stringByAppendingPathComponent:@"no_borders_snapshot.png"];
  if ([defaultManager fileExistsAtPath:v51])
  {
    temporaryGreenfieldNoBordersSnapshotPath = [self temporaryGreenfieldNoBordersSnapshotPath];
    if ([defaultManager fileExistsAtPath:temporaryGreenfieldNoBordersSnapshotPath])
    {
      [defaultManager removeItemAtPath:temporaryGreenfieldNoBordersSnapshotPath error:0];
    }

    [defaultManager copyItemAtPath:v51 toPath:temporaryGreenfieldNoBordersSnapshotPath error:0];
  }

  else
  {
    temporaryGreenfieldNoBordersSnapshotPath = 0;
  }

  v53 = [v89 objectForKey:@"device_size"];
  v54 = [NTKGreenfieldDecodedRecipe alloc];
  v55 = [(NTKGreenfieldDecodedRecipe *)v54 initWithWatchFace:v120[5] complicationSlotToTemplateMapping:v91 complicationSlotToItemIdMapping:v86 complicationSlotToNameMapping:v50 complicationSlotToBundleIdMapping:v87 isUsingModifiedComplicationsSet:v76 != 0 noBorderFacePreviewImagePath:temporaryGreenfieldNoBordersSnapshotPath senderBoxedDeviceSize:v53];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NTKGreenfieldUtilities__decodeFaceFromDataPath___block_invoke_2_234;
  block[3] = &unk_27877DB10;
  v56 = v55;
  v100 = v56;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v57 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  v95 = v53;
  v84 = v51;
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v127 = pathCopy;
    _os_log_impl(&dword_22D9C5000, v57, OS_LOG_TYPE_DEFAULT, "Decode service did start cleaning up files at path: %@.", buf, 0xCu);
  }

  v58 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v59 = v58;
  [v58 fileSystemRepresentation];
  v60 = sandbox_extension_issue_file();
  v61 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v127 = v60;
    _os_log_impl(&dword_22D9C5000, v61, OS_LOG_TYPE_DEFAULT, "Decode service sandboxExtension is:%s.", buf, 0xCu);
  }

  v62 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.NanoTimeKit.GreenfieldDecodingService"];
  v63 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28A872358];
  v64 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v63 setClasses:v64 forSelector:sel_removeFileAtPath_withSandboxExtension_completionBlock_ argumentIndex:0 ofReply:1];
  [v62 setRemoteObjectInterface:v63];
  [v62 resume];
  v65 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v127 = v62;
    _os_log_impl(&dword_22D9C5000, v65, OS_LOG_TYPE_DEFAULT, "Decode service myConnection is:%@.", buf, 0xCu);
  }

  remoteObjectProxy = [v62 remoteObjectProxy];
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __50__NTKGreenfieldUtilities__decodeFaceFromDataPath___block_invoke_236;
  v97[3] = &unk_27877E820;
  v67 = pathCopy;
  v98 = v67;
  [remoteObjectProxy removeFileAtPath:v67 withSandboxExtension:v60 completionBlock:v97];

  v68 = v98;
  v69 = v56;

  _Block_object_dispose(&v119, 8);

  return v69;
}

void __50__NTKGreenfieldUtilities__decodeFaceFromDataPath___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __50__NTKGreenfieldUtilities__decodeFaceFromDataPath___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 64) + 8) + 40) complicationForSlot:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [*(*(*(a1 + 64) + 8) + 40) complicationForSlot:v3];
    v6 = [v5 complication];

    v4 = v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ([v4 complicationType])
      {
        if ([*(*(*(a1 + 64) + 8) + 40) slot:v3 supportsFamiliesOfComplications:v4])
        {
          v7 = [*(a1 + 48) objectForKeyedSubscript:v3];
          v8 = [*(a1 + 56) objectForKeyedSubscript:v3];
          v9 = [NTKGreenfieldSystemAppDeprecatedMappings isSystemAppDeprecatedBundleId:v7 itemId:v8];

          if (!v9)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v11 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = 138412546;
            v13 = v4;
            v14 = 2112;
            v15 = v3;
            _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "Dropping unsupported complication '%@' in slot '%@'", &v12, 0x16u);
          }
        }
      }

      else
      {
        v10 = [*(a1 + 32) objectForKeyedSubscript:v3];

        if (!v10)
        {
          goto LABEL_15;
        }
      }

      [*(a1 + 40) addObject:v3];
    }
  }

LABEL_15:
}

void __50__NTKGreenfieldUtilities__decodeFaceFromDataPath___block_invoke_226(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKGreenfieldUtilitiesDecodingException" format:{@"Failed to load the complication names. The key and value must be string type. %@ %@", v5, v4}];
  }
}

void __50__NTKGreenfieldUtilities__decodeFaceFromDataPath___block_invoke_236(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __50__NTKGreenfieldUtilities__decodeFaceFromDataPath___block_invoke_236_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "Decode service remove files at path:%@ succeed.", &v7, 0xCu);
  }
}

+ (void)generateFacePreviewImageFromUrl:(id)url completionBlock:(id)block
{
  urlCopy = url;
  blockCopy = block;
  encodeQueue = [objc_opt_class() encodeQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NTKGreenfieldUtilities_generateFacePreviewImageFromUrl_completionBlock___block_invoke;
  block[3] = &unk_278782DE0;
  v13 = blockCopy;
  selfCopy = self;
  v12 = urlCopy;
  v9 = blockCopy;
  v10 = urlCopy;
  dispatch_async(encodeQueue, block);
}

void __74__NTKGreenfieldUtilities_generateFacePreviewImageFromUrl_completionBlock___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _queue_greenfieldPreviewFromUrl:*(a1 + 32)];
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA450];
    v7[0] = @"Failed to generate the image.";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v5 = [v3 errorWithDomain:@"com.apple.nanotimekit" code:-1 userInfo:v4];

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)_queue_greenfieldPreviewFromUrl:(id)url
{
  urlCopy = url;
  v4 = [objc_opt_class() unzipWatchFaceFileAtUrl:urlCopy];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringByAppendingPathComponent:@"snapshot.png"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [defaultManager fileExistsAtPath:v6];

    if (v8)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [defaultManager2 contentsAtPath:v6];
      v11 = [MEMORY[0x277D755B8] imageWithData:v10];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v14 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          +[NTKGreenfieldUtilities _queue_greenfieldPreviewFromUrl:];
        }
      }
    }

    else
    {
      defaultManager2 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
      if (os_log_type_enabled(defaultManager2, OS_LOG_TYPE_ERROR))
      {
        +[NTKGreenfieldUtilities _queue_greenfieldPreviewFromUrl:];
      }

      v12 = 0;
    }
  }

  else
  {
    v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[NTKGreenfieldUtilities _queue_greenfieldPreviewFromUrl:];
    }

    v12 = 0;
  }

  return v12;
}

+ (id)addBorder:(unint64_t)border toWatchFaceImage:(id)image
{
  imageCopy = image;
  v8 = imageCopy;
  if (!imageCopy)
  {
    v14 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[NTKGreenfieldUtilities addBorder:toWatchFaceImage:];
    }

    goto LABEL_12;
  }

  [imageCopy size];
  v11 = v10;
  v12 = v9;
  if (v10 == 0.0 || v9 == 0.0)
  {
    v14 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NTKGreenfieldUtilities addBorder:v11 toWatchFaceImage:v12];
    }

LABEL_12:

    v4 = 0;
    goto LABEL_20;
  }

  if (border > 1)
  {
    if (border == 2)
    {
      selfCopy2 = self;
      v16 = v8;
      v17 = 0;
    }

    else
    {
      if (border != 3)
      {
        goto LABEL_20;
      }

      selfCopy2 = self;
      v16 = v8;
      v17 = 1;
    }

    v13 = [selfCopy2 _addGenericDeviceBorderToWatchFaceImage:v16 includesTransparentPadding:v17];
  }

  else if (border)
  {
    if (border != 1)
    {
      goto LABEL_20;
    }

    v13 = [self _addGreyBorderToWatchFaceImage:v8];
  }

  else
  {
    v13 = v8;
  }

  v4 = v13;
LABEL_20:

  return v4;
}

+ (id)_addGreyBorderToWatchFaceImage:(id)image
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  imageCopy = image;
  [imageCopy size];
  v5 = v4 * *&v20;
  [imageCopy size];
  v7 = v6;
  [imageCopy size];
  v9 = v7 + v5 - v8;
  v28.size.width = v5 * *(&v21 + 1);
  v28.size.height = v9 + v5 * *(&v21 + 1) - v5;
  v28.origin.x = (v5 - v5 * *(&v21 + 1)) * 0.5;
  v28.origin.y = (v9 - v28.size.height) * 0.5;
  v29 = CGRectInset(v28, *&v22 * 0.5, *&v22 * 0.5);
  v10 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v29.origin.x cornerRadius:{v29.origin.y, v29.size.width, v29.size.height, *(&v20 + 1) * *(&v22 + 1) * CGRectGetHeight(v29)}];
  v27.width = v5;
  v27.height = v9;
  UIGraphicsBeginImageContextWithOptions(v27, 0, 0.0);
  [v10 setLineWidth:*&v21];
  [v10 fill];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextAddPath(CurrentContext, [v10 CGPath]);
  v12 = UIGraphicsGetCurrentContext();
  CGContextClip(v12);
  [imageCopy size];
  v14 = (v5 - v13) * 0.5;
  [imageCopy size];
  [imageCopy drawAtPoint:{v14, (v9 - v15) * 0.5}];

  v16 = UIGraphicsGetCurrentContext();
  CGContextResetClip(v16);
  v17 = NTKCOutlineColor(0);
  [v17 setStroke];
  [v10 stroke];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

+ (id)_addGenericDeviceBorderToWatchFaceImage:(id)image includesTransparentPadding:(BOOL)padding
{
  imageCopy = image;
  memset(v8, 0, sizeof(v8));
  [MEMORY[0x277CBBAE8] currentDevice];
  v5 = [objc_claimAutoreleasedReturnValue() deviceCategory] - 1;
  if (v5 > 5)
  {
    v6 = @"email_sharing_luxo";
  }

  else
  {
    v6 = off_278783028[v5];
  }

  NTKImageNamed(v6);
}

uint64_t __93__NTKGreenfieldUtilities__addGenericDeviceBorderToWatchFaceImage_includesTransparentPadding___block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);

  return [v2 drawInRect:5 blendMode:v3 alpha:{v4, v5, v6, 1.0}];
}

uint64_t __93__NTKGreenfieldUtilities__addGenericDeviceBorderToWatchFaceImage_includesTransparentPadding___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D75348];
  v4 = a2;
  v5 = [v3 clearColor];
  [v5 setFill];

  v6 = [v4 CGContext];
  v12.size.width = *(a1 + 40);
  v12.size.height = *(a1 + 48);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  CGContextFillRect(v6, v12);
  v7 = *(a1 + 32);
  v8 = *(a1 + 136);
  v9 = *(a1 + 144);

  return [v7 drawAtPoint:{v8, v9}];
}

+ (id)encodeQueue
{
  if (encodeQueue_onceToken != -1)
  {
    +[NTKGreenfieldUtilities encodeQueue];
  }

  v3 = encodeQueue_encodeQueue;

  return v3;
}

void __37__NTKGreenfieldUtilities_encodeQueue__block_invoke()
{
  v2 = dispatch_get_global_queue(25, 0);
  v0 = dispatch_queue_create_with_target_V2("com.apple.NanoTimeKit.Greenfield.queue", 0, v2);
  v1 = encodeQueue_encodeQueue;
  encodeQueue_encodeQueue = v0;
}

+ (BOOL)shouldAutoDismissViewControllerForAddFaceFlow:(id)flow
{
  flowCopy = flow;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)_companionAppIdFromWatchAppBundleId:(id)id
{
  idCopy = id;
  mEMORY[0x277CEAF80] = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  pdrDevice = [currentDevice pdrDevice];
  pairingID = [pdrDevice pairingID];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__31;
  v21 = __Block_byref_object_dispose__31;
  v22 = 0;
  v8 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__NTKGreenfieldUtilities__companionAppIdFromWatchAppBundleId___block_invoke;
  v13[3] = &unk_278782F90;
  v9 = idCopy;
  v14 = v9;
  v16 = &v17;
  v10 = v8;
  v15 = v10;
  [mEMORY[0x277CEAF80] fetchApplicationOnDeviceWithPairingID:pairingID withBundleID:v9 completion:v13];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __62__NTKGreenfieldUtilities__companionAppIdFromWatchAppBundleId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62__NTKGreenfieldUtilities__companionAppIdFromWatchAppBundleId___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = [a2 companionAppBundleID];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (void)_updateSystemDeletableAppItemIdForSlotToItemIdMapping:(id)mapping face:(id)face
{
  v60 = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  faceCopy = face;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __85__NTKGreenfieldUtilities__updateSystemDeletableAppItemIdForSlotToItemIdMapping_face___block_invoke;
  v54[3] = &unk_278782FB8;
  v8 = faceCopy;
  v55 = v8;
  v9 = dictionary;
  v56 = v9;
  [mappingCopy enumerateKeysAndObjectsUsingBlock:v54];
  v10 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v9;
    _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Pending processing sadSlotToAppIdMapping: %@", buf, 0xCu);
  }

  v11 = MEMORY[0x277CBEB58];
  v41 = v9;
  allValues = [v9 allValues];
  v13 = [v11 setWithArray:allValues];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v15 = MEMORY[0x277CEC340];
  allObjects = [v13 allObjects];
  v17 = [v15 queryForBundleIDs:allObjects];

  v18 = dispatch_semaphore_create(0);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __85__NTKGreenfieldUtilities__updateSystemDeletableAppItemIdForSlotToItemIdMapping_face___block_invoke_276;
  v50[3] = &unk_278782FE0;
  v42 = dictionary2;
  v51 = v42;
  v19 = v13;
  v52 = v19;
  v20 = v18;
  v53 = v20;
  v39 = v17;
  [v17 executeQueryWithResultHandler:v50];
  dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  v38 = v19;
  if ([v19 count])
  {
    v21 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v19;
      _os_log_impl(&dword_22D9C5000, v21, OS_LOG_TYPE_DEFAULT, "(NTKGreenfieldUtilities) Started SAD ItemID lookup %@:", buf, 0xCu);
    }

    v22 = dispatch_semaphore_create(0);
    v23 = MEMORY[0x277CEC338];
    allObjects2 = [v19 allObjects];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __85__NTKGreenfieldUtilities__updateSystemDeletableAppItemIdForSlotToItemIdMapping_face___block_invoke_279;
    v47[3] = &unk_278783008;
    v48 = v42;
    v25 = v22;
    v49 = v25;
    [v23 lookupItemIDsForDeletableSystemAppsForWatchWithBundleIDs:allObjects2 withResultHandler:v47];

    v36 = v25;
    dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v36 = v20;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v8;
  orderedComplicationSlots = [v8 orderedComplicationSlots];
  v27 = [orderedComplicationSlots countByEnumeratingWithState:&v43 objects:v57 count:16];
  v28 = v41;
  if (v27)
  {
    v29 = v27;
    v30 = *v44;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(orderedComplicationSlots);
        }

        v32 = *(*(&v43 + 1) + 8 * i);
        v33 = [mappingCopy objectForKeyedSubscript:v32];
        if ([v33 isEqualToNumber:&unk_284183220])
        {
          v34 = [v28 objectForKeyedSubscript:v32];
          if (v34)
          {
            v35 = [v42 objectForKeyedSubscript:v34];
            if (v33)
            {
              [mappingCopy setObject:v35 forKeyedSubscript:v32];
            }

            v28 = v41;
          }
        }
      }

      v29 = [orderedComplicationSlots countByEnumeratingWithState:&v43 objects:v57 count:16];
    }

    while (v29);
  }
}

void __85__NTKGreenfieldUtilities__updateSystemDeletableAppItemIdForSlotToItemIdMapping_face___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a3 isEqualToNumber:&unk_284183220])
  {
    v6 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Found itemID == 0 for slot: %@", &v9, 0xCu);
    }

    v7 = [*(a1 + 32) complicationForSlot:v5];
    v8 = [v7 appIdentifier];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  }
}

void __85__NTKGreenfieldUtilities__updateSystemDeletableAppItemIdForSlotToItemIdMapping_face___block_invoke_276(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "executeQueryWithResultHandler: %@ %@", buf, 0x16u);
  }

  v20 = v6;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "storeItemID")}];
        v15 = v14;
        if (v14 && [v14 intValue] >= 1)
        {
          v16 = *(a1 + 32);
          v17 = [v13 bundleID];
          [v16 setObject:v15 forKeyedSubscript:v17];

          v18 = *(a1 + 40);
          v19 = [v13 bundleID];
          [v18 removeObject:v19];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __85__NTKGreenfieldUtilities__updateSystemDeletableAppItemIdForSlotToItemIdMapping_face___block_invoke_279(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _NTKLoggingObjectForDomain(43, "NTKLoggingDomainGreenfield");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __85__NTKGreenfieldUtilities__updateSystemDeletableAppItemIdForSlotToItemIdMapping_face___block_invoke_279_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "(NTKGreenfieldUtilities) Completed SAD ItemID lookup finished with result %@:", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v5 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          v14 = [v5 objectForKeyedSubscript:v13];
          if (v14)
          {
            [*(a1 + 32) setObject:v14 forKeyedSubscript:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (BOOL)shouldPresentUnreleasedFeaturesInternalWarningForFace:(id)face
{
  faceCopy = face;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (!NTKInternalBuild(faceCopy, v4))
  {
    goto LABEL_5;
  }

  if (([faceCopy shouldPresentAlertForSharingUnreleasedFace] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__NTKGreenfieldUtilities_shouldPresentUnreleasedFeaturesInternalWarningForFace___block_invoke;
    v7[3] = &unk_27877FB58;
    v8 = faceCopy;
    v9 = &v10;
    [v8 enumerateComplicationSlotsWithBlock:v7];

LABEL_5:
    v5 = *(v11 + 24);
    goto LABEL_6;
  }

  v5 = 1;
LABEL_6:
  _Block_object_dispose(&v10, 8);

  return v5 & 1;
}

void __80__NTKGreenfieldUtilities_shouldPresentUnreleasedFeaturesInternalWarningForFace___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [NTKGreenfieldDraftRecipe templateForComplicationAtSlot:a2 face:*(a1 + 32)];
  if (v5)
  {
    v8 = v5;
    v6 = [MEMORY[0x277CBBB70] sharedMonitor];
    v7 = [v6 considersUISensitivitySensitive:{objc_msgSend(v8, "uiSensitivity")}];

    v5 = v8;
    if (v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

void __70__NTKGreenfieldUtilities_encodeRecipeFromDraftRecipe_completionBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57__NTKGreenfieldUtilities__queue_snapshotFace_borderType___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = v4;
  v8 = [v6 JSONObjectRepresentation];
  v9 = 138412802;
  v10 = v4;
  v11 = 2048;
  v12 = v5;
  v13 = 2112;
  v14 = v8;
  _os_log_fault_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_FAULT, "GreenfieldFaceSnapshotTimout: Failed to generate snapshot for a %@ face within %lu sec. Face: %@", &v9, 0x20u);
}

void __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_150_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_154_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4_1(a1) localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3(&dword_22D9C5000, v2, v3, "proxy had an error: %@", v4, v5, v6, v7, v8);
}

void __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_154_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_4_1(a1) localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3(&dword_22D9C5000, v2, v3, "unzipWatchfaceFromURL path is nil, error: %@", v4, v5, v6, v7, v8);
}

void __65__NTKGreenfieldUtilities_decodeWatchFaceFromUrl_completionBlock___block_invoke_154_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_queue_greenfieldPreviewFromUrl:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_queue_greenfieldPreviewFromUrl:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_queue_greenfieldPreviewFromUrl:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)addBorder:(double)a1 toWatchFaceImage:(double)a2 .cold.1(double a1, double a2)
{
  v2 = NSStringFromCGSize(*&a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3(&dword_22D9C5000, v3, v4, "cannot add border to watch face image with invalid size %@", v5, v6, v7, v8, v9);
}

void __85__NTKGreenfieldUtilities__updateSystemDeletableAppItemIdForSlotToItemIdMapping_face___block_invoke_279_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end