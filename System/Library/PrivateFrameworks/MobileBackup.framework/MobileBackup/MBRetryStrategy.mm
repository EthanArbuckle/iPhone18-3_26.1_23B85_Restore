@interface MBRetryStrategy
+ (BOOL)couldRetryError:(id)a3;
- (BOOL)_consumeTokensAfterError:(id)a3 networkAvailable:(BOOL)a4 attempt:(unsigned int *)a5;
- (BOOL)_sleep:(double)a3;
- (BOOL)canRetryAfterError:(id)a3;
- (BOOL)shouldRetryAfterError:(id)a3;
- (MBNetworkAvailabilityProvider)networkAvailabilityProvider;
- (MBRetryStrategy)initWithDebugContext:(id)a3 networkAvailabilityProvider:(id)a4 engineMode:(int)a5 restoreType:(int)a6;
- (MBRetryStrategy)initWithEngine:(id)a3;
- (double)_backoffForError:(id)a3 networkAvailable:(BOOL)a4 attempt:(unsigned int)a5 backoffCache:(id)a6;
- (unsigned)maxConsecutiveRetryCountWhenNetworkConnected;
- (unsigned)maxConsecutiveRetryCountWhenNetworkDisconnected;
- (void)_replenishTokensWithNetworkAvailable:(BOOL)a3;
- (void)cancel;
- (void)replenishRetryTokens;
- (void)reset;
@end

@implementation MBRetryStrategy

