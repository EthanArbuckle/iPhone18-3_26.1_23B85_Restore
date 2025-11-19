@interface HTHangsDataFinder
+ (id)groupEntriesByHangID:(id)a3;
- (HTHangsDataFinder)initWithLogUpdateCallback:(id)a3 tailspinSavedCallback:(id)a4;
- (id)appRecordWithBundleId:(id)a3 cachedAppRecords:(id)a4;
- (id)dateFromString:(id)a3;
- (id)getFilteredLogURLsForPath:(id)a3 error:(id *)a4;
- (id)hangsDataEntryAtPath:(id)a3 error:(id *)a4;
- (id)hangsDataEntryWithFullPath:(id)a3 extendedAttributes:(id)a4 cachedAppRecords:(id)a5;
- (void)dealloc;
- (void)findProcessingEventsFilteringDeveloperApps:(BOOL)a3 completionHandler:(id)a4;
- (void)hangReporterDidSaveTailspin:(id)a3;
@end

@implementation HTHangsDataFinder

- (HTHangsDataFinder)initWithLogUpdateCallback:(id)a3 tailspinSavedCallback:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v31 = a4;
  v44.receiver = self;
  v44.super_class = HTHangsDataFinder;
  v6 = [(HTHangsDataFinder *)&v44 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"lastPathComponent BEGINSWITH[cd] 'UIKit-runloop' OR lastPathComponent BEGINSWITH[cd] 'Fence'"];
    v8 = *(v6 + 2);
    *(v6 + 2) = v7;

    if (v32)
    {
      v9 = MEMORY[0x25306A220](v32);
      v10 = *(v6 + 3);
      *(v6 + 3) = v9;

      v11 = dispatch_queue_create("com.apple.DeveloperSettings.HangDetectionFileWatcher", 0);
      v12 = *(v6 + 6);
      *(v6 + 6) = v11;

      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = *(v6 + 5);
      *(v6 + 5) = v13;

      v15 = objc_opt_new();
      v16 = *(v6 + 7);
      *(v6 + 7) = v15;

      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x3042000000;
      v42[3] = __Block_byref_object_copy__0;
      v42[4] = __Block_byref_object_dispose__0;
      objc_initWeak(&v43, v6);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = getDataTypePaths();
      v17 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v17)
      {
        v18 = *v39;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v38 + 1) + 8 * i);
            v21 = *(v6 + 6);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __69__HTHangsDataFinder_initWithLogUpdateCallback_tailspinSavedCallback___block_invoke;
            block[3] = &unk_2796A9238;
            block[4] = v20;
            block[5] = v42;
            dispatch_async(v21, block);
            v22 = v20;
            v23 = open([v20 UTF8String], 0x8000);
            v24 = v23;
            if (v23 != -1)
            {
              v25 = dispatch_source_create(MEMORY[0x277D85D48], v23, 2uLL, *(v6 + 6));
              handler[0] = MEMORY[0x277D85DD0];
              handler[1] = 3221225472;
              handler[2] = __69__HTHangsDataFinder_initWithLogUpdateCallback_tailspinSavedCallback___block_invoke_2;
              handler[3] = &unk_2796A9238;
              handler[4] = v20;
              handler[5] = v42;
              dispatch_source_set_event_handler(v25, handler);
              v34[0] = MEMORY[0x277D85DD0];
              v34[1] = 3221225472;
              v34[2] = __69__HTHangsDataFinder_initWithLogUpdateCallback_tailspinSavedCallback___block_invoke_3;
              v34[3] = &__block_descriptor_36_e5_v8__0l;
              v35 = v24;
              dispatch_source_set_cancel_handler(v25, v34);
              dispatch_resume(v25);
              [*(v6 + 5) addObject:v25];
            }
          }

          v17 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
        }

        while (v17);
      }

      _Block_object_dispose(v42, 8);
      objc_destroyWeak(&v43);
    }

    if (v31)
    {
      v26 = MEMORY[0x25306A220](v31);
      v27 = *(v6 + 4);
      *(v6 + 4) = v26;

      v28 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v28 addObserver:v6 selector:sel_hangReporterDidSaveTailspin_ name:*MEMORY[0x277D0FA30] object:0];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v6;
}

void __69__HTHangsDataFinder_initWithLogUpdateCallback_tailspinSavedCallback___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v10 = 0;
    v5 = [WeakRetained getFilteredLogURLsForPath:v4 error:&v10];
    v6 = v10;
    v7 = [v5 count];

    if (v6)
    {
      NSLog(&cfstr_ErrorLookingFo.isa, *(a1 + 32), v6);
    }

    else
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
      v9 = [v3 logCountByPath];
      [v9 setObject:v8 forKeyedSubscript:*(a1 + 32)];
    }
  }
}

