@interface _ICPredictionManager
- (_ICPredictionManager)initWithPredictionSources:(id)sources;
- (id)_quickTypePredictionWithTrigger:(id)trigger searchContext:(id)context timeoutInMilliseconds:(unint64_t)milliseconds error:(id *)error;
- (id)searchForMeCardEmailAddresses;
- (id)searchForMeCardRegions;
- (id)searchWithTrigger:(id)trigger searchContext:(id)context timeoutInMilliseconds:(int)milliseconds error:(id *)error;
- (void)hibernate;
- (void)propogateMetrics:(id)metrics data:(id)data;
- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style;
- (void)reset;
- (void)searchForMeCardEmailAddresses;
- (void)searchForMeCardRegions;
- (void)setLastUsedSource:(id)source;
- (void)warmUp;
@end

@implementation _ICPredictionManager

- (void)reset
{
  cache = [(_ICPredictionManager *)self cache];
  [cache clear];
}

- (void)warmUp
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager warmUp];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_predictionSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) warmUp];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager warmUp];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)searchForMeCardRegions
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager searchForMeCardRegions];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_predictionSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v5)
  {
    v6 = *v23;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = dispatch_semaphore_create(0);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __46___ICPredictionManager_searchForMeCardRegions__block_invoke;
        v19[3] = &unk_2797ADA90;
        v21 = &v26;
        v10 = v9;
        v20 = v10;
        [v8 searchForMeCardRegionsWithTimeout:5000 handler:v19];
        v11 = dispatch_time(0, 5500000000);
        if (dispatch_semaphore_wait(v10, v11))
        {
          v15 = _ICProactiveQuickTypeOSLogFacility();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [_ICPredictionManager searchForMeCardRegions];
          }

          goto LABEL_22;
        }

        v12 = [v27[5] count] == 0;

        if (!v12)
        {
          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if ([v27[5] count])
  {
    v13 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      -[_ICPredictionManager searchForMeCardRegions].cold.3(v32, [v27[5] count], v13);
    }

    v14 = v27[5];
  }

  else
  {
    v16 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_ICPredictionManager _quickTypePredictionWithTrigger:searchContext:timeoutInMilliseconds:error:];
    }

