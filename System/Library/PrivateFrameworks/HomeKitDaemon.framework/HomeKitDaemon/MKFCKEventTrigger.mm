@interface MKFCKEventTrigger
+ (id)cloudUserWithModelID:(void *)d home:;
+ (id)localUserWithModelID:(void *)d home:;
- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context;
- (_MKFCharacteristicRangeEvent)_decodeEventCharacteristicWithEntity:(void *)entity eventDictionary:(void *)dictionary trigger:(void *)trigger context:;
- (_MKFLocationEvent)_decodeEventLocation:(void *)location trigger:(void *)trigger context:;
- (_MKFPresenceEvent)_decodeEventPresence:(void *)presence trigger:(void *)trigger context:;
- (_MKFSignificantTimeEvent)_decodeEventSignificantTime:(void *)time context:;
- (id)_decodeCharacteristicValueForKey:(void *)key dictionary:(char)dictionary optional:(_BYTE *)optional success:;
- (id)_decodeDataForKey:(void *)key dictionary:(_BYTE *)dictionary success:;
- (id)_decodeDataForKey:(void *)key dictionary:(char)dictionary optional:(_BYTE *)optional success:;
- (id)_decodeDateComponentsData:(void *)data;
- (id)_decodeEventAttributeValue:(id)value trigger:(id)trigger context:(id)context;
- (id)_decodeEventDictionary:(id)dictionary localModel:(id)model context:(id)context;
- (id)_decodeNumberForKey:(void *)key dictionary:(_BYTE *)dictionary success:;
- (id)_decodeStringForKey:(void *)key dictionary:(_BYTE *)dictionary success:;
- (id)_decodeUUIDForKey:(void *)key dictionary:(_BYTE *)dictionary success:;
- (id)_decodeValueForKey:(void *)key dictionary:(char)dictionary optional:(_BYTE *)optional success:;
- (id)_encodeEvent:(id)event encodedEventInCloud:(id)cloud accessories:(id)accessories users:(id)users guests:(id)guests shouldRemoveEvent:(BOOL *)removeEvent context:(id)context;
- (id)_encodeEventAttributeValue:(id)value accessories:(id)accessories context:(id)context;
- (id)_encodeEventCharacteristic:(void *)characteristic accessories:(void *)accessories context:;
- (id)_encodeEventPresence:(void *)presence users:(void *)users guests:(_BYTE *)guests shouldRemoveEvent:(void *)event context:;
- (id)_encodeEventSignificantTime:(uint64_t)time context:(void *)context;
@end

@implementation MKFCKEventTrigger

- (id)_encodeEventSignificantTime:(uint64_t)time context:(void *)context
{
  v15[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = contextCopy;
  if (time)
  {
    offsetSeconds = [contextCopy offsetSeconds];
    v6 = HMDTimeOffsetToDateComponents([offsetSeconds integerValue], 0);

    if (v6)
    {
      v15[0] = @"ST";
      v14[0] = @"TEt";
      v14[1] = @"TESs";
      significantEvent = [v4 significantEvent];
      v15[1] = significantEvent;
      v14[2] = @"TESo";
      v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
      v15[2] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    }

    else
    {
      v13[0] = @"ST";
      v12[0] = @"TEt";
      v12[1] = @"TESs";
      significantEvent = [v4 significantEvent];
      v13[1] = significantEvent;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (_MKFSignificantTimeEvent)_decodeEventSignificantTime:(void *)time context:
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  timeCopy = time;
  if (self)
  {
    v25 = 1;
    v7 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:v5 dictionary:&v25 success:?];
    v8 = [(MKFCKEventTrigger *)self _decodeStringForKey:v5 dictionary:&v25 success:?];
    v9 = [(MKFCKEventTrigger *)self _decodeDataForKey:v5 dictionary:1 optional:&v25 success:?];
    if (v25 == 1)
    {
      if (HMIsValidSignificantEvent())
      {
        if (v9)
        {
          v10 = MEMORY[0x277CCABB0];
          v11 = [(MKFCKEventTrigger *)self _decodeDateComponentsData:v9];
          v12 = [v10 numberWithInteger:{HMDTimeOffsetFromDateComponents(v11, 0)}];
        }

        else
        {
          v12 = 0;
        }

        v17 = [(_MKFModel *)_MKFSignificantTimeEvent modelWithModelID:v7 context:timeCopy];
        if (!v17)
        {
          v17 = [[_MKFSignificantTimeEvent alloc] initWithContext:timeCopy];
          [(_MKFSignificantTimeEvent *)v17 setModelID:v7];
          writerTimestamp = [self writerTimestamp];
          [(_MKFSignificantTimeEvent *)v17 setWriterTimestamp:writerTimestamp];
        }

        significantEvent = [(_MKFSignificantTimeEvent *)v17 significantEvent];
        v20 = HMFEqualObjects();

        if ((v20 & 1) == 0)
        {
          [(_MKFSignificantTimeEvent *)v17 setSignificantEvent:v8];
        }

        offsetSeconds = [(_MKFSignificantTimeEvent *)v17 offsetSeconds];
        v22 = HMFEqualObjects();

        if ((v22 & 1) == 0)
        {
          [(_MKFSignificantTimeEvent *)v17 setOffsetSeconds:v12];
        }

        goto LABEL_18;
      }

      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v27 = v16;
        v28 = 2112;
        v29 = v8;
        v30 = 2112;
        v31 = v5;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unknown value '%@' for significant event: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
    }

    v17 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v17 = 0;
LABEL_19:

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_decodeEventAttributeValue:(id)value trigger:(id)trigger context:(id)context
{
  v96 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  triggerCopy = trigger;
  valueCopy = value;
  v11 = +[_MKFMatterAttributeValueEvent entity];
  v12 = valueCopy;
  v13 = triggerCopy;
  v14 = contextCopy;
  if (self)
  {
    v87 = 1;
    v83 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:v12 dictionary:&v87 success:?];
    v15 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:v12 dictionary:&v87 success:?];
    v85 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:v12 dictionary:&v87 success:?];
    v16 = [(MKFCKEventTrigger *)self _decodeNumberForKey:v12 dictionary:&v87 success:?];
    v17 = [(MKFCKEventTrigger *)self _decodeNumberForKey:v12 dictionary:&v87 success:?];
    v84 = [(MKFCKEventTrigger *)self _decodeNumberForKey:v12 dictionary:&v87 success:?];
    if ((v87 & 1) == 0)
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v76 = v14;
        v36 = v17;
        v37 = v13;
        v38 = v11;
        v39 = v15;
        v41 = v40 = v16;
        *buf = 138543618;
        v89 = v41;
        v90 = 2112;
        v91 = v12;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode attribute event from dictionary %@", buf, 0x16u);

        v16 = v40;
        v15 = v39;
        v11 = v38;
        v13 = v37;
        v17 = v36;
        v14 = v76;
      }

      objc_autoreleasePoolPop(v33);
      v42 = 0;
      v32 = v83;
      goto LABEL_44;
    }

    home = [v13 home];
    v19 = [home accessoryWithModelID:v15 context:v14];

    v82 = v19;
    if (!v19)
    {
      v79 = v11;
      v43 = v16;
      v44 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138544130;
        v89 = v47;
        v90 = 2160;
        v91 = 1752392040;
        v92 = 2112;
        v93 = v15;
        v94 = 2112;
        v95 = v12;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory '%{mask.hash}@' matching event: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v44);
      v42 = 0;
      v16 = v43;
      v11 = v79;
      v32 = v83;
      goto LABEL_43;
    }

    v20 = v19;
    objc_opt_class();
    v21 = objc_opt_isKindOfClass() & 1;
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v73 = v22;

    if (!v21)
    {
      v80 = v11;
      v48 = v15;
      v49 = v16;
      v50 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v77 = v14;
        v54 = v53 = v17;
        *buf = 138543874;
        v89 = v54;
        v90 = 2112;
        v91 = v20;
        v92 = 2112;
        v93 = v12;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Accessory %@ is not a matter accessory in event: %@", buf, 0x20u);

        v17 = v53;
        v14 = v77;
      }

      objc_autoreleasePoolPop(v50);
      v42 = 0;
      v16 = v49;
      v15 = v48;
      v11 = v80;
      v32 = v83;
      goto LABEL_42;
    }

    v23 = [v20 findMatterPathsRelationWithModelID:v85];
    if (!v23)
    {
      v24 = [[_MKFMatterPath alloc] initWithContext:v14];
      v74 = v16;
      [(_MKFMatterPath *)v24 setAttributeID:v16];
      [(_MKFMatterPath *)v24 setClusterID:v17];
      [(_MKFMatterPath *)v24 setEndpointID:v84];
      [(_MKFMatterPath *)v24 setModelID:v85];
      [(_MKFMatterPath *)v24 setAccessory:v20];
      v86 = 0;
      v25 = v24;
      v26 = [v20 materializeOrCreateMatterPathsRelationWithModelID:v85 createdNew:&v86];
      if ((v86 & 1) == 0)
      {
        v71 = v25;
        v55 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v58 = v81 = v55;
          *buf = 138543874;
          v89 = v58;
          v90 = 2112;
          v91 = v85;
          v92 = 2112;
          v93 = v20;
          _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@Unable to create relationship for matterPathModelID %@ on accessory %@", buf, 0x20u);

          v55 = v81;
        }

        objc_autoreleasePoolPop(v55);
        v42 = 0;
        v59 = v71;
        v78 = v71;
        v16 = v74;
        v32 = v83;
        goto LABEL_40;
      }

      [v20 addMatterPathsObject:v25];

      v23 = v25;
    }

    v75 = v17;
    v78 = v23;
    v27 = +[_MKFMatterAttributeValueEvent entity];
    v28 = [v11 isEqual:v27];

    if (!v28)
    {
      v42 = 0;
      v32 = v83;
      v17 = v75;
LABEL_41:

LABEL_42:
LABEL_43:

LABEL_44:
      goto LABEL_45;
    }

    v29 = @"TEATv";
    v69 = v12;
    v30 = [(MKFCKEventTrigger *)self _decodeValueForKey:v69 dictionary:0 optional:&v87 success:?];
    v31 = v30;
    v70 = 0;
    if (v30)
    {
      v32 = v83;
      v17 = v75;
      if (*MEMORY[0x277CBEEE8] == v30)
      {
        goto LABEL_33;
      }

      if (isAllowedCharType())
      {
        v70 = v31;
        goto LABEL_33;
      }

      v60 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v62 = v68 = v60;
        *buf = 138543874;
        v89 = v62;
        v90 = 2114;
        v91 = @"TEATv";
        v92 = 2112;
        v93 = v69;
        _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type for '%{public}@' in event: %@", buf, 0x20u);

        v60 = v68;
      }

      objc_autoreleasePoolPop(v60);
      v70 = 0;
      v87 = 0;
    }

    v32 = v83;
    v17 = v75;
