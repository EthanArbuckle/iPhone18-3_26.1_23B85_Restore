@interface MKFCKScene
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (id)decodeActionAppleMediaAccessoryPower:(id)power localModel:(id)model context:(id)context;
- (id)decodeActionCharacteristic:(id)characteristic localModel:(id)model context:(id)context;
- (id)decodeActionCommand:(id)command localModel:(id)model context:(id)context;
- (id)decodeActionMediaPlayback:(id)playback localModel:(id)model context:(id)context;
- (id)decodeActionNaturalLight:(id)light localModel:(id)model context:(id)context;
- (id)decodeActionShortcut:(id)shortcut localModel:(id)model context:(id)context;
- (id)encodeActionAppleMediaAccessoryPower:(id)power accessories:(id)accessories context:(id)context;
- (id)encodeActionCharacteristic:(id)characteristic accessories:(id)accessories context:(id)context;
- (id)encodeActionCommand:(id)command accessories:(id)accessories context:(id)context;
- (id)encodeActionMediaPlayback:(id)playback accessories:(id)accessories context:(id)context;
- (id)encodeActionNaturalLight:(id)light accessories:(id)accessories shouldRemoveAction:(BOOL *)action context:(id)context;
- (id)encodeActionShortcut:(id)shortcut context:(id)context;
@end

@implementation MKFCKScene

- (id)encodeActionNaturalLight:(id)light accessories:(id)accessories shouldRemoveAction:(BOOL *)action context:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  lightCopy = light;
  accessoriesCopy = accessories;
  contextCopy = context;
  accessory = [lightCopy accessory];
  v14 = accessory;
  if (accessory)
  {
    modelID = [accessory modelID];
    v16 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID context:contextCopy];
    if (v16)
    {
      [accessoriesCopy addObject:v16];
      v40[0] = @"NL";
      v39[0] = @"At";
      v39[1] = @"Am";
      modelID2 = [lightCopy modelID];
      v40[1] = modelID2;
      v40[2] = modelID;
      v39[2] = @"Lm";
      v39[3] = @"Le";
      naturalLightingEnabledField = [lightCopy naturalLightingEnabledField];
      v18 = [naturalLightingEnabledField copy];
      v40[3] = v18;
      v39[4] = @"Ll";
      [lightCopy lightProfileUUID];
      v19 = lightCopy;
      v20 = v14;
      v21 = v16;
      v22 = modelID;
      v23 = contextCopy;
      v25 = v24 = accessoriesCopy;
      v40[4] = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];

      accessoriesCopy = v24;
      contextCopy = v23;
      modelID = v22;
      v16 = v21;
      v14 = v20;
      lightCopy = v19;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = v38 = v31;
        *buf = 138543874;
        v42 = v34;
        v43 = 2112;
        v44 = modelID;
        v45 = 2112;
        v46 = lightCopy;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching accessory with modelID %@: %@", buf, 0x20u);

        v31 = v38;
      }

      objc_autoreleasePoolPop(v31);
      v26 = 0;
      *action = 0;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v30;
      v43 = 2112;
      v44 = lightCopy;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, no accessory specified: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
    *action = 1;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)decodeActionNaturalLight:(id)light localModel:(id)model context:(id)context
{
  v78 = *MEMORY[0x277D85DE8];
  lightCopy = light;
  modelCopy = model;
  contextCopy = context;
  v10 = [lightCopy objectForKeyedSubscript:@"Am"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [lightCopy objectForKeyedSubscript:@"Lm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = [lightCopy objectForKeyedSubscript:@"Ll"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        v19 = [lightCopy objectForKeyedSubscript:@"Le"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v58 = v21;
        if (v21)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v75 = __Block_byref_object_copy__33336;
          v76 = __Block_byref_object_dispose__33337;
          v77 = 0;
          home = [modelCopy home];
          accessories = [home accessories];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __78__MKFCKScene_ActionNaturalLight__decodeActionNaturalLight_localModel_context___block_invoke;
          v66[3] = &unk_278672270;
          selfCopy = self;
          v69 = buf;
          v67 = v15;
          [accessories hmf_enumerateWithAutoreleasePoolUsingBlock:v66];

          if (*(*&buf[8] + 40))
          {
            *v70 = 0;
            *&v70[8] = v70;
            *&v70[16] = 0x3032000000;
            v71 = __Block_byref_object_copy__33336;
            v72 = __Block_byref_object_dispose__33337;
            v73 = 0;
            actions = [modelCopy actions];
            v60[0] = MEMORY[0x277D85DD0];
            v60[1] = 3221225472;
            v60[2] = __78__MKFCKScene_ActionNaturalLight__decodeActionNaturalLight_localModel_context___block_invoke_10;
            v60[3] = &unk_2786874A0;
            v25 = v12;
            v65 = v70;
            v61 = v25;
            selfCopy2 = self;
            v63 = lightCopy;
            v26 = contextCopy;
            v64 = v26;
            [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v60];

            v27 = *(*&v70[8] + 40);
            if (!v27)
            {
              v28 = [[_MKFNaturalLightingAction alloc] initWithContext:v26];
              v29 = *(*&v70[8] + 40);
              *(*&v70[8] + 40) = v28;

              [*(*&v70[8] + 40) setModelID:v25];
              writerTimestamp = [(MKFCKScene *)self writerTimestamp];
              [*(*&v70[8] + 40) setWriterTimestamp:writerTimestamp];

              [modelCopy addActions_Object:*(*&v70[8] + 40)];
              v27 = *(*&v70[8] + 40);
            }

            lightProfileUUID = [v27 lightProfileUUID];
            v32 = [v18 isEqual:lightProfileUUID];

            if ((v32 & 1) == 0)
            {
              [*(*&v70[8] + 40) setLightProfileUUID:v18];
            }

            naturalLightingEnabledField = [*(*&v70[8] + 40) naturalLightingEnabledField];
            v34 = [v58 isEqual:naturalLightingEnabledField];

            if ((v34 & 1) == 0)
            {
              [*(*&v70[8] + 40) setNaturalLightingEnabledField:v58];
            }

            v35 = *(*&v70[8] + 40);

            _Block_object_dispose(v70, 8);
          }

          else
          {
            v52 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v54 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = HMFGetLogIdentifier();
              *v70 = 138543618;
              *&v70[4] = v55;
              *&v70[12] = 2112;
              *&v70[14] = lightCopy;
              _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory matching action: %@", v70, 0x16u);
            }

            objc_autoreleasePoolPop(v52);
            v35 = 0;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v48 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v50 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v51;
            *&buf[12] = 2112;
            *&buf[14] = lightCopy;
            _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode enable in action: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v48);
          v35 = 0;
        }
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v47;
          *&buf[12] = 2112;
          *&buf[14] = lightCopy;
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode profileID in action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        v35 = 0;
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v43;
        *&buf[12] = 2112;
        *&buf[14] = lightCopy;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v35 = 0;
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2112;
      *&buf[14] = lightCopy;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v35 = 0;
  }

  v56 = *MEMORY[0x277D85DE8];

  return v35;
}

