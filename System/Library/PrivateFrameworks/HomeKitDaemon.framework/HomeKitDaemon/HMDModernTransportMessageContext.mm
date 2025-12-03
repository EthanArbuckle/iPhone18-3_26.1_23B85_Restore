@interface HMDModernTransportMessageContext
+ (id)logCategory;
- (BOOL)_finishedAllTransports;
- (BOOL)expectsResponse;
- (HMDModernTransportMessageContext)initWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider;
- (HMDModernTransportMessageContext)initWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider activityFactory:(id)factory logEventSubmitter:(id)submitter;
- (NSMapTable)inProgressTransportToStartTimeMap;
- (NSSet)inProgressTransports;
- (double)timeout;
- (double)timeoutRemaining;
- (id)_activityForTransport:(id)transport;
- (id)_attemptedTransports;
- (id)preparedMessageWithTimeout:(double)timeout;
- (unint64_t)retriesRemainingForTransport:(id)transport;
- (void)_completeTransportActivity:(void *)activity txError:(void *)error rxError:;
- (void)completeSendingOverTransport:(id)transport withError:(id)error;
- (void)decrementRetriesForTransport:(id)transport;
- (void)done;
- (void)receivedResponseOverTransport:(id)transport withError:(id)error;
- (void)startResponseTimerWithTimeInterval:(double)interval queue:(id)queue completionHandler:(id)handler;
- (void)startSendingOverTransport:(id)transport;
- (void)startTransportFallbackTimerWithTimeInterval:(double)interval queue:(id)queue completionHandler:(id)handler;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDModernTransportMessageContext

- (id)_attemptedTransports
{
  selfCopy = self;
  if (self)
  {
    transports = [self[9] transports];
    v3 = [transports mutableCopy];

    [v3 minusSet:selfCopy[1]];
    selfCopy = [v3 copy];
  }

  return selfCopy;
}

- (void)done
{
  v26[7] = *MEMORY[0x277D85DE8];
  responseTimer = [(HMDModernTransportMessageContext *)self responseTimer];
  [responseTimer cancel];

  [(HMDModernTransportMessageContext *)self setResponseTimer:0];
  [(HMDModernTransportMessageContext *)self setResponseCompletionBlock:0];
  fallbackTimer = [(HMDModernTransportMessageContext *)self fallbackTimer];
  [fallbackTimer cancel];

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
  dateProvider = [(HMDModernTransportMessageContext *)self dateProvider];
  [dateProvider timeIntervalSince1970];
  v8 = v7;
  [(HMDModernTransportMessageContext *)self requestStartTime];
  v10 = v8 - v9;

  v25[0] = @"remoteMessageName";
  messageName = [(HMDModernTransportMessageContext *)self messageName];
  v26[0] = messageName;
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
  _attemptedTransports = [(HMDModernTransportMessageContext *)&self->super.isa _attemptedTransports];
  v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(_attemptedTransports, "count")}];
  v26[6] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  messageNetworkActivity = [(HMDModernTransportMessageContext *)self messageNetworkActivity];
  [messageNetworkActivity submitMetrics:v20 withName:@"modernTransportNetworkActivityMetrics"];

  messageNetworkActivity2 = [(HMDModernTransportMessageContext *)self messageNetworkActivity];
  [messageNetworkActivity2 completeWithSuccess:v24];

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)expectsResponse
{
  messageResponseHandler = [(HMDModernTransportMessageContext *)self messageResponseHandler];
  v3 = messageResponseHandler != 0;

  return v3;
}

