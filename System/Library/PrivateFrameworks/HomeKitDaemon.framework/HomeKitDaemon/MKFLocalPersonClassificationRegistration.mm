@interface MKFLocalPersonClassificationRegistration
+ (id)fetchPersonClassificationRegistrationForPersonUUID:(id)d settingsModelUUID:(id)iD managedObjectContext:(id)context;
@end

@implementation MKFLocalPersonClassificationRegistration

+ (id)fetchPersonClassificationRegistrationForPersonUUID:(id)d settingsModelUUID:(id)iD managedObjectContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v11 = contextCopy;
  [contextCopy hmd_assertIsExecuting];
  v12 = +[MKFLocalPersonClassificationRegistration fetchRequest];
  iDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) && (%K == %@)", @"personUUID", dCopy, @"settings.modelID", iDCopy];
  [v12 setPredicate:iDCopy];

  v23 = 0;
  v14 = [v11 executeFetchRequest:v12 error:&v23];
  v15 = v23;
  if (v14)
  {
    firstObject = [v14 firstObject];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v25 = v20;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch person classification registration local settings personUUID:%@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    firstObject = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return firstObject;
}

@end