@interface HMDModernTransportMessageContext
+ (id)logCategory;
- (BOOL)_finishedAllTransports;
- (BOOL)expectsResponse;
- (HMDModernTransportMessageContext)initWithMessage:(id)a3 options:(id)a4 completionHandler:(id)a5 dateProvider:(id)a6 timerProvider:(id)a7;
- (HMDModernTransportMessageContext)initWithMessage:(id)a3 options:(id)a4 completionHandler:(id)a5 dateProvider:(id)a6 timerProvider:(id)a7 activityFactory:(id)a8 logEventSubmitter:(id)a9;
- (NSMapTable)inProgressTransportToStartTimeMap;
- (NSSet)inProgressTransports;
- (double)timeout;
- (double)timeoutRemaining;
- (id)_activityForTransport:(id)a1;
- (id)_attemptedTransports;
- (id)preparedMessageWithTimeout:(double)a3;
- (unint64_t)retriesRemainingForTransport:(id)a3;
- (void)_completeTransportActivity:(void *)a3 txError:(void *)a4 rxError:;
- (void)completeSendingOverTransport:(id)a3 withError:(id)a4;
- (void)decrementRetriesForTransport:(id)a3;
- (void)done;
- (void)receivedResponseOverTransport:(id)a3 withError:(id)a4;
- (void)startResponseTimerWithTimeInterval:(double)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)startSendingOverTransport:(id)a3;
- (void)startTransportFallbackTimerWithTimeInterval:(double)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDModernTransportMessageContext

- (void)timerDidFire:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDModernTransportMessageContext *)self responseTimer];

  if (v5 == v4)
  {
    v9 = [(HMDModernTransportMessageContext *)self responseCompletionBlock];

    if (v9)
    {
      if (![(HMDModernTransportMessageContext *)self successfulResponseCount])
      {
        [(HMDModernTransportMessageContext *)self setDidTimeout:1];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [(HMDModernTransportMessageContext *)&self->super.isa _attemptedTransports];
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * i);
              v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{8, v20}];
              v17 = [(HMDModernTransportMessageContext *)self _activityForTransport:v15];
              [(HMDModernTransportMessageContext *)self _completeTransportActivity:v17 txError:0 rxError:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v12);
        }
      }

      v18 = [(HMDModernTransportMessageContext *)self responseCompletionBlock];
      v18[2]();

      [(HMDModernTransportMessageContext *)self setResponseCompletionBlock:0];
    }

    [(HMDModernTransportMessageContext *)self setResponseTimer:0];
  }

  else
  {
    v6 = [(HMDModernTransportMessageContext *)self fallbackTimer];

    if (v6 == v4)
    {
      v7 = [(HMDModernTransportMessageContext *)self fallbackCompletionBlock];

      if (v7)
      {
        [(HMDModernTransportMessageContext *)self setDidFallback:1];
        v8 = [(HMDModernTransportMessageContext *)self fallbackCompletionBlock];
        v8[2]();

        [(HMDModernTransportMessageContext *)self setFallbackCompletionBlock:0];
      }

      [(HMDModernTransportMessageContext *)self setFallbackTimer:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_attemptedTransports
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[9] transports];
    v3 = [v2 mutableCopy];

    [v3 minusSet:v1[1]];
    v1 = [v3 copy];
  }

  return v1;
}

- (id)_activityForTransport:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 transportType];
    v4 = 3;
    if (v3 != 6)
    {
      v4 = 0;
    }

    if (v3 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v2 messageNetworkActivity];
    v2 = [v6 childActivityWithLabel:v5 createIfNeeded:1];
  }

  return v2;
}

