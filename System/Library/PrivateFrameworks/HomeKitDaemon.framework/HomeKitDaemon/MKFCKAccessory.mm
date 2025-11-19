@interface MKFCKAccessory
- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5;
- (BOOL)isReadyToImportIntoLocalModelWithContext:(id)a3;
- (id)_localModelForHostAccessoryWithContext:(void *)a1;
- (uint64_t)_shouldIgnoreMoveBackToDefaultRoom:(void *)a3 context:;
- (void)_exportOwnerSettingsFromLocalModel:(void *)a3 context:;
- (void)_importOwnerSettingsIntoLocalModel:(void *)a3 context:;
@end

@implementation MKFCKAccessory

- (void)_importOwnerSettingsIntoLocalModel:(void *)a3 context:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 home];
    v8 = [v7 owner];

    if (!v8)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = a1;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Cannot import owner settings since owner user cloud model is not available yet", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      goto LABEL_22;
    }

    v9 = [v8 fetchLocalModelWithContext:v6];
    if (v9)
    {
      if ([a1 ownerListeningHistoryEnabled])
      {
        [v5 addUsersWithListeningHistoryEnabled_Object:v9];
      }

      else
      {
        [v5 removeUsersWithListeningHistoryEnabledObject:v9];
      }

      if ([a1 ownerMediaContentProfileEnabled])
      {
        [v5 addUsersWithMediaContentProfileEnabled_Object:v9];
      }

      else
      {
        [v5 removeUsersWithMediaContentProfileEnabled_Object:v9];
      }

      if ([a1 ownerPersonalRequestsEnabled])
      {
        [v5 addUsersWithPersonalRequestsEnabled_Object:v9];
      }

      else
      {
        [v5 removeUsersWithPersonalRequestsEnabled_Object:v9];
      }

      v14 = objc_autoreleasePoolPush();
      v18 = a1;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      v17 = HMFGetLogIdentifier();
      v19 = [v5 debugDescription];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Imported owner settings for accessory: %@", &v21, 0x16u);
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = a1;
      v16 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
LABEL_21:

        objc_autoreleasePoolPop(v14);
LABEL_22:

        goto LABEL_23;
      }

      v17 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Cannot import owner settings since owner user local model is not imported yet", &v21, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_23:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_exportOwnerSettingsFromLocalModel:(void *)a3 context:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 home];
    v8 = [v7 owner];
    v9 = [v8 modelID];

    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v5 debugDescription];
      *buf = 138543618;
      v32 = v13;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Exporting owner settings for accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [v5 usersWithListeningHistoryEnabled];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__MKFCKAccessory_Settings___exportOwnerSettingsFromLocalModel_context___block_invoke;
    v29[3] = &unk_278675850;
    v16 = v9;
    v30 = v16;
    v17 = [v15 na_any:v29];

    if (v17 != [v11 ownerListeningHistoryEnabled])
    {
      [v11 setOwnerListeningHistoryEnabled:v17];
    }

    v18 = [v5 usersWithMediaContentProfileEnabled];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__MKFCKAccessory_Settings___exportOwnerSettingsFromLocalModel_context___block_invoke_2;
    v27[3] = &unk_278675850;
    v19 = v16;
    v28 = v19;
    v20 = [v18 na_any:v27];

    if (v20 != [v11 ownerMediaContentProfileEnabled])
    {
      [v11 setOwnerMediaContentProfileEnabled:v20];
    }

    v21 = [v5 usersWithPersonalRequestsEnabled];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __71__MKFCKAccessory_Settings___exportOwnerSettingsFromLocalModel_context___block_invoke_3;
    v25[3] = &unk_278675850;
    v26 = v19;
    v22 = v19;
    v23 = [v21 na_any:v25];

    if (v23 != [v11 ownerPersonalRequestsEnabled])
    {
      [v11 setOwnerPersonalRequestsEnabled:v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __71__MKFCKAccessory_Settings___exportOwnerSettingsFromLocalModel_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 modelID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __71__MKFCKAccessory_Settings___exportOwnerSettingsFromLocalModel_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 modelID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

uint64_t __71__MKFCKAccessory_Settings___exportOwnerSettingsFromLocalModel_context___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 modelID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)exportFromLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if (![(MKFCKModel *)self copyPropertiesFromLocalModel:v7 context:v8])
  {
    goto LABEL_34;
  }

  [(MKFCKAccessory *)self _exportOwnerSettingsFromLocalModel:v7 context:v8];
  v9 = v7;
  v10 = v8;
  v11 = self != 0;
  if (!self)
  {
    goto LABEL_37;
  }

  v12 = [v9 room];
  v13 = [v12 entity];
  v14 = [HMDCoreDataCloudTransform exportTransformableClassFromEntity:v13];

  v15 = [(objc_class *)v14 fetchWithLocalModel:v12 context:v10];
  if (v15)
  {
    v16 = [(MKFCKAccessory *)self room];
    v17 = HMFEqualObjects();

    if ((v17 & 1) == 0)
    {
      [(MKFCKAccessory *)self setRoom:v15];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v21 = v53 = v7;
      [v9 objectID];
      v22 = v54 = v18;
      *buf = 138543874;
      v58 = v21;
      v59 = 2112;
      v60 = v22;
      v61 = 2112;
      v62 = v12;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship yet: %@.room = %@", buf, 0x20u);

      v18 = v54;
      v7 = v53;
    }

    objc_autoreleasePoolPop(v18);
    v11 = self != 0;
  }

  v23 = v9;
  v24 = v10;
  v25 = [v23 hostAccessory];
  if ((v25 != 0) != [(MKFCKAccessory *)self isHosted])
  {
    [(MKFCKAccessory *)self setIsHosted:v25 != 0];
  }

  if (v25)
  {
    v26 = [(MKFCKModel *)MKFCKAccessory fetchWithLocalModel:v25 context:v24];
    if (!v26)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v30 = v56 = v11;
        [v23 objectID];
        v31 = v55 = v27;
        *buf = 138543874;
        v58 = v30;
        v59 = 2112;
        v60 = v31;
        v61 = 2112;
        v62 = v25;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship yet: %@.hostAccessory = %@", buf, 0x20u);

        v27 = v55;
        v11 = v56;
      }

      objc_autoreleasePoolPop(v27);
      v26 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v26 = 0;
  }

  v32 = [(MKFCKAccessory *)self hostAccessory];
  v33 = HMFEqualObjects();

  if ((v33 & 1) == 0)
  {
    [(MKFCKAccessory *)self setHostAccessory:v26];
  }

