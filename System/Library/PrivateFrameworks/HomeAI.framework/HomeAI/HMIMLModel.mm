@interface HMIMLModel
- (BOOL)_ensureModelWithError:(id *)a3;
- (HMIMLModel)initWithModelURL:(id)a3;
- (MLModel)underlyingModel;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMIMLModel

- (HMIMLModel)initWithModelURL:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMIMLModel;
  v6 = [(HMIMLModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelURL, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:30.0];
    watchdogTimer = v7->_watchdogTimer;
    v7->_watchdogTimer = v8;

    [(HMFTimer *)v7->_watchdogTimer setDelegate:v7];
  }

  return v7;
}

- (MLModel)underlyingModel
{
  v3 = [(HMIMLModel *)self _ensureModelWithError:0];
  v4 = 0;
  if (v3)
  {
    v4 = [(HMIMLModel *)self model];
  }

  return v4;
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(HMIMLModel *)self _ensureModelWithError:a4])
  {
    os_unfair_lock_lock_with_options();
    v7 = [(HMIMLModel *)self model];
    v8 = [v7 predictionFromFeatures:v6 error:a4];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_ensureModelWithError:(id *)a3
{
  os_unfair_lock_lock_with_options();
  v5 = [(HMIMLModel *)self model];

  if (v5)
  {
    v6 = [(HMIMLModel *)self watchdogTimer];
    [v6 resume];

    v7 = 1;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBFF38]);
    v9 = +[HMIPreference sharedInstance];
    v10 = [v9 usesCPUOnly];

    if (v10)
    {
      [v8 setComputeUnits:0];
    }

    else
    {
      v11 = +[HMIPreference sharedInstance];
      [v8 setAllowBackgroundGPUCompute:{objc_msgSend(v11, "BOOLPreferenceForKey:defaultValue:", @"espressoLowPriority", 1)}];
    }

    v12 = MEMORY[0x277CBFF20];
    v13 = [(HMIMLModel *)self modelURL];
    v26 = 0;
    v14 = [v12 modelWithContentsOfURL:v13 configuration:v8 error:&v26];
    v15 = v26;
    [(HMIMLModel *)self setModel:v14];

    v16 = [(HMIMLModel *)self model];
    v7 = v16 != 0;

    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"HMIMLModel"];
      [(HMIMLModel *)self setTransaction:v17];

      v18 = [(HMIMLModel *)self watchdogTimer];
      [v18 resume];
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [(HMIMLModel *)self modelURL];
      v21 = [v20 path];
      v18 = [v19 stringWithFormat:@"Failed to load model at path: %@", v21];

      v22 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1018 description:v18 underlyingError:v15];
      v23 = v22;
      if (a3)
      {
        v24 = v22;
        *a3 = v23;
      }

      HMIErrorLog(self, v23);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (void)timerDidFire:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMIMLModel *)v7 modelURL];
    v11 = [v10 path];
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_22D12F000, v8, OS_LOG_TYPE_INFO, "%{public}@Unloading model at path %@ after period of inactivity", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [(HMIMLModel *)v7 setModel:0];
  [(HMIMLModel *)v7 setTransaction:0];
  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v5);
}

@end