void __78__MKFCKScene_ActionNaturalLight__decodeActionNaturalLight_localModel_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v16;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing accessory is not a HAP accessory: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    *a3 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __78__MKFCKScene_ActionNaturalLight__decodeActionNaturalLight_localModel_context___block_invoke_10(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v19 = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)encodeActionCharacteristic:(id)characteristic accessories:(id)accessories context:(id)context
{
  v44 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  accessoriesCopy = accessories;
  contextCopy = context;
  accessory = [characteristicCopy accessory];
  modelID = [accessory modelID];

  v13 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID context:contextCopy];
  if (v13)
  {
    [accessoriesCopy addObject:v13];
    v35[0] = @"CW";
    v34[0] = @"At";
    v34[1] = @"Am";
    modelID2 = [characteristicCopy modelID];
    v35[1] = modelID2;
    v35[2] = modelID;
    v34[2] = @"Cm";
    v34[3] = @"Cs";
    service = [characteristicCopy service];
    instanceID = [service instanceID];
    v35[3] = instanceID;
    v34[4] = @"Cc";
    characteristicID = [characteristicCopy characteristicID];
    v35[4] = characteristicID;
    v34[5] = @"Ct";
    [characteristicCopy targetValue];
    v16 = v33 = accessoriesCopy;
    v17 = [v16 copy];
    v18 = contextCopy;
    v19 = v17;
    v20 = *MEMORY[0x277CBEEE8];
    if (v17)
    {
      v20 = v17;
    }

    v21 = v13;
    v22 = modelID;
    v23 = v20;
    v35[5] = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:6];

    modelID = v22;
    v13 = v21;

    contextCopy = v18;
    accessoriesCopy = v33;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138544130;
      v37 = v28;
      v38 = 2160;
      v39 = 1752392040;
      v40 = 2112;
      v41 = modelID;
      v42 = 2112;
      v43 = characteristicCopy;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching accessory with modelID %{mask.hash}@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)decodeActionCharacteristic:(id)characteristic localModel:(id)model context:(id)context
{
  v90 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  modelCopy = model;
  contextCopy = context;
  v11 = [characteristicCopy objectForKeyedSubscript:@"Am"];
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

  if (v13)
  {
    v14 = [characteristicCopy objectForKeyedSubscript:@"Cm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      v50 = objc_autoreleasePoolPush();
      selfCopy = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2112;
        *&buf[14] = characteristicCopy;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v50);
      v45 = 0;
      goto LABEL_64;
    }

    v17 = [characteristicCopy objectForKeyedSubscript:@"Cs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (!v19)
    {
      v54 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v57;
        *&buf[12] = 2112;
        *&buf[14] = characteristicCopy;
        _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode serviceID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v54);
      v45 = 0;
      goto LABEL_63;
    }

    v20 = [characteristicCopy objectForKeyedSubscript:@"Cc"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    v79 = v22;
    if (v22)
    {
      v23 = [characteristicCopy objectForKeyedSubscript:@"Ct"];
      v78 = v23;
      if (v23)
      {
        if (*MEMORY[0x277CBEEE8] == v23)
        {

          v78 = 0;
        }

        home = [modelCopy home];
        v77 = [home accessoryWithModelID:v16 context:contextCopy];

        if (v77)
        {
          v25 = v77;
          objc_opt_class();
          v26 = objc_opt_isKindOfClass() & 1;
          if (v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          if (v26)
          {

            context = [v25 serviceWithID:v19 context:contextCopy];
            if (context)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v87 = __Block_byref_object_copy__57059;
              v88 = __Block_byref_object_dispose__57060;
              v89 = 0;
              actions = [modelCopy actions];
              v80[0] = MEMORY[0x277D85DD0];
              v80[1] = 3221225472;
              v80[2] = __82__MKFCKScene_ActionCharacteristic__decodeActionCharacteristic_localModel_context___block_invoke;
              v80[3] = &unk_2786874A0;
              v85 = buf;
              v74 = v13;
              v81 = v74;
              selfCopy3 = self;
              v83 = characteristicCopy;
              v30 = contextCopy;
              v84 = v30;
              [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v80];

              v31 = *(*&buf[8] + 40);
              if (!v31)
              {
                v32 = [[_MKFCharacteristicWriteAction alloc] initWithContext:v30];
                v33 = *(*&buf[8] + 40);
                *(*&buf[8] + 40) = v32;

                [*(*&buf[8] + 40) setModelID:v74];
                writerTimestamp = [(MKFCKScene *)self writerTimestamp];
                [*(*&buf[8] + 40) setWriterTimestamp:writerTimestamp];

                [modelCopy addActions_Object:*(*&buf[8] + 40)];
                v31 = *(*&buf[8] + 40);
              }

              accessory = [v31 accessory];
              v36 = HMFEqualObjects();

              if ((v36 & 1) == 0)
              {
                [*(*&buf[8] + 40) setAccessory:v25];
              }

              service = [*(*&buf[8] + 40) service];
              v38 = HMFEqualObjects();

              if ((v38 & 1) == 0)
              {
                [*(*&buf[8] + 40) setService:context];
              }

              characteristicID = [*(*&buf[8] + 40) characteristicID];
              v40 = HMFEqualObjects();

              if ((v40 & 1) == 0)
              {
                v41 = [v79 copy];
                [*(*&buf[8] + 40) setCharacteristicID:v41];
              }

              targetValue = [*(*&buf[8] + 40) targetValue];
              v43 = HMFEqualObjects();

              if ((v43 & 1) == 0)
              {
                v44 = [v78 copy];
                [*(*&buf[8] + 40) setTargetValue:v44];
              }

              v45 = *(*&buf[8] + 40);

              _Block_object_dispose(buf, 8);
            }

            else
            {
              v68 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v70 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                v71 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v71;
                *&buf[12] = 2112;
                *&buf[14] = characteristicCopy;
                _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_ERROR, "%{public}@Could not find service matching action: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v68);
              v45 = 0;
            }

            goto LABEL_61;
          }

          contexta = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v67 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v67;
            *&buf[12] = 2112;
            *&buf[14] = v25;
            *&buf[22] = 2112;
            v87 = characteristicCopy;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Accessory %@ is not a HAP accessory in action: %@", buf, 0x20u);
          }
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v65 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v65;
            *&buf[12] = 2112;
            *&buf[14] = characteristicCopy;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory matching action: %@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(contexta);
        v45 = 0;
LABEL_61:

        goto LABEL_62;
      }

      v58 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v62 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v62;
        *&buf[12] = 2112;
        *&buf[14] = characteristicCopy;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode targetValue in action: %@", buf, 0x16u);
      }
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v61;
        *&buf[12] = 2112;
        *&buf[14] = characteristicCopy;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode characteristicID in action: %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v58);
    v45 = 0;
LABEL_62:

LABEL_63:
LABEL_64:

    goto LABEL_65;
  }

  v46 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v48 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v49;
    *&buf[12] = 2112;
    *&buf[14] = characteristicCopy;
    _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v46);
  v45 = 0;
