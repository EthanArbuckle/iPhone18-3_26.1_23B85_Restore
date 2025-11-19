@interface CAMClosedViewfinderController
- (BOOL)hasClosedViewfinderReason:(int64_t)a3;
- (BOOL)isViewfinderClosed;
- (CAMClosedViewfinderController)init;
- (CAMClosedViewfinderControllerDelegate)delegate;
- (id)_descriptionForReasons:(id)a3;
- (id)_descriptionStringForReason:(int64_t)a3;
- (id)_descriptionStringForReferenceTimeEvent:(int64_t)a3;
- (id)descriptionForTimeBetweenReferenceAndNow;
- (void)_handleApplicationDidBecomeActive:(id)a3;
- (void)_handleApplicationWillEnterForeground:(id)a3;
- (void)_logWarningIfViewfinderStillClosed;
- (void)_performDelayedRemovalOfReason:(id)a3;
- (void)_scheduleLogWarningIfViewfinderStillClosedAfterDelay:(double)a3;
- (void)_updateReferenceTimeToNowForEvent:(int64_t)a3;
- (void)addClosedViewfinderReason:(int64_t)a3;
- (void)cancelDelayedRemovalOfReason:(int64_t)a3;
- (void)dealloc;
- (void)removeClosedViewfinderReason:(int64_t)a3;
- (void)removeClosedViewfinderReason:(int64_t)a3 afterDelay:(double)a4;
@end

@implementation CAMClosedViewfinderController

- (CAMClosedViewfinderController)init
{
  v8.receiver = self;
  v8.super_class = CAMClosedViewfinderController;
  v2 = [(CAMClosedViewfinderController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    reasonsForClosingViewfinder = v2->__reasonsForClosingViewfinder;
    v2->__reasonsForClosingViewfinder = v3;

    [(CAMClosedViewfinderController *)v2 _setReferenceTime:CFAbsoluteTimeGetCurrent()];
    [(CAMClosedViewfinderController *)v2 _setReferenceTimeEvent:0];
    v5 = +[CAMPriorityNotificationCenter defaultCenter];
    [v5 addObserver:v2 priority:0 selector:sel__handleApplicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];
    [v5 addObserver:v2 priority:0 selector:sel__handleApplicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
    [v5 addObserver:v2 priority:0 selector:sel__handleApplicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
    v6 = v2;
  }

  return v2;
}

- (BOOL)isViewfinderClosed
{
  v2 = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)descriptionForTimeBetweenReferenceAndNow
{
  Current = CFAbsoluteTimeGetCurrent();
  [(CAMClosedViewfinderController *)self _referenceTime];
  v5 = Current - v4;
  v6 = [(CAMClosedViewfinderController *)self _descriptionStringForReferenceTimeEvent:[(CAMClosedViewfinderController *)self _referenceTimeEvent]];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f seconds after %@", *&v5, v6];

  return v7;
}

- (CAMClosedViewfinderControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v3 = +[CAMPriorityNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CAMClosedViewfinderController;
  [(CAMClosedViewfinderController *)&v4 dealloc];
}

- (void)addClosedViewfinderReason:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  [(CAMClosedViewfinderController *)self cancelDelayedRemovalOfReason:?];
  v5 = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v6 = [v5 count];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 addObject:v7];

  v8 = [v5 count];
  if (!v6 && v8)
  {
    v9 = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:a3];
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Closing - Added closed viewfinder reason %{public}@", &v16, 0xCu);
    }

    v11 = [(CAMClosedViewfinderController *)self delegate];
    [v11 closedViewfinderController:self wantsViewfinderClosedForReason:a3];
    [(CAMClosedViewfinderController *)self _updateReferenceTimeToNowForEvent:1];
    goto LABEL_6;
  }

  if (v6 != v8)
  {
    v11 = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:a3];
      v13 = [(CAMClosedViewfinderController *)self _descriptionForReasons:v5];
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Added closed viewfinder reason %{public}@: %{public}@", &v16, 0x16u);
    }

LABEL_6:

    if ((a3 - 12) >= 9 && (a3 > 0xA || ((1 << a3) & 0x580) == 0))
    {
      goto LABEL_14;
    }

