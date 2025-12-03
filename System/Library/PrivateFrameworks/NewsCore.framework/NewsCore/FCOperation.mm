@interface FCOperation
- (BOOL)hasOperationStarted;
- (BOOL)validateOperationError:(id *)error;
- (BOOL)waitUntilFinishedWithTimeout:(double)timeout;
- (FCOperation)init;
- (NSDictionary)errorUserInfo;
- (NSString)longOperationDescription;
- (void)_associateChildOperation:(uint64_t)operation;
- (void)_finishOperationWithError:(uint64_t)error;
- (void)_finishedPerformingOperationWithError:(void *)error;
- (void)_handleRetryFromError:(void *)error signal:;
- (void)_startIfNeeded;
- (void)addCompletionHandler:(id)handler;
- (void)associateChildOperation:(id)operation;
- (void)associateChildOperations:(id)operations;
- (void)cancel;
- (void)cancelChildOperations;
- (void)dealloc;
- (void)finishFromEarlyCancellation;
- (void)finishedPerformingOperationWithError:(id)error;
- (void)performOperation;
- (void)setFlags:(int64_t)flags;
- (void)setPurpose:(id)purpose;
- (void)setQualityOfService:(int64_t)service;
- (void)setRelativePriority:(int64_t)priority;
@end

@implementation FCOperation

- (FCOperation)init
{
  v28 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = FCOperation;
  v2 = [(FCOperation *)&v25 init];
  if (v2)
  {
    v3 = FCGenerateOperationID();
    v4 = *(v2 + 38);
    *(v2 + 38) = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(v2 + 41);
    *(v2 + 41) = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69B6920]);
    v8 = *(v2 + 42);
    *(v2 + 42) = v7;

    v9 = [[FCOnce alloc] initWithOptions:1];
    v10 = *(v2 + 43);
    *(v2 + 43) = v9;

    objc_storeStrong(v2 + 37, @"unknown");
    *(v2 + 35) = 0x7FEFFFFFFFFFFFFFLL;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %@>", objc_opt_class(), *(v2 + 38)];
    v12 = *(v2 + 32);
    *(v2 + 32) = v11;

    v13 = dispatch_group_create();
    v14 = *(v2 + 44);
    *(v2 + 44) = v13;

    dispatch_group_enter(*(v2 + 44));
    v15 = FCCurrentQoSOrUtilityIfMain();
    v24.receiver = v2;
    v24.super_class = FCOperation;
    [(FCOperation *)&v24 setQualityOfService:v15];
    if (v15 == 33 || v15 == 25)
    {
      v16 = 4;
      v17 = 1;
    }

    else if (v15 == 9)
    {
      v16 = -4;
      v17 = -1;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    *(v2 + 33) = v17;
    v23.receiver = v2;
    v23.super_class = FCOperation;
    [(FCOperation *)&v23 setQueuePriority:v16];
    v18 = FCOperationLog;
    if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      shortOperationDescription = [v2 shortOperationDescription];
      *buf = 138543362;
      v27 = shortOperationDescription;
      _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ created", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_startIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  if (self && [self[43] trigger])
  {
    objc_storeStrong(self + 45, self);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [self setOperationStartTime:?];
    selfCopy = self;
    v24 = 0.0;
    throttleGroup = [selfCopy throttleGroup];
    if (throttleGroup && (v4 = throttleGroup, +[FCThrottleRegistry shared](FCThrottleRegistry, "shared"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 shouldThrottleGroup:v4 outRetryAfter:&v24], v5, v4, v6))
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      errorUserInfo = [selfCopy errorUserInfo];
      [dictionary addEntriesFromDictionary:errorUserInfo];

      v9 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
      [dictionary setObject:v9 forKey:@"FCErrorRetryAfter"];

      v10 = [MEMORY[0x1E696ABC0] fc_errorWithCode:12 description:@"The operation was throttled." additionalUserInfo:dictionary];
      [(FCOperation *)selfCopy _finishOperationWithError:v10];

      v11 = 0;
    }

    else
    {
      v23 = 0;
      v12 = [selfCopy validateOperationError:&v23];
      v11 = v23;
      if (v12)
      {
        if ([selfCopy isCancelled])
        {
          [selfCopy finishFromEarlyCancellation];
        }

        else
        {
          [selfCopy willChangeValueForKey:@"isExecuting"];
          atomic_store(1u, selfCopy + 248);
          [selfCopy didChangeValueForKey:@"isExecuting"];
          v13 = FCOperationLog;
          if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v13;
            longOperationDescription = [selfCopy longOperationDescription];
            *buf = 138543362;
            v26 = longOperationDescription;
            _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ started", buf, 0xCu);
          }

          [selfCopy timeoutDuration];
          if (v16 == 1.79769313e308)
          {
            v17 = -1;
          }

          else
          {
            v17 = dispatch_time(0, (v16 * 1000000000.0));
          }

          v18 = FCDispatchQueueForQualityOfService([selfCopy qualityOfService]);
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __29__FCOperation__startIfNeeded__block_invoke_85;
          v22[3] = &unk_1E7C36EA0;
          v22[4] = selfCopy;
          v19 = FCHandleOperationTimeout(v17, v18, v22);
          objc_setProperty_nonatomic_copy(selfCopy, v20, v19, 320);

          [selfCopy prepareOperation];
          [selfCopy performOperation];
        }
      }

      else
      {
        [(FCOperation *)selfCopy _finishOperationWithError:v11];
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (NSString)longOperationDescription
{
  v3 = FCStringFromQualityOfService([(FCOperation *)self qualityOfService]);
  v4 = FCStringFromQueuePriority([(FCOperation *)self queuePriority]);
  purpose = [(FCOperation *)self purpose];

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  operationID = [(FCOperation *)self operationID];
  v9 = operationID;
  if (purpose == @"unknown")
  {
    v11 = [v6 stringWithFormat:@"<%@ %@, qos=%@, priority=%@>", v7, operationID, v3, v4];
  }

  else
  {
    purpose2 = [(FCOperation *)self purpose];
    v11 = [v6 stringWithFormat:@"<%@ %@, qos=%@, priority=%@, purpose=%@>", v7, v9, v3, v4, purpose2];
  }

  return v11;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_finished);
  v4 = atomic_load(&self->_executing);
  if ((v3 & 1) == 0 && (v4 & 1) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"an operation should never be deallocated while still executing"];
    *buf = 136315906;
    v9 = "[FCOperation dealloc]";
    v10 = 2080;
    v11 = "FCOperation.m";
    v12 = 1024;
    v13 = 93;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v3 & 1) == 0)
  {
LABEL_5:
    dispatch_group_leave(self->_finishedGroup);
  }

