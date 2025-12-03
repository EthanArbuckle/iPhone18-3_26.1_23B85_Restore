@interface HMDRapportOverBLEMessageTransport
- (BOOL)canSendMessage:(id)message;
- (HMDRapportOverBLEMessageTransport)initWithAccountRegistry:(id)registry;
- (HMDRapportOverBLEMessageTransport)initWithAccountRegistry:(id)registry rapportMessaging:(id)messaging discoClientFactory:(id)factory deviceWrapperFactory:(id)wrapperFactory;
- (id)_IDSIdentifierForDestination:(id)destination;
- (id)_createBLEClientForDevice:(id)device;
- (id)_rpOptions:(id)options stringForKey:(id)key;
- (id)start;
- (void)_createOrKickContext:(id)context;
- (void)_deactivateDiscoveryClient;
- (void)_newDiscoveryClient;
- (void)_sendMessage:(id)message completionHandler:(id)handler;
- (void)_sendMessagesToDevice:(id)device messages:(id)messages;
- (void)didReceiveRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)foundDevice:(id)device;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDRapportOverBLEMessageTransport

- (void)timerDidFire:(id)fire
{
  v40 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  discoveryIdleTimer = [(HMDRapportOverBLEMessageTransport *)self discoveryIdleTimer];

  if (discoveryIdleTimer == fireCopy)
  {
    [(HMDRapportOverBLEMessageTransport *)self _deactivateDiscoveryClient];
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    deviceContextCache = [(HMDRapportOverBLEMessageTransport *)self deviceContextCache];
    v7 = [deviceContextCache countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v32;
      *&v8 = 138543618;
      v26 = v8;
      selfCopy = self;
      v29 = fireCopy;
      v27 = *v32;
      do
      {
        v11 = 0;
        v30 = v9;
        do
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(deviceContextCache);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          deviceContextCache2 = [(HMDRapportOverBLEMessageTransport *)self deviceContextCache];
          v14 = [deviceContextCache2 objectForKeyedSubscript:v12];
          idleTimer = [v14 idleTimer];

          if (idleTimer == fireCopy)
          {
            v16 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = HMFGetLogIdentifier();
              deviceContextCache3 = [(HMDRapportOverBLEMessageTransport *)selfCopy2 deviceContextCache];
              [deviceContextCache3 objectForKeyedSubscript:v12];
              v22 = v21 = deviceContextCache;
              device = [v22 device];
              *buf = v26;
              v36 = v19;
              v37 = 2112;
              v38 = device;
              _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE Client %@ idle timer fired, removing from cache", buf, 0x16u);

              deviceContextCache = v21;
              v10 = v27;

              self = selfCopy;
              fireCopy = v29;
            }

            objc_autoreleasePoolPop(v16);
            deviceContextCache4 = [(HMDRapportOverBLEMessageTransport *)selfCopy2 deviceContextCache];
            [deviceContextCache4 removeObjectForKey:v12];

            v9 = v30;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [deviceContextCache countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v9);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_createBLEClientForDevice:(id)device
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = deviceCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE Creating BLE client for device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc_init(MEMORY[0x277D44160]);
  [v9 setDestinationDevice:deviceCopy];
  [v9 setControlFlags:6324480];
  [v9 setServiceType:@"com.apple.home.messaging"];
  workQueue = [(HMDRapportOverBLEMessageTransport *)selfCopy workQueue];
  [v9 setDispatchQueue:workQueue];

  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  objc_initWeak(buf, selfCopy);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__HMDRapportOverBLEMessageTransport__createBLEClientForDevice___block_invoke;
  v23[3] = &unk_278686B48;
  objc_copyWeak(&v25, buf);
  v12 = idsDeviceIdentifier;
  v24 = v12;
  [v9 setDisconnectHandler:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__HMDRapportOverBLEMessageTransport__createBLEClientForDevice___block_invoke_137;
  v20[3] = &unk_278686B48;
  objc_copyWeak(&v22, buf);
  v13 = v12;
  v21 = v13;
  [v9 setInterruptionHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__HMDRapportOverBLEMessageTransport__createBLEClientForDevice___block_invoke_138;
  v17[3] = &unk_278686B48;
  objc_copyWeak(&v19, buf);
  v14 = deviceCopy;
  v18 = v14;
  [v9 setInvalidationHandler:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

void __63__HMDRapportOverBLEMessageTransport__createBLEClientForDevice___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@RapportOverBLE client disconnected for device: %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__HMDRapportOverBLEMessageTransport__createBLEClientForDevice___block_invoke_137(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@RapportOverBLE client interrupted for device: %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__HMDRapportOverBLEMessageTransport__createBLEClientForDevice___block_invoke_138(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 32) idsDeviceIdentifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@RapportOverBLE client invalidated for device: %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_IDSIdentifierForDestination:(id)destination
{
  destinationCopy = destination;
  if (destinationCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v5 = destinationCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    sharedUserIDSIdentifier = 0;
    if (isKindOfClass)
    {
      device = [destinationCopy device];
      idsIdentifier = [device idsIdentifier];
      v10 = idsIdentifier;
      if (idsIdentifier)
      {
        sharedUserIDSIdentifier = idsIdentifier;
      }

      else
      {
        device2 = [destinationCopy device];
        sharedUserIDSIdentifier = [device2 sharedUserIDSIdentifier];
      }
    }
  }

  else
  {
    sharedUserIDSIdentifier = 0;
  }

  return sharedUserIDSIdentifier;
}

- (id)_rpOptions:(id)options stringForKey:(id)key
{
  v4 = [options hmf_stringForKey:key];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)didReceiveRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v123 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HMDRapportOverBLEMessageTransport_didReceiveRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_278688DD0;
  v11 = handlerCopy;
  v112 = v11;
  v12 = _Block_copy(aBlock);
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __79__HMDRapportOverBLEMessageTransport_didReceiveRequest_options_responseHandler___block_invoke_2;
  v109[3] = &unk_278677570;
  v13 = v12;
  v110 = v13;
  v14 = _Block_copy(v109);
  v15 = [(HMDRapportOverBLEMessageTransport *)self _rpOptions:optionsCopy stringForKey:*MEMORY[0x277D442D0]];
  v107 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v15];
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138544386;
    v114 = v19;
    v115 = 2112;
    v116 = requestCopy;
    v117 = 2160;
    v118 = 1752392040;
    v119 = 2112;
    v120 = v107;
    v121 = 2112;
    v122 = optionsCopy;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE Received BLE message: %@, from: %{mask.hash}@, with options: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v16);
  v108 = 0;
  v20 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:requestCopy isHH2Payload:1 error:&v108];
  v106 = v108;
  if (v20)
  {
    if (v15)
    {
      if (v107)
      {
        v105 = [(HMDRapportOverBLEMessageTransport *)selfCopy _rpOptions:optionsCopy stringForKey:*MEMORY[0x277D442A0]];
        if (v105)
        {
          accountRegistry = [(HMDRemoteMessageTransport *)selfCopy accountRegistry];
          v22 = [accountRegistry deviceForIDSIdentifier:v107];

          if (v22)
          {
            remoteDestinationString = [v22 remoteDestinationString];
            v99 = v22;
            if (remoteDestinationString)
            {
              (*(v13 + 2))(v13, 0);
              userInfo = [v20 userInfo];
              v24 = [userInfo mutableCopy];

              [v24 setObject:remoteDestinationString forKeyedSubscript:@"kIDSMessageSourceIDKey"];
              v25 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDRapportOverBLEMessageTransport transportType](selfCopy, "transportType")}];
              [v24 setObject:v25 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

              [requestCopy hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
              v26 = contexta = v11;
              v97 = v24;
              [v24 setObject:v26 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

              internal = [v20 internal];
              [internal setUserInfo:v24];

              v28 = [HMDRemoteDeviceMessageDestination alloc];
              destination = [v20 destination];
              target = [destination target];
              v96 = [(HMDRemoteDeviceMessageDestination *)v28 initWithTarget:target device:v99];

              [v20 setDestination:v96];
              [v20 setSecure:1];
              v95 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v107];
              v31 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v95 accountHandle:0 accountIdentifier:0 deviceVersion:0 pairingIdentityIdentifier:v105];
              [v20 setSenderContext:v31];

              v32 = +[HMDMetricsManager sharedLogEventSubmitter];
              v33 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v20 transportType:[(HMDRapportOverBLEMessageTransport *)selfCopy transportType]];
              [v32 submitLogEvent:v33];

              remoteMessageListener = [(HMDRapportOverBLEMessageTransport *)selfCopy remoteMessageListener];
              transportType = [(HMDRapportOverBLEMessageTransport *)selfCopy transportType];
              senderContext = [v20 senderContext];
              v37 = transportType;
              v11 = contexta;
              [remoteMessageListener receivedRemoteMessageOverTransportType:v37 remoteMessageSenderContext:senderContext];

              delegate = [(HMFMessageTransport *)selfCopy delegate];
              [delegate messageTransport:selfCopy didReceiveMessage:v20];
            }

            else
            {
              v85 = objc_autoreleasePoolPush();
              v86 = selfCopy;
              v87 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                contextd = v15;
                v88 = optionsCopy;
                v89 = requestCopy;
                v90 = v14;
                v91 = v13;
                v93 = v92 = v11;
                *buf = 138543618;
                v114 = v93;
                v115 = 2112;
                v116 = v20;
                _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_ERROR, "%{public}@RapportOverBLE Could not find remote destination for incoming message: %@", buf, 0x16u);

                v11 = v92;
                v13 = v91;
                v14 = v90;
                requestCopy = v89;
                optionsCopy = v88;
                v15 = contextd;
              }

              objc_autoreleasePoolPop(v85);
              v14[2](v14, 2, 3210);
            }

            v22 = v99;
          }

          else
          {
            context = objc_autoreleasePoolPush();
            v75 = selfCopy;
            v76 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v77 = v20;
              v78 = v15;
              v79 = optionsCopy;
              v80 = requestCopy;
              v81 = v14;
              v82 = v13;
              v84 = v83 = v11;
              *buf = 138544130;
              v114 = v84;
              v115 = 2160;
              v116 = 1752392040;
              v117 = 2112;
              v118 = v78;
              v119 = 2112;
              v120 = v77;
              _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_ERROR, "%{public}@RapportOverBLE Could not find source device for sender IDS DeviceID: %{mask.hash}@ message: %@", buf, 0x2Au);

              v11 = v83;
              v13 = v82;
              v14 = v81;
              requestCopy = v80;
              optionsCopy = v79;
              v15 = v78;
              v20 = v77;
              v22 = 0;
            }

            objc_autoreleasePoolPop(context);
            v14[2](v14, 2, 3209);
          }
        }

        else
        {
          v66 = objc_autoreleasePoolPush();
          v67 = selfCopy;
          v68 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            contextc = v15;
            v69 = optionsCopy;
            v70 = requestCopy;
            v71 = v14;
            v72 = v13;
            v74 = v73 = v11;
            *buf = 138543874;
            v114 = v74;
            v115 = 2112;
            v116 = v20;
            v117 = 2112;
            v118 = v69;
            _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@RapportOverBLE Rejecting incoming BLE message, %@, because pairing identity identifier is missing in options: %@", buf, 0x20u);

            v11 = v73;
            v13 = v72;
            v14 = v71;
            requestCopy = v70;
            optionsCopy = v69;
            v15 = contextc;
          }

          objc_autoreleasePoolPop(v66);
          v14[2](v14, 2, 3208);
        }
      }

      else
      {
        v57 = objc_autoreleasePoolPush();
        v58 = selfCopy;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          contextb = v15;
          v60 = optionsCopy;
          v61 = requestCopy;
          v62 = v14;
          v63 = v13;
          v65 = v64 = v11;
          *buf = 138543874;
          v114 = v65;
          v115 = 2112;
          v116 = v20;
          v117 = 2112;
          v118 = v60;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@RapportOverBLE Rejecting incoming BLE message, %@, because IDS Device ID is an invalid UUID in options: %@", buf, 0x20u);

          v11 = v64;
          v13 = v63;
          v14 = v62;
          requestCopy = v61;
          optionsCopy = v60;
          v15 = contextb;
        }

        objc_autoreleasePoolPop(v57);
        v14[2](v14, -1, 3207);
      }
    }

    else
    {
      v48 = objc_autoreleasePoolPush();
      v49 = selfCopy;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v51 = optionsCopy;
        v52 = requestCopy;
        v53 = v14;
        v54 = v13;
        v56 = v55 = v11;
        *buf = 138543874;
        v114 = v56;
        v115 = 2112;
        v116 = v20;
        v117 = 2112;
        v118 = v51;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@RapportOverBLE Rejecting incoming BLE message, %@, because IDS Device ID is missing in options: %@", buf, 0x20u);

        v11 = v55;
        v13 = v54;
        v14 = v53;
        requestCopy = v52;
        optionsCopy = v51;
        v15 = 0;
      }

      objc_autoreleasePoolPop(v48);
      v14[2](v14, 2, 3206);
    }
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v42 = v15;
      v43 = optionsCopy;
      v44 = v14;
      v45 = v13;
      v47 = v46 = v11;
      *buf = 138544386;
      v114 = v47;
      v115 = 2112;
      v116 = requestCopy;
      v117 = 2160;
      v118 = 1752392040;
      v119 = 2112;
      v120 = v107;
      v121 = 2112;
      v122 = v106;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@RapportOverBLE Dropping invalid BLE message, %@, from: %{mask.hash}@, error: %@", buf, 0x34u);

      v11 = v46;
      v13 = v45;
      v14 = v44;
      optionsCopy = v43;
      v15 = v42;
      v20 = 0;
    }

    objc_autoreleasePoolPop(v39);
  }

  v94 = *MEMORY[0x277D85DE8];
}