- (void)timerDidFire:(id)fire
{
  v25 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  responseTimer = [(HMDModernTransportMessageContext *)self responseTimer];

  if (responseTimer == fireCopy)
  {
    responseCompletionBlock = [(HMDModernTransportMessageContext *)self responseCompletionBlock];

    if (responseCompletionBlock)
    {
      if (![(HMDModernTransportMessageContext *)self successfulResponseCount])
      {
        [(HMDModernTransportMessageContext *)self setDidTimeout:1];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        _attemptedTransports = [(HMDModernTransportMessageContext *)&self->super.isa _attemptedTransports];
        v11 = [_attemptedTransports countByEnumeratingWithState:&v20 objects:v24 count:16];
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
                objc_enumerationMutation(_attemptedTransports);
              }

              v15 = *(*(&v20 + 1) + 8 * i);
              v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{8, v20}];
              v17 = [(HMDModernTransportMessageContext *)self _activityForTransport:v15];
              [(HMDModernTransportMessageContext *)self _completeTransportActivity:v17 txError:0 rxError:v16];
            }

            v12 = [_attemptedTransports countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v12);
        }
      }

      responseCompletionBlock2 = [(HMDModernTransportMessageContext *)self responseCompletionBlock];
      responseCompletionBlock2[2]();

      [(HMDModernTransportMessageContext *)self setResponseCompletionBlock:0];
    }

    [(HMDModernTransportMessageContext *)self setResponseTimer:0];
  }

  else
  {
    fallbackTimer = [(HMDModernTransportMessageContext *)self fallbackTimer];

    if (fallbackTimer == fireCopy)
    {
      fallbackCompletionBlock = [(HMDModernTransportMessageContext *)self fallbackCompletionBlock];

      if (fallbackCompletionBlock)
      {
        [(HMDModernTransportMessageContext *)self setDidFallback:1];
        fallbackCompletionBlock2 = [(HMDModernTransportMessageContext *)self fallbackCompletionBlock];
        fallbackCompletionBlock2[2]();

        [(HMDModernTransportMessageContext *)self setFallbackCompletionBlock:0];
      }

      [(HMDModernTransportMessageContext *)self setFallbackTimer:0];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_activityForTransport:(id)transport
{
  transportCopy = transport;
  if (transport)
  {
    transportType = [a2 transportType];
    v4 = 3;
    if (transportType != 6)
    {
      v4 = 0;
    }

    if (transportType == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v4;
    }

    messageNetworkActivity = [transportCopy messageNetworkActivity];
    transportCopy = [messageNetworkActivity childActivityWithLabel:v5 createIfNeeded:1];
  }

  return transportCopy;
}

- (void)_completeTransportActivity:(void *)activity txError:(void *)error rxError:
{
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = a2;
  activityCopy = activity;
  errorCopy = error;
  v10 = errorCopy;
  if (self)
  {
    if (activityCopy)
    {
      code = [activityCopy code];
      domain = [activityCopy domain];
      if (v10)
      {
LABEL_4:
        code2 = [v10 code];
        domain2 = [v10 domain];
LABEL_7:
        v19[0] = @"txErrorCode";
        v15 = [MEMORY[0x277CCABB0] numberWithInteger:code];
        v20[0] = v15;
        v20[1] = domain;
        v19[1] = @"txErrorDomain";
        v19[2] = @"rxErrorCode";
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:code2];
        v19[3] = @"rxErrorDomain";
        v20[2] = v16;
        v20[3] = domain2;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

        [v7 submitMetrics:v17 withName:@"transportNetworkActivityMetrics"];
        [v7 completeWithSuccess:(activityCopy | v10) == 0];

        goto LABEL_8;
      }
    }

    else
    {
      code = 0;
      domain = @"None";
      if (errorCopy)
      {
        goto LABEL_4;
      }
    }

    code2 = 0;
    domain2 = @"None";
    goto LABEL_7;
  }

LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)startTransportFallbackTimerWithTimeInterval:(double)interval queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  fallbackTimer = [(HMDModernTransportMessageContext *)self fallbackTimer];

  if (!fallbackTimer)
  {
    [(HMDModernTransportMessageContext *)self setFallbackCompletionBlock:handlerCopy];
    timerProvider = [(HMDModernTransportMessageContext *)self timerProvider];
    v11 = [timerProvider timerWithTimeInterval:0 options:interval];
    [(HMDModernTransportMessageContext *)self setFallbackTimer:v11];

    fallbackTimer2 = [(HMDModernTransportMessageContext *)self fallbackTimer];
    [fallbackTimer2 setDelegate:self];

    fallbackTimer3 = [(HMDModernTransportMessageContext *)self fallbackTimer];
    [fallbackTimer3 setDelegateQueue:queueCopy];

    fallbackTimer4 = [(HMDModernTransportMessageContext *)self fallbackTimer];
    [fallbackTimer4 resume];
  }
}

