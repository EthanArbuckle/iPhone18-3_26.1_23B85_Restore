@interface HMDDataStream
- (HMDDataStream)initWithTransport:(id)a3 sessionEncryption:(id)a4 workQueue:(id)a5 logIdentifier:(id)a6;
- (HMDDataStream)initWithTransport:(id)a3 sessionEncryption:(id)a4 workQueue:(id)a5 logIdentifier:(id)a6 connectionTimer:(id)a7 helloMessageResponseTimer:(id)a8;
- (HMDDataStreamDelegate)delegate;
- (id)protocolWithName:(id)a3;
- (void)_evaluateActiveStatusChange;
- (void)_failPendingMessagesWithError:(void *)a1;
- (void)_sendMessageWithHeader:(void *)a3 payload:(void *)a4 completion:;
- (void)addProtocol:(id)a3 name:(id)a4;
- (void)close;
- (void)connect;
- (void)fulfillPendingRequestWithResponseHeader:(void *)a3 payload:;
- (void)sendEventForProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6;
- (void)sendRequestForProtocol:(id)a3 topic:(id)a4 identifier:(unint64_t)a5 payload:(id)a6 completion:(id)a7;
- (void)sendRequestForProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6;
- (void)setActive:(BOOL)a3;
- (void)setTrafficClass:(unint64_t)a3;
- (void)timerDidFire:(id)a3;
- (void)transport:(id)a3 didFailWithError:(id)a4;
- (void)transport:(id)a3 didReceiveRawFrame:(id)a4;
- (void)transportDidClose:(id)a3;
- (void)transportDidOpen:(id)a3;
@end

@implementation HMDDataStream

