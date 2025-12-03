@interface MKFCKAppleMediaAccessory
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
@end

@implementation MKFCKAppleMediaAccessory

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = MKFCKAppleMediaAccessory;
  if ([(MKFCKAccessory *)&v25 exportFromLocalModel:modelCopy updatedProperties:properties context:contextCopy])
  {
    v10 = modelCopy;
    v11 = contextCopy;
    v12 = self != 0;
    if (self)
    {
      resident = [v10 resident];
      if (resident)
      {
        v14 = [(MKFCKModel *)MKFCKResident fetchWithLocalModel:resident context:v11];
        if (v14)
        {
          v15 = v14;
          resident2 = [(MKFCKAppleMediaAccessory *)self resident];

          if (resident2 != v15)
          {
            [(MKFCKAppleMediaAccessory *)self setResident:v15];
          }
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
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
            v31 = resident;
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

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = MKFCKAppleMediaAccessory;
  if ([(MKFCKAccessory *)&v27 importIntoLocalModel:modelCopy updatedProperties:properties context:contextCopy])
  {
    v10 = modelCopy;
    v11 = contextCopy;
    v12 = self != 0;
    if (self)
    {
      resident = [(MKFCKAppleMediaAccessory *)self resident];
      v14 = resident;
      if (resident)
      {
        v15 = [resident fetchLocalModelWithContext:v11];
        if (v15)
        {
          resident2 = [v10 resident];

          if (resident2 != v15)
          {
            [v10 setResident:v15];
            device = [v10 device];
            if (device)
            {
              device2 = [v15 device];

              if (device2 != device)
              {
                [v15 setDevice:device];
              }
            }
          }
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          selfCopy = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            [(MKFCKAppleMediaAccessory *)selfCopy objectID];
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