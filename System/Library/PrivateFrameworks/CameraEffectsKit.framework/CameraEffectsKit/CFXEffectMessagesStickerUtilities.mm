@interface CFXEffectMessagesStickerUtilities
+ (CGSize)JFX_recommendedStickerPreviewSizeInPixelsForStickerSize:(int64_t)size;
+ (id)animatedPreviewFileNameForOverlayID:(id)d;
+ (id)animatedPreviewsDirectory;
+ (id)overlayIDFromAnimatedPreviewFileName:(id)name;
+ (id)stickerPropertiesForIndex:(int64_t)index forEffectTypeId:(id)id;
+ (int64_t)numberOfStickersForEffectTypeId:(id)id;
+ (void)cacheAnimatedStickerPreviewsForOverlayTypeId:(id)id atStickerSize:(int64_t)size previewDuration:(double)duration previewFrameRate:(unint64_t)rate previewCompletedBlock:(id)block;
@end

@implementation CFXEffectMessagesStickerUtilities

+ (void)cacheAnimatedStickerPreviewsForOverlayTypeId:(id)id atStickerSize:(int64_t)size previewDuration:(double)duration previewFrameRate:(unint64_t)rate previewCompletedBlock:(id)block
{
  v56[3] = *MEMORY[0x277D85DE8];
  idCopy = id;
  blockCopy = block;
  selfCopy = self;
  animatedPreviewsDirectory = [self animatedPreviewsDirectory];
  if (cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__onceToken != -1)
  {
    +[CFXEffectMessagesStickerUtilities cacheAnimatedStickerPreviewsForOverlayTypeId:atStickerSize:previewDuration:previewFrameRate:previewCompletedBlock:];
  }

  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v11 = *MEMORY[0x277D41890];
  v56[0] = *MEMORY[0x277D41888];
  v56[1] = v11;
  v56[2] = *MEMORY[0x277D41898];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
  v34 = [v10 initWithArray:v12];

  v13 = objc_alloc(MEMORY[0x277CBEB98]);
  v14 = *MEMORY[0x277D417B0];
  v55[0] = *MEMORY[0x277D417A8];
  v55[1] = v14;
  v55[2] = *MEMORY[0x277D417B8];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  v33 = [v13 initWithArray:v15];

  v16 = JFXLog_pickerUI();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[CFXEffectMessagesStickerUtilities cacheAnimatedStickerPreviewsForOverlayTypeId:atStickerSize:previewDuration:previewFrameRate:previewCompletedBlock:];
  }

  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v38 = [CFXEffectType effectTypeWithIdentifier:idCopy];
  v17 = [CFXEffect effectIdentifiersForEffectType:?];
  v18 = [v17 count];
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      v20 = [v17 objectAtIndexedSubscript:i];
      v21 = [CFXEffect effectWithIdentifier:v20 forEffectType:v38];
      jtEffect = [v21 jtEffect];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0 || ([v21 jtEffect], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEmoji"), v24, (v25 & 1) == 0))
      {
        v26 = [selfCopy animatedPreviewFileNameForOverlayID:v20];
        v27 = [animatedPreviewsDirectory stringByAppendingPathComponent:v26];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v29 = [defaultManager fileExistsAtPath:v27];

        if ((v29 & 1) == 0)
        {
          dispatch_group_enter(cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewProcessingGroup);
          v30 = cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewWritingQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_17;
          block[3] = &unk_278D7B720;
          durationCopy = duration;
          rateCopy = rate;
          v42 = idCopy;
          v43 = v34;
          v44 = v20;
          v45 = v33;
          v51 = selfCopy;
          sizeCopy = size;
          v46 = v27;
          v48 = v54;
          v47 = blockCopy;
          v53 = i;
          dispatch_async(v30, block);
        }
      }
    }
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_20;
  v40[3] = &unk_278D7B2B0;
  v40[4] = v54;
  dispatch_group_notify(cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewProcessingGroup, MEMORY[0x277D85CD0], v40);

  _Block_object_dispose(v54, 8);
}

