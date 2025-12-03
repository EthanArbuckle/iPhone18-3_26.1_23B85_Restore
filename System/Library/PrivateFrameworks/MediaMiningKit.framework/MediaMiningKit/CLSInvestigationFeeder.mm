@interface CLSInvestigationFeeder
- (CLSInvestigationFeeder)init;
- (NSDate)localEndDate;
- (NSDate)localStartDate;
- (NSDate)universalEndDate;
- (NSDate)universalStartDate;
- (id)_prepareFeederWithServiceManager:(id)manager locationCache:(id)cache progressBlock:(id)block;
- (id)allItems;
- (id)approximateLocation;
- (id)itemAtIndex:(unint64_t)index;
- (id)localEndDateComponents;
- (id)localStartDateComponents;
- (id)locationClustersWithProgressBlock:(id)block;
- (id)privateItems;
- (id)sharedItems;
- (unint64_t)numberOfItems;
- (unint64_t)numberOfItemsInInvestigation:(id)investigation;
- (void)_enumerateLocationClustersWithGaussians:(id)gaussians enumerationBlock:(id)block;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)enumerateItemsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)enumeratePersonNames:(id)names withGaussiansUsingBlock:(id)block;
@end

@implementation CLSInvestigationFeeder

- (unint64_t)numberOfItemsInInvestigation:(id)investigation
{
  if (![(CLSInvestigationFeeder *)self allowsInterview])
  {
    return 0;
  }

  return [(CLSInvestigationFeeder *)self numberOfItems];
}

- (id)locationClustersWithProgressBlock:(id)block
{
  v59 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = _Block_copy(blockCopy);
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v38 = v4;
  if (v4 && (v51 = 0, (*(v4 + 2))(v4, &v51, 0.0), v5 = *(v53 + 24) | v51, *(v53 + 24) = v5, (v5 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v58 = 489;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
    }

    v6 = 0;
  }

  else
  {
    allItems = [(CLSInvestigationFeeder *)self allItems];
    selfCopy = self;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(allItems, "count")}];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = allItems;
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v11)
    {
      v12 = *v48;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v47 + 1) + 8 * i);
          v15 = MEMORY[0x277D3ACD0];
          [v14 pl_coordinate];
          if ([v15 canUseCoordinate:?])
          {
            [v14 pl_gpsHorizontalAccuracy];
            v17 = v16;
            v18 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            [v9 addObject:v18];

            if ([MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:v17])
            {
              [v8 addObject:v14];
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v11);
    }

    [v9 sortUsingSelector:sel_compare_];
    v19 = [v9 count];
    if (v19)
    {
      v20 = [v9 objectAtIndexedSubscript:v19 >> 1];
      [v20 doubleValue];
      v22 = v21;
    }

    else
    {
      v22 = *MEMORY[0x277D3B210];
    }

    v23 = v10;
    v24 = v23;
    if (([MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:v22] & 1) == 0)
    {
      v24 = v23;
      if ([v8 count])
      {
        v25 = MEMORY[0x277CCAC30];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __60__CLSInvestigationFeeder_locationClustersWithProgressBlock___block_invoke;
        v45[3] = &unk_2788A7948;
        v46 = v8;
        v26 = [v25 predicateWithBlock:v45];
        v24 = [v23 filteredArrayUsingPredicate:v26];
      }
    }

    v27 = MEMORY[0x277D3AD58];
    locationClusteringAlgorithm = [(CLSInvestigationFeeder *)selfCopy locationClusteringAlgorithm];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __60__CLSInvestigationFeeder_locationClustersWithProgressBlock___block_invoke_2;
    v42[3] = &unk_2788A8AA8;
    v29 = v38;
    v43 = v29;
    v44 = &v52;
    v30 = [v27 performClustering:locationClusteringAlgorithm dataset:v24 progressBlock:v42];
    if (v30)
    {
      v31 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v30, "count")}];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __60__CLSInvestigationFeeder_locationClustersWithProgressBlock___block_invoke_3;
      v39[3] = &unk_2788A7970;
      v41 = v22;
      v32 = v31;
      v40 = v32;
      [v30 enumerateKeysAndObjectsUsingBlock:v39];
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v38 && (v51 = 0, (*(v29 + 2))(v29, &v51, 1.0), v34 = *(v53 + 24) | v51, *(v53 + 24) = v34, (v34 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v58 = 537;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v6 = 0;
    }

    else
    {
      v6 = v33;
    }
  }

  _Block_object_dispose(&v52, 8);

  return v6;
}

