@interface HMDMPCSessionController
- (HMDMPCSessionController)initWithLogEventSubmitter:(id)submitter;
- (void)executeSessionWithSessionData:(id)data completion:(id)completion;
@end

@implementation HMDMPCSessionController

- (void)executeSessionWithSessionData:(id)data completion:(id)completion
{
  v122 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  obj = completion;
  v88 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"HMDMPCSessionCreation"];
  selfCopy = self;
  v84 = dataCopy;
  if (self)
  {
    v7 = dataCopy;
    mediaProfiles = [v7 mediaProfiles];
    v9 = [mediaProfiles na_map:&__block_literal_global_285381];

    v10 = [HMDMPCSessionControllerExecutionEvent alloc];
    playbackArchive = [v7 playbackArchive];
    playbackStateNumber = [v7 playbackStateNumber];
    playbackVolumeNumber = [v7 playbackVolumeNumber];
    source = [v7 source];
    clientName = [v7 clientName];

    allObjects = [v9 allObjects];
    self = [(HMDMediaPlaybackActionEvent *)v10 initWithIsPlaybackArchivePresent:playbackArchive != 0 playbackStateNumber:playbackStateNumber volumeNumber:playbackVolumeNumber sourceNumber:source sourceClientName:clientName accessories:allObjects];
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  v17 = objc_autoreleasePoolPush();
  val = selfCopy;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v119 = v19;
    v120 = 2112;
    v121 = uUID;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Running MPC media session with sessionUUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HMDMPCSessionController_executeSessionWithSessionData_completion___block_invoke;
  aBlock[3] = &unk_27868A528;
  v81 = v88;
  v105 = v81;
  v106 = val;
  selfCopy2 = self;
  v107 = selfCopy2;
  v79 = obj;
  v108 = v79;
  v83 = _Block_copy(aBlock);
  mediaProfiles2 = [v84 mediaProfiles];
  v85 = mediaProfiles2;
  if (selfCopy)
  {
    v87 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(mediaProfiles2, "count")}];
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    obja = v85;
    v21 = [obja countByEnumeratingWithState:&v109 objects:buf count:16];
    if (v21)
    {
      v22 = *v110;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v110 != v22)
          {
            objc_enumerationMutation(obja);
          }

          v24 = *(*(&v109 + 1) + 8 * i);
          accessory = [v24 accessory];
          v26 = accessory;
          if (accessory && [accessory providesHashRouteID])
          {
            hashRouteID = [v26 hashRouteID];
            if (hashRouteID)
            {
              [v87 addObject:hashRouteID];
            }

            else
            {
              v32 = objc_autoreleasePoolPush();
              v33 = val;
              v34 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v35 = HMFGetLogIdentifier();
                *v114 = 138543618;
                v115 = v35;
                v116 = 2112;
                v117 = v24;
                _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Nil hashed route id for media profile: %@", v114, 0x16u);
              }

              objc_autoreleasePoolPop(v32);
            }
          }

          else
          {
            v28 = objc_autoreleasePoolPush();
            v29 = val;
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = HMFGetLogIdentifier();
              *v114 = 138543618;
              v115 = v31;
              v116 = 2112;
              v117 = v24;
              _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@No hashed route id for media profile: %@", v114, 0x16u);
            }

            objc_autoreleasePoolPop(v28);
          }
        }

        v21 = [obja countByEnumeratingWithState:&v109 objects:buf count:16];
      }

      while (v21);
    }

    v36 = [v87 copy];
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;
  v38 = v84;
  if (!selfCopy)
  {
    goto LABEL_43;
  }

  if ([v37 count])
  {
    playbackStateNumber2 = [v38 playbackStateNumber];
    if (playbackStateNumber2)
    {
    }

    else
    {
      playbackVolumeNumber2 = [v38 playbackVolumeNumber];
      v42 = playbackVolumeNumber2 == 0;

      if (v42)
      {
        v40 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2952];
        goto LABEL_45;
      }
    }

    playbackVolumeNumber3 = [v38 playbackVolumeNumber];
    if (playbackVolumeNumber3)
    {
      playbackVolumeNumber4 = [v38 playbackVolumeNumber];
      [playbackVolumeNumber4 floatValue];
      if (v45 > 100.0)
      {

LABEL_35:
        v40 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2953];
        goto LABEL_45;
      }

      playbackVolumeNumber5 = [v38 playbackVolumeNumber];
      [playbackVolumeNumber5 floatValue];
      v48 = v47 < -0.00000011921;

      if (v48)
      {
        goto LABEL_35;
      }
    }

    playbackStateNumber3 = [v38 playbackStateNumber];
    if (playbackStateNumber3)
    {
      playbackStateNumber4 = [v38 playbackStateNumber];
      if ([playbackStateNumber4 integerValue] == 1)
      {
      }

      else
      {
        playbackStateNumber5 = [v38 playbackStateNumber];
        if ([playbackStateNumber5 integerValue] == 2)
        {
        }

        else
        {
          playbackStateNumber6 = [v38 playbackStateNumber];
          v53 = [playbackStateNumber6 integerValue] == 3;

          if (!v53)
          {
            v40 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2954];
            goto LABEL_45;
          }
        }
      }
    }