void __69__HTHangsDataFinder_initWithLogUpdateCallback_tailspinSavedCallback___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v14 = 0;
    v5 = [WeakRetained getFilteredLogURLsForPath:v4 error:&v14];
    v6 = v14;
    v7 = [v5 count];

    if (v6)
    {
      NSLog(&cfstr_ErrorLookingFo.isa, *(a1 + 32), v6);
      v7 = 0;
    }

    v8 = [v3 logCountByPath];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];
    v10 = [v9 unsignedLongValue];

    if (v10 != v7)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v7];
      v12 = [v3 logCountByPath];
      [v12 setObject:v11 forKeyedSubscript:*(a1 + 32)];

      v13 = [v3 logUpdateCallback];
      v13[2]();
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = HTHangsDataFinder;
  [(HTHangsDataFinder *)&v4 dealloc];
}

- (id)getFilteredLogURLsForPath:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6 isDirectory:&v18];
  v9 = v18;

  v10 = MEMORY[0x277CBEBF8];
  if (v8 && (v9 & 1) != 0)
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:v18];
    v19[0] = *MEMORY[0x277CBE8E0];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v14 = [v11 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:v13 options:0 error:a4];

    v15 = [(HTHangsDataFinder *)self hangLogPredicate];
    v10 = [v14 filteredArrayUsingPredicate:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)dateFromString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];
  v6 = [v5 length];

  if (v6 && ([v3 doubleValue], v7 != 0.0))
  {
    v9 = MEMORY[0x277CBEAA8];
    [v3 doubleValue];
    v8 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hangsDataEntryAtPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  NSLog(&cfstr_LookingForData.isa, v6);
  v7 = [(HTHangsDataFinder *)self getFilteredLogURLsForPath:v6 error:a4];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HTHangsDataFinder_hangsDataEntryAtPath_error___block_invoke;
  v16[3] = &unk_2796A9280;
  v17 = v6;
  v18 = self;
  v19 = v9;
  v10 = v8;
  v20 = v10;
  v11 = v9;
  v12 = v6;
  [v7 enumerateObjectsUsingBlock:v16];
  v13 = v20;
  v14 = v10;

  return v10;
}

void __48__HTHangsDataFinder_hangsDataEntryAtPath_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v4 = *MEMORY[0x277CBE8E0];
  v13 = 0;
  v5 = [v3 getResourceValue:&v14 forKey:v4 error:&v13];
  v6 = v14;
  v7 = v13;
  if (v5 && ([v6 BOOLValue] & 1) == 0)
  {
    NSLog(&cfstr_UrlDoesNotHave.isa, v3);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v3 lastPathComponent];
    v10 = [v8 stringByAppendingPathComponent:v9];

    v11 = [[HTHangExtendedAttributes alloc] initWithFilePath:v10];
    v12 = [*(a1 + 40) hangsDataEntryWithFullPath:v10 extendedAttributes:v11 cachedAppRecords:*(a1 + 48)];
    if (v12)
    {
      [*(a1 + 56) addObject:v12];
    }
  }
}

- (id)hangsDataEntryWithFullPath:(id)a3 extendedAttributes:(id)a4 cachedAppRecords:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 bundleID];
  if (v11 && (v12 = v11, [v9 hangID], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = [v9 bundleID];
    v26 = [(HTHangsDataFinder *)self appRecordWithBundleId:v14 cachedAppRecords:v10];

    v25 = [HTHangsDataEntry alloc];
    v24 = [v9 hangID];
    v15 = [v9 creationDate];
    v16 = [(HTHangsDataFinder *)self dateFromString:v15];
    v17 = [v9 duration];
    [v17 doubleValue];
    v19 = v18;
    v20 = [v9 bundleID];
    v21 = [v9 processPath];
    v22 = [(HTHangsDataEntry *)v25 initWithPath:v8 hangID:v24 creationDate:v16 duration:v20 processBundleID:v21 processPath:v26 processRecord:v19];
  }

  else
  {
    NSLog(&cfstr_EntryAtPathIsM.isa, v8);
    v22 = 0;
  }

  return v22;
}

- (id)appRecordWithBundleId:(id)a3 cachedAppRecords:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:v5];
  if (!v7)
  {
    v12 = 0;
    v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v5 allowPlaceholder:0 error:&v12];
    v8 = v12;
    v9 = v8;
    if (!v8 && v7)
    {
      goto LABEL_7;
    }

    v10 = @"No error, app was not found";
    if (v8)
    {
      v10 = v8;
    }

    NSLog(&cfstr_UnableToRetrie_0.isa, v5, v10);
    if (v7)
    {
LABEL_7:
      [v6 setObject:v7 forKeyedSubscript:v5];
    }
  }

  return v7;
}