LABEL_19:
  buf[0] = 1;

  v34 = buf[0];
  if (v34 == 1)
  {
    v35 = v23;
    v36 = v24;
    v37 = [v35 hostedAccessories];

    if (v37)
    {
      v38 = [v35 entity];
      v39 = [v38 relationshipsByName];
      v40 = [v39 objectForKeyedSubscript:@"hostedAccessories_"];

      v41 = [(MKFCKModel *)self relationshipForLocalName:@"hostedAccessories_" localModel:v35];
      [(MKFCKHomeObject *)self _exportSiblingRelationshipsFromLocalModel:v35 localRelationship:v40 cloudRelationship:v41 context:v36];
    }

    v9 = [_MKFApplicationData appDataDictionaryForContainer:v35];
    v42 = [(MKFCKAccessory *)self applicationData];
    v43 = HMFEqualObjects();

    if ((v43 & 1) == 0)
    {
      [(MKFCKAccessory *)self setApplicationData:v9];
    }

    v44 = [(MKFCKAccessory *)self initialCategory];
    if (![v44 unsignedIntegerValue])
    {
      v45 = [v35 initialCategoryIdentifier];
      v46 = [v45 unsignedIntegerValue];

      if (!v46)
      {
        goto LABEL_28;
      }

      v44 = [v35 initialCategoryIdentifier];
      [(MKFCKAccessory *)self setInitialCategory:v44];
    }

LABEL_28:
    v47 = [(MKFCKAccessory *)self initialManufacturer];
    if (!v47)
    {
      v48 = [v35 initialManufacturer];

      if (!v48)
      {
        goto LABEL_32;
      }

      v47 = [v35 initialManufacturer];
      [(MKFCKAccessory *)self setInitialManufacturer:v47];
    }

LABEL_32:
    v49 = [(MKFCKAccessory *)self initialModel];
    if (v49)
    {
      v10 = v49;
    }

    else
    {
      v50 = [v35 initialModel];

      if (!v50)
      {
LABEL_38:

        goto LABEL_39;
      }

      v10 = [v35 initialModel];
      [(MKFCKAccessory *)self setInitialModel:v10];
    }

LABEL_37:

    goto LABEL_38;
  }

LABEL_34:
  v11 = 0;