LABEL_33:

    if (v87 == 1)
    {
      v42 = [(_MKFModel *)_MKFMatterAttributeValueEvent modelWithModelID:v32 context:v14];
      if (!v42)
      {
        v42 = [[_MKFMatterAttributeValueEvent alloc] initWithContext:v14];
        [(_MKFMatterAttributeValueEvent *)v42 setModelID:v32];
        writerTimestamp = [(MKFCKEventTrigger *)self writerTimestamp];
        [(_MKFMatterAttributeValueEvent *)v42 setWriterTimestamp:writerTimestamp];

        [(_MKFMatterAttributeValueEvent *)v42 setMatterPath:v78];
      }

      eventValue = [(_MKFMatterAttributeValueEvent *)v42 eventValue];
      v59 = v70;
      v65 = HMFEqualObjects();

      if ((v65 & 1) == 0)
      {
        [(_MKFMatterAttributeValueEvent *)v42 setEventValue:v70];
      }

      v32 = v83;
      v17 = v75;
    }

    else
    {
      v42 = 0;
      v59 = v70;
    }

LABEL_40:

    goto LABEL_41;
  }

  v42 = 0;
LABEL_45:

  v66 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)_encodeEventAttributeValue:(id)value accessories:(id)accessories context:(id)context
{
  v34[5] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v32 = valueCopy;
  if (self)
  {
    v9 = valueCopy;
    contextCopy = context;
    accessoriesCopy = accessories;
    v12 = v9;
    matterPath = [v12 matterPath];
    modelID = [matterPath modelID];

    matterPath2 = [v12 matterPath];
    accessory = [matterPath2 accessory];
    modelID2 = [accessory modelID];

    v31 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID2 context:contextCopy];

    [accessoriesCopy addObject:v31];
    v17 = MEMORY[0x277CBEB38];
    v33[0] = @"TEATam";
    v33[1] = @"TEATmpm";
    v34[0] = modelID2;
    v34[1] = modelID;
    v33[2] = @"TEATa";
    matterPath3 = [v12 matterPath];
    attributeID = [matterPath3 attributeID];
    v34[2] = attributeID;
    v33[3] = @"TEATc";
    matterPath4 = [v12 matterPath];
    clusterID = [matterPath4 clusterID];
    v34[3] = clusterID;
    v33[4] = @"TEATe";
    matterPath5 = [v12 matterPath];

    endpointID = [matterPath5 endpointID];
    v34[4] = endpointID;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:5];
    v25 = [v17 dictionaryWithDictionary:v24];

    if (v25)
    {
      eventValue = [v12 eventValue];
      [v25 setObject:eventValue forKeyedSubscript:@"TEATv"];

      [v25 setObject:@"AV" forKeyedSubscript:@"TEt"];
      v27 = [v25 copy];
      goto LABEL_6;
    }
  }

  else
  {
    v25 = 0;
  }

  v27 = 0;
LABEL_6:

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_encodeEventCharacteristic:(void *)characteristic accessories:(void *)accessories context:
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  characteristicCopy = characteristic;
  accessoriesCopy = accessories;
  service = [v7 service];
  accessory = [service accessory];
  modelID = [accessory modelID];

  v13 = [(MKFCKHomeObject *)self _accessoryWithModelID:modelID context:accessoriesCopy];
  if (v13)
  {
    [characteristicCopy addObject:v13];
    v14 = MEMORY[0x277CBEB38];
    v31[0] = @"TEAm";
    modelID2 = [v13 modelID];
    v32[0] = modelID2;
    v31[1] = @"TEAs";
    service2 = [v7 service];
    instanceID = [service2 instanceID];
    v32[1] = instanceID;
    v31[2] = @"TEAc";
    characteristicID = [v7 characteristicID];
    v32[2] = characteristicID;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
    v18 = v7;
    v19 = modelID;
    v20 = accessoriesCopy;
    v22 = v21 = characteristicCopy;
    v23 = [v14 dictionaryWithDictionary:v22];

    characteristicCopy = v21;
    accessoriesCopy = v20;
    modelID = v19;
    v7 = v18;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = modelID;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with model ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v23 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v23;
}