LABEL_65:

  v72 = *MEMORY[0x277D85DE8];

  return v45;
}

void __82__MKFCKScene_ActionCharacteristic__decodeActionCharacteristic_localModel_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v19 = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)encodeActionCommand:(id)command accessories:(id)accessories context:(id)context
{
  v57 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  accessoriesCopy = accessories;
  contextCopy = context;
  v11 = +[HMDCoreData featuresDataSource];
  isRVCEnabled = [v11 isRVCEnabled];

  if (isRVCEnabled)
  {
    matterPaths = [commandCopy matterPaths];
    firstObject = [matterPaths firstObject];
    accessory = [firstObject accessory];
    modelID = [accessory modelID];

    array = [MEMORY[0x277CBEB18] array];
    matterPaths2 = [commandCopy matterPaths];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __68__MKFCKScene_ActionComand__encodeActionCommand_accessories_context___block_invoke;
    v45[3] = &unk_278677A50;
    v19 = array;
    v46 = v19;
    [matterPaths2 hmf_enumerateWithAutoreleasePoolUsingBlock:v45];

    v20 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID context:contextCopy];
    if (v20)
    {
      [accessoriesCopy addObject:v20];
      v48[0] = @"C";
      v47[0] = @"At";
      v47[1] = @"Am";
      modelID2 = [commandCopy modelID];
      v48[1] = modelID2;
      v47[2] = @"Cmp";
      v21 = [v19 copy];
      v48[2] = v21;
      v48[3] = modelID;
      v47[3] = @"Cm";
      v47[4] = @"Cf";
      commands = [commandCopy commands];
      [HMDMatterCommandActionUtilities commandsInStoreRepresentation:commands];
      v44 = v20;
      v23 = modelID;
      v25 = v24 = accessoriesCopy;
      v48[4] = v25;
      v47[5] = @"Ceeo";
      enforceExecutionOrder = [commandCopy enforceExecutionOrder];
      v27 = commandCopy;
      v28 = v19;
      v29 = contextCopy;
      v30 = enforceExecutionOrder;
      v31 = MEMORY[0x277CBEC28];
      if (enforceExecutionOrder)
      {
        v31 = enforceExecutionOrder;
      }

      v48[5] = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:6];

      contextCopy = v29;
      v19 = v28;
      commandCopy = v27;

      accessoriesCopy = v24;
      modelID = v23;
      v20 = v44;
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138544130;
        v50 = v40;
        v51 = 2160;
        v52 = 1752392040;
        v53 = 2112;
        v54 = modelID;
        v55 = 2112;
        v56 = commandCopy;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching accessory with modelID %{mask.hash}@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v37);
      v32 = 0;
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v50 = v36;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@RVC feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    v32 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v32;
}

void __68__MKFCKScene_ActionComand__encodeActionCommand_accessories_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 modelID];
  [v2 addObject:v3];
}

