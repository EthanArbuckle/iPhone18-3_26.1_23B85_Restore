@interface CFXAnalyticsManager
+ (id)sharedInstance;
- (BOOL)checkIfEventExistsWithName:(id)a3;
- (BOOL)isDistribution:(id)a3;
- (BOOL)isIncrementScalar:(id)a3;
- (CFXAnalyticsManager)init;
- (id)CFX_allowedPickerIdentifier:(id)a3;
- (id)CFX_composedAnalyticsKeyWithAnimoji:(BOOL)a3 video:(BOOL)a4 frontCamera:(BOOL)a5 effectType:(id)a6;
- (id)analyticsDurationData;
- (id)dictionaryWithEventName:(id)a3 value:(double)a4;
- (unint64_t)roundWithNumber:(unint64_t)a3;
- (void)addAnalyticsDurationData:(id)a3;
- (void)didSelectEffectOfType:(id)a3 effectIsNone:(BOOL)a4;
- (void)persistAnalyticsDataWithEventName:(id)a3 value:(double)a4;
- (void)pickerDidChangePresentationMode;
- (void)pickerDidScroll;
- (void)removeAnalyticsDurationDataItems:(id)a3;
- (void)startTrackingPickerWithIdentifier:(id)a3;
- (void)startTrackingTimeIntervalEventWithName:(id)a3;
- (void)stopTrackingPickerWithIdentifier:(id)a3;
- (void)stopTrackingTimeIntervalEventWithName:(id)a3;
- (void)trackAnimojiWithEffectId:(id)a3;
- (void)trackEffect:(id)a3;
- (void)trackEmojiStickerWithEffectId:(id)a3;
- (void)trackEventWithName:(id)a3;
- (void)trackEventWithName:(id)a3 count:(unint64_t)a4;
- (void)trackEventWithName:(id)a3 duration:(double)a4;
- (void)trackEventWithName:(id)a3 supportsHDR:(BOOL)a4 isHDR:(BOOL)a5;
- (void)trackFilterWithEffectId:(id)a3;
- (void)trackKey:(id)a3 supportsHDR:(BOOL)a4 isHDR:(BOOL)a5;
- (void)trackKey:(id)a3 withDuration:(double)a4;
- (void)trackKey:(id)a3 withEffectId:(id)a4;
- (void)trackLabelWithEffectId:(id)a3;
- (void)trackMediaSentWithAnimoji:(BOOL)a3 video:(BOOL)a4 frontCamera:(BOOL)a5 filterCount:(unint64_t)a6 labelCount:(unint64_t)a7 messagesStickerCount:(unint64_t)a8 shapeCount:(unint64_t)a9 emojiStickerCount:(unint64_t)a10 supportsHDR:(BOOL)a11 isHDR:(BOOL)a12;
- (void)trackMessagesStickerWithEffectId:(id)a3;
- (void)trackShapeWithEffectId:(id)a3;
@end

@implementation CFXAnalyticsManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[CFXAnalyticsManager sharedInstance];
  }

  v3 = sharedInstance_analyticsManager;

  return v3;
}

uint64_t __37__CFXAnalyticsManager_sharedInstance__block_invoke()
{
  sharedInstance_analyticsManager = objc_alloc_init(CFXAnalyticsManager);

  return MEMORY[0x2821F96F8]();
}

- (CFXAnalyticsManager)init
{
  v8.receiver = self;
  v8.super_class = CFXAnalyticsManager;
  v2 = [(JFXAnalyticsManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    analyticsDurationData_queryDataQueue = v2->_analyticsDurationData_queryDataQueue;
    v2->_analyticsDurationData_queryDataQueue = v3;

    v5 = dispatch_queue_create("com.apple.clips.CFXAnalyticsManager.queryDataQueue", MEMORY[0x277D85CD8]);
    queryDataQueue = v2->_queryDataQueue;
    v2->_queryDataQueue = v5;
  }

  return v2;
}

- (BOOL)checkIfEventExistsWithName:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = +[CFXAnalyticsKeys allEventNames];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 isEqualToString:*(*(&v9 + 1) + 8 * i)])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)addAnalyticsDurationData:(id)a3
{
  v4 = a3;
  queryDataQueue = self->_queryDataQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CFXAnalyticsManager_addAnalyticsDurationData___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(queryDataQueue, v7);
}

