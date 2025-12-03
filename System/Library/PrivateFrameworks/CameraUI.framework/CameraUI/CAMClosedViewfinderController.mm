@interface CAMClosedViewfinderController
- (BOOL)hasClosedViewfinderReason:(int64_t)reason;
- (BOOL)isViewfinderClosed;
- (CAMClosedViewfinderController)init;
- (CAMClosedViewfinderControllerDelegate)delegate;
- (id)_descriptionForReasons:(id)reasons;
- (id)_descriptionStringForReason:(int64_t)reason;
- (id)_descriptionStringForReferenceTimeEvent:(int64_t)event;
- (id)descriptionForTimeBetweenReferenceAndNow;
- (void)_handleApplicationDidBecomeActive:(id)active;
- (void)_handleApplicationWillEnterForeground:(id)foreground;
- (void)_logWarningIfViewfinderStillClosed;
- (void)_performDelayedRemovalOfReason:(id)reason;
- (void)_scheduleLogWarningIfViewfinderStillClosedAfterDelay:(double)delay;
- (void)_updateReferenceTimeToNowForEvent:(int64_t)event;
- (void)addClosedViewfinderReason:(int64_t)reason;
- (void)cancelDelayedRemovalOfReason:(int64_t)reason;
- (void)dealloc;
- (void)removeClosedViewfinderReason:(int64_t)reason;
- (void)removeClosedViewfinderReason:(int64_t)reason afterDelay:(double)delay;
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
  _reasonsForClosingViewfinder = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v3 = [_reasonsForClosingViewfinder count] != 0;

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

- (void)addClosedViewfinderReason:(int64_t)reason
{
  v20 = *MEMORY[0x1E69E9840];
  [(CAMClosedViewfinderController *)self cancelDelayedRemovalOfReason:?];
  _reasonsForClosingViewfinder = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v6 = [_reasonsForClosingViewfinder count];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [_reasonsForClosingViewfinder addObject:v7];

  v8 = [_reasonsForClosingViewfinder count];
  if (!v6 && v8)
  {
    v9 = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:reason];
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Closing - Added closed viewfinder reason %{public}@", &v16, 0xCu);
    }

    delegate = [(CAMClosedViewfinderController *)self delegate];
    [delegate closedViewfinderController:self wantsViewfinderClosedForReason:reason];
    [(CAMClosedViewfinderController *)self _updateReferenceTimeToNowForEvent:1];
    goto LABEL_6;
  }

  if (v6 != v8)
  {
    delegate = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:reason];
      v13 = [(CAMClosedViewfinderController *)self _descriptionForReasons:_reasonsForClosingViewfinder];
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_1A3640000, delegate, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Added closed viewfinder reason %{public}@: %{public}@", &v16, 0x16u);
    }

LABEL_6:

    if ((reason - 12) >= 9 && (reason > 0xA || ((1 << reason) & 0x580) == 0))
    {
      goto LABEL_14;
    }

LABEL_13:
    [(CAMClosedViewfinderController *)self _cancelDelayedLoggingForClosedViewfinder];
    goto LABEL_14;
  }

  if (reason > 0x14)
  {
    goto LABEL_14;
  }

  if (((1 << reason) & 0x1FF580) != 0)
  {
    goto LABEL_13;
  }

  if (!reason && [_reasonsForClosingViewfinder count] == 1)
  {
    v14 = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1A3640000, v14, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Viewfinder closed for device position change reversal", &v16, 2u);
    }

    delegate2 = [(CAMClosedViewfinderController *)self delegate];
    [delegate2 closedViewfinderController:self wantsViewfinderClosedForReason:0];
  }

LABEL_14:
}

