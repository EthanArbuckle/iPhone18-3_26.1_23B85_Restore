@interface HMDCameraClipFeedbackManager
+ (id)logCategory;
- (BOOL)isCurrentDeviceConfirmedPrimaryResident;
- (HMDCameraClipFeedbackManager)initWithLocalZone:(id)a3 cloudZone:(id)a4 home:(id)a5 messageDispatcher:(id)a6 cameraProfileUUID:(id)a7 messageTargetUUID:(id)a8 workQueue:(id)a9;
- (HMDCameraClipFeedbackManager)initWithLocalZone:(id)a3 cloudZone:(id)a4 home:(id)a5 messageDispatcher:(id)a6 cameraProfileUUID:(id)a7 messageTargetUUID:(id)a8 workQueue:(id)a9 feedbackUploader:(id)a10;
- (HMDHome)home;
- (id)_performCloudPull;
- (id)logIdentifier;
- (void)_findAndUploadSubmittedClips;
- (void)_handleFindAndUploadSubmittedClipsMessage:(id)a3;
- (void)_handleSubmitClipsMessage:(id)a3;
- (void)_notifyPrimaryResidentThatClipsWereSubmitted;
- (void)_uploadNextClipFromQueryResult:(id)a3;
- (void)configureWithIsCurrentDeviceResidentCapable:(BOOL)a3;
- (void)handlePrimaryResidentUpdateNotification:(id)a3;
@end

@implementation HMDCameraClipFeedbackManager

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraClipFeedbackManager *)self cameraProfileUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_handleSubmitClipsMessage:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 messagePayload];
    *buf = 138543618;
    v73 = v9;
    v74 = 2112;
    v75 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling submit clips message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 setForKey:*MEMORY[0x277CCF430]];
  if (!v11)
  {
    v51 = objc_autoreleasePoolPush();
    v52 = v7;
    v53 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      v55 = [v4 messagePayload];
      *buf = 138543618;
      v73 = v54;
      v74 = 2112;
      v75 = v55;
      _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Could not find clip UUIDs in message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v51);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v12];
    goto LABEL_41;
  }

  v58 = v4;
  v12 = [MEMORY[0x277CBEB58] set];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v57 = v11;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = *v68;
LABEL_6:
  v16 = 0;
  while (1)
  {
    if (*v68 != v15)
    {
      objc_enumerationMutation(obj);
    }

    v17 = *(*(&v67 + 1) + 8 * v16);
    v18 = [(HMDCameraClipFeedbackManager *)v7 localZone];
    v19 = objc_opt_class();
    v66 = 0;
    v20 = [v18 fetchModelWithModelID:v17 ofType:v19 error:&v66];
    v21 = v66;

    if (!v20)
    {
      break;
    }

    [v12 addObject:v20];

    if (v14 == ++v16)
    {
      v14 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
      if (!v14)
      {
LABEL_12:

        v59 = [MEMORY[0x277CBEB58] set];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v12 = v12;
        v22 = [v12 countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (!v22)
        {
          goto LABEL_31;
        }

        v23 = v22;
        v24 = *v63;
        while (1)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v63 != v24)
            {
              objc_enumerationMutation(v12);
            }

            v26 = *(*(&v62 + 1) + 8 * i);
            v27 = [v26 feedbackStatus];
            switch(v27)
            {
              case 2:
                v36 = objc_autoreleasePoolPush();
                v37 = v7;
                v38 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  v39 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v73 = v39;
                  v74 = 2112;
                  v75 = v26;
                  v40 = v38;
                  v41 = "%{public}@Clip is already uploaded: %@";
LABEL_27:
                  _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, v41, buf, 0x16u);
                }

LABEL_28:

                objc_autoreleasePoolPop(v36);
                continue;
              case 1:
                v36 = objc_autoreleasePoolPush();
                v37 = v7;
                v38 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  v39 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v73 = v39;
                  v74 = 2112;
                  v75 = v26;
                  v40 = v38;
                  v41 = "%{public}@Clip is already marked for upload: %@";
                  goto LABEL_27;
                }

                goto LABEL_28;
              case 0:
                v28 = objc_autoreleasePoolPush();
                v29 = v7;
                v30 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  v31 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v73 = v31;
                  v74 = 2112;
                  v75 = v26;
                  _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Marking clip for upload: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v28);
                v32 = [HMDCameraClipModel alloc];
                v33 = [v26 hmbModelID];
                v34 = [v26 hmbParentModelID];
                v35 = [(HMBModel *)v32 initWithModelID:v33 parentModelID:v34];

                [(HMDCameraClipModel *)v35 setFeedbackStatus:1];
                [v59 addObject:v35];

                break;
            }
          }

          v23 = [v12 countByEnumeratingWithState:&v62 objects:v71 count:16];
          if (!v23)
          {
LABEL_31:

            if ([v59 count])
            {
              v42 = [(HMDCameraClipFeedbackManager *)v7 localZone];
              v43 = [MEMORY[0x277D17108] optionsWithLabel:@"Marking clips for upload"];
              v44 = [v42 updateModels:v59 options:v43];

              v61[0] = MEMORY[0x277D85DD0];
              v61[1] = 3221225472;
              v61[2] = __58__HMDCameraClipFeedbackManager__handleSubmitClipsMessage___block_invoke;
              v61[3] = &unk_278686D10;
              v61[4] = v7;
              v45 = [v44 addSuccessBlock:v61];
            }

            v4 = v58;
            [v58 respondWithSuccess];

            goto LABEL_37;
          }
        }
      }

      goto LABEL_6;
    }
  }

  v46 = objc_autoreleasePoolPush();
  v47 = v7;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543874;
    v73 = v49;
    v74 = 2112;
    v75 = v17;
    v76 = 2112;
    v77 = v21;
    _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failing request to submit because no clip model could be found for UUID %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v46);
  v50 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  v4 = v58;
  [v58 respondWithError:v50];

