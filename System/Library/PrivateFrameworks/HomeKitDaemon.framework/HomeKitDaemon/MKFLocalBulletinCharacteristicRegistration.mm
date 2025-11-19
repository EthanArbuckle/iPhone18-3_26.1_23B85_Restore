@interface MKFLocalBulletinCharacteristicRegistration
+ (id)fetchCharacteristicRegistrationForAccessoryUUID:(id)a3 serviceInstanceID:(id)a4 characteristicInstanceID:(id)a5 managedObjectContext:(id)a6;
@end

@implementation MKFLocalBulletinCharacteristicRegistration

+ (id)fetchCharacteristicRegistrationForAccessoryUUID:(id)a3 serviceInstanceID:(id)a4 characteristicInstanceID:(id)a5 managedObjectContext:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v11)
  {
LABEL_13:
    _HMFPreconditionFailure();
LABEL_14:
    _HMFPreconditionFailure();
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v31 = a1;
  v15 = +[MKFLocalBulletinCharacteristicRegistration fetchRequest];
  v16 = MEMORY[0x277CCAC30];
  v17 = HAPInstanceIDFromValue();
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "longLongValue")}];
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v12, "longLongValue")}];
  v20 = HAPInstanceIDFromValue();
  v21 = [v16 predicateWithFormat:@"(%K == %@) AND (%K == %@ OR %@ == %@) AND (%K == %@ OR %@ == %@)", @"accessoryModelID", v10, @"serviceInstanceID", v17, @"serviceInstanceID", v18, @"characteristicInstanceID", v19, @"characteristicInstanceID", v20];
  [v15 setPredicate:v21];

  v33 = 0;
  v22 = [v14 executeFetchRequest:v15 error:&v33];
  v23 = v33;
  if (v22)
  {
    v24 = [v22 firstObject];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v31;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v28 = v32 = v25;
      *buf = 138544386;
      v35 = v28;
      v36 = 2112;
      v37 = v10;
      v38 = 2112;
      v39 = v11;
      v40 = 2112;
      v41 = v12;
      v42 = 2112;
      v43 = v23;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch local characteristic bulletin registration with accessoryUUID %@: serviceInstanceID: %@ characteristicInstanceID: %@ error: %@", buf, 0x34u);

      v25 = v32;
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

@end