- (void)_completeTransportActivity:(void *)a3 txError:(void *)a4 rxError:
{
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (v8)
    {
      v11 = [v8 code];
      v12 = [v8 domain];
      if (v10)
      {
LABEL_4:
        v13 = [v10 code];
        v14 = [v10 domain];
LABEL_7:
        v19[0] = @"txErrorCode";
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
        v20[0] = v15;
        v20[1] = v12;
        v19[1] = @"txErrorDomain";
        v19[2] = @"rxErrorCode";
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
        v19[3] = @"rxErrorDomain";
        v20[2] = v16;
        v20[3] = v14;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

        [v7 submitMetrics:v17 withName:@"transportNetworkActivityMetrics"];
        [v7 completeWithSuccess:(v8 | v10) == 0];

        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      v12 = @"None";
      if (v9)
      {
        goto LABEL_4;
      }
    }

    v13 = 0;
    v14 = @"None";
    goto LABEL_7;
  }

LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)done
{
  v26[7] = *MEMORY[0x277D85DE8];
  v3 = [(HMDModernTransportMessageContext *)self responseTimer];
  [v3 cancel];

  [(HMDModernTransportMessageContext *)self setResponseTimer:0];
  [(HMDModernTransportMessageContext *)self setResponseCompletionBlock:0];
  v4 = [(HMDModernTransportMessageContext *)self fallbackTimer];
  [v4 cancel];

  [(HMDModernTransportMessageContext *)self setFallbackTimer:0];
  [(HMDModernTransportMessageContext *)self setFallbackCompletionBlock:0];
  if (self->_didSucceedSending)
  {
    if (![(HMDModernTransportMessageContext *)self expectsResponse])
    {
      v5 = 1;
      goto LABEL_7;
    }

    if ([(HMDModernTransportMessageContext *)self expectsResponse])
    {
      v5 = self->_successfulResponseCount != 0;
LABEL_7:
      v24 = v5;
      goto LABEL_8;
    }
  }

  v24 = 0;
LABEL_8:
  v6 = [(HMDModernTransportMessageContext *)self dateProvider];
  [v6 timeIntervalSince1970];
  v8 = v7;
  [(HMDModernTransportMessageContext *)self requestStartTime];
  v10 = v8 - v9;

  v25[0] = @"remoteMessageName";
  v11 = [(HMDModernTransportMessageContext *)self messageName];
  v26[0] = v11;
  v25[1] = @"messageType";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDModernTransportMessageContext messageType](self, "messageType")}];
  v26[1] = v12;
  v25[2] = @"messageCompletionTime";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v26[2] = v13;
  v25[3] = @"messageExpectsResponse";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDModernTransportMessageContext expectsResponse](self, "expectsResponse")}];
  v26[3] = v14;
  v25[4] = @"messageTimedOut";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDModernTransportMessageContext didTimeout](self, "didTimeout")}];
  v26[4] = v15;
  v25[5] = @"attemptedFallback";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDModernTransportMessageContext didFallback](self, "didFallback")}];
  v26[5] = v16;
  v25[6] = @"numTransportsAttempted";
  v17 = MEMORY[0x277CCABB0];
  v18 = [(HMDModernTransportMessageContext *)&self->super.isa _attemptedTransports];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
  v26[6] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  v21 = [(HMDModernTransportMessageContext *)self messageNetworkActivity];
  [v21 submitMetrics:v20 withName:@"modernTransportNetworkActivityMetrics"];

  v22 = [(HMDModernTransportMessageContext *)self messageNetworkActivity];
  [v22 completeWithSuccess:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)startTransportFallbackTimerWithTimeInterval:(double)a3 queue:(id)a4 completionHandler:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = [(HMDModernTransportMessageContext *)self fallbackTimer];

  if (!v9)
  {
    [(HMDModernTransportMessageContext *)self setFallbackCompletionBlock:v8];
    v10 = [(HMDModernTransportMessageContext *)self timerProvider];
    v11 = [v10 timerWithTimeInterval:0 options:a3];
    [(HMDModernTransportMessageContext *)self setFallbackTimer:v11];

    v12 = [(HMDModernTransportMessageContext *)self fallbackTimer];
    [v12 setDelegate:self];

    v13 = [(HMDModernTransportMessageContext *)self fallbackTimer];
    [v13 setDelegateQueue:v15];

    v14 = [(HMDModernTransportMessageContext *)self fallbackTimer];
    [v14 resume];
  }
}

- (void)startResponseTimerWithTimeInterval:(double)a3 queue:(id)a4 completionHandler:(id)a5
{
  v15 = a4;
  v8 = a5;
  v9 = [(HMDModernTransportMessageContext *)self responseTimer];

  if (!v9)
  {
    [(HMDModernTransportMessageContext *)self setResponseCompletionBlock:v8];
    v10 = [(HMDModernTransportMessageContext *)self timerProvider];
    v11 = [v10 timerWithTimeInterval:0 options:a3];
    [(HMDModernTransportMessageContext *)self setResponseTimer:v11];

    v12 = [(HMDModernTransportMessageContext *)self responseTimer];
    [v12 setDelegate:self];

    v13 = [(HMDModernTransportMessageContext *)self responseTimer];
    [v13 setDelegateQueue:v15];

    v14 = [(HMDModernTransportMessageContext *)self responseTimer];
    [v14 resume];
  }
}