LABEL_37:
  v11 = v57;
LABEL_41:

  v56 = *MEMORY[0x277D85DE8];
}

void __58__HMDCameraClipFeedbackManager__handleSubmitClipsMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mirrorOutputResult];
  v4 = MEMORY[0x277D2C938];
  v5 = [*(a1 + 32) workQueue];
  v6 = [v4 schedulerWithDispatchQueue:v5];
  v7 = [v3 reschedule:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HMDCameraClipFeedbackManager__handleSubmitClipsMessage___block_invoke_2;
  v9[3] = &unk_278687CE8;
  v9[4] = *(a1 + 32);
  v8 = [v7 addSuccessBlock:v9];
}

- (void)_handleFindAndUploadSubmittedClipsMessage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 shortDescription];
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling find and upload submitted clips message: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMDCameraClipFeedbackManager *)v7 _findAndUploadSubmittedClips];
  [v4 respondWithSuccess];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentUpdateNotification:(id)a3
{
  v4 = [(HMDCameraClipFeedbackManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDCameraClipFeedbackManager_handlePrimaryResidentUpdateNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

void __72__HMDCameraClipFeedbackManager_handlePrimaryResidentUpdateNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isCurrentDeviceConfirmedPrimaryResident];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@The current device is the confirmed primary resident", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _findAndUploadSubmittedClips];
  }

  else
  {
    if (v6)
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@The current device is not the confirmed primary resident", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_notifyPrimaryResidentThatClipsWereSubmitted
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCameraClipFeedbackManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    v4 = *MEMORY[0x277D85DE8];

    [(HMDCameraClipFeedbackManager *)self _findAndUploadSubmittedClips];
  }

  else
  {
    v5 = [(HMDCameraClipFeedbackManager *)self home];
    v6 = [v5 primaryResident];

    if (v6)
    {
      v7 = [HMDRemoteDeviceMessageDestination alloc];
      v8 = [(HMDCameraClipFeedbackManager *)self messageTargetUUID];
      v9 = [v6 device];
      v10 = [(HMDRemoteDeviceMessageDestination *)v7 initWithTarget:v8 device:v9];

      v11 = [[HMDRemoteMessage alloc] initWithName:@"HMDCameraClipFeedbackFindAndUploadSubmittedClipsMessage" destination:v10 payload:0 type:3 timeout:1 secure:0.0];
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [(HMFObject *)v11 shortDescription];
        v23 = 138543874;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ that clips were submitted to %@", &v23, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v17 = [(HMDCameraClipFeedbackManager *)v13 messageDispatcher];
      [v17 sendMessage:v11];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v21;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not find primary resident to send notifications to", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
    }

    v22 = *MEMORY[0x277D85DE8];
  }
}

- (void)_uploadNextClipFromQueryResult:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 nextObject];
  if (!v6)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v18;
      v19 = "%{public}@No more clips left to upload";
      v20 = v17;
      v21 = OS_LOG_TYPE_INFO;
      v22 = 12;