LABEL_22:
    v14 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v26, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (_ICPredictionManager)initWithPredictionSources:(id)sources
{
  sourcesCopy = sources;
  v17.receiver = self;
  v17.super_class = _ICPredictionManager;
  v6 = [(_ICPredictionManager *)&v17 init];
  if (v6)
  {
    v7 = [[_ICResultCache alloc] initWithTTL:180.0];
    cache = v6->_cache;
    v6->_cache = v7;

    if (sourcesCopy)
    {
      objc_storeStrong(&v6->_predictionSources, sources);
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v13 = [@"com.apple.inputcontext.predictionmanager." stringByAppendingString:uUIDString];

    v14 = dispatch_queue_create([v13 UTF8String], v10);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v14;
  }

  return v6;
}

- (id)searchWithTrigger:(id)trigger searchContext:(id)context timeoutInMilliseconds:(int)milliseconds error:(id *)error
{
  triggerCopy = trigger;
  contextCopy = context;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84___ICPredictionManager_searchWithTrigger_searchContext_timeoutInMilliseconds_error___block_invoke;
  v24[3] = &unk_2797ADA18;
  v24[4] = self;
  v12 = triggerCopy;
  v25 = v12;
  v13 = contextCopy;
  v26 = v13;
  millisecondsCopy = milliseconds;
  v14 = MEMORY[0x259C27030](v24);
  if ([v12 triggerSourceType] == 3)
  {
    goto LABEL_4;
  }

  null = [MEMORY[0x277CBEB68] null];
  attributedString = [v12 attributedString];
  v17 = [attributedString objectForKeyedSubscript:*MEMORY[0x277D22F30]];
  v18 = [null isEqual:v17];

  if (!v18)
  {
LABEL_4:
    v20 = (v14)[2](v14, error);
  }

  else
  {
    v19 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84___ICPredictionManager_searchWithTrigger_searchContext_timeoutInMilliseconds_error___block_invoke_2;
    block[3] = &unk_2797ADA40;
    v23 = v14;
    dispatch_async(v19, block);

    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

- (id)_quickTypePredictionWithTrigger:(id)trigger searchContext:(id)context timeoutInMilliseconds:(unint64_t)milliseconds error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  contextCopy = context;
  attributedString = [triggerCopy attributedString];
  LOBYTE(context) = attributedString == 0;

  v10 = _ICProactiveQuickTypeOSLogFacility();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (context)
  {
    if (v11)
    {
      [_ICPredictionManager _quickTypePredictionWithTrigger:triggerCopy searchContext:v10 timeoutInMilliseconds:? error:?];
    }
  }

  else if (v11)
  {
    [_ICPredictionManager _quickTypePredictionWithTrigger:triggerCopy searchContext:v10 timeoutInMilliseconds:? error:?];
  }

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy_;
  v61 = __Block_byref_object_dispose_;
  v62 = 0;
  if (error)
  {
    *error = 0;
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy_;
  v55 = __Block_byref_object_dispose_;
  v56 = 0;
  v50 = 0;
  v48 = @"_ICPredictionManager_quickTypePredictionWithTrigger";
  v31 = mach_absolute_time();
  v49 = v31;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = self->_predictionSources;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v44 objects:v65 count:16];
  if (v13)
  {
    v15 = *v45;
    *&v14 = 134217984;
    v30 = v14;
LABEL_10:
    v16 = 0;
    while (1)
    {
      if (*v45 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v44 + 1) + 8 * v16);
      if ([v17 doesSupportTriggerSourceType:{objc_msgSend(triggerCopy, "triggerSourceType", v30)}])
      {
        v18 = dispatch_semaphore_create(0);
        objc_initWeak(&location, self);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __98___ICPredictionManager__quickTypePredictionWithTrigger_searchContext_timeoutInMilliseconds_error___block_invoke;
        v38[3] = &unk_2797ADA68;
        v40 = &v51;
        v41 = &v57;
        objc_copyWeak(&v42, &location);
        v19 = v18;
        v39 = v19;
        [v17 predictedItemsWithProactiveTrigger:triggerCopy searchContext:contextCopy limit:10 timeoutInMilliseconds:milliseconds handler:v38];
        v20 = dispatch_time(0, (milliseconds / 1000.0 * 1.1 * 1000000000.0));
        if (dispatch_semaphore_wait(v19, v20))
        {
          v21 = _ICProactiveQuickTypeOSLogFacility();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [_ICPredictionManager _quickTypePredictionWithTrigger:v37 searchContext:v21 timeoutInMilliseconds:? error:?];
          }

          v22 = 0;
          v6 = 0;
        }

        else if ([v58[5] count])
        {
          name = [v17 name];
          [(_ICPredictionManager *)self setLastUsedSource:name];

          v24 = _ICProactiveQuickTypeOSLogFacility();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = [v58[5] count];
            *buf = v30;
            v64 = v25;
            _os_log_debug_impl(&dword_254BD0000, v24, OS_LOG_TYPE_DEBUG, "DEBUG:IC:Predictions: received prediction source results, count = %lu", buf, 0xCu);
          }

          v6 = v58[5];
          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        objc_destroyWeak(&v42);
        objc_destroyWeak(&location);

        if (!v22)
        {
          break;
        }
      }

      if (v13 == ++v16)
      {
        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v44 objects:v65 count:16];
        if (v13)
        {
          goto LABEL_10;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_26:

    if (error)
    {
      *error = v52[5];
    }

    v12 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEBUG))
    {
      [_ICPredictionManager _quickTypePredictionWithTrigger:searchContext:timeoutInMilliseconds:error:];
    }

    v6 = 0;
  }

  v26 = mach_absolute_time();
  _ICMachTimeToNanoseconds(v26 - v31);
  v27 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager _quickTypePredictionWithTrigger:searchContext:timeoutInMilliseconds:error:];
  }

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  v28 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)searchForMeCardEmailAddresses
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager searchForMeCardEmailAddresses];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_predictionSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v5)
  {
    v6 = *v23;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = dispatch_semaphore_create(0);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __53___ICPredictionManager_searchForMeCardEmailAddresses__block_invoke;
        v19[3] = &unk_2797ADA90;
        v21 = &v26;
        v10 = v9;
        v20 = v10;
        [v8 searchForMeCardEmailAddressesWithTimeout:100 handler:v19];
        v11 = dispatch_time(0, 110000000);
        if (dispatch_semaphore_wait(v10, v11))
        {
          v15 = _ICProactiveQuickTypeOSLogFacility();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [_ICPredictionManager searchForMeCardEmailAddresses];
          }

          goto LABEL_22;
        }

        v12 = [v27[5] count] == 0;

        if (!v12)
        {
          goto LABEL_12;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v33 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if ([v27[5] count])
  {
    v13 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      -[_ICPredictionManager searchForMeCardEmailAddresses].cold.3(v32, [v27[5] count], v13);
    }

    v14 = v27[5];
  }

  else
  {
    v16 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [_ICPredictionManager searchForMeCardEmailAddresses];
    }