- (id)decodeActionCommand:(id)command localModel:(id)model context:(id)context
{
  v109 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  modelCopy = model;
  contextCopy = context;
  v11 = +[HMDCoreData featuresDataSource];
  isRVCEnabled = [v11 isRVCEnabled];

  if (isRVCEnabled)
  {
    v13 = [commandCopy objectForKeyedSubscript:@"Am"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = [commandCopy objectForKeyedSubscript:@"Cm"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      if (v18)
      {
        v19 = [commandCopy objectForKeyedSubscript:@"Cmp"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v100 = 0;
        v22 = [commandCopy hmf_BOOLForKey:@"Ceeo" isPresent:&v100];
        if (v100)
        {
          v23 = v22;
          v87 = [commandCopy objectForKeyedSubscript:@"Cf"];
          home = [modelCopy home];
          v88 = [home accessoryWithModelID:v18 context:contextCopy];

          if (v88)
          {
            v25 = v88;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v27 = v25;
            }

            else
            {
              v27 = 0;
            }

            v86 = v27;

            if (isKindOfClass)
            {
              matterPaths = [v25 matterPaths];
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v106 = __Block_byref_object_copy__94783;
              v107 = __Block_byref_object_dispose__94784;
              array = [MEMORY[0x277CBEB18] array];
              v95[0] = MEMORY[0x277D85DD0];
              v95[1] = 3221225472;
              v95[2] = __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke;
              v95[3] = &unk_278686568;
              v85 = matterPaths;
              v96 = v85;
              selfCopy = self;
              v29 = commandCopy;
              v98 = v29;
              v99 = buf;
              [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:v95];
              v30 = *(*&buf[8] + 40);
              if (v30 && (v31 = [v30 count], v31 == objc_msgSend(v21, "count")))
              {
                *v101 = 0;
                *&v101[8] = v101;
                *&v101[16] = 0x3032000000;
                v102 = __Block_byref_object_copy__94783;
                v103 = __Block_byref_object_dispose__94784;
                v104 = 0;
                actions = [modelCopy actions];
                v89[0] = MEMORY[0x277D85DD0];
                v89[1] = 3221225472;
                v89[2] = __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke_20;
                v89[3] = &unk_2786874A0;
                v94 = v101;
                context = v15;
                contextCopy2 = context;
                selfCopy2 = self;
                v92 = v29;
                v33 = contextCopy;
                v93 = v33;
                [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v89];

                v34 = *(*&v101[8] + 40);
                if (!v34)
                {
                  v35 = [[_MKFMatterCommandAction alloc] initWithContext:v33];
                  v36 = *(*&v101[8] + 40);
                  *(*&v101[8] + 40) = v35;

                  [*(*&v101[8] + 40) setModelID:context];
                  writerTimestamp = [(MKFCKScene *)self writerTimestamp];
                  [*(*&v101[8] + 40) setWriterTimestamp:writerTimestamp];

                  [modelCopy addActions_Object:*(*&v101[8] + 40)];
                  v34 = *(*&v101[8] + 40);
                }

                matterPaths2 = [v34 matterPaths];
                v39 = *(*&buf[8] + 40);
                v40 = HMFEqualObjects();

                if ((v40 & 1) == 0)
                {
                  v41 = MEMORY[0x277CBEB98];
                  v42 = [*(*&buf[8] + 40) copy];
                  v43 = [v41 setWithArray:v42];
                  [*(*&v101[8] + 40) setMatterPaths_:v43];
                }

                enforceExecutionOrder = [*(*&v101[8] + 40) enforceExecutionOrder];
                if (enforceExecutionOrder)
                {
                  enforceExecutionOrder2 = [*(*&v101[8] + 40) enforceExecutionOrder];
                  bOOLValue = [enforceExecutionOrder2 BOOLValue];

                  if (v23 != bOOLValue)
                  {
                    v47 = [MEMORY[0x277CCABB0] numberWithBool:v23];
                    [*(*&v101[8] + 40) setEnforceExecutionOrder:v47];
                  }
                }

                commands = [*(*&v101[8] + 40) commands];
                if (commands)
                {
                  commands2 = [*(*&v101[8] + 40) commands];
                  v50 = HMFEqualObjects();

                  if ((v50 & 1) == 0)
                  {
                    v51 = [v87 copy];
                    v52 = [HMDMatterCommandActionUtilities commandsInMemoryRepresentation:v51];
                    [*(*&v101[8] + 40) setCommands:v52];
                  }
                }

                v53 = *(*&v101[8] + 40);

                _Block_object_dispose(v101, 8);
              }

              else
              {
                contexta = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v79 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  v80 = HMFGetLogIdentifier();
                  *v101 = 138543618;
                  *&v101[4] = v80;
                  *&v101[12] = 2112;
                  *&v101[14] = v29;
                  _os_log_impl(&dword_229538000, v79, OS_LOG_TYPE_ERROR, "%{public}@Could not find matter path matching action: %@", v101, 0x16u);
                }

                objc_autoreleasePoolPop(contexta);
                v53 = 0;
              }

              _Block_object_dispose(buf, 8);
            }

            else
            {
              v74 = objc_autoreleasePoolPush();
              selfCopy4 = self;
              v76 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                v77 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v77;
                *&buf[12] = 2112;
                *&buf[14] = commandCopy;
                _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_ERROR, "%{public}@Accessory is an unexpected type: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v74);
              v53 = 0;
            }
          }

          else
          {
            v70 = objc_autoreleasePoolPush();
            selfCopy5 = self;
            v72 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              v73 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v73;
              *&buf[12] = 2112;
              *&buf[14] = commandCopy;
              _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory matching action: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v70);
            v53 = 0;
          }
        }

        else
        {
          v66 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v68 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v69 = HMFGetLogIdentifier();
            *buf = 138543618;
            *&buf[4] = v69;
            *&buf[12] = 2112;
            *&buf[14] = commandCopy;
            _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode enforceExecutionOrder in action: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v66);
          v53 = 0;
        }
      }

      else
      {
        v62 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v65;
          *&buf[12] = 2112;
          *&buf[14] = commandCopy;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelID in action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v62);
        v53 = 0;
      }
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v61;
        *&buf[12] = 2112;
        *&buf[14] = commandCopy;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
      v53 = 0;
    }
  }

  else
  {
    v54 = objc_autoreleasePoolPush();
    selfCopy9 = self;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v57;
      _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@RVC feature is not enabled", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v54);
    v53 = 0;
  }

  v81 = *MEMORY[0x277D85DE8];

  return v53;
}

void __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke_2;
  v10[3] = &unk_278677A28;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v11 = v3;
  v12 = v4;
  v7 = v6;
  v8 = a1[7];
  v13 = v7;
  v14 = v8;
  v9 = v3;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
}