- (double)timeoutRemaining
{
  [(HMDModernTransportMessageContext *)self timeout];
  v4 = v3;
  result = 0.0;
  if (v4 >= 2.22044605e-16)
  {
    [(HMDModernTransportMessageContext *)self requestStartTime];
    if (v6 >= 2.22044605e-16)
    {
      v7 = [(HMDModernTransportMessageContext *)self dateProvider];
      [v7 timeIntervalSince1970];
      v9 = v8;
      [(HMDModernTransportMessageContext *)self requestStartTime];
      v11 = v9 - v10;

      [(HMDModernTransportMessageContext *)self timeout];
      return v12 - v11;
    }

    else
    {

      [(HMDModernTransportMessageContext *)self timeout];
    }
  }

  return result;
}

- (id)preparedMessageWithTimeout:(double)a3
{
  v5 = [(HMDModernTransportMessageContext *)self message];
  v6 = [(HMDModernTransportMessageContext *)self options];
  v7 = [v5 headers];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v11 = v10;

  v12 = MEMORY[0x277CCABB0];
  [(HMDModernTransportMessageContext *)self requestStartTime];
  v13 = [v12 numberWithDouble:?];
  v14 = [v6 requestStartTimeHeaderKey];
  [v11 setObject:v13 forKeyedSubscript:v14];

  [v6 timeToLive];
  if (v15 >= 2.22044605e-16)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v17 = [v6 timeToLiveHeaderKey];
    [v11 setObject:v16 forKeyedSubscript:v17];
  }

  v31 = v6;
  v18 = [HMDRemoteMessage alloc];
  v19 = [v5 name];
  v20 = [v5 qualityOfService];
  v21 = [v5 destination];
  v22 = [v5 messagePayload];
  v23 = [v5 type];
  LOBYTE(v30) = [v5 isSecure];
  v24 = -[HMDRemoteMessage initWithName:qualityOfService:destination:payload:headers:type:timeout:secure:restriction:sendOptions:](v18, "initWithName:qualityOfService:destination:payload:headers:type:timeout:secure:restriction:sendOptions:", v19, v20, v21, v22, v11, v23, a3, v30, [v5 restriction], objc_msgSend(v5, "sendOptions"));

  v25 = [v5 identifier];
  [(HMDRemoteMessage *)v24 setIdentifier:v25];

  v26 = [v5 userInfo];
  v27 = [(HMDRemoteMessage *)v24 internal];
  [v27 setUserInfo:v26];

  [(HMDRemoteMessage *)v24 setResponseHandler:0];
  v28 = [v5 transactionIdentifier];
  [(HMDRemoteMessage *)v24 setTransactionIdentifier:v28];

  if (![(HMDRemoteMessage *)v24 type])
  {
    [(HMDRemoteMessage *)v24 setResponseRestriction:[(HMDRemoteMessage *)v24 restriction]];
  }

  return v24;
}

- (void)receivedResponseOverTransport:(id)a3 withError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(HMDModernTransportMessageContextOptions *)self->_options expectsMultipleResponses];
  if (!v6 || !v7)
  {
    v8 = [(HMDModernTransportMessageContext *)self _activityForTransport:v9];
    if (([v8 isActivated] & 1) == 0)
    {
      [v8 activate];
    }

    [(HMDModernTransportMessageContext *)self _completeTransportActivity:v8 txError:0 rxError:v6];

    if (!v6)
    {
      ++self->_successfulResponseCount;
    }
  }
}