LABEL_6:
  v7.receiver = self;
  v7.super_class = FCOperation;
  [(FCOperation *)&v7 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = FCOperation;
  [(FCOperation *)&v3 cancel];
  [(FCOperation *)self cancelChildOperations];
}

- (void)setRelativePriority:(int64_t)priority
{
  if (self->_relativePriority != priority)
  {
    v9[8] = v3;
    v9[9] = v4;
    self->_relativePriority = priority;
    if ((priority + 1) >= 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4 * (priority + 1) - 4;
    }

    [(FCOperation *)self setQueuePriority:v7];
    if (([(FCOperation *)self propertiesInheritedByChildOperations]& 2) != 0)
    {
      childOperationsLock = self->_childOperationsLock;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __35__FCOperation_setRelativePriority___block_invoke;
      v9[3] = &unk_1E7C3C970;
      v9[4] = self;
      v9[5] = priority;
      [(NFUnfairLock *)childOperationsLock performWithLockSync:v9];
    }
  }
}

void __35__FCOperation_setRelativePriority___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[41];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (v8)
        {
          if ([*(*(&v12 + 1) + 8 * v7) conformsToProtocol:{&unk_1F2E74638, v12}])
          {
            v9 = v8;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        [v10 setRelativePriority:*(a1 + 40)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setQualityOfService:(int64_t)service
{
  v8.receiver = self;
  v8.super_class = FCOperation;
  if ([(FCOperation *)&v8 qualityOfService]!= service)
  {
    v7.receiver = self;
    v7.super_class = FCOperation;
    [(FCOperation *)&v7 setQualityOfService:service];
    if (([(FCOperation *)self propertiesInheritedByChildOperations]& 1) != 0)
    {
      if (self)
      {
        childOperationsLock = self->_childOperationsLock;
      }

      else
      {
        childOperationsLock = 0;
      }

      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __35__FCOperation_setQualityOfService___block_invoke;
      v6[3] = &unk_1E7C3C970;
      v6[4] = self;
      v6[5] = service;
      [(NFUnfairLock *)childOperationsLock performWithLockSync:v6];
    }
  }
}

void __35__FCOperation_setQualityOfService___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[41];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (v8)
        {
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        [v10 setQualityOfService:{*(a1 + 40), v12}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setFlags:(int64_t)flags
{
  if (self->_flags != flags)
  {
    v8[8] = v3;
    v8[9] = v4;
    self->_flags = flags;
    if (([(FCOperation *)self propertiesInheritedByChildOperations]& 8) != 0)
    {
      childOperationsLock = self->_childOperationsLock;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __24__FCOperation_setFlags___block_invoke;
      v8[3] = &unk_1E7C3C970;
      v8[4] = self;
      v8[5] = flags;
      [(NFUnfairLock *)childOperationsLock performWithLockSync:v8];
    }
  }
}

void __24__FCOperation_setFlags___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[41];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (v8)
        {
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        [v10 setFlags:{*(a1 + 40), v12}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setPurpose:(id)purpose
{
  purposeCopy = purpose;
  if (purposeCopy)
  {
    v5 = MEMORY[0x1E69E58C0];
    purpose = [(FCOperation *)self purpose];
    LOBYTE(v5) = [v5 nf_object:purposeCopy isEqualToObject:purpose];

    if ((v5 & 1) == 0)
    {
      v7 = [purposeCopy copy];
      purpose = self->_purpose;
      self->_purpose = v7;

      if (([(FCOperation *)self propertiesInheritedByChildOperations]& 4) != 0)
      {
        childOperationsLock = self->_childOperationsLock;
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __26__FCOperation_setPurpose___block_invoke_2;
        v10[3] = &unk_1E7C36C58;
        v10[4] = self;
        v11 = purposeCopy;
        [(NFUnfairLock *)childOperationsLock performWithLockSync:v10];
      }
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __26__FCOperation_setPurpose___block_invoke;
    v15 = &unk_1E7C36EA0;
    selfCopy = self;
    [(FCOperation *)self setPurpose:@"unknown"];
  }
}

void __26__FCOperation_setPurpose___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[41];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        if (v8)
        {
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;
        [v10 setPurpose:{*(a1 + 40), v12}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)validateOperationError:(id *)error
{
  validateOperation = [(FCOperation *)self validateOperation];
  if (validateOperation)
  {
    *error = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    errorUserInfo = [(FCOperation *)self errorUserInfo];
    *error = [v6 fc_errorWithCode:9 description:@"The operation failed validation." additionalUserInfo:errorUserInfo];
  }

  return validateOperation;
}

- (void)_finishOperationWithError:(uint64_t)error
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (error)
  {
    if ([error isFinished] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      shortOperationDescription = [error shortOperationDescription];
      v18 = [v16 initWithFormat:@"operation %@ must only be finished once", shortOperationDescription];
      *buf = 136315906;
      v23 = "[FCOperation _finishOperationWithError:]";
      v24 = 2080;
      v25 = "FCOperation.m";
      v26 = 1024;
      v27 = 566;
      v28 = 2114;
      v29 = v18;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    if ([error isCancelled])
    {
      v6 = FCOperationLog;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        shortOperationDescription2 = [error shortOperationDescription];
        *buf = 138543362;
        v23 = shortOperationDescription2;
        v9 = "%{public}@ cancelled";
        v10 = v7;
        v11 = 12;
LABEL_16:
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }

LABEL_17:
      [error operationWillFinishWithError:v3];
      [error willChangeValueForKey:@"isExecuting"];
      atomic_store(0, (error + 248));
      [error didChangeValueForKey:@"isExecuting"];
      [error willChangeValueForKey:@"isFinished"];
      atomic_store(1u, (error + 249));
      [error didChangeValueForKey:@"isFinished"];
      dispatch_group_leave(*(error + 352));
      v14 = *(error + 336);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __41__FCOperation__finishOperationWithError___block_invoke;
      v21[3] = &unk_1E7C36EA0;
      v21[4] = error;
      [v14 performWithLockSync:v21];
      [error operationDidFinishWithError:v3];
      objc_storeStrong((error + 360), 0);
      goto LABEL_18;
    }

    v12 = FCOperationLog;
    if (v3)
    {
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_ERROR))
      {
        v19 = v12;
        shortOperationDescription3 = [error shortOperationDescription];
        *buf = 138543618;
        v23 = shortOperationDescription3;
        v24 = 2114;
        v25 = v3;
        _os_log_error_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_ERROR, "%{public}@ failed with error: %{public}@. This log is being duplicated as an default-level log", buf, 0x16u);

        v12 = FCOperationLog;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v7 = v12;
      shortOperationDescription2 = [error shortOperationDescription];
      *buf = 138543618;
      v23 = shortOperationDescription2;
      v24 = 2114;
      v25 = v3;
      v9 = "%{public}@ failed with error: %{public}@. This log is being duplicated as an error-level log";
    }

    else
    {
      if (!os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v7 = v12;
      shortOperationDescription2 = [error shortOperationDescription];
      [error operationStartTime];
      *buf = 138543618;
      v23 = shortOperationDescription2;
      v24 = 2048;
      v25 = (fmax(v5 - v13, 0.0) * 1000.0);
      v9 = "%{public}@ finished with total time: %llums";
    }

    v10 = v7;
    v11 = 22;
    goto LABEL_16;
  }

LABEL_18:

  v15 = *MEMORY[0x1E69E9840];
}

void __29__FCOperation__startIfNeeded__block_invoke_85(uint64_t a1)
{
  [*(a1 + 32) cancelChildOperations];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] fc_errorWithCode:15 description:@"The operation timed out."];
  [(FCOperation *)v2 _finishedPerformingOperationWithError:v3];
}

- (void)_finishedPerformingOperationWithError:(void *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (error)
  {
    if (!v3 || ([v3 fc_isOperationThrottledError] & 1) != 0)
    {
      goto LABEL_17;
    }

    v17 = 0.0;
    if ([error shouldStartThrottlingWithError:v4 retryAfter:&v17])
    {
      v5 = v17;
      v6 = v4;
      throttleGroup = [error throttleGroup];
      if (throttleGroup)
      {
        v8 = FCOperationLog;
        if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v8;
          shortOperationDescription = [error shortOperationDescription];
          throttleGroup2 = [error throttleGroup];
          *buf = 138544130;
          v19 = shortOperationDescription;
          v20 = 2112;
          v21 = throttleGroup2;
          v22 = 2048;
          *v23 = v5;
          *&v23[8] = 2114;
          *&v23[10] = v6;
          _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ will start throttling requests from group %@ for %.2f seconds due to error %{public}@", buf, 0x2Au);
        }

        v12 = +[FCThrottleRegistry shared];
        [v12 throttleGroup:throttleGroup retryAfter:v5];
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"a throttled operation must be part of a throttle group"];
        *buf = 136315906;
        v19 = "[FCOperation _handleThrottlingFromError:delay:]_block_invoke";
        v20 = 2080;
        v21 = "FCOperation.m";
        v22 = 1024;
        *v23 = 367;
        *&v23[4] = 2114;
        *&v23[6] = v12;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

LABEL_15:
      goto LABEL_16;
    }

    if ([error isCancelled])
    {
      goto LABEL_17;
    }

    maxRetries = [error maxRetries];
    if ([error retryCount] >= maxRetries)
    {
      goto LABEL_17;
    }

    v16 = 0;
    v14 = [error canRetryWithError:v4 retryAfter:&v16];
    v6 = v16;
    if (!v14)
    {
LABEL_16:

LABEL_17:
      [(FCOperation *)error _finishOperationWithError:v4];
      goto LABEL_18;
    }

    [(FCOperation *)error _handleRetryFromError:v4 signal:v6];
  }

LABEL_18:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)performOperation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  if (v3 != objc_opt_class())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
      *buf = 136315906;
      v12 = "[FCOperation performOperation]";
      v13 = 2080;
      v14 = "FCOperation.m";
      v15 = 1024;
      v16 = 316;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D930];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCOperation performOperation]"];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v4 = *MEMORY[0x1E69E9840];

  [(FCOperation *)self finishedPerformingOperationWithError:0];
}

- (void)finishedPerformingOperationWithError:(id)error
{
  errorCopy = error;
  if (!self)
  {
    v5 = 0;
LABEL_4:
    [(FCOperation *)self _finishedPerformingOperationWithError:errorCopy];
    goto LABEL_5;
  }

  v4 = self->_timedOutTest;
  v5 = v4;
  if (!v4 || ((*(v4 + 2))(v4) & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)_handleRetryFromError:(void *)error signal:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  errorCopy = error;
  [self setRetryCount:{objc_msgSend(self, "retryCount") + 1}];
  v7 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    shortOperationDescription = [self shortOperationDescription];
    *buf = 138544386;
    v18 = shortOperationDescription;
    v19 = 2048;
    retryCount = [self retryCount];
    v21 = 2048;
    maxRetries = [self maxRetries];
    v23 = 2114;
    v24 = errorCopy;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform retry %lu of %lu after %{public}@ due to error: %{public}@", buf, 0x34u);
  }

  v10 = FCDispatchQueueForQualityOfService([self qualityOfService]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__FCOperation__handleRetryFromError_signal___block_invoke;
  v14[3] = &unk_1E7C44538;
  v14[4] = self;
  v11 = v5;
  v15 = v11;
  v12 = errorCopy;
  v16 = v12;
  [v12 onQueue:v10 signal:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __44__FCOperation__handleRetryFromError_signal___block_invoke(uint64_t a1, int a2)
{
  if (a2 && ([*(a1 + 32) isCancelled] & 1) == 0)
  {
    [*(a1 + 32) resetForRetry];
    v5 = *(a1 + 32);

    [v5 performOperation];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    [(FCOperation *)v3 _finishOperationWithError:v4];
  }
}

- (void)finishFromEarlyCancellation
{
  v3 = MEMORY[0x1E696ABC0];
  errorUserInfo = [(FCOperation *)self errorUserInfo];
  v4 = [v3 fc_operationCancelledErrorWithAdditionalUserInfo:errorUserInfo];
  [(FCOperation *)self _finishOperationWithError:v4];
}

- (void)associateChildOperation:(id)operation
{
  operationCopy = operation;
  v5 = operationCopy;
  if (operationCopy)
  {
    if (self)
    {
      childOperationsLock = self->_childOperationsLock;
    }

    else
    {
      childOperationsLock = 0;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__FCOperation_associateChildOperation___block_invoke;
    v7[3] = &unk_1E7C36C58;
    v7[4] = self;
    v8 = operationCopy;
    [(NFUnfairLock *)childOperationsLock performWithLockSync:v7];
  }
}

- (void)_associateChildOperation:(uint64_t)operation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!operation || !v3)
  {
    goto LABEL_36;
  }

  if ([v3 conformsToProtocol:&unk_1F2E74598])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = FCOperationLog;
  v8 = os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = v7;
    shortOperationDescription = [v6 shortOperationDescription];
    shortOperationDescription2 = [operation shortOperationDescription];
    v26 = 138543618;
    v27 = shortOperationDescription;
    v28 = 2114;
    v29 = shortOperationDescription2;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "associated child operation %{public}@ with parent %{public}@", &v26, 0x16u);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = v7;
    v12 = objc_opt_class();
    v13 = v12;
    shortOperationDescription3 = [operation shortOperationDescription];
    v26 = 138543618;
    v27 = v12;
    v28 = 2114;
    v29 = shortOperationDescription3;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "associated child operation %{public}@ with parent %{public}@", &v26, 0x16u);
  }

LABEL_12:
  if ((*(operation + 250) & 1) != 0 || (v15 = *(operation + 328)) == 0)
  {
    [v4 cancel];
  }

  else
  {
    [v15 addObject:v4];
    if (([operation propertiesInheritedByChildOperations] & 2) != 0)
    {
      if ([v4 conformsToProtocol:&unk_1F2E74638])
      {
        v16 = v4;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      [v17 setRelativePriority:{objc_msgSend(operation, "relativePriority")}];
    }

    if ([operation propertiesInheritedByChildOperations])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v4;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      [v19 setQualityOfService:{objc_msgSend(operation, "qualityOfService")}];
    }

    if (([operation propertiesInheritedByChildOperations] & 4) != 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v4;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      purpose = [operation purpose];
      [v21 setPurpose:purpose];
    }

    if (([operation propertiesInheritedByChildOperations] & 8) != 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v4;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      [v24 setFlags:{objc_msgSend(operation, "flags")}];
    }
  }

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)associateChildOperations:(id)operations
{
  operationsCopy = operations;
  if ([operationsCopy count])
  {
    if (self)
    {
      childOperationsLock = self->_childOperationsLock;
    }

    else
    {
      childOperationsLock = 0;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__FCOperation_associateChildOperations___block_invoke;
    v6[3] = &unk_1E7C36C58;
    v7 = operationsCopy;
    selfCopy = self;
    [(NFUnfairLock *)childOperationsLock performWithLockSync:v6];
  }
}

void __40__FCOperation_associateChildOperations___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [(FCOperation *)*(a1 + 40) _associateChildOperation:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)cancelChildOperations
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__64;
  v10 = __Block_byref_object_dispose__64;
  v11 = 0;
  if (self)
  {
    childOperationsLock = self->_childOperationsLock;
  }

  else
  {
    childOperationsLock = 0;
  }

  v4 = childOperationsLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__FCOperation_cancelChildOperations__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  [(NFUnfairLock *)v4 performWithLockSync:v5];

  [v7[5] makeObjectsPerformSelector:sel_cancel];
  _Block_object_dispose(&v6, 8);
}

