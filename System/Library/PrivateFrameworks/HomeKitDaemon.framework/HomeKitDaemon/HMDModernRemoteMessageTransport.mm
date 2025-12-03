@interface HMDModernRemoteMessageTransport
+ (id)logCategory;
- (BOOL)canSendMessage:(id)message;
- (HMDDeviceResidencyProvider)residencyProvider;
- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d;
- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d rapportTransport:(id)transport idsTransport:(id)idsTransport bleTransport:(id)bleTransport contextManager:(id)manager systemDateProvider:(id)provider idsDateProvider:(id)self0 timerProvider:(id)self1 timerManager:(id)self2 isWatch:(BOOL)self3 featuresDataSource:(id)self4;
- (id)start;
- (uint64_t)_contextUsesAllTransports:(void *)transports;
- (uint64_t)_isResidentToResidentMessage:(void *)message;
- (uint64_t)_sendOverRemainingTransportForContext:(void *)context;
- (void)_deviceReachabilityForContext:(uint64_t)context isReachable:;
- (void)_handleCompletionOnTransport:(void *)transport context:(void *)context error:;
- (void)_notifyDeviceReachabilityForDestination:(uint64_t)destination isReachable:;
- (void)_receivedMessage:(void *)message onTransport:;
- (void)_respondWithError:(void *)error completionHandler:(void *)handler error:;
- (void)_sendMessageOverTransport:(void *)transport forContext:;
- (void)_startFallbackTimerForContext:(void *)context fallbackTransport:(void *)transport withTimeout:(void *)timeout;
- (void)configureWithHomeMembershipVerifier:(id)verifier;
- (void)configureWithRemoteMessageListener:(id)listener;
- (void)messageTransport:(id)transport didReceiveMessage:(id)message;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)timerManager:(id)manager didFireForTimerContext:(id)context;
- (void)transport:(id)transport idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable;
- (void)updateMessagePayloadWithSystemTimeExpiry:(id)expiry idsTimeNow:(double)now systemTimeNow:(double)timeNow;
@end

@implementation HMDModernRemoteMessageTransport

+ (id)logCategory
{
  if (logCategory__hmf_once_t64 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t64, &__block_literal_global_189341);
  }

  v3 = logCategory__hmf_once_v65;

  return v3;
}

- (HMDDeviceResidencyProvider)residencyProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_residencyProvider);

  return WeakRetained;
}

- (void)configureWithRemoteMessageListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_rapportTransport;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [(HMDRemoteMessageTransport *)v6 setRemoteMessageListener:listenerCopy];
  }
}

- (void)configureWithHomeMembershipVerifier:(id)verifier
{
  v5.receiver = self;
  v5.super_class = HMDModernRemoteMessageTransport;
  verifierCopy = verifier;
  [(HMDRemoteMessageTransport *)&v5 configureWithHomeMembershipVerifier:verifierCopy];
  [(HMDRemoteMessageTransport *)self->_rapportTransport configureWithHomeMembershipVerifier:verifierCopy, v5.receiver, v5.super_class];
  [(HMDRemoteMessageTransport *)self->_idsTransport configureWithHomeMembershipVerifier:verifierCopy];
}

- (void)transport:(id)transport idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable
{
  if (reachable)
  {
    identifierCopy = identifier;
    reachabilityDelegate = [(HMDRemoteMessageTransport *)self reachabilityDelegate];
    [reachabilityDelegate transport:self idsIdentifier:identifierCopy didAppearReachable:1];
  }
}