void __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke_20(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v19 = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __67__MKFCKScene_ActionComand__decodeActionCommand_localModel_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 modelID];
  v8 = [v7 hmf_isEqualToUUID:*(a1 + 32)];

  if (v8)
  {
    v9 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (!v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = *(a1 + 48);
        v18 = 138543874;
        v19 = v15;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Existing matter path is an unexpected type: %@, %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
    }

    [*(*(*(a1 + 56) + 8) + 40) addObject:v11];
    *a4 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)encodeActionAppleMediaAccessoryPower:(id)power accessories:(id)accessories context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  accessoriesCopy = accessories;
  contextCopy = context;
  accessory = [powerCopy accessory];
  modelID = [accessory modelID];

  v13 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID context:contextCopy];
  if (v13)
  {
    v24[0] = @"AMAP";
    modelID2 = [powerCopy modelID];
    v24[1] = modelID2;
    v24[2] = modelID;
    v23[2] = @"AMAPATVU";
    v23[3] = @"AMAPASWS";
    targetSleepWakeState = [powerCopy targetSleepWakeState];
    v24[3] = targetSleepWakeState;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138544130;
      v26 = v20;
      v27 = 2160;
      v28 = 1752392040;
      v29 = 2112;
      v30 = modelID;
      v31 = 2114;
      v32 = powerCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching appleTV with modelID %{mask.hash}@: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)decodeActionAppleMediaAccessoryPower:(id)power localModel:(id)model context:(id)context
{
  v61 = *MEMORY[0x277D85DE8];
  powerCopy = power;
  modelCopy = model;
  contextCopy = context;
  v11 = [powerCopy objectForKeyedSubscript:@"Am"];
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

  if (v13)
  {
    v14 = [powerCopy hmf_UUIDForKey:@"AMAPATVU"];
    if (v14)
    {
      v15 = [powerCopy hmf_numberForKey:@"AMAPASWS"];
      if (v15)
      {
        home = [modelCopy home];
        v17 = [home accessoryWithModelID:v14 context:contextCopy];

        v18 = v17;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v51 = v20;
        if (v20)
        {

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v59 = __Block_byref_object_copy__151561;
          *&v60 = __Block_byref_object_dispose__151562;
          *(&v60 + 1) = 0;
          actions = [modelCopy actions];
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __85__MKFCKScene_ActionAppleTV__decodeActionAppleMediaAccessoryPower_localModel_context___block_invoke;
          v52[3] = &unk_2786874A0;
          v22 = v13;
          v57 = buf;
          v53 = v22;
          selfCopy = self;
          v55 = powerCopy;
          v23 = contextCopy;
          v56 = v23;
          [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v52];

          v24 = *(*&buf[8] + 40);
          if (!v24)
          {
            v25 = [[_MKFAppleMediaAccessoryPowerAction alloc] initWithContext:v23];
            v26 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v25;

            [*(*&buf[8] + 40) setModelID:v22];
            writerTimestamp = [(MKFCKScene *)self writerTimestamp];
            [*(*&buf[8] + 40) setWriterTimestamp:writerTimestamp];

            [modelCopy addActions_Object:*(*&buf[8] + 40)];
            v24 = *(*&buf[8] + 40);
          }

          accessory = [v24 accessory];
          v29 = HMFEqualObjects();

          if ((v29 & 1) == 0)
          {
            [*(*&buf[8] + 40) setAccessory:v51];
          }

          targetSleepWakeState = [*(*&buf[8] + 40) targetSleepWakeState];
          v31 = HMFEqualObjects();

          if ((v31 & 1) == 0)
          {
            [*(*&buf[8] + 40) setTargetSleepWakeState:v15];
          }

          v32 = *(*&buf[8] + 40);

          _Block_object_dispose(buf, 8);
        }

        else
        {
          context = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138544130;
            *&buf[4] = v47;
            *&buf[12] = 2160;
            *&buf[14] = 1752392040;
            *&buf[22] = 2112;
            v59 = v14;
            LOWORD(v60) = 2112;
            *(&v60 + 2) = powerCopy;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory %{mask.hash}@ matching action %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(context);
          v32 = 0;
        }
      }

      else
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v44;
          *&buf[12] = 2112;
          *&buf[14] = powerCopy;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode targetSleepWakeState in action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v41);
        v32 = 0;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v40;
        *&buf[12] = 2112;
        *&buf[14] = powerCopy;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessoryUUID in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v32 = 0;
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v36;
      *&buf[12] = 2112;
      *&buf[14] = powerCopy;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v32 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v32;
}

void __85__MKFCKScene_ActionAppleTV__decodeActionAppleMediaAccessoryPower_localModel_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v19 = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)encodeActionShortcut:(id)shortcut context:(id)context
{
  v13[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"S";
  v12[0] = @"At";
  v12[1] = @"Am";
  shortcutCopy = shortcut;
  modelID = [shortcutCopy modelID];
  v13[1] = modelID;
  v12[2] = @"Sd";
  data = [shortcutCopy data];

  v7 = [data copy];
  data2 = v7;
  if (!v7)
  {
    data2 = [MEMORY[0x277CBEA90] data];
  }

  v13[2] = data2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)decodeActionShortcut:(id)shortcut localModel:(id)model context:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  shortcutCopy = shortcut;
  modelCopy = model;
  contextCopy = context;
  v11 = [shortcutCopy objectForKeyedSubscript:@"Am"];
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

  if (v13)
  {
    v14 = [shortcutCopy objectForKeyedSubscript:@"Sd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v44 = __Block_byref_object_copy__211009;
      v45 = __Block_byref_object_dispose__211010;
      v46 = 0;
      actions = [modelCopy actions];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __70__MKFCKScene_ActionShortcut__decodeActionShortcut_localModel_context___block_invoke;
      v37[3] = &unk_2786874A0;
      v18 = v13;
      v42 = buf;
      v38 = v18;
      selfCopy = self;
      v40 = shortcutCopy;
      v19 = contextCopy;
      v41 = v19;
      [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v37];

      v20 = *(*&buf[8] + 40);
      if (!v20)
      {
        v21 = [[_MKFShortcutAction alloc] initWithContext:v19];
        v22 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v21;

        [*(*&buf[8] + 40) setModelID:v18];
        writerTimestamp = [(MKFCKScene *)self writerTimestamp];
        [*(*&buf[8] + 40) setWriterTimestamp:writerTimestamp];

        [modelCopy addActions_Object:*(*&buf[8] + 40)];
        v20 = *(*&buf[8] + 40);
      }

      data = [v20 data];
      v25 = [v16 isEqual:data];

      if ((v25 & 1) == 0)
      {
        [*(*&buf[8] + 40) setData:v16];
      }

      v26 = *(*&buf[8] + 40);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2112;
        *&buf[14] = shortcutCopy;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode data in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v26 = 0;
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = shortcutCopy;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v26 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v26;
}

void __70__MKFCKScene_ActionShortcut__decodeActionShortcut_localModel_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v19 = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)encodeActionMediaPlayback:(id)playback accessories:(id)accessories context:(id)context
{
  v61 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  accessoriesCopy = accessories;
  contextCopy = context;
  v10 = MEMORY[0x277CBEB58];
  accessories = [playbackCopy accessories];
  v12 = [v10 setWithCapacity:{objc_msgSend(accessories, "count")}];

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  accessories2 = [playbackCopy accessories];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __81__MKFCKScene_ActionMediaPlayback__encodeActionMediaPlayback_accessories_context___block_invoke;
  v46[3] = &unk_2786874C8;
  v46[4] = self;
  v40 = contextCopy;
  v47 = v40;
  v14 = playbackCopy;
  v48 = v14;
  v50 = &v51;
  v15 = v12;
  v49 = v15;
  [accessories2 hmf_enumerateWithAutoreleasePoolUsingBlock:v46];

  if ((v52[3] & 1) == 0)
  {
    v21 = 0;
    goto LABEL_16;
  }

  encodedPlaybackArchive = [v14 encodedPlaybackArchive];

  if (encodedPlaybackArchive)
  {
    v17 = MEMORY[0x277CCAAB0];
    encodedPlaybackArchive2 = [v14 encodedPlaybackArchive];
    v45 = 0;
    v19 = [v17 archivedDataWithRootObject:encodedPlaybackArchive2 requiringSecureCoding:1 error:&v45];
    v20 = v45;

    if (!v19)
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v37;
        v59 = 2114;
        v60 = v20;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode playback archive: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v21 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v15, "count")}];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __81__MKFCKScene_ActionMediaPlayback__encodeActionMediaPlayback_accessories_context___block_invoke_22;
  v42[3] = &unk_2786874F0;
  v23 = v22;
  v43 = v23;
  v44 = accessoriesCopy;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v42];
  v24 = MEMORY[0x277CBEB38];
  v56[0] = @"MP";
  v55[0] = @"At";
  v55[1] = @"Am";
  modelID = [v14 modelID];
  v56[1] = modelID;
  v55[2] = @"Mm";
  allObjects = [v23 allObjects];
  v56[2] = allObjects;
  v55[3] = @"Ms";
  state = [v14 state];
  v28 = [state copy];
  v56[3] = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];
  v30 = [v24 dictionaryWithDictionary:v29];

  volume = [v14 volume];

  if (volume)
  {
    volume2 = [v14 volume];
    v33 = [volume2 copy];
    [v30 setObject:v33 forKeyedSubscript:@"Mv"];
  }

  if (v19)
  {
    [v30 setObject:v19 forKeyedSubscript:@"Ma"];
  }

  v21 = [v30 copy];

  v20 = v19;