uint64_t __36__FCOperation_cancelChildOperations__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[41];
  }

  v3 = v2;
  v4 = [v3 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  if (v7 && (*(v7 + 250) = 1, (v8 = *(a1 + 32)) != 0))
  {
    v9 = *(v8 + 328);
  }

  else
  {
    v9 = 0;
  }

  return [v9 removeAllObjects];
}

- (BOOL)waitUntilFinishedWithTimeout:(double)timeout
{
  if (self)
  {
    finishedGroup = self->_finishedGroup;
  }

  else
  {
    finishedGroup = 0;
  }

  v4 = (timeout * 1000000000.0);
  v5 = finishedGroup;
  v6 = dispatch_time(0, v4);
  v7 = dispatch_group_wait(v5, v6);

  return v7 == 0;
}

- (void)addCompletionHandler:(id)handler
{
  if (handler)
  {
    if (self)
    {
      finishedGroup = self->_finishedGroup;
    }

    else
    {
      finishedGroup = 0;
    }

    v6 = finishedGroup;
    handlerCopy = handler;
    v8 = FCDispatchQueueForQualityOfService([(FCOperation *)self qualityOfService]);
    dispatch_group_notify(v6, v8, handlerCopy);
  }
}

- (BOOL)hasOperationStarted
{
  if (self)
  {
    self = self->_startOnce;
  }

  return [(FCOperation *)self hasBeenTriggered];
}

void __41__FCOperation__finishOperationWithError___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    objc_storeStrong((v1 + 328), 0);
  }
}

- (NSDictionary)errorUserInfo
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"FCErrorOperationClassNameKey";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10[0] = v4;
  v9[1] = @"FCErrorOperationIDKey";
  operationID = [(FCOperation *)self operationID];
  v10[1] = operationID;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end