- (void)completeSendingOverTransport:(id)a3 withError:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v73 = a4;
  v7 = [(HMDModernTransportMessageContext *)self options];
  v8 = [v7 transports];
  v9 = [v8 containsObject:v6];

  if ((v9 & 1) == 0)
  {
    v59 = objc_autoreleasePoolPush();
    v60 = self;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      v62 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v62;
      _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Invalid transport", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v59);
    v63 = [[HMDAssertionLogEvent alloc] initWithReason:@"Invalid transport"];
    v64 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v64 submitLogEvent:v63];
  }

  v10 = [(HMDModernTransportMessageContext *)self inProgressTransports];
  v11 = [v10 containsObject:v6];

  if ((v11 & 1) == 0)
  {
    v65 = objc_autoreleasePoolPush();
    v66 = self;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      v68 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v68;
      _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Transport has not started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v65);
    v69 = [[HMDAssertionLogEvent alloc] initWithReason:@"Transport has not started"];
    v70 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v70 submitLogEvent:v69];
  }

  os_unfair_lock_lock_with_options();
  v12 = [(HMDModernTransportMessageContext *)self dateProvider];
  [v12 timeIntervalSince1970];
  v14 = v13;
  v15 = [(HMDModernTransportMessageContext *)self inProgressTransportToStartTimeMap];
  v16 = [v15 objectForKey:v6];
  [v16 doubleValue];
  v18 = v17;

  v19 = [(HMDModernTransportMessageContext *)self inProgressTransportToStartTimeMap];
  [v19 removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  if (v73)
  {
    v20 = [(HMDModernTransportMessageContext *)self _activityForTransport:v6];
    [(HMDModernTransportMessageContext *)self _completeTransportActivity:v20 txError:v73 rxError:0];
LABEL_7:

    goto LABEL_8;
  }

  self->_didSucceedSending = 1;
  if (![(HMDModernTransportMessageContext *)self expectsResponse])
  {
    v20 = [(HMDModernTransportMessageContext *)self _activityForTransport:v6];
    [(HMDModernTransportMessageContext *)self _completeTransportActivity:v20 txError:0 rxError:0];
    goto LABEL_7;
  }

LABEL_8:
  v21 = [v6 transportType];
  if (v21 != 6 || (-[HMDModernTransportMessageContext options](self, "options"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 expectRapportSuccess], v22, v23))
  {
    v24 = [v6 maximumNumberOfRetries];
    v25 = [(HMDModernTransportMessageContext *)self retriesRemainingForTransport];
    v26 = [v25 objectForKey:v6];
    v27 = [v26 unsignedIntValue];

    v72 = [(HMDModernTransportMessageContext *)self logEventSubmitter];
    v28 = [HMDRemoteMessageTxReportLogEvent txReportForTransport:v21 latency:v24 - v27 retriesUsed:v14 - v18];
    v29 = v73;
    if (self)
    {
      v30 = v73 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v71 = v29;
      v32 = v29;
      v33 = [v32 userInfo];
      v34 = *MEMORY[0x277CCA7E8];
      v35 = [v33 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      v37 = v36;

      v38 = [v37 userInfo];
      v39 = [v38 objectForKeyedSubscript:v34];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      v41 = v40;

      v42 = [v41 userInfo];
      v43 = [v42 objectForKeyedSubscript:v34];

      objc_opt_class();
      LOBYTE(v42) = objc_opt_isKindOfClass();

      v44 = v41 != 0;
      v45 = v44 & v42;
      v46 = v37 != 0;
      v47 = !v46 || !v44;
      if (v46 && v44)
      {
        v48 = v37;
      }

      else
      {
        v48 = v32;
      }

      if (v47)
      {
        v49 = v32;
      }

      else
      {
        v49 = v35;
      }

      if ((v45 & (v43 != 0)) != 0)
      {
        v48 = v41;
      }

      else
      {
        v39 = v49;
      }

      v50 = v48;
      v31 = v39;

      v29 = v71;
    }

    [v72 submitLogEvent:v28 error:v31];
  }

  v51 = [(HMDModernTransportMessageContext *)self completionHandler];

  if (v51 && (!v73 || [(HMDModernTransportMessageContext *)self _finishedAllTransports]))
  {
    v52 = [(HMDModernTransportMessageContext *)self completionHandler];
    (v52)[2](v52, v73);

    [(HMDModernTransportMessageContext *)self setCompletionHandler:0];
  }

  if ([(HMDModernTransportMessageContext *)self _finishedAllTransports]|| self->_didSucceedSending)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = HMFGetLogIdentifier();
      v57 = [(HMDModernTransportMessageContext *)v54 messageID];
      *buf = 138543618;
      v75 = v56;
      v76 = 2114;
      v77 = v57;
      _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ no longer needed, clearing message.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    [(HMDModernTransportMessageContext *)v54 setMessage:0];
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (BOOL)_finishedAllTransports
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock_with_options();
    v2 = [v1 inProgressTransportToStartTimeMap];
    v3 = [v2 count];

    os_unfair_lock_unlock((v1 + 16));
    return ([*(v1 + 8) count] | v3) == 0;
  }

  return result;
}