LABEL_15:

LABEL_16:
  _Block_object_dispose(&v51, 8);

  v38 = *MEMORY[0x277D85DE8];

  return v21;
}

void __81__MKFCKScene_ActionMediaPlayback__encodeActionMediaPlayback_accessories_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [(MKFCKHomeObject *)*(a1 + 32) _accessoryWithModelID:v6 context:*(a1 + 40)];
  if (v7)
  {
    [*(a1 + 56) addObject:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v14 = 138544130;
      v15 = v11;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode action, cannot find matching accessory with modelID %{mask.hash}@: %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a3 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __81__MKFCKScene_ActionMediaPlayback__encodeActionMediaPlayback_accessories_context___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v5 modelID];
  [v3 addObject:v4];

  [*(a1 + 40) addObject:v5];
}

- (id)decodeActionMediaPlayback:(id)playback localModel:(id)model context:(id)context
{
  v109 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  modelCopy = model;
  contextCopy = context;
  v9 = [playbackCopy objectForKeyedSubscript:@"Am"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [playbackCopy objectForKeyedSubscript:@"Mm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      v15 = [playbackCopy objectForKeyedSubscript:@"Ms"];
      v16 = v15;
      if (!v15 || ((v17 = v15, objc_opt_class(), (v18 = objc_opt_isKindOfClass() & 1) == 0) ? (v19 = 0) : (v19 = v17), v20 = v19, v17, v18))
      {

        v21 = [playbackCopy objectForKeyedSubscript:@"Mv"];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
          objc_opt_class();
          v24 = objc_opt_isKindOfClass() & 1;
          v25 = v24 ? v23 : 0;
          v26 = v25;

          if (!v24)
          {
            v47 = objc_autoreleasePoolPush();
            selfCopy = self;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v50 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v50;
              *&buf[12] = 2112;
              *&buf[14] = playbackCopy;
              _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode volume in action: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v47);
            v38 = 0;
            v22 = v23;
            goto LABEL_62;
          }
        }

        v27 = [playbackCopy objectForKeyedSubscript:@"Ma"];
        v28 = v27;
        if (v27)
        {
          contextCopy2 = v27;
          objc_opt_class();
          v30 = objc_opt_isKindOfClass() & 1;
          if (v30)
          {
            v31 = contextCopy2;
          }

          else
          {
            v31 = 0;
          }

          v32 = v31;

          if (v30)
          {
            v104 = 0;
            context = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:contextCopy2 error:&v104];
            v33 = v104;
            if (context)
            {

LABEL_40:
              v51 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v14, "count")}];
              v100 = 0;
              v101 = &v100;
              v102 = 0x2020000000;
              v103 = 1;
              v94[0] = MEMORY[0x277D85DD0];
              v94[1] = 3221225472;
              v94[2] = __80__MKFCKScene_ActionMediaPlayback__decodeActionMediaPlayback_localModel_context___block_invoke;
              v94[3] = &unk_278687478;
              v94[4] = self;
              v52 = playbackCopy;
              v95 = v52;
              v99 = &v100;
              v53 = modelCopy;
              v96 = v53;
              v54 = contextCopy;
              v97 = v54;
              v81 = v51;
              v98 = v81;
              [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v94];
              if (v101[3])
              {
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x3032000000;
                v106 = __Block_byref_object_copy__262722;
                v107 = __Block_byref_object_dispose__262723;
                v108 = 0;
                v80 = v53;
                actions = [v53 actions];
                v88[0] = MEMORY[0x277D85DD0];
                v88[1] = 3221225472;
                v88[2] = __80__MKFCKScene_ActionMediaPlayback__decodeActionMediaPlayback_localModel_context___block_invoke_17;
                v88[3] = &unk_2786874A0;
                v93 = buf;
                v56 = v11;
                v89 = v56;
                selfCopy2 = self;
                v91 = v52;
                v57 = v54;
                v92 = v57;
                [actions hmf_enumerateWithAutoreleasePoolUsingBlock:v88];

                v58 = *(*&buf[8] + 40);
                if (!v58)
                {
                  v59 = [[_MKFMediaPlaybackAction alloc] initWithContext:v57];
                  v60 = *(*&buf[8] + 40);
                  *(*&buf[8] + 40) = v59;

                  [*(*&buf[8] + 40) setModelID:v56];
                  writerTimestamp = [(MKFCKScene *)self writerTimestamp];
                  [*(*&buf[8] + 40) setWriterTimestamp:writerTimestamp];

                  [v80 addActions_Object:*(*&buf[8] + 40)];
                  v58 = *(*&buf[8] + 40);
                }

                state = [v58 state];
                v63 = HMFEqualObjects();

                if ((v63 & 1) == 0)
                {
                  [*(*&buf[8] + 40) setState:v16];
                }

                volume = [*(*&buf[8] + 40) volume];
                v65 = HMFEqualObjects();

                if ((v65 & 1) == 0)
                {
                  [*(*&buf[8] + 40) setVolume:v22];
                }

                encodedPlaybackArchive = [*(*&buf[8] + 40) encodedPlaybackArchive];
                v67 = HMFEqualObjects();

                if ((v67 & 1) == 0)
                {
                  [*(*&buf[8] + 40) setEncodedPlaybackArchive:context];
                }

                accessories = [*(*&buf[8] + 40) accessories];
                v69 = [accessories isEqualToSet:v81];

                if ((v69 & 1) == 0)
                {
                  v70 = *(*&buf[8] + 40);
                  v71 = [v81 copy];
                  [v70 setAccessories_:v71];
                }

                v38 = *(*&buf[8] + 40);

                _Block_object_dispose(buf, 8);
              }

              else
              {
                v38 = 0;
              }

              _Block_object_dispose(&v100, 8);
              contextCopy2 = context;
              goto LABEL_61;
            }

            contextb = v33;
            v82 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v76 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              v77 = HMFGetLogIdentifier();
              *buf = 138543874;
              *&buf[4] = v77;
              *&buf[12] = 2112;
              *&buf[14] = playbackCopy;
              *&buf[22] = 2114;
              v106 = contextb;
              _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode playback archive in action: %@, %{public}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v82);
          }

          else
          {
            contexta = objc_autoreleasePoolPush();
            selfCopy4 = self;
            v73 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v74 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v74;
              *&buf[12] = 2112;
              *&buf[14] = playbackCopy;
              _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode encodedArchive in action: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(contexta);
          }

          v38 = 0;
