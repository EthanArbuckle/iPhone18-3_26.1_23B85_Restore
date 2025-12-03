@interface _DBAnalyticsScreenInfo
- (NSDictionary)analytics_sessionEndedDictionaryRepresentation;
- (NSDictionary)analytics_sessionStartedDictionaryRepresentation;
- (_DBAnalyticsScreenInfo)initWithScreenInfo:(id)info analyticsPrefix:(id)prefix sessionStartViewArea:(id)area;
- (id)_identifierForViewArea:(id)area;
- (void)startCountingTimeForViewArea:(id)area;
@end

@implementation _DBAnalyticsScreenInfo

- (_DBAnalyticsScreenInfo)initWithScreenInfo:(id)info analyticsPrefix:(id)prefix sessionStartViewArea:(id)area
{
  infoCopy = info;
  prefixCopy = prefix;
  areaCopy = area;
  v15.receiver = self;
  v15.super_class = _DBAnalyticsScreenInfo;
  v12 = [(_DBAnalyticsTimeAccumulator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_viewAreaChangeCount = 0;
    v12->_viewAreaChangeUsingTransitionControlCount = 0;
    objc_storeStrong(&v12->_screenInfo, info);
    objc_storeStrong(&v13->_analyticsPrefix, prefix);
    v13->_indexOfLargestViewArea = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v13->_sessionStartViewArea, area);
  }

  return v13;
}