- (HMDDataStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDDataStream *)self connectionTimer];

  if (v6 == v4)
  {
    v8 = objc_autoreleasePoolPush();
    v13 = self;
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

  v7 = [(HMDDataStream *)self helloMessageResponseTimer];

  if (v7 == v4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      v12 = "%{public}@Data stream failed to receive first message in time; closing!";
LABEL_7:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, v12, &v15, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 didReceiveRawFrame:(id)a4
{
  v154 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDataStream *)self delegate];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v145 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Data stream received frame", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [v8 dataStreamDidReceiveRawFrame:v10];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v145 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Data stream received frame; but no delegate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  if ([v7 length])
  {
    v15 = 0;
    v16 = *[v7 bytes];
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

        v26 = [(HMDDataStream *)v10 sessionEncryption];

        if (!v26)
        {
          v135 = 0;
          v136 = 0;
          v134 = 0;
          v19 = [HMDDataStreamMessageCoder unpackUnencryptedOPACKFrame:v7 receivedHeader:&v136 receivedPayload:&v135 error:&v134];
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
        v28 = v10;
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
      v17 = [(HMDDataStream *)v10 sessionEncryption];

      if (v17)
      {
        v18 = [(HMDDataStream *)v10 sessionEncryption];
        v138 = 0;
        v139 = 0;
        v137 = 0;
        v19 = [HMDDataStreamMessageCoder decryptEncryptedOPACKFrame:v7 sessionEncryption:v18 receivedHeader:&v139 receivedPayload:&v138 error:&v137];
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
          if ([(HMDDataStream *)v10 firstMessageReceived])
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
              [(HMDDataStream *)v10 fulfillPendingRequestWithResponseHeader:v15 payload:v20];
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
              v107 = v10;
              v108 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
              {
                v109 = HMFGetLogIdentifier();
                *buf = 138543362;
                v145 = v109;
                _os_log_impl(&dword_229538000, v108, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (header missing protocol)", buf, 0xCu);
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
                v63 = [(HMDDataStream *)v10 controlProtocol];
                [v63 dataStream:v10 didReceiveEvent:v62 header:v15 payload:v20];
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
                v63 = [(HMDDataStream *)v10 controlProtocol];
                [v63 dataStream:v10 didReceiveRequest:v115 header:v15 payload:v20];
                goto LABEL_108;
              }

              goto LABEL_119;
            }

            v133 = v8;
            v110 = [(HMDDataStream *)v10 protocols];
            v111 = [v110 objectForKey:v60];

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
                [v111 dataStream:v10 didReceiveEvent:v113 header:v15 payload:v20];
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

                  v8 = v133;
LABEL_119:
                  v106 = objc_autoreleasePoolPush();
                  v107 = v10;
                  v108 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                  {
                    v122 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v145 = v122;
                    _os_log_impl(&dword_229538000, v108, OS_LOG_TYPE_INFO, "%{public}@Message received but no protocol accepted it; dropped!", buf, 0xCu);
                  }

LABEL_121:

                  objc_autoreleasePoolPop(v106);
                  v42 = 0;
                  goto LABEL_122;
                }

                [v111 dataStream:v10 didReceiveRequest:v121 header:v15 payload:v20];
              }
            }

            else
            {
              v116 = objc_autoreleasePoolPush();
              v117 = v10;
              v118 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
              {
                v119 = HMFGetLogIdentifier();
                *buf = 138543618;
                v145 = v119;
                v146 = 2112;
                v147 = v130;
                _os_log_impl(&dword_229538000, v118, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (no protocol named %@)", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v116);
              v42 = 0;
            }

            v8 = v133;
            goto LABEL_122;
          }

          v15 = v15;
          v20 = v20;
          v132 = v8;
          if (v10)
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
                v51 = [(HMDDataStream *)v10 controlProtocol];
                [v51 dataStream:v10 didReceiveResponse:v48 header:v15 payload:v20];

                v52 = [(HMDDataStream *)v10 controlProtocol];
                v53 = [v52 helloMessageResponseReceived];

                if (v53)
                {
LABEL_74:
                  [(HMDDataStream *)v10 setFirstMessageReceived:1];
                  v69 = [(HMDDataStream *)v10 helloMessageResponseTimer];
                  [v69 cancel];

                  [(HMDDataStream *)v10 setHelloMessageResponseTimer:0];
                  if (v10)
                  {
                    v70 = [(HMDDataStream *)v10 pendingRequests];
                    v71 = [v70 copy];

                    v72 = objc_autoreleasePoolPush();
                    v73 = v10;
                    v74 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
                    {
                      v75 = HMFGetLogIdentifier();
                      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v71, "count")}];
                      *v150 = 138543618;
                      v151 = v75;
                      v152 = 2112;
                      v153 = v76;
                      _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending requests [%@]", v150, 0x16u);
                    }

                    contextb = v15;
                    v131 = v6;

                    objc_autoreleasePoolPop(v72);
                    v77 = [(HMDDataStream *)v73 pendingRequests];
                    [v77 removeAllObjects];

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
                          v84 = [v83 protocol];
                          v85 = [v83 topic];
                          v86 = [v83 payload];
                          v87 = [v83 callback];
                          [(HMDDataStream *)v73 sendRequestForProtocol:v84 topic:v85 payload:v86 completion:v87];
                        }

                        v80 = [v78 countByEnumeratingWithState:&v140 objects:buf count:16];
                      }

                      while (v80);
                    }

                    v88 = [(HMDDataStream *)v73 pendingEvents];
                    v89 = [v88 copy];

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
                      _os_log_impl(&dword_229538000, v92, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending events [%@]", v150, 0x16u);
                    }

                    objc_autoreleasePoolPop(v90);
                    v95 = [(HMDDataStream *)v91 pendingEvents];
                    [v95 removeAllObjects];

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
                          v102 = [v101 protocol];
                          v103 = [v101 topic];
                          v104 = [v101 payload];
                          v105 = [v101 completion];
                          [(HMDDataStream *)v91 sendEventForProtocol:v102 topic:v103 payload:v104 completion:v105];
                        }

                        v98 = [v96 countByEnumeratingWithState:&v140 objects:buf count:16];
                      }

                      while (v98);
                    }

                    v6 = v131;
                    v8 = v132;
                    v20 = v125;
                    v15 = contextb;
                  }

                  else
                  {
                    v8 = v132;
                  }

                  goto LABEL_32;
                }