- (_MKFCharacteristicRangeEvent)_decodeEventCharacteristicWithEntity:(void *)entity eventDictionary:(void *)dictionary trigger:(void *)trigger context:
{
  v87 = *MEMORY[0x277D85DE8];
  v9 = a2;
  entityCopy = entity;
  dictionaryCopy = dictionary;
  triggerCopy = trigger;
  v78 = 1;
  v77 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:entityCopy dictionary:&v78 success:?];
  v13 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:entityCopy dictionary:&v78 success:?];
  v14 = [(MKFCKEventTrigger *)self _decodeNumberForKey:entityCopy dictionary:&v78 success:?];
  v15 = [(MKFCKEventTrigger *)self _decodeNumberForKey:entityCopy dictionary:&v78 success:?];
  if (v78 != 1)
  {
    v25 = 0;
    goto LABEL_50;
  }

  home = [dictionaryCopy home];
  v17 = [home accessoryWithModelID:v13 context:triggerCopy];

  v76 = v17;
  if (!v17)
  {
    v33 = objc_autoreleasePoolPush();
    selfCopy = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v73 = v15;
      v36 = dictionaryCopy;
      v38 = v37 = v14;
      *buf = 138544130;
      v80 = v38;
      v81 = 2160;
      v82 = 1752392040;
      v83 = 2112;
      v84 = v13;
      v85 = 2112;
      v86 = entityCopy;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not find accessory '%{mask.hash}@' matching event: %@", buf, 0x2Au);

      v14 = v37;
      dictionaryCopy = v36;
      v15 = v73;
    }

    objc_autoreleasePoolPop(v33);
    v25 = 0;
    goto LABEL_49;
  }

  v18 = v17;
  objc_opt_class();
  v19 = objc_opt_isKindOfClass() & 1;
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v75 = v20;

  if (!v19)
  {
    v74 = v15;
    v39 = dictionaryCopy;
    v40 = v14;
    v41 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v44 = v71 = v9;
      *buf = 138543874;
      v80 = v44;
      v81 = 2112;
      v82 = v18;
      v83 = 2112;
      v84 = entityCopy;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Accessory %@ is not a HAP accessory in event: %@", buf, 0x20u);

      v9 = v71;
    }

    objc_autoreleasePoolPop(v41);
    v25 = 0;
    v14 = v40;
    dictionaryCopy = v39;
    v15 = v74;
    goto LABEL_48;
  }

  v72 = v14;
  v69 = [v18 serviceWithID:v14 context:triggerCopy];
  if (!v69)
  {
    v45 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v48 = v15;
      v50 = v49 = v9;
      *buf = 138543618;
      v80 = v50;
      v81 = 2112;
      v82 = entityCopy;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@Could not find service matching event: %@", buf, 0x16u);

      v9 = v49;
      v15 = v48;
    }

    objc_autoreleasePoolPop(v45);
    v25 = 0;
    goto LABEL_46;
  }

  v21 = +[_MKFCharacteristicRangeEvent entity];
  v22 = [v9 isEqual:v21];

  v70 = v9;
  if (v22)
  {
    v23 = [(MKFCKEventTrigger *)self _decodeCharacteristicValueForKey:entityCopy dictionary:1 optional:&v78 success:?];
    v24 = [(MKFCKEventTrigger *)self _decodeCharacteristicValueForKey:entityCopy dictionary:1 optional:&v78 success:?];
    if (v78 == 1)
    {
      v67 = v24;
      v68 = v23;
      if (v23 | v24)
      {
        v25 = [(_MKFModel *)_MKFCharacteristicRangeEvent modelWithModelID:v77 context:triggerCopy];
        if (!v25)
        {
          v25 = [[_MKFCharacteristicRangeEvent alloc] initWithContext:triggerCopy];
          [(_MKFCharacteristicRangeEvent *)v25 setModelID:v77];
          writerTimestamp = [self writerTimestamp];
          [(_MKFCharacteristicRangeEvent *)v25 setWriterTimestamp:writerTimestamp];
        }

        v27 = [(_MKFCharacteristicRangeEvent *)v25 min];
        v28 = HMFEqualObjects();

        if ((v28 & 1) == 0)
        {
          [(_MKFCharacteristicRangeEvent *)v25 setMin:v68];
        }

        v29 = [(_MKFCharacteristicRangeEvent *)v25 max];
        v30 = HMFEqualObjects();

        v31 = v69;
        if ((v30 & 1) == 0)
        {
          [(_MKFCharacteristicRangeEvent *)v25 setMax:v67];
        }

        v32 = v68;
LABEL_35:

        service = [(_MKFCharacteristicRangeEvent *)v25 service];
        v58 = HMFEqualObjects();

        if ((v58 & 1) == 0)
        {
          [(_MKFCharacteristicRangeEvent *)v25 setService:v31];
        }

        characteristicID = [(_MKFCharacteristicRangeEvent *)v25 characteristicID];
        v60 = HMFEqualObjects();

        if ((v60 & 1) == 0)
        {
          [(_MKFCharacteristicRangeEvent *)v25 setCharacteristicID:v15];
        }

        v14 = v72;
        goto LABEL_47;
      }

      v61 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = HMFGetLogIdentifier();
        *buf = 138543618;
        v80 = v64;
        v81 = 2112;
        v82 = entityCopy;
        _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode any range values in event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v61);
      v24 = v67;
      v23 = v68;
    }

LABEL_44:
    goto LABEL_45;
  }

  v51 = +[_MKFCharacteristicValueEvent entity];
  v52 = [v9 isEqual:v51];

  if (v52)
  {
    v23 = [(MKFCKEventTrigger *)self _decodeCharacteristicValueForKey:entityCopy dictionary:0 optional:&v78 success:?];
    if (v78 == 1)
    {
      v25 = [(_MKFModel *)_MKFCharacteristicValueEvent modelWithModelID:v77 context:triggerCopy];
      if (!v25)
      {
        v25 = [[_MKFCharacteristicValueEvent alloc] initWithContext:triggerCopy];
        [(_MKFCharacteristicRangeEvent *)v25 setModelID:v77];
        writerTimestamp2 = [self writerTimestamp];
        [(_MKFCharacteristicRangeEvent *)v25 setWriterTimestamp:writerTimestamp2];
      }

      eventValue = [(_MKFCharacteristicRangeEvent *)v25 eventValue];
      v55 = v23;
      v56 = HMFEqualObjects();

      v31 = v69;
      if ((v56 & 1) == 0)
      {
        [(_MKFCharacteristicRangeEvent *)v25 setEventValue:v55];
      }

      v32 = v55;
      v9 = v70;
      goto LABEL_35;
    }

    goto LABEL_44;
  }

LABEL_45:
  v25 = 0;
  v9 = v70;
LABEL_46:
  v14 = v72;
  v31 = v69;
LABEL_47:

LABEL_48:
LABEL_49:

LABEL_50:
  v65 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)exportFromLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  propertiesCopy = properties;
  contextCopy = context;
  contextCopy2 = objc_autoreleasePoolPush();
  v57.receiver = self;
  v57.super_class = MKFCKEventTrigger;
  if ([(MKFCKTrigger *)&v57 exportFromLocalModel:modelCopy updatedProperties:propertiesCopy context:contextCopy])
  {
    if ([(MKFCKModel *)self shouldExportUpdatedPropertyInSet:propertiesCopy name:@"events_"])
    {
      context = contextCopy2;
      v12 = modelCopy;
      v13 = contextCopy;
      v14 = v13;
      if (self)
      {
        v15 = MEMORY[0x277CBEB58];
        events = [v12 events];
        v50 = [v15 setWithCapacity:{objc_msgSend(events, "count")}];

        v55 = [MEMORY[0x277CBEB58] set];
        v53 = [MEMORY[0x277CBEB58] set];
        v17 = [MEMORY[0x277CBEB58] set];
        [v14 hmd_currentChangeSet];
        v19 = v18 = v14;
        v20 = v12;
        v21 = MEMORY[0x277CBEB38];
        events2 = [(MKFCKEventTrigger *)self events];
        v23 = [v21 dictionaryWithCapacity:{objc_msgSend(events2, "count")}];

        events3 = [(MKFCKEventTrigger *)self events];
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __57__MKFCKEventTrigger__exportEventsFromLocalModel_context___block_invoke;
        v74[3] = &unk_278689E38;
        v47 = v19;
        v75 = v47;
        v25 = v23;
        v76 = v25;
        [events3 hmf_enumerateWithAutoreleasePoolUsingBlock:v74];

        v70 = 0;
        v71 = &v70;
        v72 = 0x2020000000;
        v73 = 1;
        v48 = v20;
        events4 = [v20 events];
        v27 = v18;
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __57__MKFCKEventTrigger__exportEventsFromLocalModel_context___block_invoke_2;
        v61[3] = &unk_27867EC40;
        v52 = v25;
        v62 = v52;
        selfCopy = self;
        v56 = v55;
        v64 = v56;
        v54 = v53;
        v65 = v54;
        v28 = v17;
        v66 = v28;
        v67 = v27;
        v69 = &v70;
        v29 = v50;
        v68 = v29;
        [events4 hmf_enumerateWithAutoreleasePoolUsingBlock:v61];

        v30 = *(v71 + 24);
        if (v30)
        {
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __57__MKFCKEventTrigger__exportEventsFromLocalModel_context___block_invoke_3;
          v58[3] = &unk_278689E88;
          v31 = v29;
          v59 = v31;
          selfCopy2 = self;
          [v52 enumerateKeysAndObjectsUsingBlock:v58];
          v46 = v29;
          v32 = v27;
          v33 = MEMORY[0x277CBEB98];
          events5 = [(MKFCKEventTrigger *)self events];
          v51 = [v33 setWithArray:events5];

          if ((HMFEqualObjects() & 1) == 0)
          {
            allObjects = [v31 allObjects];
            [(MKFCKEventTrigger *)self setEvents:allObjects];
          }

          accessories = [(MKFCKEventTrigger *)self accessories];
          v37 = HMFEqualObjects();

          if ((v37 & 1) == 0)
          {
            v38 = [v56 copy];
            [(MKFCKEventTrigger *)self setAccessories:v38];
          }

          users = [(MKFCKEventTrigger *)self users];
          v40 = HMFEqualObjects();

          if ((v40 & 1) == 0)
          {
            v41 = [v54 copy];
            [(MKFCKEventTrigger *)self setUsers:v41];
          }

          guests = [(MKFCKEventTrigger *)self guests];
          v43 = HMFEqualObjects();

          if ((v43 & 1) == 0)
          {
            v44 = [v28 copy];
            [(MKFCKEventTrigger *)self setGuests:v44];
          }

          v27 = v32;
          v29 = v46;
        }

        _Block_object_dispose(&v70, 8);
        v12 = v48;
      }

      else
      {
        v30 = 0;
        v27 = v13;
      }

      contextCopy2 = context;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  objc_autoreleasePoolPop(contextCopy2);

  return v30;
}

void __57__MKFCKEventTrigger__exportEventsFromLocalModel_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:@"TEm"];
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

void __57__MKFCKEventTrigger__exportEventsFromLocalModel_context___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = 0;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 modelID];
  v8 = [v5 objectForKeyedSubscript:v7];

  v9 = [*(a1 + 40) _encodeEvent:v6 encodedEventInCloud:v8 accessories:*(a1 + 48) users:*(a1 + 56) guests:*(a1 + 64) shouldRemoveEvent:&v14 context:*(a1 + 72)];
  v10 = *(a1 + 32);
  v11 = [v6 modelID];

  [v10 removeObjectForKey:v11];
  if (v9)
  {
    v12 = *(a1 + 80);
    v13 = [v9 copy];
    [v12 addObject:v13];
  }

  else if ((v14 & 1) == 0)
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void __57__MKFCKEventTrigger__exportEventsFromLocalModel_context___block_invoke_3(uint64_t a1, void *a2, void *a3)
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
    v11 = [v6 objectForKeyedSubscript:@"TEt"];
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Found new event type [%{public}@] not supported by this software. Adding it back to cloud: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)importIntoLocalModel:(id)model updatedProperties:(id)properties context:(id)context
{
  modelCopy = model;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = MKFCKEventTrigger;
  if ([(MKFCKTrigger *)&v23 importIntoLocalModel:modelCopy updatedProperties:properties context:contextCopy])
  {
    v10 = modelCopy;
    v11 = contextCopy;
    v12 = self != 0;
    if (self)
    {
      v13 = MEMORY[0x277CBEB58];
      events = [(MKFCKEventTrigger *)self events];
      v15 = [v13 setWithCapacity:{objc_msgSend(events, "count")}];

      events2 = [(MKFCKEventTrigger *)self events];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __57__MKFCKEventTrigger__importEventsIntoLocalModel_context___block_invoke;
      v27[3] = &unk_278689DE8;
      v27[4] = self;
      v17 = v10;
      v28 = v17;
      v18 = v11;
      v29 = v18;
      v19 = v15;
      v30 = v19;
      [events2 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];

      events3 = [v17 events];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __57__MKFCKEventTrigger__importEventsIntoLocalModel_context___block_invoke_2;
      v24[3] = &unk_27867EC68;
      v25 = v19;
      v26 = v18;
      v21 = v19;
      [events3 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __57__MKFCKEventTrigger__importEventsIntoLocalModel_context___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _decodeEventDictionary:a2 localModel:*(a1 + 40) context:*(a1 + 48)];
  if (v3)
  {
    v4 = v3;
    [v3 setTrigger:*(a1 + 40)];
    [*(a1 + 56) addObject:v4];
    v3 = v4;
  }
}

void __57__MKFCKEventTrigger__importEventsIntoLocalModel_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) deleteObject:v3];
  }
}

