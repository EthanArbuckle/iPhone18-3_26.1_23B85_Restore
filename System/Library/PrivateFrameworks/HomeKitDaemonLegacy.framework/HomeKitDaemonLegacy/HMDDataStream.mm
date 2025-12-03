@interface HMDDataStream
- (HMDDataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier;
- (HMDDataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier connectionTimer:(id)timer helloMessageResponseTimer:(id)responseTimer;
- (HMDDataStreamDelegate)delegate;
- (id)protocolWithName:(id)name;
- (void)_evaluateActiveStatusChange;
- (void)_failPendingMessagesWithError:(void *)error;
- (void)_sendMessageWithHeader:(void *)header payload:(void *)payload completion:;
- (void)addProtocol:(id)protocol name:(id)name;
- (void)close;
- (void)connect;
- (void)fulfillPendingRequestWithResponseHeader:(void *)header payload:;
- (void)sendEventForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion;
- (void)sendRequestForProtocol:(id)protocol topic:(id)topic identifier:(unint64_t)identifier payload:(id)payload completion:(id)completion;
- (void)sendRequestForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion;
- (void)setActive:(BOOL)active;
- (void)setTrafficClass:(unint64_t)class;
- (void)timerDidFire:(id)fire;
- (void)transport:(id)transport didFailWithError:(id)error;
- (void)transport:(id)transport didReceiveRawFrame:(id)frame;
- (void)transportDidClose:(id)close;
- (void)transportDidOpen:(id)open;
@end

@implementation HMDDataStream

- (HMDDataStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v17 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDDataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  connectionTimer = [(HMDDataStream *)self connectionTimer];

  if (connectionTimer == fireCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Data stream failed to connect in time; closing!";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v8);
    [(HMDDataStream *)self close];
    goto LABEL_9;
  }

  helloMessageResponseTimer = [(HMDDataStream *)self helloMessageResponseTimer];

  if (helloMessageResponseTimer == fireCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Data stream failed to receive first message in time; closing!";
LABEL_7:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, v12, &v15, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport didReceiveRawFrame:(id)frame
{
  v154 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  frameCopy = frame;
  delegate = [(HMDDataStream *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (delegate)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v145 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Data stream received frame", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [delegate dataStreamDidReceiveRawFrame:selfCopy];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v145 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Data stream received frame; but no delegate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  if ([frameCopy length])
  {
    v15 = 0;
    v16 = *[frameCopy bytes];
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        v20 = 0;
        v21 = 0;
        if (v16 != 3)
        {
          goto LABEL_29;
        }

        sessionEncryption = [(HMDDataStream *)selfCopy sessionEncryption];

        if (!sessionEncryption)
        {
          v135 = 0;
          v136 = 0;
          v134 = 0;
          v19 = [HMDDataStreamMessageCoder unpackUnencryptedOPACKFrame:frameCopy receivedHeader:&v136 receivedPayload:&v135 error:&v134];
          v15 = v136;
          v20 = v135;
          v21 = v134;
          if (v21)
          {
            goto LABEL_29;
          }

          goto LABEL_35;
        }

        v27 = objc_autoreleasePoolPush();
        v28 = selfCopy;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          v145 = v30;
          v31 = "%{public}@Data stream failed due to receiving encrypted frame";
LABEL_26:
          v33 = v29;
          v34 = 12;
          goto LABEL_27;
        }

LABEL_28:

        objc_autoreleasePoolPop(v27);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        v15 = 0;
        v20 = 0;
        goto LABEL_29;
      }
    }

    else if (v16)
    {
      sessionEncryption2 = [(HMDDataStream *)selfCopy sessionEncryption];

      if (sessionEncryption2)
      {
        sessionEncryption3 = [(HMDDataStream *)selfCopy sessionEncryption];
        v138 = 0;
        v139 = 0;
        v137 = 0;
        v19 = [HMDDataStreamMessageCoder decryptEncryptedOPACKFrame:frameCopy sessionEncryption:sessionEncryption3 receivedHeader:&v139 receivedPayload:&v138 error:&v137];
        v15 = v139;
        v20 = v138;
        v21 = v137;

        if (v21)
        {
          goto LABEL_29;
        }

LABEL_35:
        if (v19)
        {
          if ([(HMDDataStream *)selfCopy firstMessageReceived])
          {
            v42 = [v15 objectForKeyedSubscript:@"response"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = v42;
            }

            else
            {
              v43 = 0;
            }

            v44 = v43;

            if (v44)
            {
              [(HMDDataStream *)selfCopy fulfillPendingRequestWithResponseHeader:v15 payload:v20];
LABEL_123:

LABEL_32:
              goto LABEL_33;
            }

            v58 = [v15 objectForKeyedSubscript:@"protocol"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v59 = v58;
            }

            else
            {
              v59 = 0;
            }

            v60 = v59;

            v130 = v60;
            if (!v60)
            {
              v106 = objc_autoreleasePoolPush();
              v107 = selfCopy;
              v108 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
              {
                v109 = HMFGetLogIdentifier();
                *buf = 138543362;
                v145 = v109;
                _os_log_impl(&dword_2531F8000, v108, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (header missing protocol)", buf, 0xCu);
              }

              goto LABEL_121;
            }

            if ([(__CFString *)v60 isEqual:@"control"])
            {
              v42 = [v15 objectForKeyedSubscript:@"event"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v61 = v42;
              }

              else
              {
                v61 = 0;
              }

              v62 = v61;

              if (v62)
              {
                controlProtocol = [(HMDDataStream *)selfCopy controlProtocol];
                [controlProtocol dataStream:selfCopy didReceiveEvent:v62 header:v15 payload:v20];
LABEL_108:

LABEL_122:
                goto LABEL_123;
              }

              v42 = [v15 objectForKeyedSubscript:@"request"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v114 = v42;
              }

              else
              {
                v114 = 0;
              }

              v115 = v114;

              if (v115)
              {
                controlProtocol = [(HMDDataStream *)selfCopy controlProtocol];
                [controlProtocol dataStream:selfCopy didReceiveRequest:v115 header:v15 payload:v20];
                goto LABEL_108;
              }

              goto LABEL_119;
            }

            v133 = delegate;
            protocols = [(HMDDataStream *)selfCopy protocols];
            v111 = [protocols objectForKey:v60];

            if (v111)
            {
              v42 = [v15 objectForKeyedSubscript:@"event"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v112 = v42;
              }

              else
              {
                v112 = 0;
              }

              v113 = v112;

              if (v113)
              {
                [v111 dataStream:selfCopy didReceiveEvent:v113 header:v15 payload:v20];
              }

              else
              {
                v42 = [v15 objectForKeyedSubscript:@"request"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v120 = v42;
                }

                else
                {
                  v120 = 0;
                }

                v121 = v120;

                if (!v121)
                {

                  delegate = v133;
LABEL_119:
                  v106 = objc_autoreleasePoolPush();
                  v107 = selfCopy;
                  v108 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                  {
                    v122 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v145 = v122;
                    _os_log_impl(&dword_2531F8000, v108, OS_LOG_TYPE_INFO, "%{public}@Message received but no protocol accepted it; dropped!", buf, 0xCu);
                  }

LABEL_121:

                  objc_autoreleasePoolPop(v106);
                  v42 = 0;
                  goto LABEL_122;
                }

                [v111 dataStream:selfCopy didReceiveRequest:v121 header:v15 payload:v20];
              }
            }

            else
            {
              v116 = objc_autoreleasePoolPush();
              v117 = selfCopy;
              v118 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
              {
                v119 = HMFGetLogIdentifier();
                *buf = 138543618;
                v145 = v119;
                v146 = 2112;
                v147 = v130;
                _os_log_impl(&dword_2531F8000, v118, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (no protocol named %@)", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v116);
              v42 = 0;
            }

            delegate = v133;
            goto LABEL_122;
          }

          v15 = v15;
          v20 = v20;
          v132 = delegate;
          if (selfCopy)
          {
            v45 = [v15 objectForKeyedSubscript:@"protocol"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = v45;
            }

            else
            {
              v46 = 0;
            }

            v47 = v46;

            v129 = v47;
            if ([v47 isEqualToString:@"control"])
            {
              v48 = [v15 objectForKeyedSubscript:@"response"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v49 = v48;
              }

              else
              {
                v49 = 0;
              }

              v50 = v49;

              if (v50)
              {
                controlProtocol2 = [(HMDDataStream *)selfCopy controlProtocol];
                [controlProtocol2 dataStream:selfCopy didReceiveResponse:v48 header:v15 payload:v20];

                controlProtocol3 = [(HMDDataStream *)selfCopy controlProtocol];
                helloMessageResponseReceived = [controlProtocol3 helloMessageResponseReceived];

                if (helloMessageResponseReceived)
                {
LABEL_74:
                  [(HMDDataStream *)selfCopy setFirstMessageReceived:1];
                  helloMessageResponseTimer = [(HMDDataStream *)selfCopy helloMessageResponseTimer];
                  [helloMessageResponseTimer cancel];

                  [(HMDDataStream *)selfCopy setHelloMessageResponseTimer:0];
                  if (selfCopy)
                  {
                    pendingRequests = [(HMDDataStream *)selfCopy pendingRequests];
                    v71 = [pendingRequests copy];

                    v72 = objc_autoreleasePoolPush();
                    v73 = selfCopy;
                    v74 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
                    {
                      v75 = HMFGetLogIdentifier();
                      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v71, "count")}];
                      *v150 = 138543618;
                      v151 = v75;
                      v152 = 2112;
                      v153 = v76;
                      _os_log_impl(&dword_2531F8000, v74, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending requests [%@]", v150, 0x16u);
                    }

                    contextb = v15;
                    v131 = transportCopy;

                    objc_autoreleasePoolPop(v72);
                    pendingRequests2 = [(HMDDataStream *)v73 pendingRequests];
                    [pendingRequests2 removeAllObjects];

                    v142 = 0u;
                    v143 = 0u;
                    v140 = 0u;
                    v141 = 0u;
                    v78 = v71;
                    v79 = [v78 countByEnumeratingWithState:&v140 objects:buf count:16];
                    v125 = v20;
                    if (v79)
                    {
                      v80 = v79;
                      v81 = *v141;
                      do
                      {
                        for (i = 0; i != v80; ++i)
                        {
                          if (*v141 != v81)
                          {
                            objc_enumerationMutation(v78);
                          }

                          v83 = *(*(&v140 + 1) + 8 * i);
                          protocol = [v83 protocol];
                          topic = [v83 topic];
                          payload = [v83 payload];
                          callback = [v83 callback];
                          [(HMDDataStream *)v73 sendRequestForProtocol:protocol topic:topic payload:payload completion:callback];
                        }

                        v80 = [v78 countByEnumeratingWithState:&v140 objects:buf count:16];
                      }

                      while (v80);
                    }

                    pendingEvents = [(HMDDataStream *)v73 pendingEvents];
                    v89 = [pendingEvents copy];

                    v90 = objc_autoreleasePoolPush();
                    v91 = v73;
                    v92 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
                    {
                      v93 = HMFGetLogIdentifier();
                      v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v89, "count")}];
                      *v150 = 138543618;
                      v151 = v93;
                      v152 = 2112;
                      v153 = v94;
                      _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending events [%@]", v150, 0x16u);
                    }

                    objc_autoreleasePoolPop(v90);
                    pendingEvents2 = [(HMDDataStream *)v91 pendingEvents];
                    [pendingEvents2 removeAllObjects];

                    v142 = 0u;
                    v143 = 0u;
                    v140 = 0u;
                    v141 = 0u;
                    v96 = v89;
                    v97 = [v96 countByEnumeratingWithState:&v140 objects:buf count:16];
                    if (v97)
                    {
                      v98 = v97;
                      v99 = *v141;
                      do
                      {
                        for (j = 0; j != v98; ++j)
                        {
                          if (*v141 != v99)
                          {
                            objc_enumerationMutation(v96);
                          }

                          v101 = *(*(&v140 + 1) + 8 * j);
                          protocol2 = [v101 protocol];
                          topic2 = [v101 topic];
                          payload2 = [v101 payload];
                          completion = [v101 completion];
                          [(HMDDataStream *)v91 sendEventForProtocol:protocol2 topic:topic2 payload:payload2 completion:completion];
                        }

                        v98 = [v96 countByEnumeratingWithState:&v140 objects:buf count:16];
                      }

                      while (v98);
                    }

                    transportCopy = v131;
                    delegate = v132;
                    v20 = v125;
                    v15 = contextb;
                  }

                  else
                  {
                    delegate = v132;
                  }

                  goto LABEL_32;
                }

LABEL_71:
                v65 = objc_autoreleasePoolPush();
                v66 = selfCopy;
                v67 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  v68 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v145 = v68;
                  _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected first message on the data stream", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v65);
                [(HMDDataStream *)v66 close];
                goto LABEL_74;
              }

              v124 = objc_autoreleasePoolPush();
              contexta = selfCopy;
              v64 = HMFGetOSLogHandle();
              v57 = v129;
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                v123 = HMFGetLogIdentifier();
                *buf = 138543874;
                v145 = v123;
                v146 = 2112;
                v147 = @"response";
                v148 = 2112;
                v149 = v48;
                _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected %@ key value: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v124);
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v54 = selfCopy;
              v55 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                v56 = HMFGetLogIdentifier();
                *buf = 138543874;
                v145 = v56;
                v146 = 2112;
                v147 = @"control";
                v148 = 2112;
                v149 = v45;
                _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@Expected protocol name: %@ received: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(context);
              v57 = v129;
            }
          }

          goto LABEL_71;
        }

LABEL_29:
        v36 = objc_autoreleasePoolPush();
        v37 = selfCopy;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v40 = v39 = delegate;
          *buf = 138543618;
          v145 = v40;
          v146 = 2112;
          v147 = v21;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (%@)", buf, 0x16u);

          delegate = v39;
        }

        objc_autoreleasePoolPop(v36);
        goto LABEL_32;
      }

      v27 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v145 = v30;
        v31 = "%{public}@Data stream failed due to receiving unencrypted frame";
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v27 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v145 = v30;
      v146 = 1024;
      LODWORD(v147) = v16;
      v31 = "%{public}@Data stream failed due to unrecognized frame type 0x%02x";
      v33 = v29;
      v34 = 18;
LABEL_27:
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, v31, buf, v34);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v145 = v25;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@DataStream dropping truncated frame of zero-length", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
LABEL_33:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)fulfillPendingRequestWithResponseHeader:(void *)header payload:
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  headerCopy = header;
  v7 = headerCopy;
  if (!self)
  {
    goto LABEL_19;
  }

  selfCopy = self;
  v32 = headerCopy;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  pendingRequests = [self pendingRequests];
  v9 = [pendingRequests countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v38;
  v33 = *v38;
  v34 = pendingRequests;
  do
  {
    v12 = 0;
    v36 = v10;
    do
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(pendingRequests);
      }

      v13 = *(*(&v37 + 1) + 8 * v12);
      v14 = v5;
      if (v13)
      {
        topic = [v13 topic];
        v16 = [v14 objectForKeyedSubscript:@"response"];
        if (![topic isEqual:v16])
        {
          goto LABEL_13;
        }

        identifier = [v13 identifier];
        v18 = [v14 objectForKeyedSubscript:@"id"];
        if (![identifier isEqual:v18])
        {

          v10 = v36;
LABEL_13:

          goto LABEL_14;
        }

        protocol = [v13 protocol];
        [v14 objectForKeyedSubscript:@"protocol"];
        v21 = v20 = v5;
        v35 = [protocol isEqual:v21];

        v5 = v20;
        v11 = v33;

        pendingRequests = v34;
        v10 = v36;
        if (v35)
        {

          v27 = v13;
          callback = [v27 callback];
          v7 = v32;
          (callback)[2](callback, 0, v14, v32);

          pendingRequests2 = [selfCopy pendingRequests];
          [pendingRequests2 removeObject:v27];

          goto LABEL_19;
        }
      }

LABEL_14:

      ++v12;
    }

    while (v10 != v12);
    v10 = [pendingRequests countByEnumeratingWithState:&v37 objects:v47 count:16];
  }

  while (v10);