- (void)messageTransport:(id)transport didReceiveMessage:(id)message
{
  transportCopy = transport;
  messageCopy = message;
  workQueue = [(HMDModernRemoteMessageTransport *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDModernRemoteMessageTransport_messageTransport_didReceiveMessage___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = messageCopy;
  v13 = transportCopy;
  v9 = transportCopy;
  v10 = messageCopy;
  dispatch_async(workQueue, block);
}

- (void)_receivedMessage:(void *)message onTransport:
{
  v202 = *MEMORY[0x277D85DE8];
  v5 = a2;
  messageCopy = message;
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v194 = v10;
    if (v10)
    {
      v11 = v8;
      v12 = messageCopy;
      headers = [(HMDAssertionLogEvent *)v11 headers];
      timeToLiveHeaderKey = [objc_opt_class() timeToLiveHeaderKey];
      v15 = [headers hmf_numberForKey:timeToLiveHeaderKey];
      [v15 doubleValue];
      v17 = v16;

      if (*&v17 < 2.22044605e-16)
      {
        goto LABEL_9;
      }

      requestStartTimeHeaderKey = [objc_opt_class() requestStartTimeHeaderKey];
      v19 = [headers hmf_numberForKey:requestStartTimeHeaderKey];
      [v19 doubleValue];
      v21 = v20;

      idsDateProvider = [self idsDateProvider];
      [idsDateProvider timeIntervalSince1970];
      v24 = v23;

      v25 = vabdd_f64(v24, v21);
      if (v25 < *&v17 || ([self systemDateProvider], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "timeIntervalSince1970"), v28 = v27, v26, vabdd_f64(v28, v21) < *&v17))
      {
LABEL_9:

        v29 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;

        identifier = [(HMDAssertionLogEvent *)v11 identifier];
        v193 = identifier;
        if (identifier)
        {
          v33 = identifier;
          destination = [(HMDAssertionLogEvent *)v11 destination];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = destination;
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;

          device = [(HMDAssertionLogEvent *)v36 device];
          isCurrentDevice = [device isCurrentDevice];

          if (isCurrentDevice)
          {
            v39 = objc_autoreleasePoolPush();
            selfCopy = self;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              HMFGetLogIdentifier();
              v43 = v42 = messageCopy;
              name = [(HMDAssertionLogEvent *)v31 name];
              *buf = 138543874;
              *&buf[4] = v43;
              *&buf[12] = 2114;
              *&buf[14] = name;
              *&buf[22] = 2112;
              v197 = v11;
              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_FAULT, "%{public}@Received invalid %{public}@ message %@, message is from ourselves", buf, 0x20u);

              messageCopy = v42;
            }

            objc_autoreleasePoolPop(v39);
          }

          else
          {
            v190 = messageCopy;
            v191 = v5;
            v54 = v33;
            messageIDDedupeBuffer = [self messageIDDedupeBuffer];
            v56 = [messageIDDedupeBuffer containsObject:v54];

            if ((v56 & 1) == 0)
            {
              messageIDDedupeBuffer2 = [self messageIDDedupeBuffer];
              v58 = [messageIDDedupeBuffer2 count];

              if (v58 >= 0x64)
              {
                messageIDDedupeBuffer3 = [self messageIDDedupeBuffer];
                [messageIDDedupeBuffer3 removeObjectAtIndex:0];
              }

              messageIDDedupeBuffer4 = [self messageIDDedupeBuffer];
              [messageIDDedupeBuffer4 addObject:v54];
            }

            v61 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v63 = HMFGetOSLogHandle();
            v64 = v63;
            if (!v56)
            {
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v70 = HMFGetLogIdentifier();
                name2 = [(HMDAssertionLogEvent *)v31 name];
                *buf = 138543874;
                *&buf[4] = v70;
                *&buf[12] = 2114;
                *&buf[14] = name2;
                *&buf[22] = 2112;
                v197 = v11;
                _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Received message over %{public}@: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v61);
              v72 = objc_autoreleasePoolPush();
              v73 = selfCopy2;
              v74 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
              {
                v75 = HMFGetLogIdentifier();
                shortDescription = [(HMDAssertionLogEvent *)v11 shortDescription];
                messagePayload = [(HMDAssertionLogEvent *)v11 messagePayload];
                *buf = 138543875;
                *&buf[4] = v75;
                *&buf[12] = 2114;
                *&buf[14] = shortDescription;
                *&buf[22] = 2113;
                v197 = messagePayload;
                _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_DEBUG, "%{public}@Received message %{public}@ with payload: %{private}@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v72);
              v68 = v194;
              destination2 = [v194 destination];
              [(HMDModernRemoteMessageTransport *)v73 _notifyDeviceReachabilityForDestination:destination2 isReachable:1];

              if ([v194 type])
              {
                if ([v194 type] == 1)
                {
                  v186 = v73;
                  v79 = v194;
                  v80 = v29;
                  transactionIdentifier = [v79 transactionIdentifier];
                  messageCopy = v190;
                  v5 = v191;
                  v184 = transactionIdentifier;
                  if (transactionIdentifier)
                  {
                    v82 = transactionIdentifier;
                    v182 = v80;
                    contextManager = [v186 contextManager];
                    v84 = [contextManager contextForIdentifier:v82];

                    v183 = v84;
                    if (v84)
                    {
                      v85 = v79;
                      userInfo = [v85 userInfo];
                      v87 = [userInfo objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

                      if (v87)
                      {
                        v88 = MEMORY[0x277CCAAC8];
                        v89 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
                        location = 0;
                        v90 = [v88 _strictlyUnarchivedObjectOfClasses:v89 fromData:v87 error:&location];
                        v91 = location;

                        if (!v90)
                        {
                          v92 = objc_autoreleasePoolPush();
                          v93 = v186;
                          v94 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                          {
                            HMFGetLogIdentifier();
                            v95 = v179 = v92;
                            [v85 identifier];
                            v97 = v96 = v79;
                            *buf = 138543874;
                            *&buf[4] = v95;
                            *&buf[12] = 2114;
                            *&buf[14] = v97;
                            *&buf[22] = 2112;
                            v197 = v91;
                            _os_log_impl(&dword_229538000, v94, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize response error for message %{public}@ with error: %@", buf, 0x20u);

                            v79 = v96;
                            v92 = v179;
                          }

                          objc_autoreleasePoolPop(v92);
                          v90 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Generic error." reason:@"Failed to deserialize remote error." suggestion:0 underlyingError:v91];
                        }

                        messageCopy = v190;
                      }

                      else
                      {
                        v90 = 0;
                      }

                      v181 = v79;

                      v140 = v85;
                      v141 = v90;
                      v142 = v183;
                      if (-[HMDAssertionLogEvent isHMFError](v141, "isHMFError") && -[HMDAssertionLogEvent code](v141, "code") == 14 && ([v142 destination], v143 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v143, (isKindOfClass & 1) != 0) && v143)
                      {
                        v145 = objc_autoreleasePoolPush();
                        v146 = v186;
                        v147 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v147, OS_LOG_TYPE_INFO))
                        {
                          v148 = HMFGetLogIdentifier();
                          identifier2 = [v140 identifier];
                          [v142 messageID];
                          v150 = v188 = v145;
                          *buf = 138544130;
                          *&buf[4] = v148;
                          *&buf[12] = 2114;
                          *&buf[14] = identifier2;
                          *&buf[22] = 2112;
                          v197 = v141;
                          *v198 = 2114;
                          *&v198[2] = v150;
                          _os_log_impl(&dword_229538000, v147, OS_LOG_TYPE_INFO, "%{public}@Ignoring response message %{public}@ with error: %@, for request %{public}@", buf, 0x2Au);

                          v145 = v188;
                          messageCopy = v190;
                        }

                        objc_autoreleasePoolPop(v145);
                        v151 = v141;
                      }

                      else
                      {

                        v152 = v182;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v153 = v152;
                        }

                        else
                        {
                          v153 = 0;
                        }

                        v154 = v153;

                        v180 = v154;
                        [v142 receivedResponseOverTransport:v154 withError:v141];
                        v155 = objc_autoreleasePoolPush();
                        v156 = v186;
                        v157 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                        {
                          v158 = HMFGetLogIdentifier();
                          messageID = [v142 messageID];
                          *buf = 138543618;
                          *&buf[4] = v158;
                          *&buf[12] = 2114;
                          *&buf[14] = messageID;
                          _os_log_impl(&dword_229538000, v157, OS_LOG_TYPE_DEFAULT, "%{public}@Received response for message %{public}@", buf, 0x16u);
                        }

                        objc_autoreleasePoolPop(v155);
                        featuresDataSource = [v156 featuresDataSource];
                        isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

                        if (isTransportRetryEnabled)
                        {
                          v162 = objc_autoreleasePoolPush();
                          v163 = v156;
                          v164 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                          {
                            v165 = HMFGetLogIdentifier();
                            [v142 messageID];
                            v166 = v189 = v162;
                            *buf = 138543618;
                            *&buf[4] = v165;
                            *&buf[12] = 2112;
                            *&buf[14] = v166;
                            _os_log_impl(&dword_229538000, v164, OS_LOG_TYPE_DEFAULT, "%{public}@Stop retrying for message %@", buf, 0x16u);

                            v162 = v189;
                          }

                          objc_autoreleasePoolPop(v162);
                          [v142 setKeepRetrying:0];
                        }

                        v167 = MEMORY[0x277CBEB38];
                        messagePayload2 = [v140 messagePayload];
                        v151 = [v167 dictionaryWithDictionary:messagePayload2];

                        userInfo2 = [v140 userInfo];
                        v170 = [userInfo2 objectForKeyedSubscript:@"kIDSMessageSourceIDKey"];
                        [v151 setObject:v170 forKeyedSubscript:@"kIDSMessageSourceIDKey"];

                        [v151 setObject:v141 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
                        v140 = v180;
                        v171 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v180, "transportType")}];
                        [v151 setObject:v171 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

                        [v151 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kRemoteMessageIsModernTransportUsedKey"];
                        v172 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v156, "isRapportLinkSlow")}];
                        [v151 setObject:v172 forKeyedSubscript:@"kRemoteMessageIsRapportLinkSlowKey"];

                        contextManager2 = [v156 contextManager];
                        options = [v142 options];
                        [contextManager2 completeContext:v142 withPayload:v151 error:v141 isFinal:{objc_msgSend(options, "expectsMultipleResponses") ^ 1}];

                        v142 = contextManager2;
                        messageCopy = v190;
                      }

                      v5 = v191;
                      v68 = v194;
                      v79 = v181;
                      v80 = v182;
                      v133 = v184;
                    }

                    else
                    {
                      v134 = objc_autoreleasePoolPush();
                      v135 = v186;
                      v136 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
                      {
                        v137 = HMFGetLogIdentifier();
                        [v79 identifier];
                        v139 = v138 = v79;
                        *buf = 138543618;
                        *&buf[4] = v137;
                        *&buf[12] = 2114;
                        *&buf[14] = v139;
                        _os_log_impl(&dword_229538000, v136, OS_LOG_TYPE_INFO, "%{public}@Could not find the context and dropping message %{public}@", buf, 0x16u);

                        v79 = v138;
                        v68 = v194;

                        messageCopy = v190;
                      }

                      objc_autoreleasePoolPop(v134);
                      v133 = v184;
                    }
                  }

                  else
                  {
                    v127 = objc_autoreleasePoolPush();
                    v128 = v186;
                    v129 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                    {
                      v130 = HMFGetLogIdentifier();
                      [v79 identifier];
                      v132 = v131 = v79;
                      *buf = 138543618;
                      *&buf[4] = v130;
                      *&buf[12] = 2114;
                      *&buf[14] = v132;
                      _os_log_impl(&dword_229538000, v129, OS_LOG_TYPE_ERROR, "%{public}@Received a response message %{public}@ without a transaction identifier", buf, 0x16u);

                      v79 = v131;
                      v68 = v194;

                      messageCopy = v190;
                    }

                    objc_autoreleasePoolPop(v127);
                    v133 = 0;
                  }

                  goto LABEL_32;
                }

                delegate = [v73 delegate];
                [delegate messageTransport:v73 didReceiveMessage:v194];
              }

              else
              {
                idsDateProvider2 = [v73 idsDateProvider];
                [idsDateProvider2 timeIntervalSince1970];
                v110 = v109;
                HMFUptime();
                [v73 updateMessagePayloadWithSystemTimeExpiry:v194 idsTimeNow:v110 systemTimeNow:v111];

                v112 = v194;
                name3 = [v112 name];
                identifier3 = [v112 identifier];
                destination3 = [v112 destination];
                transactionIdentifier2 = [v112 transactionIdentifier];
                toID = [v112 toID];
                qualityOfService = [v112 qualityOfService];
                v118 = v73;
                v187 = v73;
                responseRestriction = [v112 responseRestriction];

                objc_initWeak(&location, v118);
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __69__HMDModernRemoteMessageTransport__responseHandlerForRequestMessage___block_invoke;
                v197 = &unk_27867E028;
                objc_copyWeak(&v200, &location);
                *v198 = name3;
                *&v198[8] = destination3;
                *&v201[6] = qualityOfService;
                *&v201[14] = responseRestriction;
                *&v198[16] = transactionIdentifier2;
                *&v198[24] = toID;
                v199 = identifier3;
                v120 = identifier3;
                v121 = toID;
                v122 = transactionIdentifier2;
                v123 = destination3;
                v124 = name3;
                v125 = _Block_copy(buf);

                v68 = v194;
                objc_destroyWeak(&v200);
                objc_destroyWeak(&location);
                [v112 setInternalResponseHandler:v125];

                delegate = [v187 delegate];
                [delegate messageTransport:v187 didReceiveMessage:v112];
              }

              messageCopy = v190;
              v5 = v191;
LABEL_32:

LABEL_33:
              goto LABEL_34;
            }

            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v65 = HMFGetLogIdentifier();
              identifier4 = [(HMDAssertionLogEvent *)v11 identifier];
              name4 = [(HMDAssertionLogEvent *)v31 name];
              *buf = 138543874;
              *&buf[4] = v65;
              *&buf[12] = 2114;
              *&buf[14] = identifier4;
              *&buf[22] = 2114;
              v197 = name4;
              _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@Dropping duplicate message %{public}@ received on %{public}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v61);
            messageCopy = v190;
            v5 = v191;
          }
        }

        else
        {
          v45 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            HMFGetLogIdentifier();
            v49 = v48 = messageCopy;
            name5 = [(HMDAssertionLogEvent *)v31 name];
            *buf = 138543874;
            *&buf[4] = v49;
            *&buf[12] = 2112;
            *&buf[14] = name5;
            *&buf[22] = 2112;
            v197 = v11;
            _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received invalid %@ message %@, No Identifier", buf, 0x20u);

            messageCopy = v48;
          }

          objc_autoreleasePoolPop(v45);
          v51 = [HMDAssertionLogEvent alloc];
          name6 = [(HMDAssertionLogEvent *)v31 name];
          v36 = [(HMDAssertionLogEvent *)v51 initWithReason:@"Received invalid %@ message %@, No Identifier", name6, v11];

          v53 = +[HMDMetricsManager sharedLogEventSubmitter];
          [v53 submitLogEvent:v36];
        }

        v68 = v194;
        goto LABEL_32;
      }

      v98 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v99 = v98;
      }

      else
      {
        v99 = 0;
      }

      v100 = v99;
      v193 = v98;

      v101 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v103 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v104 = HMFGetLogIdentifier();
        [(HMDAssertionLogEvent *)v11 identifier];
        v105 = v192 = v5;
        [v100 name];
        v107 = v106 = messageCopy;
        *buf = 138545410;
        *&buf[4] = v104;
        *&buf[12] = 2114;
        *&buf[14] = v105;
        *&buf[22] = 2114;
        v197 = v107;
        *v198 = 2050;
        *&v198[2] = v24;
        *&v198[10] = 2050;
        *&v198[12] = v28;
        *&v198[20] = 2050;
        *&v198[22] = v21;
        *&v198[30] = 2050;
        v199 = v17;
        v200 = 2050;
        *v201 = v25;
        *&v201[8] = 2050;
        *&v201[10] = v24 - v28;
        _os_log_impl(&dword_229538000, v103, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message %{public}@ received on %{public}@ outside its TTL: IDS time now = %{public}f, system time now = %{public}f, sent = %{public}f, ttl = %{public}f, IDS time delta = %{public}f, drift = %{public}f", buf, 0x5Cu);

        messageCopy = v106;
        v5 = v192;
      }

      objc_autoreleasePoolPop(v101);
      v31 = v11;
    }

    else
    {
      v175 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v177 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v177, OS_LOG_TYPE_FAULT))
      {
        v178 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v178;
        _os_log_impl(&dword_229538000, v177, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received message that is not HMDRemoteMessage.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v175);
      v31 = [[HMDAssertionLogEvent alloc] initWithReason:@"Received message that is not HMDRemoteMessage."];
      v193 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v193 submitLogEvent:v31];
    }

    v68 = v194;
    goto LABEL_33;
  }