LABEL_71:
                v65 = objc_autoreleasePoolPush();
                v66 = v10;
                v67 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  v68 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v145 = v68;
                  _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected first message on the data stream", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v65);
                [(HMDDataStream *)v66 close];
                goto LABEL_74;
              }

              v124 = objc_autoreleasePoolPush();
              contexta = v10;
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
                _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected %@ key value: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v124);
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v54 = v10;
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
                _os_log_impl(&dword_229538000, v55, OS_LOG_TYPE_ERROR, "%{public}@Expected protocol name: %@ received: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(context);
              v57 = v129;
            }
          }

          goto LABEL_71;
        }

LABEL_29:
        v36 = objc_autoreleasePoolPush();
        v37 = v10;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v40 = v39 = v8;
          *buf = 138543618;
          v145 = v40;
          v146 = 2112;
          v147 = v21;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (%@)", buf, 0x16u);

          v8 = v39;
        }

        objc_autoreleasePoolPop(v36);
        goto LABEL_32;
      }

      v27 = objc_autoreleasePoolPush();
      v35 = v10;
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
    v32 = v10;
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
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, v31, buf, v34);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v10;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v145 = v25;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@DataStream dropping truncated frame of zero-length", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
LABEL_33:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)fulfillPendingRequestWithResponseHeader:(void *)a3 payload:
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_19;
  }

  v31 = a1;
  v32 = v6;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [a1 pendingRequests];
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v38;
  v33 = *v38;
  v34 = v8;
  do
  {
    v12 = 0;
    v36 = v10;
    do
    {
      if (*v38 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v37 + 1) + 8 * v12);
      v14 = v5;
      if (v13)
      {
        v15 = [v13 topic];
        v16 = [v14 objectForKeyedSubscript:@"response"];
        if (![v15 isEqual:v16])
        {
          goto LABEL_13;
        }

        v17 = [v13 identifier];
        v18 = [v14 objectForKeyedSubscript:@"id"];
        if (![v17 isEqual:v18])
        {

          v10 = v36;
LABEL_13:

          goto LABEL_14;
        }

        v19 = [v13 protocol];
        [v14 objectForKeyedSubscript:@"protocol"];
        v21 = v20 = v5;
        v35 = [v19 isEqual:v21];

        v5 = v20;
        v11 = v33;

        v8 = v34;
        v10 = v36;
        if (v35)
        {

          v27 = v13;
          v28 = [v27 callback];
          v7 = v32;
          (v28)[2](v28, 0, v14, v32);

          v29 = [v31 pendingRequests];
          [v29 removeObject:v27];

          goto LABEL_19;
        }
      }

LABEL_14:

      ++v12;
    }

    while (v10 != v12);
    v10 = [v8 countByEnumeratingWithState:&v37 objects:v47 count:16];
  }

  while (v10);
LABEL_16:

  v22 = objc_autoreleasePoolPush();
  v23 = v31;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    v26 = [v23 pendingRequests];
    *buf = 138543874;
    v42 = v25;
    v43 = 2112;
    v44 = v5;
    v45 = 2112;
    v46 = v26;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@No pending request found for response with header: %@. Pending %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  v7 = v32;
