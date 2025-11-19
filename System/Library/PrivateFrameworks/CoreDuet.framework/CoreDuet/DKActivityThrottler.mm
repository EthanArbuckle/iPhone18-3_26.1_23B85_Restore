@interface DKActivityThrottler
@end

@implementation DKActivityThrottler

void __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke(uint64_t a1, double a2)
{
  v4 = (a1 + 40);
  [(_DKActivityThrottler *)*(a1 + 32) _minimumIntervalScheduledActionsAddActionName:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke_cold_1(v4, a1);
  }

  v5 = dispatch_time(0, (a2 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke_56;
  block[3] = &unk_1E73699E8;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v16 = *(a1 + 64);
  *&v8 = v7;
  *(&v8 + 1) = *(a1 + 32);
  v12 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  v17 = *(a1 + 72);
  dispatch_after(v5, v6, block);
}

void __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke_56(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v2 = os_transaction_create();
  [(_DKActivityThrottler *)*(a1 + 40) _performOrScheduleWithTimeInterval:*(a1 + 48) name:*(a1 + 56) queue:*(a1 + 72) + 1 activityBlock:*(a1 + 64) callDepth:?];
  [(_DKActivityThrottler *)*(a1 + 40) _minimumIntervalScheduledActionsRemoveActionName:?];
}

void __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke_2(uint64_t a1)
{
  [(_DKActivityThrottler *)*(a1 + 32) _performNoMoreOftenInSecondsThan:*(a1 + 56) name:*(a1 + 64) activityBlock:*(a1 + 72) throttleBlock:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [(_DKActivityThrottler *)v2 _minimumIntervalScheduledActionsRemoveActionName:v3];
}

uint64_t __78___DKActivityThrottler__performWithDelayInSecondsOf_name_queue_activityBlock___block_invoke(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[5];
  v4 = *(a1[4] + 16);

  return [v4 removeObject:v3];
}

void __94___DKActivityThrottler__performOrScheduleWithTimeInterval_name_queue_activityBlock_callDepth___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a2 + 64)];
  v7 = 138412802;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  _os_log_debug_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Delaying activity '%@' by %@ seconds due to minimum interval of %@ seconds", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

@end