LABEL_11:
      _os_log_impl(&dword_229538000, v20, v21, v19, buf, v22);
    }

LABEL_12:

    objc_autoreleasePoolPop(v15);
    goto LABEL_17;
  }

  if (![(HMDCameraClipFeedbackManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v18;
      v34 = 2112;
      v35 = v6;
      v19 = "%{public}@Current device is not a confirmed primary resident, will not upload clip %@";
      v20 = v17;
      v21 = OS_LOG_TYPE_DEFAULT;
      v22 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v7 = [v6 feedbackStatus];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7 == 2)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v12;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Clip %@ was already uploaded", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(HMDCameraClipFeedbackManager *)v9 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDCameraClipFeedbackManager__uploadNextClipFromQueryResult___block_invoke;
    block[3] = &unk_27868A750;
    block[4] = v9;
    v31 = v4;
    dispatch_async(v13, block);

    v14 = v31;
  }

  else
  {
    if (v11)
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v23;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Uploading clip %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v24 = [(HMDCameraClipFeedbackManager *)v9 feedbackUploader];
    v25 = [(HMDCameraClipFeedbackManager *)v9 cameraProfileUUID];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__HMDCameraClipFeedbackManager__uploadNextClipFromQueryResult___block_invoke_90;
    v27[3] = &unk_278688D58;
    v27[4] = v9;
    v28 = v6;
    v29 = v4;
    [v24 uploadFeedbackWithCameraProfileUUID:v25 clipModel:v28 completionHandler:v27];

    v14 = v28;
  }

LABEL_17:
  v26 = *MEMORY[0x277D85DE8];
}

void __63__HMDCameraClipFeedbackManager__uploadNextClipFromQueryResult___block_invoke_90(id *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
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
      v9 = a1[5];
      *buf = 138543874;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Failed to upload clip %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = a1[5];
      *buf = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Marking clip as uploaded: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v12 = [HMDCameraClipModel alloc];
    v13 = [a1[5] hmbModelID];
    v14 = [a1[5] hmbParentModelID];
    v15 = [(HMBModel *)v12 initWithModelID:v13 parentModelID:v14];

    [(HMDCameraClipModel *)v15 setFeedbackStatus:2];
    v16 = [a1[4] localZone];
    v17 = [MEMORY[0x277CBEB98] setWithObject:v15];
    v18 = [MEMORY[0x277D17108] optionsWithLabel:@"Marking clip as uploaded"];
    v19 = [v16 updateModels:v17 options:v18];
  }

  v20 = [a1[4] workQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__HMDCameraClipFeedbackManager__uploadNextClipFromQueryResult___block_invoke_95;
  v22[3] = &unk_27868A750;
  v22[4] = a1[4];
  v23 = a1[6];
  dispatch_async(v20, v22);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_findAndUploadSubmittedClips
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDCameraClipFeedbackManager *)self isCurrentDeviceConfirmedPrimaryResident])
  {
    v4 = [(HMDCameraClipFeedbackManager *)self _performCloudPull];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__HMDCameraClipFeedbackManager__findAndUploadSubmittedClips__block_invoke;
    v11[3] = &unk_278687CC0;
    v11[4] = self;
    v5 = [v4 addCompletionBlock:v11];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Current device is not a confirmed primary resident, will not upload clips", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __60__HMDCameraClipFeedbackManager__findAndUploadSubmittedClips__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localZone];
  v3 = +[HMDCameraClipModel clipsWithNeedsUploadFeedbackStatusQuery];
  v4 = [v2 queryModelsUsingQuery:v3];

  [*(a1 + 32) _uploadNextClipFromQueryResult:v4];
}

- (id)_performCloudPull
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Performing cloud pull", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [MEMORY[0x277D17108] optionsWithLabel:@"Explicit fetch"];
  v9 = [(HMDCameraClipFeedbackManager *)v5 cloudZone];
  v10 = [v9 performCloudPullWithOptions:v8];
  v11 = MEMORY[0x277D2C938];
  v12 = [(HMDCameraClipFeedbackManager *)v5 workQueue];
  v13 = [v11 schedulerWithDispatchQueue:v12];
  v14 = [v10 reschedule:v13];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__HMDCameraClipFeedbackManager__performCloudPull__block_invoke;
  v18[3] = &unk_27868A250;
  v18[4] = v5;
  v15 = [v14 addFailureBlock:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __49__HMDCameraClipFeedbackManager__performCloudPull__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform cloud pull: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCurrentDeviceConfirmedPrimaryResident
{
  v3 = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraClipFeedbackManager *)self home];
  LOBYTE(v3) = [v4 isCurrentDeviceConfirmedPrimaryResident];

  return v3;
}

