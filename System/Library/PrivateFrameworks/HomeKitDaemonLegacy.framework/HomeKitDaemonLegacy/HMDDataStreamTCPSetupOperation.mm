@interface HMDDataStreamTCPSetupOperation
- (BOOL)_isComplete;
- (HMDDataStreamTCPSetupOperation)initWithAccessory:(id)a3 queue:(id)a4 logIdentifier:(id)a5 transferManagementService:(id)a6;
- (id)_createTCPTransport;
- (id)_fullKeySalt;
- (void)_finishStreamTransport;
- (void)_generateStreamKeys;
- (void)processTransportSetupResponse:(id)a3;
- (void)startSetup;
@end

@implementation HMDDataStreamTCPSetupOperation

- (void)_finishStreamTransport
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamTCPSetupOperation *)self _isComplete];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Start Stream] DataStream configuration valid; starting stream", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v9 = [(HMDDataStreamTCPSetupOperation *)v5 _createTCPTransport];
    v10 = [(HMDDataStreamTCPSetupOperation *)v5 sessionEncryption];
    [(HMDDataStreamSetupOperation *)v5 postDidSucceedWithTransport:v9 sessionEncryption:v10];
  }

  else
  {
    if (v7)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDDataStreamTCPSetupOperation *)v5 remoteTcpPort]!= 0;
      v13 = [(HMDDataStreamTCPSetupOperation *)v5 remoteNetAddress];
      v14 = [(HMDDataStreamTCPSetupOperation *)v5 sessionEncryption];
      v16 = 138544130;
      v17 = v11;
      v18 = 1024;
      v19 = v12;
      v20 = 1024;
      v21 = v13 != 0;
      v22 = 1024;
      v23 = v14 != 0;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[Start Stream] Setup still in progress (hasPort=%d, hasHostname=%d, hasEnc=%d)", &v16, 0x1Eu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_createTCPTransport
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamSetupOperation *)self accessory];
  v4 = [v3 siriEndpointProfile];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[Start Stream] Accessory is a Siri endpoint, creating transport with elevated scheduling mode", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [HMDDataStreamTCPTransport alloc];
    v10 = [(HMDDataStreamTCPSetupOperation *)v6 remoteNetAddress];
    v11 = [(HMDDataStreamTCPSetupOperation *)v6 remoteTcpPort];
    v12 = [(HMDDataStreamSetupOperation *)v6 queue];
    v13 = [(HMDDataStreamSetupOperation *)v6 logIdentifier];
    v14 = [(HMDDataStreamTCPTransport *)v9 initWithAddress:v10 port:v11 targetQueue:v12 logIdentifier:v13];
  }

  else
  {
    v15 = [HMDDataStreamTCPTransport alloc];
    v10 = [(HMDDataStreamTCPSetupOperation *)self remoteNetAddress];
    v16 = [(HMDDataStreamTCPSetupOperation *)self remoteTcpPort];
    v12 = [(HMDDataStreamSetupOperation *)self queue];
    v13 = [(HMDDataStreamSetupOperation *)self logIdentifier];
    v14 = [(HMDDataStreamTCPTransport *)v15 initWithAddress:v10 port:v16 workQueue:v12 logIdentifier:v13];
  }

  v17 = v14;

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_generateStreamKeys
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamSetupOperation *)self accessory];
  v4 = [v3 anyIPServer];

  if (v4)
  {
    objc_initWeak(location, self);
    v5 = [(HMDDataStreamTCPSetupOperation *)self _fullKeySalt];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__HMDDataStreamTCPSetupOperation__generateStreamKeys__block_invoke;
    v12[3] = &unk_2797239B8;
    objc_copyWeak(&v13, location);
    [v4 createKeysForDataStreamWithKeySalt:v5 completionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; device appears to have lost IP-connectivity", location, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(HMDDataStreamSetupOperation *)v7 postDidFailWithError:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __53__HMDDataStreamTCPSetupOperation__generateStreamKeys__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (!v5 || v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v13;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create secure session for the accessory (%@)", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      if (!v6)
      {
        v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      }

      [v9 postDidFailWithError:v6];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543618;
        v16 = v12;
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] Key creation succeeded; will use session encryption %@", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [v9 setSessionEncryption:v5];
      [v9 _finishStreamTransport];
      v6 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)processTransportSetupResponse:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessoryKeySalt];

  if (!v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v19;
      v20 = "%{public}@[Start Stream] The setup transfer write reply did not contain key information";
LABEL_10:
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, v20, &v23, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v8);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    [(HMDDataStreamSetupOperation *)v9 postDidFailWithError:v21];

    goto LABEL_12;
  }

  v6 = [v4 parameters];
  v7 = [v6 tcpListeningPort];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (!v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v19;
      v20 = "%{public}@[Start Stream] The setup transfer write reply did not contain a TCP port";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v4 parameters];
    v14 = [v13 tcpListeningPort];
    v23 = 138543618;
    v24 = v12;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] The setup transfer succeeded; will use port %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v15 = [v4 parameters];
  v16 = [v15 tcpListeningPort];
  v17 = [v16 value];
  -[HMDDataStreamTCPSetupOperation setRemoteTcpPort:](v9, "setRemoteTcpPort:", [v17 integerValue]);

  v18 = [v4 accessoryKeySalt];
  [(HMDDataStreamTCPSetupOperation *)v9 setAccessoryKeySalt:v18];

  [(HMDDataStreamTCPSetupOperation *)v9 _generateStreamKeys];
LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)startSetup
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(HMDDataStreamSetupOperation *)self accessory];
  v4 = [v3 anyIPServer];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Creating new DataStream using TCP", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDDataStreamTCPSetupOperation *)v6 controllerKeySalt];
    v11 = [objc_alloc(MEMORY[0x277CFEB08]) initWithValue:0];
    v12 = [objc_alloc(MEMORY[0x277CFEB18]) initWithValue:0];
    v27 = [objc_alloc(MEMORY[0x277CFEB20]) initWithCommand:v11 transportType:v12 controllerKeySalt:v10];

    v31 = 0;
    v13 = [v27 serializeWithError:&v31];
    v14 = v31;
    if (v13)
    {
      v15 = [(HMDDataStreamSetupOperation *)v6 transferManagementService];
      v16 = [v15 findCharacteristicWithType:@"00000131-0000-1000-8000-0026BB765291"];

      v17 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v16 value:v13 authorizationData:0 type:0];
      objc_initWeak(buf, v6);
      v18 = [(HMDDataStreamSetupOperation *)v6 accessory];
      v32 = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      v20 = [(HMDDataStreamSetupOperation *)v6 queue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __44__HMDDataStreamTCPSetupOperation_startSetup__block_invoke;
      v28[3] = &unk_2797353F8;
      objc_copyWeak(&v30, buf);
      v29 = v4;
      [v18 writeCharacteristicValues:v19 source:1090 queue:v20 completionHandler:v28];

      [(HMDDataStreamTCPSetupOperation *)v6 _finishStreamTransport];
      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v6;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v25;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; cannot serialize request (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDDataStreamSetupOperation *)v23 postDidFailWithError:v14];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v21;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; does not appear to be IP-connected", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [(HMDDataStreamSetupOperation *)v6 postDidFailWithError:v14];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __44__HMDDataStreamTCPSetupOperation_startSetup__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) peerAddressEx];
    [WeakRetained setRemoteNetAddress:v5];

    v6 = [WeakRetained remoteNetAddress];

    if (v6)
    {
      [WeakRetained continueStreamSetupWithResponse:v3];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = WeakRetained;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v10;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; invalid IP address", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v11 initWithDomain:*MEMORY[0x277CCFD28] code:54 userInfo:0];
      [v8 postDidFailWithError:v12];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_fullKeySalt
{
  v3 = [(HMDDataStreamTCPSetupOperation *)self controllerKeySalt];
  v4 = [v3 mutableCopy];

  v5 = [(HMDDataStreamTCPSetupOperation *)self accessoryKeySalt];
  [v4 appendData:v5];

  v6 = [v4 copy];

  return v6;
}

- (BOOL)_isComplete
{
  v3 = [(HMDDataStreamTCPSetupOperation *)self remoteNetAddress];
  if (v3 && [(HMDDataStreamTCPSetupOperation *)self remoteTcpPort])
  {
    v4 = [(HMDDataStreamTCPSetupOperation *)self sessionEncryption];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HMDDataStreamTCPSetupOperation)initWithAccessory:(id)a3 queue:(id)a4 logIdentifier:(id)a5 transferManagementService:(id)a6
{
  v10.receiver = self;
  v10.super_class = HMDDataStreamTCPSetupOperation;
  v6 = [(HMDDataStreamSetupOperation *)&v10 initWithAccessory:a3 queue:a4 logIdentifier:a5 transferManagementService:a6];
  if (v6)
  {
    v7 = HMFRandomDataWithLength();
    controllerKeySalt = v6->_controllerKeySalt;
    v6->_controllerKeySalt = v7;
  }

  return v6;
}

@end