- (id)_decodeEventDictionary:(id)dictionary localModel:(id)model context:(id)context
{
  v56 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  modelCopy = model;
  contextCopy = context;
  v49 = 1;
  v11 = [(MKFCKEventTrigger *)self _decodeNumberForKey:dictionaryCopy dictionary:&v49 success:?];
  v12 = [(MKFCKEventTrigger *)self _decodeStringForKey:dictionaryCopy dictionary:&v49 success:?];
  if (v49 != 1)
  {
    v21 = 0;
    v15 = v11;
    goto LABEL_36;
  }

  bOOLValue = [v11 BOOLValue];
  v14 = MEMORY[0x277CBEC28];
  if (bOOLValue)
  {
    v14 = MEMORY[0x277CBEC38];
  }

  v15 = v14;

  if ([v12 isEqualToString:@"C"])
  {
    v48 = modelCopy;
    v16 = contextCopy;
    if (self)
    {
      buf[0] = 1;
      v17 = dictionaryCopy;
      v18 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:v17 dictionary:buf success:?];
      v19 = [(MKFCKEventTrigger *)self _decodeDataForKey:v17 dictionary:buf success:?];

      if (buf[0] == 1)
      {
        v20 = [(MKFCKEventTrigger *)self _decodeDateComponentsData:v19];
        if (v20)
        {
          v45 = v15;
          v21 = [(_MKFModel *)_MKFCalendarEvent modelWithModelID:v18 context:v16];
          if (!v21)
          {
            v21 = [[_MKFCalendarEvent alloc] initWithContext:v16];
            [(_MKFCalendarEvent *)v21 setModelID:v18];
            writerTimestamp = [(MKFCKEventTrigger *)self writerTimestamp];
            [(_MKFCalendarEvent *)v21 setWriterTimestamp:writerTimestamp];
          }

          fireDateComponents = [(_MKFCalendarEvent *)v21 fireDateComponents];
          v24 = HMFEqualObjects();

          if ((v24 & 1) == 0)
          {
            [(_MKFCalendarEvent *)v21 setFireDateComponents:v20];
          }

          v15 = v45;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_32;
      }

LABEL_29:
      v21 = 0;
LABEL_32:

LABEL_33:
      modelCopy = v48;
      goto LABEL_34;
    }

    goto LABEL_53;
  }

  if ([v12 isEqualToString:@"CR"])
  {
    v46 = v15;
    if (self)
    {
      v25 = _MKFCharacteristicRangeEvent;
LABEL_20:
      v26 = contextCopy;
      v27 = modelCopy;
      v28 = dictionaryCopy;
      entity = [(__objc2_class *)v25 entity];
      v21 = [(MKFCKEventTrigger *)self _decodeEventCharacteristicWithEntity:entity eventDictionary:v28 trigger:v27 context:v26];

      v15 = v46;
      goto LABEL_34;
    }

    goto LABEL_54;
  }

  if ([v12 isEqualToString:@"CV"])
  {
    v46 = v15;
    if (self)
    {
      v25 = _MKFCharacteristicValueEvent;
      goto LABEL_20;
    }

LABEL_54:
    v21 = 0;
    v15 = v46;
    goto LABEL_36;
  }

  if ([v12 isEqualToString:@"D"])
  {
    v48 = modelCopy;
    v16 = contextCopy;
    if (self)
    {
      buf[0] = 1;
      v30 = dictionaryCopy;
      v18 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:v30 dictionary:buf success:?];
      v19 = [(MKFCKEventTrigger *)self _decodeNumberForKey:v30 dictionary:buf success:?];

      if (buf[0] == 1)
      {
        v47 = v15;
        v21 = [(_MKFModel *)_MKFDurationEvent modelWithModelID:v18 context:v16];
        if (!v21)
        {
          v21 = [[_MKFDurationEvent alloc] initWithContext:v16];
          [(_MKFCalendarEvent *)v21 setModelID:v18];
          writerTimestamp2 = [(MKFCKEventTrigger *)self writerTimestamp];
          [(_MKFCalendarEvent *)v21 setWriterTimestamp:writerTimestamp2];
        }

        duration = [(_MKFCalendarEvent *)v21 duration];
        v33 = HMFEqualObjects();

        if ((v33 & 1) == 0)
        {
          [(_MKFCalendarEvent *)v21 setDuration:v19];
        }

        v15 = v47;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

LABEL_53:
    v21 = 0;
    goto LABEL_33;
  }

  if ([v12 isEqualToString:@"L"])
  {
    v36 = [(MKFCKEventTrigger *)self _decodeEventLocation:dictionaryCopy trigger:modelCopy context:contextCopy];
LABEL_45:
    v21 = v36;
LABEL_34:
    if (v21)
    {
      [(_MKFCalendarEvent *)v21 setEndEvent:v15];
    }

    goto LABEL_36;
  }

  if ([v12 isEqualToString:@"P"])
  {
    v36 = [(MKFCKEventTrigger *)self _decodeEventPresence:dictionaryCopy trigger:modelCopy context:contextCopy];
    goto LABEL_45;
  }

  if ([v12 isEqualToString:@"ST"])
  {
    v36 = [(MKFCKEventTrigger *)self _decodeEventSignificantTime:dictionaryCopy context:contextCopy];
    goto LABEL_45;
  }

  if ([v12 isEqualToString:@"AV"])
  {
    v37 = v15;
    v38 = +[HMDCoreData featuresDataSource];
    isRVCEnabled = [v38 isRVCEnabled];

    if (!isRVCEnabled)
    {
      v21 = 0;
      v15 = v37;
      goto LABEL_36;
    }

    v21 = [(MKFCKEventTrigger *)self _decodeEventAttributeValue:dictionaryCopy trigger:modelCopy context:contextCopy];
    v15 = v37;
    goto LABEL_34;
  }

  v40 = objc_autoreleasePoolPush();
  selfCopy = self;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v44 = v43 = v15;
    *buf = 138543874;
    v51 = v44;
    v52 = 2114;
    v53 = v12;
    v54 = 2112;
    v55 = dictionaryCopy;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Unknown event type '%{public}@', ignoring: %@", buf, 0x20u);

    v15 = v43;
  }

  objc_autoreleasePoolPop(v40);
  v21 = 0;
LABEL_36:

  v34 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_decodeNumberForKey:(void *)key dictionary:(_BYTE *)dictionary success:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  keyCopy = key;
  if (self)
  {
    v9 = [(MKFCKEventTrigger *)self _decodeValueForKey:v7 dictionary:keyCopy optional:0 success:dictionary];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      objc_opt_class();
      v12 = objc_opt_isKindOfClass() & 1;
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v12)
      {
        self = v11;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v21 = 138543874;
          v22 = v18;
          v23 = 2114;
          v24 = v7;
          v25 = 2112;
          v26 = keyCopy;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type for '%{public}@' in event: %@", &v21, 0x20u);
        }

        objc_autoreleasePoolPop(v15);
        self = 0;
        *dictionary = 0;
      }
    }

    else
    {
      self = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)_decodeStringForKey:(void *)key dictionary:(_BYTE *)dictionary success:
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  keyCopy = key;
  if (self)
  {
    v9 = [(MKFCKEventTrigger *)self _decodeValueForKey:v7 dictionary:keyCopy optional:0 success:dictionary];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      objc_opt_class();
      v12 = objc_opt_isKindOfClass() & 1;
      if (v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v12)
      {
        self = v11;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          v21 = 138543874;
          v22 = v18;
          v23 = 2114;
          v24 = v7;
          v25 = 2112;
          v26 = keyCopy;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type for '%{public}@' in event: %@", &v21, 0x20u);
        }

        objc_autoreleasePoolPop(v15);
        self = 0;
        *dictionary = 0;
      }
    }

    else
    {
      self = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)_decodeValueForKey:(void *)key dictionary:(char)dictionary optional:(_BYTE *)optional success:
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a2;
  keyCopy = key;
  v11 = keyCopy;
  if (*optional == 1)
  {
    v12 = [keyCopy objectForKeyedSubscript:v9];
    if (!v12 && (dictionary & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543874;
        v20 = v16;
        v21 = 2114;
        v22 = v9;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Missing value for '%{public}@' in event: %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v12 = 0;
      *optional = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_encodeEvent:(id)event encodedEventInCloud:(id)cloud accessories:(id)accessories users:(id)users guests:(id)guests shouldRemoveEvent:(BOOL *)removeEvent context:(id)context
{
  v93 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  cloudCopy = cloud;
  accessoriesCopy = accessories;
  usersCopy = users;
  guestsCopy = guests;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = cloudCopy;
    v81 = accessoriesCopy;
    v19 = eventCopy;
    v20 = contextCopy;
    if (self)
    {
      v21 = MEMORY[0x277CCAAB0];
      fireDateComponents = [v19 fireDateComponents];
      v85 = 0;
      v23 = [v21 archivedDataWithRootObject:fireDateComponents requiringSecureCoding:1 error:&v85];
      v24 = v85;

      if (v23)
      {
        v88 = @"TEt";
        v89 = @"TECd";
        *buf = @"C";
        *&buf[8] = v23;
        self = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v88 count:2];
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        selfCopy = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v37;
          *&buf[12] = 2114;
          *&buf[14] = v24;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode fireDateComponents: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
        self = 0;
      }
    }

    cloudCopy = v79;
    accessoriesCopy = v81;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = eventCopy;
      if (self)
      {
        v26 = [(MKFCKEventTrigger *)self _encodeEventCharacteristic:v25 accessories:accessoriesCopy context:contextCopy];
        if (v26)
        {
          v27 = [v25 min];

          if (v27)
          {
            v28 = [v25 min];
            [v26 setObject:v28 forKeyedSubscript:@"TEAn"];
          }

          v29 = [v25 max];

          if (v29)
          {
            v30 = [v25 max];
            [v26 setObject:v30 forKeyedSubscript:@"TEAx"];
          }

          [v26 setObject:@"CR" forKeyedSubscript:@"TEt"];
          self = [v26 copy];
        }

        else
        {
          self = 0;
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = eventCopy;
        if (self)
        {
          v32 = [(MKFCKEventTrigger *)self _encodeEventCharacteristic:v31 accessories:accessoriesCopy context:contextCopy];
          if (v32)
          {
            eventValue = [v31 eventValue];
            [v32 setObject:eventValue forKeyedSubscript:@"TEAv"];

            [v32 setObject:@"CV" forKeyedSubscript:@"TEt"];
            self = [v32 copy];
          }

          else
          {
            self = 0;
          }
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (self)
          {
            *buf = @"D";
            v88 = @"TEt";
            v89 = @"TEDd";
            duration = [eventCopy duration];
            *&buf[8] = duration;
            self = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v88 count:2];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v82 = accessoriesCopy;
            v39 = eventCopy;
            v40 = usersCopy;
            v77 = contextCopy;
            v41 = contextCopy;
            if (self)
            {
              v42 = MEMORY[0x277CCAAB0];
              region = [v39 region];
              v85 = 0;
              v44 = [v42 archivedDataWithRootObject:region requiringSecureCoding:1 error:&v85];
              v78 = v85;

              if (v44)
              {
                v76 = v41;
                v45 = v40;
                v80 = cloudCopy;
                user = [v39 user];

                if (user)
                {
                  user2 = [v39 user];
                  modelID = [user2 modelID];
                  home = [(MKFCKEventTrigger *)self home];
                  owner = [MKFCKEventTrigger cloudUserWithModelID:modelID home:home];
                }

                else
                {
                  home2 = [(MKFCKEventTrigger *)self home];
                  owner = [home2 owner];

                  v70 = objc_autoreleasePoolPush();
                  selfCopy2 = self;
                  v72 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
                  {
                    v73 = HMFGetLogIdentifier();
                    modelID2 = [owner modelID];
                    *buf = 138543874;
                    *&buf[4] = v73;
                    *&buf[12] = 2160;
                    *&buf[14] = 1752392040;
                    *&buf[22] = 2112;
                    v92 = modelID2;
                    _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_INFO, "%{public}@(Export) : FixUP: No user found for the MKFLocationEvent.user. Assigning owner of the home as owner of this location event: '%{mask.hash}@'", buf, 0x20u);
                  }

                  objc_autoreleasePoolPop(v70);
                }

                v40 = v45;
                [v45 addObject:owner];
                v88 = @"TEt";
                v89 = @"TELl";
                *buf = @"L";
                *&buf[8] = v44;
                v90 = @"TELu";
                modelID3 = [owner modelID];
                *&buf[16] = modelID3;
                self = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v88 count:3];

                cloudCopy = v80;
                v41 = v76;
              }

              else
              {
                v60 = v40;
                v61 = objc_autoreleasePoolPush();
                selfCopy3 = self;
                v63 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  v64 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v64;
                  *&buf[12] = 2114;
                  *&buf[14] = v78;
                  _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode region: %{public}@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v61);
                self = 0;
                v40 = v60;
              }
            }

            accessoriesCopy = v82;
            contextCopy = v77;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v59 = [(MKFCKEventTrigger *)self _encodeEventPresence:eventCopy users:usersCopy guests:guestsCopy shouldRemoveEvent:removeEvent context:contextCopy];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v59 = [MKFCKEventTrigger _encodeEventSignificantTime:eventCopy context:?];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_51;
                }

                v65 = +[HMDCoreData featuresDataSource];
                isRVCEnabled = [v65 isRVCEnabled];

                if (!isRVCEnabled)
                {
                  goto LABEL_51;
                }

                v59 = [(MKFCKEventTrigger *)self _encodeEventAttributeValue:eventCopy accessories:accessoriesCopy context:contextCopy];
              }
            }

            self = v59;
          }
        }
      }
    }
  }

  if (!self)
  {
LABEL_51:
    v58 = 0;
    goto LABEL_52;
  }

  v51 = MEMORY[0x277CBEB38];
  v86[0] = @"TEm";
  modelID4 = [eventCopy modelID];
  v86[1] = @"TEd";
  v87[0] = modelID4;
  endEvent = [eventCopy endEvent];
  bOOLValue = [endEvent BOOLValue];
  v55 = MEMORY[0x277CBEC28];
  if (bOOLValue)
  {
    v55 = MEMORY[0x277CBEC38];
  }

  v87[1] = v55;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v57 = [v51 dictionaryWithDictionary:v56];

  [v57 addEntriesFromDictionary:self];
  v58 = [MKFCKModel mergedDictionaryFromCloud:cloudCopy localModifications:v57];