LABEL_19:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)transportDidOpen:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMDDataStream *)self setConnectionTimer:0];
  v5 = [(HMDDataStream *)self delegate];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [v5 dataStreamDidOpen:v7];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN (but no delegate!)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v12 = [(HMDDataStream *)v7 controlProtocol];
  [v12 dataStreamDidOpen:v7];

  if (v7)
  {
    v13 = [(HMDDataStream *)v7 helloMessageResponseTimer];
    [v13 setDelegate:v7];

    v14 = [(HMDDataStream *)v7 workQueue];
    v15 = [(HMDDataStream *)v7 helloMessageResponseTimer];
    [v15 setDelegateQueue:v14];

    v16 = [(HMDDataStream *)v7 helloMessageResponseTimer];
    [v16 resume];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [(HMDDataStream *)v7 protocols];
  v18 = [v17 objectEnumerator];

  v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        if (v23)
        {
          [v23 dataStreamDidOpen:v7];
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)transportDidClose:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDDataStream *)self delegate];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream closed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [v5 dataStreamDidClose:v7];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream closed (but no delegate!)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(HMDDataStream *)v7 protocols];
  v13 = [v12 objectEnumerator];

  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v13);
        }

        [*(*(&v20 + 1) + 8 * v17++) dataStreamDidClose:v7];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v18 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061];
  [(HMDDataStream *)v7 _failPendingMessagesWithError:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_failPendingMessagesWithError:(void *)a1
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = [a1 pendingRequests];
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v23 + 1) + 8 * v8) callback];
          (v9)[2](v9, v3, 0, 0);

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }

    v10 = [a1 pendingRequests];
    [v10 removeAllObjects];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [a1 pendingEvents];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * v15) completion];
          (v16)[2](v16, v3);

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v13);
    }

    v17 = [a1 pendingEvents];
    [v17 removeAllObjects];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)transport:(id)a3 didFailWithError:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDataStream *)self delegate];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v13;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Data stream failure (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [v8 dataStream:v10 didFailWithError:v7];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v14;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Data stream failure (%@); but no delegate", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [(HMDDataStream *)v10 protocols];
  v16 = [v15 objectEnumerator];

  v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * v20);
        if (v21)
        {
          [v21 dataStream:v10 didFailWithError:v7];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  [(HMDDataStream *)v10 _failPendingMessagesWithError:v7];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)setTrafficClass:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting traffic class %lu on transport", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDDataStream *)v6 transport];
  [v9 setTrafficClass:a3];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateActiveStatusChange
{
  v17 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = [result workQueue];
    dispatch_assert_queue_V2(v2);

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v1 protocols];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          v8 = [v1 protocols];
          v9 = [v8 objectForKey:v7];
          v10 = [v9 isActive];

          if (v10)
          {
            v4 = 1;
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)sendRequestForProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self)
  {
    v14 = [(HMDDataStream *)self nextRequestIdentifier];
    [(HMDDataStream *)self setNextRequestIdentifier:[(HMDDataStream *)self nextRequestIdentifier]+ 1];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
  }

  else
  {
    v15 = 0;
  }

  if ([(HMDDataStream *)self firstMessageReceived])
  {
    v16 = [(HMDDataStream *)self controlProtocol];
    v17 = [v16 helloMessageResponseReceived];

    if ((v17 & 1) == 0)
    {
      v20 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1062];
      (*(v13 + 2))(v13, v20, 0, 0);

      goto LABEL_9;
    }

    v18 = [HMDDataStreamMessageCoder requestHeaderForProtocol:v10 topic:v11 identifier:v15];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__HMDDataStream_sendRequestForProtocol_topic_payload_completion___block_invoke;
    v21[3] = &unk_278689B08;
    v27 = v13;
    v22 = v15;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v26 = self;
    [(HMDDataStream *)self _sendMessageWithHeader:v18 payload:v25 completion:v21];
  }

  else
  {
    v18 = [[HMDDataStreamPendingRequest alloc] initWithIdentifier:v15 protocol:v10 topic:v11 payload:v12 callback:v13];
    v19 = [(HMDDataStream *)self pendingRequests];
    [v19 addObject:v18];
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@DataStream pending the request: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessageWithHeader:(void *)a3 payload:(void *)a4 completion:
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [a1 sessionEncryption];

    if (v10)
    {
      v11 = [a1 sessionEncryption];
      v24 = 0;
      v12 = [HMDDataStreamMessageCoder encryptEncryptedOPACKHeader:v7 payload:v8 sessionEncryption:v11 error:&v24];
      v13 = v24;
    }

    else
    {
      v23 = 0;
      v12 = [HMDDataStreamMessageCoder buildUnencryptedOPACKHeader:v7 payload:v8 error:&v23];
      v13 = v23;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = a1;
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
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@DataStream encoding message failed (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v9[2](v9, v13);
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v15 pendingRequests];
        *buf = 138543874;
        v26 = v19;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@DataStream Sending Message: %@ --> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v21 = [v15 transport];
      [v21 sendRawFrame:v12 completion:v9];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestForProtocol:(id)a3 topic:(id)a4 identifier:(unint64_t)a5 payload:(id)a6 completion:(id)a7
{
  v12 = MEMORY[0x277CCABB0];
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [v12 numberWithUnsignedInteger:a5];
  v18 = [HMDDataStreamMessageCoder requestHeaderForProtocol:v16 topic:v15 identifier:v17];

  [(HMDDataStream *)self _sendMessageWithHeader:v18 payload:v14 completion:v13];
}

- (void)sendEventForProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(HMDDataStream *)self firstMessageReceived])
  {
    v13 = [(HMDDataStream *)self controlProtocol];
    v14 = [v13 helloMessageResponseReceived];

    if (v14)
    {
      v15 = [HMDDataStreamMessageCoder eventHeaderForProtocol:v17 topic:v10];
      [(HMDDataStream *)self _sendMessageWithHeader:v15 payload:v11 completion:v12];
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1062];
      (*(v12 + 2))(v12, v15);
    }
  }

  else
  {
    v15 = [[HMDDataStreamPendingEvent alloc] initWithProtocol:v17 topic:v10 payload:v11 completion:v12];
    v16 = [(HMDDataStream *)self pendingEvents];
    [v16 addObject:v15];
  }
}

