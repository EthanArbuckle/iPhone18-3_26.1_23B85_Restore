@interface MOEventBundleProcessor
+ (BOOL)_validResource:(id)resource bundle:(id)bundle denyList:(id)list sourceAppBundleIds:(id)ids removedAppBundleIds:(id)bundleIds lftaStatusDict:(id)dict;
+ (BOOL)constructLearnedFromTheAppDictionary:(id)dictionary denyList:(id)list statusDict:(id)dict;
+ (id)_filterAndAnnotateResults:(id)results denyList:(id)list;
+ (id)_getBundleIdSet:(id)set;
+ (id)_learningFromAppDenyList;
+ (id)approvedForLearnFromThisApp:(id)app;
+ (id)onboardingDatesBySourceTypeWithStandardSuite:(BOOL)suite;
+ (id)readLearnedFromTheAppStatusTable;
+ (void)_stripMediaActions:(id)actions;
+ (void)persistLearnedFromTheAppStatusTable:(id)table;
+ (void)updateLearnedFromTheAppDictionary:(id)dictionary;
+ (void)updateLearnedFromTheAppDictionary:(id)dictionary denyList:(id)list statusDict:(id)dict;
@end

@implementation MOEventBundleProcessor

+ (id)approvedForLearnFromThisApp:(id)app
{
  appCopy = app;
  v4 = +[MOEventBundleProcessor _learningFromAppDenyList];
  if (v4)
  {
    v5 = [MOEventBundleProcessor _filterAndAnnotateResults:appCopy denyList:v4];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) approvedForLearnFromThisApp:];
    }

    v7 = [MEMORY[0x277CBEB98] set];
    v5 = [MOEventBundleProcessor _filterAndAnnotateResults:appCopy denyList:v7];
  }

  return v5;
}

+ (id)_learningFromAppDenyList
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.suggestions"];
  v3 = [v2 objectForKey:@"SiriCanLearnFromAppBlacklist"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];
  }

  else
  {
    v5 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) _learningFromAppDenyList];
    }

    v4 = 0;
  }

  return v4;
}

