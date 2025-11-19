@interface HMDResidentLocationHandler
+ (id)cachedResidentLocationPath;
+ (id)logCategory;
+ (void)deleteCachedResidentLocation;
- (HMDHome)home;
- (HMDResidentLocationHandler)initWithHome:(id)a3 queue:(id)a4 messageDispatcher:(id)a5;
- (HMDResidentLocationHandler)initWithHome:(id)a3 queue:(id)a4 messageDispatcher:(id)a5 locationProvider:(id)a6;
- (NSUUID)messageTargetUUID;
- (id)_cachedResidentLocationRawValue;
- (id)logIdentifier;
- (unint64_t)_residentLocationFromHomeLocation:(id)a3 location:(id)a4;
- (void)_cacheResidentLocationRawValue:(id)a3;
- (void)_determineHomeOrAwayUsingElector:(id)a3 location:(id)a4 withCompletion:(id)a5;
- (void)_handleDetermineResidentLocationMessage:(id)a3;
- (void)_sendResidentLocationMessageToElector:(id)a3 location:(id)a4 completion:(id)a5;
- (void)_updateToUnknownIfNoCachedLocation;
- (void)configure;
- (void)determineHomeOrAwayUsingElector:(id)a3 withCompletion:(id)a4;
- (void)requestResidentLocation;
@end

@implementation HMDResidentLocationHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)_handleDetermineResidentLocationMessage:(id)a3
{
  v43[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentLocationHandler *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 messagePayload];
  v7 = [v6 hm_locationFromDataForKey:@"drl.el"];
  if (v7)
  {
    v8 = [(HMDResidentLocationHandler *)self home];
    v9 = [v8 homeLocationHandler];
    v10 = [v9 location];

    if (v10)
    {
      v11 = [(HMDResidentLocationHandler *)self _residentLocationFromHomeLocation:v10 location:v7];
      v12 = [v4 remoteSourceDevice];
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        StringFromHMDResidentLocation(v11);
        v17 = v30 = v13;
        [v12 shortDescription];
        v18 = v31 = v11;
        *buf = 138543874;
        v35 = v16;
        v36 = 2112;
        v37 = v17;
        v38 = 2112;
        v39 = v18;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@We are the elector, determined location of: %@ for resident device: %@", buf, 0x20u);

        v11 = v31;
        v13 = v30;
      }

      objc_autoreleasePoolPop(v13);
      v32 = @"drl.dl";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
      v33 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      [v4 respondWithPayload:v20];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Home location is nil when handling determine resident location message", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v40 = @"drl.dl";
      v41 = &unk_283E74708;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      [v4 respondWithPayload:v12];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v24;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Determine resident location message payload: %@ did not contain resident location", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v42 = @"drl.dl";
    v43[0] = &unk_283E74708;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    [v4 respondWithPayload:v10];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_sendResidentLocationMessageToElector:(id)a3 location:(id)a4 completion:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a3;
  v9 = encodeRootObject();
  v21 = @"drl.el";
  v22[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v11 = [HMDRemoteDeviceMessageDestination alloc];
  v12 = [(HMDResidentLocationHandler *)self messageTargetUUID];
  v13 = [v8 device];

  v14 = [(HMDRemoteDeviceMessageDestination *)v11 initWithTarget:v12 device:v13];
  v15 = [[HMDRemoteMessage alloc] initWithName:@"HMDDetermineResidentDeviceLocationMessage" qualityOfService:25 destination:v14 payload:v10 type:0 timeout:1 secure:30.0 restriction:-1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__HMDResidentLocationHandler__sendResidentLocationMessageToElector_location_completion___block_invoke;
  v19[3] = &unk_2786818D0;
  v20 = v7;
  v16 = v7;
  [(HMDRemoteMessage *)v15 setResponseHandler:v19];
  v17 = [(HMDResidentLocationHandler *)self messageDispatcher];
  [v17 sendMessage:v15 completionHandler:0];

  v18 = *MEMORY[0x277D85DE8];
}

void __88__HMDResidentLocationHandler__sendResidentLocationMessageToElector_location_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 hmf_numberForKey:@"drl.dl"];
  (*(*(a1 + 32) + 16))();
}

- (void)_determineHomeOrAwayUsingElector:(id)a3 location:(id)a4 withCompletion:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDResidentLocationHandler *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v8 shortDescription];
    *buf = 138543874;
    v41 = v15;
    v42 = 2112;
    v43 = v16;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Determining resident home/away using elector: %@ location: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if ([v8 isCurrentDevice])
  {
    v17 = [(HMDResidentLocationHandler *)v13 home];
    v18 = [v17 homeLocationHandler];
    v19 = [v18 location];

    if (v19)
    {
      v20 = [(HMDResidentLocationHandler *)v13 _residentLocationFromHomeLocation:v19 location:v9];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
      [(HMDResidentLocationHandler *)v13 setResidentLocationRawValue:v21];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
      [(HMDResidentLocationHandler *)v13 _cacheResidentLocationRawValue:v22];

      v23 = objc_autoreleasePoolPush();
      v24 = v13;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = StringFromHMDResidentLocation(v20);
        *buf = 138543618;
        v41 = v26;
        v42 = 2112;
        v43 = v27;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@We are the elector, determined we are: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v28 = _Block_copy(v10);
      v29 = v28;
      if (v28)
      {
        (*(v28 + 2))(v28, 0);
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v13;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v33;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@We are the elector, home location is nil, defaulting to unknown", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      [(HMDResidentLocationHandler *)v31 _updateToUnknownIfNoCachedLocation];
      v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v34 = _Block_copy(v10);
      v35 = v34;
      if (v34)
      {
        (*(v34 + 2))(v34, v29);
      }
    }
  }

  else
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __87__HMDResidentLocationHandler__determineHomeOrAwayUsingElector_location_withCompletion___block_invoke;
    v37[3] = &unk_2786818A8;
    v37[4] = v13;
    v38 = v8;
    v39 = v10;
    [(HMDResidentLocationHandler *)v13 _sendResidentLocationMessageToElector:v38 location:v9 completion:v37];
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __87__HMDResidentLocationHandler__determineHomeOrAwayUsingElector_location_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__HMDResidentLocationHandler__determineHomeOrAwayUsingElector_location_withCompletion___block_invoke_2;
  block[3] = &unk_278688978;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 48);
  v17 = v6;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void __87__HMDResidentLocationHandler__determineHomeOrAwayUsingElector_location_withCompletion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
    v6 = *(a1 + 40);
    if (v5 != 100)
    {
      [v6 setResidentLocationRawValue:v4];
      [*(a1 + 40) _cacheResidentLocationRawValue:v4];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 48) shortDescription];
      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Did not receive a determined resident location back from elector: %@, defaulting to unknown", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = *(a1 + 40);
  }

  [v6 _updateToUnknownIfNoCachedLocation];