void __79__HMDRapportOverBLEMessageTransport_didReceiveRequest_options_responseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCA9B8];
  v6 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:?];
  v5 = [v4 hmErrorWithCode:a2 description:0 reason:0 suggestion:0 underlyingError:v6];
  (*(v3 + 16))(v3, v5);
}

- (void)_newDiscoveryClient
{
  [(HMDRapportOverBLEMessageTransport *)self _deactivateDiscoveryClient];
  discoveryIdleTimer = [(HMDRapportOverBLEMessageTransport *)self discoveryIdleTimer];
  [discoveryIdleTimer resume];

  discoClientFactory = [(HMDRapportOverBLEMessageTransport *)self discoClientFactory];
  makeDiscoveryClient = [discoClientFactory makeDiscoveryClient];
  [(HMDRapportOverBLEMessageTransport *)self setDiscoveryClient:makeDiscoveryClient];

  discoveryClient = [(HMDRapportOverBLEMessageTransport *)self discoveryClient];
  [discoveryClient setControlFlags:6293506];

  discoveryClient2 = [(HMDRapportOverBLEMessageTransport *)self discoveryClient];
  [discoveryClient2 setServiceType:@"com.apple.home.messaging"];

  workQueue = [(HMDRapportOverBLEMessageTransport *)self workQueue];
  discoveryClient3 = [(HMDRapportOverBLEMessageTransport *)self discoveryClient];
  [discoveryClient3 setDispatchQueue:workQueue];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__HMDRapportOverBLEMessageTransport__newDiscoveryClient__block_invoke;
  v17[3] = &unk_278686B80;
  objc_copyWeak(&v18, &location);
  discoveryClient4 = [(HMDRapportOverBLEMessageTransport *)self discoveryClient];
  [discoveryClient4 setInterruptionHandler:v17];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HMDRapportOverBLEMessageTransport__newDiscoveryClient__block_invoke_130;
  v15[3] = &unk_27867CA08;
  objc_copyWeak(&v16, &location);
  discoveryClient5 = [(HMDRapportOverBLEMessageTransport *)self discoveryClient];
  [discoveryClient5 setDeviceFoundHandler:v15];

  discoveryClient6 = [(HMDRapportOverBLEMessageTransport *)self discoveryClient];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HMDRapportOverBLEMessageTransport__newDiscoveryClient__block_invoke_132;
  v13[3] = &unk_278688A18;
  objc_copyWeak(&v14, &location);
  [discoveryClient6 activateWithCompletion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __56__HMDRapportOverBLEMessageTransport__newDiscoveryClient__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@RapportOverBLE discovery client interrupted", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [v3 _deactivateDiscoveryClient];

  v6 = *MEMORY[0x277D85DE8];
}

void __56__HMDRapportOverBLEMessageTransport__newDiscoveryClient__block_invoke_130(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@RapportOverBLE discovery client found device: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v6 foundDevice:v3];

  v9 = *MEMORY[0x277D85DE8];
}