- (void)removeClosedViewfinderReason:(int64_t)reason
{
  v19 = *MEMORY[0x1E69E9840];
  [(CAMClosedViewfinderController *)self cancelDelayedRemovalOfReason:?];
  _reasonsForClosingViewfinder = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v6 = [_reasonsForClosingViewfinder count];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [_reasonsForClosingViewfinder removeObject:v7];

  v8 = [_reasonsForClosingViewfinder count];
  v9 = v8;
  if (v6 && !v8)
  {
    descriptionForTimeBetweenReferenceAndNow = [(CAMClosedViewfinderController *)self descriptionForTimeBetweenReferenceAndNow];
    v11 = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:reason];
      v15 = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = descriptionForTimeBetweenReferenceAndNow;
      _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Opening - Removed closed viewfinder reason %{public}@ %{public}@", &v15, 0x16u);
    }

    delegate = [(CAMClosedViewfinderController *)self delegate];
    [delegate closedViewfinderController:self wantsViewfinderOpenForReason:reason];
    [(CAMClosedViewfinderController *)self _cancelDelayedLoggingForClosedViewfinder];
    goto LABEL_6;
  }

  if (v6 == v8)
  {
    goto LABEL_9;
  }

  descriptionForTimeBetweenReferenceAndNow = os_log_create("com.apple.camera", "ClosedViewfinder");
  if (os_log_type_enabled(descriptionForTimeBetweenReferenceAndNow, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(CAMClosedViewfinderController *)self _descriptionStringForReason:reason];
    v14 = [(CAMClosedViewfinderController *)self _descriptionForReasons:_reasonsForClosingViewfinder];
    v15 = 138543618;
    v16 = delegate;
    v17 = 2114;
    v18 = v14;
    _os_log_impl(&dword_1A3640000, descriptionForTimeBetweenReferenceAndNow, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Removed closed viewfinder reason %{public}@: %{public}@", &v15, 0x16u);

LABEL_6:
  }

LABEL_9:
  if ((reason | 2) == 0xA && v9 && [(CAMClosedViewfinderController *)self _referenceTimeEvent]== 1)
  {
    [(CAMClosedViewfinderController *)self _updateReferenceTimeToNowForEvent:1];
  }
}

- (BOOL)hasClosedViewfinderReason:(int64_t)reason
{
  _reasonsForClosingViewfinder = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v6 = [_reasonsForClosingViewfinder containsObject:v5];

  return v6;
}

- (void)_performDelayedRemovalOfReason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (reasonCopy)
  {
    _reasonsForClosingViewfinder = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
    if ([_reasonsForClosingViewfinder containsObject:reasonCopy])
    {
      integerValue = [reasonCopy integerValue];
      v7 = os_log_create("com.apple.camera", "ClosedViewfinder");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:integerValue];
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&dword_1A3640000, v7, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Removing closed viewfinder reason %{public}@ since delay has passed", &v9, 0xCu);
      }

      [(CAMClosedViewfinderController *)self removeClosedViewfinderReason:integerValue];
    }
  }
}

- (void)removeClosedViewfinderReason:(int64_t)reason afterDelay:(double)delay
{
  v18 = *MEMORY[0x1E69E9840];
  _reasonsForClosingViewfinder = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  if ([_reasonsForClosingViewfinder containsObject:v8])
  {
    v9 = os_log_create("com.apple.camera", "ClosedViewfinder");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:reason];
      v11 = [(CAMClosedViewfinderController *)self _descriptionForReasons:_reasonsForClosingViewfinder];
      v12 = 138543874;
      v13 = v10;
      v14 = 2048;
      delayCopy = delay;
      v16 = 2114;
      v17 = v11;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "ClosedViewfinderController: Will remove closed viewfinder reason %{public}@ after delay %f: %{public}@", &v12, 0x20u);
    }

    [(CAMClosedViewfinderController *)self performSelector:sel__performDelayedRemovalOfReason_ withObject:v8 afterDelay:delay];
  }
}

