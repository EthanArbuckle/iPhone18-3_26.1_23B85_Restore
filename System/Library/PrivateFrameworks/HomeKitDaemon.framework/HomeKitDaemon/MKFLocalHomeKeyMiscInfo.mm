@interface MKFLocalHomeKeyMiscInfo
+ (BOOL)doMultipleHomeKeyMiscInfoExistWithHomeUUID:(id)d managedObjectContext:(id)context;
+ (id)fetchLocalHomeKeyMiscInfoWithHomeUUID:(id)d managedObjectContext:(id)context;
@end

@implementation MKFLocalHomeKeyMiscInfo

+ (id)fetchLocalHomeKeyMiscInfoWithHomeUUID:(id)d managedObjectContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
  }

  v8 = contextCopy;
  v9 = +[MKFLocalHomeKeyMiscInfo fetchRequest];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"homeUUID", dCopy];
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch LocalHomeKeyMiscInfo setting with homeUUID: %@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    firstObject = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (BOOL)doMultipleHomeKeyMiscInfoExistWithHomeUUID:(id)d managedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  if (dCopy)
  {
    v7 = contextCopy;
    v8 = +[MKFLocalHomeKeyMiscInfo fetchRequest];
    dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K == %@)", @"homeUUID", dCopy];
    [v8 setPredicate:dCopy];

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