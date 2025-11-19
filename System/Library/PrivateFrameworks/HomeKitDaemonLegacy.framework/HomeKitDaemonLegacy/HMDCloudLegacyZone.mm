@interface HMDCloudLegacyZone
+ (void)createLegacyZoneWithName:(id)a3 owner:(id)a4 cacheZone:(id)a5 cloudCache:(id)a6 completion:(id)a7;
- (BOOL)isHomeDataRecordAvailable;
- (BOOL)isHomeDataV3RecordAvailable;
- (BOOL)isMetadataRecordAvailable;
- (CKRecordID)homeDataRecordID;
- (CKRecordID)homeDataV3RecordID;
- (CKRecordID)metadataRecordID;
- (NSUUID)homeDataObjectID;
- (NSUUID)homeDataV3ObjectID;
- (NSUUID)metadataObjectID;
- (id)createCloudRecordWithObjectID:(id)a3 recordName:(id)a4;
- (void)dropCachedRecords;
- (void)setServerChangeToken:(id)a3;
@end

@implementation HMDCloudLegacyZone

- (void)setServerChangeToken:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDCloudLegacyZone;
  [(HMDCloudZone *)&v4 setServerChangeToken:a3];
  [(HMDCloudZone *)self updateCurrentServerChangeToken];
}

- (void)dropCachedRecords
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"84968B22-8974-4102-AAA6-7B9C763A14B5";
  v5[1] = @"BC9706E1-E72E-4152-A2A6-417AD742DC41";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  [(HMDCloudZone *)self deleteCloudRecordNames:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (id)createCloudRecordWithObjectID:(id)a3 recordName:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"457C009B-1DA4-4B71-BD69-93D344A81A8B"];
    v10 = [v6 isEqual:v9];

    if (v10)
    {
      v11 = [HMDCloudLegacyMetadataRecord alloc];
      v12 = @"9C3BF4D1-C7CF-4217-BCD2-0F7E96D5B300";
LABEL_11:
      v20 = [(HMDCloudRecord *)v11 initWithObjectID:v6 recordName:v12 cloudZone:self];
      goto LABEL_24;
    }

    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"ABE49D63-6AE9-4469-A7EF-AC020E0104B3"];
    v17 = [v6 isEqual:v16];

    if (v17)
    {
      v11 = [HMDCloudLegacyHomeDataRecord alloc];
      v12 = @"84968B22-8974-4102-AAA6-7B9C763A14B5";
      goto LABEL_11;
    }

    v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5E034157-5CED-4502-9C16-9428C798883A"];
    v19 = [v6 isEqual:v18];

    if (v19)
    {
      v11 = [HMDCloudLegacyHomeDataVersion3Record alloc];
      v12 = @"BC9706E1-E72E-4152-A2A6-417AD742DC41";
      goto LABEL_11;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v24 = HMFGetLogIdentifier();
    v28 = [v6 UUIDString];
    v31 = 138543618;
    v32 = v24;
    v33 = 2112;
    v34 = v28;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unknown legacy record objectID %@", &v31, 0x16u);

    goto LABEL_19;
  }

  if (!v7)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_20:

      objc_autoreleasePoolPop(v21);
      v20 = 0;
      goto LABEL_24;
    }

    v24 = HMFGetLogIdentifier();
    v31 = 138543362;
    v32 = v24;
    v25 = "%{public}@Either objectID or recordName must be specified for a legacy record";
    v26 = v23;
    v27 = 12;
    goto LABEL_14;
  }

  if (![v7 isEqualToString:@"9C3BF4D1-C7CF-4217-BCD2-0F7E96D5B300"])
  {
    if ([v8 isEqualToString:@"84968B22-8974-4102-AAA6-7B9C763A14B5"])
    {
      v13 = [HMDCloudLegacyHomeDataRecord alloc];
      v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"ABE49D63-6AE9-4469-A7EF-AC020E0104B3"];
      v15 = @"84968B22-8974-4102-AAA6-7B9C763A14B5";
      goto LABEL_23;
    }

    if ([v8 isEqualToString:@"BC9706E1-E72E-4152-A2A6-417AD742DC41"])
    {
      v13 = [HMDCloudLegacyHomeDataVersion3Record alloc];
      v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5E034157-5CED-4502-9C16-9428C798883A"];
      v15 = @"BC9706E1-E72E-4152-A2A6-417AD742DC41";
      goto LABEL_23;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v24 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v24;
    v33 = 2112;
    v34 = v8;
    v25 = "%{public}@Unknown legacy record name %@";
    v26 = v23;
    v27 = 22;
LABEL_14:
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, v25, &v31, v27);
LABEL_19:

    goto LABEL_20;
  }

  v13 = [HMDCloudLegacyMetadataRecord alloc];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"457C009B-1DA4-4B71-BD69-93D344A81A8B"];
  v15 = @"9C3BF4D1-C7CF-4217-BCD2-0F7E96D5B300";
LABEL_23:
  v20 = [(HMDCloudRecord *)v13 initWithObjectID:v14 recordName:v15 cloudZone:self];

LABEL_24:
  v29 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)isHomeDataV3RecordAvailable
{
  v3 = [(HMDCloudLegacyZone *)self homeDataV3ObjectID];
  v4 = [(HMDCloudZone *)self cloudRecordWithObjectID:v3];

  return v4 != 0;
}