LABEL_34:

  v69 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDeviceReachabilityForDestination:(uint64_t)destination isReachable:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      device = [v7 device];
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = device;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Reachability update - isReachable: %@, device: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    reachabilityDelegate = [selfCopy reachabilityDelegate];
    device2 = [v7 device];
    idsIdentifier = [device2 idsIdentifier];
    [reachabilityDelegate transport:selfCopy idsIdentifier:idsIdentifier didAppearReachable:destination];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __69__HMDModernRemoteMessageTransport__responseHandlerForRequestMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = [[HMDRemoteMessage alloc] initWithName:*(a1 + 32) qualityOfService:*(a1 + 80) destination:*(a1 + 40) payload:v6 type:1 timeout:1 secure:0.0 restriction:*(a1 + 88)];
  [(HMDRemoteMessage *)v8 setTransactionIdentifier:*(a1 + 48)];
  [(HMDRemoteMessage *)v8 setToID:*(a1 + 56)];
  v9 = [(HMDRemoteMessage *)v8 userInfo];
  v10 = [v9 mutableCopy];

  if (v5)
  {
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [v10 setObject:v11 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
  }

  v12 = [(HMDRemoteMessage *)v8 internal];
  [v12 setUserInfo:v10];

  v13 = objc_autoreleasePoolPush();
  v14 = WeakRetained;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    v17 = *(a1 + 64);
    v18 = [(HMFObject *)v8 shortDescription];
    *buf = 138543874;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Sending response for message %{public}@ using message: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  [v14 sendMessage:v8 completionHandler:0];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateMessagePayloadWithSystemTimeExpiry:(id)expiry idsTimeNow:(double)now systemTimeNow:(double)timeNow
{
  v58 = *MEMORY[0x277D85DE8];
  expiryCopy = expiry;
  name = [expiryCopy name];
  if (([name isEqualToString:@"kCharacteristicReadRequestKey"] & 1) == 0)
  {
    name2 = [expiryCopy name];
    if (([name2 isEqualToString:@"kMultipleCharacteristicReadRequestKey"] & 1) == 0)
    {
      name3 = [expiryCopy name];
      if (![name3 isEqualToString:@"kCharacteristicWriteRequestKey"])
      {
        name4 = [expiryCopy name];
        v43 = [name4 isEqualToString:@"kMultipleCharacteristicWriteRequestKey"];

        if ((v43 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_7:
  headers = [expiryCopy headers];
  timeToLiveHeaderKey = [objc_opt_class() timeToLiveHeaderKey];
  v14 = [headers hmf_numberForKey:timeToLiveHeaderKey];
  [v14 doubleValue];
  v16 = v15;

  if (v16 >= 2.22044605e-16)
  {
    requestStartTimeHeaderKey = [objc_opt_class() requestStartTimeHeaderKey];
    v22 = [headers hmf_numberForKey:requestStartTimeHeaderKey];
    [v22 doubleValue];
    v24 = v23;

    v25 = vabdd_f64(now, v24);
    v26 = vabdd_f64(timeNow, v25);
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v44 = 138544898;
      v45 = v30;
      v46 = 2048;
      nowCopy = now;
      v48 = 2048;
      v49 = v25;
      v50 = 2048;
      timeNowCopy = timeNow;
      v52 = 2048;
      v53 = v26;
      v54 = 2048;
      v55 = v16;
      v56 = 2048;
      v57 = v16 + v26;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@IDSTimeNow: %0.4f, IDSCommunicationDelta: %0.4f, systemTimeNow: %0.4f, requestStartTime: %0.4f, requestTTL: %0.4f, requestExpiry: %0.4f", &v44, 0x48u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = MEMORY[0x277CBEB38];
    messagePayload = [expiryCopy messagePayload];
    v33 = [v31 dictionaryWithDictionary:messagePayload];

    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v16 + v26];
    [v33 setObject:v34 forKeyedSubscript:@"kRemoteMessageRequestExpiryKey"];

    [expiryCopy setMessagePayload:v33];
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      [expiryCopy name];
      v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      messagePayload2 = [expiryCopy messagePayload];
      v44 = 138543874;
      v45 = v38;
      v46 = 2112;
      nowCopy = v39;
      v48 = 2112;
      v49 = *&messagePayload2;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Message name: %@, updated messagePayload: %@", &v44, 0x20u);
    }

    objc_autoreleasePoolPop(v35);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v44 = 138543362;
      v45 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Invalid TTL value", &v44, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

LABEL_17:
  v41 = *MEMORY[0x277D85DE8];
}

- (void)timerManager:(id)manager didFireForTimerContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  object = [context object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v29 = v6;

  if (v29)
  {
    v7 = [v29 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    contextManager = [(HMDModernRemoteMessageTransport *)self contextManager];
    v11 = [contextManager contextForIdentifier:v9];

    v12 = [v29 objectAtIndexedSubscript:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v11)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = v14;
      v17 = v11;
      if (self)
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = HMFGetLogIdentifier();
          messageID = [v17 messageID];
          *buf = 138543618;
          v31 = v21;
          v32 = 2112;
          v33 = messageID;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Retry timer fired for message %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        if ([v17 keepRetrying] && objc_msgSend(v17, "retriesRemainingForTransport:", v16))
        {
          [v17 decrementRetriesForTransport:v16];
          v23 = objc_autoreleasePoolPush();
          v24 = selfCopy;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            messageID2 = [v17 messageID];
            *buf = 138543618;
            v31 = v26;
            v32 = 2112;
            v33 = messageID2;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Retrying for message: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          [(HMDModernRemoteMessageTransport *)v24 _sendMessageOverTransport:v16 forContext:v17];
        }
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessageOverTransport:(void *)transport forContext:
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  transportCopy = transport;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    messageID = [transportCopy messageID];
    name = [v5 name];
    *buf = 138543874;
    v58 = v10;
    v59 = 2114;
    v60 = messageID;
    v61 = 2114;
    v62 = name;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ over %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [v5 defaultTimeout];
  v14 = v13;
  [transportCopy timeoutRemaining];
  v16 = v15;
  remainingTransports = [transportCopy remainingTransports];
  if ([remainingTransports count] == 1)
  {
    remainingTransports2 = [transportCopy remainingTransports];
    v19 = [remainingTransports2 containsObject:v5];
  }

  else
  {
    v19 = 0;
  }

  if ((v19 & (v16 > 0.0)) != 0)
  {
    v14 = v16;
  }

  [transportCopy startSendingOverTransport:v5];
  if (v16 >= 0.0)
  {
    systemDateProvider = [selfCopy systemDateProvider];
    [systemDateProvider timeIntervalSince1970];
    v28 = v27;

    objc_initWeak(&location, selfCopy);
    objc_initWeak(&from, transportCopy);
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __72__HMDModernRemoteMessageTransport__sendMessageOverTransport_forContext___block_invoke;
    v50 = &unk_27867DFD8;
    objc_copyWeak(&v52, &location);
    objc_copyWeak(v53, &from);
    v29 = v5;
    v51 = v29;
    v53[1] = v28;
    v30 = _Block_copy(&v47);
    featuresDataSource = [selfCopy featuresDataSource];
    if ([featuresDataSource isTransportRetryEnabled])
    {
      v32 = [transportCopy retriesRemainingForTransport:v29] == 0;

      if (v32)
      {
LABEL_18:
        v45 = [transportCopy preparedMessageWithTimeout:v14];
        [v29 sendMessage:v45 completionHandler:v30];

        objc_destroyWeak(v53);
        objc_destroyWeak(&v52);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
        goto LABEL_19;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = HMFGetLogIdentifier();
        [v29 retryInterval];
        v38 = v37;
        messageID2 = [transportCopy messageID];
        *buf = 138543874;
        v58 = v36;
        v59 = 2048;
        v60 = v38;
        v61 = 2112;
        v62 = messageID2;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Starting a %.2g-second retry timer for message: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      featuresDataSource = [v34 timerManager];
      [v29 retryInterval];
      v41 = v40;
      identifier = [transportCopy identifier];
      v56[0] = identifier;
      v56[1] = v29;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
      v44 = [featuresDataSource startTimerWithTimeInterval:v43 object:v41];
    }

    goto LABEL_18;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    messageID3 = [transportCopy messageID];
    *buf = 138543618;
    v58 = v23;
    v59 = 2114;
    v60 = messageID3;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot send message %{public}@ because we exceeded the message timeout", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8 description:@"Message timed out" reason:@"Message already expired before being able to send" suggestion:0];
  [(HMDModernRemoteMessageTransport *)v21 _handleCompletionOnTransport:v5 context:transportCopy error:v25];

LABEL_19:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)_handleCompletionOnTransport:(void *)transport context:(void *)context error:
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a2;
  transportCopy = transport;
  contextCopy = context;
  if (!self)
  {
    goto LABEL_23;
  }

  workQueue = [self workQueue];
  dispatch_assert_queue_V2(workQueue);

  contextManager = [self contextManager];
  identifier = [transportCopy identifier];
  v13 = [contextManager contextForIdentifier:identifier];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      messageID = [transportCopy messageID];
      name = [v7 name];
      v43 = 138544130;
      v44 = v18;
      v45 = 2114;
      v46 = messageID;
      v47 = 2114;
      v48 = name;
      v49 = 2112;
      v50 = contextCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ over %{public}@ completed with error: %@", &v43, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    if (!contextCopy)
    {
      [transportCopy completeSendingOverTransport:v7 withError:0];
      if ([transportCopy expectsResponse])
      {
        goto LABEL_23;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        messageID2 = [transportCopy messageID];
        v43 = 138543618;
        v44 = v34;
        v45 = 2114;
        v46 = messageID2;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully sent message %{public}@ that does not expect a response", &v43, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      goto LABEL_22;
    }

    if ([contextCopy code] != 3204)
    {
      [transportCopy completeSendingOverTransport:v7 withError:contextCopy];
    }

    if (([transportCopy didSucceedSending] & 1) == 0)
    {
      inProgressTransports = [transportCopy inProgressTransports];
      v22 = [inProgressTransports count];

      if (!v22 && ([(HMDModernRemoteMessageTransport *)selfCopy _sendOverRemainingTransportForContext:transportCopy]& 1) == 0)
      {
        if ([contextCopy code] == 3204)
        {
          localizedFailureReason = [contextCopy localizedFailureReason];
          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = HMFGetLogIdentifier();
            messageID3 = [transportCopy messageID];
            v43 = 138543874;
            v44 = v27;
            v45 = 2114;
            v46 = messageID3;
            v47 = 2114;
            v48 = localizedFailureReason;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send multicast message %{public}@ to destination %{public}@", &v43, 0x20u);
          }

          objc_autoreleasePoolPop(v24);
          goto LABEL_23;
        }

        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = HMFGetLogIdentifier();
          messageID4 = [transportCopy messageID];
          v43 = 138543874;
          v44 = v41;
          v45 = 2114;
          v46 = messageID4;
          v47 = 2112;
          v48 = contextCopy;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message %{public}@ with error: %@", &v43, 0x20u);
        }

        objc_autoreleasePoolPop(v38);
        if ([(HMDModernRemoteMessageTransport *)v39 _contextUsesAllTransports:transportCopy])
        {
          [(HMDModernRemoteMessageTransport *)v39 _deviceReachabilityForContext:transportCopy isReachable:0];
        }

LABEL_22:
        contextManager2 = [selfCopy contextManager];
        [contextManager2 completeContext:transportCopy withPayload:0 error:contextCopy isFinal:1];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v29 = HMFGetLogIdentifier();
      identifier2 = [transportCopy identifier];
      v43 = 138543618;
      v44 = v29;
      v45 = 2114;
      v46 = identifier2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Context not found for identifier %{public}@", &v43, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

LABEL_23:

  v37 = *MEMORY[0x277D85DE8];
}

void __72__HMDModernRemoteMessageTransport__sendMessageOverTransport_forContext___block_invoke(uint64_t a1, void *a2)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v9 = v5;
      v10 = v7;
      v11 = v3;
      v12 = [WeakRetained featuresDataSource];
      v13 = [v12 isTransportRetryEnabled];
      if (v11 || !v13)
      {
      }

      else
      {
        v14 = [v9 expectsResponse];

        if ((v14 & 1) == 0)
        {
          context = objc_autoreleasePoolPush();
          v15 = WeakRetained;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = HMFGetLogIdentifier();
            v18 = [v9 messageID];
            *buf = 138543618;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Completed sending without error, no response coming: stop retrying for message %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          [v9 setKeepRetrying:0];
        }
      }

      objc_initWeak(&location, v9);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __97__HMDModernRemoteMessageTransport__completeMessageForContext_onTransport_whichStarted_withError___block_invoke;
      v32 = &unk_27867E000;
      objc_copyWeak(v36, &location);
      v33 = WeakRetained;
      v24 = v10;
      v34 = v24;
      v36[1] = v8;
      v25 = v11;
      v35 = v25;
      v26 = _Block_copy(buf);
      v27 = [WeakRetained workQueue];
      dispatch_async(v27, v26);

      objc_destroyWeak(v36);
      objc_destroyWeak(&location);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = WeakRetained;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [0 identifier];
        *buf = 138543618;
        *&buf[4] = v22;
        *&buf[12] = 2114;
        *&buf[14] = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Context was already released for identifier %{public}@ completed on transport", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __97__HMDModernRemoteMessageTransport__completeMessageForContext_onTransport_whichStarted_withError___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) rapportTransport];

    if (v3 == v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 64);
      v7 = *(a1 + 48);
      v8 = WeakRetained;
      v9 = v7;
      v10 = v9;
      if (v5)
      {
        if (v9)
        {
          [v5 setRapportLinkSlow:1];
        }

        else
        {
          v16 = [v5 systemDateProvider];
          [v16 timeIntervalSince1970];
          v18 = v17 - v6;

          v19 = objc_autoreleasePoolPush();
          v20 = v5;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = HMFGetLogIdentifier();
            v23 = [v8 messageID];
            v25 = 138543874;
            v26 = v22;
            v27 = 2114;
            v28 = v23;
            v29 = 2048;
            v30 = (v18 * 1000.0);
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Rapport response for message %{public}@ received in %lu ms", &v25, 0x20u);
          }

          objc_autoreleasePoolPop(v19);
          [v20 setRapportLinkSlow:v18 > 0.2];
          [(HMDModernRemoteMessageTransport *)v20 _deviceReachabilityForContext:v8 isReachable:1];
        }
      }
    }

    [(HMDModernRemoteMessageTransport *)*(a1 + 32) _handleCompletionOnTransport:WeakRetained context:*(a1 + 48) error:?];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [0 identifier];
      v25 = 138543618;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Context was already released for identifier %{public}@ completed", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_deviceReachabilityForContext:(uint64_t)context isReachable:
{
  v7 = a2;
  options = [v7 options];
  if ([options isTrackingDeviceReachability])
  {
    didNotifyDeviceReachability = [v7 didNotifyDeviceReachability];

    if (didNotifyDeviceReachability)
    {
      goto LABEL_5;
    }

    [v7 setDidNotifyDeviceReachability:1];
    options = [v7 destination];
    [(HMDModernRemoteMessageTransport *)self _notifyDeviceReachabilityForDestination:options isReachable:context];
  }

LABEL_5:
}

- (uint64_t)_sendOverRemainingTransportForContext:(void *)context
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  remainingTransports = [v3 remainingTransports];
  idsTransport = [context idsTransport];
  v6 = [remainingTransports containsObject:idsTransport];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    contextCopy = context;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      messageID = [v3 messageID];
      v26 = 138543618;
      v27 = v10;
      v28 = 2114;
      v29 = messageID;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to ids transport for message %{public}@", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    idsTransport2 = [contextCopy idsTransport];
    [(HMDModernRemoteMessageTransport *)contextCopy _sendMessageOverTransport:idsTransport2 forContext:v3];

    bleTransport = [contextCopy bleTransport];
    if (bleTransport)
    {
      v14 = bleTransport;
      remainingTransports2 = [v3 remainingTransports];
      bleTransport2 = [contextCopy bleTransport];
      v17 = [remainingTransports2 containsObject:bleTransport2];

      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = contextCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = HMFGetLogIdentifier();
          messageID2 = [v3 messageID];
          v26 = 138543618;
          v27 = v21;
          v28 = 2114;
          v29 = messageID2;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to BLE transport for message %{public}@", &v26, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        bleTransport3 = [v19 bleTransport];
        [(HMDModernRemoteMessageTransport *)v19 _sendMessageOverTransport:bleTransport3 forContext:v3];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)_contextUsesAllTransports:(void *)transports
{
  v3 = a2;
  if ([transports isWatch])
  {
    goto LABEL_3;
  }

  options = [v3 options];
  transports = [options transports];
  rapportTransport = [transports rapportTransport];
  v7 = [transports containsObject:rapportTransport];

  if (v7)
  {
LABEL_3:
    options2 = [v3 options];
    transports2 = [options2 transports];
    idsTransport = [transports idsTransport];
    v11 = [transports2 containsObject:idsTransport];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  v8 = messageCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    if (![(HMDModernRemoteMessageTransport *)self isStarted])
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        identifier = [v10 identifier];
        *buf = 138543618;
        v23 = v14;
        v24 = 2114;
        v25 = identifier;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Received request to send message %{public}@ before transport was started; message may fail", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }

    workQueue = [(HMDModernRemoteMessageTransport *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDModernRemoteMessageTransport_sendMessage_completionHandler___block_invoke;
    block[3] = &unk_278689F98;
    block[4] = self;
    v20 = v10;
    v21 = handlerCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter" reason:@"Not a remote message" suggestion:0];
    [(HMDModernRemoteMessageTransport *)self _respondWithError:v8 completionHandler:handlerCopy error:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_respondWithError:(void *)error completionHandler:(void *)handler error:
{
  v9 = a2;
  errorCopy = error;
  handlerCopy = handler;
  if (self)
  {
    if (errorCopy)
    {
      errorCopy[2](errorCopy, handlerCopy);
    }

    [v9 respondWithError:handlerCopy];
  }
}

void __65__HMDModernRemoteMessageTransport_sendMessage_completionHandler___block_invoke(uint64_t a1)
{
  v142 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v131 = *(a1 + 40);
  v130 = v2;
  if (v1)
  {
    v3 = [v1 workQueue];
    dispatch_assert_queue_V2(v3);

    v4 = v131;
    v5 = [v1 requestID];

    if (v5 == @"com.apple.home.hh2.messaging.rid" && ([v4 qualityOfService], v6 = HMFQualityOfServiceCompare(), objc_msgSend(v4, "restriction") == -1))
    {
      v7 = @"NO";
      if ([(HMDModernRemoteMessageTransport *)v1 _isResidentToResidentMessage:v4]&& v6 == -1)
      {
        [v4 setRestriction:8];
        v81 = objc_autoreleasePoolPush();
        v82 = v1;
        v83 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          v84 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v84;
          *&buf[12] = 2112;
          *&buf[14] = v4;
          _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_DEBUG, "%{public}@Restricting resident to resident message %@ to Rapport only", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v81);
        v7 = @"YES";
      }
    }

    else
    {
      v7 = @"NO";
    }

    v124 = v7;
    v8 = v4;
    v9 = [MEMORY[0x277CBEB58] set];
    if (([v1 isWatch] & 1) == 0)
    {
      v10 = [v1 rapportTransport];
      v11 = [v10 canSendMessage:v8];

      if (v11)
      {
        v12 = [v1 rapportTransport];
        [v9 addObject:v12];
      }
    }

    v13 = [v1 idsTransport];
    v14 = [v13 canSendMessage:v8];

    if (v14)
    {
      v15 = [v1 idsTransport];
      [v9 addObject:v15];
    }

    v16 = [v1 featuresDataSource];
    if ([v16 isRapportOverBLEEnabled])
    {
      v17 = [v1 bleTransport];
      v18 = [v17 canSendMessage:v8];

      if (!v18)
      {
        goto LABEL_14;
      }

      v16 = [v1 bleTransport];
      [v9 addObject:v16];
    }

LABEL_14:
    v19 = [v9 copy];

    v125 = v19;
    if (![v19 count])
    {
      v66 = objc_autoreleasePoolPush();
      v67 = v1;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v69;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Message %@ cannot be sent over modern transport", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v66);
      v70 = MEMORY[0x277CCA9B8];
      v46 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2031];
      v71 = [v70 hmErrorWithCode:2 description:@"Cannot be sent over Modern Transport" reason:@"Not supported by Modern Transport or there is no available transport" suggestion:0 underlyingError:v46];
      [(HMDModernRemoteMessageTransport *)v67 _respondWithError:v8 completionHandler:v130 error:v71];

      goto LABEL_57;
    }

    v20 = v8;
    v21 = [v20 responseHandler];

    if (v21 && [v20 type])
    {
      v116 = objc_autoreleasePoolPush();
      v117 = v1;
      v118 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_FAULT))
      {
        v119 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v119;
        _os_log_impl(&dword_229538000, v118, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Message expects a response but is not a request type. Remove the response handler or change the message type.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v116);
      v120 = [[HMDAssertionLogEvent alloc] initWithReason:@"Message expects a response but is not a request type. Remove the response handler or change the message type."];
      v121 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v121 submitLogEvent:v120];
    }

    v22 = v20;
    v23 = v125;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __96__HMDModernRemoteMessageTransport__createContextWithRemoteMessage_transports_completionHandler___block_invoke;
    v134 = &unk_27867DFB0;
    context = v22;
    *v135 = context;
    *&v135[8] = v1;
    v126 = v23;
    *&v135[16] = v126;
    v24 = v130;
    v25 = [HMDModernTransportMessageContextOptions newWithBuilder:buf];
    v26 = [v1 contextManager];
    v27 = [v1 idsDateProvider];
    v28 = [v1 timerProvider];
    v29 = [v26 createContextWithMessage:context options:v25 completionHandler:v24 dateProvider:v27 timerProvider:v28];

    v30 = objc_autoreleasePoolPush();
    v31 = v1;
    v32 = HMFGetOSLogHandle();
    v33 = v32;
    if (!v29)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v72 = HMFGetLogIdentifier();
        v73 = [context identifier];
        *buf = 138543618;
        *&buf[4] = v72;
        *&buf[12] = 2114;
        *&buf[14] = v73;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create context for message %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v74 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(HMDModernRemoteMessageTransport *)v31 _respondWithError:v24 completionHandler:v74 error:?];

      v46 = 0;
      goto LABEL_57;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v31 rapportTransport];
      [v126 containsObject:v35];
      v36 = HMFBooleanToString();
      [v31 isRapportLinkSlow];
      v37 = HMFBooleanToString();
      v38 = [v31 idsTransport];
      [v126 containsObject:v38];
      v39 = HMFBooleanToString();
      *buf = 138544642;
      *&buf[4] = v34;
      *&buf[12] = 2114;
      *&buf[14] = v36;
      *&buf[22] = 2114;
      v134 = v37;
      *v135 = 2114;
      *&v135[2] = v39;
      *&v135[10] = 2114;
      *&v135[12] = v124;
      *&v135[20] = 2112;
      *&v135[22] = context;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Sending message over Rapport = %{public}@ (isSlow = %{public}@), IDS = %{public}@, Resident to Resident = %{public}@: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v30);
    v40 = objc_autoreleasePoolPush();
    v41 = v31;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = HMFGetLogIdentifier();
      v44 = [context shortDescription];
      v45 = [context messagePayload];
      *buf = 138543875;
      *&buf[4] = v43;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      *&buf[22] = 2113;
      v134 = v45;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Sending message %{public}@ with payload: %{private}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v40);
    v46 = v29;
    if ([v46 expectsResponse])
    {
      v47 = objc_autoreleasePoolPush();
      v48 = v41;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        v51 = [v46 messageID];
        [v46 timeout];
        *buf = 138543874;
        *&buf[4] = v50;
        *&buf[12] = 2114;
        *&buf[14] = v51;
        *&buf[22] = 2048;
        v134 = v52;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Starting response timer for message %{public}@. Timeout is %.0f seconds", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v47);
      objc_initWeak(&location, v48);
      [v46 timeout];
      v54 = v53;
      v55 = [v48 workQueue];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __65__HMDModernRemoteMessageTransport__startResponseTimerForContext___block_invoke;
      v134 = &unk_278686B48;
      objc_copyWeak(&v135[8], &location);
      *v135 = v46;
      [*v135 startResponseTimerWithTimeInterval:v55 queue:buf completionHandler:v54];

      objc_destroyWeak(&v135[8]);
      objc_destroyWeak(&location);
    }

    v56 = [v41 rapportTransport];
    v57 = [v126 containsObject:v56];

    if (!v57)
    {
      v75 = [v41 idsTransport];
      v76 = [v126 containsObject:v75];

      if (v76)
      {
        v77 = [v41 idsTransport];
        [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v77 forContext:v46];
      }

      v78 = [v41 bleTransport];
      v79 = [v126 containsObject:v78];

      if (v79)
      {
        v80 = [v41 bleTransport];
        [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v80 forContext:v46];
      }

      goto LABEL_57;
    }

    v58 = [v41 rapportTransport];
    [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v58 forContext:v46];

    v59 = [v41 rapportTransport];
    if ([v126 containsObject:v59])
    {
      v60 = [v41 idsTransport];
      if ([v126 containsObject:v60])
      {
        v61 = [context remoteDisallowsIDSRacing];

        if (v61)
        {
          goto LABEL_50;
        }

        v62 = [v41 isRapportLinkSlow];
        v63 = [v41 idsTransport];
        if (!v62)
        {
          [HMDModernRemoteMessageTransport _startFallbackTimerForContext:v41 fallbackTransport:v46 withTimeout:v63];

          v111 = objc_autoreleasePoolPush();
          v112 = v41;
          v113 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
          {
            v114 = HMFGetLogIdentifier();
            v115 = [context identifier];
            *buf = 138543618;
            *&buf[4] = v114;
            *&buf[12] = 2114;
            *&buf[14] = v115;
            _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_INFO, "%{public}@Starting Rapport to IDS fallback timer for message %{public}@ ", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v111);
          goto LABEL_57;
        }

        [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v63 forContext:v46];

        v64 = [v41 bleTransport];
        v65 = [v126 containsObject:v64];

        if (!v65)
        {
LABEL_50:
          v85 = [v41 bleTransport];
          v86 = [v126 containsObject:v85];

          if (v86)
          {
            v87 = [v41 bleTransport];
            [HMDModernRemoteMessageTransport _startFallbackTimerForContext:v41 fallbackTransport:v46 withTimeout:v87];

            v88 = objc_autoreleasePoolPush();
            v89 = v41;
            v90 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
            {
              v91 = HMFGetLogIdentifier();
              v92 = [context identifier];
              *buf = 138543618;
              *&buf[4] = v91;
              *&buf[12] = 2114;
              *&buf[14] = v92;
              _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_INFO, "%{public}@Starting Rapport/IDS to BLE fallback timer for message %{public}@ ", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v88);
          }

          v93 = [v41 systemDateProvider];
          [v93 timeIntervalSince1970];
          v95 = v94;

          v96 = [v41 idsDateProvider];
          [v96 timeIntervalSince1970];
          v98 = v97;

          contexta = objc_autoreleasePoolPush();
          v99 = v41;
          v100 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            v123 = HMFGetLogIdentifier();
            v127 = [v46 messageID];
            v122 = [objc_opt_class() requestStartTimeHeaderKey];
            v101 = MEMORY[0x277CCABB0];
            [v46 requestStartTime];
            v102 = [v101 numberWithDouble:?];
            v103 = [objc_opt_class() timeToLiveHeaderKey];
            v104 = MEMORY[0x277CCABB0];
            v105 = [v46 options];
            [v105 timeToLive];
            v106 = [v104 numberWithDouble:?];
            v107 = [MEMORY[0x277CCABB0] numberWithDouble:v95];
            v108 = [MEMORY[0x277CCABB0] numberWithDouble:v98];
            v109 = [MEMORY[0x277CCABB0] numberWithDouble:v95 - v98];
            *buf = 138545410;
            *&buf[4] = v123;
            *&buf[12] = 2114;
            *&buf[14] = v127;
            *&buf[22] = 2114;
            v134 = v122;
            *v135 = 2114;
            *&v135[2] = v102;
            *&v135[10] = 2114;
            *&v135[12] = v103;
            *&v135[20] = 2114;
            *&v135[22] = v106;
            v136 = 2114;
            v137 = v107;
            v138 = 2114;
            v139 = v108;
            v140 = 2114;
            v141 = v109;
            _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_DEFAULT, "%{public}@Message %{public}@ sent with %{public}@ = %{public}@, %{public}@ = %{public}@. System Time: %{public}@, IDS Time: %{public}@, (System Time - IDS Time): %{public}@", buf, 0x5Cu);
          }

          objc_autoreleasePoolPop(contexta);
LABEL_57:

          goto LABEL_58;
        }

        v59 = [v41 bleTransport];
        [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v59 forContext:v46];
      }

      else
      {
      }
    }

    goto LABEL_50;
  }

LABEL_58:

  v110 = *MEMORY[0x277D85DE8];
}

- (void)_startFallbackTimerForContext:(void *)context fallbackTransport:(void *)transport withTimeout:(void *)timeout
{
  transportCopy = transport;
  timeoutCopy = timeout;
  remainingTransports = [transportCopy remainingTransports];
  v8 = [remainingTransports containsObject:timeoutCopy];

  if (v8)
  {
    idsTransport = [context idsTransport];
    v10 = idsTransport;
    if (idsTransport != timeoutCopy)
    {

LABEL_5:
      objc_initWeak(&location, context);
      workQueue = [context workQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __95__HMDModernRemoteMessageTransport__startFallbackTimerForContext_fallbackTransport_withTimeout___block_invoke;
      v15[3] = &unk_278686B48;
      objc_copyWeak(&v17, &location);
      v16 = transportCopy;
      [v16 startTransportFallbackTimerWithTimeInterval:workQueue queue:v15 completionHandler:0.2];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }

    inProgressTransports = [transportCopy inProgressTransports];
    rapportTransport = [context rapportTransport];
    v13 = [inProgressTransports containsObject:rapportTransport];

    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

void __95__HMDModernRemoteMessageTransport__startFallbackTimerForContext_fallbackTransport_withTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v3 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v3);

    v4 = [*(a1 + 32) remainingTransports];
    v5 = [v4 count];

    WeakRetained = v13;
    if (v5)
    {
      v6 = [*(a1 + 32) inProgressTransports];
      v7 = [v6 count];

      if (v7)
      {
        [(HMDModernRemoteMessageTransport *)v13 _sendOverRemainingTransportForContext:?];
      }

      v8 = [*(a1 + 32) remainingTransports];
      v9 = [v13 bleTransport];
      v10 = [v8 containsObject:v9];

      WeakRetained = v13;
      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = [v13 bleTransport];
        [HMDModernRemoteMessageTransport _startFallbackTimerForContext:v13 fallbackTransport:v11 withTimeout:v12];

        WeakRetained = v13;
      }
    }
  }
}

void __65__HMDModernRemoteMessageTransport__startResponseTimerForContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v4);

    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) messageID];
      v17 = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Message %{public}@ timed out", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v6 contextManager];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8 description:@"Operation timed out." reason:@"Message timed out waiting for a response." suggestion:0];
    [v10 completeContext:v11 withPayload:0 error:v12 isFinal:1];

    v13 = [*(a1 + 32) options];
    LOBYTE(v11) = [v13 expectsMultipleResponses];

    if ((v11 & 1) == 0)
    {
      [(HMDModernRemoteMessageTransport *)v6 _deviceReachabilityForContext:0 isReachable:?];
    }

    v14 = [v6 featuresDataSource];
    v15 = [v14 isTransportRetryEnabled];

    if (v15)
    {
      [*(a1 + 32) setKeepRetrying:0];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __96__HMDModernRemoteMessageTransport__createContextWithRemoteMessage_transports_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) responseHandler];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) timeout];
    v7 = v6;

    if (v7 < 2.22044605e-16)
    {
      [v3 setTimeoutOverride:60.0];
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 32) identifier];
        [v3 timeoutOverride];
        v43 = 138543874;
        v44 = v11;
        v45 = 2114;
        v46 = v12;
        v47 = 2048;
        v48 = v13;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Message %{public}@ expects a response but timeout is not set. Setting timeout to %.0f seconds", &v43, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  [v3 setTransports:*(a1 + 48)];
  if (*(a1 + 40))
  {
    v14 = ([*(a1 + 32) sendOptions] >> 1) & 1;
  }

  else
  {
    v14 = 0;
  }

  [v3 setExpectsMultipleResponses:v14];
  v15 = *(a1 + 40);
  v16 = *(a1 + 32);
  if (v15)
  {
    v17 = [v15 requestID];

    if (v17 == @"com.apple.home.hh2.messaging.rid")
    {
      v18 = [v16 destination];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = [v15 rapportTransport];
        if ([v20 isValidMessage:v16])
        {
          v21 = [v15 idsTransport];
          v22 = [v21 isValidMessage:v16];

          if (v22)
          {
            v15 = 1;
            goto LABEL_19;
          }
        }

        else
        {
        }

        v23 = objc_autoreleasePoolPush();
        v24 = v15;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = HMFGetLogIdentifier();
          v43 = 138543618;
          v44 = v26;
          v45 = 2112;
          v46 = v16;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Not tracking reachability for restricted message: %@", &v43, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
      }
    }

    v15 = 0;
  }