uint64_t __60__CLSInvestigationFeeder_locationClustersWithProgressBlock___block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

void __60__CLSInvestigationFeeder_locationClustersWithProgressBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  [v7 setClsHorizontalAccuracy:v5];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

- (id)_prepareFeederWithServiceManager:(id)manager locationCache:(id)cache progressBlock:(id)block
{
  v102 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  cacheCopy = cache;
  blockCopy = block;
  v10 = _Block_copy(blockCopy);
  v11 = v10;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  if (!v10 || (LOBYTE(v96) = 0, (*(v10 + 2))(v10, &v96, 0.0), v12 = *(v91 + 24) | v96, *(v91 + 24) = v12, (v12 & 1) == 0))
  {
    v52 = [[CLSClueCollection alloc] initWithServiceManager:managerCopy];
    v49 = objc_opt_new();
    v48 = objc_opt_new();
    v44 = objc_opt_new();
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    allItems = [(CLSInvestigationFeeder *)self allItems];
    focusPersonLocalIdentifiers = [(CLSInvestigationFeeder *)self focusPersonLocalIdentifiers];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke;
    aBlock[3] = &unk_2788A7830;
    v43 = focusPersonLocalIdentifiers;
    v87 = v43;
    v46 = v14;
    v88 = v46;
    v45 = v15;
    v89 = v45;
    v51 = _Block_copy(aBlock);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_2;
    v83[3] = &unk_2788A8AA8;
    v17 = v11;
    v84 = v17;
    v85 = &v90;
    v18 = [(CLSInvestigationFeeder *)self locationClustersWithProgressBlock:v83];
    v50 = v18;
    if (*(v91 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 0x11804000100;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
      }

      v13 = 0;
      goto LABEL_49;
    }

    buf = 0;
    p_buf = &buf;
    v100 = 0x2020000000;
    v101 = 1;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_223;
    v82[3] = &unk_2788A7880;
    v82[4] = self;
    v82[5] = &buf;
    [v18 enumerateKeysAndObjectsUsingBlock:v82];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_3;
    v73[3] = &unk_2788A78F8;
    v80 = &buf;
    v73[4] = self;
    v19 = v51;
    v78 = v19;
    v42 = v17;
    v79 = v42;
    v81 = &v90;
    v74 = cacheCopy;
    v41 = managerCopy;
    v75 = v41;
    v20 = v48;
    v76 = v20;
    v21 = v49;
    v77 = v21;
    [(CLSInvestigationFeeder *)self _enumerateLocationClustersWithGaussians:v50 enumerationBlock:v73];
    if (*(v91 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v96 = 67109120;
        v97 = 380;
        v22 = MEMORY[0x277D86220];
LABEL_27:
        _os_log_impl(&dword_22F907000, v22, OS_LOG_TYPE_INFO, "Cancelled at line %d", &v96, 8u);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    [(CLSClueCollection *)v52 mergeClues:v21];
    if ([v20 count] && (*(p_buf + 24) != 1 || (-[CLSInvestigationFeeder focusItems](self, "focusItems"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count") == 0, v23, v24)))
    {
      [(CLSClueCollection *)v52 mergeClues:v20];
    }

    else
    {
      localStartDateComponents = [(CLSInvestigationFeeder *)self localStartDateComponents];
      localEndDateComponents = [(CLSInvestigationFeeder *)self localEndDateComponents];
      v27 = localEndDateComponents;
      if (localStartDateComponents && localEndDateComponents)
      {
        v95[0] = localStartDateComponents;
        v95[1] = localEndDateComponents;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
        v29 = [CLSInputTimeClue clueWithDates:v28 serviceManager:v41];

        v94 = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
        [(CLSClueCollection *)v52 mergeClues:v30];
      }
    }

    if ((p_buf[3] & 1) != 0 || ![v46 count])
    {
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_233;
      v69[3] = &unk_2788A78D0;
      v70 = v19;
      v71 = v42;
      v72 = &v90;
      [allItems enumerateObjectsUsingBlock:v69];
    }

    if (*(v91 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v96 = 67109120;
        v97 = 409;
        v22 = MEMORY[0x277D86220];
        goto LABEL_27;
      }

LABEL_28:
      v13 = 0;
LABEL_48:

      _Block_object_dispose(&buf, 8);
LABEL_49:

      goto LABEL_50;
    }

    if ([allItems count])
    {
      anyObject = [allItems anyObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        photoLibrary = [anyObject photoLibrary];
      }

      else
      {
        photoLibrary = 0;
      }
    }

    else
    {
      photoLibrary = 0;
    }

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_235;
    v62[3] = &unk_2788A7920;
    v40 = photoLibrary;
    v63 = v40;
    v33 = v41;
    v64 = v33;
    v34 = v46;
    v65 = v34;
    v35 = v44;
    v66 = v35;
    v36 = v42;
    v67 = v36;
    v68 = &v90;
    [(CLSInvestigationFeeder *)self enumeratePersonNames:v34 withGaussiansUsingBlock:v62];
    if (([v45 isEqualToSet:v34] & 1) == 0)
    {
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_2_238;
      v55[3] = &unk_2788A7920;
      v56 = v40;
      v57 = v33;
      v58 = v45;
      v59 = v35;
      v60 = v36;
      v61 = &v90;
      [(CLSInvestigationFeeder *)self enumeratePersonNames:v58 withGaussiansUsingBlock:v55];
    }

    if (*(v91 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v96 = 67109120;
        v97 = 473;
        v37 = MEMORY[0x277D86220];
LABEL_44:
        _os_log_impl(&dword_22F907000, v37, OS_LOG_TYPE_INFO, "Cancelled at line %d", &v96, 8u);
      }
    }

    else
    {
      [(CLSClueCollection *)v52 mergeClues:v35];
      if (!v11 || (v54 = 0, (*(v36 + 2))(v36, &v54, 1.0), v38 = *(v91 + 24) | v54, *(v91 + 24) = v38, (v38 & 1) == 0))
      {
        v13 = v52;
        goto LABEL_47;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v96 = 67109120;
        v97 = 477;
        v37 = MEMORY[0x277D86220];
        goto LABEL_44;
      }
    }

    v13 = 0;
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0xE504000100;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
  }

  v13 = 0;
LABEL_50:
  _Block_object_dispose(&v90, 8);

  return v13;
}

void __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (([v3 clsIsScreenshotOrScreenRecording] & 1) == 0)
  {
    v5 = [v3 clsPersonLocalIdentifiers];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        v9 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * v9);
          v11 = *(a1 + 32);
          if (!v11 || [v11 containsObject:*(*(&v23 + 1) + 8 * v9)])
          {
            [*(a1 + 40) addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    v12 = [v3 clsConsolidatedPersonLocalIdentifiers];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v19 + 1) + 8 * v16);
          v18 = *(a1 + 32);
          if (!v18 || [v18 containsObject:*(*(&v19 + 1) + 8 * v16)])
          {
            [*(a1 + 48) addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, a3 * 0.1);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

void __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_223(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = [*(a1 + 32) focusItems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_2_224;
  v10[3] = &unk_2788A7858;
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v8;
  v13 = a4;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v10];
}

void __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4, double a5, double a6, double a7)
{
  v55[2] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = *(*(*(a1 + 88) + 8) + 24);
  v15 = [*(a1 + 32) focusItems];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_4;
  v42[3] = &unk_2788A78A8;
  v16 = v14;
  v43 = v16;
  v44 = &v45;
  [v15 enumerateObjectsUsingBlock:v42];

  if (*(v46 + 24) == 1)
  {
    v17 = [v16 count];
    v18 = [v16 sortedArrayUsingComparator:&__block_literal_global_1612];
    if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      v35 = MEMORY[0x277D85DD0];
      v36 = 3221225472;
      v37 = __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_6;
      v38 = &unk_2788A78D0;
      v39 = *(a1 + 72);
      v19 = *(a1 + 80);
      v20 = *(a1 + 96);
      v40 = v19;
      v41 = v20;
      [v18 enumerateObjectsUsingBlock:&v35];
    }

    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      *a4 = 1;
LABEL_21:

      goto LABEL_22;
    }

    v21 = [v18 firstObject];
    v33 = [v21 cls_localDateComponents];

    v22 = [v18 lastObject];
    v23 = [v22 cls_localDateComponents];

    if (!v33 || !v23)
    {
      v28 = [CLSLogging sharedLogging:v33];
      v24 = [v28 loggingConnection];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v29 = [v18 firstObject];
        v30 = [v18 lastObject];
        *buf = 138412802;
        v50 = v18;
        v51 = 2112;
        v52 = v29;
        v53 = 2112;
        v54 = v30;
        _os_log_error_impl(&dword_22F907000, v24, OS_LOG_TYPE_ERROR, "sortedObjectsByDate doesn't have any date %@ - [%@, %@]", buf, 0x20u);
      }

      goto LABEL_17;
    }

    v24 = [CLSInputLocationClue clueWithLocation:v13 locationCache:*(a1 + 40)];
    -[NSObject setNumberOfAssets:](v24, "setNumberOfAssets:", [v16 count]);
    v55[0] = v33;
    v55[1] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
    v26 = [CLSInputTimeClue clueWithDates:v25 serviceManager:*(a1 + 48)];
    v27 = v26;
    if (a5 != 0.0)
    {
      v31 = v17;
      if (v17 < a6)
      {
        [v26 setRelevance:(exp(-((v31 - a6) * (v31 - a6)) / (a5 * a5 + a5 * a5)) * 0.99)];
        [v27 relevance];
        [v24 setRelevance:?];
        goto LABEL_16;
      }

      if (v31 < a7)
      {
        [v26 setRelevance:v31 * 0.01 / a7 + 0.99];
        [v27 relevance];
        [v24 setRelevance:?];
        goto LABEL_16;
      }
    }

    [v26 setRelevance:{1.0, v33, v35, v36, v37, v38}];
    [v27 relevance];
    [v24 setRelevance:?];
LABEL_16:
    [*(a1 + 56) addObject:{v27, v33}];
    [*(a1 + 64) addObject:v24];

LABEL_17:
    v32 = *(a1 + 80);
    if (v32)
    {
      buf[0] = 0;
      (*(v32 + 16))(v32, buf, 0.3);
      *(*(*(a1 + 96) + 8) + 24) |= buf[0];
      if (*(*(*(a1 + 96) + 8) + 24) == 1)
      {
        *a4 = 1;
      }
    }

    goto LABEL_21;
  }

LABEL_22:

  _Block_object_dispose(&v45, 8);
}

uint64_t __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_233(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  (*(a1[4] + 16))();
  result = a1[5];
  if (result)
  {
    v7 = 0;
    result = (*(result + 16))(result, &v7, 0.4);
    *(*(a1[6] + 8) + 24) |= v7;
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }

  return result;
}

void __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_235(uint64_t a1, void *a2, _BYTE *a3, double a4, double a5)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v12 = [CLSInputPeopleClue clueWithPersonLocalIdentifier:v11 inPhotoLibrary:v9 serviceManager:v10];
  v13 = [*(a1 + 48) countForObject:v11];

  [v12 setNumberOfFaces:v13];
  v15 = 1.0;
  if (a4 != 0.0)
  {
    v14 = v13;
    if (v13 < a5)
    {
      v15 = exp(-((v14 - a5) * (v14 - a5)) / (a4 * a4 + a4 * a4));
    }
  }

  [v12 setRelevance:{v15, v14}];
  [*(a1 + 56) addObject:v12];
  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = 0;
    (*(v16 + 16))(v16, &v17, 0.8);
    *(*(*(a1 + 72) + 8) + 24) |= v17;
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }
}

void __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_2_238(uint64_t a1, void *a2, _BYTE *a3, double a4, double a5)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  v12 = [CLSInputPeopleClue clueWithConsolidatedPersonLocalIdentifier:v11 inPhotoLibrary:v9 serviceManager:v10];
  v13 = [*(a1 + 48) countForObject:v11];

  [v12 setNumberOfFaces:v13];
  v15 = 1.0;
  if (a4 != 0.0)
  {
    v14 = v13;
    if (v13 < a5)
    {
      v15 = exp(-((v14 - a5) * (v14 - a5)) / (a4 * a4 + a4 * a4));
    }
  }

  [v12 setRelevance:{v15, v14}];
  [*(a1 + 56) addObject:v12];
  v16 = *(a1 + 64);
  if (v16)
  {
    v17 = 0;
    (*(v16 + 16))(v16, &v17, 0.9);
    *(*(*(a1 + 72) + 8) + 24) |= v17;
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }
}

