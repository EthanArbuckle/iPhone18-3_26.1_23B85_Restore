@interface GEOAPSequencesManager
- (GEOAPSequencesManager)init;
- (id)searchWinSequence;
- (id)thirtySecondDurationCarPlayEngagementSequence;
- (id)thirtySecondDurationEngagementSequence;
- (id)threeSecondDurationCarPlayEngagementSequence;
- (id)threeSecondDurationEngagementSequence;
@end

@implementation GEOAPSequencesManager

uint64_t __38__GEOAPSequencesManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(GEOAPSequencesManager);

  return MEMORY[0x1EEE66BB8]();
}

- (GEOAPSequencesManager)init
{
  v14.receiver = self;
  v14.super_class = GEOAPSequencesManager;
  v2 = [(GEOAPSequencesManager *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    searchWinSequence = [(GEOAPSequencesManager *)v2 searchWinSequence];
    [v3 addObject:searchWinSequence];

    threeSecondDurationEngagementSequence = [(GEOAPSequencesManager *)v2 threeSecondDurationEngagementSequence];
    [v3 addObject:threeSecondDurationEngagementSequence];

    thirtySecondDurationEngagementSequence = [(GEOAPSequencesManager *)v2 thirtySecondDurationEngagementSequence];
    [v3 addObject:thirtySecondDurationEngagementSequence];

    threeSecondDurationCarPlayEngagementSequence = [(GEOAPSequencesManager *)v2 threeSecondDurationCarPlayEngagementSequence];
    [v3 addObject:threeSecondDurationCarPlayEngagementSequence];

    thirtySecondDurationCarPlayEngagementSequence = [(GEOAPSequencesManager *)v2 thirtySecondDurationCarPlayEngagementSequence];
    [v3 addObject:thirtySecondDurationCarPlayEngagementSequence];

    v9 = [v3 copy];
    sequences = v2->_sequences;
    v2->_sequences = v9;

    v11 = geo_dispatch_queue_create_with_qos();
    serialQ = v2->_serialQ;
    v2->_serialQ = v11;
  }

  return v2;
}

- (id)searchWinSequence
{
  v2 = [[GEOAPSequenceActionTargetState alloc] initWithName:@"await search results" admissionUserAction:2015 target:101];
  [(GEOAPSequenceState *)v2 addAbortingUserAction:4 target:201];
  v3 = [[GEOAPSequence alloc] initWithStartingState:v2];
  v4 = [[GEOAPSequenceActionTargetState alloc] initWithName:@"await tap list item" admissionUserAction:2007 target:101];

  [(GEOAPSequenceActionTargetState *)v4 setTimeout:900.0];
  [(GEOAPSequenceState *)v4 addAbortingUserAction:4 target:201];
  if (v3)
  {
    [v3[1] addObject:v4];
  }

  v5 = [[GEOAPSequenceActionTargetState alloc] initWithName:@"await placecard interaction" admissionUserAction:6003 target:201];

  [(GEOAPSequenceActionTargetState *)v5 setTimeout:900.0];
  [(GEOAPSequenceActionTargetState *)v5 addAdmissionUserAction:6009 target:201];
  [(GEOAPSequenceActionTargetState *)v5 addAdmissionUserAction:6010 target:201];
  [(GEOAPSequenceState *)v5 addAbortingUserAction:4 target:201];
  [(GEOAPSequenceState *)v5 setFulfillmentBlock:&__block_literal_global_18];
  if (v3)
  {
    [v3[1] addObject:v5];
  }

  [(GEOAPSequence *)v3 setName:?];

  return v3;
}

- (id)threeSecondDurationEngagementSequence
{
  v2 = [[GEOAPSequenceActionTargetState alloc] initWithName:@"enter maps" admissionUserAction:19 target:0];
  v3 = [[GEOAPSequence alloc] initWithStartingState:v2];
  v4 = [[GEOAPSequenceWaitState alloc] initWithName:@"3s wait" waitTime:3.0];
  [(GEOAPSequenceState *)v4 addAbortingUserAction:20 target:0];
  [(GEOAPSequenceState *)v4 setFulfillmentBlock:&__block_literal_global_31_1160];
  if (v3)
  {
    [v3[1] addObject:v4];
  }

  [(GEOAPSequence *)v3 setName:?];

  return v3;
}

- (id)thirtySecondDurationEngagementSequence
{
  v2 = [[GEOAPSequenceActionTargetState alloc] initWithName:@"enter maps" admissionUserAction:19 target:0];
  v3 = [[GEOAPSequence alloc] initWithStartingState:v2];
  v4 = [[GEOAPSequenceWaitState alloc] initWithName:@"30s wait" waitTime:30.0];
  [(GEOAPSequenceState *)v4 addAbortingUserAction:20 target:0];
  [(GEOAPSequenceState *)v4 setFulfillmentBlock:&__block_literal_global_39];
  if (v3)
  {
    [v3[1] addObject:v4];
  }

  [(GEOAPSequence *)v3 setName:?];

  return v3;
}

- (id)threeSecondDurationCarPlayEngagementSequence
{
  v2 = [[GEOAPSequenceActionTargetState alloc] initWithName:@"carplay activated" admissionUserAction:2196 target:0];
  v3 = [[GEOAPSequence alloc] initWithStartingState:v2];
  v4 = [[GEOAPSequenceWaitState alloc] initWithName:@"3s wait (carplay)" waitTime:3.0];
  [(GEOAPSequenceState *)v4 addAbortingUserAction:2197 target:0];
  [(GEOAPSequenceState *)v4 setFulfillmentBlock:&__block_literal_global_50];
  if (v3)
  {
    [v3[1] addObject:v4];
  }

  [(GEOAPSequence *)v3 setName:?];

  return v3;
}

- (id)thirtySecondDurationCarPlayEngagementSequence
{
  v2 = [[GEOAPSequenceActionTargetState alloc] initWithName:@"carplay deactivated" admissionUserAction:2196 target:0];
  v3 = [[GEOAPSequence alloc] initWithStartingState:v2];
  v4 = [[GEOAPSequenceWaitState alloc] initWithName:@"30s wait (carplay)" waitTime:30.0];
  [(GEOAPSequenceState *)v4 addAbortingUserAction:2197 target:0];
  [(GEOAPSequenceState *)v4 setFulfillmentBlock:&__block_literal_global_61];
  if (v3)
  {
    [v3[1] addObject:v4];
  }

  [(GEOAPSequence *)v3 setName:?];

  return v3;
}

uint64_t __70__GEOAPSequencesManager_thirtySecondDurationCarPlayEngagementSequence__block_invoke()
{
  v0 = GEOGetGEOAPSequenceManagerAnalyticsLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1AB634000, v0, OS_LOG_TYPE_DEBUG, "30s dwell achieved (carplay)", v2, 2u);
  }

  return [GEOAPPortal captureUserAction:498 target:0 value:0];
}