+ (BOOL)_validResource:(id)resource bundle:(id)bundle denyList:(id)list sourceAppBundleIds:(id)ids removedAppBundleIds:(id)bundleIds lftaStatusDict:(id)dict
{
  v58 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  bundleCopy = bundle;
  listCopy = list;
  idsCopy = ids;
  bundleIdsCopy = bundleIds;
  dictCopy = dict;
  sourceAppBundleIds = [resourceCopy sourceAppBundleIds];
  if (!sourceAppBundleIds)
  {
    v20 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = [bundleCopy bundleIdentifier];
      uUIDString = [bundleIdentifier UUIDString];
      *buf = 138412290;
      v53 = uUIDString;
      _os_log_impl(&dword_22D8C5000, v20, OS_LOG_TYPE_INFO, "approvedForLearnFromThisApp, dropping resource no source app tagging, bundleId=%@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  [idsCopy unionSet:sourceAppBundleIds];
  v20 = [sourceAppBundleIds mutableCopy];
  [v20 intersectSet:listCopy];
  if (!v20 || ![v20 count])
  {
    v51 = bundleIdsCopy;
    context = objc_autoreleasePoolPush();
    v25 = objc_alloc_init(MEMORY[0x277CCA968]);
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    [v25 setCalendar:?];
    [v25 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    getDictionary = [resourceCopy getDictionary];
    v27 = [getDictionary objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

    v28 = [dictCopy objectForKeyedSubscript:v27];

    if (!v28)
    {
      v39 = 1;
      goto LABEL_19;
    }

    v45 = idsCopy;
    v46 = listCopy;
    [dictCopy objectForKeyedSubscript:v27];
    v30 = v29 = bundleCopy;
    v31 = [v30 objectForKeyedSubscript:@"active_time"];

    getDictionary2 = [resourceCopy getDictionary];
    v33 = [getDictionary2 objectForKey:@"MOMediaPlayMetaDataKeyPlayerStartDate"];
    [v33 doubleValue];
    v35 = v34;

    bundleCopy = v29;
    if (v31 && v35 != 0.0)
    {
      v36 = [v25 dateFromString:v31];
      v37 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v35];
      v38 = v37;
      if (v36 && [v37 compare:v36] == -1)
      {
        log = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v53 = v38;
          v54 = 2112;
          v55 = v36;
          v56 = 2112;
          v57 = resourceCopy;
          _os_log_impl(&dword_22D8C5000, log, OS_LOG_TYPE_INFO, "media resource removed due to LFTA switch active time, resource start date, %@, switch active time, %@, resource, %@", buf, 0x20u);
        }

        v39 = 0;
        goto LABEL_14;
      }
    }

    v39 = 1;
LABEL_14:
    idsCopy = v45;
    listCopy = v46;
LABEL_19:

    objc_autoreleasePoolPop(context);
    bundleIdsCopy = v51;
    goto LABEL_20;
  }

  v21 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [v20 description];
    [bundleCopy bundleIdentifier];
    v23 = contexta = bundleCopy;
    [v23 UUIDString];
    v24 = v50 = bundleIdsCopy;
    *buf = 138412546;
    v53 = v22;
    v54 = 2112;
    v55 = v24;
    _os_log_impl(&dword_22D8C5000, v21, OS_LOG_TYPE_INFO, "approvedForLearnFromThisApp, dropping resource due to LFTA being off for %@, bundleId=%@", buf, 0x16u);

    bundleIdsCopy = v50;
    bundleCopy = contexta;
  }

  [bundleIdsCopy unionSet:v20];
LABEL_17:
  v39 = 0;
LABEL_20:

  v42 = *MEMORY[0x277D85DE8];
  return v39;
}

+ (void)_stripMediaActions:(id)actions
{
  v29 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  actions = [actionsCopy actions];
  v6 = [actions countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(actions);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v10 actionType] != 6)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [actions countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  [actionsCopy setActions:v4];
  v11 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  backgroundActions = [actionsCopy backgroundActions];
  v13 = [backgroundActions countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(backgroundActions);
        }

        v17 = *(*(&v19 + 1) + 8 * j);
        if ([v17 actionType] != 6)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [backgroundActions countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [actionsCopy setBackgroundActions:v4];
  [actionsCopy setConcurrentMediaAction:0];

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)_getBundleIdSet:(id)set
{
  v32 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v4 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = setCopy;
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v20 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        resources = [v6 resources];
        v8 = [resources countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(resources);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              v13 = objc_autoreleasePoolPush();
              if ([v12 type] == 3)
              {
                getDictionary = [v12 getDictionary];
                v15 = [getDictionary objectForKey:@"MOMediaPlayMetaDataKeyPlayerBundleID"];

                v16 = [v4 setByAddingObject:v15];

                v4 = v16;
              }

              objc_autoreleasePoolPop(v13);
            }

            v9 = [resources countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_filterAndAnnotateResults:(id)results denyList:(id)list
{
  v59 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  listCopy = list;
  v42 = objc_opt_new();
  v41 = objc_opt_new();
  v37 = objc_opt_new();
  v35 = +[MOEventBundleProcessor readLearnedFromTheAppStatusTable];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v35];
  v34 = [MOEventBundleProcessor _getBundleIdSet:resultsCopy];
  v8 = listCopy;
  [MOEventBundleProcessor updateLearnedFromTheAppDictionary:"updateLearnedFromTheAppDictionary:denyList:statusDict:" denyList:? statusDict:?];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = resultsCopy;
  v39 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v39)
  {
    v38 = *v48;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = objc_opt_new();
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        resources = [v10 resources];
        v13 = [resources countByEnumeratingWithState:&v43 objects:v57 count:16];
        if (!v13)
        {

          [v10 setResources:v11];
          goto LABEL_22;
        }

        v14 = v13;
        v40 = i;
        v15 = 0;
        v16 = *v44;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(resources);
            }

            v18 = *(*(&v43 + 1) + 8 * j);
            if ([v18 type] == 3)
            {
              v19 = ![MOEventBundleProcessor _validResource:v18 bundle:v10 denyList:v8 sourceAppBundleIds:v42 removedAppBundleIds:v41 lftaStatusDict:v7];
              v15 |= v19;
              if ((v19 & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            else if ([v18 type] != 17 || +[MOEventBundleProcessor _validResource:bundle:denyList:sourceAppBundleIds:removedAppBundleIds:lftaStatusDict:](MOEventBundleProcessor, "_validResource:bundle:denyList:sourceAppBundleIds:removedAppBundleIds:lftaStatusDict:", v18, v10, v8, v42, v41, v7))
            {
LABEL_16:
              [v11 addObject:v18];
              continue;
            }
          }

          v14 = [resources countByEnumeratingWithState:&v43 objects:v57 count:16];
        }

        while (v14);

        [v10 setResources:v11];
        i = v40;
        if (v15)
        {
          [MOEventBundleProcessor _stripMediaActions:v10];
        }

LABEL_22:
        resources2 = [v10 resources];
        v21 = [resources2 count];

        if (v21)
        {
          [v37 addObject:v10];
        }

        else
        {
          v22 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            bundleIdentifier = [v10 bundleIdentifier];
            uUIDString = [bundleIdentifier UUIDString];
            *buf = 138412290;
            v52 = uUIDString;
            _os_log_impl(&dword_22D8C5000, v22, OS_LOG_TYPE_DEFAULT, "approvedForLearnFromThisApp, dropping bundle due to no renderable resource. bundleId=%@", buf, 0xCu);
          }
        }
      }

      v39 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v39);
  }

  v25 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v37 count];
    v27 = [v42 description];
    v28 = [v41 description];
    *buf = 134218498;
    v52 = v26;
    v53 = 2112;
    v54 = v27;
    v55 = 2112;
    v56 = v28;
    _os_log_impl(&dword_22D8C5000, v25, OS_LOG_TYPE_INFO, "approvedForLearnFromThisApp, allowedBundles.count=%lu, sourceAppBundleIds=%@, removedAppBundleIds=%@", buf, 0x20u);
  }

  v29 = [MOEventBundleProcessorResult alloc];
  v30 = [v37 copy];
  v31 = [(MOEventBundleProcessorResult *)v29 init:v30 sourceAppBundleIds:v42 removedAppBundleIds:v41];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (void)updateLearnedFromTheAppDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = +[MOEventBundleProcessor _learningFromAppDenyList];
  v4 = +[MOEventBundleProcessor readLearnedFromTheAppStatusTable];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v4];
  [MOEventBundleProcessor updateLearnedFromTheAppDictionary:dictionaryCopy denyList:v6 statusDict:v5];
}