LABEL_39:

  v51 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)importIntoLocalModel:(id)a3 updatedProperties:(id)a4 context:(id)a5
{
  v79 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(MKFCKModel *)self copyPropertiesIntoLocalModel:v8 context:v10])
  {
    [(MKFCKAccessory *)self _importOwnerSettingsIntoLocalModel:v8 context:v10];
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    if (v9 && ![v9 hmf_isEmpty])
    {
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __65__MKFCKAccessory_importIntoLocalModel_updatedProperties_context___block_invoke;
      v64[3] = &unk_27867E2F0;
      v64[4] = self;
      v65 = v8;
      v66 = v10;
      v67 = &v68;
      [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v64];

      v12 = v69;
    }

    else
    {
      v11 = [(MKFCKAccessory *)self _shouldIgnoreMoveBackToDefaultRoom:v8 context:v10];
      v12 = v69;
      if ((v11 & 1) == 0)
      {
        *(v69 + 24) = 1;
      }
    }

    if (*(v12 + 24) != 1)
    {
      if (self)
      {
LABEL_26:
        v30 = v8;
        v31 = [(MKFCKAccessory *)self _localModelForHostAccessoryWithContext:v10];
        [(MKFCKAccessory *)self isHosted];
        [v30 setHostAccessory:v31];

        v32 = [(MKFCKAccessory *)self applicationData];
        [_MKFApplicationData setAppDataDictionary:v32 forContainer:v30];

        v33 = [(MKFCKAccessory *)self initialCategory];
        v34 = [v30 initialCategoryIdentifier];
        v35 = HMFEqualObjects();

        if ((v35 & 1) == 0)
        {
          [v30 setInitialCategoryIdentifier:v33];
        }

        v36 = [(MKFCKAccessory *)self initialManufacturer];
        v37 = [v30 initialManufacturer];
        v38 = HMFEqualObjects();

        if ((v38 & 1) == 0)
        {
          [v30 setInitialManufacturer:v36];
        }

        v39 = [(MKFCKAccessory *)self initialModel];
        v40 = [v30 initialModel];
        v41 = HMFEqualObjects();

        if ((v41 & 1) == 0)
        {
          [v30 setInitialModel:v39];
        }

        if (![v9 count])
        {
          v42 = [(MKFCKAccessory *)self initialManufacturer];
          if (v42)
          {
            v43 = [v30 manufacturer];
            v44 = v43 == 0;

            if (v44)
            {
              v45 = [(MKFCKAccessory *)self initialManufacturer];
              v46 = [v45 copy];
              [v30 setManufacturer:v46];
            }
          }

          v47 = [(MKFCKAccessory *)self initialModel];
          if (v47)
          {
            v48 = [v30 model];
            v49 = v48 == 0;

            if (v49)
            {
              v50 = [(MKFCKAccessory *)self initialModel];
              v51 = [v50 copy];
              [v30 setModel:v51];
            }
          }

          v52 = [(MKFCKAccessory *)self initialCategory];
          if (v52)
          {
            v53 = [v30 accessoryCategory];
            v54 = v53 == 0;

            if (v54)
            {
              v55 = [(MKFCKAccessory *)self initialCategory];
              v56 = [v55 copy];
              [v30 setAccessoryCategory:v56];
            }
          }
        }

        LOBYTE(self) = 1;
      }

LABEL_48:
      _Block_object_dispose(&v68, 8);
      goto LABEL_49;
    }

    v62 = v8;
    v63 = v10;
    if (!self)
    {

LABEL_47:
      LOBYTE(self) = 0;
      goto LABEL_48;
    }

    v13 = [(MKFCKAccessory *)self room];
    v14 = [(MKFCKAccessory *)self home];
    v61 = [v14 defaultRoom];

    if (!v13)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v74 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill room relationship yet", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = objc_autoreleasePoolPush();
      v20 = v16;
      v21 = HMFGetOSLogHandle();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (!v61)
      {
        if (v22)
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138543362;
          v74 = v57;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Default room also not available", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        v13 = 0;
        v72 = 1;
LABEL_25:

        v29 = v72;
        if (v29)
        {
          goto LABEL_26;
        }

        goto LABEL_47;
      }

      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v74 = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Substituting nil room with default room", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v13 = v61;
    }

    v24 = [v13 fetchLocalModelWithContext:v63];
    if (v24)
    {
      [v62 setRoom:v24];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v62 objectID];
        *buf = 138543874;
        v74 = v27;
        v75 = 2112;
        v76 = v28;
        v77 = 2112;
        v78 = v13;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship yet: %@.room = %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
    }

    v72 = 1;

    goto LABEL_25;
  }

  LOBYTE(self) = 0;
LABEL_49:

  v58 = *MEMORY[0x277D85DE8];
  return self;
}

- (uint64_t)_shouldIgnoreMoveBackToDefaultRoom:(void *)a3 context:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v7 = [a1 room];
  v8 = [a1 home];
  v9 = [v8 defaultRoom];

  v10 = 0;
  if (v7 && v9)
  {
    v11 = [v5 room];

    if (v11)
    {
      v12 = [v9 fetchLocalModelWithContext:v6];
      if (v12)
      {
        v13 = [v5 room];
        if ([v13 isEqual:v12])
        {
        }

        else
        {
          v14 = [v7 isEqual:v9];

          if (v14)
          {
            v15 = objc_autoreleasePoolPush();
            v16 = a1;
            v17 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = HMFGetLogIdentifier();
              v21 = 138543362;
              v22 = v18;
              _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Ignore moving the accessory back to default room", &v21, 0xCu);
            }

            objc_autoreleasePoolPop(v15);
            v10 = 1;
            goto LABEL_14;
          }
        }
      }

      v10 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v10 = 0;
  }

LABEL_15:

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void __65__MKFCKAccessory_importIntoLocalModel_updatedProperties_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"room"];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Room property is dirty", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    if (([(MKFCKAccessory *)*(a1 + 32) _shouldIgnoreMoveBackToDefaultRoom:*(a1 + 48) context:?]& 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    *a3 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_localModelForHostAccessoryWithContext:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 hostAccessory];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 fetchLocalModelWithContext:v3];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isReadyToImportIntoLocalModelWithContext:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MKFCKAccessory *)self isHosted])
  {
    v5 = [(MKFCKAccessory *)self _localModelForHostAccessoryWithContext:v4];
    v6 = v5 != 0;
    if (!v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill host accessory relationship yet", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  else
  {
    v6 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

@end