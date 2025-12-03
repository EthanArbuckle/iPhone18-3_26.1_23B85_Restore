@interface MBRetryStrategy
+ (BOOL)couldRetryError:(id)error;
- (BOOL)_consumeTokensAfterError:(id)error networkAvailable:(BOOL)available attempt:(unsigned int *)attempt;
- (BOOL)_sleep:(double)_sleep;
- (BOOL)canRetryAfterError:(id)error;
- (BOOL)shouldRetryAfterError:(id)error;
- (MBNetworkAvailabilityProvider)networkAvailabilityProvider;
- (MBRetryStrategy)initWithDebugContext:(id)context networkAvailabilityProvider:(id)provider engineMode:(int)mode restoreType:(int)type;
- (MBRetryStrategy)initWithEngine:(id)engine;
- (double)_backoffForError:(id)error networkAvailable:(BOOL)available attempt:(unsigned int)attempt backoffCache:(id)cache;
- (unsigned)maxConsecutiveRetryCountWhenNetworkConnected;
- (unsigned)maxConsecutiveRetryCountWhenNetworkDisconnected;
- (void)_replenishTokensWithNetworkAvailable:(BOOL)available;
- (void)cancel;
- (void)replenishRetryTokens;
- (void)reset;
@end

@implementation MBRetryStrategy

- (MBRetryStrategy)initWithDebugContext:(id)context networkAvailabilityProvider:(id)provider engineMode:(int)mode restoreType:(int)type
{
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = MBRetryStrategy;
  v10 = [(MBRetryStrategy *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_engineMode = mode;
    v10->_restoreType = type;
    if (!contextCopy)
    {
      contextCopy = +[MBDebugContext defaultDebugContext];
    }

    [contextCopy setInt:0 forName:@"RetryCount"];
    objc_storeStrong(&v11->_debugContext, contextCopy);
    [(MBRetryStrategy *)v11 setShouldRetryWhenNetworkUnavailable:1];
    [(MBRetryStrategy *)v11 setMaxServiceRetryAfterInterval:14400.0];
    [(MBRetryStrategy *)v11 setMinSleepIntervalWhenConnected:10.0];
    [(MBRetryStrategy *)v11 minSleepIntervalWhenConnected];
    [(MBRetryStrategy *)v11 setMinSleepIntervalWhenDisconnected:v12 + v12];
    v13 = 1800.0;
    if (mode == 1)
    {
      v14 = 600.0;
    }

    else if (mode == 2)
    {
      v14 = 0.0;
    }

    else
    {
      v13 = 600.0;
      v14 = 600.0;
    }

    [(MBRetryStrategy *)v11 setResetConsecutiveRetriesTimeInterval:v13];
    [(MBRetryStrategy *)v11 setForcedRetryTimeInterval:v14];
    [(MBRetryStrategy *)v11 reset];
  }

  return v11;
}

- (MBRetryStrategy)initWithEngine:(id)engine
{
  engineCopy = engine;
  engineMode = [engineCopy engineMode];
  if (engineMode == 2)
  {
    restoreType = [engineCopy restoreType];
  }

  else
  {
    restoreType = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = engineCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  debugContext = [engineCopy debugContext];
  v10 = [(MBRetryStrategy *)self initWithDebugContext:debugContext networkAvailabilityProvider:v8 engineMode:engineMode restoreType:restoreType];

  return v10;
}

- (unsigned)maxConsecutiveRetryCountWhenNetworkConnected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  maxTokenCount = selfCopy->_tokenBuckets[1].maxTokenCount;
  objc_sync_exit(selfCopy);

  return maxTokenCount;
}

- (unsigned)maxConsecutiveRetryCountWhenNetworkDisconnected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  maxTokenCount = selfCopy->_tokenBuckets[0].maxTokenCount;
  objc_sync_exit(selfCopy);

  return maxTokenCount;
}