LABEL_19:

  [v3 setTrackingDeviceReachability:v15];
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  [v3 timeoutOverride];
  v30 = v29;
  v31 = v27;
  v32 = v31;
  v33 = 0.0;
  if (v28 && [v31 type] != 1 && (objc_msgSend(v32, "sendOptions") & 1) == 0)
  {
    if (v30 < 2.22044605e-16)
    {
      [v32 timeout];
      v30 = v34;
    }

    v35 = 15.0;
    if (v30 >= 15.0)
    {
      v35 = v30;
    }

    if (v30 >= 2.22044605e-16)
    {
      v33 = v35;
    }

    else
    {
      v33 = 60.0;
    }
  }

  [v3 setTimeToLive:v33];
  v36 = *(a1 + 40);
  v37 = [objc_opt_class() requestStartTimeHeaderKey];
  [v3 setRequestStartTimeHeaderKey:v37];

  v38 = *(a1 + 40);
  v39 = [objc_opt_class() timeToLiveHeaderKey];
  [v3 setTimeToLiveHeaderKey:v39];

  if (([(HMDModernRemoteMessageTransport *)*(a1 + 40) _isResidentToResidentMessage:?]& 1) != 0)
  {
    v40 = *(a1 + 48);
    v41 = [*(a1 + 40) rapportTransport];
    [v3 setExpectRapportSuccess:{objc_msgSend(v40, "containsObject:", v41)}];
  }

  else
  {
    [v3 setExpectRapportSuccess:0];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_isResidentToResidentMessage:(void *)message
{
  v3 = a2;
  if (message && ([message residencyProvider], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isCurrentDeviceResident"), v4, v5))
  {
    destination = [v3 destination];
    residencyProvider = [message residencyProvider];
    v8 = destination;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      device = [v10 device];
      deviceAddress = [device deviceAddress];
      v13 = [residencyProvider deviceAddressBelongsToResidentOfCurrentHome:deviceAddress];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canSendMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy restriction] != -1 && (objc_msgSend(messageCopy, "restriction") & 0x10) != 0)
  {
    v6 = 0;
  }

  else
  {
    rapportTransport = [(HMDModernRemoteMessageTransport *)self rapportTransport];
    if ([rapportTransport isValidMessage:messageCopy])
    {
      v6 = 1;
    }

    else
    {
      idsTransport = [(HMDModernRemoteMessageTransport *)self idsTransport];
      if ([idsTransport isValidMessage:messageCopy])
      {
        v6 = 1;
      }

      else
      {
        bleTransport = [(HMDModernRemoteMessageTransport *)self bleTransport];
        v6 = [bleTransport isValidMessage:messageCopy];
      }
    }
  }

  return v6;
}

- (id)start
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  rapportTransport = [(HMDModernRemoteMessageTransport *)selfCopy rapportTransport];
  start = [rapportTransport start];

  idsTransport = [(HMDModernRemoteMessageTransport *)selfCopy idsTransport];
  start2 = [idsTransport start];

  [(HMDModernRemoteMessageTransport *)selfCopy setStarted:1];
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v23[0] = start;
  v23[1] = start2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v13 = [v11 initWithArray:v12];

  bleTransport = [(HMDModernRemoteMessageTransport *)selfCopy bleTransport];

  if (bleTransport)
  {
    bleTransport2 = [(HMDModernRemoteMessageTransport *)selfCopy bleTransport];
    start3 = [bleTransport2 start];
    [v13 addObject:start3];
  }

  v17 = [MEMORY[0x277D0F7C0] all:v13];
  startPromise = [(HMDRemoteMessageTransport *)selfCopy startPromise];
  ignoreOutcome = [v17 ignoreOutcome];
  [startPromise resolveWithFuture:ignoreOutcome];

  startFuture = [(HMDRemoteMessageTransport *)selfCopy startFuture];

  v21 = *MEMORY[0x277D85DE8];

  return startFuture;
}

- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d rapportTransport:(id)transport idsTransport:(id)idsTransport bleTransport:(id)bleTransport contextManager:(id)manager systemDateProvider:(id)provider idsDateProvider:(id)self0 timerProvider:(id)self1 timerManager:(id)self2 isWatch:(BOOL)self3 featuresDataSource:(id)self4
{
  dCopy = d;
  transportCopy = transport;
  transportCopy2 = transport;
  idsTransportCopy = idsTransport;
  idsTransportCopy2 = idsTransport;
  bleTransportCopy = bleTransport;
  bleTransportCopy2 = bleTransport;
  v20 = dCopy;
  v48 = bleTransportCopy2;
  managerCopy = manager;
  managerCopy2 = manager;
  providerCopy = provider;
  dateProviderCopy = dateProvider;
  timerProviderCopy = timerProvider;
  timerManagerCopy = timerManager;
  sourceCopy = source;
  v49.receiver = self;
  v49.super_class = HMDModernRemoteMessageTransport;
  v23 = [(HMDRemoteMessageTransport *)&v49 initWithAccountRegistry:registry];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_requestID, d);
    objc_storeStrong(&v24->_featuresDataSource, source);
    v25 = HMDispatchQueueNameString();
    uTF8String = [v25 UTF8String];
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_create(uTF8String, v27);
    workQueue = v24->_workQueue;
    v24->_workQueue = v28;

    objc_storeStrong(&v24->_rapportTransport, transportCopy);
    [(HMFMessageTransport *)v24->_rapportTransport setDelegate:v24];
    [(HMDRemoteMessageTransport *)v24->_rapportTransport setReachabilityDelegate:v24];
    objc_storeStrong(&v24->_idsTransport, idsTransportCopy);
    [(HMFMessageTransport *)v24->_idsTransport setDelegate:v24];
    v24->_useRapportOverBLE = v20 == @"com.apple.home.hh2.messaging.rid";
    featuresDataSource = [(HMDModernRemoteMessageTransport *)v24 featuresDataSource];
    if ([featuresDataSource isRapportOverBLEEnabled] && -[HMDModernRemoteMessageTransport useRapportOverBLE](v24, "useRapportOverBLE"))
    {

      if (v48)
      {
        objc_storeStrong(&v24->_bleTransport, bleTransportCopy);
        [(HMFMessageTransport *)v24->_bleTransport setDelegate:v24];
LABEL_8:
        objc_storeStrong(&v24->_contextManager, managerCopy);
        objc_storeStrong(&v24->_systemDateProvider, provider);
        objc_storeStrong(&v24->_idsDateProvider, dateProvider);
        objc_storeStrong(&v24->_timerProvider, timerProvider);
        v32 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:100];
        messageIDDedupeBuffer = v24->_messageIDDedupeBuffer;
        v24->_messageIDDedupeBuffer = v32;

        v24->_rapportLinkSlow = 0;
        v24->_isWatch = watch;
        objc_storeStrong(&v24->_timerManager, timerManager);
        [(HMFTimerManager *)v24->_timerManager setDelegate:v24];
        goto LABEL_9;
      }
    }

    else
    {
    }

    bleTransport = v24->_bleTransport;
    v24->_bleTransport = 0;

    goto LABEL_8;
  }

