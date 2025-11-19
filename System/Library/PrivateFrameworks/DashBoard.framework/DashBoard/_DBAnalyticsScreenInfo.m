@interface _DBAnalyticsScreenInfo
- (NSDictionary)analytics_sessionEndedDictionaryRepresentation;
- (NSDictionary)analytics_sessionStartedDictionaryRepresentation;
- (_DBAnalyticsScreenInfo)initWithScreenInfo:(id)a3 analyticsPrefix:(id)a4 sessionStartViewArea:(id)a5;
- (id)_identifierForViewArea:(id)a3;
- (void)startCountingTimeForViewArea:(id)a3;
@end

@implementation _DBAnalyticsScreenInfo

- (_DBAnalyticsScreenInfo)initWithScreenInfo:(id)a3 analyticsPrefix:(id)a4 sessionStartViewArea:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _DBAnalyticsScreenInfo;
  v12 = [(_DBAnalyticsTimeAccumulator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_viewAreaChangeCount = 0;
    v12->_viewAreaChangeUsingTransitionControlCount = 0;
    objc_storeStrong(&v12->_screenInfo, a3);
    objc_storeStrong(&v13->_analyticsPrefix, a4);
    v13->_indexOfLargestViewArea = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v13->_sessionStartViewArea, a5);
  }

  return v13;
}

- (NSDictionary)analytics_sessionStartedDictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
  v4 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v5 = [v4 viewAreas];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __74___DBAnalyticsScreenInfo_analytics_sessionStartedDictionaryRepresentation__block_invoke;
  v95[3] = &unk_278F040E8;
  v95[4] = self;
  v95[5] = &v108;
  v95[6] = &v104;
  v95[7] = &v100;
  v95[8] = &v96;
  [v5 enumerateObjectsUsingBlock:v95];

  self->_indexOfLargestViewArea = v97[3];
  self->_hasTransitionControlsWithinViewAreas = *(v105 + 24);
  v6 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v7 = [v6 viewAreas];
  v8 = [v7 count];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v10 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v11 = [v10 stringByAppendingString:@"MultipleViewAreas"];
  [v3 setObject:v9 forKeyedSubscript:v11];

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
  v15 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v16 = [v15 stringByAppendingString:@"HasSafeAreaWithinAnyViewAreas"];
  [v3 setObject:v14 forKeyedSubscript:v16];

  v17 = MEMORY[0x277CBEC38];
  if (!*(v105 + 24))
  {
    v17 = v12;
  }

  v18 = v17;
  v19 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v20 = [v19 stringByAppendingString:@"HasTransitionControlWithinAnyViewAreas"];
  [v3 setObject:v18 forKeyedSubscript:v20];

  v21 = MEMORY[0x277CBEC38];
  if (!*(v101 + 24))
  {
    v21 = v12;
  }

  v22 = v21;
  v23 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v24 = [v23 stringByAppendingString:@"HasAViewAreaSameSizeAsDisplay"];
  [v3 setObject:v22 forKeyedSubscript:v24];

  v25 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v26 = [v25 descriptionForPrimaryInteractionModel];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = @"(no value)";
  }

  v29 = v28;
  v30 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v31 = [v30 stringByAppendingString:@"PrimaryInteraction"];
  [v3 setObject:v29 forKeyedSubscript:v31];

  v32 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v33 = [v32 descriptionForAvailableInteractionModels];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = @"(no value)";
  }

  v36 = v35;
  v37 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v38 = [v37 stringByAppendingString:@"AvailableInteractions"];
  [v3 setObject:v36 forKeyedSubscript:v38];

  v39 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [v39 physicalSize];
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
  v42 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v43 = [v42 stringByAppendingString:@"PhysicalHeight"];
  [v3 setObject:v41 forKeyedSubscript:v43];

  v44 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [v44 physicalSize];
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
  v47 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v48 = [v47 stringByAppendingString:@"PhysicalWidth"];
  [v3 setObject:v46 forKeyedSubscript:v48];

  v49 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [v49 pixelSize];
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:v50];
  v52 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v53 = [v52 stringByAppendingString:@"PixelHeight"];
  [v3 setObject:v51 forKeyedSubscript:v53];

  v54 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [v54 pixelSize];
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:v55];
  v57 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v58 = [v57 stringByAppendingString:@"PixelWidth"];
  [v3 setObject:v56 forKeyedSubscript:v58];

  v59 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v60 = [v59 maxFramesPerSecond];
  v61 = [MEMORY[0x277CCABB0] numberWithInteger:v60];
  v62 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v63 = [v62 stringByAppendingString:@"MaxFramesPerSecond"];
  [v3 setObject:v61 forKeyedSubscript:v63];

  v64 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v65 = [v64 viewAreas];
  v66 = [v65 firstObject];

  [v66 visibleFrame];
  Width = CGRectGetWidth(v113);
  *&Width = Width;
  v68 = [MEMORY[0x277CCABB0] numberWithFloat:Width];
  v69 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v70 = [v69 stringByAppendingString:@"PixelViewAreaWidth"];
  [v3 setObject:v68 forKeyedSubscript:v70];

  [v66 visibleFrame];
  Height = CGRectGetHeight(v114);
  *&Height = Height;
  v72 = [MEMORY[0x277CCABB0] numberWithFloat:Height];
  v73 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v74 = [v73 stringByAppendingString:@"PixelViewAreaHeight"];
  [v3 setObject:v72 forKeyedSubscript:v74];

  [v66 safeFrame];
  v75 = CGRectGetWidth(v115);
  [v66 visibleFrame];
  if (v75 < CGRectGetWidth(v116) || ([v66 safeFrame], v76 = CGRectGetHeight(v117), objc_msgSend(v66, "visibleFrame"), v76 < CGRectGetHeight(v118)))
  {
    [v66 safeFrame];
    v77 = CGRectGetWidth(v119);
    *&v77 = v77;
    v78 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
    v79 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
    v80 = [v79 stringByAppendingString:@"PixelSafeAreaWidth"];
    [v3 setObject:v78 forKeyedSubscript:v80];

    [v66 safeFrame];
    v81 = CGRectGetHeight(v120);
    *&v81 = v81;
    v82 = [MEMORY[0x277CCABB0] numberWithFloat:v81];
    v83 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
    v84 = [v83 stringByAppendingString:@"PixelSafeAreaHeight"];
    [v3 setObject:v82 forKeyedSubscript:v84];
  }

  v85 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v86 = [v85 viewAreas];
  if ([v86 count] < 2)
  {
    goto LABEL_23;
  }

  v87 = [(_DBAnalyticsScreenInfo *)self sessionStartViewArea];

  if (v87)
  {
    v88 = [(_DBAnalyticsScreenInfo *)self screenInfo];
    v89 = [v88 viewAreas];
    v90 = [(_DBAnalyticsScreenInfo *)self sessionStartViewArea];
    v91 = [v89 indexOfObject:v90];

    if (v91 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v92 = MEMORY[0x277CBEC38];
      if (v97[3] != v91)
      {
        v92 = v12;
      }

      v85 = v92;
      v86 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
      v93 = [v86 stringByAppendingString:@"ForMultipleViewAreasInitialViewAreaWasLargest"];
      [v3 setObject:v85 forKeyedSubscript:v93];

LABEL_23:
    }
  }

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);

  return v3;
}

