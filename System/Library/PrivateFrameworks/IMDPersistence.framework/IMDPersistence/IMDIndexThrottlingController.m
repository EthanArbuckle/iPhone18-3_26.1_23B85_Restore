@interface IMDIndexThrottlingController
+ (id)sharedController;
- (BOOL)_cleanup;
- (BOOL)_isThrottled;
- (BOOL)isThrottled;
- (BOOL)shouldDeferIndexingActionWithContext:(id)a3;
- (IMDIndexThrottlingController)init;
- (id)_nextExpiringThrottle;
- (id)_stringForThrottleState:(int64_t)a3;
- (int64_t)_calculateThrottleState;
- (void)_beginThrottlingForIdentifier:(id)a3 untilDate:(id)a4;
- (void)_finishThrottlingForIdentifier:(id)a3;
- (void)_reload;
- (void)_rescheduleTimer;
- (void)_updateThrottleState;
- (void)beginThrottlingForIdentifier:(id)a3 untilDate:(id)a4;
- (void)finishThrottlingForIdentifier:(id)a3;
- (void)isThrottledWithCompletionBlock:(id)a3;
- (void)reload;
- (void)timerFired;
@end

@implementation IMDIndexThrottlingController

+ (id)sharedController
{
  if (qword_1EBA53AE8 != -1)
  {
    sub_1B7CFB6E0();
  }

  v3 = qword_1EBA53AB8;

  return v3;
}

- (IMDIndexThrottlingController)init
{
  v8.receiver = self;
  v8.super_class = IMDIndexThrottlingController;
  v2 = [(IMDIndexThrottlingController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.IMDPersistence.IMDIndexThrottlingController", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    objc_msgSend_reload(v2, v5, v6);
  }

  return v2;
}

- (void)reload
{
  v4 = objc_msgSend_queue(self, a2, v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCA710;
  block[3] = &unk_1E7CB6AE0;
  block[4] = self;
  dispatch_barrier_sync(v4, block);
}

- (BOOL)isThrottled
{
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_queue(self, a2, v2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BCA828;
  v8[3] = &unk_1E7CBB6F0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_barrier_sync(v4, v8);

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1B7CFB6F4(v10, v5);
  }

  v6 = *(v10[0] + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)isThrottledWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  dispatch_group_enter(v5);
  v8 = objc_msgSend_queue(self, v6, v7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCA9E8;
  block[3] = &unk_1E7CBC338;
  v16 = v5;
  v17 = v18;
  block[4] = self;
  v9 = v5;
  dispatch_barrier_async(v8, block);

  v10 = dispatch_get_global_queue(2, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BCAA30;
  v12[3] = &unk_1E7CBC388;
  v13 = v4;
  v14 = v18;
  v11 = v4;
  dispatch_group_notify(v9, v10, v12);

  _Block_object_dispose(v18, 8);
}

- (void)beginThrottlingForIdentifier:(id)a3 untilDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_queue(self, v8, v9);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCAB74;
  block[3] = &unk_1E7CB6798;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(v10, block);
}

- (void)finishThrottlingForIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_queue(self, v5, v6);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BCAC38;
  v9[3] = &unk_1E7CB6770;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (BOOL)shouldDeferIndexingActionWithContext:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isBGSTMessageProcessingEnabled = objc_msgSend_isBGSTMessageProcessingEnabled(v7, v8, v9);

  if (!isBGSTMessageProcessingEnabled)
  {
    goto LABEL_9;
  }

  if ((objc_msgSend_forceDeferral(v4, v11, v12) & 1) == 0)
  {
    objc_msgSend_reason(v4, v13, v14);
    if ((!IMCoreSpotlightIndexReasonIsCritical() || (objc_msgSend_allowCriticalThrottleBypass(MEMORY[0x1E69A7FF8], v16, v17) & 1) == 0) && (objc_msgSend_ignoreThrottling(MEMORY[0x1E69A7FF8], v16, v17) & 1) == 0 && (objc_msgSend_ignoreThrottle(v4, v18, v19) & 1) == 0 && (objc_msgSend_runningViaBGST(v4, v20, v21) & 1) == 0)
    {
      if (objc_msgSend_reason(v4, v22, v23) != 7 && objc_msgSend_reason(v4, v25, v26) != 1016 && objc_msgSend_reason(v4, v27, v28) != 1005)
      {
        isThrottled = objc_msgSend_isThrottled(self, v29, v30);
        goto LABEL_10;
      }

      goto LABEL_3;
    }

LABEL_9:
    isThrottled = 0;
    goto LABEL_10;
  }

LABEL_3:
  isThrottled = 1;
LABEL_10:

  return isThrottled;
}

- (void)timerFired
{
  v4 = objc_msgSend_queue(self, a2, v2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BCADC4;
  block[3] = &unk_1E7CB6AE0;
  block[4] = self;
  dispatch_async(v4, block);
}

- (BOOL)_isThrottled
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_throttles(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    if (objc_msgSend_ignoreThrottling(MEMORY[0x1E69A7FF8], v8, v9))
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v12 = objc_msgSend_date(MEMORY[0x1E695DF00], v10, v11);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = objc_msgSend_throttles(self, v13, v14, 0);
      v18 = objc_msgSend_allValues(v15, v16, v17);

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v26, v30, 16);
      if (v7)
      {
        v21 = *v27;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            objc_msgSend_timeIntervalSinceDate_(*(*(&v26 + 1) + 8 * i), v20, v12);
            if (v23 > 0.0)
            {
              LOBYTE(v7) = 1;
              goto LABEL_14;
            }
          }

          v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v26, v30, 16);
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v7;
}

- (int64_t)_calculateThrottleState
{
  if (objc_msgSend__isThrottled(self, a2, v2))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)_stringForThrottleState:(int64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"throttled";
  }

  if (a3 == 2)
  {
    return @"not throttled";
  }

  else
  {
    return v3;
  }
}

