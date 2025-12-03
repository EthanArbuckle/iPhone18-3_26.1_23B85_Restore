@interface MKFCKSharedHome
+ (BOOL)exportDeleteWithObjectID:(id)d modelID:(id)iD additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context;
+ (BOOL)importUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
+ (id)createWithModelID:(id)d persistentStore:(id)store context:(id)context;
- (id)createLocalModelWithContext:(id)context;
@end

@implementation MKFCKSharedHome

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
  v53 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v8 = [contextCopy objectWithID:d];
  v9 = contextCopy;
  if (v8)
  {
    modelID = [v8 modelID];
    v11 = [(_MKFModel *)_MKFHome modelWithModelID:modelID context:v9];

    v12 = objc_autoreleasePoolPush();
    v13 = v8;
    v14 = HMFGetOSLogHandle();
    v15 = v14;
    if (!v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v28 = HMFGetLogIdentifier();
        modelID2 = [v13 modelID];
        v43 = 138543874;
        v44 = v28;
        v45 = 2160;
        v46 = 1752392040;
        v47 = 2112;
        v48 = modelID2;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_FAULT, "%{public}@No existing local model for shared home with modelID %{mask.hash}@, skipping update", &v43, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_20;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      modelID3 = [v13 modelID];
      v43 = 138543874;
      v44 = v16;
      v45 = 2160;
      v46 = 1752392040;
      v47 = 2112;
      v48 = modelID3;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Found existing local model for shared home with modelID %{mask.hash}@", &v43, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v18 = +[HMDAccountHandleFormatter defaultFormatter];
    ownerAccountHandle = [v13 ownerAccountHandle];
    v20 = [v18 accountHandleFromString:ownerAccountHandle];

    if (v20)
    {
      owner = [v11 owner];

      if (!owner)
      {
        v36 = objc_autoreleasePoolPush();
        v37 = v13;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          v39 = HMFGetLogIdentifier();
          modelID4 = [v37 modelID];
          v43 = 138543874;
          v44 = v39;
          v45 = 2160;
          v46 = 1752392040;
          v47 = 2112;
          v48 = modelID4;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_FAULT, "%{public}@Local home model with modelID %{mask.hash}@ does not have an owner user", &v43, 0x20u);
        }

        objc_autoreleasePoolPop(v36);
        goto LABEL_19;
      }

      owner2 = [v11 owner];
      accountHandle = [owner2 accountHandle];
      v24 = [accountHandle isEqual:v20];

      if (v24)
      {
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }

      owner3 = [v11 owner];
      v26 = owner3;
      v27 = v20;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v13;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        ownerAccountHandle2 = [v31 ownerAccountHandle];
        modelID5 = [v31 modelID];
        v43 = 138544386;
        v44 = v33;
        v45 = 2160;
        v46 = 1752392040;
        v47 = 2112;
        v48 = ownerAccountHandle2;
        v49 = 2160;
        v50 = 1752392040;
        v51 = 2112;
        v52 = modelID5;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid account handle %{mask.hash}@ found on shared home with model ID %{mask.hash}@", &v43, 0x34u);
      }

      objc_autoreleasePoolPop(v30);
      owner3 = [v11 owner];
      v26 = owner3;
      v27 = 0;
    }

    [owner3 setAccountHandle:v27];

    goto LABEL_19;
  }

LABEL_21:

  v41 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