- (NSDictionary)analytics_sessionEndedDictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
  v4 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v5 = [v4 viewAreas];
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __72___DBAnalyticsScreenInfo_analytics_sessionEndedDictionaryRepresentation__block_invoke;
  v93[3] = &unk_278F04110;
  v93[4] = self;
  v93[5] = &v106;
  v93[6] = &v102;
  v93[7] = &v98;
  v93[8] = &v94;
  [v5 enumerateObjectsUsingBlock:v93];

  v6 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v7 = [v6 viewAreas];
  v8 = [v7 count];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v10 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v11 = [v10 stringByAppendingString:@"MultipleViewAreas"];
  [v3 setObject:v9 forKeyedSubscript:v11];

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
  v15 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v16 = [v15 stringByAppendingString:@"HasSafeAreaWithinAnyViewAreas"];
  [v3 setObject:v14 forKeyedSubscript:v16];

  v17 = MEMORY[0x277CBEC38];
  if (!*(v103 + 24))
  {
    v17 = v12;
  }

  v18 = v17;
  v19 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v20 = [v19 stringByAppendingString:@"HasTransitionControlWithinAnyViewAreas"];
  [v3 setObject:v18 forKeyedSubscript:v20];

  v21 = MEMORY[0x277CBEC38];
  if (!*(v99 + 24))
  {
    v21 = v12;
  }

  v22 = v21;
  v23 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v24 = [v23 stringByAppendingString:@"HasAViewAreaSameSizeAsDisplay"];
  [v3 setObject:v22 forKeyedSubscript:v24];

  v25 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v26 = [v25 descriptionForPrimaryInteractionModel];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = @"(no value)";
  }

  v29 = v28;
  v30 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v31 = [v30 stringByAppendingString:@"PrimaryInteraction"];
  [v3 setObject:v29 forKeyedSubscript:v31];

  v32 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v33 = [v32 descriptionForAvailableInteractionModels];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = @"(no value)";
  }

  v36 = v35;
  v37 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v38 = [v37 stringByAppendingString:@"AvailableInteractions"];
  [v3 setObject:v36 forKeyedSubscript:v38];

  v39 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [v39 physicalSize];
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:v40];
  v42 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v43 = [v42 stringByAppendingString:@"PhysicalHeight"];
  [v3 setObject:v41 forKeyedSubscript:v43];

  v44 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [v44 physicalSize];
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:v45];
  v47 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v48 = [v47 stringByAppendingString:@"PhysicalWidth"];
  [v3 setObject:v46 forKeyedSubscript:v48];

  v49 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [v49 pixelSize];
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:v50];
  v52 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v53 = [v52 stringByAppendingString:@"PixelHeight"];
  [v3 setObject:v51 forKeyedSubscript:v53];

  v54 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  [v54 pixelSize];
  v56 = [MEMORY[0x277CCABB0] numberWithInteger:v55];
  v57 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v58 = [v57 stringByAppendingString:@"PixelWidth"];
  [v3 setObject:v56 forKeyedSubscript:v58];

  v59 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v60 = [v59 maxFramesPerSecond];
  v61 = [MEMORY[0x277CCABB0] numberWithInteger:v60];
  v62 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v63 = [v62 stringByAppendingString:@"MaxFramesPerSecond"];
  [v3 setObject:v61 forKeyedSubscript:v63];

  v64 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v65 = [v64 viewAreas];
  v66 = [v65 firstObject];

  [v66 visibleFrame];
  Width = CGRectGetWidth(v111);
  *&Width = Width;
  v68 = [MEMORY[0x277CCABB0] numberWithFloat:Width];
  v69 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v70 = [v69 stringByAppendingString:@"PixelViewAreaWidth"];
  [v3 setObject:v68 forKeyedSubscript:v70];

  [v66 visibleFrame];
  Height = CGRectGetHeight(v112);
  *&Height = Height;
  v72 = [MEMORY[0x277CCABB0] numberWithFloat:Height];
  v73 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v74 = [v73 stringByAppendingString:@"PixelViewAreaHeight"];
  [v3 setObject:v72 forKeyedSubscript:v74];

  v75 = [(_DBAnalyticsScreenInfo *)self screenInfo];
  v76 = [v75 viewAreas];
  v77 = [v76 count];

  v78 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v79 = [v78 stringByAppendingString:@"UserChangedViewAreaCount"];

  v80 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
  v81 = [v80 stringByAppendingString:@"UserChangedViewAreaUsingTransitionControlCount"];

  if (v77 <= 1)
  {
    v84 = [MEMORY[0x277CCABB0] numberWithInteger:-2];
    [v3 setObject:v84 forKeyedSubscript:v79];

    v85 = [MEMORY[0x277CCABB0] numberWithInteger:-2];
    [v3 setObject:v85 forKeyedSubscript:v81];
  }

  else
  {
    if ([(_DBAnalyticsScreenInfo *)self hasTransitionControlsWithinViewAreas])
    {
      v82 = [(_DBAnalyticsScreenInfo *)self viewAreaChangeUsingTransitionControlCount];
      [MEMORY[0x277CCABB0] numberWithInteger:v82];
    }

    else
    {
      [MEMORY[0x277CCABB0] numberWithInteger:-1];
    }
    v83 = ;
    [v3 setObject:v83 forKeyedSubscript:v81];

    v86 = [(_DBAnalyticsScreenInfo *)self viewAreaChangeCount];
    v85 = [MEMORY[0x277CCABB0] numberWithInteger:v86];
    [v3 setObject:v85 forKeyedSubscript:v79];
  }

  if (v95[3] != 0x7FFFFFFFFFFFFFFFLL && [(_DBAnalyticsScreenInfo *)self indexOfLargestViewArea]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v87 = [(_DBAnalyticsScreenInfo *)self indexOfLargestViewArea];
    v88 = MEMORY[0x277CBEC38];
    if (v87 != v95[3])
    {
      v88 = v12;
    }

    v89 = v88;
    v90 = [(_DBAnalyticsScreenInfo *)self analyticsPrefix];
    v91 = [v90 stringByAppendingString:@"ForMultipleViewAreasViewAreaActiveLongestWasLargest"];
    [v3 setObject:v89 forKeyedSubscript:v91];
  }

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v106, 8);

  return v3;
}

- (id)_identifierForViewArea:(id)a3
{
  [a3 safeFrame];

  return NSStringFromCGRect(*&v3);
}

- (void)startCountingTimeForViewArea:(id)a3
{
  v4 = [(_DBAnalyticsScreenInfo *)self _identifierForViewArea:a3];
  [(_DBAnalyticsTimeAccumulator *)self startCountingTimeForKey:v4];
}

@end