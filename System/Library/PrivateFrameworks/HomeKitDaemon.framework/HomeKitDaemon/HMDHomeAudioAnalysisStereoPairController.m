@interface HMDHomeAudioAnalysisStereoPairController
- (HMDHomeAudioAnalysisStereoPairController)init;
- (void)compareOrUpdateRecentAudioAnalysisStereoPairEvent:(id)a3 key:(id)a4 accessory:(id)a5 notificationUUID:(id)a6 window:(unint64_t)a7 completion:(id)a8;
- (void)updateAudioAnalysisStereoPairDetectedEvent:(id)a3 key:(id)a4 accessory:(id)a5 notificationUUID:(id)a6 completion:(id)a7;
@end

@implementation HMDHomeAudioAnalysisStereoPairController

- (void)updateAudioAnalysisStereoPairDetectedEvent:(id)a3 key:(id)a4 accessory:(id)a5 notificationUUID:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[HMAudioAnalysisStereoPairDetectedEvent alloc] initWithEventBulletin:v16 accessory:v14 notificationUUID:v13];

  [(NSMutableDictionary *)self->_audioAnalysisStereoPairDetectedEventsMap setObject:v17 forKeyedSubscript:v15];
  v12[2](v12, 1, v14, v13);
}

- (void)compareOrUpdateRecentAudioAnalysisStereoPairEvent:(id)a3 key:(id)a4 accessory:(id)a5 notificationUUID:(id)a6 window:(unint64_t)a7 completion:(id)a8
{
  v70 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v60 = a5;
  v61 = a6;
  v16 = a8;
  os_unfair_lock_lock_with_options();
  audioAnalysisStereoPairDetectedEventsMap = self->_audioAnalysisStereoPairDetectedEventsMap;
  if (!audioAnalysisStereoPairDetectedEventsMap)
  {
    v18 = objc_opt_new();
    v19 = self->_audioAnalysisStereoPairDetectedEventsMap;
    self->_audioAnalysisStereoPairDetectedEventsMap = v18;

    audioAnalysisStereoPairDetectedEventsMap = self->_audioAnalysisStereoPairDetectedEventsMap;
  }

  v20 = [(NSMutableDictionary *)audioAnalysisStereoPairDetectedEventsMap objectForKeyedSubscript:v15];
  if (v20)
  {
    v21 = [v14 state];
    v22 = [v20 event];
    v23 = [v22 state];

    if (v21 == v23)
    {
      v24 = [v14 accessoryIdentifier];
      v25 = [v20 event];
      v26 = [v25 accessoryIdentifier];
      v27 = [v24 isEqual:v26];

      if (v27)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543874;
          v63 = v31;
          v64 = 2112;
          v65 = v15;
          v66 = 2112;
          v67 = v14;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Adding:%@ event:%@, sequential event from accessory", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v28);
        v32 = [v20 accessory];
        v33 = [v20 notificationUUID];
        [(HMDHomeAudioAnalysisStereoPairController *)v29 updateAudioAnalysisStereoPairDetectedEvent:v14 key:v15 accessory:v32 notificationUUID:v33 completion:v16];
      }

      else
      {
        v44 = [v14 dateOfOccurrence];
        v45 = [v20 event];
        v46 = [v45 dateOfOccurrence];
        [v44 timeIntervalSinceDate:v46];
        v48 = v47;

        if (v48 < 0.0)
        {
          v48 = -v48;
        }

        v49 = objc_autoreleasePoolPush();
        v50 = self;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          v59 = v49;
          v52 = HMFGetLogIdentifier();
          v53 = [MEMORY[0x277CCABB0] numberWithDouble:v48];
          *buf = 138543874;
          v63 = v52;
          v64 = 2112;
          v65 = v53;
          v66 = 2112;
          v67 = v15;
          _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_DEBUG, "%{public}@latency:%@ key:%@", buf, 0x20u);

          v49 = v59;
        }

        objc_autoreleasePoolPop(v49);
        if (v48 < a7)
        {
          (*(v16 + 2))(v16, 0, 0, 0);
          goto LABEL_16;
        }

        v54 = objc_autoreleasePoolPush();
        v55 = v50;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = HMFGetLogIdentifier();
          v58 = [MEMORY[0x277CCABB0] numberWithDouble:v48];
          *buf = 138544130;
          v63 = v57;
          v64 = 2112;
          v65 = v15;
          v66 = 2112;
          v67 = v14;
          v68 = 2112;
          v69 = v58;
          _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Adding:%@ event:%@, latency:%@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v54);
        v32 = [v20 accessory];
        v33 = [v20 notificationUUID];
        [(HMDHomeAudioAnalysisStereoPairController *)v55 updateAudioAnalysisStereoPairDetectedEvent:v14 key:v15 accessory:v32 notificationUUID:v33 completion:v16];
      }
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "state")}];
        *buf = 138544130;
        v63 = v41;
        v64 = 2112;
        v65 = v15;
        v66 = 2112;
        v67 = v14;
        v68 = 2112;
        v69 = v42;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Adding:%@ event:%@, new state:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v38);
      v32 = [v20 accessory];
      v33 = [v20 notificationUUID];
      [(HMDHomeAudioAnalysisStereoPairController *)v39 updateAudioAnalysisStereoPairDetectedEvent:v14 key:v15 accessory:v32 notificationUUID:v33 completion:v16];
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543874;
      v63 = v37;
      v64 = 2112;
      v65 = v15;
      v66 = 2112;
      v67 = v14;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Adding:%@ event:%@, first known event", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
    [(HMDHomeAudioAnalysisStereoPairController *)v35 updateAudioAnalysisStereoPairDetectedEvent:v14 key:v15 accessory:v60 notificationUUID:v61 completion:v16];
  }

LABEL_16:

  os_unfair_lock_unlock(&self->_lock);
  v43 = *MEMORY[0x277D85DE8];
}

- (HMDHomeAudioAnalysisStereoPairController)init
{
  v3.receiver = self;
  v3.super_class = HMDHomeAudioAnalysisStereoPairController;
  result = [(HMDHomeAudioAnalysisStereoPairController *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end