LABEL_52:
  v67 = *MEMORY[0x277D85DE8];

  return v58;
}

- (id)_decodeDateComponentsData:(void *)data
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    dataCopy = data;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode date components: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_decodeUUIDForKey:(void *)key dictionary:(_BYTE *)dictionary success:
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  keyCopy = key;
  v9 = [(MKFCKEventTrigger *)self _decodeValueForKey:v7 dictionary:keyCopy optional:0 success:dictionary];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    objc_opt_class();
    v12 = objc_opt_isKindOfClass() & 1;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v12)
    {
      v15 = v11;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543874;
        v23 = v19;
        v24 = 2114;
        v25 = v7;
        v26 = 2112;
        v27 = keyCopy;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type for '%{public}@' in event: %@", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      v15 = 0;
      *dictionary = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_decodeDataForKey:(void *)key dictionary:(_BYTE *)dictionary success:
{
  v4 = [(MKFCKEventTrigger *)self _decodeDataForKey:a2 dictionary:key optional:0 success:dictionary];

  return v4;
}

- (id)_decodeDataForKey:(void *)key dictionary:(char)dictionary optional:(_BYTE *)optional success:
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a2;
  keyCopy = key;
  v11 = [(MKFCKEventTrigger *)self _decodeValueForKey:v9 dictionary:keyCopy optional:dictionary success:optional];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    objc_opt_class();
    v14 = objc_opt_isKindOfClass() & 1;
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v14)
    {
      v17 = v13;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v24 = 138543874;
        v25 = v21;
        v26 = 2114;
        v27 = v9;
        v28 = 2112;
        v29 = keyCopy;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type for '%{public}@' in event: %@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v17 = 0;
      *optional = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_decodeCharacteristicValueForKey:(void *)key dictionary:(char)dictionary optional:(_BYTE *)optional success:
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a2;
  keyCopy = key;
  v11 = [(MKFCKEventTrigger *)self _decodeValueForKey:v9 dictionary:keyCopy optional:dictionary success:optional];
  v12 = v11;
  v13 = 0;
  if (v11 && *MEMORY[0x277CBEEE8] != v11)
  {
    if (isAllowedCharType())
    {
      v13 = v12;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v17;
        v22 = 2114;
        v23 = v9;
        v24 = 2112;
        v25 = keyCopy;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type for '%{public}@' in event: %@", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = 0;
      *optional = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)localUserWithModelID:(void *)d home:
{
  v4 = a2;
  dCopy = d;
  objc_opt_self();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__196576;
  v17 = __Block_byref_object_dispose__196577;
  v18 = 0;
  users = [dCopy users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__MKFCKEventTrigger_Helpers__localUserWithModelID_home___block_invoke;
  v10[3] = &unk_27867EC90;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [users hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __56__MKFCKEventTrigger_Helpers__localUserWithModelID_home___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

+ (id)cloudUserWithModelID:(void *)d home:
{
  v4 = a2;
  dCopy = d;
  objc_opt_self();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__196576;
  v17 = __Block_byref_object_dispose__196577;
  v18 = 0;
  users = [dCopy users];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__MKFCKEventTrigger_Helpers__cloudUserWithModelID_home___block_invoke;
  v10[3] = &unk_27867FD00;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [users hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __56__MKFCKEventTrigger_Helpers__cloudUserWithModelID_home___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __57__MKFCKEventTrigger_Helpers__localGuestWithModelID_home___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __57__MKFCKEventTrigger_Helpers__cloudGuestWithModelID_home___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 modelID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_encodeEventPresence:(void *)presence users:(void *)users guests:(_BYTE *)guests shouldRemoveEvent:(void *)event context:
{
  v61 = *MEMORY[0x277D85DE8];
  v11 = a2;
  presenceCopy = presence;
  usersCopy = users;
  eventCopy = event;
  if (self)
  {
    activation = [v11 activation];
    v16 = activation;
    if (activation)
    {
      [activation unsignedIntegerValue];
      presenceType = [v11 presenceType];
      v48 = presenceCopy;
      if (presenceType)
      {
        v47 = eventCopy;
        v18 = MEMORY[0x277CBEB18];
        users = [v11 users];
        v20 = [v18 arrayWithCapacity:{objc_msgSend(users, "count")}];

        users2 = [v11 users];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __91__MKFCKEventTrigger_Presence___encodeEventPresence_users_guests_shouldRemoveEvent_context___block_invoke;
        v52[3] = &unk_27867F510;
        v52[4] = self;
        v22 = v20;
        v53 = v22;
        v54 = presenceCopy;
        [users2 hmf_enumerateWithAutoreleasePoolUsingBlock:v52];

        v23 = MEMORY[0x277CBEB18];
        guests = [v11 guests];
        v25 = [v23 arrayWithCapacity:{objc_msgSend(guests, "count")}];

        guests2 = [v11 guests];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __91__MKFCKEventTrigger_Presence___encodeEventPresence_users_guests_shouldRemoveEvent_context___block_invoke_2;
        v49[3] = &unk_27867F538;
        v49[4] = self;
        v27 = v25;
        v50 = v27;
        v51 = usersCopy;
        [guests2 hmf_enumerateWithAutoreleasePoolUsingBlock:v49];

        v55[0] = @"TEt";
        v55[1] = @"TEPa";
        v56[0] = @"P";
        v56[1] = v16;
        v56[2] = presenceType;
        v55[2] = @"TEPt";
        v55[3] = @"TEPu";
        v28 = [v22 copy];
        v56[3] = v28;
        self = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:4];

        if ([v27 count])
        {
          v29 = [self mutableCopy];
          v30 = [v27 copy];
          [v29 setObject:v30 forKeyedSubscript:@"TEPg"];

          v31 = [v29 copy];
          self = v31;
        }

        eventCopy = v47;
        presenceCopy = v48;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        selfCopy = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v42 = usersCopy;
          v44 = v43 = eventCopy;
          *buf = 138543618;
          v58 = v44;
          v59 = 2112;
          v60 = v11;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@No presenceType for event: %@", buf, 0x16u);

          eventCopy = v43;
          usersCopy = v42;
        }

        objc_autoreleasePoolPop(v39);
        self = 0;
        *guests = 1;
        presenceCopy = v48;
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = usersCopy;
        v36 = eventCopy;
        v38 = v37 = presenceCopy;
        *buf = 138543618;
        v58 = v38;
        v59 = 2112;
        v60 = v11;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@No activation for event: %@", buf, 0x16u);

        presenceCopy = v37;
        eventCopy = v36;
        usersCopy = v35;
      }

      objc_autoreleasePoolPop(v32);
      self = 0;
      *guests = 1;
    }
  }

  v45 = *MEMORY[0x277D85DE8];

  return self;
}

void __91__MKFCKEventTrigger_Presence___encodeEventPresence_users_guests_shouldRemoveEvent_context___block_invoke(id *a1, void *a2)
{
  v5 = [a2 modelID];
  v3 = [a1[4] home];
  v4 = [MKFCKEventTrigger cloudUserWithModelID:v5 home:v3];

  [a1[5] addObject:v5];
  [a1[6] addObject:v4];
}

void __91__MKFCKEventTrigger_Presence___encodeEventPresence_users_guests_shouldRemoveEvent_context___block_invoke_2(id *a1, void *a2)
{
  v3 = [a2 modelID];
  v4 = [a1[4] home];
  v5 = v3;
  v6 = v4;
  objc_opt_self();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__196576;
  v17 = __Block_byref_object_dispose__196577;
  v18 = 0;
  v7 = [v6 guests];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__MKFCKEventTrigger_Helpers__cloudGuestWithModelID_home___block_invoke;
  v10[3] = &unk_27867ECE0;
  v9 = v5;
  v11 = v9;
  v12 = &v13;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  [a1[5] addObject:v9];
  [a1[6] addObject:v8];
}

- (_MKFPresenceEvent)_decodeEventPresence:(void *)presence trigger:(void *)trigger context:
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a2;
  presenceCopy = presence;
  triggerCopy = trigger;
  if (self)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62[0] = 1;
    v8 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:v7 dictionary:v62 success:?];
    v9 = [(MKFCKEventTrigger *)self _decodeNumberForKey:v7 dictionary:v60 + 24 success:?];
    v10 = [(MKFCKEventTrigger *)self _decodeStringForKey:v7 dictionary:v60 + 24 success:?];
    if ((v60[3] & 1) == 0)
    {
      v17 = 0;
LABEL_43:

      _Block_object_dispose(&v59, 8);
      goto LABEL_44;
    }

    [v9 unsignedIntegerValue];
    v11 = [v7 objectForKeyedSubscript:@"TEPu"];
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

    if (!v13)
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = @"TEPu";
        *&buf[22] = 2112;
        v68 = v7;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode '%{public}@' in event: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v17 = 0;
      goto LABEL_42;
    }

    home = [presenceCopy home];
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v13, "count")}];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __68__MKFCKEventTrigger_Presence___decodeEventPresence_trigger_context___block_invoke;
    v54[3] = &unk_27867F560;
    v54[4] = self;
    v16 = v7;
    v55 = v16;
    v58 = &v59;
    v50 = home;
    v56 = v50;
    v51 = v15;
    v57 = v51;
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v54];
    if ((v60[3] & 1) == 0)
    {
      v17 = 0;
LABEL_41:

LABEL_42:
      goto LABEL_43;
    }

    v17 = [(_MKFModel *)_MKFPresenceEvent modelWithModelID:v8 context:triggerCopy];
    if (!v17)
    {
      v17 = [[_MKFPresenceEvent alloc] initWithContext:triggerCopy];
      [(_MKFPresenceEvent *)v17 setModelID:v8];
      writerTimestamp = [self writerTimestamp];
      [(_MKFPresenceEvent *)v17 setWriterTimestamp:writerTimestamp];
    }

    activation = [(_MKFPresenceEvent *)v17 activation];
    v20 = HMFEqualObjects();

    if ((v20 & 1) == 0)
    {
      [(_MKFPresenceEvent *)v17 setActivation:v9];
    }

    presenceType = [(_MKFPresenceEvent *)v17 presenceType];
    v22 = HMFEqualObjects();

    if ((v22 & 1) == 0)
    {
      [(_MKFPresenceEvent *)v17 setPresenceType:v10];
    }

    v49 = [v51 copy];
    users = [(_MKFPresenceEvent *)v17 users];
    v24 = HMFEqualObjects();

    if ((v24 & 1) == 0)
    {
      [(_MKFPresenceEvent *)v17 setUsers_:v49];
    }

    v25 = v16;
    v46 = v50;
    v47 = v25;
    v26 = [v25 objectForKeyedSubscript:@"TEPg"];
    v48 = v26;
    if (!v26)
    {
      v32 = 0;
      goto LABEL_37;
    }

    v27 = v26;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v45 = v29;

    if (isKindOfClass)
    {
      if ([v27 count])
      {
        v30 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v27, "count")}];
        v63 = 0;
        v64 = &v63;
        v65 = 0x2020000000;
        v66 = 1;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __77__MKFCKEventTrigger_Presence___decodeGuestsFromPresenceEventDictionary_home___block_invoke;
        v68 = &unk_27867F560;
        selfCopy2 = self;
        v70 = v47;
        v73 = &v63;
        v71 = v46;
        v31 = v30;
        v72 = v31;
        [v27 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
        if (v64[3])
        {
          v32 = [v31 copy];
        }

        else
        {
          v32 = 0;
        }

        _Block_object_dispose(&v63, 8);
        goto LABEL_36;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v40;
        *&buf[12] = 2114;
        *&buf[14] = @"TEPg";
        *&buf[22] = 2112;
        v68 = v47;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode '%{public}@' in event: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v37);
    }

    v32 = 0;
