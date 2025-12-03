@interface MKFCKSharedUserAccessorySettings
+ (BOOL)exportDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
+ (id)createWithHomeModelID:(id)d accessoryModelID:(id)iD persistentStore:(id)store context:(id)context;
- (BOOL)_importIntoLocalUserModel:(id)model context:(id)context;
- (BOOL)_importWithContext:(id)context;
- (BOOL)importIntoLocalUserModel:(id)model context:(id)context;
@end

@implementation MKFCKSharedUserAccessorySettings

- (BOOL)_importIntoLocalUserModel:(id)model context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  accessoryModelID = [(MKFCKSharedUserAccessorySettings *)self accessoryModelID];
  v18 = 0;
  v9 = [(_MKFModel *)_MKFAccessory modelWithModelID:accessoryModelID context:contextCopy error:&v18];
  v10 = v18;

  if (v9)
  {
    if ([(MKFCKSharedUserAccessorySettings *)self listeningHistoryEnabled])
    {
      [modelCopy addAccessoriesWithListeningHistoryEnabled_Object:v9];
    }

    else
    {
      [modelCopy removeAccessoriesWithListeningHistoryEnabled_Object:v9];
    }

    if ([(MKFCKSharedUserAccessorySettings *)self mediaContentProfileEnabled])
    {
      [modelCopy addAccessoriesWithMediaContentProfileEnabled_Object:v9];
    }

    else
    {
      [modelCopy removeAccessoriesWithMediaContentProfileEnabled_Object:v9];
    }

    if ([(MKFCKSharedUserAccessorySettings *)self personalRequestsEnabled])
    {
      [modelCopy addAccessoriesWithPersonalRequestsEnabled_Object:v9];
    }

    else
    {
      [modelCopy removeAccessoriesWithPersonalRequestsEnabled_Object:v9];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      accessoryModelID2 = [(MKFCKSharedUserAccessorySettings *)selfCopy accessoryModelID];
      *buf = 138543874;
      v20 = v14;
      v21 = 2160;
      v22 = 1752392040;
      v23 = 2112;
      v24 = accessoryModelID2;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory with modelID %{mask.hash}@, this could be settings for a stale accessory", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_importWithContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  workingStoreHomeMember = [(MKFCKSharedUserData *)self workingStoreHomeMember];
  v6 = workingStoreHomeMember;
  if (!workingStoreHomeMember)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Could not find associated local user model to import shared user accessory settings", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_7;
  }

  castIfMemberIsGuest = [workingStoreHomeMember castIfMemberIsGuest];

  if (castIfMemberIsGuest)
  {
LABEL_7:
    LOBYTE(v9) = 1;
    goto LABEL_8;
  }

  castIfMemberIsUser = [v6 castIfMemberIsUser];
  v9 = [(MKFCKSharedUserAccessorySettings *)self _importIntoLocalUserModel:castIfMemberIsUser context:contextCopy];

LABEL_8:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)importIntoLocalUserModel:(id)model context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v8 = ([modelCopy isOwner] & 1) != 0 || -[MKFCKSharedUserAccessorySettings _importIntoLocalUserModel:context:](self, "_importIntoLocalUserModel:context:", modelCopy, contextCopy);

  return v8;
}

+ (BOOL)exportDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context
{
  dCopy = d;
  iDCopy = iD;
  updatesCopy = updates;
  contextCopy = context;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"%@ is unavailable", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context
{
  dCopy = d;
  propertiesCopy = properties;
  updatesCopy = updates;
  contextCopy = context;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"%@ is unavailable", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

+ (BOOL)exportInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context
{
  dCopy = d;
  updatesCopy = updates;
  contextCopy = context;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"%@ is unavailable", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

+ (BOOL)importUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context
{
  v11 = 0;
  contextCopy = context;
  v8 = [(MKFCKModel *)MKFCKSharedUserAccessorySettings modelWithObjectID:d context:contextCopy error:&v11];
  v9 = [v8 _importWithContext:contextCopy];

  return v9;
}

+ (BOOL)importInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context
{
  v10 = 0;
  contextCopy = context;
  v7 = [(MKFCKModel *)MKFCKSharedUserAccessorySettings modelWithObjectID:d context:contextCopy error:&v10];
  v8 = [v7 _importWithContext:contextCopy];

  return v8;
}

+ (id)createWithHomeModelID:(id)d accessoryModelID:(id)iD persistentStore:(id)store context:(id)context
{
  contextCopy = context;
  storeCopy = store;
  iDCopy = iD;
  dCopy = d;
  [contextCopy hmd_assertIsExecuting];
  v14 = [[self alloc] initWithContext:contextCopy];
  [contextCopy assignObject:v14 toPersistentStore:storeCopy];

  uUID = [MEMORY[0x277CCAD78] UUID];
  [v14 setModelID:uUID];

  [v14 setHomeModelID:dCopy];
  [v14 setAccessoryModelID:iDCopy];

  return v14;
}

@end