void __56__HMDRapportOverBLEMessageTransport__newDiscoveryClient__block_invoke_132(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE activated BLE discovery client with error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 _deactivateDiscoveryClient];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE activated BLE discovery client activated sucessfully", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_deactivateDiscoveryClient
{
  v12 = *MEMORY[0x277D85DE8];
  discoveryClient = [(HMDRapportOverBLEMessageTransport *)self discoveryClient];

  if (discoveryClient)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE Shutting down discovery client.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(RPCompanionLinkClient *)selfCopy->_discoveryClient invalidate];
    discoveryClient = selfCopy->_discoveryClient;
    selfCopy->_discoveryClient = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_sendMessagesToDevice:(id)device messages:(id)messages
{
  v43 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  messagesCopy = messages;
  deviceWrapperFactory = [(HMDRapportOverBLEMessageTransport *)self deviceWrapperFactory];
  v9 = [(HMDRapportOverBLEMessageTransport *)self _createBLEClientForDevice:deviceCopy];
  v10 = [deviceWrapperFactory makeWrapperWithClient:v9];

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = messagesCopy;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        message = [*(*(&v32 + 1) + 8 * v16) message];
        identifier = [message identifier];
        [v11 addObject:identifier];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v14);
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = HMFGetLogIdentifier();
    identifier2 = [deviceCopy identifier];
    *buf = 138543874;
    v37 = v22;
    v38 = 2112;
    v39 = identifier2;
    v40 = 2112;
    v41 = v11;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE Trying to activate client for device: %@ for messages %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __68__HMDRapportOverBLEMessageTransport__sendMessagesToDevice_messages___block_invoke;
  v28[3] = &unk_278683340;
  v28[4] = selfCopy;
  v29 = deviceCopy;
  v30 = v10;
  v31 = v12;
  v24 = v12;
  v25 = v10;
  v26 = deviceCopy;
  [v25 activateWithCompletion:v28];

  v27 = *MEMORY[0x277D85DE8];
}