LABEL_16:

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    pendingRequests3 = [v23 pendingRequests];
    *buf = 138543874;
    v42 = v25;
    v43 = 2112;
    v44 = v5;
    v45 = 2112;
    v46 = pendingRequests3;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@No pending request found for response with header: %@. Pending %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  v7 = v32;
LABEL_19:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)transportDidOpen:(id)open
{
  v32 = *MEMORY[0x277D85DE8];
  openCopy = open;
  [(HMDDataStream *)self setConnectionTimer:0];
  delegate = [(HMDDataStream *)self delegate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (delegate)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [delegate dataStreamDidOpen:selfCopy];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN (but no delegate!)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  controlProtocol = [(HMDDataStream *)selfCopy controlProtocol];
  [controlProtocol dataStreamDidOpen:selfCopy];

  if (selfCopy)
  {
    helloMessageResponseTimer = [(HMDDataStream *)selfCopy helloMessageResponseTimer];
    [helloMessageResponseTimer setDelegate:selfCopy];

    workQueue = [(HMDDataStream *)selfCopy workQueue];
    helloMessageResponseTimer2 = [(HMDDataStream *)selfCopy helloMessageResponseTimer];
    [helloMessageResponseTimer2 setDelegateQueue:workQueue];

    helloMessageResponseTimer3 = [(HMDDataStream *)selfCopy helloMessageResponseTimer];
    [helloMessageResponseTimer3 resume];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  protocols = [(HMDDataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v19 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        if (v23)
        {
          [v23 dataStreamDidOpen:selfCopy];
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)transportDidClose:(id)close
{
  v27 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  delegate = [(HMDDataStream *)self delegate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (delegate)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream closed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [delegate dataStreamDidClose:selfCopy];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream closed (but no delegate!)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  protocols = [(HMDDataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v14 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v20 + 1) + 8 * v17++) dataStreamDidClose:selfCopy];
      }

      while (v15 != v17);
      v15 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v18 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061];
  [(HMDDataStream *)selfCopy _failPendingMessagesWithError:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_failPendingMessagesWithError:(void *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    pendingRequests = [error pendingRequests];
    v5 = [pendingRequests countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        v8 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(pendingRequests);
          }

          callback = [*(*(&v23 + 1) + 8 * v8) callback];
          (callback)[2](callback, v3, 0, 0);

          ++v8;
        }

        while (v6 != v8);
        v6 = [pendingRequests countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }

    pendingRequests2 = [error pendingRequests];
    [pendingRequests2 removeAllObjects];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    pendingEvents = [error pendingEvents];
    v12 = [pendingEvents countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(pendingEvents);
          }

          completion = [*(*(&v19 + 1) + 8 * v15) completion];
          (completion)[2](completion, v3);

          ++v15;
        }

        while (v13 != v15);
        v13 = [pendingEvents countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v13);
    }

    pendingEvents2 = [error pendingEvents];
    [pendingEvents2 removeAllObjects];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)transport didFailWithError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  errorCopy = error;
  delegate = [(HMDDataStream *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (delegate)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v13;
      v30 = 2112;
      v31 = errorCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Data stream failure (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [delegate dataStream:selfCopy didFailWithError:errorCopy];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v14;
      v30 = 2112;
      v31 = errorCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Data stream failure (%@); but no delegate", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  protocols = [(HMDDataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v17 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v21 = *(*(&v23 + 1) + 8 * v20);
        if (v21)
        {
          [v21 dataStream:selfCopy didFailWithError:errorCopy];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  [(HMDDataStream *)selfCopy _failPendingMessagesWithError:errorCopy];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setTrafficClass:(unint64_t)class
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2048;
    classCopy = class;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting traffic class %lu on transport", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  transport = [(HMDDataStream *)selfCopy transport];
  [transport setTrafficClass:class];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateActiveStatusChange
{
  v17 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    workQueue = [result workQueue];
    dispatch_assert_queue_V2(workQueue);

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    protocols = [v1 protocols];
    v4 = [protocols countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(protocols);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          protocols2 = [v1 protocols];
          v9 = [protocols2 objectForKey:v7];
          isActive = [v9 isActive];

          if (isActive)
          {
            v4 = 1;
            goto LABEL_12;
          }
        }

        v4 = [protocols countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    result = [v1 setActive:v4];
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendRequestForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion
{
  protocolCopy = protocol;
  topicCopy = topic;
  payloadCopy = payload;
  completionCopy = completion;
  if (self)
  {
    nextRequestIdentifier = [(HMDDataStream *)self nextRequestIdentifier];
    [(HMDDataStream *)self setNextRequestIdentifier:[(HMDDataStream *)self nextRequestIdentifier]+ 1];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:nextRequestIdentifier];
  }

  else
  {
    v15 = 0;
  }

  if ([(HMDDataStream *)self firstMessageReceived])
  {
    controlProtocol = [(HMDDataStream *)self controlProtocol];
    helloMessageResponseReceived = [controlProtocol helloMessageResponseReceived];

    if ((helloMessageResponseReceived & 1) == 0)
    {
      v20 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1062];
      (*(completionCopy + 2))(completionCopy, v20, 0, 0);

      goto LABEL_9;
    }

    v18 = [HMDDataStreamMessageCoder requestHeaderForProtocol:protocolCopy topic:topicCopy identifier:v15];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__HMDDataStream_sendRequestForProtocol_topic_payload_completion___block_invoke;
    v21[3] = &unk_279725208;
    v27 = completionCopy;
    v22 = v15;
    v23 = protocolCopy;
    v24 = topicCopy;
    v25 = payloadCopy;
    selfCopy = self;
    [(HMDDataStream *)self _sendMessageWithHeader:v18 payload:v25 completion:v21];
  }

  else
  {
    v18 = [[HMDDataStreamPendingRequest alloc] initWithIdentifier:v15 protocol:protocolCopy topic:topicCopy payload:payloadCopy callback:completionCopy];
    pendingRequests = [(HMDDataStream *)self pendingRequests];
    [pendingRequests addObject:v18];
  }

LABEL_9:
}

void __65__HMDDataStream_sendRequestForProtocol_topic_payload_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v4 = [[HMDDataStreamPendingRequest alloc] initWithIdentifier:*(a1 + 32) protocol:*(a1 + 40) topic:*(a1 + 48) payload:*(a1 + 56) callback:*(a1 + 72)];
    v5 = [*(a1 + 64) pendingRequests];
    [v5 addObject:v4];

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 64);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@DataStream pending the request: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessageWithHeader:(void *)header payload:(void *)payload completion:
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  headerCopy = header;
  payloadCopy = payload;
  if (self)
  {
    sessionEncryption = [self sessionEncryption];

    if (sessionEncryption)
    {
      sessionEncryption2 = [self sessionEncryption];
      v24 = 0;
      v12 = [HMDDataStreamMessageCoder encryptEncryptedOPACKHeader:v7 payload:headerCopy sessionEncryption:sessionEncryption2 error:&v24];
      v13 = v24;
    }

    else
    {
      v23 = 0;
      v12 = [HMDDataStreamMessageCoder buildUnencryptedOPACKHeader:v7 payload:headerCopy error:&v23];
      v13 = v23;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v18;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@DataStream encoding message failed (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      payloadCopy[2](payloadCopy, v13);
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        pendingRequests = [selfCopy pendingRequests];
        *buf = 138543874;
        v26 = v19;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = pendingRequests;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@DataStream Sending Message: %@ --> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      transport = [selfCopy transport];
      [transport sendRawFrame:v12 completion:payloadCopy];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestForProtocol:(id)protocol topic:(id)topic identifier:(unint64_t)identifier payload:(id)payload completion:(id)completion
{
  v12 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  payloadCopy = payload;
  topicCopy = topic;
  protocolCopy = protocol;
  v17 = [v12 numberWithUnsignedInteger:identifier];
  v18 = [HMDDataStreamMessageCoder requestHeaderForProtocol:protocolCopy topic:topicCopy identifier:v17];

  [(HMDDataStream *)self _sendMessageWithHeader:v18 payload:payloadCopy completion:completionCopy];
}

- (void)sendEventForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion
{
  protocolCopy = protocol;
  topicCopy = topic;
  payloadCopy = payload;
  completionCopy = completion;
  if ([(HMDDataStream *)self firstMessageReceived])
  {
    controlProtocol = [(HMDDataStream *)self controlProtocol];
    helloMessageResponseReceived = [controlProtocol helloMessageResponseReceived];

    if (helloMessageResponseReceived)
    {
      v15 = [HMDDataStreamMessageCoder eventHeaderForProtocol:protocolCopy topic:topicCopy];
      [(HMDDataStream *)self _sendMessageWithHeader:v15 payload:payloadCopy completion:completionCopy];
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1062];
      (*(completionCopy + 2))(completionCopy, v15);
    }
  }

  else
  {
    v15 = [[HMDDataStreamPendingEvent alloc] initWithProtocol:protocolCopy topic:topicCopy payload:payloadCopy completion:completionCopy];
    pendingEvents = [(HMDDataStream *)self pendingEvents];
    [pendingEvents addObject:v15];
  }
}

- (id)protocolWithName:(id)name
{
  nameCopy = name;
  workQueue = [(HMDDataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  protocols = [(HMDDataStream *)self protocols];
  v7 = [protocols objectForKey:nameCopy];

  return v7;
}

- (void)addProtocol:(id)protocol name:(id)name
{
  nameCopy = name;
  protocolCopy = protocol;
  protocols = [(HMDDataStream *)self protocols];
  [protocols setObject:protocolCopy forKey:nameCopy];

  [(HMDDataStream *)self _evaluateActiveStatusChange];
}

- (void)close
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream closing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  transport = [(HMDDataStream *)selfCopy transport];
  [transport close];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  protocols = [(HMDDataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v10 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v15 + 1) + 8 * v13++) dataStreamInitiatedClose:selfCopy];
      }

      while (v11 != v13);
      v11 = [objectEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connect
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream connecting", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (selfCopy)
  {
    connectionTimer = [(HMDDataStream *)selfCopy connectionTimer];
    [connectionTimer setDelegate:selfCopy];

    workQueue = [(HMDDataStream *)selfCopy workQueue];
    connectionTimer2 = [(HMDDataStream *)selfCopy connectionTimer];
    [connectionTimer2 setDelegateQueue:workQueue];

    connectionTimer3 = [(HMDDataStream *)selfCopy connectionTimer];
    [connectionTimer3 resume];
  }

  transport = [(HMDDataStream *)selfCopy transport];
  [transport connect];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_active != activeCopy)
  {
    self->_active = activeCopy;
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      active = self->_active;
      v11 = HMFBooleanToString();
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@DataStream changes active to %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    delegate = [(HMDDataStream *)selfCopy delegate];
    [delegate dataStreamDidUpdateActiveStatus:selfCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDDataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier connectionTimer:(id)timer helloMessageResponseTimer:(id)responseTimer
{
  transportCopy = transport;
  encryptionCopy = encryption;
  queueCopy = queue;
  identifierCopy = identifier;
  timerCopy = timer;
  responseTimerCopy = responseTimer;
  v34.receiver = self;
  v34.super_class = HMDDataStream;
  v19 = [(HMDDataStream *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_transport, transport);
    objc_storeStrong(&v20->_sessionEncryption, encryption);
    objc_storeStrong(&v20->_workQueue, queue);
    v21 = [identifierCopy copy];
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v21;

    objc_storeStrong(&v20->_connectionTimer, timer);
    objc_storeStrong(&v20->_helloMessageResponseTimer, responseTimer);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    protocols = v20->_protocols;
    v20->_protocols = strongToStrongObjectsMapTable;

    v25 = [[HMDDataStreamControlProtocol alloc] initWithLogIdentifier:identifierCopy];
    controlProtocol = v20->_controlProtocol;
    v20->_controlProtocol = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingRequests = v20->_pendingRequests;
    v20->_pendingRequests = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingEvents = v20->_pendingEvents;
    v20->_pendingEvents = v29;
  }

  return v20;
}

- (HMDDataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier
{
  v10 = MEMORY[0x277D0F920];
  identifierCopy = identifier;
  queueCopy = queue;
  encryptionCopy = encryption;
  transportCopy = transport;
  v15 = [[v10 alloc] initWithTimeInterval:0 options:10.0];
  v16 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:10.0];
  v17 = [(HMDDataStream *)self initWithTransport:transportCopy sessionEncryption:encryptionCopy workQueue:queueCopy logIdentifier:identifierCopy connectionTimer:v15 helloMessageResponseTimer:v16];

  return v17;
}

@end