LABEL_61:

LABEL_62:
          goto LABEL_63;
        }

        context = 0;
        goto LABEL_40;
      }

      v43 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2112;
        *&buf[14] = playbackCopy;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode state in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v43);
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = playbackCopy;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelIDs in action: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
    }

    v38 = 0;
LABEL_63:

    goto LABEL_64;
  }

  v34 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v37;
    *&buf[12] = 2112;
    *&buf[14] = playbackCopy;
    _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode modelID in action: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v34);
  v38 = 0;
LABEL_64:

  v78 = *MEMORY[0x277D85DE8];

  return v38;
}

void __80__MKFCKScene_ActionMediaPlayback__decodeActionMediaPlayback_localModel_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a2;
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

  if (v8)
  {
    v9 = [*(a1 + 48) home];
    v10 = [v9 accessoryWithModelID:v8 context:*(a1 + 56)];

    if (v10)
    {
      [*(a1 + 64) addObject:v10];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(a1 + 40);
        v22 = 138543874;
        v23 = v19;
        v24 = 2112;
        v25 = v8;
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory %@ matching action: %@", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      *a4 = 1;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 40);
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode accessory modelID in action: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    *a4 = 1;
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __80__MKFCKScene_ActionMediaPlayback__decodeActionMediaPlayback_localModel_context___block_invoke_17(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 40);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 48);
        v19 = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Existing action is an unexpected type: %@, %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 56) deleteObject:v8];
    }

    *a3 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  v65 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v11 = modelCopy;
  v12 = propertiesCopy;
  v13 = contextCopy;
  if (self && [(MKFCKModel *)self copyPropertiesFromLocalModel:v11 context:v13])
  {
    v14 = MEMORY[0x277CBEB58];
    actions = [v11 actions];
    v16 = [v14 setWithCapacity:{objc_msgSend(actions, "count")}];

    v17 = [MEMORY[0x277CBEB58] set];
    hmd_currentChangeSet = [v13 hmd_currentChangeSet];
    v19 = MEMORY[0x277CBEB38];
    actions2 = [(MKFCKScene *)self actions];
    v21 = [v19 dictionaryWithCapacity:{objc_msgSend(actions2, "count")}];

    actions3 = [(MKFCKScene *)self actions];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke;
    v58[3] = &unk_278689E38;
    v45 = hmd_currentChangeSet;
    v59 = v45;
    v23 = v21;
    v60 = v23;
    [actions3 hmf_enumerateWithAutoreleasePoolUsingBlock:v58];

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 1;
    actions4 = [v11 actions];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke_2;
    v48[3] = &unk_278689E60;
    v48[4] = self;
    v25 = v17;
    v49 = v25;
    v50 = v13;
    v53 = &v54;
    v26 = v23;
    v51 = v26;
    v46 = v16;
    v52 = v46;
    [actions4 hmf_enumerateWithAutoreleasePoolUsingBlock:v48];

    if (v55[3])
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke_37;
      v62 = &unk_278689E88;
      v27 = v46;
      v63 = v27;
      selfCopy = self;
      [v26 enumerateKeysAndObjectsUsingBlock:buf];
      v28 = MEMORY[0x277CBEB98];
      actions5 = [(MKFCKScene *)self actions];
      v30 = [v28 setWithArray:actions5];
      LOBYTE(v28) = HMFEqualObjects();

      if ((v28 & 1) == 0)
      {
        allObjects = [v27 allObjects];
        [(MKFCKScene *)self setActions:allObjects];
      }

      accessories = [(MKFCKScene *)self accessories];
      v33 = HMFEqualObjects();

      if ((v33 & 1) == 0)
      {
        v34 = [v25 copy];
        [(MKFCKScene *)self setAccessories:v34];
      }

      v35 = [_MKFApplicationData appDataDictionaryForContainer:v11];
      applicationData = [(MKFCKScene *)self applicationData];
      v37 = HMFEqualObjects();

      if ((v37 & 1) == 0)
      {
        [(MKFCKScene *)self setApplicationData:v35];
      }
    }

    else
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v42;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode all actions, assuming a later export will succeed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
    }

    _Block_object_dispose(&v54, 8);
    v38 = 1;
  }

  else
  {
    v38 = 0;
  }

  objc_autoreleasePoolPop(context);
  v43 = *MEMORY[0x277D85DE8];
  return v38;
}