uint64_t __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_6(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  (*(a1[4] + 16))();
  result = a1[5];
  if (result)
  {
    v7 = 0;
    result = (*(result + 16))(result, &v7, 0.2);
    *(*(a1[6] + 8) + 24) |= v7;
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cls_localDate];
  v6 = [v4 cls_localDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __87__CLSInvestigationFeeder__prepareFeederWithServiceManager_locationCache_progressBlock___block_invoke_2_224(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    v6 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *v6 = 1;
    *a3 = 1;
  }

  return result;
}

- (void)enumeratePersonNames:(id)names withGaussiansUsingBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  blockCopy = block;
  v7 = [namesCopy count];
  if (v7)
  {
    v8 = v7;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__CLSInvestigationFeeder_enumeratePersonNames_withGaussiansUsingBlock___block_invoke;
    v27[3] = &unk_2788A77E0;
    v29 = &v30;
    v9 = namesCopy;
    v28 = v9;
    [v9 enumerateObjectsUsingBlock:v27];
    v10 = v31[3];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v34 count:16];
    v13 = v8;
    v14 = v10 / v8;
    if (v12)
    {
      v15 = *v24;
      v16 = 0.0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = [v11 countForObject:*(*(&v23 + 1) + 8 * i)];
          v16 = v16 + (v18 - v14) * (v18 - v14);
        }

        v12 = [v11 countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v12);
    }

    else
    {
      v16 = 0.0;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__CLSInvestigationFeeder_enumeratePersonNames_withGaussiansUsingBlock___block_invoke_2;
    v19[3] = &unk_2788A7808;
    v20 = blockCopy;
    v21 = sqrt(v16 / v13) * 3.0 * 0.25;
    v22 = v14;
    [v11 enumerateObjectsUsingBlock:v19];

    _Block_object_dispose(&v30, 8);
  }
}