LABEL_11:
  v12 = _Block_copy(*(a1 + 64));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, *(a1 + 56));
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_residentLocationFromHomeLocation:(id)a3 location:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 distanceFromLocation:v7];
  v9 = v8;
  if (v8 >= 1000.0 && fabs(v8 + -1000.0) >= 2.22044605e-16)
  {
    v10 = 200;
  }

  else
  {
    v10 = 300;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = StringFromHMDResidentLocation(v10);
    v18 = 138544386;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Resident is: %@ homeLocation: %@ location: %@ distance: %f", &v18, 0x34u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_updateToUnknownIfNoCachedLocation
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDResidentLocationHandler *)self _cachedResidentLocationRawValue];
  if ([v3 unsignedIntegerValue] == 100)
  {
    [(HMDResidentLocationHandler *)self setResidentLocationRawValue:&unk_283E74708];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Not updating to unknown, cached location exists: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_cacheResidentLocationRawValue:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HMDResidentLocationHandler cachedResidentLocationPath];
  if (v5)
  {
    v6 = [v4 stringValue];
    v14 = 0;
    [v6 writeToFile:v5 atomically:1 encoding:4 error:&v14];
    v7 = v14;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      *buf = 138544130;
      v16 = v11;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Caching resident location: %@ succeeded: %@ with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_cachedResidentLocationRawValue
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[HMDResidentLocationHandler cachedResidentLocationPath];
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v3 encoding:4 error:0];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
      v6 = [v5 numberFromString:v4];
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543618;
        v14 = v10;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded cached resident location: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v6 = &unk_283E74708;
    }
  }

  else
  {
    v6 = &unk_283E74708;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  v2 = [(HMDResidentLocationHandler *)self home];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDResidentLocationHandler *)self home];
  v3 = [v2 uuid];

  return v3;
}

