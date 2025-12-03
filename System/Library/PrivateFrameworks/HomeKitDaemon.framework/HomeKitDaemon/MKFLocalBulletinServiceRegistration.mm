@interface MKFLocalBulletinServiceRegistration
+ (id)fetchServiceRegistrationForAccessoryUUID:(id)d serviceInstanceID:(id)iD managedObjectContext:(id)context;
@end

@implementation MKFLocalBulletinServiceRegistration

+ (id)fetchServiceRegistrationForAccessoryUUID:(id)d serviceInstanceID:(id)iD managedObjectContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v11 = contextCopy;
  v12 = +[MKFLocalBulletinServiceRegistration fetchRequest];
  v13 = MEMORY[0x277CCAC30];
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(iDCopy, "longLongValue")}];
  v15 = HAPInstanceIDFromValue();
  v16 = [v13 predicateWithFormat:@"(%K == %@) AND (%K == %@ OR %K == %@)", @"accessoryModelID", dCopy, @"serviceInstanceID", v14, @"serviceInstanceID", v15];
  [v12 setPredicate:v16];

  v26 = 0;
  v17 = [v11 executeFetchRequest:v12 error:&v26];
  v18 = v26;
  if (v17)
  {
    firstObject = [v17 firstObject];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138544130;
      v28 = v23;
      v29 = 2112;
      v30 = dCopy;
      v31 = 2112;
      v32 = iDCopy;
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local service registration for accessoryUUID: %@, serviceInstanceID: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    firstObject = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return firstObject;
}

@end