double __71__CLSInvestigationFeeder_enumeratePersonNames_withGaussiansUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) countForObject:a2];
  v4 = *(*(a1 + 40) + 8);
  result = *(v4 + 24) + v3;
  *(v4 + 24) = result;
  return result;
}

- (void)_enumerateLocationClustersWithGaussians:(id)gaussians enumerationBlock:(id)block
{
  v49 = *MEMORY[0x277D85DE8];
  gaussiansCopy = gaussians;
  blockCopy = block;
  if ([gaussiansCopy count])
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v7 = [gaussiansCopy count];
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __83__CLSInvestigationFeeder__enumerateLocationClustersWithGaussians_enumerationBlock___block_invoke;
    v36[3] = &unk_2788A7768;
    v38 = &v44;
    v39 = &v40;
    v9 = strongToStrongObjectsMapTable;
    v37 = v9;
    [gaussiansCopy enumerateKeysAndObjectsUsingBlock:v36];
    v10 = v45[3];
    v11 = v7;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __83__CLSInvestigationFeeder__enumerateLocationClustersWithGaussians_enumerationBlock___block_invoke_2;
    v31[3] = &unk_2788A7790;
    v12 = v10 / v7;
    v31[4] = &v32;
    *&v31[5] = v12;
    [gaussiansCopy enumerateKeysAndObjectsUsingBlock:v31];
    v13 = v33[3];
    allKeys = [gaussiansCopy allKeys];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__CLSInvestigationFeeder__enumerateLocationClustersWithGaussians_enumerationBlock___block_invoke_3;
    v29[3] = &unk_2788A77B8;
    v23 = v9;
    v30 = v23;
    v15 = [allKeys sortedArrayUsingComparator:v29];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v48 count:16];
    if (v17)
    {
      v18 = sqrt(v13 / v11) * 3.0 * 0.25;
      v19 = *v26;
LABEL_4:
      v20 = 0;
      while (1)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * v20);
        v24 = 0;
        v22 = [gaussiansCopy objectForKeyedSubscript:v21];
        blockCopy[2](blockCopy, v21, v22, &v24, v18, v12, v41[3]);
        LOBYTE(v21) = v24;

        if (v21)
        {
          break;
        }

        if (v17 == ++v20)
        {
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v48 count:16];
          if (v17)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
  }
}