- (void)decrementRetriesForTransport:(id)a3
{
  v9 = a3;
  v4 = [(HMDModernTransportMessageContext *)self retriesRemainingForTransport];
  v5 = [v4 objectForKey:v9];
  v6 = [v5 integerValue];

  if (v6)
  {
    retriesRemainingForTransport = self->_retriesRemainingForTransport;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6 - 1];
    [(NSMapTable *)retriesRemainingForTransport setObject:v8 forKey:v9];
  }
}

- (unint64_t)retriesRemainingForTransport:(id)a3
{
  v5 = a3;
  v6 = [(HMDModernTransportMessageContext *)self remainingTransports];
  v7 = [v6 containsObject:v5];
  if ((v7 & 1) != 0 || (-[HMDModernTransportMessageContext inProgressTransports](self, "inProgressTransports"), v3 = objc_claimAutoreleasedReturnValue(), [v3 containsObject:v5]))
  {
    v8 = [(HMDModernTransportMessageContext *)self retriesRemainingForTransport];
    v9 = [v8 objectForKey:v5];
    v10 = [v9 integerValue];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_7:
  return v10;
}

- (void)startSendingOverTransport:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDModernTransportMessageContext *)self options];
  v6 = [v5 transports];
  v7 = [v6 containsObject:v4];

  if ((v7 & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      HMFGetLogIdentifier();
      v33 = v32 = 138543362;
      v22 = v33;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Invalid transport", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [[HMDAssertionLogEvent alloc] initWithReason:@"Invalid transport"];
    v24 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v24 submitLogEvent:v23];
  }

  if (![v4 maximumNumberOfRetries] && (-[NSMutableSet containsObject:](self->_remainingTransports, "containsObject:", v4) & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      v28 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v28;
      v29 = v28;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Transport already started", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v30 = [[HMDAssertionLogEvent alloc] initWithReason:@"Transport already started"];
    v31 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v31 submitLogEvent:v30];
  }

  v8 = [(HMDModernTransportMessageContext *)self dateProvider];
  [v8 timeIntervalSince1970];
  v10 = v9;

  v11 = [(HMDModernTransportMessageContext *)self messageNetworkActivity];
  v12 = [v11 isActivated];

  if ((v12 & 1) == 0)
  {
    v13 = [(HMDModernTransportMessageContext *)self messageNetworkActivity];
    [v13 activate];
  }

  [(HMDModernTransportMessageContext *)self requestStartTime];
  if (v14 < 2.22044605e-16)
  {
    [(HMDModernTransportMessageContext *)self setRequestStartTime:v10];
  }

  v15 = [(HMDModernTransportMessageContext *)self _activityForTransport:v4];
  if (([v15 isActivated] & 1) == 0)
  {
    [v15 activate];
  }

  [(NSMutableSet *)self->_remainingTransports removeObject:v4];
  os_unfair_lock_lock_with_options();
  v16 = [(HMDModernTransportMessageContext *)self inProgressTransportToStartTimeMap];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  [v16 setObject:v17 forKey:v4];

  os_unfair_lock_unlock(&self->_lock);
  v18 = *MEMORY[0x277D85DE8];
}

- (NSSet)inProgressTransports
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDModernTransportMessageContext *)self inProgressTransportToStartTimeMap];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 keyEnumerator];
  v7 = [v6 allObjects];
  v8 = [v5 setWithArray:v7];

  return v8;
}

- (BOOL)expectsResponse
{
  v2 = [(HMDModernTransportMessageContext *)self messageResponseHandler];
  v3 = v2 != 0;

  return v3;
}

- (double)timeout
{
  v3 = [(HMDModernTransportMessageContext *)self options];
  [v3 timeoutOverride];
  v5 = v4;

  if (v5 <= 0.0)
  {

    [(HMDModernTransportMessageContext *)self messageTimeout];
  }

  else
  {
    v6 = [(HMDModernTransportMessageContext *)self options];
    [v6 timeoutOverride];
    v8 = v7;

    return v8;
  }

  return result;
}

- (NSMapTable)inProgressTransportToStartTimeMap
{
  os_unfair_lock_assert_owner(&self->_lock);
  inProgressTransportToStartTimeMap = self->_inProgressTransportToStartTimeMap;

  return inProgressTransportToStartTimeMap;
}