- (CKRecordID)homeDataV3RecordID
{
  homeDataV3RecordID = self->_homeDataV3RecordID;
  if (!homeDataV3RecordID)
  {
    v4 = objc_alloc(MEMORY[0x277CBC5D0]);
    v5 = [(HMDCloudZone *)self zone];
    v6 = [v5 zoneID];
    v7 = [v4 initWithRecordName:@"BC9706E1-E72E-4152-A2A6-417AD742DC41" zoneID:v6];
    v8 = self->_homeDataV3RecordID;
    self->_homeDataV3RecordID = v7;

    homeDataV3RecordID = self->_homeDataV3RecordID;
  }

  return homeDataV3RecordID;
}

- (NSUUID)homeDataV3ObjectID
{
  homeDataV3ObjectID = self->_homeDataV3ObjectID;
  if (!homeDataV3ObjectID)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"5E034157-5CED-4502-9C16-9428C798883A"];
    v5 = self->_homeDataV3ObjectID;
    self->_homeDataV3ObjectID = v4;

    homeDataV3ObjectID = self->_homeDataV3ObjectID;
  }

  return homeDataV3ObjectID;
}

- (BOOL)isHomeDataRecordAvailable
{
  v3 = [(HMDCloudLegacyZone *)self homeDataObjectID];
  v4 = [(HMDCloudZone *)self cloudRecordWithObjectID:v3];

  return v4 != 0;
}

- (CKRecordID)homeDataRecordID
{
  homeDataRecordID = self->_homeDataRecordID;
  if (!homeDataRecordID)
  {
    v4 = objc_alloc(MEMORY[0x277CBC5D0]);
    v5 = [(HMDCloudZone *)self zone];
    v6 = [v5 zoneID];
    v7 = [v4 initWithRecordName:@"84968B22-8974-4102-AAA6-7B9C763A14B5" zoneID:v6];
    v8 = self->_homeDataRecordID;
    self->_homeDataRecordID = v7;

    homeDataRecordID = self->_homeDataRecordID;
  }

  return homeDataRecordID;
}

- (NSUUID)homeDataObjectID
{
  homeDataObjectID = self->_homeDataObjectID;
  if (!homeDataObjectID)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"ABE49D63-6AE9-4469-A7EF-AC020E0104B3"];
    v5 = self->_homeDataObjectID;
    self->_homeDataObjectID = v4;

    homeDataObjectID = self->_homeDataObjectID;
  }

  return homeDataObjectID;
}

- (BOOL)isMetadataRecordAvailable
{
  v3 = [(HMDCloudLegacyZone *)self metadataObjectID];
  v4 = [(HMDCloudZone *)self cloudRecordWithObjectID:v3];

  return v4 != 0;
}

- (CKRecordID)metadataRecordID
{
  metadataRecordID = self->_metadataRecordID;
  if (!metadataRecordID)
  {
    v4 = objc_alloc(MEMORY[0x277CBC5D0]);
    v5 = [(HMDCloudZone *)self zone];
    v6 = [v5 zoneID];
    v7 = [v4 initWithRecordName:@"9C3BF4D1-C7CF-4217-BCD2-0F7E96D5B300" zoneID:v6];
    v8 = self->_metadataRecordID;
    self->_metadataRecordID = v7;

    metadataRecordID = self->_metadataRecordID;
  }

  return metadataRecordID;
}

- (NSUUID)metadataObjectID
{
  metadataObjectID = self->_metadataObjectID;
  if (!metadataObjectID)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"457C009B-1DA4-4B71-BD69-93D344A81A8B"];
    v5 = self->_metadataObjectID;
    self->_metadataObjectID = v4;

    metadataObjectID = self->_metadataObjectID;
  }

  return metadataObjectID;
}

+ (void)createLegacyZoneWithName:(id)a3 owner:(id)a4 cacheZone:(id)a5 cloudCache:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [objc_opt_class() zoneRootRecordName];
  v17 = [objc_opt_class() zoneSubscriptionName:v15];
  v18 = objc_opt_class();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__HMDCloudLegacyZone_createLegacyZoneWithName_owner_cacheZone_cloudCache_completion___block_invoke;
  v20[3] = &unk_2797252D0;
  v21 = v11;
  v19 = v11;
  [v18 createZoneWithName:v15 rootRecordName:v16 subscriptionName:v17 owner:v14 cacheZone:v13 cloudCache:v12 completion:v20];
}

void __85__HMDCloudLegacyZone_createLegacyZoneWithName_owner_cacheZone_cloudCache_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (v10)
    {
      v11 = v10;
      v12 = [v10 rootGroup];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __85__HMDCloudLegacyZone_createLegacyZoneWithName_owner_cacheZone_cloudCache_completion___block_invoke_2;
      v13[3] = &unk_279725280;
      v14 = v5;
      v15 = *(a1 + 32);
      [v12 cloudRecordWithName:@"84968B22-8974-4102-AAA6-7B9C763A14B5" completionHandler:v13];

      v7 = 0;
      goto LABEL_9;
    }

    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v7);
  }

LABEL_9:
}

void __85__HMDCloudLegacyZone_createLegacyZoneWithName_owner_cacheZone_cloudCache_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) setRecordsAvailable:v7 != 0];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 32), 0);
  }
}

@end