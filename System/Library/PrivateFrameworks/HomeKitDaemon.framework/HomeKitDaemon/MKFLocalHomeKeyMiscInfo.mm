@interface MKFLocalHomeKeyMiscInfo
+ (BOOL)doMultipleHomeKeyMiscInfoExistWithHomeUUID:(id)a3 managedObjectContext:(id)a4;
+ (id)fetchLocalHomeKeyMiscInfoWithHomeUUID:(id)a3 managedObjectContext:(id)a4;
@end

@implementation MKFLocalHomeKeyMiscInfo

+ (id)fetchLocalHomeKeyMiscInfoWithHomeUUID:(id)a3 managedObjectContext:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;
  v9 = +[MKFLocalHomeKeyMiscInfo fetchRequest];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"homeUUID", v6];
  [v9 setPredicate:v10];

  v20 = 0;
  v11 = [v8 executeFetchRequest:v9 error:&v20];
  v12 = v20;
  if (v11)
  {
    v13 = [v11 firstObject];
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch LocalHomeKeyMiscInfo setting with homeUUID: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)doMultipleHomeKeyMiscInfoExistWithHomeUUID:(id)a3 managedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = v6;
    v8 = +[MKFLocalHomeKeyMiscInfo fetchRequest];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"homeUUID", v5];
    [v8 setPredicate:v9];

    v15 = 0;
    v10 = [v7 executeFetchRequest:v8 error:&v15];
    v11 = [v10 count] > 1;

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    [(HMDHAPAccessory *)v13 _destroyDiagnosticsManager];
  }

  return result;
}

@end