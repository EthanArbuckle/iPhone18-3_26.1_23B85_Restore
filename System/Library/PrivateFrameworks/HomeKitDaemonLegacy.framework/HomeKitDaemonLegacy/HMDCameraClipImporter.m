@interface HMDCameraClipImporter
+ (id)logCategory;
- (HMDCameraClipImporter)initWithLocalZone:(id)a3 cameraProfileUUID:(id)a4;
- (id)importClipsWithImportData:(id)a3;
@end

@implementation HMDCameraClipImporter

- (id)importClipsWithImportData:(id)a3
{
  v124 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v77 = v4;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v117 = v8;
    v118 = 2112;
    v119 = v77;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Importing clips using import data: %@", buf, 0x16u);

    v4 = v77;
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 na_map:&__block_literal_global_154547];
  v10 = MEMORY[0x277D2C938];
  v84 = v6;
  v11 = [(HMDCameraClipImporter *)v6 workQueue];
  v88 = [v10 schedulerWithDispatchQueue:v11];

  v87 = [MEMORY[0x277CBEB18] array];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v112 objects:v123 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v113;
    v78 = *v113;
    do
    {
      v15 = 0;
      v16 = v84;
      v79 = v13;
      do
      {
        if (*v113 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v83 = v15;
        v17 = *(*(&v112 + 1) + 8 * v15);
        v18 = [v17 videoSegments];
        v19 = [v18 firstObject];
        v20 = [v19 isHeader];

        if (v20)
        {
          v21 = [HMDCameraClipUploader alloc];
          v22 = [MEMORY[0x277CCAD78] UUID];
          v23 = [v17 startDate];
          [v17 targetFragmentDuration];
          v25 = v24;
          v26 = [(HMDCameraClipImporter *)v16 localZone];
          v27 = [(HMDCameraClipImporter *)v16 workQueue];
          v28 = [(HMDCameraClipImporter *)v16 logIdentifier];
          v29 = [(HMDCameraClipUploader *)v21 initWithClipUUID:v22 startDate:v23 targetFragmentDuration:0 quality:v26 localZone:v27 workQueue:v28 logIdentifier:v25];

          v30 = v29;
          v31 = [v17 posterFrames];
          v32 = [v31 firstObject];

          if (v32)
          {
            v33 = MEMORY[0x277D2C900];
            v108[0] = MEMORY[0x277D85DD0];
            v108[1] = 3221225472;
            v108[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_43;
            v108[3] = &unk_27972FD40;
            v109 = v32;
            v110 = v16;
            v111 = v30;
            v34 = [v33 futureWithBlock:v108 scheduler:v88];
            [v87 addObject:v34];
          }

          v35 = [v17 posterFrames];
          v36 = [v35 lastObject];

          v37 = 0x277CBE000uLL;
          if (v36)
          {
            v38 = MEMORY[0x277D2C900];
            v104[0] = MEMORY[0x277D85DD0];
            v104[1] = 3221225472;
            v104[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_48;
            v104[3] = &unk_27972FD40;
            v105 = v36;
            v106 = v16;
            v107 = v30;
            v39 = [v38 futureWithBlock:v104 scheduler:v88];
            [v87 addObject:v39];
          }

          v81 = v36;
          v82 = v32;
          v86 = v30;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v85 = [v17 videoSegments];
          v40 = [v85 countByEnumeratingWithState:&v100 objects:v122 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v101;
            v43 = 0.0;
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v101 != v42)
                {
                  objc_enumerationMutation(v85);
                }

                v45 = *(*(&v100 + 1) + 8 * i);
                v46 = *(v37 + 2704);
                v47 = [v45 resourcePath];
                v99 = 0;
                v48 = [v46 dataWithContentsOfFile:v47 options:0 error:&v99];
                v49 = v99;

                if (v48)
                {
                  v50 = [v45 isHeader];
                  v51 = MEMORY[0x277D2C900];
                  if (v50)
                  {
                    v96[0] = MEMORY[0x277D85DD0];
                    v96[1] = 3221225472;
                    v96[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_49;
                    v96[3] = &unk_279732048;
                    v97 = v86;
                    v98 = v48;
                    v52 = [v51 futureWithBlock:v96 scheduler:v88];
                    [v87 addObject:v52];

                    v53 = v97;
                  }

                  else
                  {
                    v91[0] = MEMORY[0x277D85DD0];
                    v91[1] = 3221225472;
                    v91[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_2;
                    v91[3] = &unk_27972FD68;
                    v92 = v86;
                    v59 = v48;
                    v95 = v43;
                    v93 = v59;
                    v94 = v45;
                    v60 = [v51 futureWithBlock:v91 scheduler:v88];
                    [v87 addObject:v60];

                    [v45 duration];
                    v43 = v43 + v61;

                    v53 = v92;
                  }
                }

                else
                {
                  v54 = objc_autoreleasePoolPush();
                  v55 = v16;
                  v56 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    v57 = HMFGetLogIdentifier();
                    v58 = [v45 resourcePath];
                    *buf = 138543874;
                    v117 = v57;
                    v118 = 2112;
                    v119 = v58;
                    v120 = 2112;
                    v121 = v49;
                    _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Could not load data from %@: %@", buf, 0x20u);

                    v16 = v84;
                  }

                  objc_autoreleasePoolPop(v54);
                  v37 = 0x277CBE000;
                }
              }

              v41 = [v85 countByEnumeratingWithState:&v100 objects:v122 count:16];
            }

            while (v41);
          }

          v62 = MEMORY[0x277D2C900];
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_3;
          v89[3] = &unk_279732020;
          v90 = v86;
          v63 = v86;
          v64 = [v62 futureWithBlock:v89 scheduler:v88];
          [v87 addObject:v64];

          v14 = v78;
          v13 = v79;
        }

        else
        {
          v65 = objc_autoreleasePoolPush();
          v66 = v16;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            v68 = HMFGetLogIdentifier();
            v69 = [v17 videoSegments];
            v70 = [v69 firstObject];
            v71 = [v70 resourcePath];
            *buf = 138543618;
            v117 = v68;
            v118 = 2112;
            v119 = v71;
            _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_ERROR, "%{public}@First fragment in clip %@ is not header, skipping", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v65);
        }

        v15 = v83 + 1;
      }

      while (v83 + 1 != v13);
      v13 = [obj countByEnumeratingWithState:&v112 objects:v123 count:16];
    }

    while (v13);
  }

  v72 = MEMORY[0x277D2C900];
  v73 = [v87 copy];
  v74 = [v72 chainFutures:v73];

  v75 = *MEMORY[0x277D85DE8];

  return v74;
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_43(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEA90];
  v5 = [*(a1 + 32) resourcePath];
  v6 = [v4 dataWithContentsOfFile:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 length];
      v13 = [*(a1 + 32) resourcePath];
      v22 = 138543874;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Loaded %lu bytes of hero frame data from %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [HMDMutableCameraRecordingSessionSignificantEvent alloc];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [(HMDCameraRecordingSessionSignificantEvent *)v14 initWithUUID:v15];

    [(HMDCameraRecordingSessionSignificantEvent *)v16 setReason:2];
    [(HMDCameraRecordingSessionSignificantEvent *)v16 setConfidenceLevel:100];
    [(HMDCameraRecordingSessionSignificantEvent *)v16 setHeroFrameData:v6];
    v17 = *(a1 + 48);
    v18 = [v3 errorOnlyCompletionHandlerAdapter];
    [v17 addSignificantEvent:v16 homePresenceByPairingIdentity:MEMORY[0x277CBEC10] completionHandler:v18];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) resourcePath];
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not load data from %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    [v3 finishWithError:v16];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_48(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEA90];
  v5 = [*(a1 + 32) resourcePath];
  v6 = [v4 dataWithContentsOfFile:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v6 length];
      v13 = [*(a1 + 32) resourcePath];
      v22 = 138543874;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Loaded %lu bytes of hero frame data from %@", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [HMDMutableCameraRecordingSessionSignificantEvent alloc];
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [(HMDCameraRecordingSessionSignificantEvent *)v14 initWithUUID:v15];

    [(HMDCameraRecordingSessionSignificantEvent *)v16 setReason:3];
    [(HMDCameraRecordingSessionSignificantEvent *)v16 setConfidenceLevel:100];
    [(HMDCameraRecordingSessionSignificantEvent *)v16 setHeroFrameData:v6];
    v17 = *(a1 + 48);
    v18 = [v3 errorOnlyCompletionHandlerAdapter];
    [v17 addSignificantEvent:v16 homePresenceByPairingIdentity:MEMORY[0x277CBEC10] completionHandler:v18];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) resourcePath];
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not load data from %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    [v3 finishWithError:v16];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 errorOnlyCompletionHandlerAdapter];
  [v2 addVideoInitData:v3 completionHandler:v4];
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_2(double *a1, void *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = a1[7];
  v5 = *(a1 + 6);
  v6 = a2;
  [v5 duration];
  v8 = v7;
  v9 = [v6 errorOnlyCompletionHandlerAdapter];

  [v2 addVideoSegmentData:v3 timeOffsetWithinClip:0 duration:v9 clipFinalizedBecauseMaxDurationExceeded:v4 completionHandler:v8];
}

void __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 errorOnlyCompletionHandlerAdapter];
  [v2 finishWithCompletionHandler:v3];
}

id __51__HMDCameraClipImporter_importClipsWithImportData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCameraClipImportMetadata alloc] initClipData:v2];

  return v3;
}

- (HMDCameraClipImporter)initWithLocalZone:(id)a3 cameraProfileUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v20 = _HMFPreconditionFailure();
    return +[(HMDCameraClipImporter *)v20];
  }

  v22.receiver = self;
  v22.super_class = HMDCameraClipImporter;
  v10 = [(HMDCameraClipImporter *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_localZone, a3);
    objc_storeStrong(&v11->_cameraProfileUUID, a4);
    v12 = HMFDispatchQueueName();
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    workQueue = v11->_workQueue;
    v11->_workQueue = v14;

    v16 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v16 UUIDString];
    logIdentifier = v11->_logIdentifier;
    v11->_logIdentifier = v17;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_154694 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_154694, &__block_literal_global_52_154695);
  }

  v3 = logCategory__hmf_once_v8_154696;

  return v3;
}

uint64_t __36__HMDCameraClipImporter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_154696;
  logCategory__hmf_once_v8_154696 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end