LABEL_43:
    v54 = 0;
    goto LABEL_46;
  }

  v40 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2951];
LABEL_45:
  v54 = v40;
LABEL_46:

  if (v54)
  {
    v83[2](v83, v54);
    goto LABEL_65;
  }

  [v81 markWithReason:@"Find Destination"];
  objc_initWeak(buf, val);
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __68__HMDMPCSessionController_executeSessionWithSessionData_completion___block_invoke_2;
  v97[3] = &unk_27868A550;
  objc_copyWeak(&v103, buf);
  v98 = uUID;
  v102 = v83;
  v99 = v81;
  v55 = v38;
  v100 = v55;
  v101 = selfCopy2;
  objb = _Block_copy(v97);
  v56 = @"com.apple.Music";
  playbackArchive2 = [v55 playbackArchive];
  if (playbackArchive2)
  {
    v58 = 1;
  }

  else
  {
    playbackStateNumber7 = [v55 playbackStateNumber];
    v58 = [playbackStateNumber7 integerValue] == 1;
  }

  playbackArchive3 = [v55 playbackArchive];
  v61 = playbackArchive3 == 0;

  if (v61)
  {
    bundleIdentifier2 = 0;
    playbackArchive5 = @"com.apple.Music";
    v65 = 1;
LABEL_56:

    goto LABEL_57;
  }

  playbackArchive4 = [v55 playbackArchive];
  bundleIdentifier = [playbackArchive4 bundleIdentifier];
  v64 = [bundleIdentifier hasPrefix:@"com.apple.Music"];

  if ((v64 & 1) == 0)
  {
    playbackArchive5 = [v55 playbackArchive];
    bundleIdentifier2 = [(__CFString *)playbackArchive5 bundleIdentifier];

    v65 = 2;
    goto LABEL_56;
  }

  v65 = 0;
  bundleIdentifier2 = @"com.apple.Music";
LABEL_57:
  v68 = [HMDMPCResolveDestinationOperation alloc];
  playbackArchive6 = [v55 playbackArchive];
  bundleIdentifier3 = [playbackArchive6 bundleIdentifier];
  v71 = [(HMDMPCResolveDestinationOperation *)v68 initWithHashedRouteIDs:v37 mediaApplicationDestination:v65 mediaApplicationIdentifier:bundleIdentifier3 forceSingleGroup:v58 completion:objb];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  speakerGroupCommandOperationQueue = [(HMDMPCSessionController *)val speakerGroupCommandOperationQueue];
  operations = [speakerGroupCommandOperationQueue operations];

  v74 = [operations countByEnumeratingWithState:&v93 objects:v113 count:16];
  if (v74)
  {
    v75 = *v94;
    do
    {
      for (j = 0; j != v74; ++j)
      {
        if (*v94 != v75)
        {
          objc_enumerationMutation(operations);
        }

        [(HMDMPCResolveDestinationOperation *)v71 addDependency:*(*(&v93 + 1) + 8 * j)];
      }

      v74 = [operations countByEnumeratingWithState:&v93 objects:v113 count:16];
    }

    while (v74);
  }

  speakerGroupCommandOperationQueue2 = [(HMDMPCSessionController *)val speakerGroupCommandOperationQueue];
  [speakerGroupCommandOperationQueue2 addOperation:v71];

  objc_destroyWeak(&v103);
  objc_destroyWeak(buf);
LABEL_65:

  v78 = *MEMORY[0x277D85DE8];
}