- (MBRetryStrategy)initWithDebugContext:(id)a3 networkAvailabilityProvider:(id)a4 engineMode:(int)a5 restoreType:(int)a6
{
  v9 = a3;
  v16.receiver = self;
  v16.super_class = MBRetryStrategy;
  v10 = [(MBRetryStrategy *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_engineMode = a5;
    v10->_restoreType = a6;
    if (!v9)
    {
      v9 = +[MBDebugContext defaultDebugContext];
    }

    [v9 setInt:0 forName:@"RetryCount"];
    objc_storeStrong(&v11->_debugContext, v9);
    [(MBRetryStrategy *)v11 setShouldRetryWhenNetworkUnavailable:1];
    [(MBRetryStrategy *)v11 setMaxServiceRetryAfterInterval:14400.0];
    [(MBRetryStrategy *)v11 setMinSleepIntervalWhenConnected:10.0];
    [(MBRetryStrategy *)v11 minSleepIntervalWhenConnected];
    [(MBRetryStrategy *)v11 setMinSleepIntervalWhenDisconnected:v12 + v12];
    v13 = 1800.0;
    if (a5 == 1)
    {
      v14 = 600.0;
    }

    else if (a5 == 2)
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

- (MBRetryStrategy)initWithEngine:(id)a3
{
  v4 = a3;
  v5 = [v4 engineMode];
  if (v5 == 2)
  {
    v6 = [v4 restoreType];
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v4 debugContext];
  v10 = [(MBRetryStrategy *)self initWithDebugContext:v9 networkAvailabilityProvider:v8 engineMode:v5 restoreType:v6];

  return v10;
}

- (unsigned)maxConsecutiveRetryCountWhenNetworkConnected
{
  v2 = self;
  objc_sync_enter(v2);
  maxTokenCount = v2->_tokenBuckets[1].maxTokenCount;
  objc_sync_exit(v2);

  return maxTokenCount;
}

- (unsigned)maxConsecutiveRetryCountWhenNetworkDisconnected
{
  v2 = self;
  objc_sync_enter(v2);
  maxTokenCount = v2->_tokenBuckets[0].maxTokenCount;
  objc_sync_exit(v2);

  return maxTokenCount;
}

- (void)reset
{
  v3 = [(MBRetryStrategy *)self debugContext];
  v4 = [v3 time];

  v5 = dispatch_semaphore_create(0);
  [(MBRetryStrategy *)self setRetrySemaphore:v5];

  obj = self;
  objc_sync_enter(obj);
  [(MBRetryStrategy *)obj setLastRetryAttemptTime:v4];
  [(MBRetryStrategy *)obj setLastConsecutiveRetryStartTime:v4];
  [(MBRetryStrategy *)obj setConsecutiveRetryCount:0];
  [(MBRetryStrategy *)obj setConsecutiveRetryCountWhenConnected:0];
  [(MBRetryStrategy *)obj setConsecutiveRetryCountWhenDisconnected:0];
  *&obj->_tokenBuckets[0].retryCount = xmmword_1002B9E70;
  obj->_tokenBuckets[0].tokensPerInterval = 1;
  obj->_tokenBuckets[0].replenishInterval = 60;
  obj->_tokenBuckets[0].lastReplenishTime = v4;
  *&obj->_tokenBuckets[1].retryCount = xmmword_1002B9E80;
  obj->_tokenBuckets[1].tokensPerInterval = 1;
  obj->_tokenBuckets[1].replenishInterval = 60;
  obj->_tokenBuckets[1].lastReplenishTime = v4;
  *&obj->_tokenBuckets[2].retryCount = xmmword_1002B9E80;
  obj->_tokenBuckets[2].tokensPerInterval = 1;
  obj->_tokenBuckets[2].replenishInterval = 1800;
  obj->_tokenBuckets[2].lastReplenishTime = v4;
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

+ (BOOL)couldRetryError:(id)a3
{
  v3 = [MBError underlyingErrorFromCKCancelationError:a3];
  if ([MBError isError:v3 withCode:2])
  {
    v4 = [v3 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"];

    if (!v5)
    {
      LOBYTE(v12) = 0;
      goto LABEL_30;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        if (([MBError isError:v11 withCode:2]& 1) != 0 || ![MBRetryStrategy couldRetryError:v11])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
    v13 = [v3 userInfo];
    v5 = [v13 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [v5 allValues];
    v14 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(v6);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        if ([MBError isCKPartialFailureError:v18]|| ![MBRetryStrategy couldRetryError:v18])
        {
          goto LABEL_24;
        }

        if (v15 == ++v17)
        {
          v15 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (BOOL)canRetryAfterError:(id)a3
{
  v4 = a3;
  if ([MBRetryStrategy couldRetryError:v4])
  {
    if ([MBError isError:v4 withCode:2])
    {
      v5 = [v4 userInfo];
      v6 = [v5 objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"];

      if (!v6)
      {
        v13 = 0;
        goto LABEL_38;
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          if (([MBError isError:v12 withCode:2]& 1) != 0 || ![(MBRetryStrategy *)self canRetryAfterError:v12])
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
            v13 = 1;
            if (v9)
            {
              goto LABEL_6;
            }

            goto LABEL_36;
          }
        }

LABEL_30:
        v13 = 0;
LABEL_36:

LABEL_38:
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    if ([MBError isCKPartialFailureError:v4])
    {
      v14 = [v4 userInfo];
      v6 = [v14 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = [v6 allValues];
      v15 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(v7);
          }

          v19 = *(*(&v27 + 1) + 8 * v18);
          if ([MBError isCKPartialFailureError:v19]|| ![(MBRetryStrategy *)self canRetryAfterError:v19])
          {
            goto LABEL_30;
          }

          if (v16 == ++v18)
          {
            v16 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
            v13 = 1;
            if (v16)
            {
              goto LABEL_22;
            }

            goto LABEL_36;
          }
        }
      }

LABEL_35:
      v13 = 1;
      goto LABEL_36;
    }

    if ([(MBRetryStrategy *)self shouldRetryWhenNetworkUnavailable]|| ![MBError isCKError:v4 withCode:3]&& ([MBError isError:v4 withCode:308]& 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_42:
    v13 = 0;
    goto LABEL_43;
  }

  if (self->_restoreType == 1 && ([MBError isError:v4 withCode:308]& 1) != 0)
  {
LABEL_34:
    v13 = 1;
    goto LABEL_43;
  }

  if (![MBError isCKError:v4 withCodes:7, 23, 0])
  {
    goto LABEL_42;
  }

  if (![MBError isNetworkDisconnectedError:v4])
  {
    v20 = [v4 userInfo];
    v21 = [v20 objectForKeyedSubscript:CKErrorRetryAfterKey];

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

  v13 = [(MBRetryStrategy *)self shouldRetryWhenNetworkUnavailable];
LABEL_43:

  return v13;
}

- (double)_backoffForError:(id)a3 networkAvailable:(BOOL)a4 attempt:(unsigned int)a5 backoffCache:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v12 = [NSString alloc];
  v13 = [v10 domain];
  v14 = [v12 initWithFormat:@"%@|%ld", v13, objc_msgSend(v10, "code")];

  v15 = self;
  objc_sync_enter(v15);
  v16 = [v11 objectForKeyedSubscript:v14];
  v17 = v16;
  if (v16)
  {
    [v16 doubleValue];
    v19 = v18;
  }

  else
  {
    if (v8)
    {
      [(MBRetryStrategy *)v15 minSleepIntervalWhenConnected];
      v21 = v20;
      if (v15->_engineMode == 2)
      {
        v22 = 90.0;
      }

      else
      {
        v22 = 60.0;
      }

      if ([MBError isCKError:v10 withCodes:4, 3, 0]|| (v23 = 20.0, [MBError isError:v10 withCodes:300, 308, 0]))
      {
        v23 = 10.0;
      }
    }

    else
    {
      [(MBRetryStrategy *)v15 minSleepIntervalWhenDisconnected];
      v21 = v24;
      if (v15->_engineMode == 2)
      {
        v22 = 90.0;
      }

      else
      {
        v22 = 60.0;
      }

      v23 = 20.0;
    }

    v25 = fmin(v22, fmax(v21, exp2(a5) * v23));
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
      v37 = a5;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=retry= backoff, %.3f, %.3f, %u, %u", buf, 0x22u);
      _MBLog();
    }

    v28 = [NSNumber numberWithDouble:v19];
    [v11 setObject:v28 forKeyedSubscript:v14];
  }

  objc_sync_exit(v15);
  return v19;
}

- (BOOL)_sleep:(double)a3
{
  v5 = [(MBRetryStrategy *)self debugContext];
  v6 = [v5 isFlagSet:@"RetryStrategyShouldNotSleep"];

  if (v6)
  {
    v7 = [(MBRetryStrategy *)self debugContext];
    v8 = [v7 intForName:@"RetryStrategyWouldSleep"];

    v9 = [(MBRetryStrategy *)self debugContext];
    [v9 setInt:(v8 + a3) forName:@"RetryStrategyWouldSleep"];

    return 1;
  }

  else
  {
    v11 = [(MBRetryStrategy *)self retrySemaphore];
    if (!v11)
    {
      __assert_rtn("[MBRetryStrategy _sleep:]", "MBRetryStrategy.m", 406, "semaphore && Retry after cancelation");
    }

    v12 = v11;
    v13 = dispatch_time(0, 1000000 * (a3 * 1000.0));
    v14 = dispatch_semaphore_wait(v12, v13);
    if (!v14)
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = a3;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=retry= Sleep canceled for (%.3fs)", buf, 0xCu);
        _MBLog();
      }

      [(MBRetryStrategy *)self setRetrySemaphore:0];
    }

    v10 = v14 != 0;
  }

  return v10;
}

- (BOOL)shouldRetryAfterError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_networkAvailabilityProvider);
  v6 = [WeakRetained isNetworkAvailable];

  LOBYTE(self) = [(MBRetryStrategy *)self shouldRetryAfterError:v4 connected:v6];
  return self;
}

- (void)cancel
{
  v2 = [(MBRetryStrategy *)self retrySemaphore];
  if (v2)
  {
    v3 = v2;
    dispatch_semaphore_signal(v2);
    v2 = v3;
  }
}

- (BOOL)_consumeTokensAfterError:(id)a3 networkAvailable:(BOOL)a4 attempt:(unsigned int *)a5
{
  v5 = a4;
  v7 = a3;
  v29 = v5;
  if (v5)
  {
    if ([MBError isCKError:v7 matchingSubErrors:1 withCodes:3, 4, 6, 7, 23, 0]|| [MBError isError:v7 withCodes:308, 300, 0])
    {
      v5 = ![MBError isNetworkDisconnectedError:v7];
    }

    else
    {
      v5 = 2;
    }
  }

  v30 = v7;
  v32 = [MBError loggableDescriptionForError:v7];
  v8 = self;
  objc_sync_enter(v8);
  v9 = v8 + 40 * v5;
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

  v28 = v5;
  *a5 = v12[3] - v13;
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
      v34 = v8;
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
      v52 = [(MBRetryStrategy *)v8 consecutiveRetryCountWhenConnected];
      v53 = 1024;
      v54 = [(MBRetryStrategy *)v8 consecutiveRetryCountWhenDisconnected];
      v55 = 1024;
      v56 = [(MBRetryStrategy *)v8 consecutiveRetryCount];
      v57 = 1024;
      v58 = [(MBRetryStrategy *)v8 totalRetryCount];
      v59 = 2112;
      v60 = v32;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=retry= %{public}@: %d, isNetworkAvailable:%d, bucket[%d]:%u/%u|%u/%u|%lu, rc:%u|%u|%u|%u: %@", buf, 0x62u);
    }

    v20 = v12[3];
    v27 = v12[2];
    v22 = *v12;
    v21 = v12[1];
    v23 = *(v12 + 4);
    [(MBRetryStrategy *)v8 consecutiveRetryCountWhenConnected];
    [(MBRetryStrategy *)v8 consecutiveRetryCountWhenDisconnected];
    [(MBRetryStrategy *)v8 consecutiveRetryCount];
    [(MBRetryStrategy *)v8 totalRetryCount];
    _MBLog();
  }

  objc_sync_exit(v8);
  if (v14 && !*a5)
  {
    __assert_rtn("[MBRetryStrategy _consumeTokensAfterError:networkAvailable:attempt:]", "MBRetryStrategy.m", 539, "!result || 0 < *attempt");
  }

  return v14;
}

- (void)_replenishTokensWithNetworkAvailable:(BOOL)a3
{
  if (atomic_exchange(&self->_needsReplenishing, 0))
  {
    v3 = a3;
    v5 = [(MBRetryStrategy *)self lastNeedsReplenishingTime];
    if (!v5)
    {
      __assert_rtn("[MBRetryStrategy _replenishTokensWithNetworkAvailable:]", "MBRetryStrategy.m", 546, "lastNeedsReplenishingTime != 0");
    }

    v6 = v5;
    v7 = [(MBRetryStrategy *)self debugContext];
    v8 = [v7 time];

    v9 = self;
    p_tokenCount = &v9->_tokenBuckets[0].tokenCount;
    objc_sync_enter(v9);
    for (i = 0; i != 3; ++i)
    {
      if (i || v3)
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
          *(p_tokenCount + 3) = v8;
          v16 = MBGetDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *p_tokenCount;
            v18 = p_tokenCount[1];
            v19 = *(p_tokenCount - 2);
            v20 = *(p_tokenCount - 1);
            v21 = *(p_tokenCount + 3);
            *buf = 138545410;
            v28 = v9;
            v29 = 1024;
            v30 = v3;
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

    objc_sync_exit(v9);
  }
}

- (void)replenishRetryTokens
{
  v3 = [(MBRetryStrategy *)self debugContext];
  v4 = [v3 time];

  [(MBRetryStrategy *)self setLastNeedsReplenishingTime:v4];
  if ((atomic_exchange(&self->_needsReplenishing, 1u) & 1) == 0)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v7 = self;
      v8 = 2048;
      v9 = v4;
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