- (void)reset
{
  debugContext = [(MBRetryStrategy *)self debugContext];
  time = [debugContext time];

  v5 = dispatch_semaphore_create(0);
  [(MBRetryStrategy *)self setRetrySemaphore:v5];

  obj = self;
  objc_sync_enter(obj);
  [(MBRetryStrategy *)obj setLastRetryAttemptTime:time];
  [(MBRetryStrategy *)obj setLastConsecutiveRetryStartTime:time];
  [(MBRetryStrategy *)obj setConsecutiveRetryCount:0];
  [(MBRetryStrategy *)obj setConsecutiveRetryCountWhenConnected:0];
  [(MBRetryStrategy *)obj setConsecutiveRetryCountWhenDisconnected:0];
  *&obj->_tokenBuckets[0].retryCount = xmmword_1002B9E70;
  obj->_tokenBuckets[0].tokensPerInterval = 1;
  obj->_tokenBuckets[0].replenishInterval = 60;
  obj->_tokenBuckets[0].lastReplenishTime = time;
  *&obj->_tokenBuckets[1].retryCount = xmmword_1002B9E80;
  obj->_tokenBuckets[1].tokensPerInterval = 1;
  obj->_tokenBuckets[1].replenishInterval = 60;
  obj->_tokenBuckets[1].lastReplenishTime = time;
  *&obj->_tokenBuckets[2].retryCount = xmmword_1002B9E80;
  obj->_tokenBuckets[2].tokensPerInterval = 1;
  obj->_tokenBuckets[2].replenishInterval = 1800;
  obj->_tokenBuckets[2].lastReplenishTime = time;
  if (obj->_engineMode == 2)
  {
    obj->_tokenBuckets[0].maxTokenCount = 20;
    *&obj->_tokenBuckets[0].maxRetryCount = 0x14000000C8;
    obj->_tokenBuckets[1].maxTokenCount = 20;
    *&obj->_tokenBuckets[1].maxRetryCount = 0x14000000C8;
    obj->_tokenBuckets[2].maxTokenCount = 10;
    *&obj->_tokenBuckets[2].maxRetryCount = 0xA00000064;
  }

  objc_sync_exit(obj);
}

+ (BOOL)couldRetryError:(id)error
{
  v3 = [MBError underlyingErrorFromCKCancelationError:error];
  if ([MBError isError:v3 withCode:2])
  {
    userInfo = [v3 userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"];

    if (!v5)
    {
      LOBYTE(v12) = 0;
      goto LABEL_30;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    allValues = v5;
    v7 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        if (([MBError isError:v11 withCode:2]& 1) != 0 || ![MBRetryStrategy couldRetryError:v11])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
          LOBYTE(v12) = 1;
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_28;
        }
      }

LABEL_24:
      LOBYTE(v12) = 0;
LABEL_28:

LABEL_30:
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  if ([MBError isCKPartialFailureError:v3])
  {
    userInfo2 = [v3 userInfo];
    v5 = [userInfo2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allValues = [v5 allValues];
    v14 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
LABEL_16:
      v17 = 0;
      while (1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        if ([MBError isCKPartialFailureError:v18]|| ![MBRetryStrategy couldRetryError:v18])
        {
          goto LABEL_24;
        }

        if (v15 == ++v17)
        {
          v15 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
          LOBYTE(v12) = 1;
          if (v15)
          {
            goto LABEL_16;
          }

          goto LABEL_28;
        }
      }
    }

LABEL_27:
    LOBYTE(v12) = 1;
    goto LABEL_28;
  }

  if ([MBError isCKError:v3 withCodes:3, 4, 6, 21, 9, 1, 17, 36, 0])
  {
    v12 = ![MBError isCKInternalError:v3 withCode:1000];
  }

  else if (([MBError isError:v3 withCodes:308, 9, 300, 302, 401, 307, 17, 215, 556, 0]& 1) != 0)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    LOBYTE(v12) = [MBError isRetryableXPCError:v3];
  }

LABEL_31:

  return v12;
}