void __83__CLSInvestigationFeeder__enumerateLocationClustersWithGaussians_enumerationBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 40) + 8) + 24) += [v6 count];
  v7 = *(*(*(a1 + 48) + 8) + 24);
  v8 = [v6 count];
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  *(*(*(a1 + 48) + 8) + 24) = v9;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) cls_universalDate];
        v17 = v16;
        if (v13)
        {
          v18 = [v16 earlierDate:v13];

          v13 = v18;
        }

        else
        {
          v13 = v16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  [*(a1 + 32) setObject:v13 forKey:v5];
}

double __83__CLSInvestigationFeeder__enumerateLocationClustersWithGaussians_enumerationBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 count];
  v5 = *(*(a1 + 32) + 8);
  result = (v4 - *(a1 + 40)) * (v4 - *(a1 + 40)) + *(v5 + 24);
  *(v5 + 24) = result;
  return result;
}

uint64_t __83__CLSInvestigationFeeder__enumerateLocationClustersWithGaussians_enumerationBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (void)enumerateItemsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  v7 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v7);
}

- (void)enumerateItemsUsingBlock:(id)block
{
  blockCopy = block;
  v6 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v6);
}

- (id)itemAtIndex:(unint64_t)index
{
  v3 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v3);
}

- (id)sharedItems
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)privateItems
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)allItems
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)approximateLocation
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)localEndDateComponents
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)localStartDateComponents
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (NSDate)localEndDate
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (NSDate)localStartDate
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (NSDate)universalEndDate
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (NSDate)universalStartDate
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (unint64_t)numberOfItems
{
  v2 = CLSAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (CLSInvestigationFeeder)init
{
  v7.receiver = self;
  v7.super_class = CLSInvestigationFeeder;
  v2 = [(CLSInvestigationFeeder *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_locationClusteringAlgorithm = 0;
    v2->_allowsInterview = 0;
    v4 = [MEMORY[0x277CBEB58] set];
    focusItems = v3->_focusItems;
    v3->_focusItems = v4;
  }

  return v3;
}

@end