+ (BOOL)importInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context
{
  v88 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [contextCopy objectWithID:d];
  v8 = contextCopy;
  if (!v7)
  {
    v68 = 0;
    goto LABEL_34;
  }

  modelID = [v7 modelID];
  v10 = [(_MKFModel *)_MKFHome modelWithModelID:modelID context:v8];

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v7;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      modelID2 = [v12 modelID];
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2160;
      *&buf[14] = 1752392040;
      *&buf[22] = 2112;
      v84 = modelID2;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Found existing local home with modelID %{mask.hash}@, skipping insert", buf, 0x20u);
    }
  }

  else
  {
    v16 = [v7 createLocalModelWithContext:v8];
    v17 = v8;
    name = [v7 name];
    [v16 setName:name];

    v19 = v16;
    v20 = v17;
    defaultRoomModelID = [v7 defaultRoomModelID];
    v22 = [(_MKFModel *)_MKFRoom modelWithModelID:defaultRoomModelID context:v20];

    if (v22)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v7;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = HMFGetLogIdentifier();
        modelID3 = [v24 modelID];
        *buf = 138543874;
        *&buf[4] = v26;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v84 = modelID3;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Found existing local room with modelID %{mask.hash}@, skipping insert", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
    }

    else
    {
      v22 = [[_MKFRoom alloc] initWithContext:v20];
      defaultRoomModelID2 = [v7 defaultRoomModelID];
      [(_MKFRoom *)v22 setModelID:defaultRoomModelID2];

      v29 = HMDDefaultRoomName();
      [(_MKFRoom *)v22 setName:v29];

      [(_MKFRoom *)v22 setHome:v19];
      writerTimestamp = [v7 writerTimestamp];
      [(_MKFRoom *)v22 setWriterTimestamp:writerTimestamp];
    }

    defaultRoom = [v19 defaultRoom];
    v32 = HMFEqualObjects();

    if ((v32 & 1) == 0)
    {
      defaultRoom2 = [v19 defaultRoom];

      if (defaultRoom2)
      {
        defaultRoom3 = [v19 defaultRoom];
        [v20 deleteObject:defaultRoom3];
      }

      [v19 setDefaultRoom:v22];
    }

    v10 = v19;
    v35 = v20;
    ownerModelID = [v7 ownerModelID];
    v37 = [(_MKFModel *)_MKFUser modelWithModelID:ownerModelID context:v35];

    if (!v37)
    {
      v37 = [[_MKFUser alloc] initWithContext:v35];
      ownerModelID2 = [v7 ownerModelID];
      [(_MKFUser *)v37 setModelID:ownerModelID2];

      v39 = +[HMDAccountHandleFormatter defaultFormatter];
      ownerAccountHandle = [v7 ownerAccountHandle];
      v41 = [v39 accountHandleFromString:ownerAccountHandle];
      [(_MKFUser *)v37 setAccountHandle:v41];

      [(_MKFUser *)v37 setAnnounceAccessLevel:&unk_283E73220];
      [(_MKFUser *)v37 setCamerasAccessLevel:&unk_283E73220];
      [(_MKFUser *)v37 setRemoteAccessAllowed:MEMORY[0x277CBEC38]];
      [(_MKFUser *)v37 setPrivilege:&unk_283E73238];
      [(_MKFUser *)v37 setHome:v10];
      writerTimestamp2 = [v7 writerTimestamp];
      [(_MKFUser *)v37 setWriterTimestamp:writerTimestamp2];
    }

    owner = [v10 owner];
    v44 = HMFEqualObjects();

    if ((v44 & 1) == 0)
    {
      [v10 setOwner:v37];
    }

    v45 = v35;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__149252;
    v81 = __Block_byref_object_dispose__149253;
    v76 = 0;
    v46 = [_MKFHomeManager fetchWithContext:v45 error:&v76];
    v47 = v76;
    v82 = v46;
    v48 = v78[5];
    if (v48)
    {
      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v75 = 1;
      homes = [v48 homes];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __49__MKFCKSharedHome__importHomeManagerWithContext___block_invoke;
      v71[3] = &unk_27867B6F0;
      v71[4] = v7;
      v71[5] = &v72;
      [homes hmf_enumerateWithAutoreleasePoolUsingBlock:v71];

      if (*(v73 + 24) == 1)
      {
        v50 = [MKFCKHome _homeManagerContextFromContext:v45];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __49__MKFCKSharedHome__importHomeManagerWithContext___block_invoke_2;
        v84 = &unk_27868A4D8;
        v87 = &v77;
        v51 = v50;
        v85 = v51;
        v86 = v7;
        [v51 performBlockAndWait:buf];
      }

      _Block_object_dispose(&v72, 8);
    }

    else
    {
      v52 = objc_autoreleasePoolPush();
      v53 = v7;
      v54 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v55;
        *&buf[12] = 2114;
        *&buf[14] = v47;
        _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch home manager: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v52);
    }

    _Block_object_dispose(&v77, 8);

    if (!v48)
    {
      v68 = 0;
      goto LABEL_33;
    }

    v56 = objc_autoreleasePoolPush();
    v57 = v7;
    v58 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v59;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@Created new model during import: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v56);
    v60 = objc_autoreleasePoolPush();
    v61 = v57;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      v63 = HMFGetLogIdentifier();
      v64 = [v10 debugDescription];
      *buf = 138543618;
      *&buf[4] = v63;
      *&buf[12] = 2112;
      *&buf[14] = v64;
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v60);
    v11 = objc_autoreleasePoolPush();
    v65 = v61;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v66 = HMFGetLogIdentifier();
      v67 = [v65 debugDescription];
      *buf = 138543618;
      *&buf[4] = v66;
      *&buf[12] = 2112;
      *&buf[14] = v67;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@%@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v11);
  v68 = 1;
LABEL_33:

LABEL_34:
  v69 = *MEMORY[0x277D85DE8];
  return v68;
}

void __49__MKFCKSharedHome__importHomeManagerWithContext___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 modelID];
  v8 = [v6 handle];

  v9 = [v8 homeUUID];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void __49__MKFCKSharedHome__importHomeManagerWithContext___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v14 = 0;
  v3 = [_MKFHomeManager fetchWithContext:v2 error:&v14];
  v4 = v14;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!v4)
  {
    v7 = [*(a1 + 40) modelID];
    v8 = [MKFCKHome _homeManagerHomeWithModelID:v7 homeManager:*(*(*(a1 + 48) + 8) + 40) context:*(a1 + 32)];

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Created new home manager home during import: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)createWithModelID:(id)d persistentStore:(id)store context:(id)context
{
  contextCopy = context;
  storeCopy = store;
  dCopy = d;
  v11 = [[self alloc] initWithContext:contextCopy];
  [contextCopy assignObject:v11 toPersistentStore:storeCopy];

  [v11 setModelID:dCopy];

  return v11;
}

- (id)createLocalModelWithContext:(id)context
{
  contextCopy = context;
  v5 = [[_MKFHome alloc] initWithContext:contextCopy];

  [(_MKFHome *)v5 setOwned:MEMORY[0x277CBEC28]];
  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  modelID = [(MKFCKSharedHome *)self modelID];
  [(_MKFHome *)v8 setModelID:modelID];

  writerTimestamp = [(MKFCKSharedHome *)self writerTimestamp];
  [(_MKFHome *)v8 setWriterTimestamp:writerTimestamp];

  v11 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

@end