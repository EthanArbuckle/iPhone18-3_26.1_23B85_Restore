@interface MKFLocalBulletinServiceRegistration
+ (id)fetchServiceRegistrationForAccessoryUUID:(id)a3 serviceInstanceID:(id)a4 managedObjectContext:(id)a5;
@end

@implementation MKFLocalBulletinServiceRegistration

+ (id)fetchServiceRegistrationForAccessoryUUID:(id)a3 serviceInstanceID:(id)a4 managedObjectContext:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
  }

  v11 = v10;
  v12 = +[MKFLocalBulletinServiceRegistration fetchRequest];
  v13 = MEMORY[0x277CCAC30];
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v9, "longLongValue")}];
  v15 = HAPInstanceIDFromValue();
  v16 = [v13 predicateWithFormat:@"(%K == %@) AND (%K == %@ OR %K == %@)", @"accessoryModelID", v8, @"serviceInstanceID", v14, @"serviceInstanceID", v15];
  [v12 setPredicate:v16];

  v26 = 0;
  v17 = [v11 executeFetchRequest:v12 error:&v26];
  v18 = v26;
  if (v17)
  {
    v19 = [v17 firstObject];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138544130;
      v28 = v23;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local service registration for accessoryUUID: %@, serviceInstanceID: %@ error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

@end