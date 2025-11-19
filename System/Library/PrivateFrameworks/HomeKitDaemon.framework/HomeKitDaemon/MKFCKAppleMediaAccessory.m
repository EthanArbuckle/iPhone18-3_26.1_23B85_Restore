@interface MKFCKAppleMediaAccessory
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
@end

@implementation MKFCKAppleMediaAccessory

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v25.receiver = self;
  v25.super_class = MKFCKAppleMediaAccessory;
  if ([(MKFCKAccessory *)&v25 exportFromLocalModel:v8 updatedProperties:a4 context:v9])
  {
    v10 = v8;
    v11 = v9;
    v12 = self != 0;
    if (self)
    {
      v13 = [v10 resident];
      if (v13)
      {
        v14 = [(MKFCKModel *)MKFCKResident fetchWithLocalModel:v13 context:v11];
        if (v14)
        {
          v15 = v14;
          v16 = [(MKFCKAppleMediaAccessory *)self resident];

          if (v16 != v15)
          {
            [(MKFCKAppleMediaAccessory *)self setResident:v15];
          }
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            [v10 objectID];
            v21 = v24 = v17;
            *buf = 138543874;
            v27 = v20;
            v28 = 2112;
            v29 = v21;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship yet: %@.resident = %@", buf, 0x20u);

            v17 = v24;
          }

          objc_autoreleasePoolPop(v17);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v27.receiver = self;
  v27.super_class = MKFCKAppleMediaAccessory;
  if ([(MKFCKAccessory *)&v27 importIntoLocalModel:v8 updatedProperties:a4 context:v9])
  {
    v10 = v8;
    v11 = v9;
    v12 = self != 0;
    if (self)
    {
      v13 = [(MKFCKAppleMediaAccessory *)self resident];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 fetchLocalModelWithContext:v11];
        if (v15)
        {
          v16 = [v10 resident];

          if (v16 != v15)
          {
            [v10 setResident:v15];
            v17 = [v10 device];
            if (v17)
            {
              v18 = [v15 device];

              if (v18 != v17)
              {
                [v15 setDevice:v17];
              }
            }
          }
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          v20 = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            [(MKFCKAppleMediaAccessory *)v20 objectID];
            v22 = v25 = v19;
            *buf = 138543874;
            v29 = v26;
            v30 = 2112;
            v31 = v22;
            v32 = 2112;
            v33 = v14;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship yet: %@.resident = %@", buf, 0x20u);

            v19 = v25;
          }

          objc_autoreleasePoolPop(v19);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

@end