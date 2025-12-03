@interface HMDModernRemoteMessageTransport
+ (id)logCategory;
- (BOOL)canSendMessage:(id)message;
- (HMDDeviceResidencyProvider)residencyProvider;
- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry;
- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d rapportTransport:(id)transport idsTransport:(id)idsTransport contextManager:(id)manager systemDateProvider:(id)provider idsDateProvider:(id)dateProvider timerProvider:(id)self0 timerManager:(id)self1 isWatch:(BOOL)self2 featuresDataSource:(id)self3;
- (id)start;
- (uint64_t)_contextUsesAllTransports:(void *)transports;
- (uint64_t)_sendOverRemainingTransportForContext:(void *)context;
- (void)_deviceReachabilityForContext:(uint64_t)context isReachable:;
- (void)_handleCompletionOnTransport:(void *)transport context:(void *)context error:;
- (void)_notifyDeviceReachabilityForDestination:(uint64_t)destination isReachable:;
- (void)_receivedMessage:(void *)message onTransport:;
- (void)_respondWithError:(void *)error completionHandler:(void *)handler error:;
- (void)_sendMessageOverTransport:(void *)transport forContext:;
- (void)_startFallbackTimerForContext:(void *)context fallbackTransport:(void *)transport withTimeout:(void *)timeout;
- (void)configureWithHomeMembershipVerifier:(id)verifier;
- (void)messageTransport:(id)transport didReceiveMessage:(id)message;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)timerManager:(id)manager didFireForTimerContext:(id)context;
- (void)transport:(id)transport idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable;
- (void)updateMessagePayloadWithSystemTimeExpiry:(id)expiry idsTimeNow:(double)now systemTimeNow:(double)timeNow;
@end

@implementation HMDModernRemoteMessageTransport