- (BOOL)canRetryAfterError:(id)error
{
  errorCopy = error;
  if ([MBRetryStrategy couldRetryError:errorCopy])
  {
    if ([MBError isError:errorCopy withCode:2])
    {
      userInfo = [errorCopy userInfo];
      v6 = [userInfo objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"];

      if (!v6)
      {
        shouldRetryWhenNetworkUnavailable = 0;
        goto LABEL_38;
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      allValues = v6;
      v8 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v32;
LABEL_6:
        v11 = 0;
        while (1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          if (([MBError isError:v12 withCode:2]& 1) != 0 || ![(MBRetryStrategy *)self canRetryAfterError:v12])
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [allValues countByEnumeratingWithState:&v31 objects:v36 count:16];
            shouldRetryWhenNetworkUnavailable = 1;
            if (v9)
            {
              goto LABEL_6;
            }

            goto LABEL_36;
          }
        }

LABEL_30:
        shouldRetryWhenNetworkUnavailable = 0;
LABEL_36:

LABEL_38:
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    if ([MBError isCKPartialFailureError:errorCopy])
    {
      userInfo2 = [errorCopy userInfo];
      v6 = [userInfo2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      allValues = [v6 allValues];
      v15 = [allValues countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
LABEL_22:
        v18 = 0;
        while (1)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          v19 = *(*(&v27 + 1) + 8 * v18);
          if ([MBError isCKPartialFailureError:v19]|| ![(MBRetryStrategy *)self canRetryAfterError:v19])
          {
            goto LABEL_30;
          }

          if (v16 == ++v18)
          {
            v16 = [allValues countByEnumeratingWithState:&v27 objects:v35 count:16];
            shouldRetryWhenNetworkUnavailable = 1;
            if (v16)
            {
              goto LABEL_22;
            }

            goto LABEL_36;
          }
        }
      }

LABEL_35:
      shouldRetryWhenNetworkUnavailable = 1;
      goto LABEL_36;
    }

    if ([(MBRetryStrategy *)self shouldRetryWhenNetworkUnavailable]|| ![MBError isCKError:errorCopy withCode:3]&& ([MBError isError:errorCopy withCode:308]& 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_42:
    shouldRetryWhenNetworkUnavailable = 0;
    goto LABEL_43;
  }

  if (self->_restoreType == 1 && ([MBError isError:errorCopy withCode:308]& 1) != 0)
  {
LABEL_34:
    shouldRetryWhenNetworkUnavailable = 1;
    goto LABEL_43;
  }

  if (![MBError isCKError:errorCopy withCodes:7, 23, 0])
  {
    goto LABEL_42;
  }

  if (![MBError isNetworkDisconnectedError:errorCopy])
  {
    userInfo3 = [errorCopy userInfo];
    v21 = [userInfo3 objectForKeyedSubscript:CKErrorRetryAfterKey];

    v22 = 10.0;
    if (v21)
    {
      [v21 doubleValue];
    }

    v23 = fmax(v22, 10.0);
    [(MBRetryStrategy *)self maxServiceRetryAfterInterval];
    v25 = v24;

    if (v23 >= v25)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  shouldRetryWhenNetworkUnavailable = [(MBRetryStrategy *)self shouldRetryWhenNetworkUnavailable];
LABEL_43:

  return shouldRetryWhenNetworkUnavailable;
}

- (double)_backoffForError:(id)error networkAvailable:(BOOL)available attempt:(unsigned int)attempt backoffCache:(id)cache
{
  availableCopy = available;
  errorCopy = error;
  cacheCopy = cache;
  v12 = [NSString alloc];
  domain = [errorCopy domain];
  v14 = [v12 initWithFormat:@"%@|%ld", domain, objc_msgSend(errorCopy, "code")];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = [cacheCopy objectForKeyedSubscript:v14];
  v17 = v16;
  if (v16)
  {
    [v16 doubleValue];
    v19 = v18;
  }

  else
  {
    if (availableCopy)
    {
      [(MBRetryStrategy *)selfCopy minSleepIntervalWhenConnected];
      v21 = v20;
      if (selfCopy->_engineMode == 2)
      {
        v22 = 90.0;
      }

      else
      {
        v22 = 60.0;
      }

      if ([MBError isCKError:errorCopy withCodes:4, 3, 0]|| (v23 = 20.0, [MBError isError:errorCopy withCodes:300, 308, 0]))
      {
        v23 = 10.0;
      }
    }

    else
    {
      [(MBRetryStrategy *)selfCopy minSleepIntervalWhenDisconnected];
      v21 = v24;
      if (selfCopy->_engineMode == 2)
      {
        v22 = 90.0;
      }

      else
      {
        v22 = 60.0;
      }

      v23 = 20.0;
    }

    v25 = fmin(v22, fmax(v21, exp2(attempt) * v23));
    v26 = arc4random_uniform((v25 * 0.5));
    v27 = MBGetDefaultLog();
    v19 = fmax(v21, v25 * 0.5) + v26;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v31 = v19;
      v32 = 2048;
      v33 = v25;
      v34 = 1024;
      v35 = v26;
      v36 = 1024;
      attemptCopy = attempt;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=retry= backoff, %.3f, %.3f, %u, %u", buf, 0x22u);
      _MBLog();
    }

    v28 = [NSNumber numberWithDouble:v19];
    [cacheCopy setObject:v28 forKeyedSubscript:v14];
  }

  objc_sync_exit(selfCopy);
  return v19;
}

- (BOOL)_sleep:(double)_sleep
{
  debugContext = [(MBRetryStrategy *)self debugContext];
  v6 = [debugContext isFlagSet:@"RetryStrategyShouldNotSleep"];

  if (v6)
  {
    debugContext2 = [(MBRetryStrategy *)self debugContext];
    v8 = [debugContext2 intForName:@"RetryStrategyWouldSleep"];

    debugContext3 = [(MBRetryStrategy *)self debugContext];
    [debugContext3 setInt:(v8 + _sleep) forName:@"RetryStrategyWouldSleep"];

    return 1;
  }

  else
  {
    retrySemaphore = [(MBRetryStrategy *)self retrySemaphore];
    if (!retrySemaphore)
    {
      __assert_rtn("[MBRetryStrategy _sleep:]", "MBRetryStrategy.m", 406, "semaphore && Retry after cancelation");
    }

    v12 = retrySemaphore;
    v13 = dispatch_time(0, 1000000 * (_sleep * 1000.0));
    v14 = dispatch_semaphore_wait(v12, v13);
    if (!v14)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        _sleepCopy = _sleep;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=retry= Sleep canceled for (%.3fs)", buf, 0xCu);
        _MBLog();
      }

      [(MBRetryStrategy *)self setRetrySemaphore:0];
    }

    v10 = v14 != 0;
  }

  return v10;
}

- (BOOL)shouldRetryAfterError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_networkAvailabilityProvider);
  isNetworkAvailable = [WeakRetained isNetworkAvailable];

  LOBYTE(self) = [(MBRetryStrategy *)self shouldRetryAfterError:errorCopy connected:isNetworkAvailable];
  return self;
}