+ (id)groupEntriesByHangID:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 hangID];
        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v11];

          if (!v12)
          {
            v13 = [MEMORY[0x277CBEB18] array];
            [v4 setObject:v13 forKeyedSubscript:v11];
          }

          v14 = [v4 objectForKeyedSubscript:v11];
          [v14 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __72__HTHangsDataFinder_findEventsFilteringDeveloperApps_completionHandler___block_invoke(uint64_t a1)
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__41;
  v17[4] = __Block_byref_object_dispose__42;
  v18 = 0;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = getDataTypePaths();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HTHangsDataFinder_findEventsFilteringDeveloperApps_completionHandler___block_invoke_43;
  v12[3] = &unk_2796A92D0;
  v4 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v15 = v17;
  v16 = *(a1 + 48);
  v14 = v4;
  v5 = v2;
  v13 = v5;
  [v3 enumerateObjectsUsingBlock:v12];

  v6 = [HTHangsDataFinder groupEntriesByHangID:v5];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HTHangsDataFinder_findEventsFilteringDeveloperApps_completionHandler___block_invoke_3;
  block[3] = &unk_2796A92F8;
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v17, 8);
}

void __72__HTHangsDataFinder_findEventsFilteringDeveloperApps_completionHandler___block_invoke_43(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v7 hangsDataEntryAtPath:a2 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (*(a1 + 64) == 1)
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_126];
    v11 = [v9 filteredArrayUsingPredicate:v10];

    v9 = v11;
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    NSLog(&cfstr_ThereWasAnErro.isa, a3);
    *a4 = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HTHangsDataFinder_findEventsFilteringDeveloperApps_completionHandler___block_invoke_2;
    block[3] = &unk_2796A92A8;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15 = v12;
    v16 = v13;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    NSLog(&cfstr_AddingLuEntrie.isa, [v9 count]);
    [*(a1 + 40) addObjectsFromArray:v9];
  }
}

- (void)findProcessingEventsFilteringDeveloperApps:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = v4;
    _os_log_impl(&dword_2510AF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Getting pending hangs list (filtering on developer apps: %d)", buf, 8u);
  }

  hangReporterService = self->_hangReporterService;
  if (hangReporterService || (v8 = objc_alloc_init(HTHangReporterService), v9 = self->_hangReporterService, self->_hangReporterService = v8, v9, (hangReporterService = self->_hangReporterService) != 0))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__HTHangsDataFinder_findProcessingEventsFilteringDeveloperApps_completionHandler___block_invoke;
    v12[3] = &unk_2796A9348;
    v12[4] = self;
    v13 = v6;
    v14 = v4;
    [(HTHangReporterService *)hangReporterService getProcessingHangsWithCompletion:v12];
    v10 = v13;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4099 userInfo:0];
    (*(v6 + 2))(v6, 0, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __82__HTHangsDataFinder_findProcessingEventsFilteringDeveloperApps_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v35 = a1;
    v31 = v6;
    v8 = [MEMORY[0x277CBEB18] array];
    v34 = [MEMORY[0x277CBEB38] dictionary];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = *(v35 + 32);
          v15 = [v13 bundleID];
          v16 = [v14 appRecordWithBundleId:v15 cachedAppRecords:v34];

          v17 = [HTHangsDataEntry alloc];
          v18 = [v13 identifier];
          v19 = [v13 creationDate];
          [v13 duration];
          v21 = v20;
          v22 = [v13 bundleID];
          v23 = [v13 processPath];
          v24 = [(HTHangsDataEntry *)v17 initWithPath:0 hangID:v18 creationDate:v19 duration:v22 processBundleID:v23 processPath:v16 processRecord:v21];

          [v8 addObject:v24];
        }

        v10 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v10);
    }

    if (*(v35 + 48) == 1)
    {
      v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_126];
      [v8 filterUsingPredicate:v25];
    }

    v7 = v31;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v26 = [v8 count];
      *buf = 134217984;
      v47 = v26;
      _os_log_impl(&dword_2510AF000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Found %lu pending hangs entries", buf, 0xCu);
    }

    v27 = [HTHangsDataFinder groupEntriesByHangID:v8];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HTHangsDataFinder_findProcessingEventsFilteringDeveloperApps_completionHandler___block_invoke_54;
    block[3] = &unk_2796A92F8;
    v28 = *(v35 + 40);
    v37 = v27;
    v38 = v28;
    v29 = v27;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v5 = v32;
  }

  else
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __82__HTHangsDataFinder_findProcessingEventsFilteringDeveloperApps_completionHandler___block_invoke_2;
    v43[3] = &unk_2796A92F8;
    v45 = *(a1 + 40);
    v44 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v43);

    v8 = v45;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)hangReporterDidSaveTailspin:(id)a3
{
  tailspinSavedCallback = self->_tailspinSavedCallback;
  if (tailspinSavedCallback)
  {
    tailspinSavedCallback[2]();
  }
}

@end