uint64_t __68__HMDMPCSessionController_executeSessionWithSessionData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 markWithReason:@"Call completion"];
  v5 = [*(a1 + 40) logEventSubmitter];
  [v5 submitLogEvent:*(a1 + 48) error:v4];

  (*(*(a1 + 56) + 16))();
  v6 = *(a1 + 32);

  return [v6 invalidate];
}

void __68__HMDMPCSessionController_executeSessionWithSessionData_completion___block_invoke_2(id *a1, void *a2)
{
  v79[2] = *MEMORY[0x277D85DE8];
  v61 = a2;
  val = objc_loadWeakRetained(a1 + 9);
  if (v61)
  {
    [a1[5] markWithReason:@"Generate MR Command Operations"];
    v60 = a1;
    v3 = a1 + 6;
    v4 = [a1[6] playbackArchive];
    v5 = [a1[6] playbackVolumeNumber];
    v6 = [*v3 playbackStateNumber];
    v7 = v60[4];
    v59 = v61;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    if (!val)
    {
      v39 = 0;
      goto LABEL_20;
    }

    v11 = MEMORY[0x277CBEB18];
    v12 = v7;
    v13 = [v11 array];
    *aBlock = MEMORY[0x277D85DD0];
    *&aBlock[8] = 3221225472;
    *&aBlock[16] = __138__HMDMPCSessionController_generateMRCommandOperationsForDestination_playbackArchive_playbackVolumeNumber_playbackStateNumber_sessionUUID___block_invoke;
    v66 = &unk_27868A5C0;
    v14 = v13;
    v67 = v14;
    v15 = _Block_copy(aBlock);
    location[0] = *MEMORY[0x277D27CF0];
    v16 = [v12 UUIDString];

    location[1] = *MEMORY[0x277D27CD8];
    *&v68 = v16;
    *(&v68 + 1) = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:location count:2];

    if (v8)
    {
      v18 = [[HMDMPCSendMRCommandOperation alloc] initWithPlaybackArchive:v8 options:v17 destination:v59];
      v15[2](v15, v18);
    }

    if (v9)
    {
      v19 = [HMDMRSetEndpointVolumeOperation alloc];
      v20 = [v59 outputDeviceUIDs];
      v21 = [(HMDMRSetEndpointVolumeOperation *)v19 initWithRouteIDs:v20 volume:v9];

      v15[2](v15, v21);
    }

    if (!v10)
    {
LABEL_19:
      v39 = [v14 copy];

LABEL_20:
      v40 = v60[5];
      v41 = v60[7];
      v42 = v60[8];
      v43 = v39;
      v44 = v41;
      v45 = v40;
      v46 = v42;
      if (val)
      {
        v47 = objc_alloc_init(MEMORY[0x277D0F780]);
        objc_initWeak(location, v47);
        objc_initWeak(&from, val);
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __112__HMDMPCSessionController_createCompletionOperationForMediaRemoteOperations_executionEvent_activity_completion___block_invoke;
        v73 = &unk_27868A578;
        objc_copyWeak(&v78, &from);
        objc_copyWeak(v79, location);
        v74 = v45;
        v48 = v43;
        v75 = v48;
        v77 = v46;
        v76 = v44;
        [v47 addExecutionBlock:buf];
        v49 = v45;
        v50 = v44;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v51 = v48;
        v52 = [v51 countByEnumeratingWithState:&v68 objects:aBlock count:16];
        if (v52)
        {
          v53 = *v69;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v69 != v53)
              {
                objc_enumerationMutation(v51);
              }

              [v47 addDependency:*(*(&v68 + 1) + 8 * i)];
            }

            v52 = [v51 countByEnumeratingWithState:&v68 objects:aBlock count:16];
          }

          while (v52);
        }

        v44 = v50;
        v45 = v49;

        objc_destroyWeak(v79);
        objc_destroyWeak(&v78);
        objc_destroyWeak(&from);
        objc_destroyWeak(location);
      }

      else
      {
        v47 = 0;
      }

      [v60[5] markWithReason:@"Execute MR Commands"];
      v55 = [val speakerGroupCommandOperationQueue];
      [v55 addOperations:v43 waitUntilFinished:0];

      v56 = [val speakerGroupCommandOperationQueue];
      [v56 addOperation:v47];

      goto LABEL_30;
    }

    v22 = [v10 integerValue];
    v23 = v22;
    if ((v22 - 1) >= 3)
    {
      context = objc_autoreleasePoolPush();
      v33 = val;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v35;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        v36 = v35;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Unknown HMMediaPlaybackState: %ld", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v24 = 3;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v24 = dword_22A587F98[v22 - 1];
      if (v8)
      {
LABEL_10:
        v25 = [MEMORY[0x277D27878] nowPlayingApplicationDestination];
LABEL_18:
        v37 = v25;
        v38 = [[HMDMPCSendMRCommandOperation alloc] initWithCommand:v24 options:v17 destination:v25];
        v15[2](v15, v38);

        goto LABEL_19;
      }
    }

    v25 = v59;
    goto LABEL_18;
  }

  v26 = a1;
  v27 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2950 description:@"MPC Session Creation Failed underlyingError:{Unable to resolve destination", 0}];
  v28 = objc_autoreleasePoolPush();
  v29 = val;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    v32 = v26[4];
    *aBlock = 138543618;
    *&aBlock[4] = v31;
    *&aBlock[12] = 2112;
    *&aBlock[14] = v32;
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@MPC Session Creation Failed, Unable to resolve destination for sessionUUID: %@", aBlock, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  (*(v26[8] + 2))();

