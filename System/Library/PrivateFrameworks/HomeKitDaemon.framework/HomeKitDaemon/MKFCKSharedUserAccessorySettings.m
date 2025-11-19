@interface MKFCKSharedUserAccessorySettings
+ (BOOL)exportDeleteWithObjectID:(id)a3 modelID:(id)a4 additionalUpdates:(id)a5 context:(id)a6;
+ (BOOL)exportInsertWithObjectID:(id)a3 additionalUpdates:(id)a4 context:(id)a5;
+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6;
+ (BOOL)importInsertWithObjectID:(id)a3 additionalUpdates:(id)a4 context:(id)a5;
+ (BOOL)importUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6;
+ (id)createWithHomeModelID:(id)a3 accessoryModelID:(id)a4 persistentStore:(id)a5 context:(id)a6;
- (BOOL)_importIntoLocalUserModel:(id)a3 context:(id)a4;
- (BOOL)_importWithContext:(id)a3;
- (BOOL)importIntoLocalUserModel:(id)a3 context:(id)a4;
@end

@implementation MKFCKSharedUserAccessorySettings

- (BOOL)_importIntoLocalUserModel:(id)a3 context:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MKFCKSharedUserAccessorySettings *)self accessoryModelID];
  v18 = 0;
  v9 = [(_MKFModel *)_MKFAccessory modelWithModelID:v8 context:v7 error:&v18];
  v10 = v18;

  if (v9)
  {
    if ([(MKFCKSharedUserAccessorySettings *)self listeningHistoryEnabled])
    {
      [v6 addAccessoriesWithListeningHistoryEnabled_Object:v9];
    }

    else
    {
      [v6 removeAccessoriesWithListeningHistoryEnabled_Object:v9];
    }

    if ([(MKFCKSharedUserAccessorySettings *)self mediaContentProfileEnabled])
    {
      [v6 addAccessoriesWithMediaContentProfileEnabled_Object:v9];
    }

    else
    {
      [v6 removeAccessoriesWithMediaContentProfileEnabled_Object:v9];
    }

    if ([(MKFCKSharedUserAccessorySettings *)self personalRequestsEnabled])
    {
      [v6 addAccessoriesWithPersonalRequestsEnabled_Object:v9];
    }

    else
    {
      [v6 removeAccessoriesWithPersonalRequestsEnabled_Object:v9];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(MKFCKSharedUserAccessorySettings *)v12 accessoryModelID];
      *buf = 138543874;
      v20 = v14;
      v21 = 2160;
      v22 = 1752392040;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory with modelID %{mask.hash}@, this could be settings for a stale accessory", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_importWithContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MKFCKSharedUserData *)self workingStoreHomeMember];
  v6 = v5;
  if (!v5)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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

  v7 = [v5 castIfMemberIsGuest];

  if (v7)
  {
LABEL_7:
    LOBYTE(v9) = 1;
    goto LABEL_8;
  }

  v8 = [v6 castIfMemberIsUser];
  v9 = [(MKFCKSharedUserAccessorySettings *)self _importIntoLocalUserModel:v8 context:v4];

LABEL_8:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)importIntoLocalUserModel:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ([v6 isOwner] & 1) != 0 || -[MKFCKSharedUserAccessorySettings _importIntoLocalUserModel:context:](self, "_importIntoLocalUserModel:context:", v6, v7);

  return v8;
}

+ (BOOL)exportDeleteWithObjectID:(id)a3 modelID:(id)a4 additionalUpdates:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"%@ is unavailable", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CBEAD8];
  v15 = *MEMORY[0x277CBE658];
  v16 = MEMORY[0x277CCACA8];
  v17 = NSStringFromSelector(a2);
  v18 = [v16 stringWithFormat:@"%@ is unavailable", v17];
  v19 = [v14 exceptionWithName:v15 reason:v18 userInfo:0];
  v20 = v19;

  objc_exception_throw(v19);
}

+ (BOOL)exportInsertWithObjectID:(id)a3 additionalUpdates:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"%@ is unavailable", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

+ (BOOL)importUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6
{
  v11 = 0;
  v7 = a6;
  v8 = [(MKFCKModel *)MKFCKSharedUserAccessorySettings modelWithObjectID:a3 context:v7 error:&v11];
  v9 = [v8 _importWithContext:v7];

  return v9;
}

+ (BOOL)importInsertWithObjectID:(id)a3 additionalUpdates:(id)a4 context:(id)a5
{
  v10 = 0;
  v6 = a5;
  v7 = [(MKFCKModel *)MKFCKSharedUserAccessorySettings modelWithObjectID:a3 context:v6 error:&v10];
  v8 = [v7 _importWithContext:v6];

  return v8;
}

+ (id)createWithHomeModelID:(id)a3 accessoryModelID:(id)a4 persistentStore:(id)a5 context:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [v10 hmd_assertIsExecuting];
  v14 = [[a1 alloc] initWithContext:v10];
  [v10 assignObject:v14 toPersistentStore:v11];

  v15 = [MEMORY[0x277CCAD78] UUID];
  [v14 setModelID:v15];

  [v14 setHomeModelID:v13];
  [v14 setAccessoryModelID:v12];

  return v14;
}

@end