void __48__CFXAnalyticsManager_addAnalyticsDurationData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) analyticsDurationData_queryDataQueue];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeAnalyticsDurationDataItems:(id)a3
{
  v4 = a3;
  queryDataQueue = self->_queryDataQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__CFXAnalyticsManager_removeAnalyticsDurationDataItems___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_async(queryDataQueue, v7);
}

void __56__CFXAnalyticsManager_removeAnalyticsDurationDataItems___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) analyticsDurationData_queryDataQueue];
  [v2 removeObjectsInArray:*(a1 + 40)];
}

- (id)analyticsDurationData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  queryDataQueue = self->_queryDataQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CFXAnalyticsManager_analyticsDurationData__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queryDataQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__CFXAnalyticsManager_analyticsDurationData__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) analyticsDurationData_queryDataQueue];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)dictionaryWithEventName:(id)a3 value:(double)a4
{
  v12[3] = *MEMORY[0x277D85DE8];
  v12[0] = a3;
  v11[0] = @"AnalyticsEventNameKey";
  v11[1] = @"AnalyticsEventCountOrDurationValueKey";
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithDouble:a4];
  v12[1] = v7;
  v11[2] = @"AnalyticsEventTimeStampKey";
  v8 = [MEMORY[0x277CBEAA8] date];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (void)trackEventWithName:(id)a3
{
  v5 = a3;
  if ([(CFXAnalyticsManager *)self checkIfEventExistsWithName:?])
  {
    v4 = [(JFXAnalyticsManager *)self fullKeyFromEvent:v5];
    [(JFXAnalyticsManager *)self trackKey:v4 withCount:1];
  }
}

- (void)trackEventWithName:(id)a3 count:(unint64_t)a4
{
  v7 = a3;
  v6 = [(CFXAnalyticsManager *)self checkIfEventExistsWithName:?];
  if (a4 && v6)
  {
    [(CFXAnalyticsManager *)self persistAnalyticsDataWithEventName:v7 value:[(CFXAnalyticsManager *)self roundWithNumber:a4]];
  }
}

- (void)trackEventWithName:(id)a3 duration:(double)a4
{
  v7 = a3;
  if ([(CFXAnalyticsManager *)self checkIfEventExistsWithName:?])
  {
    v6 = [(JFXAnalyticsManager *)self fullKeyFromEvent:v7];
    [(CFXAnalyticsManager *)self trackKey:v6 withDuration:a4];
  }
}

- (void)trackEventWithName:(id)a3 supportsHDR:(BOOL)a4 isHDR:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if ([(CFXAnalyticsManager *)self checkIfEventExistsWithName:?])
  {
    v8 = [(JFXAnalyticsManager *)self fullKeyFromEvent:v9];
    [(CFXAnalyticsManager *)self trackKey:v8 supportsHDR:v6 isHDR:v5];
  }
}

- (unint64_t)roundWithNumber:(unint64_t)a3
{
  result = a3;
  if (a3 >= 6)
  {
    return 5 * (a3 / 5);
  }

  return result;
}

- (void)trackKey:(id)a3 withEffectId:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"effectID";
  v11[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(JFXAnalyticsManager *)self trackKey:v8 withPayload:v9];
}

- (void)trackKey:(id)a3 withDuration:(double)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"duration";
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(JFXAnalyticsManager *)self trackKey:v7 withPayload:v9];
}

- (void)trackKey:(id)a3 supportsHDR:(BOOL)a4 isHDR:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"itemCount";
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithInteger:1];
  v15[0] = v10;
  v14[1] = @"deviceSupportsHDR";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v15[1] = v11;
  v14[2] = @"exportedMediaIsHDR";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v15[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  [(JFXAnalyticsManager *)self trackKey:v9 withPayload:v13];
}

- (void)trackShapeWithEffectId:(id)a3
{
  v4 = a3;
  v5 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"shapeusedwithid"];
  [(CFXAnalyticsManager *)self trackKey:v5 withEffectId:v4];
}

- (void)trackEmojiStickerWithEffectId:(id)a3
{
  v4 = a3;
  v5 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"emojistickerusedwithid"];
  [(CFXAnalyticsManager *)self trackKey:v5 withEffectId:v4];
}

- (void)trackFilterWithEffectId:(id)a3
{
  v4 = a3;
  v5 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"filterusedwithid"];
  [(CFXAnalyticsManager *)self trackKey:v5 withEffectId:v4];
}

- (void)trackLabelWithEffectId:(id)a3
{
  v4 = a3;
  v5 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"labelusedwithid"];
  [(CFXAnalyticsManager *)self trackKey:v5 withEffectId:v4];
}