LABEL_30:
  v57 = *MEMORY[0x277D85DE8];
}

void __112__HMDMPCSessionController_createCompletionOperationForMediaRemoteOperations_executionEvent_activity_completion___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = objc_loadWeakRetained((a1 + 72));
  [*(a1 + 32) markWithReason:@"Pre-Completion"];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    v35 = v3;
    while (2)
    {
      v8 = WeakRetained;
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v11 = [v10 error];

        if (v11)
        {
          v20 = objc_autoreleasePoolPush();
          WeakRetained = v8;
          v21 = v8;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = HMFGetLogIdentifier();
            v24 = [v10 error];
            *buf = 138543874;
            v41 = v23;
            v42 = 2112;
            v43 = v10;
            v44 = 2112;
            v45 = v24;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@MPC Session Creation Failed at Command (%@) : %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
          v25 = *(a1 + 56);
          v26 = [v10 error];
          (*(v25 + 16))(v25, v26);

          v3 = v35;
          [v35 finish];
          goto LABEL_23;
        }

        v12 = v10;
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

        if (v14)
        {
          v15 = [v14 partialExecutionError];

          if (v15)
          {
            v27 = objc_autoreleasePoolPush();
            WeakRetained = v8;
            v28 = v8;
            v29 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = HMFGetLogIdentifier();
              v31 = [v14 partialExecutionError];
              *buf = 138543874;
              v41 = v30;
              v42 = 2112;
              v43 = v14;
              v44 = 2112;
              v45 = v31;
              _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@MPC Session Creation Failed at Command (%@) : partial success %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v27);
            [*(a1 + 48) setDidPartiallySucceed:1];
            v32 = *(a1 + 56);
            v33 = [v14 partialExecutionError];
            (*(v32 + 16))(v32, v33);

            v3 = v35;
            [v35 finish];

LABEL_23:
            goto LABEL_24;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v36 objects:v46 count:16];
      WeakRetained = v8;
      v3 = v35;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = WeakRetained;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v41 = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@MPC Session Created Successfully", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  (*(*(a1 + 56) + 16))();
  [v3 finish];
LABEL_24:

  v34 = *MEMORY[0x277D85DE8];
}

void __138__HMDMPCSessionController_generateMRCommandOperationsForDestination_playbackArchive_playbackVolumeNumber_playbackStateNumber_sessionUUID___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) count])
  {
    v3 = [*(a1 + 32) lastObject];
    [v4 addDependency:v3];
  }

  [*(a1 + 32) addObject:v4];
}

- (HMDMPCSessionController)initWithLogEventSubmitter:(id)submitter
{
  submitterCopy = submitter;
  v11.receiver = self;
  v11.super_class = HMDMPCSessionController;
  v6 = [(HMDMPCSessionController *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(NSOperationQueue *)v7 setName:@"HMDMPCSessionControllerOperationQueue"];
    [(NSOperationQueue *)v7 setMaxConcurrentOperationCount:5];
    [(NSOperationQueue *)v7 setQualityOfService:25];
    speakerGroupCommandOperationQueue = v6->_speakerGroupCommandOperationQueue;
    v6->_speakerGroupCommandOperationQueue = v7;
    v9 = v7;

    objc_storeStrong(&v6->_logEventSubmitter, submitter);
  }

  return v6;
}

@end