- (void)cancel
{
  retrySemaphore = [(MBRetryStrategy *)self retrySemaphore];
  if (retrySemaphore)
  {
    v3 = retrySemaphore;
    dispatch_semaphore_signal(retrySemaphore);
    retrySemaphore = v3;
  }
}

- (BOOL)_consumeTokensAfterError:(id)error networkAvailable:(BOOL)available attempt:(unsigned int *)attempt
{
  availableCopy = available;
  errorCopy = error;
  v29 = availableCopy;
  if (availableCopy)
  {
    if ([MBError isCKError:errorCopy matchingSubErrors:1 withCodes:3, 4, 6, 7, 23, 0]|| [MBError isError:errorCopy withCodes:308, 300, 0])
    {
      availableCopy = ![MBError isNetworkDisconnectedError:errorCopy];
    }

    else
    {
      availableCopy = 2;
    }
  }

  v30 = errorCopy;
  v32 = [MBError loggableDescriptionForError:errorCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = selfCopy + 40 * availableCopy;
  v10 = *(v9 + 4);
  v11 = *(v9 + 5);
  v12 = (v9 + 16);
  v13 = v12[2];
  if (v10 < v11 && v13)
  {
    v12[2] = --v13;
    *v12 = v10 + 1;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v28 = availableCopy;
  *attempt = v12[3] - v13;
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v12[2];
      v26 = v12[3];
      v18 = *v12;
      v17 = v12[1];
      v19 = *(v12 + 4);
      *buf = 138546690;
      v34 = selfCopy;
      v35 = 1024;
      v36 = v14;
      v37 = 1024;
      v38 = v29;
      v39 = 1024;
      v40 = v28;
      v41 = 1024;
      v42 = v25;
      v43 = 1024;
      v44 = v26;
      v45 = 1024;
      v46 = v18;
      v47 = 1024;
      v48 = v17;
      v49 = 2048;
      v50 = v19;
      v51 = 1024;
      consecutiveRetryCountWhenConnected = [(MBRetryStrategy *)selfCopy consecutiveRetryCountWhenConnected];
      v53 = 1024;
      consecutiveRetryCountWhenDisconnected = [(MBRetryStrategy *)selfCopy consecutiveRetryCountWhenDisconnected];
      v55 = 1024;
      consecutiveRetryCount = [(MBRetryStrategy *)selfCopy consecutiveRetryCount];
      v57 = 1024;
      totalRetryCount = [(MBRetryStrategy *)selfCopy totalRetryCount];
      v59 = 2112;
      v60 = v32;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=retry= %{public}@: %d, isNetworkAvailable:%d, bucket[%d]:%u/%u|%u/%u|%lu, rc:%u|%u|%u|%u: %@", buf, 0x62u);
    }

    v20 = v12[3];
    v27 = v12[2];
    v22 = *v12;
    v21 = v12[1];
    v23 = *(v12 + 4);
    [(MBRetryStrategy *)selfCopy consecutiveRetryCountWhenConnected];
    [(MBRetryStrategy *)selfCopy consecutiveRetryCountWhenDisconnected];
    [(MBRetryStrategy *)selfCopy consecutiveRetryCount];
    [(MBRetryStrategy *)selfCopy totalRetryCount];
    _MBLog();
  }

  objc_sync_exit(selfCopy);
  if (v14 && !*attempt)
  {
    __assert_rtn("[MBRetryStrategy _consumeTokensAfterError:networkAvailable:attempt:]", "MBRetryStrategy.m", 539, "!result || 0 < *attempt");
  }

  return v14;
}

