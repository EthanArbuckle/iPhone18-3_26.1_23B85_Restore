@interface MKFLocalBulletinCameraSignificantEventRegistration
+ (id)fetchCameraSignificantEventRegistrationForAccessoryUUID:(id)d managedObjectContext:(id)context;
@end

@implementation MKFLocalBulletinCameraSignificantEventRegistration

+ (id)fetchCameraSignificantEventRegistrationForAccessoryUUID:(id)d managedObjectContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = contextCopy;
  v9 = +[MKFLocalBulletinCameraSignificantEventRegistration fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"accessoryModelID", dCopy];
  [v9 setPredicate:dCopy];

  v20 = 0;
  v11 = [v8 executeFetchRequest:v9 error:&v20];
  v12 = v20;
  if (v11)
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = dCopy;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local camera significant event registration for accessoryUUID %@, error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    firstObject = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return firstObject;
}

@end