void __68__HMDRapportOverBLEMessageTransport__sendMessagesToDevice_messages___block_invoke(id *a1, void *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] identifier];
      *buf = 138543874;
      v72 = v8;
      v73 = 2112;
      v74 = v9;
      v75 = 2112;
      v76 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@RapportOverBLE Failed to activate Rapport client for device: %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [a1[6] invalidate];
    v67 = 0u;
    v68 = 0u;
    v66 = 0u;
    v65 = 0u;
    v10 = a1[7];
    v11 = [v10 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v66;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v66 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v65 + 1) + 8 * i);
          if (v15)
          {
            v16 = [*(*(&v65 + 1) + 8 * i) completionHandler];

            if (v16)
            {
              v17 = [v15 completionHandler];
              v18 = v17;
              if (v17)
              {
                (*(v17 + 16))(v17, v3);
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v12);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [a1[5] identifier];
      *buf = 138543618;
      v72 = v19;
      v73 = 2112;
      v74 = v20;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE client for device: %@ activated successfully", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v10 = a1[7];
    v56 = [v10 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v56)
    {
      v55 = *v62;
      v53 = *MEMORY[0x277D442F0];
      while (2)
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v62 != v55)
          {
            objc_enumerationMutation(v10);
          }

          v22 = *(*(&v61 + 1) + 8 * j);
          v23 = [v22 message];
          v60 = 0;
          v24 = [HMDRemoteMessageSerialization dictionaryForMessage:v23 isHH2Payload:1 error:&v60];
          v25 = v60;

          if (!v24)
          {
            v44 = objc_autoreleasePoolPush();
            v45 = a1[4];
            v46 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v47 = HMFGetLogIdentifier();
              v48 = [v22 message];
              v49 = [v48 identifier];
              *buf = 138543874;
              v72 = v47;
              v73 = 2114;
              v74 = v49;
              v75 = 2112;
              v76 = v25;
              _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@RapportOverBLE Failed to serialize message %{public}@ with error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v44);
            v50 = [v22 completionHandler];
            v51 = v50;
            if (v50)
            {
              (*(v50 + 16))(v50, v25);
            }

            goto LABEL_37;
          }

          v26 = objc_opt_new();
          v27 = [v22 message];
          [v27 timeout];
          v29 = v28;

          if (v29 > 0.0)
          {
            v30 = MEMORY[0x277CCABB0];
            v31 = [v22 message];
            [v31 timeout];
            v32 = [v30 numberWithDouble:?];
            [v26 setObject:v32 forKeyedSubscript:v53];
          }

          v57 = v26;
          v58 = v25;
          v33 = objc_autoreleasePoolPush();
          v34 = a1[4];
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v36 = v54 = v33;
            v37 = [v22 message];
            [v37 identifier];
            v39 = v38 = a1;
            *buf = 138543618;
            v72 = v36;
            v73 = 2112;
            v74 = v39;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE trying to send message %@", buf, 0x16u);

            a1 = v38;
            v33 = v54;
          }

          objc_autoreleasePoolPop(v33);
          v40 = +[HMDMetricsManager sharedLogEventSubmitter];
          v41 = [v22 message];
          v42 = +[HMDRemoteMessageLogEvent sentRemoteMessage:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:transportType:", v41, [a1[4] transportType]);
          [v40 submitLogEvent:v42];

          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __68__HMDRapportOverBLEMessageTransport__sendMessagesToDevice_messages___block_invoke_127;
          aBlock[3] = &unk_278688950;
          aBlock[4] = a1[4];
          aBlock[5] = v22;
          v43 = _Block_copy(aBlock);
          [a1[6] sendRequestID:@"com.apple.home.hh2.messaging.ble" request:v24 options:v57 responseHandler:v43];
        }

        v56 = [v10 countByEnumeratingWithState:&v61 objects:v69 count:16];
        if (v56)
        {
          continue;
        }

        break;
      }