- (HMDDeviceResidencyProvider)residencyProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_residencyProvider);

  return WeakRetained;
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
  block[3] = &unk_279734960;
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
              _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_FAULT, "%{public}@Received invalid %{public}@ message %@, message is from ourselves", buf, 0x20u);

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
                _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Received message over %{public}@: %@", buf, 0x20u);
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
                _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_DEBUG, "%{public}@Received message %{public}@ with payload: %{private}@", buf, 0x20u);
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
                            _os_log_impl(&dword_2531F8000, v94, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize response error for message %{public}@ with error: %@", buf, 0x20u);

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
                          _os_log_impl(&dword_2531F8000, v147, OS_LOG_TYPE_INFO, "%{public}@Ignoring response message %{public}@ with error: %@, for request %{public}@", buf, 0x2Au);

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
                          _os_log_impl(&dword_2531F8000, v157, OS_LOG_TYPE_DEFAULT, "%{public}@Received response for message %{public}@", buf, 0x16u);
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
                            _os_log_impl(&dword_2531F8000, v164, OS_LOG_TYPE_DEFAULT, "%{public}@Stop retrying for message %@", buf, 0x16u);

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
                        _os_log_impl(&dword_2531F8000, v136, OS_LOG_TYPE_INFO, "%{public}@Could not find the context and dropping message %{public}@", buf, 0x16u);

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
                      _os_log_impl(&dword_2531F8000, v129, OS_LOG_TYPE_ERROR, "%{public}@Received a response message %{public}@ without a transaction identifier", buf, 0x16u);

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
                v197 = &unk_279729810;
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
              _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@Dropping duplicate message %{public}@ received on %{public}@", buf, 0x20u);
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
            _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received invalid %@ message %@, No Identifier", buf, 0x20u);

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
        _os_log_impl(&dword_2531F8000, v103, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message %{public}@ received on %{public}@ outside its TTL: IDS time now = %{public}f, system time now = %{public}f, sent = %{public}f, ttl = %{public}f, IDS time delta = %{public}f, drift = %{public}f", buf, 0x5Cu);

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
        _os_log_impl(&dword_2531F8000, v177, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received message that is not HMDRemoteMessage.", buf, 0xCu);
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
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Reachability update - isReachable: %@, device: %@", &v18, 0x20u);
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
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Sending response for message %{public}@ using message: %{public}@", buf, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@IDSTimeNow: %0.4f, IDSCommunicationDelta: %0.4f, systemTimeNow: %0.4f, requestStartTime: %0.4f, requestTTL: %0.4f, requestExpiry: %0.4f", &v44, 0x48u);
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
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Message name: %@, updated messagePayload: %@", &v44, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Invalid TTL value", &v44, 0xCu);
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
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Retry timer fired for message %@", buf, 0x16u);
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
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Retrying for message: %@", buf, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ over %{public}@", buf, 0x20u);
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
    v50 = &unk_279730F68;
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
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Starting a %.2g-second retry timer for message: %@", buf, 0x20u);
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
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot send message %{public}@ because we exceeded the message timeout", buf, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ over %{public}@ completed with error: %@", &v43, 0x2Au);
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
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully sent message %{public}@ that does not expect a response", &v43, 0x16u);
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
            _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send multicast message %{public}@ to destination %{public}@", &v43, 0x20u);
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
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message %{public}@ with error: %@", &v43, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Context not found for identifier %{public}@", &v43, 0x16u);
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
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Completed sending without error, no response coming: stop retrying for message %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          [v9 setKeepRetrying:0];
        }
      }

      objc_initWeak(&location, v9);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __97__HMDModernRemoteMessageTransport__completeMessageForContext_onTransport_whichStarted_withError___block_invoke;
      v32 = &unk_2797297E8;
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
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Context was already released for identifier %{public}@ completed on transport", buf, 0x16u);
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
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Rapport response for message %{public}@ received in %lu ms", &v25, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Context was already released for identifier %{public}@ completed", &v25, 0x16u);
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
  v19 = *MEMORY[0x277D85DE8];
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
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = messageID;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to ids transport for message %{public}@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    idsTransport2 = [contextCopy idsTransport];
    [(HMDModernRemoteMessageTransport *)contextCopy _sendMessageOverTransport:idsTransport2 forContext:v3];
  }

  v13 = *MEMORY[0x277D85DE8];
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
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Received request to send message %{public}@ before transport was started; message may fail", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }

    workQueue = [(HMDModernRemoteMessageTransport *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDModernRemoteMessageTransport_sendMessage_completionHandler___block_invoke;
    block[3] = &unk_2797355D0;
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
  v116 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v105 = *(a1 + 40);
  v104 = v2;
  if (v1)
  {
    v3 = [v1 workQueue];
    dispatch_assert_queue_V2(v3);

    v4 = v105;
    v5 = [MEMORY[0x277CBEB58] set];
    if (([v1 isWatch] & 1) == 0)
    {
      v6 = [v1 rapportTransport];
      v7 = [v6 canSendMessage:v4];

      if (v7)
      {
        v8 = [v1 rapportTransport];
        [v5 addObject:v8];
      }
    }

    v9 = [v1 idsTransport];
    v10 = [v9 canSendMessage:v4];

    if (v10)
    {
      v11 = [v1 idsTransport];
      [v5 addObject:v11];
    }

    v12 = [v5 copy];

    v101 = v12;
    if (![v12 count])
    {
      v56 = objc_autoreleasePoolPush();
      v57 = v1;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v59;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Message %@ cannot be sent over modern transport", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v56);
      v60 = MEMORY[0x277CCA9B8];
      v39 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2031];
      v61 = [v60 hmErrorWithCode:2 description:@"Cannot be sent over Modern Transport" reason:@"Not supported by Modern Transport or there is no available transport" suggestion:0 underlyingError:v39];
      [(HMDModernRemoteMessageTransport *)v57 _respondWithError:v4 completionHandler:v104 error:v61];

      goto LABEL_38;
    }

    v13 = v4;
    v14 = [v13 responseHandler];

    if (v14 && [v13 type])
    {
      v91 = objc_autoreleasePoolPush();
      v92 = v1;
      v93 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
      {
        v94 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v94;
        _os_log_impl(&dword_2531F8000, v93, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Message expects a response but is not a request type. Remove the response handler or change the message type.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v91);
      v95 = [[HMDAssertionLogEvent alloc] initWithReason:@"Message expects a response but is not a request type. Remove the response handler or change the message type."];
      v96 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v96 submitLogEvent:v95];
    }

    v15 = v13;
    v16 = v101;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __96__HMDModernRemoteMessageTransport__createContextWithRemoteMessage_transports_completionHandler___block_invoke;
    v108 = &unk_2797297C0;
    context = v15;
    *v109 = context;
    *&v109[8] = v1;
    v17 = v16;
    *&v109[16] = v17;
    v18 = v104;
    v19 = [HMDModernTransportMessageContextOptions newWithBuilder:buf];
    v20 = [v1 contextManager];
    v21 = [v1 idsDateProvider];
    v22 = [v1 timerProvider];
    v23 = [v20 createContextWithMessage:context options:v19 completionHandler:v18 dateProvider:v21 timerProvider:v22];

    v24 = objc_autoreleasePoolPush();
    v25 = v1;
    v26 = HMFGetOSLogHandle();
    v27 = v26;
    if (!v23)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        v63 = [context identifier];
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2114;
        *&buf[14] = v63;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create context for message %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v64 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(HMDModernRemoteMessageTransport *)v25 _respondWithError:v18 completionHandler:v64 error:?];

      v39 = 0;
      goto LABEL_38;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v99 = HMFGetLogIdentifier();
      v28 = [v25 rapportTransport];
      [v17 containsObject:v28];
      v29 = HMFBooleanToString();
      [v25 isRapportLinkSlow];
      v30 = HMFBooleanToString();
      v31 = [v25 idsTransport];
      [v17 containsObject:v31];
      v32 = HMFBooleanToString();
      *buf = 138544642;
      *&buf[4] = v99;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      *&buf[22] = 2114;
      v108 = v30;
      *v109 = 2114;
      *&v109[2] = v32;
      *&v109[10] = 2114;
      *&v109[12] = @"N/A";
      *&v109[20] = 2112;
      *&v109[22] = context;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Sending message over Rapport = %{public}@ (isSlow = %{public}@), IDS = %{public}@, Resident to Resident = %{public}@: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v24);
    v33 = objc_autoreleasePoolPush();
    v34 = v25;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [context shortDescription];
      v38 = [context messagePayload];
      *buf = 138543875;
      *&buf[4] = v36;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      *&buf[22] = 2113;
      v108 = v38;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Sending message %{public}@ with payload: %{private}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v33);
    v39 = v23;
    if ([v39 expectsResponse])
    {
      v40 = objc_autoreleasePoolPush();
      v41 = v34;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        v44 = [v39 messageID];
        [v39 timeout];
        *buf = 138543874;
        *&buf[4] = v43;
        *&buf[12] = 2114;
        *&buf[14] = v44;
        *&buf[22] = 2048;
        v108 = v45;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Starting response timer for message %{public}@. Timeout is %.0f seconds", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v40);
      objc_initWeak(&location, v41);
      [v39 timeout];
      v47 = v46;
      v48 = [v41 workQueue];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __65__HMDModernRemoteMessageTransport__startResponseTimerForContext___block_invoke;
      v108 = &unk_279732E78;
      objc_copyWeak(&v109[8], &location);
      *v109 = v39;
      [*v109 startResponseTimerWithTimeInterval:v48 queue:buf completionHandler:v47];

      objc_destroyWeak(&v109[8]);
      objc_destroyWeak(&location);
    }

    v49 = [v34 rapportTransport];
    v50 = [v17 containsObject:v49];

    if (!v50)
    {
      v65 = [v34 idsTransport];
      v66 = [v17 containsObject:v65];

      if (v66)
      {
        v67 = [v34 idsTransport];
        [(HMDModernRemoteMessageTransport *)v34 _sendMessageOverTransport:v67 forContext:v39];
      }

      goto LABEL_38;
    }

    v51 = [v34 rapportTransport];
    [(HMDModernRemoteMessageTransport *)v34 _sendMessageOverTransport:v51 forContext:v39];

    v52 = [v34 rapportTransport];
    if ([v17 containsObject:v52])
    {
      v53 = [v34 idsTransport];
      if ([v17 containsObject:v53])
      {
        v54 = [context remoteDisallowsIDSRacing];

        if (v54)
        {
LABEL_35:
          v68 = [v34 systemDateProvider];
          [v68 timeIntervalSince1970];
          v70 = v69;

          v71 = [v34 idsDateProvider];
          [v71 timeIntervalSince1970];
          v73 = v72;

          contexta = objc_autoreleasePoolPush();
          v74 = v34;
          v75 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            v98 = HMFGetLogIdentifier();
            v100 = [v39 messageID];
            v97 = [objc_opt_class() requestStartTimeHeaderKey];
            v76 = MEMORY[0x277CCABB0];
            [v39 requestStartTime];
            v77 = [v76 numberWithDouble:?];
            v78 = [objc_opt_class() timeToLiveHeaderKey];
            v79 = MEMORY[0x277CCABB0];
            v80 = [v39 options];
            [v80 timeToLive];
            v81 = [v79 numberWithDouble:?];
            v82 = [MEMORY[0x277CCABB0] numberWithDouble:v70];
            v83 = [MEMORY[0x277CCABB0] numberWithDouble:v73];
            v84 = [MEMORY[0x277CCABB0] numberWithDouble:v70 - v73];
            *buf = 138545410;
            *&buf[4] = v98;
            *&buf[12] = 2114;
            *&buf[14] = v100;
            *&buf[22] = 2114;
            v108 = v97;
            *v109 = 2114;
            *&v109[2] = v77;
            *&v109[10] = 2114;
            *&v109[12] = v78;
            *&v109[20] = 2114;
            *&v109[22] = v81;
            v110 = 2114;
            v111 = v82;
            v112 = 2114;
            v113 = v83;
            v114 = 2114;
            v115 = v84;
            _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@Message %{public}@ sent with %{public}@ = %{public}@, %{public}@ = %{public}@. System Time: %{public}@, IDS Time: %{public}@, (System Time - IDS Time): %{public}@", buf, 0x5Cu);
          }

          objc_autoreleasePoolPop(contexta);
LABEL_38:

          goto LABEL_39;
        }

        v55 = [v34 isRapportLinkSlow];
        v52 = [v34 idsTransport];
        if (!v55)
        {
          [HMDModernRemoteMessageTransport _startFallbackTimerForContext:v34 fallbackTransport:v39 withTimeout:v52];

          v86 = objc_autoreleasePoolPush();
          v87 = v34;
          v88 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            v89 = HMFGetLogIdentifier();
            v90 = [context identifier];
            *buf = 138543618;
            *&buf[4] = v89;
            *&buf[12] = 2114;
            *&buf[14] = v90;
            _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_INFO, "%{public}@Starting Rapport to IDS fallback timer for message %{public}@ ", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v86);
          goto LABEL_38;
        }

        [(HMDModernRemoteMessageTransport *)v34 _sendMessageOverTransport:v52 forContext:v39];
      }

      else
      {
      }
    }

    goto LABEL_35;
  }