- (void)trackMessagesStickerWithEffectId:(id)a3
{
  v4 = a3;
  v5 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"messagesstickerusedwithid"];
  [(CFXAnalyticsManager *)self trackKey:v5 withEffectId:v4];
}

- (void)trackAnimojiWithEffectId:(id)a3
{
  v4 = a3;
  v5 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"animojiusedwithid"];
  [(CFXAnalyticsManager *)self trackKey:v5 withEffectId:v4];
}

- (void)trackEffect:(id)a3
{
  v18 = a3;
  v3 = [v18 jtEffect];
  v4 = [v3 type];

  if (v4 == 7)
  {
    v5 = +[CFXAnalyticsManager sharedInstance];
    v6 = [v18 jtEffect];
    v7 = [v6 effectID];
    [v5 trackAnimojiWithEffectId:v7];
LABEL_8:

    goto LABEL_9;
  }

  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_11;
    }

    v5 = +[CFXAnalyticsManager sharedInstance];
    v6 = [v18 jtEffect];
    v7 = [v6 effectID];
    [v5 trackFilterWithEffectId:v7];
    goto LABEL_8;
  }

  v8 = [v18 jtEffect];
  v5 = [v8 effectID];

  v9 = [CFXEffectType effectTypeWithIdentifier:@"Shapes"];
  v10 = [CFXEffect effectIdentifiersForEffectType:v9];
  LODWORD(v8) = [v10 containsObject:v5];

  v11 = [CFXEffectType effectTypeWithIdentifier:@"Text"];
  v12 = [CFXEffect effectIdentifiersForEffectType:v11];
  v13 = [v12 containsObject:v5];

  v14 = [v5 isEqualToString:*MEMORY[0x277D418E8]];
  v15 = [CFXEffectType effectTypeWithIdentifier:@"EmojiStickers"];
  v16 = [CFXEffect effectIdentifiersForEffectType:v15];
  v17 = [v16 containsObject:v5];

  if (v8)
  {
    v6 = +[CFXAnalyticsManager sharedInstance];
    [v6 trackShapeWithEffectId:v5];
  }

  else if (v13)
  {
    v6 = +[CFXAnalyticsManager sharedInstance];
    [v6 trackLabelWithEffectId:v5];
  }

  else if (v14)
  {
    v6 = +[CFXAnalyticsManager sharedInstance];
    [v6 trackMessagesStickerWithEffectId:v5];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_10;
    }

    v6 = +[CFXAnalyticsManager sharedInstance];
    [v6 trackEmojiStickerWithEffectId:v5];
  }

LABEL_9:

LABEL_10:
LABEL_11:
}

- (id)CFX_composedAnalyticsKeyWithAnimoji:(BOOL)a3 video:(BOOL)a4 frontCamera:(BOOL)a5 effectType:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = a6;
  v10 = @"funcam";
  v11 = v10;
  if (v8)
  {
    v12 = [(__CFString *)v10 stringByAppendingString:@"animoji"];

    v11 = v12;
  }

  v13 = kAnalyticsEventAssembleKeyVideo;
  if (!v7)
  {
    v13 = kAnalyticsEventAssembleKeyPhoto;
  }

  v14 = [v11 stringByAppendingString:*v13];

  v15 = [v14 stringByAppendingString:@"sent"];

  if (!v8)
  {
    v16 = kAnalyticsEventAssembleKeyFrontCamera;
    if (!v6)
    {
      v16 = kAnalyticsEventAssembleKeyBackCamera;
    }

    v17 = [v15 stringByAppendingString:*v16];

    v15 = v17;
  }

  v18 = [v15 stringByAppendingString:@"with"];

  v19 = [v18 stringByAppendingString:v9];

  return v19;
}