- (void)startResponseTimerWithTimeInterval:(double)interval queue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  responseTimer = [(HMDModernTransportMessageContext *)self responseTimer];

  if (!responseTimer)
  {
    [(HMDModernTransportMessageContext *)self setResponseCompletionBlock:handlerCopy];
    timerProvider = [(HMDModernTransportMessageContext *)self timerProvider];
    v11 = [timerProvider timerWithTimeInterval:0 options:interval];
    [(HMDModernTransportMessageContext *)self setResponseTimer:v11];

    responseTimer2 = [(HMDModernTransportMessageContext *)self responseTimer];
    [responseTimer2 setDelegate:self];

    responseTimer3 = [(HMDModernTransportMessageContext *)self responseTimer];
    [responseTimer3 setDelegateQueue:queueCopy];

    responseTimer4 = [(HMDModernTransportMessageContext *)self responseTimer];
    [responseTimer4 resume];
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
      dateProvider = [(HMDModernTransportMessageContext *)self dateProvider];
      [dateProvider timeIntervalSince1970];
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

- (id)preparedMessageWithTimeout:(double)timeout
{
  message = [(HMDModernTransportMessageContext *)self message];
  options = [(HMDModernTransportMessageContext *)self options];
  headers = [message headers];
  v8 = [headers mutableCopy];
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
  requestStartTimeHeaderKey = [options requestStartTimeHeaderKey];
  [v11 setObject:v13 forKeyedSubscript:requestStartTimeHeaderKey];

  [options timeToLive];
  if (v15 >= 2.22044605e-16)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    timeToLiveHeaderKey = [options timeToLiveHeaderKey];
    [v11 setObject:v16 forKeyedSubscript:timeToLiveHeaderKey];
  }

  v31 = options;
  v18 = [HMDRemoteMessage alloc];
  name = [message name];
  qualityOfService = [message qualityOfService];
  destination = [message destination];
  messagePayload = [message messagePayload];
  type = [message type];
  LOBYTE(v30) = [message isSecure];
  v24 = -[HMDRemoteMessage initWithName:qualityOfService:destination:payload:headers:type:timeout:secure:restriction:sendOptions:](v18, "initWithName:qualityOfService:destination:payload:headers:type:timeout:secure:restriction:sendOptions:", name, qualityOfService, destination, messagePayload, v11, type, timeout, v30, [message restriction], objc_msgSend(message, "sendOptions"));

  identifier = [message identifier];
  [(HMDRemoteMessage *)v24 setIdentifier:identifier];

  userInfo = [message userInfo];
  internal = [(HMDRemoteMessage *)v24 internal];
  [internal setUserInfo:userInfo];

  [(HMDRemoteMessage *)v24 setResponseHandler:0];
  transactionIdentifier = [message transactionIdentifier];
  [(HMDRemoteMessage *)v24 setTransactionIdentifier:transactionIdentifier];

  if (![(HMDRemoteMessage *)v24 type])
  {
    [(HMDRemoteMessage *)v24 setResponseRestriction:[(HMDRemoteMessage *)v24 restriction]];
  }

  return v24;
}

- (void)receivedResponseOverTransport:(id)transport withError:(id)error
{
  transportCopy = transport;
  errorCopy = error;
  expectsMultipleResponses = [(HMDModernTransportMessageContextOptions *)self->_options expectsMultipleResponses];
  if (!errorCopy || !expectsMultipleResponses)
  {
    v8 = [(HMDModernTransportMessageContext *)self _activityForTransport:transportCopy];
    if (([v8 isActivated] & 1) == 0)
    {
      [v8 activate];
    }

    [(HMDModernTransportMessageContext *)self _completeTransportActivity:v8 txError:0 rxError:errorCopy];

    if (!errorCopy)
    {
      ++self->_successfulResponseCount;
    }
  }
}