LABEL_9:

  return v24;
}

- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d
{
  registryCopy = registry;
  dCopy = d;
  v28 = objc_alloc_init(MEMORY[0x277D0F7F0]);
  v27 = objc_alloc_init(MEMORY[0x277D0F798]);
  v26 = [[HMDRapportMessageTransport alloc] initWithAccountRegistry:registryCopy requestID:dCopy];
  v8 = [HMDIDSMessageTransport alloc];
  v9 = dCopy;
  v10 = v9;
  if (self)
  {
    if (v9 == @"hmmm.client.rid.prefix_com.apple.private.alloy.energykit")
    {
      v11 = @"com.apple.private.alloy.energykit";
    }

    else
    {
      v11 = @"com.apple.private.alloy.home";
    }

    if (v9 == @"com.apple.home.hh2.hmmm.rid")
    {
      v12 = @"com.apple.private.alloy.alarms-timers";
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v25 = [(HMDIDSMessageTransport *)v8 initWithAccountRegistry:registryCopy forServiceName:v13];
  v14 = +[HMDFeaturesDataSource defaultDataSource];
  isRapportOverBLEEnabled = [v14 isRapportOverBLEEnabled];
  v24 = v13;
  if (isRapportOverBLEEnabled)
  {
    v16 = [[HMDRapportOverBLEMessageTransport alloc] initWithAccountRegistry:registryCopy];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_alloc_init(HMDModernTransportMessageContextManager);
  v18 = objc_opt_new();
  v19 = [objc_alloc(MEMORY[0x277D0F930]) initWithOptions:1];
  v20 = +[HMDFeaturesDataSource defaultDataSource];
  LOBYTE(v23) = 0;
  v21 = [(HMDModernRemoteMessageTransport *)self initWithAccountRegistry:registryCopy requestID:v10 rapportTransport:v26 idsTransport:v25 bleTransport:v16 contextManager:v17 systemDateProvider:v27 idsDateProvider:v28 timerProvider:v18 timerManager:v19 isWatch:v23 featuresDataSource:v20];

  if (isRapportOverBLEEnabled)
  {
  }

  return v21;
}

void __46__HMDModernRemoteMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v65;
  logCategory__hmf_once_v65 = v1;
}

@end