- (void)trackMediaSentWithAnimoji:(BOOL)a3 video:(BOOL)a4 frontCamera:(BOOL)a5 filterCount:(unint64_t)a6 labelCount:(unint64_t)a7 messagesStickerCount:(unint64_t)a8 shapeCount:(unint64_t)a9 emojiStickerCount:(unint64_t)a10 supportsHDR:(BOOL)a11 isHDR:(BOOL)a12
{
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v17 = a11;
  v19 = a9;
  v18 = a10;
  if (a6)
  {
    v21 = [(CFXAnalyticsManager *)self CFX_composedAnalyticsKeyWithAnimoji:a3 video:a4 frontCamera:a5 effectType:@"filter"];
    [(JFXAnalyticsManager *)self fullKeyFromEvent:v21];
    v23 = v22 = a7;
    [(JFXAnalyticsManager *)self trackKey:v23 withCount:a6];

    a7 = v22;
    v17 = a11;
    v18 = a10;
    v19 = a9;
  }

  if (a7)
  {
    v24 = [(CFXAnalyticsManager *)self CFX_composedAnalyticsKeyWithAnimoji:v15 video:v14 frontCamera:v13 effectType:@"label"];
    v25 = [(JFXAnalyticsManager *)self fullKeyFromEvent:v24];
    [(JFXAnalyticsManager *)self trackKey:v25 withCount:a7];
  }

  if (a8)
  {
    v26 = [(CFXAnalyticsManager *)self CFX_composedAnalyticsKeyWithAnimoji:v15 video:v14 frontCamera:v13 effectType:@"messagessticker"];
    v27 = [(JFXAnalyticsManager *)self fullKeyFromEvent:v26];
    [(JFXAnalyticsManager *)self trackKey:v27 withCount:a8];
  }

  if (v19)
  {
    v28 = [(CFXAnalyticsManager *)self CFX_composedAnalyticsKeyWithAnimoji:v15 video:v14 frontCamera:v13 effectType:@"shape"];
    v29 = [(JFXAnalyticsManager *)self fullKeyFromEvent:v28];
    [(JFXAnalyticsManager *)self trackKey:v29 withCount:v19];
  }

  if (v18)
  {
    v30 = [(CFXAnalyticsManager *)self CFX_composedAnalyticsKeyWithAnimoji:v15 video:v14 frontCamera:v13 effectType:@"emojiSticker"];
    v31 = [(JFXAnalyticsManager *)self fullKeyFromEvent:v30];
    [(JFXAnalyticsManager *)self trackKey:v31 withCount:v18];
  }

  if (v14)
  {

    [(CFXAnalyticsManager *)self trackEventWithName:@"sentpostcapturewithfuncamvideo" supportsHDR:v17 isHDR:a12];
  }

  else
  {

    [(CFXAnalyticsManager *)self trackEventWithName:@"sentpostcapturewithfuncamphoto"];
  }
}

- (void)startTrackingTimeIntervalEventWithName:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CFXAnalyticsManager *)self checkIfEventExistsWithName:v4])
  {
    v15 = mach_absolute_time();
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = self;
    v6 = [(CFXAnalyticsManager *)self analyticsDurationData];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:{@"AnalyticsEventNameKey", v15}];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    [(CFXAnalyticsManager *)v17 removeAnalyticsDurationDataItems:v5, v15];
    v14 = [(CFXAnalyticsManager *)v17 dictionaryWithEventName:v4 value:v16];
    [(CFXAnalyticsManager *)v17 addAnalyticsDurationData:v14];
  }
}

- (void)stopTrackingTimeIntervalEventWithName:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CFXAnalyticsManager *)self checkIfEventExistsWithName:v4])
  {
    v19 = mach_absolute_time();
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = self;
    v6 = [(CFXAnalyticsManager *)self analyticsDurationData];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"AnalyticsEventNameKey"];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      if ([v5 count] < 2)
      {
        v14 = [v5 objectAtIndexedSubscript:0];
        v15 = [v14 objectForKeyedSubscript:@"AnalyticsEventCountOrDurationValueKey"];
        v16 = [v15 unsignedLongLongValue];

        info = 0;
        mach_timebase_info(&info);
        v17 = ((v19 - v16) * info.numer / info.denom) / 1000000000.0;
        v18 = [(JFXAnalyticsManager *)v20 fullKeyFromEvent:v4];
        [(CFXAnalyticsManager *)v20 trackKey:v18 withDuration:v17];
      }

      [(CFXAnalyticsManager *)v20 removeAnalyticsDurationDataItems:v5];
    }
  }
}

- (void)startTrackingPickerWithIdentifier:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFXPickerSession alloc];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = -[CFXPickerSession initWithIdentifier:isCompact:](v5, "initWithIdentifier:isCompact:", v4, [v6 userInterfaceIdiom] == 0);
  [(CFXAnalyticsManager *)self setCurrentPickerSession:v7];

  v8 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"pickerselected"];
  v11 = @"identifier";
  v9 = [(CFXAnalyticsManager *)self CFX_allowedPickerIdentifier:v4];

  v12[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [(JFXAnalyticsManager *)self trackKey:v8 withPayload:v10];
}