+ (void)updateLearnedFromTheAppDictionary:(id)dictionary denyList:(id)list statusDict:(id)dict
{
  v12 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  if ([MOEventBundleProcessor constructLearnedFromTheAppDictionary:dictionary denyList:list statusDict:dictCopy])
  {
    v8 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = dictCopy;
      _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_INFO, "LFTA status changed, need to update the status table, %@", &v10, 0xCu);
    }

    [MOEventBundleProcessor persistLearnedFromTheAppStatusTable:dictCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)constructLearnedFromTheAppDictionary:(id)dictionary denyList:(id)list statusDict:(id)dict
{
  v65 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  listCopy = list;
  dictCopy = dict;
  v54 = objc_opt_new();
  v9 = objc_alloc_init(MEMORY[0x277CCA968]);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  [v9 setCalendar:currentCalendar];
  v49 = v9;
  [v9 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  allKeys = dictionaryCopy;
  v12 = [allKeys countByEnumeratingWithState:&v59 objects:v64 count:16];
  v13 = v12 != 0;
  obj = allKeys;
  if (!v12)
  {
    goto LABEL_32;
  }

  v14 = v12;
  v47 = v12 != 0;
  v48 = currentCalendar;
  v15 = 0;
  v52 = *v60;
  do
  {
    v16 = 0;
    v51 = v14;
    do
    {
      if (*v60 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v59 + 1) + 8 * v16);
      v18 = objc_autoreleasePoolPush();
      v19 = [listCopy containsObject:v17];
      v20 = [dictCopy objectForKeyedSubscript:v17];

      if (!v19)
      {
        if (!v20)
        {
          v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v32 setObject:MOLearnedFromTheAppStatusOn forKey:@"status"];
          v33 = objc_opt_new();
          v34 = [v33 dateByAddingTimeInterval:-2419200.0];
          v35 = [v49 stringFromDate:v34];
          [v32 setObject:v35 forKey:@"active_time"];

          v15 = 1;
          goto LABEL_21;
        }

        v26 = [dictCopy objectForKeyedSubscript:v17];
        v27 = [v26 objectForKey:@"status"];
        if (v27)
        {
          v28 = v27;
          v29 = [dictCopy objectForKeyedSubscript:v17];
          v30 = [v29 objectForKey:@"status"];
          v31 = [v30 isEqualToString:MOLearnedFromTheAppStatusOn];

          if (v31)
          {
            v32 = [dictCopy objectForKeyedSubscript:v17];
LABEL_20:
            v14 = v51;
            goto LABEL_21;
          }
        }

        else
        {
        }

        v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v32 setObject:MOLearnedFromTheAppStatusOn forKey:@"status"];
        v36 = objc_opt_new();
        v37 = [v49 stringFromDate:v36];
        [v32 setObject:v37 forKey:@"active_time"];

        v15 = 1;
        goto LABEL_20;
      }

      if (v20)
      {
        v21 = [dictCopy objectForKeyedSubscript:v17];
        v22 = [v21 objectForKey:@"status"];
        if (v22)
        {
          v23 = [dictCopy objectForKeyedSubscript:v17];
          v24 = [v23 objectForKey:@"status"];
          v25 = [v24 isEqualToString:MOLearnedFromTheAppStatusOn];

          v14 = v51;
          v15 |= v25;
        }
      }

      else
      {
        v15 = 1;
      }

      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v32 setObject:MOLearnedFromTheAppStatusOff forKey:@"status"];