- (NSDictionary)analytics_sessionStartedDictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v111 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0x7FFFFFFFFFFFFFFFLL;
  screenInfo = [(_DBAnalyticsScreenInfo *)self screenInfo];
  viewAreas = [screenInfo viewAreas];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __74___DBAnalyticsScreenInfo_analytics_sessionStartedDictionaryRepresentation__block_invoke;
  v95[3] = &unk_278F040E8;
  v95[4] = self;
  v95[5] = &v108;
  v95[6] = &v104;
  v95[7] = &v100;
  v95[8] = &v96;
  [viewAreas enumerateObjectsUsingBlock:v95];

  self->_indexOfLargestViewArea = v97[3];
  self->_hasTransitionControlsWithinViewAreas = *(v105 + 24);
  screenInfo2 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  viewAreas2 = [screenInfo2 viewAreas];
  v8 = [viewAreas2 count];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  analyticsPrefix = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v11 = [analyticsPrefix stringByAppendingString:@"MultipleViewAreas"];
  [dictionary setObject:v9 forKeyedSubscript:v11];

  v12 = MEMORY[0x277CBEC28];
  if (*(v109 + 24))
  {
    v13 = MEMORY[0x277CBEC38];
  }

  else
  {
    v13 = MEMORY[0x277CBEC28];
  }

  v14 = v13;
  analyticsPrefix2 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v16 = [analyticsPrefix2 stringByAppendingString:@"HasSafeAreaWithinAnyViewAreas"];
  [dictionary setObject:v14 forKeyedSubscript:v16];

  v17 = MEMORY[0x277CBEC38];
  if (!*(v105 + 24))
  {
    v17 = v12;
  }

  v18 = v17;
  analyticsPrefix3 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v20 = [analyticsPrefix3 stringByAppendingString:@"HasTransitionControlWithinAnyViewAreas"];
  [dictionary setObject:v18 forKeyedSubscript:v20];

  v21 = MEMORY[0x277CBEC38];
  if (!*(v101 + 24))
  {
    v21 = v12;
  }

  v22 = v21;
  analyticsPrefix4 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v24 = [analyticsPrefix4 stringByAppendingString:@"HasAViewAreaSameSizeAsDisplay"];
  [dictionary setObject:v22 forKeyedSubscript:v24];

  screenInfo3 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  descriptionForPrimaryInteractionModel = [screenInfo3 descriptionForPrimaryInteractionModel];
  v27 = descriptionForPrimaryInteractionModel;
  if (descriptionForPrimaryInteractionModel)
  {
    v28 = descriptionForPrimaryInteractionModel;
  }

  else
  {
    v28 = @"(no value)";
  }

  v29 = v28;
  analyticsPrefix5 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v31 = [analyticsPrefix5 stringByAppendingString:@"PrimaryInteraction"];
  [dictionary setObject:v29 forKeyedSubscript:v31];

  screenInfo4 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  descriptionForAvailableInteractionModels = [screenInfo4 descriptionForAvailableInteractionModels];
  v34 = descriptionForAvailableInteractionModels;
  if (descriptionForAvailableInteractionModels)
  {
    v35 = descriptionForAvailableInteractionModels;
  }

  else
  {
    v35 = @"(no value)";
  }

  v36 = v35;
  analyticsPrefix6 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v38 = [analyticsPrefix6 stringByAppendingString:@"AvailableInteractions"];
  [dictionary setObject:v36 forKeyedSubscript:v38];

  screenInfo5 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [screenInfo5 physicalSize];
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
  analyticsPrefix7 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v43 = [analyticsPrefix7 stringByAppendingString:@"PhysicalHeight"];
  [dictionary setObject:v41 forKeyedSubscript:v43];

  screenInfo6 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [screenInfo6 physicalSize];
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
  analyticsPrefix8 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v48 = [analyticsPrefix8 stringByAppendingString:@"PhysicalWidth"];
  [dictionary setObject:v46 forKeyedSubscript:v48];

  screenInfo7 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [screenInfo7 pixelSize];
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:v50];
  analyticsPrefix9 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v53 = [analyticsPrefix9 stringByAppendingString:@"PixelHeight"];
  [dictionary setObject:v51 forKeyedSubscript:v53];

  screenInfo8 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [screenInfo8 pixelSize];
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:v55];
  analyticsPrefix10 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v58 = [analyticsPrefix10 stringByAppendingString:@"PixelWidth"];
  [dictionary setObject:v56 forKeyedSubscript:v58];

  screenInfo9 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  maxFramesPerSecond = [screenInfo9 maxFramesPerSecond];
  v61 = [MEMORY[0x277CCABB0] numberWithInteger:maxFramesPerSecond];
  analyticsPrefix11 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v63 = [analyticsPrefix11 stringByAppendingString:@"MaxFramesPerSecond"];
  [dictionary setObject:v61 forKeyedSubscript:v63];

  screenInfo10 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  viewAreas3 = [screenInfo10 viewAreas];
  firstObject = [viewAreas3 firstObject];

  [firstObject visibleFrame];
  Width = CGRectGetWidth(v113);
  *&Width = Width;
  v68 = [MEMORY[0x277CCABB0] numberWithFloat:Width];
  analyticsPrefix12 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v70 = [analyticsPrefix12 stringByAppendingString:@"PixelViewAreaWidth"];
  [dictionary setObject:v68 forKeyedSubscript:v70];

  [firstObject visibleFrame];
  Height = CGRectGetHeight(v114);
  *&Height = Height;
  v72 = [MEMORY[0x277CCABB0] numberWithFloat:Height];
  analyticsPrefix13 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v74 = [analyticsPrefix13 stringByAppendingString:@"PixelViewAreaHeight"];
  [dictionary setObject:v72 forKeyedSubscript:v74];

  [firstObject safeFrame];
  v75 = CGRectGetWidth(v115);
  [firstObject visibleFrame];
  if (v75 < CGRectGetWidth(v116) || ([firstObject safeFrame], v76 = CGRectGetHeight(v117), objc_msgSend(firstObject, "visibleFrame"), v76 < CGRectGetHeight(v118)))
  {
    [firstObject safeFrame];
    v77 = CGRectGetWidth(v119);
    *&v77 = v77;
    v78 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
    analyticsPrefix14 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
    v80 = [analyticsPrefix14 stringByAppendingString:@"PixelSafeAreaWidth"];
    [dictionary setObject:v78 forKeyedSubscript:v80];

    [firstObject safeFrame];
    v81 = CGRectGetHeight(v120);
    *&v81 = v81;
    v82 = [MEMORY[0x277CCABB0] numberWithFloat:v81];
    analyticsPrefix15 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
    v84 = [analyticsPrefix15 stringByAppendingString:@"PixelSafeAreaHeight"];
    [dictionary setObject:v82 forKeyedSubscript:v84];
  }

  screenInfo11 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  viewAreas4 = [screenInfo11 viewAreas];
  if ([viewAreas4 count] < 2)
  {
    goto LABEL_23;
  }

  sessionStartViewArea = [(_DBAnalyticsScreenInfo *)self sessionStartViewArea];

  if (sessionStartViewArea)
  {
    screenInfo12 = [(_DBAnalyticsScreenInfo *)self screenInfo];
    viewAreas5 = [screenInfo12 viewAreas];
    sessionStartViewArea2 = [(_DBAnalyticsScreenInfo *)self sessionStartViewArea];
    v91 = [viewAreas5 indexOfObject:sessionStartViewArea2];

    if (v91 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v92 = MEMORY[0x277CBEC38];
      if (v97[3] != v91)
      {
        v92 = v12;
      }

      screenInfo11 = v92;
      viewAreas4 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
      v93 = [viewAreas4 stringByAppendingString:@"ForMultipleViewAreasInitialViewAreaWasLargest"];
      [dictionary setObject:screenInfo11 forKeyedSubscript:v93];

LABEL_23:
    }
  }

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);

  return dictionary;
}