- (void)configureWithIsCurrentDeviceResidentCapable:(BOOL)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraClipFeedbackManager *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Configuring clip feedback manager", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDCameraClipFeedbackManager *)v7 home];
  if (v10)
  {
    v11 = [HMDXPCMessagePolicy policyWithEntitlements:133];
    v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:v10 userPrivilege:0 remoteAccessRequired:0];
    v13 = [(HMDCameraClipFeedbackManager *)v7 messageDispatcher];
    v14 = *MEMORY[0x277CCF4B8];
    v31[0] = v11;
    v31[1] = v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    [v13 registerForMessage:v14 receiver:v7 policies:v15 selector:sel__handleSubmitClipsMessage_];

    if (a3)
    {
      v16 = [MEMORY[0x277CCAB98] defaultCenter];
      v17 = [v10 residentDeviceManager];
      [v16 addObserver:v7 selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v17];

      v18 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
      v19 = [(HMDCameraClipFeedbackManager *)v7 messageDispatcher];
      v30 = v18;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      [v19 registerForMessage:@"HMDCameraClipFeedbackFindAndUploadSubmittedClipsMessage" receiver:v7 policies:v20 selector:sel__handleFindAndUploadSubmittedClipsMessage_];

      [(HMDCameraClipFeedbackManager *)v7 _findAndUploadSubmittedClips];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v7;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Current device is not resident capable, clip uploading is not available", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v7;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot configure clip feedback manager because home reference is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (HMDCameraClipFeedbackManager)initWithLocalZone:(id)a3 cloudZone:(id)a4 home:(id)a5 messageDispatcher:(id)a6 cameraProfileUUID:(id)a7 messageTargetUUID:(id)a8 workQueue:(id)a9 feedbackUploader:(id)a10
{
  v15 = a3;
  v39 = a4;
  v16 = a4;
  v17 = a5;
  v40 = a6;
  v18 = a6;
  v19 = a7;
  obj = a8;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v16)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v17)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v18)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v19)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v20)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v21)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v23 = v22;
  if (!v22)
  {
LABEL_19:
    v29 = _HMFPreconditionFailure();
    return [(HMDCameraClipFeedbackManager *)v29 initWithLocalZone:v30 cloudZone:v31 home:v32 messageDispatcher:v33 cameraProfileUUID:v34 messageTargetUUID:v35 workQueue:v36, a9];
  }

  v42.receiver = self;
  v42.super_class = HMDCameraClipFeedbackManager;
  v24 = [(HMDCameraClipFeedbackManager *)&v42 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_home, v17);
    v26 = [v19 copy];
    cameraProfileUUID = v25->_cameraProfileUUID;
    v25->_cameraProfileUUID = v26;

    objc_storeStrong(&v25->_messageTargetUUID, obj);
    objc_storeStrong(&v25->_feedbackUploader, a10);
    objc_storeStrong(&v25->_workQueue, a9);
    objc_storeStrong(&v25->_localZone, a3);
    objc_storeStrong(&v25->_cloudZone, v39);
    objc_storeStrong(&v25->_messageDispatcher, v40);
  }

  return v25;
}

- (HMDCameraClipFeedbackManager)initWithLocalZone:(id)a3 cloudZone:(id)a4 home:(id)a5 messageDispatcher:(id)a6 cameraProfileUUID:(id)a7 messageTargetUUID:(id)a8 workQueue:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v16)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v17)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v18)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v19)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v20)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v22 = v21;
  if (v21)
  {
    v23 = objc_alloc_init(HMDCameraClipFeedbackUploader);
    v24 = [(HMDCameraClipFeedbackManager *)self initWithLocalZone:v15 cloudZone:v16 home:v17 messageDispatcher:v18 cameraProfileUUID:v19 messageTargetUUID:v20 workQueue:v22 feedbackUploader:v23];

    return v24;
  }

LABEL_15:
  v26 = _HMFPreconditionFailure();
  return +[(HMDCameraClipFeedbackManager *)v26];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23_258923 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23_258923, &__block_literal_global_258924);
  }

  v3 = logCategory__hmf_once_v24_258925;

  return v3;
}

void __43__HMDCameraClipFeedbackManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v24_258925;
  logCategory__hmf_once_v24_258925 = v1;
}

@end