LABEL_37:
      v3 = 0;
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

void __68__HMDRapportOverBLEMessageTransport__sendMessagesToDevice_messages___block_invoke_127(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 hmf_numberForKey:*MEMORY[0x277D442F8]];
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    HMFGetLogIdentifier();
    v14 = v21 = v7;
    v15 = [*(a1 + 40) message];
    v16 = [v15 identifier];
    *buf = 138544130;
    v23 = v14;
    v24 = 2112;
    v25 = v16;
    v26 = 1024;
    v27 = [v10 unsignedIntValue];
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE Message: %@ with xid:0x%X completed with error: %@", buf, 0x26u);

    v7 = v21;
  }

  objc_autoreleasePoolPop(v11);
  v17 = [*(a1 + 40) completionHandler];

  if (v17)
  {
    v18 = [*(a1 + 40) completionHandler];
    v19 = v18;
    if (v18)
    {
      (*(v18 + 16))(v18, v9);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)foundDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  messageQueue = [(HMDRapportOverBLEMessageTransport *)self messageQueue];
  v8 = [messageQueue count];

  if (v8)
  {
    v9 = 0;
    do
    {
      messageQueue2 = [(HMDRapportOverBLEMessageTransport *)self messageQueue];
      v11 = [messageQueue2 objectAtIndexedSubscript:v9];

      message = [v11 message];
      destination = [message destination];
      v14 = [(HMDRapportOverBLEMessageTransport *)self _IDSIdentifierForDestination:destination];

      idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
      LODWORD(destination) = [v14 hmf_isEqualToUUIDString:idsDeviceIdentifier];

      if (destination)
      {
        [indexSet addIndex:v9];
        [v6 addObject:v11];
        [(HMDRapportOverBLEMessageTransport *)self _createOrKickContext:deviceCopy];
      }

      ++v9;
      messageQueue3 = [(HMDRapportOverBLEMessageTransport *)self messageQueue];
      v17 = [messageQueue3 count];
    }

    while (v9 < v17);
  }

  if ([v6 count])
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v21;
      v29 = 2048;
      v30 = [v6 count];
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE Sending %lu queued messages", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [(HMDRapportOverBLEMessageTransport *)selfCopy _sendMessagesToDevice:deviceCopy messages:v6];
    messageQueue4 = [(HMDRapportOverBLEMessageTransport *)selfCopy messageQueue];
    [messageQueue4 removeObjectsAtIndexes:indexSet];
  }

  messageQueue5 = [(HMDRapportOverBLEMessageTransport *)self messageQueue];
  v24 = [messageQueue5 count];

  if (v24)
  {
    discoveryIdleTimer = [(HMDRapportOverBLEMessageTransport *)self discoveryIdleTimer];
    [discoveryIdleTimer kick];
  }

  else
  {
    [(HMDRapportOverBLEMessageTransport *)self _deactivateDiscoveryClient];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_createOrKickContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  idsDeviceIdentifier = [contextCopy idsDeviceIdentifier];
  v6 = [v4 initWithUUIDString:idsDeviceIdentifier];

  deviceContextCache = [(HMDRapportOverBLEMessageTransport *)self deviceContextCache];
  v8 = [deviceContextCache objectForKeyedSubscript:v6];

  if (v8)
  {
    deviceContextCache2 = [(HMDRapportOverBLEMessageTransport *)self deviceContextCache];
    v10 = [deviceContextCache2 objectForKeyedSubscript:v6];
    idleTimer = [v10 idleTimer];
    [idleTimer kick];
  }

  else
  {
    v12 = [[RapportOverBLEDeviceContext alloc] initWithDevice:contextCopy];
    deviceContextCache3 = [(HMDRapportOverBLEMessageTransport *)self deviceContextCache];
    [deviceContextCache3 setObject:v12 forKeyedSubscript:v6];

    deviceContextCache2 = [(HMDRapportOverBLEMessageTransport *)self deviceContextCache];
    v10 = [deviceContextCache2 objectForKeyedSubscript:v6];
    idleTimer = [v10 idleTimer];
    [idleTimer setDelegate:self];
  }
}