uint64_t __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke()
{
  v0 = dispatch_semaphore_create(2);
  v1 = cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewWritingSemaphore;
  cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewWritingSemaphore = v0;

  v2 = dispatch_queue_create("EffectBrowser.animatedPreviewWritingQ", 0);
  v3 = cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewWritingQueue;
  cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewWritingQueue = v2;

  cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewProcessingGroup = dispatch_group_create();

  return MEMORY[0x2821F96F8]();
}

void __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_17(uint64_t a1)
{
  v2 = cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewWritingSemaphore;
  v3 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v2, v3);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  if (*(a1 + 32) == @"Shapes")
  {
    if ([*(a1 + 40) containsObject:*(a1 + 48)])
    {
      v4 = 0.8;
    }

    else if ([*(a1 + 48) isEqualToString:*MEMORY[0x277D418A0]])
    {
      v5 = 22.0;
    }

    else if ([*(a1 + 56) containsObject:*(a1 + 48)])
    {
      v5 = 10.0;
    }

    else if ([*(a1 + 48) isEqualToString:*MEMORY[0x277D417C8]])
    {
      v5 = 6.0;
    }

    else if ([*(a1 + 48) isEqualToString:*MEMORY[0x277D41798]])
    {
      v5 = 8.0;
    }
  }

  if (([*(a1 + 48) isEqualToString:*MEMORY[0x277D417B0]] & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D417A0]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D417B8]) & 1) != 0 || objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D417C0]))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if ([*(a1 + 48) isEqualToString:*MEMORY[0x277D417D8]] & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41820]) & 1) != 0 || (v7 = *MEMORY[0x277D417E8], (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D417E8])) || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41860]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41828]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D417E0]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41800]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41848]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41840]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41838]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D417F8]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41818]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41850]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D417F0]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41808]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41858]) & 1) != 0 || (objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41868]) & 1) != 0 || objc_msgSend(*(a1 + 48), "isEqualToString:", v7))
  {
    v5 = 8.0;
  }

  if (([*(a1 + 48) isEqualToString:*MEMORY[0x277D41830]] & 1) != 0 || objc_msgSend(*(a1 + 48), "isEqualToString:", *MEMORY[0x277D41810]))
  {
    v5 = 6.0;
  }

  [objc_opt_class() JFX_recommendedStickerPreviewSizeInPixelsForStickerSize:*(a1 + 112)];
  v9 = v8;
  v11 = v10;
  v12 = [[CFXOverlayPickerAnimatedPreviewWriter alloc] initWithOverlayEffectId:*(a1 + 48) previewSizeInPixels:v5 previewDuration:v6 previewFrameRate:v8 previewStartFrameIndex:v10, v4];
  if (v12)
  {
    v13 = *(a1 + 64);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_2;
    v16[3] = &unk_278D7B6F8;
    v15 = *(a1 + 72);
    v14 = v15;
    v18 = v15;
    v19 = *(a1 + 120);
    v17 = *(a1 + 64);
    v20 = v9;
    v21 = v11;
    [(CFXOverlayPickerAnimatedPreviewWriter *)v12 writeAnimatedPreviewToPath:v13 completion:v16];
  }

  else
  {
    dispatch_semaphore_signal(cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewWritingSemaphore);
    dispatch_group_leave(cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewProcessingGroup);
  }
}

void __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    if (*(a1 + 40))
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_3;
      v6[3] = &unk_278D7B6D0;
      v3 = *(a1 + 40);
      v4 = *(a1 + 56);
      v7 = v3;
      v8 = v4;
      dispatch_async(MEMORY[0x277D85CD0], v6);
    }

    v5 = JFXLog_pickerUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_2_cold_2(a1, v5);
    }
  }

  else
  {
    v5 = JFXLog_pickerUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_2_cold_1();
    }
  }

  dispatch_semaphore_signal(cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewWritingSemaphore);
  dispatch_group_leave(cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock__s_animatedPreviewProcessingGroup);
}

