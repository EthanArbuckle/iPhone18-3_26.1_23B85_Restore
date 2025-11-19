@interface IAServerStats
+ (void)logShutdown;
+ (void)logStart;
+ (void)reportConnectionStatusSuccessful:(BOOL)a3;
+ (void)reportDailyStats;
@end

@implementation IAServerStats

+ (void)logStart
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.inputAnalytics.serverStats");
  v6 = objc_msgSend_integerForKey_(v4, v5, @"serviceStartCount");
  objc_msgSend_setInteger_forKey_(v4, v7, v6 + 1, @"serviceStartCount");
  v8 = sub_1D4611170();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1D460F000, v8, OS_LOG_TYPE_DEFAULT, "logStart", v9, 2u);
  }
}

+ (void)logShutdown
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.inputAnalytics.serverStats");
  v6 = objc_msgSend_integerForKey_(v4, v5, @"serviceShutdownCount");
  objc_msgSend_setInteger_forKey_(v4, v7, v6 + 1, @"serviceShutdownCount");
  v8 = sub_1D4611170();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1D460F000, v8, OS_LOG_TYPE_DEFAULT, "logShutdown", v9, 2u);
  }
}

+ (void)reportConnectionStatusSuccessful:(BOOL)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1D461D3F0;
  block[3] = &unk_1E848A6A0;
  v4 = a3;
  if (qword_1ED82C5D0 != -1)
  {
    dispatch_once(&qword_1ED82C5D0, block);
  }
}

+ (void)reportDailyStats
{
  v40[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v4 = objc_msgSend_initWithSuiteName_(v2, v3, @"com.apple.inputAnalytics.serverStats");
  v6 = objc_msgSend_integerForKey_(v4, v5, @"serviceStartCount");
  v8 = objc_msgSend_integerForKey_(v4, v7, @"serviceShutdownCount");
  v11 = objc_msgSend_now(MEMORY[0x1E695DF00], v9, v10);
  v15 = objc_msgSend_objectForKey_(v4, v12, @"lastPublishDate");
  if (!v15)
  {
    v15 = objc_msgSend_copy(v11, v13, v14);
  }

  objc_msgSend_timeIntervalSinceDate_(v11, v13, v15);
  v17 = v16;
  v18 = v16;
  v39[0] = @"serviceStartCount";
  v20 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v19, v6);
  v40[0] = v20;
  v39[1] = @"serviceShutdownCount";
  v22 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, v8);
  v40[1] = v22;
  v39[2] = @"secondsSinceLastPublish";
  v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v23, v18);
  v40[2] = v24;
  v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, v40, v39, 3);
  objc_msgSend_dispatchEvent_payload_(IAEventDispatcher, v27, @"com.apple.inputAnalytics.serverStats", v26);

  v28 = sub_1D4611170();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 134218496;
    v34 = v17;
    v35 = 2048;
    v36 = v6;
    v37 = 2048;
    v38 = v8;
    _os_log_impl(&dword_1D460F000, v28, OS_LOG_TYPE_DEFAULT, "reportDailyStats: Interval %f Starts %lu Shutdowns %lu", &v33, 0x20u);
  }

  objc_msgSend_setInteger_forKey_(v4, v29, 0, @"serviceStartCount");
  objc_msgSend_setInteger_forKey_(v4, v30, 0, @"serviceShutdownCount");
  objc_msgSend_setObject_forKey_(v4, v31, v11, @"lastPublishDate");

  v32 = *MEMORY[0x1E69E9840];
}

@end