- (void)completeSendingOverTransport:(id)transport withError:(id)error
{
  v78 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  errorCopy = error;
  options = [(HMDModernTransportMessageContext *)self options];
  transports = [options transports];
  v9 = [transports containsObject:transportCopy];

  if ((v9 & 1) == 0)
  {
    v59 = objc_autoreleasePoolPush();
    selfCopy = self;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      v62 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v62;
      _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Invalid transport", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v59);
    v63 = [[HMDAssertionLogEvent alloc] initWithReason:@"Invalid transport"];
    v64 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v64 submitLogEvent:v63];
  }

  inProgressTransports = [(HMDModernTransportMessageContext *)self inProgressTransports];
  v11 = [inProgressTransports containsObject:transportCopy];

  if ((v11 & 1) == 0)
  {
    v65 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v67 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      v68 = HMFGetLogIdentifier();
      *buf = 138543362;
      v75 = v68;
      _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Transport has not started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v65);
    v69 = [[HMDAssertionLogEvent alloc] initWithReason:@"Transport has not started"];
    v70 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v70 submitLogEvent:v69];
  }

  os_unfair_lock_lock_with_options();
  dateProvider = [(HMDModernTransportMessageContext *)self dateProvider];
  [dateProvider timeIntervalSince1970];
  v14 = v13;
  inProgressTransportToStartTimeMap = [(HMDModernTransportMessageContext *)self inProgressTransportToStartTimeMap];
  v16 = [inProgressTransportToStartTimeMap objectForKey:transportCopy];
  [v16 doubleValue];
  v18 = v17;

  inProgressTransportToStartTimeMap2 = [(HMDModernTransportMessageContext *)self inProgressTransportToStartTimeMap];
  [inProgressTransportToStartTimeMap2 removeObjectForKey:transportCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (errorCopy)
  {
    v20 = [(HMDModernTransportMessageContext *)self _activityForTransport:transportCopy];
    [(HMDModernTransportMessageContext *)self _completeTransportActivity:v20 txError:errorCopy rxError:0];
LABEL_7:

    goto LABEL_8;
  }

  self->_didSucceedSending = 1;
  if (![(HMDModernTransportMessageContext *)self expectsResponse])
  {
    v20 = [(HMDModernTransportMessageContext *)self _activityForTransport:transportCopy];
    [(HMDModernTransportMessageContext *)self _completeTransportActivity:v20 txError:0 rxError:0];
    goto LABEL_7;
  }

LABEL_8:
  transportType = [transportCopy transportType];
  if (transportType != 6 || (-[HMDModernTransportMessageContext options](self, "options"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 expectRapportSuccess], v22, v23))
  {
    maximumNumberOfRetries = [transportCopy maximumNumberOfRetries];
    retriesRemainingForTransport = [(HMDModernTransportMessageContext *)self retriesRemainingForTransport];
    v26 = [retriesRemainingForTransport objectForKey:transportCopy];
    unsignedIntValue = [v26 unsignedIntValue];

    logEventSubmitter = [(HMDModernTransportMessageContext *)self logEventSubmitter];
    v28 = [HMDRemoteMessageTxReportLogEvent txReportForTransport:transportType latency:maximumNumberOfRetries - unsignedIntValue retriesUsed:v14 - v18];
    v29 = errorCopy;
    if (self)
    {
      v30 = errorCopy == 0;
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
      userInfo = [v32 userInfo];
      v34 = *MEMORY[0x277CCA7E8];
      v35 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

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

      userInfo2 = [v37 userInfo];
      v39 = [userInfo2 objectForKeyedSubscript:v34];

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

      userInfo3 = [v41 userInfo];
      v43 = [userInfo3 objectForKeyedSubscript:v34];

      objc_opt_class();
      LOBYTE(userInfo3) = objc_opt_isKindOfClass();

      v44 = v41 != 0;
      v45 = v44 & userInfo3;
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

    [logEventSubmitter submitLogEvent:v28 error:v31];
  }

  completionHandler = [(HMDModernTransportMessageContext *)self completionHandler];

  if (completionHandler && (!errorCopy || [(HMDModernTransportMessageContext *)self _finishedAllTransports]))
  {
    completionHandler2 = [(HMDModernTransportMessageContext *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);

    [(HMDModernTransportMessageContext *)self setCompletionHandler:0];
  }

  if ([(HMDModernTransportMessageContext *)self _finishedAllTransports]|| self->_didSucceedSending)
  {
    v53 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = HMFGetLogIdentifier();
      messageID = [(HMDModernTransportMessageContext *)selfCopy3 messageID];
      *buf = 138543618;
      v75 = v56;
      v76 = 2114;
      v77 = messageID;
      _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ no longer needed, clearing message.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    [(HMDModernTransportMessageContext *)selfCopy3 setMessage:0];
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (BOOL)_finishedAllTransports
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock_with_options();
    inProgressTransportToStartTimeMap = [v1 inProgressTransportToStartTimeMap];
    v3 = [inProgressTransportToStartTimeMap count];

    os_unfair_lock_unlock((v1 + 16));
    return ([*(v1 + 8) count] | v3) == 0;
  }

  return result;
}

- (void)decrementRetriesForTransport:(id)transport
{
  transportCopy = transport;
  retriesRemainingForTransport = [(HMDModernTransportMessageContext *)self retriesRemainingForTransport];
  v5 = [retriesRemainingForTransport objectForKey:transportCopy];
  integerValue = [v5 integerValue];

  if (integerValue)
  {
    retriesRemainingForTransport = self->_retriesRemainingForTransport;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue - 1];
    [(NSMapTable *)retriesRemainingForTransport setObject:v8 forKey:transportCopy];
  }
}

- (unint64_t)retriesRemainingForTransport:(id)transport
{
  transportCopy = transport;
  remainingTransports = [(HMDModernTransportMessageContext *)self remainingTransports];
  v7 = [remainingTransports containsObject:transportCopy];
  if ((v7 & 1) != 0 || (-[HMDModernTransportMessageContext inProgressTransports](self, "inProgressTransports"), v3 = objc_claimAutoreleasedReturnValue(), [v3 containsObject:transportCopy]))
  {
    retriesRemainingForTransport = [(HMDModernTransportMessageContext *)self retriesRemainingForTransport];
    v9 = [retriesRemainingForTransport objectForKey:transportCopy];
    integerValue = [v9 integerValue];

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    integerValue = 0;
  }

LABEL_7:
  return integerValue;
}

- (void)startSendingOverTransport:(id)transport
{
  v34 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  options = [(HMDModernTransportMessageContext *)self options];
  transports = [options transports];
  v7 = [transports containsObject:transportCopy];

  if ((v7 & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      HMFGetLogIdentifier();
      v33 = v32 = 138543362;
      v22 = v33;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Invalid transport", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [[HMDAssertionLogEvent alloc] initWithReason:@"Invalid transport"];
    v24 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v24 submitLogEvent:v23];
  }

  if (![transportCopy maximumNumberOfRetries] && (-[NSMutableSet containsObject:](self->_remainingTransports, "containsObject:", transportCopy) & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      v28 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v28;
      v29 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Transport already started", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v30 = [[HMDAssertionLogEvent alloc] initWithReason:@"Transport already started"];
    v31 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v31 submitLogEvent:v30];
  }

  dateProvider = [(HMDModernTransportMessageContext *)self dateProvider];
  [dateProvider timeIntervalSince1970];
  v10 = v9;

  messageNetworkActivity = [(HMDModernTransportMessageContext *)self messageNetworkActivity];
  isActivated = [messageNetworkActivity isActivated];

  if ((isActivated & 1) == 0)
  {
    messageNetworkActivity2 = [(HMDModernTransportMessageContext *)self messageNetworkActivity];
    [messageNetworkActivity2 activate];
  }

  [(HMDModernTransportMessageContext *)self requestStartTime];
  if (v14 < 2.22044605e-16)
  {
    [(HMDModernTransportMessageContext *)self setRequestStartTime:v10];
  }

  v15 = [(HMDModernTransportMessageContext *)self _activityForTransport:transportCopy];
  if (([v15 isActivated] & 1) == 0)
  {
    [v15 activate];
  }

  [(NSMutableSet *)self->_remainingTransports removeObject:transportCopy];
  os_unfair_lock_lock_with_options();
  inProgressTransportToStartTimeMap = [(HMDModernTransportMessageContext *)self inProgressTransportToStartTimeMap];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  [inProgressTransportToStartTimeMap setObject:v17 forKey:transportCopy];

  os_unfair_lock_unlock(&self->_lock);
  v18 = *MEMORY[0x277D85DE8];
}

- (NSSet)inProgressTransports
{
  os_unfair_lock_lock_with_options();
  inProgressTransportToStartTimeMap = [(HMDModernTransportMessageContext *)self inProgressTransportToStartTimeMap];
  v4 = [inProgressTransportToStartTimeMap copy];

  os_unfair_lock_unlock(&self->_lock);
  v5 = MEMORY[0x277CBEB98];
  keyEnumerator = [v4 keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v8 = [v5 setWithArray:allObjects];

  return v8;
}

- (double)timeout
{
  options = [(HMDModernTransportMessageContext *)self options];
  [options timeoutOverride];
  v5 = v4;

  if (v5 <= 0.0)
  {

    [(HMDModernTransportMessageContext *)self messageTimeout];
  }

  else
  {
    options2 = [(HMDModernTransportMessageContext *)self options];
    [options2 timeoutOverride];
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

- (HMDModernTransportMessageContext)initWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider
{
  timerProviderCopy = timerProvider;
  providerCopy = provider;
  handlerCopy = handler;
  optionsCopy = options;
  messageCopy = message;
  v17 = +[HMDNetworkActivityWrapperFactory sharedInstance];
  v18 = +[HMDMetricsManager sharedLogEventSubmitter];
  v19 = [(HMDModernTransportMessageContext *)self initWithMessage:messageCopy options:optionsCopy completionHandler:handlerCopy dateProvider:providerCopy timerProvider:timerProviderCopy activityFactory:v17 logEventSubmitter:v18];

  return v19;
}

- (HMDModernTransportMessageContext)initWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider activityFactory:(id)factory logEventSubmitter:(id)submitter
{
  v77 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  optionsCopy = options;
  handlerCopy = handler;
  providerCopy = provider;
  timerProviderCopy = timerProvider;
  factoryCopy = factory;
  submitterCopy = submitter;
  v73.receiver = self;
  v73.super_class = HMDModernTransportMessageContext;
  v19 = [(HMDModernTransportMessageContext *)&v73 init];
  v20 = v19;
  if (v19)
  {
    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_message, message);
    name = [messageCopy name];
    messageName = v20->_messageName;
    v20->_messageName = name;

    v20->_messageType = [messageCopy type];
    identifier = [messageCopy identifier];
    messageID = v20->_messageID;
    v20->_messageID = identifier;

    responseHandler = [messageCopy responseHandler];
    messageResponseHandler = v20->_messageResponseHandler;
    v20->_messageResponseHandler = responseHandler;

    [messageCopy timeout];
    v20->_messageTimeout = v27;
    identifier2 = [messageCopy identifier];
    identifier = v20->_identifier;
    v20->_identifier = identifier2;

    v64 = handlerCopy;
    if (![messageCopy type])
    {
      transactionIdentifier = [messageCopy transactionIdentifier];
      v31 = transactionIdentifier;
      if (transactionIdentifier)
      {
        v32 = transactionIdentifier;
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
          _os_log_impl(&dword_229538000, loga, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Transaction ID should not be nil for a request message", buf, 0xCu);

          v57 = v59;
        }

        objc_autoreleasePoolPop(context);
        v33 = [[HMDAssertionLogEvent alloc] initWithReason:@"Transaction ID should not be nil for a request message"];
        logb = +[HMDMetricsManager sharedLogEventSubmitter];
        [logb submitLogEvent:v33];
      }

      handlerCopy = v64;
    }

    destination = [messageCopy destination];
    destination = v20->_destination;
    v20->_destination = destination;

    v20->_messageQualityOfService = [messageCopy qualityOfService];
    objc_storeStrong(&v20->_options, options);
    v36 = [handlerCopy copy];
    completionHandler = v20->_completionHandler;
    v20->_completionHandler = v36;

    objc_storeStrong(&v20->_dateProvider, provider);
    objc_storeStrong(&v20->_timerProvider, timerProvider);
    log = optionsCopy;
    transports = [optionsCopy transports];
    v39 = [transports mutableCopy];
    remainingTransports = v20->_remainingTransports;
    v20->_remainingTransports = v39;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    inProgressTransportToStartTimeMap = v20->_inProgressTransportToStartTimeMap;
    v20->_inProgressTransportToStartTimeMap = strongToStrongObjectsMapTable;

    objc_storeStrong(&v20->_activityFactory, factory);
    objc_storeStrong(&v20->_logEventSubmitter, submitter);
    v43 = [(HMDNetworkActivityWrapperFactory *)v20->_activityFactory networkActivityWrapperWithLabel:1];
    messageNetworkActivity = v20->_messageNetworkActivity;
    v20->_messageNetworkActivity = v43;

    v20->_keepRetrying = 1;
    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    retriesRemainingForTransport = v20->_retriesRemainingForTransport;
    v20->_retriesRemainingForTransport = strongToStrongObjectsMapTable2;

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

    optionsCopy = log;
    handlerCopy = v64;
  }

  v55 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_284326 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_284326, &__block_literal_global_284327);
  }

  v3 = logCategory__hmf_once_v14_284328;

  return v3;
}

void __47__HMDModernTransportMessageContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_284328;
  logCategory__hmf_once_v14_284328 = v1;
}

@end