- (NSDictionary)analytics_sessionEndedDictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0x7FFFFFFFFFFFFFFFLL;
  screenInfo = [(_DBAnalyticsScreenInfo *)self screenInfo];
  viewAreas = [screenInfo viewAreas];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __72___DBAnalyticsScreenInfo_analytics_sessionEndedDictionaryRepresentation__block_invoke;
  v93[3] = &unk_278F04110;
  v93[4] = self;
  v93[5] = &v106;
  v93[6] = &v102;
  v93[7] = &v98;
  v93[8] = &v94;
  [viewAreas enumerateObjectsUsingBlock:v93];

  screenInfo2 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  viewAreas2 = [screenInfo2 viewAreas];
  v8 = [viewAreas2 count];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  analyticsPrefix = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v11 = [analyticsPrefix stringByAppendingString:@"MultipleViewAreas"];
  [dictionary setObject:v9 forKeyedSubscript:v11];

  v12 = MEMORY[0x277CBEC28];
  if (*(v107 + 24))
  {
    v13 = MEMORY[0x277CBEC38];
  }

  else
  {
    v13 = MEMORY[0x277CBEC28];
  }

  v14 = v13;
  analyticsPrefix2 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v16 = [analyticsPrefix2 stringByAppendingString:@"HasSafeAreaWithinAnyViewAreas"];
  [dictionary setObject:v14 forKeyedSubscript:v16];

  v17 = MEMORY[0x277CBEC38];
  if (!*(v103 + 24))
  {
    v17 = v12;
  }

  v18 = v17;
  analyticsPrefix3 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v20 = [analyticsPrefix3 stringByAppendingString:@"HasTransitionControlWithinAnyViewAreas"];
  [dictionary setObject:v18 forKeyedSubscript:v20];

  v21 = MEMORY[0x277CBEC38];
  if (!*(v99 + 24))
  {
    v21 = v12;
  }

  v22 = v21;
  analyticsPrefix4 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v24 = [analyticsPrefix4 stringByAppendingString:@"HasAViewAreaSameSizeAsDisplay"];
  [dictionary setObject:v22 forKeyedSubscript:v24];

  screenInfo3 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  descriptionForPrimaryInteractionModel = [screenInfo3 descriptionForPrimaryInteractionModel];
  v27 = descriptionForPrimaryInteractionModel;
  if (descriptionForPrimaryInteractionModel)
  {
    v28 = descriptionForPrimaryInteractionModel;
  }

  else
  {
    v28 = @"(no value)";
  }

  v29 = v28;
  analyticsPrefix5 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v31 = [analyticsPrefix5 stringByAppendingString:@"PrimaryInteraction"];
  [dictionary setObject:v29 forKeyedSubscript:v31];

  screenInfo4 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  descriptionForAvailableInteractionModels = [screenInfo4 descriptionForAvailableInteractionModels];
  v34 = descriptionForAvailableInteractionModels;
  if (descriptionForAvailableInteractionModels)
  {
    v35 = descriptionForAvailableInteractionModels;
  }

  else
  {
    v35 = @"(no value)";
  }

  v36 = v35;
  analyticsPrefix6 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v38 = [analyticsPrefix6 stringByAppendingString:@"AvailableInteractions"];
  [dictionary setObject:v36 forKeyedSubscript:v38];

  screenInfo5 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [screenInfo5 physicalSize];
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
  analyticsPrefix7 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v43 = [analyticsPrefix7 stringByAppendingString:@"PhysicalHeight"];
  [dictionary setObject:v41 forKeyedSubscript:v43];

  screenInfo6 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [screenInfo6 physicalSize];
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
  analyticsPrefix8 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v48 = [analyticsPrefix8 stringByAppendingString:@"PhysicalWidth"];
  [dictionary setObject:v46 forKeyedSubscript:v48];

  screenInfo7 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [screenInfo7 pixelSize];
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:v50];
  analyticsPrefix9 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v53 = [analyticsPrefix9 stringByAppendingString:@"PixelHeight"];
  [dictionary setObject:v51 forKeyedSubscript:v53];

  screenInfo8 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [screenInfo8 pixelSize];
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:v55];
  analyticsPrefix10 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v58 = [analyticsPrefix10 stringByAppendingString:@"PixelWidth"];
  [dictionary setObject:v56 forKeyedSubscript:v58];

  screenInfo9 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  maxFramesPerSecond = [screenInfo9 maxFramesPerSecond];
  v61 = [MEMORY[0x277CCABB0] numberWithInteger:maxFramesPerSecond];
  analyticsPrefix11 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v63 = [analyticsPrefix11 stringByAppendingString:@"MaxFramesPerSecond"];
  [dictionary setObject:v61 forKeyedSubscript:v63];

  screenInfo10 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  viewAreas3 = [screenInfo10 viewAreas];
  firstObject = [viewAreas3 firstObject];

  [firstObject visibleFrame];
  Width = CGRectGetWidth(v111);
  *&Width = Width;
  v68 = [MEMORY[0x277CCABB0] numberWithFloat:Width];
  analyticsPrefix12 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v70 = [analyticsPrefix12 stringByAppendingString:@"PixelViewAreaWidth"];
  [dictionary setObject:v68 forKeyedSubscript:v70];

  [firstObject visibleFrame];
  Height = CGRectGetHeight(v112);
  *&Height = Height;
  v72 = [MEMORY[0x277CCABB0] numberWithFloat:Height];
  analyticsPrefix13 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v74 = [analyticsPrefix13 stringByAppendingString:@"PixelViewAreaHeight"];
  [dictionary setObject:v72 forKeyedSubscript:v74];

  screenInfo11 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  viewAreas4 = [screenInfo11 viewAreas];
  v77 = [viewAreas4 count];

  analyticsPrefix14 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v79 = [analyticsPrefix14 stringByAppendingString:@"UserChangedViewAreaCount"];

  analyticsPrefix15 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v81 = [analyticsPrefix15 stringByAppendingString:@"UserChangedViewAreaUsingTransitionControlCount"];

  if (v77 <= 1)
  {
    v84 = [MEMORY[0x277CCABB0] numberWithInteger:-2];
    [dictionary setObject:v84 forKeyedSubscript:v79];

    v85 = [MEMORY[0x277CCABB0] numberWithInteger:-2];
    [dictionary setObject:v85 forKeyedSubscript:v81];
  }

  else
  {
    if ([(_DBAnalyticsScreenInfo *)self hasTransitionControlsWithinViewAreas])
    {
      viewAreaChangeUsingTransitionControlCount = [(_DBAnalyticsScreenInfo *)self viewAreaChangeUsingTransitionControlCount];
      [MEMORY[0x277CCABB0] numberWithInteger:viewAreaChangeUsingTransitionControlCount];
    }

    else
    {
      [MEMORY[0x277CCABB0] numberWithInteger:-1];
    }
    v83 = ;
    [dictionary setObject:v83 forKeyedSubscript:v81];

    viewAreaChangeCount = [(_DBAnalyticsScreenInfo *)self viewAreaChangeCount];
    v85 = [MEMORY[0x277CCABB0] numberWithInteger:viewAreaChangeCount];
    [dictionary setObject:v85 forKeyedSubscript:v79];
  }

  if (v95[3] != 0x7FFFFFFFFFFFFFFFLL && [(_DBAnalyticsScreenInfo *)self indexOfLargestViewArea]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    indexOfLargestViewArea = [(_DBAnalyticsScreenInfo *)self indexOfLargestViewArea];
    v88 = MEMORY[0x277CBEC38];
    if (indexOfLargestViewArea != v95[3])
    {
      v88 = v12;
    }

    v89 = v88;
    analyticsPrefix16 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
    v91 = [analyticsPrefix16 stringByAppendingString:@"ForMultipleViewAreasViewAreaActiveLongestWasLargest"];
    [dictionary setObject:v89 forKeyedSubscript:v91];
  }

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v106, 8);

  return dictionary;
}

- (id)_identifierForViewArea:(id)area
{
  [area safeFrame];

  return NSStringFromCGRect(*&v3);
}

- (void)startCountingTimeForViewArea:(id)area
{
  v4 = [(_DBAnalyticsScreenInfo *)self _identifierForViewArea:area];
  [(_DBAnalyticsTimeAccumulator *)self startCountingTimeForKey:v4];
}

@end