LABEL_13:
    [(CAMClosedViewfinderController *)self _cancelDelayedLoggingForClosedViewfinder];
    goto LABEL_14;
  }

  if (a3 > 0x14)
  {
    goto LABEL_14;
  }

  if (((1 << a3) & 0x1FF580) != 0)
  {
    goto LABEL_13;
  }

  if (!a3 && [v5 count] == 1)
  {
    v14 = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Viewfinder closed for device position change reversal", &v16, 2u);
    }

    v15 = [(CAMClosedViewfinderController *)self delegate];
    [v15 closedViewfinderController:self wantsViewfinderClosedForReason:0];
  }

LABEL_14:
}

- (void)removeClosedViewfinderReason:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  [(CAMClosedViewfinderController *)self cancelDelayedRemovalOfReason:?];
  v5 = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v6 = [v5 count];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 removeObject:v7];

  v8 = [v5 count];
  v9 = v8;
  if (v6 && !v8)
  {
    v10 = [(CAMClosedViewfinderController *)self descriptionForTimeBetweenReferenceAndNow];
    v11 = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:a3];
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Opening - Removed closed viewfinder reason %{public}@ %{public}@", &v15, 0x16u);
    }

    v13 = [(CAMClosedViewfinderController *)self delegate];
    [v13 closedViewfinderController:self wantsViewfinderOpenForReason:a3];
    [(CAMClosedViewfinderController *)self _cancelDelayedLoggingForClosedViewfinder];
    goto LABEL_6;
  }

  if (v6 == v8)
  {
    goto LABEL_9;
  }

  v10 = os_log_create("com.apple.camera", "ClosedViewfinder");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:a3];
    v14 = [(CAMClosedViewfinderController *)self _descriptionForReasons:v5];
    v15 = 138543618;
    v16 = v13;
    v17 = 2114;
    v18 = v14;
    _os_log_impl(&dword_1A3640000, v10, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Removed closed viewfinder reason %{public}@: %{public}@", &v15, 0x16u);

LABEL_6:
  }

LABEL_9:
  if ((a3 | 2) == 0xA && v9 && [(CAMClosedViewfinderController *)self _referenceTimeEvent]== 1)
  {
    [(CAMClosedViewfinderController *)self _updateReferenceTimeToNowForEvent:1];
  }
}

- (BOOL)hasClosedViewfinderReason:(int64_t)a3
{
  v4 = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (void)_performDelayedRemovalOfReason:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
    if ([v5 containsObject:v4])
    {
      v6 = [v4 integerValue];
      v7 = os_log_create("com.apple.camera", "ClosedViewfinder");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:v6];
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Removing closed viewfinder reason %{public}@ since delay has passed", &v9, 0xCu);
      }

      [(CAMClosedViewfinderController *)self removeClosedViewfinderReason:v6];
    }
  }
}

- (void)removeClosedViewfinderReason:(int64_t)a3 afterDelay:(double)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  if ([v7 containsObject:v8])
  {
    v9 = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:a3];
      v11 = [(CAMClosedViewfinderController *)self _descriptionForReasons:v7];
      v12 = 138543874;
      v13 = v10;
      v14 = 2048;
      v15 = a4;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Will remove closed viewfinder reason %{public}@ after delay %f: %{public}@", &v12, 0x20u);
    }

    [(CAMClosedViewfinderController *)self performSelector:sel__performDelayedRemovalOfReason_ withObject:v8 afterDelay:a4];
  }
}

- (void)cancelDelayedRemovalOfReason:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v6 = os_log_create("com.apple.camera", "ClosedViewfinder");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:a3];
    v9 = [(CAMClosedViewfinderController *)self _descriptionForReasons:v5];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_debug_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEBUG, "ClosedViewfinderController: Cancelling delayed removal of closed viewfinder reason %{public}@: %{public}@", &v10, 0x16u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [CAMClosedViewfinderController cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedRemovalOfReason_ object:v7];
}

- (void)_handleApplicationDidBecomeActive:(id)a3
{
  if (([(CAMClosedViewfinderController *)self _referenceTimeEvent]- 1) <= 1)
  {

    [(CAMClosedViewfinderController *)self _updateReferenceTimeToNowForEvent:2];
  }
}

