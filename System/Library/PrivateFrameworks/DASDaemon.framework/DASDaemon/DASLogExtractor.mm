@interface DASLogExtractor
@end

@implementation DASLogExtractor

void __45___DASLogExtractor_getDefaultFilterPredicate__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = getDefaultFilterPredicate_subpredicates;
  getDefaultFilterPredicate_subpredicates = v0;

  v2 = getDefaultFilterPredicate_subpredicates;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"type = %d", 1024];
  [v2 addObject:v3];
}

void __67___DASLogExtractor_handleLogEventsLogEvents_sinceDate_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_ErrorWhenPrepa.isa, v6);
  }

  if (v5 && *(*(a1 + 32) + 8))
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v8 = [objc_alloc(MEMORY[0x277D24440]) initWithSource:v5];
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    *(v9 + 24) = v8;

    [*(*(a1 + 32) + 24) setFlags:391];
    v11 = [*(a1 + 32) getDefaultFilterPredicate];
    [v11 addObjectsFromArray:*(a1 + 40)];
    v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v11];
    [*(*(a1 + 32) + 24) setFilterPredicate:v12];

    v13 = dispatch_semaphore_create(0);
    v14 = *(*(a1 + 32) + 24);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67___DASLogExtractor_handleLogEventsLogEvents_sinceDate_withHandler___block_invoke_2;
    v21[3] = &unk_278EE17A8;
    v23 = *(a1 + 72);
    v22 = *(a1 + 56);
    [v14 setEventHandler:v21];
    v15 = *(*(a1 + 32) + 24);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67___DASLogExtractor_handleLogEventsLogEvents_sinceDate_withHandler___block_invoke_3;
    v18[3] = &unk_278EE17D0;
    v20 = &v24;
    v16 = v13;
    v19 = v16;
    [v15 setInvalidationHandler:v18];
    [*(*(a1 + 32) + 24) activateStreamFromDate:*(a1 + 48)];
    NSLog(&cfstr_FetchingInform.isa);
    v17 = dispatch_time(0xFFFFFFFFFFFFFFFFLL, 1000000000);
    dispatch_semaphore_wait(v16, v17);
    *(*(*(a1 + 64) + 8) + 24) = *(v25 + 6);

    _Block_object_dispose(&v24, 8);
  }
}

void __67___DASLogExtractor_handleLogEventsLogEvents_sinceDate_withHandler___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 40);
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    v2 = [v3 eventStream];
    [v2 invalidate];
  }
}

intptr_t __67___DASLogExtractor_handleLogEventsLogEvents_sinceDate_withHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2 != 5)
  {
    NSLog(&cfstr_ErrorInGetting.isa);
    *(*(*(a1 + 40) + 8) + 24) = -1;
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

uint64_t __67___DASLogExtractor_summarizePolicyDenialsOverMessages_maxDuration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v7 doubleValue];
  v9 = v8;
  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];
  [v10 doubleValue];
  v12 = v11;

  if (v9 <= v12)
  {
    v14 = [*(a1 + 32) objectForKeyedSubscript:v5];
    [v14 doubleValue];
    v16 = v15;
    v17 = [*(a1 + 32) objectForKeyedSubscript:v6];
    [v17 doubleValue];
    v13 = v16 < v18;
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

uint64_t __71___DASLogExtractor_copyActivitySummary_startDate_endDate_detail_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v4 = [v3 date];
  v5 = [v3 category];
  v6 = [v3 composedMessage];

  v7 = [_DASLogEntry logEntryForDate:v4 category:v5 message:v6];
  [v2 addObject:v7];

  return 1;
}

uint64_t __74___DASLogExtractor_copyApplicationSummary_startDate_endDate_detail_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v4 = [v3 date];
  v5 = [v3 category];
  v6 = [v3 composedMessage];

  v7 = [_DASLogEntry logEntryForDate:v4 category:v5 message:v6];
  [v2 addObject:v7];

  return 1;
}

uint64_t __55___DASLogExtractor_sysConditionsLog_startDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v5 composedMessage];
  v7 = [v5 date];

  [v3 addConditionToHistory:v4 fromMessage:v6 atTimestamp:v7 compactRepresentation:*(a1 + 48)];
  return 1;
}

void __55___DASLogExtractor_sysConditionsLog_startDate_endDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = MEMORY[0x277D85E08];
  v6 = *MEMORY[0x277D85E08];
  v7 = [a2 description];
  v8 = [v7 UTF8String];
  v9 = [v13 description];
  fprintf(v6, "%s:-----------\n%s\n\n", v8, [v9 UTF8String]);

  v10 = [v13 idealIntervals];
  if ([v10 count])
  {
    v11 = *(a1 + 32);
    v12 = [v13 idealIntervals];
    [v11 addObject:v12];
  }

  else
  {
    fwrite("No ideal intervals.\n", 0x14uLL, 1uLL, *v5);
  }
}

@end