LABEL_22:
    v14 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(&v26, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)hibernate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_ICPredictionManager hibernate];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_predictionSources;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) hibernate];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setLastUsedSource:(id)source
{
  sourceCopy = source;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___ICPredictionManager_setLastUsedSource___block_invoke;
  block[3] = &unk_2797ADAB8;
  objc_copyWeak(&v9, &location);
  v8 = sourceCopy;
  v6 = sourceCopy;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)provideFeedbackForString:(id)string type:(unsigned __int8)type style:(unsigned __int8)style
{
  stringCopy = string;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60___ICPredictionManager_provideFeedbackForString_type_style___block_invoke;
  v11[3] = &unk_2797ADAE0;
  objc_copyWeak(&v13, &location);
  v12 = stringCopy;
  typeCopy = type;
  styleCopy = style;
  v10 = stringCopy;
  dispatch_async(serialQueue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)propogateMetrics:(id)metrics data:(id)data
{
  metricsCopy = metrics;
  dataCopy = data;
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46___ICPredictionManager_propogateMetrics_data___block_invoke;
  v11[3] = &unk_2797ADB08;
  objc_copyWeak(&v14, &location);
  v12 = metricsCopy;
  v13 = dataCopy;
  v9 = dataCopy;
  v10 = metricsCopy;
  dispatch_async(serialQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_quickTypePredictionWithTrigger:(void *)a1 searchContext:(NSObject *)a2 timeoutInMilliseconds:error:.cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 attributedString];
  v6 = 138412290;
  v7 = v3;
  OUTLINED_FUNCTION_2(&dword_254BD0000, a2, v4, "DEBUG:IC:Predictions: Searching for quicktype prediction with attributes: %@", &v6);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_quickTypePredictionWithTrigger:(void *)a1 searchContext:(NSObject *)a2 timeoutInMilliseconds:error:.cold.2(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 context];
  v6 = 134217984;
  v7 = [v3 length];
  OUTLINED_FUNCTION_2(&dword_254BD0000, a2, v4, "DEBUG:IC:Predictions: Searching for quicktype prediction with context len: %tu", &v6);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_quickTypePredictionWithTrigger:(os_log_t)log searchContext:timeoutInMilliseconds:error:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_254BD0000, log, OS_LOG_TYPE_ERROR, "_ICPredictionManager quickTypePredictionWithTrigger timeout", buf, 2u);
}

- (void)_quickTypePredictionWithTrigger:searchContext:timeoutInMilliseconds:error:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 138412546;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_254BD0000, v0, OS_LOG_TYPE_DEBUG, "_ICScales: %@ took %f seconds", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)searchForMeCardRegions
{
  *self = 134217984;
  *(self + 4) = a2;
  OUTLINED_FUNCTION_2(&dword_254BD0000, a3, a3, "DEBUG:IC:PredictionsManager:searchForMeCardRegions received prediction source results, count = %lu", self);
}

- (void)searchForMeCardEmailAddresses
{
  *self = 134217984;
  *(self + 4) = a2;
  OUTLINED_FUNCTION_2(&dword_254BD0000, a3, a3, "DEBUG:IC:searchForMeCardEmailAddresses: received prediction source results, count = %lu", self);
}

@end