- (HMDModernTransportMessageContext)initWithMessage:(id)a3 options:(id)a4 completionHandler:(id)a5 dateProvider:(id)a6 timerProvider:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = +[HMDNetworkActivityWrapperFactory sharedInstance];
  v18 = +[HMDMetricsManager sharedLogEventSubmitter];
  v19 = [(HMDModernTransportMessageContext *)self initWithMessage:v16 options:v15 completionHandler:v14 dateProvider:v13 timerProvider:v12 activityFactory:v17 logEventSubmitter:v18];

  return v19;
}

- (HMDModernTransportMessageContext)initWithMessage:(id)a3 options:(id)a4 completionHandler:(id)a5 dateProvider:(id)a6 timerProvider:(id)a7 activityFactory:(id)a8 logEventSubmitter:(id)a9
{
  v77 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v68 = a6;
  v67 = a7;
  v66 = a8;
  v65 = a9;
  v73.receiver = self;
  v73.super_class = HMDModernTransportMessageContext;
  v19 = [(HMDModernTransportMessageContext *)&v73 init];
  v20 = v19;
  if (v19)
  {
    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_message, a3);
    v21 = [v16 name];
    messageName = v20->_messageName;
    v20->_messageName = v21;

    v20->_messageType = [v16 type];
    v23 = [v16 identifier];
    messageID = v20->_messageID;
    v20->_messageID = v23;

    v25 = [v16 responseHandler];
    messageResponseHandler = v20->_messageResponseHandler;
    v20->_messageResponseHandler = v25;

    [v16 timeout];
    v20->_messageTimeout = v27;
    v28 = [v16 identifier];
    identifier = v20->_identifier;
    v20->_identifier = v28;

    v64 = v18;
    if (![v16 type])
    {
      v30 = [v16 transactionIdentifier];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
        v33 = v20->_identifier;
        v20->_identifier = v32;
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v57 = v20;
        loga = HMFGetOSLogHandle();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
        {
          HMFGetLogIdentifier();
          v58 = v59 = v57;
          *buf = 138543362;
          v76 = v58;
          _os_log_impl(&dword_2531F8000, loga, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Transaction ID should not be nil for a request message", buf, 0xCu);

          v57 = v59;
        }

        objc_autoreleasePoolPop(context);
        v33 = [[HMDAssertionLogEvent alloc] initWithReason:@"Transaction ID should not be nil for a request message"];
        logb = +[HMDMetricsManager sharedLogEventSubmitter];
        [logb submitLogEvent:v33];
      }

      v18 = v64;
    }

    v34 = [v16 destination];
    destination = v20->_destination;
    v20->_destination = v34;

    v20->_messageQualityOfService = [v16 qualityOfService];
    objc_storeStrong(&v20->_options, a4);
    v36 = [v18 copy];
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v36;

    objc_storeStrong(&v20->_dateProvider, a6);
    objc_storeStrong(&v20->_timerProvider, a7);
    log = v17;
    v38 = [v17 transports];
    v39 = [v38 mutableCopy];
    remainingTransports = v20->_remainingTransports;
    v20->_remainingTransports = v39;

    v41 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    inProgressTransportToStartTimeMap = v20->_inProgressTransportToStartTimeMap;
    v20->_inProgressTransportToStartTimeMap = v41;

    objc_storeStrong(&v20->_activityFactory, a8);
    objc_storeStrong(&v20->_logEventSubmitter, a9);
    v43 = [(HMDNetworkActivityWrapperFactory *)v20->_activityFactory networkActivityWrapperWithLabel:1];
    messageNetworkActivity = v20->_messageNetworkActivity;
    v20->_messageNetworkActivity = v43;

    v20->_keepRetrying = 1;
    v45 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    retriesRemainingForTransport = v20->_retriesRemainingForTransport;
    v20->_retriesRemainingForTransport = v45;

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v47 = v20->_remainingTransports;
    v48 = [(NSMutableSet *)v47 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v70;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v70 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v69 + 1) + 8 * i);
          v53 = v20->_retriesRemainingForTransport;
          v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v52, "maximumNumberOfRetries")}];
          [(NSMapTable *)v53 setObject:v54 forKey:v52];
        }

        v49 = [(NSMutableSet *)v47 countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v49);
    }

    v17 = log;
    v18 = v64;
  }

  v55 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_88729 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_88729, &__block_literal_global_88730);
  }

  v3 = logCategory__hmf_once_v14_88731;

  return v3;
}

uint64_t __47__HMDModernTransportMessageContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_88731;
  logCategory__hmf_once_v14_88731 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end