void __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:@"Am"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) deletedModelIDs];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  }
}

void __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v21 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) encodeActionCharacteristic:v5 accessories:*(a1 + 40) context:*(a1 + 48)];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [*(a1 + 32) encodeActionNaturalLight:v5 accessories:*(a1 + 40) shouldRemoveAction:&v21 context:*(a1 + 48)];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [*(a1 + 32) encodeActionMediaPlayback:v5 accessories:*(a1 + 40) context:*(a1 + 48)];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [*(a1 + 32) encodeActionShortcut:v5 context:*(a1 + 48)];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = [*(a1 + 32) encodeActionAppleMediaAccessoryPower:v5 accessories:*(a1 + 40) context:*(a1 + 48)];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_18;
            }

            v19 = +[HMDCoreData featuresDataSource];
            v20 = [v19 isRVCEnabled];

            if (!v20)
            {
              goto LABEL_18;
            }

            v6 = [*(a1 + 32) encodeActionCommand:v5 accessories:*(a1 + 40) context:*(a1 + 48)];
          }
        }
      }
    }
  }

  v7 = v6;
  if (!v6)
  {
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a3 = 1;
    goto LABEL_19;
  }

  v8 = *(a1 + 56);
  v9 = [v5 modelID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [MKFCKModel mergedDictionaryFromCloud:v10 localModifications:v7];
  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v15;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to merge cloud & local actions: %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a3 = 1;
  }

  v16 = *(a1 + 56);
  v17 = [v5 modelID];
  [v16 removeObjectForKey:v17];

  [*(a1 + 64) addObject:v11];
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
}

void __62__MKFCKScene__exportFromLocalModel_updatedProperties_context___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) addObject:v6];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 objectForKeyedSubscript:@"At"];
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Found new action type [%{public}@] not supported by this software. Adding it back to cloud: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v9 = [(MKFCKModel *)self copyPropertiesIntoLocalModel:modelCopy context:contextCopy];
  if (v9)
  {
    v10 = MEMORY[0x277CBEB58];
    actions = [(MKFCKScene *)self actions];
    v12 = [v10 setWithCapacity:{objc_msgSend(actions, "count")}];

    actions2 = [(MKFCKScene *)self actions];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __61__MKFCKScene_importIntoLocalModel_updatedProperties_context___block_invoke;
    v28[3] = &unk_278689DE8;
    v28[4] = self;
    v14 = modelCopy;
    v29 = v14;
    v15 = contextCopy;
    v30 = v15;
    v16 = v12;
    v31 = v16;
    [actions2 hmf_enumerateWithAutoreleasePoolUsingBlock:v28];

    actions3 = [v14 actions];
    allObjects = [actions3 allObjects];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __61__MKFCKScene_importIntoLocalModel_updatedProperties_context___block_invoke_24;
    v25 = &unk_278689E10;
    v26 = v16;
    v27 = v15;
    v19 = v16;
    [allObjects hmf_enumerateWithAutoreleasePoolUsingBlock:&v22];

    v20 = [(MKFCKScene *)self applicationData:v22];
    [_MKFApplicationData setAppDataDictionary:v20 forContainer:v14];
  }

  return v9;
}

void __61__MKFCKScene_importIntoLocalModel_updatedProperties_context___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"At"];
  if ([v4 isEqualToString:@"CW"])
  {
    v5 = [*(a1 + 32) decodeActionCharacteristic:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"NL"])
  {
    v5 = [*(a1 + 32) decodeActionNaturalLight:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"MP"])
  {
    v5 = [*(a1 + 32) decodeActionMediaPlayback:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"S"])
  {
    v5 = [*(a1 + 32) decodeActionShortcut:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if ([v4 isEqualToString:@"AMAP"])
  {
    v5 = [*(a1 + 32) decodeActionAppleMediaAccessoryPower:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
    goto LABEL_11;
  }

  if (![v4 isEqualToString:@"C"])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown encoded action type: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_19;
  }

  v9 = +[HMDCoreData featuresDataSource];
  v10 = [v9 isRVCEnabled];

  if (v10)
  {
    v5 = [*(a1 + 32) decodeActionCommand:v3 localModel:*(a1 + 40) context:*(a1 + 48)];
LABEL_11:
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 56);
      v8 = [v5 objectID];
      [v7 addObject:v8];

      goto LABEL_22;
    }
  }

LABEL_19:
  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v18;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode action, ignoring: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
LABEL_22:

  v19 = *MEMORY[0x277D85DE8];
}

void __61__MKFCKScene_importIntoLocalModel_updatedProperties_context___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 objectID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) deleteObject:v6];
  }
}

@end