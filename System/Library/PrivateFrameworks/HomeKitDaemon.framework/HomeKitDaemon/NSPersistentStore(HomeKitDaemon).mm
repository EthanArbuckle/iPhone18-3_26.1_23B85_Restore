@interface NSPersistentStore(HomeKitDaemon)
- (id)hmd_deletedModelIDsForEntity:()HomeKitDaemon modelIDKey:duration:context:;
- (id)hmd_tombstonesForEntity:()HomeKitDaemon duration:context:error:;
- (uint64_t)hmd_modelWasDeletedWithID:()HomeKitDaemon modelIDKey:entity:duration:context:;
@end

@implementation NSPersistentStore(HomeKitDaemon)

- (id)hmd_tombstonesForEntity:()HomeKitDaemon duration:context:error:
{
  v10 = a4;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v25 = 0;
  v13 = [(NSPersistentStore *)self _deleteChangesWithDuration:v10 entity:v11 context:&v25 error:a2];
  v14 = v25;
  if (v13)
  {
    v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __83__NSPersistentStore_HomeKitDaemon__hmd_tombstonesForEntity_duration_context_error___block_invoke;
    v23 = &unk_2786749D8;
    v16 = v15;
    v24 = v16;
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:&v20];
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v12);
  if (a6)
  {
    v17 = v14;
    *a6 = v14;
  }

  v18 = [v16 copy];

  return v18;
}

- (id)hmd_deletedModelIDsForEntity:()HomeKitDaemon modelIDKey:duration:context:
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v28 = 0;
  v14 = [(NSPersistentStore *)self _deleteChangesWithDuration:v10 entity:v12 context:&v28 error:a2];
  v15 = v28;
  if (v14)
  {
    v16 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v14, "count")}];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __93__NSPersistentStore_HomeKitDaemon__hmd_deletedModelIDsForEntity_modelIDKey_duration_context___block_invoke;
    v25[3] = &unk_2786829D0;
    v26 = v11;
    v17 = v16;
    v27 = v17;
    [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v25];

    objc_autoreleasePoolPop(v13);
    v18 = [v17 copy];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Deletion history request failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    objc_autoreleasePoolPop(v13);
    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (uint64_t)hmd_modelWasDeletedWithID:()HomeKitDaemon modelIDKey:entity:duration:context:
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v16 = objc_autoreleasePoolPush();
  v32 = 0;
  v17 = [(NSPersistentStore *)self _deleteChangesWithDuration:v14 entity:v15 context:&v32 error:a2];
  v18 = v32;
  if (v17)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __97__NSPersistentStore_HomeKitDaemon__hmd_modelWasDeletedWithID_modelIDKey_entity_duration_context___block_invoke;
    v28[3] = &unk_2786749B0;
    v29 = v13;
    v30 = v12;
    v31 = &v33;
    [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v28];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v26 = v16;
      v21 = HMFGetLogIdentifier();
      name = [v14 name];
      *buf = 138544130;
      v38 = v21;
      v39 = 2112;
      v40 = name;
      v41 = 2112;
      v42 = v12;
      v43 = 2112;
      v44 = v18;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Couldn't determine if <%@: %@> was previously deleted: %@", buf, 0x2Au);

      v16 = v26;
    }

    objc_autoreleasePoolPop(context);
  }

  objc_autoreleasePoolPop(v16);
  if (v17)
  {
    v23 = *(v34 + 24);
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v33, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

@end