@interface MKFLocalPersonClassificationRegistration
+ (id)fetchPersonClassificationRegistrationForPersonUUID:(id)a3 settingsModelUUID:(id)a4 managedObjectContext:(id)a5;
@end

@implementation MKFLocalPersonClassificationRegistration

+ (id)fetchPersonClassificationRegistrationForPersonUUID:(id)a3 settingsModelUUID:(id)a4 managedObjectContext:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
  }

  v11 = v10;
  [v10 hmd_assertIsExecuting];
  v12 = +[MKFLocalPersonClassificationRegistration fetchRequest];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) && (%K == %@)", @"personUUID", v8, @"settings.modelID", v9];
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
      *buf = 138543874;
      v25 = v20;
      v26 = 2112;
      v27 = v8;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch person classification registration local settings personUUID:%@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

@end