LABEL_39:

  v85 = *MEMORY[0x277D85DE8];
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
      v15[3] = &unk_279732E78;
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
    v8 = WeakRetained;
    v3 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v3);

    v4 = [*(a1 + 32) remainingTransports];
    v5 = [v4 count];

    WeakRetained = v8;
    if (v5)
    {
      v6 = [*(a1 + 32) inProgressTransports];
      v7 = [v6 count];

      WeakRetained = v8;
      if (v7)
      {
        [(HMDModernRemoteMessageTransport *)v8 _sendOverRemainingTransportForContext:?];
        WeakRetained = v8;
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
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Message %{public}@ timed out", &v17, 0x16u);
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
  v47 = *MEMORY[0x277D85DE8];
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
        v41 = 138543874;
        v42 = v11;
        v43 = 2114;
        v44 = v12;
        v45 = 2048;
        v46 = v13;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Message %{public}@ expects a response but timeout is not set. Setting timeout to %.0f seconds", &v41, 0x20u);
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
  v17 = v16;
  if (v15)
  {
    v18 = [v16 destination];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v20 = [v15 rapportTransport];
      if ([v20 isValidMessage:v17])
      {
        v21 = [v15 idsTransport];
        v22 = [v21 isValidMessage:v17];

        if (v22)
        {
          v15 = 1;
          goto LABEL_18;
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
        v41 = 138543618;
        v42 = v26;
        v43 = 2112;
        v44 = v17;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Not tracking reachability for restricted message: %@", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
    }

    v15 = 0;
  }

LABEL_18:

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

  [v3 setExpectRapportSuccess:0];
  v40 = *MEMORY[0x277D85DE8];
}

- (BOOL)canSendMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy restriction] != -1 && (objc_msgSend(messageCopy, "restriction") & 0x10) != 0)
  {
    v13 = 0;
  }

  else
  {
    destination = [messageCopy destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = destination;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7 && ([v7 device], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "capabilities"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "supportsModernTransport"), v9, v8, v10))
      v13 = !-[HMDModernRemoteMessageTransport isWatch](self, "isWatch") && (-[HMDModernRemoteMessageTransport rapportTransport](self, "rapportTransport"), v11 = {;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)start
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  rapportTransport = [(HMDModernRemoteMessageTransport *)selfCopy rapportTransport];
  start = [rapportTransport start];

  idsTransport = [(HMDModernRemoteMessageTransport *)selfCopy idsTransport];
  start2 = [idsTransport start];

  [(HMDModernRemoteMessageTransport *)selfCopy setStarted:1];
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v20[0] = start;
  v20[1] = start2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v13 = [v11 initWithArray:v12];

  v14 = [MEMORY[0x277D0F7C0] all:v13];
  startPromise = [(HMDRemoteMessageTransport *)selfCopy startPromise];
  ignoreOutcome = [v14 ignoreOutcome];
  [startPromise resolveWithFuture:ignoreOutcome];

  startFuture = [(HMDRemoteMessageTransport *)selfCopy startFuture];

  v18 = *MEMORY[0x277D85DE8];

  return startFuture;
}

- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d rapportTransport:(id)transport idsTransport:(id)idsTransport contextManager:(id)manager systemDateProvider:(id)provider idsDateProvider:(id)dateProvider timerProvider:(id)self0 timerManager:(id)self1 isWatch:(BOOL)self2 featuresDataSource:(id)self3
{
  dCopy = d;
  obj = transport;
  transportCopy = transport;
  idsTransportCopy = idsTransport;
  managerCopy = manager;
  providerCopy = provider;
  providerCopy2 = provider;
  dateProviderCopy = dateProvider;
  timerProviderCopy = timerProvider;
  timerManagerCopy = timerManager;
  sourceCopy = source;
  v41.receiver = self;
  v41.super_class = HMDModernRemoteMessageTransport;
  v21 = [(HMDRemoteMessageTransport *)&v41 initWithAccountRegistry:registry];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_requestID, d);
    objc_storeStrong(&v22->_featuresDataSource, source);
    v23 = HMDispatchQueueNameString();
    uTF8String = [v23 UTF8String];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create(uTF8String, v25);
    workQueue = v22->_workQueue;
    v22->_workQueue = v26;

    objc_storeStrong(&v22->_rapportTransport, obj);
    [(HMFMessageTransport *)v22->_rapportTransport setDelegate:v22];
    [(HMDRemoteMessageTransport *)v22->_rapportTransport setReachabilityDelegate:v22];
    objc_storeStrong(&v22->_idsTransport, idsTransport);
    [(HMFMessageTransport *)v22->_idsTransport setDelegate:v22];
    objc_storeStrong(&v22->_contextManager, manager);
    objc_storeStrong(&v22->_systemDateProvider, providerCopy);
    objc_storeStrong(&v22->_idsDateProvider, dateProvider);
    objc_storeStrong(&v22->_timerProvider, timerProvider);
    v28 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:100];
    messageIDDedupeBuffer = v22->_messageIDDedupeBuffer;
    v22->_messageIDDedupeBuffer = v28;

    v22->_rapportLinkSlow = 0;
    v22->_isWatch = watch;
    objc_storeStrong(&v22->_timerManager, timerManager);
    [(HMFTimerManager *)v22->_timerManager setDelegate:v22];
  }

  return v22;
}

- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry
{
  if (!self)
  {
    return 0;
  }

  v5 = MEMORY[0x277D0F7F0];
  v6 = @"com.apple.home.messaging.rid";
  registryCopy = registry;
  v18 = objc_alloc_init(v5);
  v19 = objc_alloc_init(MEMORY[0x277D0F798]);
  v8 = [[HMDRapportMessageTransport alloc] initWithAccountRegistry:registryCopy requestID:@"com.apple.home.messaging.rid"];
  v9 = [[HMDIDSMessageTransport alloc] initWithAccountRegistry:registryCopy forServiceName:@"com.apple.private.alloy.home"];
  v10 = objc_alloc_init(HMDModernTransportMessageContextManager);
  v11 = objc_opt_new();
  v12 = [objc_alloc(MEMORY[0x277D0F930]) initWithOptions:1];
  v13 = +[HMDFeaturesDataSource defaultDataSource];
  LOBYTE(v17) = 0;
  v14 = [(HMDModernRemoteMessageTransport *)self initWithAccountRegistry:registryCopy requestID:@"com.apple.home.messaging.rid" rapportTransport:v8 idsTransport:v9 contextManager:v10 systemDateProvider:v19 idsDateProvider:v18 timerProvider:v11 timerManager:v12 isWatch:v17 featuresDataSource:v13];

  v15 = v14;
  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t59_88120 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t59_88120, &__block_literal_global_88121);
  }

  v3 = logCategory__hmf_once_v60_88122;

  return v3;
}

uint64_t __46__HMDModernRemoteMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v60_88122;
  logCategory__hmf_once_v60_88122 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end