- (void)cancelDelayedRemovalOfReason:(int64_t)reason
{
  v14 = *MEMORY[0x1E69E9840];
  _reasonsForClosingViewfinder = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
  v6 = os_log_create("com.apple.camera", "ClosedViewfinder");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(CAMClosedViewfinderController *)self _descriptionStringForReason:reason];
    v9 = [(CAMClosedViewfinderController *)self _descriptionForReasons:_reasonsForClosingViewfinder];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_debug_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEBUG, "ClosedViewfinderController: Cancelling delayed removal of closed viewfinder reason %{public}@: %{public}@", &v10, 0x16u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [CAMClosedViewfinderController cancelPreviousPerformRequestsWithTarget:self selector:sel__performDelayedRemovalOfReason_ object:v7];
}

- (void)_handleApplicationDidBecomeActive:(id)active
{
  if (([(CAMClosedViewfinderController *)self _referenceTimeEvent]- 1) <= 1)
  {

    [(CAMClosedViewfinderController *)self _updateReferenceTimeToNowForEvent:2];
  }
}

- (void)_handleApplicationWillEnterForeground:(id)foreground
{
  if (([(CAMClosedViewfinderController *)self _referenceTimeEvent]| 2) == 3)
  {

    [(CAMClosedViewfinderController *)self _updateReferenceTimeToNowForEvent:3];
  }
}

- (void)_updateReferenceTimeToNowForEvent:(int64_t)event
{
  [(CAMClosedViewfinderController *)self _setReferenceTime:CFAbsoluteTimeGetCurrent()];
  [(CAMClosedViewfinderController *)self _setReferenceTimeEvent:event];

  [(CAMClosedViewfinderController *)self _scheduleLogWarningIfViewfinderStillClosedAfterDelay:3.0];
}

- (void)_scheduleLogWarningIfViewfinderStillClosedAfterDelay:(double)delay
{
  [(CAMClosedViewfinderController *)self _cancelDelayedLoggingForClosedViewfinder];

  [(CAMClosedViewfinderController *)self performSelector:sel__logWarningIfViewfinderStillClosed withObject:0 afterDelay:delay];
}

- (void)_logWarningIfViewfinderStillClosed
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(CAMClosedViewfinderController *)self isViewfinderClosed])
  {
    delegate = [(CAMClosedViewfinderController *)self delegate];
    if (delegate)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(CAMClosedViewfinderController *)self _referenceTime];
      v6 = Current - v5;
      v7 = [(CAMClosedViewfinderController *)self _descriptionStringForReferenceTimeEvent:[(CAMClosedViewfinderController *)self _referenceTimeEvent]];
      _reasonsForClosingViewfinder = [(CAMClosedViewfinderController *)self _reasonsForClosingViewfinder];
      v9 = os_log_create("com.apple.camera", "ClosedViewfinder");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(CAMClosedViewfinderController *)self _descriptionForReasons:_reasonsForClosingViewfinder];
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

- (id)_descriptionStringForReferenceTimeEvent:(int64_t)event
{
  _referenceTimeEvent = [(CAMClosedViewfinderController *)self _referenceTimeEvent];
  if (_referenceTimeEvent > 3)
  {
    return &stru_1F1660A30;
  }

  else
  {
    return *(&off_1E76FA950 + _referenceTimeEvent);
  }
}

- (id)_descriptionStringForReason:(int64_t)reason
{
  if (reason > 0x14)
  {
    return 0;
  }

  else
  {
    return *(&off_1E76FA970 + reason);
  }
}

- (id)_descriptionForReasons:(id)reasons
{
  reasonsCopy = reasons;
  if ([reasonsCopy count])
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__CAMClosedViewfinderController__descriptionForReasons___block_invoke;
    v21[3] = &unk_1E76FA878;
    v22 = v5;
    selfCopy = self;
    v6 = v5;
    [reasonsCopy enumerateObjectsUsingBlock:v21];
    allObjects = [v6 allObjects];
    v8 = [allObjects sortedArrayUsingComparator:&__block_literal_global_20];

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