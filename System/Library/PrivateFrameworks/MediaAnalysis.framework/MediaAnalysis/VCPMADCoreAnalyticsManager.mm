@interface VCPMADCoreAnalyticsManager
+ (id)sharedAuxiliaryManager;
+ (id)sharedManager;
- (VCPMADCoreAnalyticsManager)init;
- (id)fetchSessionEvent:(id)event;
- (id)valueForField:(id)field andEvent:(id)event;
- (void)accumulateDoubleValue:(double)value forField:(id)field andEvent:(id)event;
- (void)accumulateInt64Value:(int64_t)value forField:(id)field andEvent:(id)event;
- (void)dealloc;
- (void)flush;
- (void)sendSessionEvent:(id)event;
- (void)setValue:(id)value forField:(id)field andEvent:(id)event;
@end

@implementation VCPMADCoreAnalyticsManager

- (VCPMADCoreAnalyticsManager)init
{
  v9.receiver = self;
  v9.super_class = VCPMADCoreAnalyticsManager;
  v2 = [(VCPMADCoreAnalyticsManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaanalysis.coreanalytics", v3);
    managementQueue = v2->_managementQueue;
    v2->_managementQueue = v4;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sessionAnalytics = v2->_sessionAnalytics;
    v2->_sessionAnalytics = dictionary;

    v2->_singleAnalyticsSentCount = 0;
    v2->_sessionAnalyticsSentCount = 0;
  }

  return v2;
}

+ (id)sharedManager
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = [v2 sharedInstanceWithIdentifier:@"VCPMADCoreAnalyticsManager" andCreationBlock:&__block_literal_global_97];

  return v3;
}

VCPMADCoreAnalyticsManager *__43__VCPMADCoreAnalyticsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(VCPMADCoreAnalyticsManager);

  return v0;
}

+ (id)sharedAuxiliaryManager
{
  v2 = +[VCPSharedInstanceManager sharedManager];
  v3 = [v2 sharedInstanceWithIdentifier:@"VCPMADCoreAnalyticsAuxillaryManager" andCreationBlock:&__block_literal_global_219];

  return v3;
}

VCPMADCoreAnalyticsManager *__52__VCPMADCoreAnalyticsManager_sharedAuxiliaryManager__block_invoke()
{
  v0 = objc_alloc_init(VCPMADCoreAnalyticsManager);

  return v0;
}

- (void)dealloc
{
  [(VCPMADCoreAnalyticsManager *)self flush];
  v3.receiver = self;
  v3.super_class = VCPMADCoreAnalyticsManager;
  [(VCPMADCoreAnalyticsManager *)&v3 dealloc];
}

- (void)setValue:(id)value forField:(id)field andEvent:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  fieldCopy = field;
  eventCopy = event;
  v11 = eventCopy;
  if (eventCopy)
  {
    if (fieldCopy)
    {
      managementQueue = self->_managementQueue;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__VCPMADCoreAnalyticsManager_setValue_forField_andEvent___block_invoke;
      v16[3] = &unk_1E834D048;
      v16[4] = self;
      v17 = eventCopy;
      v18 = valueCopy;
      v19 = fieldCopy;
      dispatch_sync(managementQueue, v16);

      goto LABEL_11;
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "[CoreAnalyticManager] Session fields name is nil for event %@; skipping";
      v15 = 12;
      goto LABEL_10;
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "[CoreAnalyticManager] Session event name is nil; skipping";
    v15 = 2;
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
  }

LABEL_11:
}

void __57__VCPMADCoreAnalyticsManager_setValue_forField_andEvent___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1[4] + 32) setObject:v3 forKeyedSubscript:a1[5]];

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v4 = a1[5];
      v5 = [*(a1[4] + 32) count];
      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[CoreAnalyticManager] Start session event %@ (total session count %lu)", &v7, 0x16u);
    }
  }

  v6 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  [v6 setValue:a1[6] forKey:a1[7]];
}

- (void)accumulateInt64Value:(int64_t)value forField:(id)field andEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  eventCopy = event;
  v10 = eventCopy;
  if (!eventCopy)
  {
    if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "[CoreAnalyticManager] Session event name is nil; skipping";
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 2;
LABEL_14:
    _os_log_impl(&dword_1C9B70000, v12, v14, v13, buf, v15);
    goto LABEL_15;
  }

  if (!fieldCopy)
  {
    if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v21 = v10;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "[CoreAnalyticManager] Session fields name is nil for event %@; skipping";
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 12;
    goto LABEL_14;
  }

  if (value)
  {
    managementQueue = self->_managementQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__VCPMADCoreAnalyticsManager_accumulateInt64Value_forField_andEvent___block_invoke;
    v16[3] = &unk_1E8351DC0;
    v16[4] = self;
    v17 = eventCopy;
    v18 = fieldCopy;
    valueCopy = value;
    dispatch_sync(managementQueue, v16);

    goto LABEL_15;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = fieldCopy;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "[CoreAnalyticManager] Ignore 0-accumulation for event %@ field %@";
    v14 = OS_LOG_TYPE_DEBUG;
    v15 = 22;
    goto LABEL_14;
  }

LABEL_15:
}

void __69__VCPMADCoreAnalyticsManager_accumulateInt64Value_forField_andEvent___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [*(a1[4] + 32) setObject:v3 forKeyedSubscript:a1[5]];

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v4 = a1[5];
      v5 = [*(a1[4] + 32) count];
      v10 = 138412546;
      v11 = v4;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[CoreAnalyticManager] Start session event %@ (total session count %lu)", &v10, 0x16u);
    }
  }

  v6 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v7 = [v6 valueForKey:a1[6]];

  v8 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{a1[7] + objc_msgSend(v7, "longLongValue")}];
  [v8 setValue:v9 forKey:a1[6]];
}

