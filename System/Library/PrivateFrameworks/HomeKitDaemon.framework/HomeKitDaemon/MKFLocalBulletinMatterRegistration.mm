@interface MKFLocalBulletinMatterRegistration
+ (id)fetchAllMatterRegistrationsForEndpointID:(id)a3 accessoryModelID:(id)a4 managedObjectContext:(id)a5;
+ (id)fetchMatterRegistrationForEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 eventID:(id)a6 accessoryModelID:(id)a7 managedObjectContext:(id)a8;
@end

@implementation MKFLocalBulletinMatterRegistration

+ (id)fetchAllMatterRegistrationsForEndpointID:(id)a3 accessoryModelID:(id)a4 managedObjectContext:(id)a5
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
  v12 = +[MKFLocalBulletinMatterRegistration fetchRequest];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) && (%K == %@)", @"endpointID", v8, @"accessoryModelID", v9];
  [v12 setPredicate:v13];

  v23 = 0;
  v14 = [v11 executeFetchRequest:v12 error:&v23];
  v15 = v23;
  if (v14)
  {
    v16 = v14;
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
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local Matter registration for endpointID: %@ accessoryModelID: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)fetchMatterRegistrationForEndpointID:(id)a3 clusterID:(id)a4 attributeID:(id)a5 eventID:(id)a6 accessoryModelID:(id)a7 managedObjectContext:(id)a8
{
  v47 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v15)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!(v16 | v17))
  {
    goto LABEL_16;
  }

  if (!v18)
  {
LABEL_15:
    _HMFPreconditionFailure();
LABEL_16:
    _HMFPreconditionFailure();
  }

  v20 = v19;
  [v19 hmd_assertIsExecuting];
  v21 = +[MKFLocalBulletinMatterRegistration fetchRequest];
  v22 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@) && (%K == %@) && (%K == %@)", @"endpointID", v14, @"clusterID", v15, @"attributeID", v16, @"eventID", v17, @"accessoryModelID", v18];
  [v21 setPredicate:v22];

  v32 = 0;
  v23 = [v20 executeFetchRequest:v21 error:&v32];
  v24 = v32;
  if (v23)
  {
    v25 = [v23 firstObject];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v31 = a1;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138544898;
      v34 = v29;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v15;
      v39 = 2112;
      v40 = v16;
      v41 = 2112;
      v42 = v17;
      v43 = 2112;
      v44 = v18;
      v45 = 2112;
      v46 = v24;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local Matter registration for endpointID: %@ clusterID: %@ attributeID: %@ eventID: %@ accessoryModelID: %@ error: %@", buf, 0x48u);
    }

    objc_autoreleasePoolPop(context);
    v25 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v25;
}

@end