@interface MKFLocalBulletinEndpointRegistration
+ (id)fetchAllEndpointRegistrationsForAccessoryUUID:(id)a3 managedObjectContext:(id)a4;
+ (id)fetchEndpointRegistrationForAccessoryUUID:(id)a3 endpointID:(id)a4 managedObjectContext:(id)a5;
@end

@implementation MKFLocalBulletinEndpointRegistration

+ (id)fetchAllEndpointRegistrationsForAccessoryUUID:(id)a3 managedObjectContext:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;
  [v7 hmd_assertIsExecuting];
  v9 = +[MKFLocalBulletinEndpointRegistration fetchRequest];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"accessoryModelID", v6];
  [v9 setPredicate:v10];

  v20 = 0;
  v11 = [v8 executeFetchRequest:v9 error:&v20];
  v12 = v20;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local endpoint registrations for accessoryUUID: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)fetchEndpointRegistrationForAccessoryUUID:(id)a3 endpointID:(id)a4 managedObjectContext:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v11 = v10;
  [v10 hmd_assertIsExecuting];
  v12 = +[MKFLocalBulletinEndpointRegistration fetchRequest];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"accessoryModelID", v8, @"endpointID", v9];
  [v12 setPredicate:v13];

  v23 = 0;
  v14 = [v11 executeFetchRequest:v12 error:&v23];
  v15 = v23;
  if (v14)
  {
    v16 = [v14 firstObject];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      v25 = v20;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local endpoint registration for accessoryUUID: %@ endpointID: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

@end