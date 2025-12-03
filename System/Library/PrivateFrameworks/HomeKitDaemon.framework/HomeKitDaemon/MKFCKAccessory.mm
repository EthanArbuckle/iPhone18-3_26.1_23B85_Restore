@interface MKFCKAccessory
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)isReadyToImportIntoLocalModelWithContext:(id)context;
- (id)_localModelForHostAccessoryWithContext:(void *)context;
- (uint64_t)_shouldIgnoreMoveBackToDefaultRoom:(void *)room context:;
- (void)_exportOwnerSettingsFromLocalModel:(void *)model context:;
- (void)_importOwnerSettingsIntoLocalModel:(void *)model context:;
@end

@implementation MKFCKAccessory

- (void)_importOwnerSettingsIntoLocalModel:(void *)model context:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  modelCopy = model;
  if (self)
  {
    home = [self home];
    owner = [home owner];

    if (!owner)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
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

    v9 = [owner fetchLocalModelWithContext:modelCopy];
    if (v9)
    {
      if ([self ownerListeningHistoryEnabled])
      {
        [v5 addUsersWithListeningHistoryEnabled_Object:v9];
      }

      else
      {
        [v5 removeUsersWithListeningHistoryEnabledObject:v9];
      }

      if ([self ownerMediaContentProfileEnabled])
      {
        [v5 addUsersWithMediaContentProfileEnabled_Object:v9];
      }

      else
      {
        [v5 removeUsersWithMediaContentProfileEnabled_Object:v9];
      }

      if ([self ownerPersonalRequestsEnabled])
      {
        [v5 addUsersWithPersonalRequestsEnabled_Object:v9];
      }

      else
      {
        [v5 removeUsersWithPersonalRequestsEnabled_Object:v9];
      }

      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
      selfCopy3 = self;
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

- (void)_exportOwnerSettingsFromLocalModel:(void *)model context:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  modelCopy = model;
  if (self)
  {
    home = [v5 home];
    owner = [home owner];
    modelID = [owner modelID];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    usersWithListeningHistoryEnabled = [v5 usersWithListeningHistoryEnabled];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__MKFCKAccessory_Settings___exportOwnerSettingsFromLocalModel_context___block_invoke;
    v29[3] = &unk_278675850;
    v16 = modelID;
    v30 = v16;
    v17 = [usersWithListeningHistoryEnabled na_any:v29];

    if (v17 != [selfCopy ownerListeningHistoryEnabled])
    {
      [selfCopy setOwnerListeningHistoryEnabled:v17];
    }

    usersWithMediaContentProfileEnabled = [v5 usersWithMediaContentProfileEnabled];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__MKFCKAccessory_Settings___exportOwnerSettingsFromLocalModel_context___block_invoke_2;
    v27[3] = &unk_278675850;
    v19 = v16;
    v28 = v19;
    v20 = [usersWithMediaContentProfileEnabled na_any:v27];

    if (v20 != [selfCopy ownerMediaContentProfileEnabled])
    {
      [selfCopy setOwnerMediaContentProfileEnabled:v20];
    }

    usersWithPersonalRequestsEnabled = [v5 usersWithPersonalRequestsEnabled];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __71__MKFCKAccessory_Settings___exportOwnerSettingsFromLocalModel_context___block_invoke_3;
    v25[3] = &unk_278675850;
    v26 = v19;
    v22 = v19;
    v23 = [usersWithPersonalRequestsEnabled na_any:v25];

    if (v23 != [selfCopy ownerPersonalRequestsEnabled])
    {
      [selfCopy setOwnerPersonalRequestsEnabled:v23];
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

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v63 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contextCopy = context;
  if (![(MKFCKModel *)self copyPropertiesFromLocalModel:modelCopy context:contextCopy])
  {
    goto LABEL_34;
  }

  [(MKFCKAccessory *)self _exportOwnerSettingsFromLocalModel:modelCopy context:contextCopy];
  v9 = modelCopy;
  initialModel3 = contextCopy;
  v11 = self != 0;
  if (!self)
  {
    goto LABEL_37;
  }

  room = [v9 room];
  entity = [room entity];
  v14 = [HMDCoreDataCloudTransform exportTransformableClassFromEntity:entity];

  v15 = [(objc_class *)v14 fetchWithLocalModel:room context:initialModel3];
  if (v15)
  {
    room2 = [(MKFCKAccessory *)self room];
    v17 = HMFEqualObjects();

    if ((v17 & 1) == 0)
    {
      [(MKFCKAccessory *)self setRoom:v15];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v21 = v53 = modelCopy;
      [v9 objectID];
      v22 = v54 = v18;
      *buf = 138543874;
      v58 = v21;
      v59 = 2112;
      v60 = v22;
      v61 = 2112;
      v62 = room;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Cannot fulfill relationship yet: %@.room = %@", buf, 0x20u);

      v18 = v54;
      modelCopy = v53;
    }

    objc_autoreleasePoolPop(v18);
    v11 = self != 0;
  }

  v23 = v9;
  v24 = initialModel3;
  hostAccessory = [v23 hostAccessory];
  if ((hostAccessory != 0) != [(MKFCKAccessory *)self isHosted])
  {
    [(MKFCKAccessory *)self setIsHosted:hostAccessory != 0];
  }

  if (hostAccessory)
  {
    v26 = [(MKFCKModel *)MKFCKAccessory fetchWithLocalModel:hostAccessory context:v24];
    if (!v26)
    {
      v27 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
        v62 = hostAccessory;
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

  hostAccessory2 = [(MKFCKAccessory *)self hostAccessory];
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
    hostedAccessories = [v35 hostedAccessories];

    if (hostedAccessories)
    {
      entity2 = [v35 entity];
      relationshipsByName = [entity2 relationshipsByName];
      v40 = [relationshipsByName objectForKeyedSubscript:@"hostedAccessories_"];

      v41 = [(MKFCKModel *)self relationshipForLocalName:@"hostedAccessories_" localModel:v35];
      [(MKFCKHomeObject *)self _exportSiblingRelationshipsFromLocalModel:v35 localRelationship:v40 cloudRelationship:v41 context:v36];
    }

    v9 = [_MKFApplicationData appDataDictionaryForContainer:v35];
    applicationData = [(MKFCKAccessory *)self applicationData];
    v43 = HMFEqualObjects();

    if ((v43 & 1) == 0)
    {
      [(MKFCKAccessory *)self setApplicationData:v9];
    }

    initialCategory = [(MKFCKAccessory *)self initialCategory];
    if (![initialCategory unsignedIntegerValue])
    {
      initialCategoryIdentifier = [v35 initialCategoryIdentifier];
      unsignedIntegerValue = [initialCategoryIdentifier unsignedIntegerValue];

      if (!unsignedIntegerValue)
      {
        goto LABEL_28;
      }

      initialCategory = [v35 initialCategoryIdentifier];
      [(MKFCKAccessory *)self setInitialCategory:initialCategory];
    }

LABEL_28:
    initialManufacturer = [(MKFCKAccessory *)self initialManufacturer];
    if (!initialManufacturer)
    {
      initialManufacturer2 = [v35 initialManufacturer];

      if (!initialManufacturer2)
      {
        goto LABEL_32;
      }

      initialManufacturer = [v35 initialManufacturer];
      [(MKFCKAccessory *)self setInitialManufacturer:initialManufacturer];
    }

LABEL_32:
    initialModel = [(MKFCKAccessory *)self initialModel];
    if (initialModel)
    {
      initialModel3 = initialModel;
    }

    else
    {
      initialModel2 = [v35 initialModel];

      if (!initialModel2)
      {
LABEL_38:

        goto LABEL_39;
      }

      initialModel3 = [v35 initialModel];
      [(MKFCKAccessory *)self setInitialModel:initialModel3];
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

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v79 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  if ([(MKFCKModel *)self copyPropertiesIntoLocalModel:modelCopy context:contextCopy])
  {
    [(MKFCKAccessory *)self _importOwnerSettingsIntoLocalModel:modelCopy context:contextCopy];
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    if (propertiesCopy && ![propertiesCopy hmf_isEmpty])
    {
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __65__MKFCKAccessory_importIntoLocalModel_updatedProperties_context___block_invoke;
      v64[3] = &unk_27867E2F0;
      v64[4] = self;
      v65 = modelCopy;
      v66 = contextCopy;
      v67 = &v68;
      [propertiesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v64];

      v12 = v69;
    }

    else
    {
      v11 = [(MKFCKAccessory *)self _shouldIgnoreMoveBackToDefaultRoom:modelCopy context:contextCopy];
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
        v30 = modelCopy;
        v31 = [(MKFCKAccessory *)self _localModelForHostAccessoryWithContext:contextCopy];
        [(MKFCKAccessory *)self isHosted];
        [v30 setHostAccessory:v31];

        applicationData = [(MKFCKAccessory *)self applicationData];
        [_MKFApplicationData setAppDataDictionary:applicationData forContainer:v30];

        initialCategory = [(MKFCKAccessory *)self initialCategory];
        initialCategoryIdentifier = [v30 initialCategoryIdentifier];
        v35 = HMFEqualObjects();

        if ((v35 & 1) == 0)
        {
          [v30 setInitialCategoryIdentifier:initialCategory];
        }

        initialManufacturer = [(MKFCKAccessory *)self initialManufacturer];
        initialManufacturer2 = [v30 initialManufacturer];
        v38 = HMFEqualObjects();

        if ((v38 & 1) == 0)
        {
          [v30 setInitialManufacturer:initialManufacturer];
        }

        initialModel = [(MKFCKAccessory *)self initialModel];
        initialModel2 = [v30 initialModel];
        v41 = HMFEqualObjects();

        if ((v41 & 1) == 0)
        {
          [v30 setInitialModel:initialModel];
        }

        if (![propertiesCopy count])
        {
          initialManufacturer3 = [(MKFCKAccessory *)self initialManufacturer];
          if (initialManufacturer3)
          {
            manufacturer = [v30 manufacturer];
            v44 = manufacturer == 0;

            if (v44)
            {
              initialManufacturer4 = [(MKFCKAccessory *)self initialManufacturer];
              v46 = [initialManufacturer4 copy];
              [v30 setManufacturer:v46];
            }
          }

          initialModel3 = [(MKFCKAccessory *)self initialModel];
          if (initialModel3)
          {
            model = [v30 model];
            v49 = model == 0;

            if (v49)
            {
              initialModel4 = [(MKFCKAccessory *)self initialModel];
              v51 = [initialModel4 copy];
              [v30 setModel:v51];
            }
          }

          initialCategory2 = [(MKFCKAccessory *)self initialCategory];
          if (initialCategory2)
          {
            accessoryCategory = [v30 accessoryCategory];
            v54 = accessoryCategory == 0;

            if (v54)
            {
              initialCategory3 = [(MKFCKAccessory *)self initialCategory];
              v56 = [initialCategory3 copy];
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

    v62 = modelCopy;
    v63 = contextCopy;
    if (!self)
    {

LABEL_47:
      LOBYTE(self) = 0;
      goto LABEL_48;
    }

    room = [(MKFCKAccessory *)self room];
    home = [(MKFCKAccessory *)self home];
    defaultRoom = [home defaultRoom];

    if (!room)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
      if (!defaultRoom)
      {
        if (v22)
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138543362;
          v74 = v57;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Default room also not available", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        room = 0;
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
      room = defaultRoom;
    }

    v24 = [room fetchLocalModelWithContext:v63];
    if (v24)
    {
      [v62 setRoom:v24];
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        objectID = [v62 objectID];
        *buf = 138543874;
        v74 = v27;
        v75 = 2112;
        v76 = objectID;
        v77 = 2112;
        v78 = room;
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

- (uint64_t)_shouldIgnoreMoveBackToDefaultRoom:(void *)room context:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  roomCopy = room;
  if (!self)
  {
    v10 = 0;
    goto LABEL_16;
  }

  room = [self room];
  home = [self home];
  defaultRoom = [home defaultRoom];

  v10 = 0;
  if (room && defaultRoom)
  {
    room2 = [v5 room];

    if (room2)
    {
      v12 = [defaultRoom fetchLocalModelWithContext:roomCopy];
      if (v12)
      {
        room3 = [v5 room];
        if ([room3 isEqual:v12])
        {
        }

        else
        {
          v14 = [room isEqual:defaultRoom];

          if (v14)
          {
            v15 = objc_autoreleasePoolPush();
            selfCopy = self;
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

- (id)_localModelForHostAccessoryWithContext:(void *)context
{
  v3 = a2;
  if (context)
  {
    hostAccessory = [context hostAccessory];
    v5 = hostAccessory;
    if (hostAccessory)
    {
      v6 = [hostAccessory fetchLocalModelWithContext:v3];
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

- (BOOL)isReadyToImportIntoLocalModelWithContext:(id)context
{
  v15 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([(MKFCKAccessory *)self isHosted])
  {
    v5 = [(MKFCKAccessory *)self _localModelForHostAccessoryWithContext:contextCopy];
    v6 = v5 != 0;
    if (!v5)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
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