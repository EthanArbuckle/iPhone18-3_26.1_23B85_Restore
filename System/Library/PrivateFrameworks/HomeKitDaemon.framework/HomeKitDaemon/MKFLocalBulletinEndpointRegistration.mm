@interface MKFLocalBulletinEndpointRegistration
+ (id)fetchAllEndpointRegistrationsForAccessoryUUID:(id)d managedObjectContext:(id)context;
+ (id)fetchEndpointRegistrationForAccessoryUUID:(id)d endpointID:(id)iD managedObjectContext:(id)context;
@end

@implementation MKFLocalBulletinEndpointRegistration

+ (id)fetchAllEndpointRegistrationsForAccessoryUUID:(id)d managedObjectContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = contextCopy;
  [contextCopy hmd_assertIsExecuting];
  v9 = +[MKFLocalBulletinEndpointRegistration fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"accessoryModelID", dCopy];
  [v9 setPredicate:dCopy];

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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local endpoint registrations for accessoryUUID: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)fetchEndpointRegistrationForAccessoryUUID:(id)d endpointID:(id)iD managedObjectContext:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  if (!iDCopy)
  {
    goto LABEL_12;
  }

  v11 = contextCopy;
  [contextCopy hmd_assertIsExecuting];
  v12 = +[MKFLocalBulletinEndpointRegistration fetchRequest];
  iDCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@) AND (%K == %@)", @"accessoryModelID", dCopy, @"endpointID", iDCopy];
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
      *buf = 138544130;
      v25 = v20;
      v26 = 2112;
      v27 = dCopy;
      v28 = 2112;
      v29 = iDCopy;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local endpoint registration for accessoryUUID: %@ endpointID: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    firstObject = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return firstObject;
}

@end