uint64_t __69__GEOAPSequencesManager_threeSecondDurationCarPlayEngagementSequence__block_invoke()
{
  v0 = GEOGetGEOAPSequenceManagerAnalyticsLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1AB634000, v0, OS_LOG_TYPE_DEBUG, "3s dwell achieved (carplay)", v2, 2u);
  }

  return [GEOAPPortal captureUserAction:497 target:0 value:0];
}

uint64_t __63__GEOAPSequencesManager_thirtySecondDurationEngagementSequence__block_invoke()
{
  v0 = GEOGetGEOAPSequenceManagerAnalyticsLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1AB634000, v0, OS_LOG_TYPE_DEBUG, "30s dwell achieved", v2, 2u);
  }

  return [GEOAPPortal captureUserAction:496 target:0 value:0];
}

uint64_t __62__GEOAPSequencesManager_threeSecondDurationEngagementSequence__block_invoke()
{
  v0 = GEOGetGEOAPSequenceManagerAnalyticsLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1AB634000, v0, OS_LOG_TYPE_DEBUG, "3s dwell achieved", v2, 2u);
  }

  return [GEOAPPortal captureUserAction:495 target:0 value:0];
}

uint64_t __42__GEOAPSequencesManager_searchWinSequence__block_invoke()
{
  v0 = GEOGetGEOAPSequenceManagerAnalyticsLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_1AB634000, v0, OS_LOG_TYPE_DEBUG, "search win achieved", v2, 2u);
  }

  return [GEOAPPortal captureMapsInteractionWithInteractionType:1];
}

void __57__GEOAPSequencesManager_processUserAction_target_atTime___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v2 = [MEMORY[0x1E69A2710] sharedInstance];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__GEOAPSequencesManager_processUserAction_target_atTime___block_invoke_2;
  v18[3] = &unk_1E7953C00;
  v18[4] = &v19;
  [v2 shortSessionValues:v18];

  if (*(v20 + 24) == 1)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v4 = *(v3 + 8);
      v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v5)
      {
        v6 = *v24;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v24 != v6)
            {
              objc_enumerationMutation(v4);
            }

            [(GEOAPSequence *)*(*(&v23 + 1) + 8 * i) reset];
          }

          v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v5);
      }
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(*(a1 + 32) + 8);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v27 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * j);
        if ([(GEOAPSequence *)v12 processUserAction:*(a1 + 52) target:*(a1 + 40) atTime:?])
        {
          [(GEOAPSequence *)v12 reset];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v27 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&v19, 8);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __57__GEOAPSequencesManager_processUserAction_target_atTime___block_invoke_2(uint64_t result, double a2, double a3)
{
  if (*&processUserAction_target_atTime__sessionCreateTimeInUse != a3)
  {
    processUserAction_target_atTime__sessionCreateTimeInUse = *&a3;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

@end