- (void)pickerDidChangePresentationMode
{
  v2 = [(CFXAnalyticsManager *)self currentPickerSession];
  [v2 didChangePresentationMode];
}

- (void)pickerDidScroll
{
  v2 = [(CFXAnalyticsManager *)self currentPickerSession];
  [v2 setDidScroll:1];
}

- (void)didSelectEffectOfType:(id)a3 effectIsNone:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CFXAnalyticsManager *)self currentPickerSession];
  [v7 didModifyEffectOfType:v6 wasRemoval:v4];
}

- (void)stopTrackingPickerWithIdentifier:(id)a3
{
  v47[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CFXAnalyticsManager *)self currentPickerSession];
  v6 = [v5 pickerBundleIdentifier];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [(CFXAnalyticsManager *)self currentPickerSession];
    [v8 didDismiss];

    v9 = [(CFXAnalyticsManager *)self currentPickerSession];
    [v9 sessionDuration];
    v11 = v10;

    v12 = [(CFXAnalyticsManager *)self currentPickerSession];
    v13 = [v12 isCompactPresentation];

    v14 = [(CFXAnalyticsManager *)self currentPickerSession];
    [v14 compactPresentationDuration];
    v16 = v15;

    v17 = [(CFXAnalyticsManager *)self currentPickerSession];
    [v17 expandedPresentationDuration];
    v19 = v18;

    v20 = [(CFXAnalyticsManager *)self currentPickerSession];
    v41 = [v20 didScroll];

    v21 = [(CFXAnalyticsManager *)self currentPickerSession];
    v22 = [v21 effectChangesDict];

    v23 = [v22 objectForKey:@"DidChangeEffectsKey"];
    v24 = [v23 BOOLValue];

    v25 = [v22 objectForKey:@"DidRemoveEffectsKey"];
    v26 = [v25 BOOLValue];

    v46[0] = @"identifier";
    v27 = [(CFXAnalyticsManager *)self CFX_allowedPickerIdentifier:v4];
    v47[0] = v27;
    v46[1] = @"sessionDuration";
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v47[1] = v28;
    v46[2] = @"didModifyEffectsStack";
    v29 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    v47[2] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];

    v31 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"pickerdismissed"];
    [(JFXAnalyticsManager *)self trackKey:v31 withPayload:v30];

    if ([v4 isEqualToString:@"com.apple.FunCamera.Filters"])
    {
      v44[0] = @"wasCompactWhenDismissed";
      v32 = [MEMORY[0x277CCABB0] numberWithBool:v13];
      v45[0] = v32;
      v44[1] = @"compactDuration";
      v33 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
      v45[1] = v33;
      v44[2] = @"expandedDuration";
      v34 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
      v45[2] = v34;
      v44[3] = @"didScroll";
      v35 = [MEMORY[0x277CCABB0] numberWithBool:v41];
      v45[3] = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];

      v37 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"internalpickerdismissed"];
      [(JFXAnalyticsManager *)self trackKey:v37 withPayload:v36];
    }

    if (v26)
    {
      v38 = [v22 objectForKey:@"RemovedEffectTypeKey"];
      v39 = [(JFXAnalyticsManager *)self fullKeyFromEvent:@"usedpickertoremoveeffect"];
      v42 = @"effectTypeIdentifier";
      v43 = v38;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [(JFXAnalyticsManager *)self trackKey:v39 withPayload:v40];
    }

    [(CFXAnalyticsManager *)self setCurrentPickerSession:0];
  }

  else
  {
    [(CFXAnalyticsManager *)self setCurrentPickerSession:0];
  }
}

- (void)persistAnalyticsDataWithEventName:(id)a3 value:(double)a4
{
  v6 = [(JFXAnalyticsManager *)self fullKeyFromEvent:a3];
  [(JFXAnalyticsManager *)self trackKey:v6 withCount:a4];
}

- (BOOL)isIncrementScalar:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = +[CFXAnalyticsKeys allIncrementScalarEffectEvents];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 hasPrefix:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v4 = +[CFXAnalyticsKeys allIncrementScalarEvents];
  v9 = [v4 containsObject:v3];
LABEL_11:

  return v9;
}

- (BOOL)isDistribution:(id)a3
{
  v3 = a3;
  v4 = +[CFXAnalyticsKeys allDistributionEvents];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)CFX_allowedPickerIdentifier:(id)a3
{
  v3 = a3;
  if (([(__CFString *)v3 hasPrefix:@"com.apple."]& 1) == 0)
  {

    v3 = @"unknown";
  }

  return v3;
}

@end