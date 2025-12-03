@interface CPLResetTracker
+ (CPLResetTracker)currentTracker;
+ (NSArray)currentReasonDescriptions;
+ (id)registerTentativeResetReasonIfCrashing:(id)crashing;
+ (void)_registerReasonLocked:(id)locked;
+ (void)_storeReasonsLocked;
+ (void)discardTentativeResetReason:(id)reason;
+ (void)discardTracker:(id)tracker;
+ (void)initialize;
+ (void)registerLikelyResetReason:(id)reason arguments:(char *)arguments;
- (CPLResetTracker)initWithCoder:(id)coder;
- (CPLResetTracker)initWithResetReasons:(id)reasons;
- (NSDate)earliestReasonDate;
- (NSDate)likelyResetDate;
- (id)likelyResetReasonWithImmediateReason:(id)reason;
@end

@implementation CPLResetTracker

- (CPLResetTracker)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (initWithCoder__onceToken_6467 != -1)
  {
    dispatch_once(&initWithCoder__onceToken_6467, &__block_literal_global_12);
  }

  v5 = [coderCopy decodeObjectOfClasses:initWithCoder__arrayForResetReasonClasses forKey:@"r"];
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = CPLResetTracker;
    v6 = [(CPLResetTracker *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_resetReasons, v5);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

uint64_t __33__CPLResetTracker_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v3 = initWithCoder__arrayForResetReasonClasses;
  initWithCoder__arrayForResetReasonClasses = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (NSDate)likelyResetDate
{
  firstObject = [(NSArray *)self->_resetReasons firstObject];
  date = [firstObject date];
  v4 = date;
  if (date)
  {
    date2 = date;
  }

  else
  {
    date2 = [MEMORY[0x1E695DF00] date];
  }

  v6 = date2;

  return v6;
}

- (id)likelyResetReasonWithImmediateReason:(id)reason
{
  resetReasons = self->_resetReasons;
  reasonCopy = reason;
  firstObject = [(NSArray *)resetReasons firstObject];
  reason = [firstObject reason];
  v7 = reason;
  if (reason)
  {
    v8 = reason;
  }

  else
  {
    v8 = reasonCopy;
  }

  v9 = v8;

  return v8;
}

- (NSDate)earliestReasonDate
{
  firstObject = [(NSArray *)self->_resetReasons firstObject];
  date = [firstObject date];
  v4 = date;
  if (date)
  {
    distantFuture = date;
  }

  else
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  }

  v6 = distantFuture;

  return v6;
}

- (CPLResetTracker)initWithResetReasons:(id)reasons
{
  reasonsCopy = reasons;
  v10.receiver = self;
  v10.super_class = CPLResetTracker;
  v5 = [(CPLResetTracker *)&v10 init];
  if (v5)
  {
    v6 = [reasonsCopy sortedArrayUsingComparator:&__block_literal_global_6472];
    v7 = [v6 copy];
    resetReasons = v5->_resetReasons;
    v5->_resetReasons = v7;
  }

  return v5;
}

uint64_t __40__CPLResetTracker_initWithResetReasons___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

+ (void)discardTentativeResetReason:(id)reason
{
  reasonCopy = reason;
  v5 = _CPLResetTrackerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CPLResetTracker_discardTentativeResetReason___block_invoke;
  v7[3] = &unk_1E861B100;
  v8 = reasonCopy;
  selfCopy = self;
  v6 = reasonCopy;
  dispatch_sync(v5, v7);
}

uint64_t __47__CPLResetTracker_discardTentativeResetReason___block_invoke(uint64_t a1)
{
  result = [_currentReasons indexOfObject:*(a1 + 32)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    [_currentReasons removeObject:*(a1 + 32)];
    v3 = *(a1 + 40);

    return [v3 _storeReasonsLocked];
  }

  return result;
}

+ (id)registerTentativeResetReasonIfCrashing:(id)crashing
{
  crashingCopy = crashing;
  v5 = [CPLResetReason alloc];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [(CPLResetReason *)v5 initWithDate:date reason:crashingCopy];

  [(CPLResetReason *)v7 setTentative:1];
  v8 = _CPLResetTrackerQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CPLResetTracker_registerTentativeResetReasonIfCrashing___block_invoke;
  v11[3] = &unk_1E861B100;
  selfCopy = self;
  v9 = v7;
  v12 = v9;
  dispatch_sync(v8, v11);

  return v9;
}