- (void)_sendMessage:(id)message completionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  v8 = [(HMDRemoteMessageTransport *)self remoteMessageFromMessage:messageCopy];
  v9 = v8;
  if (messageCopy && v8)
  {
    destination = [v8 destination];
    v11 = [(HMDRapportOverBLEMessageTransport *)self _IDSIdentifierForDestination:destination];

    deviceContextCache = [(HMDRapportOverBLEMessageTransport *)self deviceContextCache];
    v13 = [deviceContextCache objectForKeyedSubscript:v11];

    device = [v13 device];
    v15 = [[RapportOverBLEQueuedMessage alloc] initWithMessage:v9 withCompletion:handlerCopy];
    if (v13 && device)
    {
      v34 = v11;
      idleTimer = [v13 idleTimer];
      [idleTimer kick];

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v20 = v32 = v17;
        identifier = [v9 identifier];
        *buf = 138543874;
        v38 = v20;
        v39 = 2112;
        v40 = device;
        v41 = 2112;
        v42 = identifier;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE Device %@ is in the cache, sending message %@ now", buf, 0x20u);

        v17 = v32;
      }

      objc_autoreleasePoolPop(v17);
      v36 = v15;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      [(HMDRapportOverBLEMessageTransport *)selfCopy _sendMessagesToDevice:device messages:v22];

      v11 = v34;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v28 = v33 = v25;
        [v9 identifier];
        v29 = v35 = v11;
        *buf = 138543618;
        v38 = v28;
        v39 = 2112;
        v40 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@RapportOverBLE Device is NOT in the cache, queueing message %@ now", buf, 0x16u);

        v11 = v35;
        v25 = v33;
      }

      objc_autoreleasePoolPop(v25);
      messageQueue = [(HMDRapportOverBLEMessageTransport *)selfCopy2 messageQueue];
      [messageQueue addObject:v15];

      [(HMDRapportOverBLEMessageTransport *)selfCopy2 _newDiscoveryClient];
    }
  }

  else
  {
    v23 = _Block_copy(handlerCopy);
    if (v23)
    {
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20 description:@"remoteMessage is nil!" reason:0 suggestion:0 underlyingError:0];
      v23[2](v23, v24);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  workQueue = [(HMDRapportOverBLEMessageTransport *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDRapportOverBLEMessageTransport_sendMessage_completionHandler___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = messageCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = messageCopy;
  dispatch_async(workQueue, block);
}

- (BOOL)canSendMessage:(id)message
{
  messageCopy = message;
  v4 = ([messageCopy restriction] & 0x20) != 0 && objc_msgSend(messageCopy, "restriction") != -1;

  return v4;
}

- (id)start
{
  startPromise = [(HMDRemoteMessageTransport *)self startPromise];
  [startPromise fulfillWithValue:0];

  return [(HMDRemoteMessageTransport *)self startFuture];
}

- (HMDRapportOverBLEMessageTransport)initWithAccountRegistry:(id)registry rapportMessaging:(id)messaging discoClientFactory:(id)factory deviceWrapperFactory:(id)wrapperFactory
{
  registryCopy = registry;
  messagingCopy = messaging;
  factoryCopy = factory;
  wrapperFactoryCopy = wrapperFactory;
  v33.receiver = self;
  v33.super_class = HMDRapportOverBLEMessageTransport;
  v14 = [(HMDRemoteMessageTransport *)&v33 initWithAccountRegistry:registryCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_discoClientFactory, factory);
    objc_storeStrong(&v15->_deviceWrapperFactory, wrapperFactory);
    v16 = HMDispatchQueueNameString();
    uTF8String = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(uTF8String, v18);
    workQueue = v15->_workQueue;
    v15->_workQueue = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    messageQueue = v15->_messageQueue;
    v15->_messageQueue = v21;

    v23 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:15.0];
    discoveryIdleTimer = v15->_discoveryIdleTimer;
    v15->_discoveryIdleTimer = v23;

    [(HMFTimer *)v15->_discoveryIdleTimer setDelegate:v15];
    objc_initWeak(&location, v15);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __118__HMDRapportOverBLEMessageTransport_initWithAccountRegistry_rapportMessaging_discoClientFactory_deviceWrapperFactory___block_invoke;
    v30 = &unk_27867EB78;
    objc_copyWeak(&v31, &location);
    v25 = _Block_copy(&v27);
    [messagingCopy registerRequestHandlerForRequestID:@"com.apple.home.hh2.messaging.ble" withRequestHandler:{v25, v27, v28, v29, v30}];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __118__HMDRapportOverBLEMessageTransport_initWithAccountRegistry_rapportMessaging_discoClientFactory_deviceWrapperFactory___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didReceiveRequest:v9 options:v8 responseHandler:v7];
}

- (HMDRapportOverBLEMessageTransport)initWithAccountRegistry:(id)registry
{
  registryCopy = registry;
  v5 = +[HMDRapportMessaging sharedInstance];
  v6 = [HMDRapportOverBLEDiscoveryClientDefaultFactory alloc];
  v7 = [HMDRapportOverBLEDeviceWrapperDefaultFactory alloc];
  v8 = [(HMDRapportOverBLEMessageTransport *)self initWithAccountRegistry:registryCopy rapportMessaging:v5 discoClientFactory:v6 deviceWrapperFactory:v7];

  return v8;
}

@end