void __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_20(uint64_t a1)
{
  v2 = JFXLog_pickerUI();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_20_cold_1();
  }

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    [MEMORY[0x277D415F8] noteApplicationDidReceiveMemoryWarning];
  }
}

+ (CGSize)JFX_recommendedStickerPreviewSizeInPixelsForStickerSize:(int64_t)size
{
  v3 = dbl_242B5BB20[size == 1];
  if (size == 2)
  {
    v3 = 618.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (id)animatedPreviewsDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"animatedPreviews"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if ((v6 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v4;
}

+ (id)animatedPreviewFileNameForOverlayID:(id)d
{
  v3 = MEMORY[0x277CBEAF8];
  dCopy = d;
  preferredLanguages = [v3 preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", @"CFXAnimatedPreviewV10", dCopy, firstObject];

  v8 = [v7 stringByAppendingPathExtension:@"png"];

  return v8;
}

+ (id)overlayIDFromAnimatedPreviewFileName:(id)name
{
  lastPathComponent = [name lastPathComponent];
  if ([lastPathComponent isEqualToString:@"EmojiCustomAnimatedPreview.png"])
  {
    v4 = *MEMORY[0x277D417D0];
    stringByDeletingPathExtension = lastPathComponent;
  }

  else
  {
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    if ([stringByDeletingPathExtension hasPrefix:@"CFXAnimatedPreviewV10"])
    {
      v6 = [stringByDeletingPathExtension componentsSeparatedByString:@"_"];
      if ([v6 count] == 3)
      {
        v4 = [v6 objectAtIndexedSubscript:1];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (int64_t)numberOfStickersForEffectTypeId:(id)id
{
  idCopy = id;
  v4 = [CFXEffectType effectTypeWithIdentifier:idCopy];
  v5 = [CFXEffect effectIdentifiersForEffectType:v4];
  v6 = JFXLog_pickerUI();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[CFXEffectMessagesStickerUtilities numberOfStickersForEffectTypeId:];
  }

  v7 = [v5 count];
  return v7;
}

+ (id)stickerPropertiesForIndex:(int64_t)index forEffectTypeId:(id)id
{
  idCopy = id;
  v6 = [CFXEffectType effectTypeWithIdentifier:idCopy];
  effects = [v6 effects];
  v8 = JFXLog_pickerUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(CFXEffectMessagesStickerUtilities *)idCopy stickerPropertiesForIndex:index forEffectTypeId:v8];
  }

  v25 = idCopy;

  v9 = [effects objectAtIndex:index];
  identifier = [v9 identifier];
  jtEffect = [v9 jtEffect];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && ([v9 jtEffect], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEmoji"), v13, v14))
  {
    jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
    v16 = [jfxBundle pathForResource:@"EmojiCustomAnimatedPreview.png" ofType:0];
  }

  else
  {
    jfxBundle = +[CFXEffectMessagesStickerUtilities animatedPreviewsDirectory];
    v17 = [CFXEffectMessagesStickerUtilities animatedPreviewFileNameForOverlayID:identifier];
    v16 = [jfxBundle stringByAppendingPathComponent:v17];
  }

  v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
  v19 = [CFXEffectMessagesStickerProperties alloc];
  identifier2 = [v9 identifier];
  jtEffect2 = [v9 jtEffect];
  accessibilityName = [jtEffect2 accessibilityName];
  v23 = [(CFXEffectMessagesStickerProperties *)v19 initWithEffectID:identifier2 previewUrl:v18 localizedDescription:accessibilityName];

  return v23;
}

void __151__CFXEffectMessagesStickerUtilities_cacheAnimatedStickerPreviewsForOverlayTypeId_atStickerSize_previewDuration_previewFrameRate_previewCompletedBlock___block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = NSStringFromCGSize(*(a1 + 64));
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "wrote animated preview to %@ at size %@", &v5, 0x16u);
}

+ (void)stickerPropertiesForIndex:(os_log_t)log forEffectTypeId:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "funcamStickerBrowser requested sticker at %ld for effect type %@", &v3, 0x16u);
}

@end