- (void)_updateThrottleState
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_throttleState(self, a2, v2);
  v7 = objc_msgSend__calculateThrottleState(self, v5, v6);
  objc_msgSend_setThrottleState_(self, v8, v7);
  if (v4 != v7)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = objc_msgSend__stringForThrottleState_(self, v11, v7);
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Throttle state changed to %@", &v14, 0xCu);
      }
    }

    objc_msgSend_setLastThrottleState_(IMIndexThrottleMonitor, v9, v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_cleanup
{
  v4 = objc_msgSend_throttles(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (!v7)
  {
    return 0;
  }

  v10 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = objc_msgSend_throttles(self, v12, v13);
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = sub_1B7BCB274;
  v30 = &unk_1E7CBC3B0;
  v31 = v10;
  v15 = v11;
  v32 = v15;
  v16 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v14, v17, &v27);

  v20 = objc_msgSend_count(v15, v18, v19, v27, v28, v29, v30);
  v23 = v20 != 0;
  if (v20)
  {
    v24 = objc_msgSend_throttles(self, v21, v22);
    objc_msgSend_removeObjectsForKeys_(v24, v25, v15);
  }

  return v23;
}

- (void)_reload
{
  v10 = objc_msgSend_throttles(IMIndexThrottleMonitor, a2, v2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v10;
  }

  else
  {

    v6 = MEMORY[0x1E695E0F8];
  }

  v11 = v6;
  v7 = objc_msgSend_mutableCopy(v6, v4, v5);
  throttles = self->_throttles;
  self->_throttles = v7;

  objc_msgSend__cleanupAndSaveOnlyIfCleanedUp_(self, v9, 1);
}

- (id)_nextExpiringThrottle
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, v2);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = objc_msgSend_throttles(self, v5, v6, 0);
  v10 = objc_msgSend_allValues(v7, v8, v9);
  v12 = objc_msgSend_sortedArrayUsingSelector_(v10, v11, sel_compare_);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v22, v26, 16);
  if (v15)
  {
    v16 = *v23;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        objc_msgSend_timeIntervalSinceDate_(v18, v14, v4);
        if (v19 > 0.0)
        {
          v15 = v18;
          goto LABEL_11;
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v22, v26, 16);
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_rescheduleTimer
{
  v4 = objc_msgSend_timer(self, a2, v2);
  objc_msgSend_invalidate(v4, v5, v6);

  objc_msgSend_setTimer_(self, v7, 0);
  v10 = objc_msgSend__nextExpiringThrottle(self, v8, v9);
  v13 = v10;
  if (v10)
  {
    objc_msgSend_timeIntervalSinceNow(v10, v11, v12);
    v15 = v14;
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CFB7F8(v16, v15);
    }

    v18 = objc_msgSend_timerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x1E695DFF0], v17, self, sel_timerFired, 0, 0, v15);
    objc_msgSend_setTimer_(self, v19, v18);

    v22 = objc_msgSend_mainRunLoop(MEMORY[0x1E695DFD0], v20, v21);
    v25 = objc_msgSend_timer(self, v23, v24);
    objc_msgSend_addTimer_forMode_(v22, v26, v25, *MEMORY[0x1E695DA28]);
  }
}

- (void)_beginThrottlingForIdentifier:(id)a3 untilDate:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = a4;
  if (!v9)
  {
    v9 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v7, v8, 900.0);
  }

  v10 = objc_msgSend_throttles(self, v7, v8);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, v6);

  if (v12 && objc_msgSend_compare_(v9, v13, v12) != 1)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = 138412546;
        v24 = v6;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Ignoring request to begin throttling for %@ because we are already throttling for a longer duration %@", &v23, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v23 = 138412546;
        v24 = v6;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Beginning throttling for %@ until %@", &v23, 0x16u);
      }
    }

    v17 = objc_msgSend_throttles(self, v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v9, v6);

    objc_msgSend__save(self, v19, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_finishThrottlingForIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Finished throttling for %@", &v13, 0xCu);
    }
  }

  v8 = objc_msgSend_throttles(self, v5, v6);
  objc_msgSend_removeObjectForKey_(v8, v9, v4);

  objc_msgSend__save(self, v10, v11);
  v12 = *MEMORY[0x1E69E9840];
}

@end