- (void)_replenishTokensWithNetworkAvailable:(BOOL)available
{
  if (atomic_exchange(&self->_needsReplenishing, 0))
  {
    availableCopy = available;
    lastNeedsReplenishingTime = [(MBRetryStrategy *)self lastNeedsReplenishingTime];
    if (!lastNeedsReplenishingTime)
    {
      __assert_rtn("[MBRetryStrategy _replenishTokensWithNetworkAvailable:]", "MBRetryStrategy.m", 546, "lastNeedsReplenishingTime != 0");
    }

    v6 = lastNeedsReplenishingTime;
    debugContext = [(MBRetryStrategy *)self debugContext];
    time = [debugContext time];

    selfCopy = self;
    p_tokenCount = &selfCopy->_tokenBuckets[0].tokenCount;
    objc_sync_enter(selfCopy);
    for (i = 0; i != 3; ++i)
    {
      if (i || availableCopy)
      {
        v12 = *(p_tokenCount + 2);
        v13 = v6 - *(p_tokenCount + 3);
        if (v13 < 0)
        {
          v13 = *(p_tokenCount + 3) - v6;
        }

        if (!v12)
        {
          __assert_rtn("[MBRetryStrategy _replenishTokensWithNetworkAvailable:]", "MBRetryStrategy.m", 561, "replenishInterval != 0");
        }

        if (v13 >= v12)
        {
          v14 = v13 / v12;
          if (v14 >= &_mh_execute_header)
          {
            __assert_rtn("[MBRetryStrategy _replenishTokensWithNetworkAvailable:]", "MBRetryStrategy.m", 566, "intervals <= UINT32_MAX");
          }

          v15 = *p_tokenCount + p_tokenCount[2] * v14;
          if (p_tokenCount[1] < v15)
          {
            v15 = p_tokenCount[1];
          }

          *p_tokenCount = v15;
          *(p_tokenCount + 3) = time;
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *p_tokenCount;
            v18 = p_tokenCount[1];
            v19 = *(p_tokenCount - 2);
            v20 = *(p_tokenCount - 1);
            v21 = *(p_tokenCount + 3);
            *buf = 138545410;
            v28 = selfCopy;
            v29 = 1024;
            v30 = availableCopy;
            v31 = 1024;
            v32 = i;
            v33 = 1024;
            v34 = v17;
            v35 = 1024;
            v36 = v18;
            v37 = 1024;
            v38 = v19;
            v39 = 1024;
            v40 = v20;
            v41 = 2048;
            v42 = v21;
            v43 = 2048;
            v44 = v6;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=retry= %{public}@: isNetworkAvailable:%d, bucket[%d]:%u/%u,%u/%u,%ld,%ld", buf, 0x44u);
            v26 = *(p_tokenCount + 3);
            v24 = *(p_tokenCount - 2);
            v25 = *(p_tokenCount - 1);
            v22 = *p_tokenCount;
            v23 = p_tokenCount[1];
            _MBLog();
          }
        }
      }

      p_tokenCount += 10;
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)replenishRetryTokens
{
  debugContext = [(MBRetryStrategy *)self debugContext];
  time = [debugContext time];

  [(MBRetryStrategy *)self setLastNeedsReplenishingTime:time];
  if ((atomic_exchange(&self->_needsReplenishing, 1u) & 1) == 0)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy = self;
      v8 = 2048;
      v9 = time;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "=retry= %{public}@: scheduled token replenishing (%ld)", buf, 0x16u);
      _MBLog();
    }
  }
}

- (MBNetworkAvailabilityProvider)networkAvailabilityProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_networkAvailabilityProvider);

  return WeakRetained;
}

@end