- (id)protocolWithName:(id)a3
{
  v4 = a3;
  v5 = [(HMDDataStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDDataStream *)self protocols];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (void)addProtocol:(id)a3 name:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDDataStream *)self protocols];
  [v8 setObject:v7 forKey:v6];

  [(HMDDataStream *)self _evaluateActiveStatusChange];
}

- (void)close
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream closing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDDataStream *)v4 transport];
  [v7 close];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(HMDDataStream *)v4 protocols];
  v9 = [v8 objectEnumerator];

  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v15 + 1) + 8 * v13++) dataStreamInitiatedClose:v4];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connect
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream connecting", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (v4)
  {
    v7 = [(HMDDataStream *)v4 connectionTimer];
    [v7 setDelegate:v4];

    v8 = [(HMDDataStream *)v4 workQueue];
    v9 = [(HMDDataStream *)v4 connectionTimer];
    [v9 setDelegateQueue:v8];

    v10 = [(HMDDataStream *)v4 connectionTimer];
    [v10 resume];
  }

  v11 = [(HMDDataStream *)v4 transport];
  [v11 connect];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(HMDDataStream *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (self->_active != v3)
  {
    self->_active = v3;
    v6 = objc_autoreleasePoolPush();
    v7 = self;
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
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@DataStream changes active to %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = [(HMDDataStream *)v7 delegate];
    [v12 dataStreamDidUpdateActiveStatus:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HMDDataStream)initWithTransport:(id)a3 sessionEncryption:(id)a4 workQueue:(id)a5 logIdentifier:(id)a6 connectionTimer:(id)a7 helloMessageResponseTimer:(id)a8
{
  v33 = a3;
  v32 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v34.receiver = self;
  v34.super_class = HMDDataStream;
  v19 = [(HMDDataStream *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_transport, a3);
    objc_storeStrong(&v20->_sessionEncryption, a4);
    objc_storeStrong(&v20->_workQueue, a5);
    v21 = [v16 copy];
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v21;

    objc_storeStrong(&v20->_connectionTimer, a7);
    objc_storeStrong(&v20->_helloMessageResponseTimer, a8);
    v23 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    protocols = v20->_protocols;
    v20->_protocols = v23;

    v25 = [[HMDDataStreamControlProtocol alloc] initWithLogIdentifier:v16];
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

- (HMDDataStream)initWithTransport:(id)a3 sessionEncryption:(id)a4 workQueue:(id)a5 logIdentifier:(id)a6
{
  v10 = MEMORY[0x277D0F920];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[v10 alloc] initWithTimeInterval:0 options:10.0];
  v16 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:10.0];
  v17 = [(HMDDataStream *)self initWithTransport:v14 sessionEncryption:v13 workQueue:v12 logIdentifier:v11 connectionTimer:v15 helloMessageResponseTimer:v16];

  return v17;
}

@end