LABEL_21:
      [v54 setObject:v32 forKey:v17];

      objc_autoreleasePoolPop(v18);
      ++v16;
    }

    while (v14 != v16);
    v14 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  }

  while (v14);

  if (v15)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    allKeys = [v54 allKeys];
    v38 = [allKeys countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v56;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v56 != v40)
          {
            objc_enumerationMutation(allKeys);
          }

          v42 = *(*(&v55 + 1) + 8 * i);
          v43 = objc_autoreleasePoolPush();
          v44 = [v54 objectForKeyedSubscript:v42];
          [dictCopy setObject:v44 forKey:v42];

          objc_autoreleasePoolPop(v43);
        }

        v39 = [allKeys countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v39);
    }

    currentCalendar = v48;
    v13 = v47;
LABEL_32:
  }

  else
  {
    v13 = 0;
    currentCalendar = v48;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)readLearnedFromTheAppStatusTable
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = +[MOPersistenceUtilities userCacheDirectoryPath];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"learnedFromTheApp.plist"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v4 path];
    v7 = [defaultManager fileExistsAtPath:path];

    v8 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412290;
        v22 = @"learnedFromTheApp.plist";
        _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_INFO, "File %@ found.", buf, 0xCu);
      }

      v20 = 0;
      v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v4 error:&v20];
      v11 = v20;
      if (v11)
      {
        v12 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          +[(MOEventBundleProcessor(LearnFromThisApp) *)v11];
        }

        v19 = 0;
        [defaultManager removeItemAtURL:v4 error:&v19];
        if (v19)
        {
          v13 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            +[MOEventBundleProcessor(LearnFromThisApp) readLearnedFromTheAppStatusTable];
          }
        }

        v14 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      }

      else
      {
        v14 = v10;
      }

      v16 = v14;
    }

    else
    {
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_22D8C5000, v8, OS_LOG_TYPE_INFO, "No plist found at path.", buf, 2u);
      }

      v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }
  }

  else
  {
    v15 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) readLearnedFromTheAppStatusTable];
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (void)persistLearnedFromTheAppStatusTable:(id)table
{
  tableCopy = table;
  v4 = +[MOPersistenceUtilities userCacheDirectoryPath];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
    v6 = [v5 URLByAppendingPathComponent:@"learnedFromTheApp.plist"];

    if (v6)
    {
      v13 = 0;
      v7 = [tableCopy writeToURL:v6 error:&v13];
      v8 = v13;
      v9 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
      v10 = v9;
      if (v8 || (v7 & 1) == 0)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(MOEventBundleProcessor(LearnFromThisApp) *)v8 persistLearnedFromTheAppStatusTable:v10];
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_22D8C5000, v10, OS_LOG_TYPE_INFO, "LFTA status were successfully written to plist.", v12, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v11 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[MOEventBundleProcessor(LearnFromThisApp) persistLearnedFromTheAppStatusTable:];
    }
  }

  v6 = _mo_log_facility_get_os_log(MOLogFacilityBundleProcessing);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    +[MOEventBundleProcessor(LearnFromThisApp) persistLearnedFromTheAppStatusTable:];
  }

LABEL_15:
}

+ (id)onboardingDatesBySourceTypeWithStandardSuite:(BOOL)suite
{
  v21 = *MEMORY[0x277D85DE8];
  if (suite)
  {
    v3 = [[MODefaultsManager alloc] initWithSuiteName:@"com.apple.momentsd"];
  }

  else
  {
    v3 = objc_alloc_init(MODefaultsManager);
  }

  v4 = v3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = +[MOEventBundleSourceTypes all];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(MODefaultsManager *)v4 onboardingDateFor:v11];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  onboardingDateForJournalingSuggestions = [(MODefaultsManager *)v4 onboardingDateForJournalingSuggestions];
  [v5 setObject:onboardingDateForJournalingSuggestions forKeyedSubscript:@"OnboardingDate"];

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)trimmedFrom:(uint64_t)a1 with:(uint64_t)a2 respectOnboardingDate:shouldUseStandardSuite:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  v5 = [v4 UUIDString];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_1_6(&dword_22D8C5000, v6, v7, "trimmedFrom, no resources, dropping bundle, bundleID=%@");
}

+ (void)trimmedFrom:(uint64_t)a1 with:(uint64_t)a2 respectOnboardingDate:shouldUseStandardSuite:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  v5 = [v4 UUIDString];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_1_6(&dword_22D8C5000, v6, v7, "trimmedFrom, nil resources, dropping bundle, bundleID=%@");
}

@end