- (void)determineHomeOrAwayUsingElector:(id)a3 withCompletion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277D0F7A8]);
    v9 = [(HMDResidentLocationHandler *)self workQueue];
    v10 = [v8 initWithQueue:v9];

    v11 = [(HMDResidentLocationHandler *)self residentLocationProvider];
    v12 = [v11 locationUpdatedFuture];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__HMDResidentLocationHandler_determineHomeOrAwayUsingElector_withCompletion___block_invoke;
    v22[3] = &unk_278681880;
    v22[4] = self;
    v24 = v7;
    v23 = v6;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__HMDResidentLocationHandler_determineHomeOrAwayUsingElector_withCompletion___block_invoke_100;
    v20[3] = &unk_2786850B8;
    v20[4] = self;
    v21 = v24;
    v13 = [v12 inContext:v10 then:v22 orRecover:v20];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@No elector, defaulting to unknown", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDResidentLocationHandler *)v15 _updateToUnknownIfNoCachedLocation];
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    v18 = _Block_copy(v7);
    v12 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, v10);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __77__HMDResidentLocationHandler_determineHomeOrAwayUsingElector_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Resident location request resolved", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) residentLocationProvider];
  v9 = [v8 location];

  if (v9)
  {
    [*(a1 + 32) _determineHomeOrAwayUsingElector:*(a1 + 40) location:v9 withCompletion:*(a1 + 48)];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Resident location is nil, defaulting to Unknown", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) _updateToUnknownIfNoCachedLocation];
    v14 = _Block_copy(*(a1 + 48));
    if (v14)
    {
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v14[2](v14, v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __77__HMDResidentLocationHandler_determineHomeOrAwayUsingElector_withCompletion___block_invoke_100(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Resident location request encountered error: %@, defaulting to Unknown", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _updateToUnknownIfNoCachedLocation];
  v8 = _Block_copy(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)requestResidentLocation
{
  v2 = [(HMDResidentLocationHandler *)self residentLocationProvider];
  [v2 requestResidentLocation];
}

- (void)configure
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v3 setRequiresSecureMessage:1];
  [v3 setRoles:{objc_msgSend(v3, "roles") | 4}];
  v4 = [v3 copy];
  v5 = [(HMDResidentLocationHandler *)self home];
  v6 = [HMDUserMessagePolicy userMessagePolicyWithHome:v5 userPrivilege:3 remoteAccessRequired:0];

  v7 = [(HMDResidentLocationHandler *)self messageDispatcher];
  v11[0] = v4;
  v11[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  [v7 registerForMessage:@"HMDDetermineResidentDeviceLocationMessage" receiver:self policies:v8 selector:sel__handleDetermineResidentLocationMessage_];

  v9 = [(HMDResidentLocationHandler *)self _cachedResidentLocationRawValue];
  if ([v9 unsignedIntegerValue] != 100)
  {
    [(HMDResidentLocationHandler *)self setResidentLocationRawValue:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDResidentLocationHandler)initWithHome:(id)a3 queue:(id)a4 messageDispatcher:(id)a5 locationProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = HMDResidentLocationHandler;
  v14 = [(HMDResidentLocationHandler *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_home, v10);
    objc_storeStrong(&v15->_workQueue, a4);
    objc_storeStrong(&v15->_messageDispatcher, a5);
    residentLocationRawValue = v15->_residentLocationRawValue;
    v15->_residentLocationRawValue = &unk_283E74708;

    objc_storeStrong(&v15->_residentLocationProvider, a6);
  }

  return v15;
}

- (HMDResidentLocationHandler)initWithHome:(id)a3 queue:(id)a4 messageDispatcher:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HMDResidentLocationProvider);
  v12 = [(HMDResidentLocationHandler *)self initWithHome:v10 queue:v9 messageDispatcher:v8 locationProvider:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_223009 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_223009, &__block_literal_global_223010);
  }

  v3 = logCategory__hmf_once_v12_223011;

  return v3;
}

void __41__HMDResidentLocationHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_223011;
  logCategory__hmf_once_v12_223011 = v1;
}

+ (void)deleteCachedResidentLocation
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[HMDResidentLocationHandler cachedResidentLocationPath];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    [v3 removeItemAtPath:v2 error:&v10];
    v4 = v10;

    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = HMFBooleanToString();
      *buf = 138544130;
      v12 = v7;
      v13 = 2112;
      v14 = v2;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Removing cache file: %@ succeeded: %@ with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)cachedResidentLocationPath
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = determineHomeKitDaemonRootStorePath();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@"lastDeterminedResidentLocation"];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to get HomeKit daemon root store path!", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

@end