- (void)_handleApplicationWillEnterForeground:(id)a3
{
  if (([(CAMClosedViewfinderController *)self _referenceTimeEvent]| 2) == 3)
  {

    [(CAMClosedViewfinderController *)self _updateReferenceTimeToNowForEvent:3];
  }
}

- (void)_updateReferenceTimeToNowForEvent:(int64_t)a3
{
  [(CAMClosedViewfinderController *)self _setReferenceTime:CFAbsoluteTimeGetCurrent()];
  [(CAMClosedViewfinderController *)self _setReferenceTimeEvent:a3];

  [(CAMClosedViewfinderController *)self _scheduleLogWarningIfViewfinderStillClosedAfterDelay:3.0];
}

- (void)_scheduleLogWarningIfViewfinderStillClosedAfterDelay:(double)a3
{
  [(CAMClosedViewfinderController *)self _cancelDelayedLoggingForClosedViewfinder];

  [(CAMClosedViewfinderController *)self performSelector:sel__logWarningIfViewfinderStillClosed withObject:0 afterDelay:a3];
}

- (void)_logWarningIfViewfinderStillClosed
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(CAMClosedViewfinderController *)self isViewfinderClosed])
  {
    v3 = [(CAMClosedViewfinderController *)self delegate];
    if (v3)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(CAMClosedViewfinderController *)self _referenceTime];
      v6 = Current - v5;
      v7 = [(CAMClosedViewfinderController *)self _descriptionStringForReferenceTimeEvent:[(CAMClosedViewfinderController *)self _referenceTimeEvent]];
      v8 = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
      v9 = os_log_create("com.apple.camera", "ClosedViewfinder");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(CAMClosedViewfinderController *)self _descriptionForReasons:v8];
        v11 = 134218498;
        v12 = v6;
        v13 = 2114;
        v14 = v7;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Viewfinder still closed %.3f seconds after %{public}@: %{public}@", &v11, 0x20u);
      }

      [(CAMClosedViewfinderController *)self _scheduleLogWarningIfViewfinderStillClosedAfterDelay:v6 * 0.5];
    }

    else
    {
      v7 = os_log_create("com.apple.camera", "ClosedViewfinder");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Stopping logging of closed viewfinder because delegate is gone", &v11, 2u);
      }
    }
  }
}

- (id)_descriptionStringForReferenceTimeEvent:(int64_t)a3
{
  v3 = [(CAMClosedViewfinderController *)self _referenceTimeEvent];
  if (v3 > 3)
  {
    return &stru_1F1660A30;
  }

  else
  {
    return *(&off_1E76FA950 + v3);
  }
}

- (id)_descriptionStringForReason:(int64_t)a3
{
  if (a3 > 0x14)
  {
    return 0;
  }

  else
  {
    return *(&off_1E76FA970 + a3);
  }
}

- (id)_descriptionForReasons:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__CAMClosedViewfinderController__descriptionForReasons___block_invoke;
    v21[3] = &unk_1E76FA878;
    v22 = v5;
    v23 = self;
    v6 = v5;
    [v4 enumerateObjectsUsingBlock:v21];
    v7 = [v6 allObjects];
    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_20];

    v9 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __56__CAMClosedViewfinderController__descriptionForReasons___block_invoke_3;
    v18 = &unk_1E76FA8C0;
    v10 = v9;
    v19 = v10;
    v20 = v8;
    v11 = v8;
    [v11 enumerateObjectsUsingBlock:&v15];
    [v10 appendString:@""], v15, v16, v17, v18);
    v12 = v20;
    v13 = v10;
  }

  else
  {
    v13 = &stru_1F1660A30;
  }

  return v13;
}

void __56__CAMClosedViewfinderController__descriptionForReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _descriptionStringForReason:v3];
  [v4 addObject:v5];
}

uint64_t __56__CAMClosedViewfinderController__descriptionForReasons___block_invoke_3(uint64_t a1, uint64_t a2, unint64_t a3)
{
  [*(a1 + 32) appendString:a2];
  result = [*(a1 + 40) count];
  if (result - 1 > a3)
  {
    v6 = *(a1 + 32);

    return [v6 appendString:{@", "}];
  }

  return result;
}

@end