LABEL_36:

LABEL_37:
    if (v32)
    {
      guests = [(_MKFPresenceEvent *)v17 guests];
      v42 = HMFEqualObjects();

      if ((v42 & 1) == 0)
      {
        [(_MKFPresenceEvent *)v17 setGuests_:v32];
      }
    }

    goto LABEL_41;
  }

  v17 = 0;
LABEL_44:

  v43 = *MEMORY[0x277D85DE8];

  return v17;
}

void __68__MKFCKEventTrigger_Presence___decodeEventPresence_trigger_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
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
    v9 = [MKFCKEventTrigger localUserWithModelID:v8 home:*(a1 + 48)];
    if (v9)
    {
      [*(a1 + 56) addObject:v9];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 40);
        v21 = 138544130;
        v22 = v18;
        v23 = 2160;
        v24 = 1752392040;
        v25 = 2112;
        v26 = v8;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Could not find user '%{mask.hash}@' matching event: %@", &v21, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v21 = 138543874;
      v22 = v13;
      v23 = 2114;
      v24 = @"TEPu";
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode '%{public}@' in event: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __77__MKFCKEventTrigger_Presence___decodeGuestsFromPresenceEventDictionary_home___block_invoke(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t result, uint64_t a2), _BYTE *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = v9;
    v12 = v10;
    objc_opt_self();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = __Block_byref_object_copy__196576;
    *&v35 = __Block_byref_object_dispose__196577;
    *(&v35 + 1) = 0;
    v13 = [v12 guests];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __57__MKFCKEventTrigger_Helpers__localGuestWithModelID_home___block_invoke;
    v30 = &unk_27867ECB8;
    v14 = v11;
    v31 = v14;
    v32 = buf;
    [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:&v27];

    v15 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    if (v15)
    {
      [*(a1 + 56) addObject:{v15, v27, v28, v29, v30}];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = *(a1 + 32);
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v25 = *(a1 + 40);
        *buf = 138544130;
        *&buf[4] = v24;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v34 = v14;
        LOWORD(v35) = 2112;
        *(&v35 + 2) = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Could not find guest '%{mask.hash}@' matching event: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v21);
      *(*(*(a1 + 64) + 8) + 24) = 0;
      *a4 = 1;
    }
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
      *buf = 138544130;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = @"TEPg";
      *&buf[22] = 2048;
      v34 = a3;
      LOWORD(v35) = 2112;
      *(&v35 + 2) = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode '%{public}@'[%tu] in event: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    *a4 = 1;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (_MKFLocationEvent)_decodeEventLocation:(void *)location trigger:(void *)trigger context:
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a2;
  locationCopy = location;
  triggerCopy = trigger;
  if (self)
  {
    v51 = 1;
    v49 = [(MKFCKEventTrigger *)self _decodeUUIDForKey:v7 dictionary:&v51 success:?];
    v10 = [(MKFCKEventTrigger *)self _decodeDataForKey:v7 dictionary:&v51 success:?];
    v50 = 0;
    v11 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v50];
    v48 = v50;
    if (!v11)
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      v23 = v48;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v27;
        v54 = 2114;
        v55 = v48;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode region: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v17 = 0;
      goto LABEL_26;
    }

    v47 = triggerCopy;
    v12 = [v7 objectForKeyedSubscript:@"TELu"];
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
      home = [locationCopy home];
      owner = [MKFCKEventTrigger localUserWithModelID:v14 home:home];

      if (owner)
      {
LABEL_8:
        v17 = [(_MKFModel *)_MKFLocationEvent modelWithModelID:v49 context:v47];
        if (!v17)
        {
          v17 = [[_MKFLocationEvent alloc] initWithContext:v47];
          [(_MKFLocationEvent *)v17 setModelID:v49];
          writerTimestamp = [self writerTimestamp];
          [(_MKFLocationEvent *)v17 setWriterTimestamp:writerTimestamp];

          [(_MKFLocationEvent *)v17 setUser:owner];
        }

        region = [(_MKFLocationEvent *)v17 region];
        v20 = HMFEqualObjects();

        if ((v20 & 1) == 0)
        {
          [(_MKFLocationEvent *)v17 setRegion:v11];
        }

        user = [(_MKFLocationEvent *)v17 user];
        v22 = HMFEqualObjects();

        v23 = v48;
        if ((v22 & 1) == 0)
        {
          [(_MKFLocationEvent *)v17 setUser:owner];
        }

LABEL_25:

        triggerCopy = v47;
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      v46 = locationCopy;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543874;
        v53 = v31;
        v54 = 2114;
        v55 = @"TELu";
        v56 = 2112;
        v57 = v7;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode '%{public}@' in event: %@", buf, 0x20u);

        locationCopy = v46;
      }

      objc_autoreleasePoolPop(v28);
      home2 = [locationCopy home];
      owner = [home2 owner];

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy2;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        [owner modelID];
        v37 = v45 = v33;
        *buf = 138543874;
        v53 = v36;
        v54 = 2160;
        v55 = 1752392040;
        v56 = 2112;
        v57 = v37;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@(Import) : FixUP: No user found for the MKFLocationEvent.user. Assigning owner of the home as owner of this location event: '%{mask.hash}@'", buf, 0x20u);

        v33 = v45;
        locationCopy = v46;
      }

      objc_autoreleasePoolPop(v33);
      if (owner)
      {
        goto LABEL_8;
      }
    }

    v38 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v42 = v41 = locationCopy;
      *buf = 138544130;
      v53 = v42;
      v54 = 2160;
      v55 = 1752392040;
      v56 = 2112;
      v57 = v14;
      v58 = 2112;
      v59 = v7;
      _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Could not find user '%{mask.hash}@' matching event: %@", buf, 0x2Au);

      locationCopy = v41;
    }

    objc_autoreleasePoolPop(v38);
    v17 = 0;
    v23 = v48;
    goto LABEL_25;
  }

  v17 = 0;
LABEL_27:

  v43 = *MEMORY[0x277D85DE8];

  return v17;
}

@end