- (void)accumulateDoubleValue:(double)value forField:(id)field andEvent:(id)event
{
  v24 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  eventCopy = event;
  v10 = eventCopy;
  if (eventCopy)
  {
    if (fieldCopy)
    {
      if (value != 0.0)
      {
        managementQueue = self->_managementQueue;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __70__VCPMADCoreAnalyticsManager_accumulateDoubleValue_forField_andEvent___block_invoke;
        v16[3] = &unk_1E8351DC0;
        v16[4] = self;
        v17 = eventCopy;
        v18 = fieldCopy;
        valueCopy = value;
        dispatch_sync(managementQueue, v16);

        goto LABEL_15;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v21 = v10;
        v22 = 2112;
        v23 = fieldCopy;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "[CoreAnalyticManager] Ignore 0-accumulation for event %@ field %@";
        v13 = OS_LOG_TYPE_DEBUG;
        v14 = 22;
LABEL_13:
        _os_log_impl(&dword_1C9B70000, v11, v13, v12, buf, v14);
      }
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v10;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "[CoreAnalyticManager] Session fields name is nil for event %@; skipping";
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
      goto LABEL_13;
    }
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "[CoreAnalyticManager] Session event name is nil; skipping";
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 2;
    goto LABEL_13;
  }

LABEL_15:
}

void __70__VCPMADCoreAnalyticsManager_accumulateDoubleValue_forField_andEvent___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];

  if (!v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [*(*(a1 + 32) + 32) setObject:v3 forKeyedSubscript:*(a1 + 40)];

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = [*(*(a1 + 32) + 32) count];
      v12 = 138412546;
      v13 = v4;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[CoreAnalyticManager] Start session event %@ (total session count %lu)", &v12, 0x16u);
    }
  }

  v6 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v7 = [v6 valueForKey:*(a1 + 48)];

  v8 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  v9 = MEMORY[0x1E696AD98];
  [v7 doubleValue];
  v11 = [v9 numberWithDouble:v10 + *(a1 + 56)];
  [v8 setValue:v11 forKey:*(a1 + 48)];
}

- (id)valueForField:(id)field andEvent:(id)event
{
  fieldCopy = field;
  eventCopy = event;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__72;
  v21 = __Block_byref_object_dispose__72;
  v22 = 0;
  managementQueue = self->_managementQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__VCPMADCoreAnalyticsManager_valueForField_andEvent___block_invoke;
  v13[3] = &unk_1E834D2D8;
  v13[4] = self;
  v14 = eventCopy;
  v15 = fieldCopy;
  v16 = &v17;
  v9 = fieldCopy;
  v10 = eventCopy;
  dispatch_sync(managementQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __53__VCPMADCoreAnalyticsManager_valueForField_andEvent___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v7 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
    v3 = [v7 valueForKey:a1[6]];
    v4 = *(a1[7] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = a1[5];
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[CoreAnalyticManager] Session event %@ not available", buf, 0xCu);
  }
}

- (void)sendSessionEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    managementQueue = self->_managementQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __47__VCPMADCoreAnalyticsManager_sendSessionEvent___block_invoke;
    v7[3] = &unk_1E834D238;
    v7[4] = self;
    v8 = eventCopy;
    dispatch_sync(managementQueue, v7);
  }

  else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[CoreAnalyticManager] Session event name is nil; skipping", buf, 2u);
  }
}

void __47__VCPMADCoreAnalyticsManager_sendSessionEvent___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
    AnalyticsSendEvent();

    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 32);

    [v5 removeObjectForKey:v4];
  }

  else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[CoreAnalyticManager] Session event %@ not available; skip sending", &v7, 0xCu);
  }
}

- (id)fetchSessionEvent:(id)event
{
  eventCopy = event;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__72;
  v16 = __Block_byref_object_dispose__72;
  v17 = 0;
  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VCPMADCoreAnalyticsManager_fetchSessionEvent___block_invoke;
  block[3] = &unk_1E834CE28;
  block[4] = self;
  v10 = eventCopy;
  v11 = &v12;
  v6 = eventCopy;
  dispatch_sync(managementQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__VCPMADCoreAnalyticsManager_fetchSessionEvent___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
    v4 = [v3 initWithDictionary:v8 copyItems:1];
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[CoreAnalyticManager] Session event %@ not available; skip fetching", buf, 0xCu);
  }
}

- (void)flush
{
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[CoreAnalyticManager] flushing analytics ... ", buf, 2u);
  }

  managementQueue = self->_managementQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VCPMADCoreAnalyticsManager_flush__block_invoke;
  block[3] = &unk_1E834BDC0;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

uint64_t __35__VCPMADCoreAnalyticsManager_flush__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v2 = [*(*(a1 + 32) + 32) count];
    *buf = 134217984;
    v8 = v2;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[CoreAnalyticManager] flushSessionAnalytics (total count %lu)", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__VCPMADCoreAnalyticsManager_flush__block_invoke_225;
  v6[3] = &unk_1E834CDC0;
  v6[4] = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  return [*(*(a1 + 32) + 32) removeAllObjects];
}

void __35__VCPMADCoreAnalyticsManager_flush__block_invoke_225(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:?];
  AnalyticsSendEvent();

  [*(*(a1 + 32) + 32) removeObjectForKey:v4];
}

@end