+ (NSArray)currentReasonDescriptions
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6496;
  v14 = __Block_byref_object_dispose__6497;
  v15 = 0;
  date = [MEMORY[0x1E695DF00] date];
  v3 = _CPLResetTrackerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CPLResetTracker_currentReasonDescriptions__block_invoke;
  v7[3] = &unk_1E861A850;
  v8 = date;
  v9 = &v10;
  v4 = date;
  dispatch_sync(v3, v7);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __44__CPLResetTracker_currentReasonDescriptions__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  v3 = [v2 initWithCapacity:{objc_msgSend(_currentReasons, "count")}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = _currentReasons;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 tentative] & 1) == 0)
        {
          v12 = *(*(*(a1 + 40) + 8) + 40);
          v13 = [v11 reasonDescriptionWithNow:*(a1 + 32)];
          [v12 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)discardTracker:(id)tracker
{
  trackerCopy = tracker;
  v5 = _CPLResetTrackerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__CPLResetTracker_discardTracker___block_invoke;
  v7[3] = &unk_1E861B100;
  v8 = trackerCopy;
  selfCopy = self;
  v6 = trackerCopy;
  dispatch_sync(v5, v7);
}

void __34__CPLResetTracker_discardTracker___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) resetReasons];
  if ([v2 count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v16 + 1) + 8 * v8) uuid];
          [v3 addObject:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v10 = _currentReasons;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __34__CPLResetTracker_discardTracker___block_invoke_2;
    v14[3] = &unk_1E861C248;
    v11 = v3;
    v15 = v11;
    v12 = [v10 indexesOfObjectsPassingTest:v14];
    if ([v12 count])
    {
      [_currentReasons removeObjectsAtIndexes:v12];
      [*(a1 + 40) _storeReasonsLocked];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __34__CPLResetTracker_discardTracker___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  v4 = [v2 containsObject:v3];

  return v4;
}

+ (CPLResetTracker)currentTracker
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6496;
  v9 = __Block_byref_object_dispose__6497;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CPLResetTracker_currentTracker__block_invoke;
  block[3] = &unk_1E861B528;
  block[4] = &v5;
  dispatch_sync(_CPLResetTrackerQueue, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __33__CPLResetTracker_currentTracker__block_invoke(uint64_t a1)
{
  v2 = [CPLResetTracker alloc];
  v3 = [(CPLResetTracker *)v2 initWithResetReasons:_currentReasons];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

+ (void)registerLikelyResetReason:(id)reason arguments:(char *)arguments
{
  v6 = MEMORY[0x1E696AEC0];
  reasonCopy = reason;
  v8 = [[v6 alloc] initWithFormat:reasonCopy arguments:arguments];

  v9 = [CPLResetReason alloc];
  date = [MEMORY[0x1E695DF00] date];
  v11 = [(CPLResetReason *)v9 initWithDate:date reason:v8];

  v12 = _CPLResetTrackerQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__CPLResetTracker_registerLikelyResetReason_arguments___block_invoke;
  v14[3] = &unk_1E861B100;
  v15 = v11;
  selfCopy = self;
  v13 = v11;
  dispatch_sync(v12, v14);
}

+ (void)_registerReasonLocked:(id)locked
{
  lockedCopy = locked;
  if ([_currentReasons count] <= 9)
  {
    [_currentReasons addObject:lockedCopy];
    [self _storeReasonsLocked];
  }
}

+ (void)_storeReasonsLocked
{
  v17 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([_currentReasons count])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    v4 = [v3 initWithCapacity:{objc_msgSend(_currentReasons, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = _currentReasons;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          asPlist = [*(*(&v12 + 1) + 8 * v9) asPlist];
          [v4 addObject:asPlist];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [standardUserDefaults setObject:v4 forKey:@"CPLResetReasons"];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:@"CPLResetReasons"];
  }

  [standardUserDefaults synchronize];

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)initialize
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = dispatch_queue_create("com.apple.cpl.resettracker", 0);
  v3 = _CPLResetTrackerQueue;
  _CPLResetTrackerQueue = v2;

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults arrayForKey:@"CPLResetReasons"];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  v7 = _currentReasons;
  _currentReasons = v6;

  if ([v5 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [CPLResetReason alloc];
          v16 = [(CPLResetReason *)v15 initWithPlist:v14, v18];
          if (v16)
          {
            [_currentReasons addObject:v16];
            if (++v11 == 10)
            {

              goto LABEL_13;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end